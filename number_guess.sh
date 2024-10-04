#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random number
NUMBER_TO_GUESS=$(( $RANDOM % 1000 + 1 ))

# prompt user for username
echo -e "\nEnter your username:"
read USERNAME

# check if username is already in use
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

if [[ -z $USER_ID ]]
then 
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# ask the user to guess
echo -e "\nGuess the secret number between 1 and 1000:"

COUNT=0
EXIT=0

while (( EXIT != 1))
do 
  read USER_GUESS
  COUNT=$(( $COUNT + 1 ))
  # check if guess is not a number
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    if [[ $USER_GUESS -gt $NUMBER_TO_GUESS ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $USER_GUESS -lt $NUMBER_TO_GUESS ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    elif [[ $USER_GUESS -eq $NUMBER_TO_GUESS ]]
    then
      EXIT=1
    fi
  fi
done

# add game to database
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $COUNT);")
echo -e "\nYou guessed it in $COUNT tries. The secret number was $NUMBER_TO_GUESS. Nice job!"