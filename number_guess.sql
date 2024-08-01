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
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 757, 758);
INSERT INTO public.games VALUES (2, 1, 879, 880);
INSERT INTO public.games VALUES (3, 2, 399, 400);
INSERT INTO public.games VALUES (4, 2, 706, 707);
INSERT INTO public.games VALUES (5, 1, 209, 212);
INSERT INTO public.games VALUES (6, 1, 611, 613);
INSERT INTO public.games VALUES (7, 1, 382, 383);
INSERT INTO public.games VALUES (8, 3, 74, 75);
INSERT INTO public.games VALUES (9, 3, 135, 136);
INSERT INTO public.games VALUES (10, 4, 177, 178);
INSERT INTO public.games VALUES (11, 4, 793, 794);
INSERT INTO public.games VALUES (12, 3, 606, 609);
INSERT INTO public.games VALUES (13, 3, 997, 999);
INSERT INTO public.games VALUES (14, 3, 551, 552);
INSERT INTO public.games VALUES (15, 5, 216, 217);
INSERT INTO public.games VALUES (16, 5, 405, 406);
INSERT INTO public.games VALUES (17, 6, 132, 133);
INSERT INTO public.games VALUES (18, 6, 779, 780);
INSERT INTO public.games VALUES (19, 5, 593, 596);
INSERT INTO public.games VALUES (20, 5, 395, 397);
INSERT INTO public.games VALUES (21, 5, 141, 142);
INSERT INTO public.games VALUES (22, 7, 936, 937);
INSERT INTO public.games VALUES (23, 7, 805, 806);
INSERT INTO public.games VALUES (24, 8, 341, 342);
INSERT INTO public.games VALUES (25, 8, 482, 483);
INSERT INTO public.games VALUES (26, 7, 806, 809);
INSERT INTO public.games VALUES (27, 7, 290, 292);
INSERT INTO public.games VALUES (28, 7, 193, 194);
INSERT INTO public.games VALUES (29, 9, 651, 652);
INSERT INTO public.games VALUES (30, 9, 878, 879);
INSERT INTO public.games VALUES (31, 10, 860, 861);
INSERT INTO public.games VALUES (32, 10, 193, 194);
INSERT INTO public.games VALUES (33, 9, 207, 210);
INSERT INTO public.games VALUES (34, 9, 316, 318);
INSERT INTO public.games VALUES (35, 9, 954, 955);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1722484799450');
INSERT INTO public.players VALUES (2, 'user_1722484799449');
INSERT INTO public.players VALUES (3, 'user_1722484860306');
INSERT INTO public.players VALUES (4, 'user_1722484860305');
INSERT INTO public.players VALUES (5, 'user_1722484891874');
INSERT INTO public.players VALUES (6, 'user_1722484891873');
INSERT INTO public.players VALUES (7, 'user_1722484904542');
INSERT INTO public.players VALUES (8, 'user_1722484904541');
INSERT INTO public.players VALUES (9, 'user_1722484966467');
INSERT INTO public.players VALUES (10, 'user_1722484966466');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 10, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

