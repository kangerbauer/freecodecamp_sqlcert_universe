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
    name character varying(40) NOT NULL,
    age_millions_years numeric,
    dist_from_earth_lightyears integer,
    diameter_mi integer,
    has_life boolean,
    description text
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
    name character varying(40) NOT NULL,
    age_millions_years numeric,
    dist_from_earth_lightyears integer,
    diameter_mi integer,
    has_life boolean,
    moon_type text,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_millions_years numeric,
    dist_from_earth_lightyears integer,
    diameter_mi integer,
    has_life boolean,
    planet_type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planets_in_galaxies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_in_galaxies (
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets_in_galaxies_id integer NOT NULL
);


ALTER TABLE public.planets_in_galaxies OWNER TO freecodecamp;

--
-- Name: planets_in_galaxies_planets_in_galaxies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_in_galaxies_planets_in_galaxies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_in_galaxies_planets_in_galaxies_id_seq OWNER TO freecodecamp;

--
-- Name: planets_in_galaxies_planets_in_galaxies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_in_galaxies_planets_in_galaxies_id_seq OWNED BY public.planets_in_galaxies.planets_in_galaxies_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_millions_years numeric,
    dist_from_earth_lightyears integer,
    diameter_mi integer,
    solar_system boolean,
    star_type text,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planets_in_galaxies planets_in_galaxies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_in_galaxies ALTER COLUMN planets_in_galaxies_id SET DEFAULT nextval('public.planets_in_galaxies_planets_in_galaxies_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 36.3, 10, 500, false, 'Closest to home');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 45.1, 12, 350, true, 'Is home');
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 89.4, 15, 750, false, 'Looks like a pinwheel');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 31.2, 15, 500, false, 'Makes me want mexican food');
INSERT INTO public.galaxy VALUES (5, 'Cigar', 57.5, 15, 500, false, 'Smells bad');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 37.2, 15, 500, true, 'There have to be gymnasts here');
INSERT INTO public.galaxy VALUES (7, 'Black Eye', 21.2, 15, 500, false, 'No one goes here bc of that one dude from FightClub');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (2, 'Moon2', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (3, 'Moon3', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (4, 'Moon4', 23.2, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (5, 'Moon5', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (6, 'Moon6', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (7, 'Moon7', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (8, 'Moon8', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (9, 'Moon9', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (10, 'Moon10', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (11, 'Moon11', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (12, 'Moon12', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (13, 'Moon13', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (14, 'Moon14', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (15, 'Moon15', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (16, 'Moon16', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (17, 'Moon17', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (18, 'Moon18', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (19, 'Moon19', 23.3, 13, 1333, false, 'Rock', 1);
INSERT INTO public.moon VALUES (20, 'Moon20', 23.3, 13, 1333, false, 'Rock', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet1', 23.2, 13, 1333, true, 'Rock', 1);
INSERT INTO public.planet VALUES (2, 'Planet2', 23.3, 13, 1333, false, 'Gas', 1);
INSERT INTO public.planet VALUES (3, 'Planet3', 23.3, 13, 1333, false, 'Rock', 2);
INSERT INTO public.planet VALUES (4, 'Planet4', 43.2, 13, 1333, false, 'Gas', 2);
INSERT INTO public.planet VALUES (5, 'Planet5', 23.2, 13, 1333, false, 'Gas', 3);
INSERT INTO public.planet VALUES (6, 'Planet6', 42.6, 13, 1333, false, 'Ice', 3);
INSERT INTO public.planet VALUES (7, 'Planet7', 36.2, 13, 1333, false, 'Gas', 4);
INSERT INTO public.planet VALUES (8, 'Planet8', 93.2, 13, 1333, true, 'Rock', 4);
INSERT INTO public.planet VALUES (9, 'Planet9', 23.1, 13, 1333, false, 'Gas', 5);
INSERT INTO public.planet VALUES (10, 'Planet10', 49.2, 13, 1333, false, 'Ice', 5);
INSERT INTO public.planet VALUES (11, 'Planet11', 22.2, 13, 1333, true, 'Rock', 6);
INSERT INTO public.planet VALUES (12, 'Planet12', 98.3, 13, 1333, false, 'Gas', 6);


--
-- Data for Name: planets_in_galaxies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_in_galaxies VALUES (1, 1, 'rel1', 1);
INSERT INTO public.planets_in_galaxies VALUES (1, 2, 'rel2', 2);
INSERT INTO public.planets_in_galaxies VALUES (2, 1, 'rel3', 3);
INSERT INTO public.planets_in_galaxies VALUES (2, 2, 'rel4', 4);
INSERT INTO public.planets_in_galaxies VALUES (3, 3, 'rel5', 5);
INSERT INTO public.planets_in_galaxies VALUES (4, 4, 'rel6', 6);
INSERT INTO public.planets_in_galaxies VALUES (5, 5, 'rel7', 7);
INSERT INTO public.planets_in_galaxies VALUES (6, 6, 'rel8', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 247.5, 13, 1333, true, 'White Dwarf', 1);
INSERT INTO public.star VALUES (2, 'Star2', 234.2, 13, 1333, false, 'Red Giant', 2);
INSERT INTO public.star VALUES (3, 'Star3', 234.2, 13, 1333, true, 'Blue Elf', 3);
INSERT INTO public.star VALUES (4, 'Star4', 389.3, 13, 1333, true, 'NY Giant', 4);
INSERT INTO public.star VALUES (5, 'Star5', 234.2, 13, 1333, true, 'Purple Tiefling', 5);
INSERT INTO public.star VALUES (6, 'Star6', 234.3, 13, 1333, false, 'Black Hole', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planets_in_galaxies_planets_in_galaxies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_in_galaxies_planets_in_galaxies_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: planets_in_galaxies planets_in_galaxies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_in_galaxies
    ADD CONSTRAINT planets_in_galaxies_name_key UNIQUE (name);


--
-- Name: planets_in_galaxies planets_in_galaxies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_in_galaxies
    ADD CONSTRAINT planets_in_galaxies_pkey PRIMARY KEY (planets_in_galaxies_id);


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

