--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 948);
INSERT INTO public.games VALUES (2, 10, 137);
INSERT INTO public.games VALUES (3, 9, 614);
INSERT INTO public.games VALUES (4, 9, 841);
INSERT INTO public.games VALUES (5, 9, 584);
INSERT INTO public.games VALUES (6, 11, 995);
INSERT INTO public.games VALUES (7, 12, 610);
INSERT INTO public.games VALUES (8, 11, 102);
INSERT INTO public.games VALUES (9, 11, 507);
INSERT INTO public.games VALUES (10, 11, 400);
INSERT INTO public.games VALUES (11, 13, 436);
INSERT INTO public.games VALUES (12, 14, 687);
INSERT INTO public.games VALUES (13, 13, 383);
INSERT INTO public.games VALUES (14, 13, 700);
INSERT INTO public.games VALUES (15, 13, 235);
INSERT INTO public.games VALUES (16, 15, 929);
INSERT INTO public.games VALUES (17, 16, 474);
INSERT INTO public.games VALUES (18, 15, 238);
INSERT INTO public.games VALUES (19, 15, 375);
INSERT INTO public.games VALUES (20, 15, 891);
INSERT INTO public.games VALUES (21, 17, 222);
INSERT INTO public.games VALUES (22, 18, 738);
INSERT INTO public.games VALUES (23, 17, 548);
INSERT INTO public.games VALUES (24, 17, 542);
INSERT INTO public.games VALUES (25, 17, 333);
INSERT INTO public.games VALUES (26, 19, 543);
INSERT INTO public.games VALUES (27, 20, 568);
INSERT INTO public.games VALUES (28, 19, 159);
INSERT INTO public.games VALUES (29, 19, 426);
INSERT INTO public.games VALUES (30, 19, 730);
INSERT INTO public.games VALUES (31, 21, 920);
INSERT INTO public.games VALUES (32, 22, 968);
INSERT INTO public.games VALUES (33, 21, 558);
INSERT INTO public.games VALUES (34, 21, 882);
INSERT INTO public.games VALUES (35, 21, 887);
INSERT INTO public.games VALUES (36, 23, 412);
INSERT INTO public.games VALUES (37, 24, 419);
INSERT INTO public.games VALUES (38, 23, 221);
INSERT INTO public.games VALUES (39, 23, 117);
INSERT INTO public.games VALUES (40, 23, 321);
INSERT INTO public.games VALUES (41, 26, 119);
INSERT INTO public.games VALUES (42, 26, 30);
INSERT INTO public.games VALUES (43, 27, 577);
INSERT INTO public.games VALUES (44, 27, 187);
INSERT INTO public.games VALUES (45, 26, 832);
INSERT INTO public.games VALUES (46, 26, 292);
INSERT INTO public.games VALUES (47, 26, 188);
INSERT INTO public.games VALUES (48, 11, 8);
INSERT INTO public.games VALUES (49, 28, 869);
INSERT INTO public.games VALUES (50, 28, 243);
INSERT INTO public.games VALUES (51, 29, 539);
INSERT INTO public.games VALUES (52, 29, 184);
INSERT INTO public.games VALUES (53, 28, 146);
INSERT INTO public.games VALUES (54, 28, 547);
INSERT INTO public.games VALUES (55, 28, 845);
INSERT INTO public.games VALUES (56, 30, 767);
INSERT INTO public.games VALUES (57, 30, 195);
INSERT INTO public.games VALUES (58, 31, 186);
INSERT INTO public.games VALUES (59, 31, 643);
INSERT INTO public.games VALUES (60, 30, 31);
INSERT INTO public.games VALUES (61, 30, 131);
INSERT INTO public.games VALUES (62, 30, 774);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1728056486809');
INSERT INTO public.users VALUES (2, 'user_1728056486808');
INSERT INTO public.users VALUES (3, 'user_1728056572525');
INSERT INTO public.users VALUES (4, 'user_1728056572524');
INSERT INTO public.users VALUES (5, 'user_1728056729674');
INSERT INTO public.users VALUES (6, 'user_1728056729673');
INSERT INTO public.users VALUES (7, 'user_1728058261521');
INSERT INTO public.users VALUES (8, 'user_1728058261520');
INSERT INTO public.users VALUES (9, 'user_1728058475653');
INSERT INTO public.users VALUES (10, 'user_1728058475652');
INSERT INTO public.users VALUES (11, 'user_1728058533358');
INSERT INTO public.users VALUES (12, 'user_1728058533357');
INSERT INTO public.users VALUES (13, 'user_1728058688717');
INSERT INTO public.users VALUES (14, 'user_1728058688716');
INSERT INTO public.users VALUES (15, 'user_1728058701192');
INSERT INTO public.users VALUES (16, 'user_1728058701191');
INSERT INTO public.users VALUES (17, 'user_1728058757785');
INSERT INTO public.users VALUES (18, 'user_1728058757784');
INSERT INTO public.users VALUES (19, 'user_1728058760391');
INSERT INTO public.users VALUES (20, 'user_1728058760390');
INSERT INTO public.users VALUES (21, 'user_1728058762469');
INSERT INTO public.users VALUES (22, 'user_1728058762468');
INSERT INTO public.users VALUES (23, 'user_1728058764652');
INSERT INTO public.users VALUES (24, 'user_1728058764651');
INSERT INTO public.users VALUES (26, 'user_1728058988325');
INSERT INTO public.users VALUES (27, 'user_1728058988324');
INSERT INTO public.users VALUES (28, 'user_1728059743207');
INSERT INTO public.users VALUES (29, 'user_1728059743206');
INSERT INTO public.users VALUES (30, 'user_1728059800726');
INSERT INTO public.users VALUES (31, 'user_1728059800725');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

