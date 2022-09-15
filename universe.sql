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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    eccentricity numeric(5,4),
    gf_galaxy_id integer,
    n_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    gf_moon_id integer,
    habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moonstar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moonstar (
    moonstar_id integer NOT NULL,
    moon_id integer,
    star_id integer,
    name character varying(30),
    gf_moon_id integer NOT NULL,
    hello integer NOT NULL
);


ALTER TABLE public.moonstar OWNER TO freecodecamp;

--
-- Name: moonstar_gf_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moonstar_gf_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moonstar_gf_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moonstar_gf_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moonstar_gf_moon_id_seq OWNED BY public.moonstar.gf_moon_id;


--
-- Name: moonstar_hello_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moonstar_hello_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moonstar_hello_seq OWNER TO freecodecamp;

--
-- Name: moonstar_hello_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moonstar_hello_seq OWNED BY public.moonstar.hello;


--
-- Name: moonstar_moonstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moonstar_moonstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moonstar_moonstar_id_seq OWNER TO freecodecamp;

--
-- Name: moonstar_moonstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moonstar_moonstar_id_seq OWNED BY public.moonstar.moonstar_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    gf_star_id integer,
    habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_primary_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_primary_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_primary_key_seq OWNER TO freecodecamp;

--
-- Name: planet_primary_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_primary_key_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    gf_star_id integer,
    local_name text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moonstar moonstar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar ALTER COLUMN moonstar_id SET DEFAULT nextval('public.moonstar_moonstar_id_seq'::regclass);


--
-- Name: moonstar gf_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar ALTER COLUMN gf_moon_id SET DEFAULT nextval('public.moonstar_gf_moon_id_seq'::regclass);


--
-- Name: moonstar hello; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar ALTER COLUMN hello SET DEFAULT nextval('public.moonstar_hello_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_primary_key_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 10, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 11, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 12, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 8, NULL, NULL);


--
-- Data for Name: moonstar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moonstar VALUES (1, 1, 1, NULL, 1, 1);
INSERT INTO public.moonstar VALUES (2, 2, 1, NULL, 2, 2);
INSERT INTO public.moonstar VALUES (3, 3, 2, NULL, 3, 3);
INSERT INTO public.moonstar VALUES (4, 4, 2, NULL, 4, 4);
INSERT INTO public.moonstar VALUES (5, 5, 3, NULL, 5, 5);
INSERT INTO public.moonstar VALUES (6, 6, 3, NULL, 6, 6);
INSERT INTO public.moonstar VALUES (7, 7, 4, NULL, 7, 7);
INSERT INTO public.moonstar VALUES (8, 8, 4, NULL, 8, 8);
INSERT INTO public.moonstar VALUES (9, 9, 5, NULL, 9, 9);
INSERT INTO public.moonstar VALUES (10, 10, 5, NULL, 10, 10);
INSERT INTO public.moonstar VALUES (11, 11, 6, NULL, 11, 11);
INSERT INTO public.moonstar VALUES (12, 12, 6, NULL, 12, 12);
INSERT INTO public.moonstar VALUES (13, 13, 1, NULL, 13, 13);
INSERT INTO public.moonstar VALUES (14, 14, 1, NULL, 14, 14);
INSERT INTO public.moonstar VALUES (15, 15, 2, NULL, 15, 15);
INSERT INTO public.moonstar VALUES (16, 16, 2, NULL, 16, 16);
INSERT INTO public.moonstar VALUES (17, 17, 3, NULL, 17, 17);
INSERT INTO public.moonstar VALUES (18, 18, 3, NULL, 18, 18);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moonstar_gf_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moonstar_gf_moon_id_seq', 18, true);


--
-- Name: moonstar_hello_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moonstar_hello_seq', 18, true);


--
-- Name: moonstar_moonstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moonstar_moonstar_id_seq', 18, true);


--
-- Name: planet_primary_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_primary_key_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_gf_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gf_galaxy_id_key UNIQUE (gf_galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_gf_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_gf_moon_id_key UNIQUE (gf_moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moonstar moonstar_hello_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar
    ADD CONSTRAINT moonstar_hello_key UNIQUE (hello);


--
-- Name: moonstar moonstar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar
    ADD CONSTRAINT moonstar_pkey PRIMARY KEY (moonstar_id);


--
-- Name: planet planet_gf_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_gf_star_id_key UNIQUE (gf_star_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_gf_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gf_star_id_key UNIQUE (gf_star_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moonstar moonstar_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar
    ADD CONSTRAINT moonstar_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moonstar moonstar_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moonstar
    ADD CONSTRAINT moonstar_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

