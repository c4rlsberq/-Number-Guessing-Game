--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 36, 32);
INSERT INTO public.games VALUES (2, 558, 32);
INSERT INTO public.games VALUES (3, 289, 33);
INSERT INTO public.games VALUES (4, 391, 33);
INSERT INTO public.games VALUES (5, 229, 32);
INSERT INTO public.games VALUES (6, 301, 32);
INSERT INTO public.games VALUES (7, 188, 32);
INSERT INTO public.games VALUES (8, 8, 26);
INSERT INTO public.games VALUES (9, 721, 34);
INSERT INTO public.games VALUES (10, 454, 34);
INSERT INTO public.games VALUES (11, 836, 35);
INSERT INTO public.games VALUES (12, 41, 35);
INSERT INTO public.games VALUES (13, 909, 34);
INSERT INTO public.games VALUES (14, 941, 34);
INSERT INTO public.games VALUES (15, 267, 34);
INSERT INTO public.games VALUES (16, 79, 36);
INSERT INTO public.games VALUES (17, 777, 36);
INSERT INTO public.games VALUES (18, 555, 37);
INSERT INTO public.games VALUES (19, 334, 37);
INSERT INTO public.games VALUES (20, 570, 36);
INSERT INTO public.games VALUES (21, 65, 36);
INSERT INTO public.games VALUES (22, 450, 36);
INSERT INTO public.games VALUES (23, 632, 38);
INSERT INTO public.games VALUES (24, 206, 38);
INSERT INTO public.games VALUES (25, 332, 39);
INSERT INTO public.games VALUES (26, 564, 39);
INSERT INTO public.games VALUES (27, 697, 38);
INSERT INTO public.games VALUES (28, 196, 38);
INSERT INTO public.games VALUES (29, 322, 38);
INSERT INTO public.games VALUES (30, 7, 1);
INSERT INTO public.games VALUES (31, 246, 40);
INSERT INTO public.games VALUES (32, 136, 40);
INSERT INTO public.games VALUES (33, 405, 41);
INSERT INTO public.games VALUES (34, 994, 41);
INSERT INTO public.games VALUES (35, 473, 40);
INSERT INTO public.games VALUES (36, 431, 40);
INSERT INTO public.games VALUES (37, 150, 40);
INSERT INTO public.games VALUES (38, 11, 1);
INSERT INTO public.games VALUES (39, 733, 42);
INSERT INTO public.games VALUES (40, 587, 42);
INSERT INTO public.games VALUES (41, 93, 43);
INSERT INTO public.games VALUES (42, 544, 43);
INSERT INTO public.games VALUES (43, 896, 42);
INSERT INTO public.games VALUES (44, 392, 42);
INSERT INTO public.games VALUES (45, 418, 42);
INSERT INTO public.games VALUES (46, 9, 1);
INSERT INTO public.games VALUES (47, 38, 44);
INSERT INTO public.games VALUES (48, 435, 44);
INSERT INTO public.games VALUES (49, 94, 45);
INSERT INTO public.games VALUES (50, 649, 45);
INSERT INTO public.games VALUES (51, 706, 44);
INSERT INTO public.games VALUES (52, 623, 44);
INSERT INTO public.games VALUES (53, 433, 44);
INSERT INTO public.games VALUES (54, 743, 46);
INSERT INTO public.games VALUES (55, 353, 46);
INSERT INTO public.games VALUES (56, 670, 47);
INSERT INTO public.games VALUES (57, 211, 47);
INSERT INTO public.games VALUES (58, 366, 46);
INSERT INTO public.games VALUES (59, 482, 46);
INSERT INTO public.games VALUES (60, 623, 46);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'eralp');
INSERT INTO public.users VALUES (2, 'user_1656393108369');
INSERT INTO public.users VALUES (3, 'user_1656393108368');
INSERT INTO public.users VALUES (4, 'user_1656393135405');
INSERT INTO public.users VALUES (5, 'user_1656393135404');
INSERT INTO public.users VALUES (6, 'user_1656393168583');
INSERT INTO public.users VALUES (7, 'user_1656393168582');
INSERT INTO public.users VALUES (8, 'eralp2');
INSERT INTO public.users VALUES (9, 'user_1656393204884');
INSERT INTO public.users VALUES (10, 'user_1656393204883');
INSERT INTO public.users VALUES (11, 'eralp3');
INSERT INTO public.users VALUES (12, 'user_1656393261510');
INSERT INTO public.users VALUES (13, 'user_1656393261509');
INSERT INTO public.users VALUES (14, 'eralp4');
INSERT INTO public.users VALUES (15, 'user_1656393503073');
INSERT INTO public.users VALUES (16, 'user_1656393503072');
INSERT INTO public.users VALUES (17, 'user_1656393862995');
INSERT INTO public.users VALUES (18, 'user_1656393862994');
INSERT INTO public.users VALUES (19, 'eralp5');
INSERT INTO public.users VALUES (20, 'user_1656394106075');
INSERT INTO public.users VALUES (21, 'user_1656394106074');
INSERT INTO public.users VALUES (22, 'user_1656394225992');
INSERT INTO public.users VALUES (23, 'user_1656394225991');
INSERT INTO public.users VALUES (24, 'user_1656394243995');
INSERT INTO public.users VALUES (25, 'user_1656394243994');
INSERT INTO public.users VALUES (26, '500');
INSERT INTO public.users VALUES (27, 'user_1656394510692');
INSERT INTO public.users VALUES (28, 'user_1656394510691');
INSERT INTO public.users VALUES (29, 'user_1656394525556');
INSERT INTO public.users VALUES (30, 'user_1656394525555');
INSERT INTO public.users VALUES (31, 'ppppp');
INSERT INTO public.users VALUES (32, 'user_1656394608110');
INSERT INTO public.users VALUES (33, 'user_1656394608109');
INSERT INTO public.users VALUES (34, 'user_1656394754645');
INSERT INTO public.users VALUES (35, 'user_1656394754644');
INSERT INTO public.users VALUES (36, 'user_1656395331755');
INSERT INTO public.users VALUES (37, 'user_1656395331754');
INSERT INTO public.users VALUES (38, 'user_1656395608512');
INSERT INTO public.users VALUES (39, 'user_1656395608511');
INSERT INTO public.users VALUES (40, 'user_1656395655151');
INSERT INTO public.users VALUES (41, 'user_1656395655150');
INSERT INTO public.users VALUES (42, 'user_1656395708872');
INSERT INTO public.users VALUES (43, 'user_1656395708871');
INSERT INTO public.users VALUES (44, 'user_1656395796547');
INSERT INTO public.users VALUES (45, 'user_1656395796546');
INSERT INTO public.users VALUES (46, 'user_1656395879421');
INSERT INTO public.users VALUES (47, 'user_1656395879420');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


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

