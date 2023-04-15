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
    name character varying(20) NOT NULL,
    is_spherical boolean NOT NULL,
    placeholder_1 character varying(20),
    placeholder_2 character varying(20)
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
    name character varying(20) NOT NULL,
    planet_id integer,
    placeholder_1 character varying(20),
    placeholder_2 character varying(20)
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
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    age_in_million_of_years numeric(5,2),
    mass integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    sparkle boolean NOT NULL,
    placeholder_1 character varying(20),
    placeholder_2 character varying(20)
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
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'test', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'again', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'final countdown', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'genelec', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'bash', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'www', true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'hello', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'hey', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'ho', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'esthehs', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'tyntyui', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'qwwtvu', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'estheh', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'tyntyu', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'qwwtv', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'esthe', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'tynty', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'qwwt', 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'esth', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'tynt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'qww', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'aesth', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'atynt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'aqww', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'baesth', 1, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'batynt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'baqww', 4, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'cbaesth', 1, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'cbatynt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'cbaqww', 4, NULL, NULL);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'Jacke', 1);
INSERT INTO public.person VALUES (2, 'TwoYearOld', 3);
INSERT INTO public.person VALUES (3, 'Peter', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaa', 'just a fucking planet', true, 3, 6.80, 500, 1);
INSERT INTO public.planet VALUES (3, 'bbb', 'a fucking planet', true, 2, 5.60, 500, 2);
INSERT INTO public.planet VALUES (4, 'ccc', 'fucking planet', false, 2, 5.00, 500, 3);
INSERT INTO public.planet VALUES (6, 'ccd', 'a fucking planet', true, 2, 5.60, 500, NULL);
INSERT INTO public.planet VALUES (7, 'eccd', 'a fucking planet', true, 2, 5.60, 500, NULL);
INSERT INTO public.planet VALUES (8, 'eccdf', 'a fucking planet', true, 2, 5.60, 500, NULL);
INSERT INTO public.planet VALUES (9, 'geccdf', 'a fucking planet', true, 2, 5.60, 500, NULL);
INSERT INTO public.planet VALUES (10, 'geccdh', 'a fucking planet', true, 2, 5.60, 500, NULL);
INSERT INTO public.planet VALUES (11, 'geccih', 'planet with many people', false, 3, 8.00, 200, NULL);
INSERT INTO public.planet VALUES (12, 'gecjih', 'planet with no people', true, 5, 8.00, 200, NULL);
INSERT INTO public.planet VALUES (13, 'gecjihooo', 'very hot planet', true, 5, 9.00, 300, NULL);
INSERT INTO public.planet VALUES (14, 'gecjihoook', 'very hot planer', false, 5, 9.80, 300, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aaa', 1, true, NULL, NULL);
INSERT INTO public.star VALUES (2, 'bbb', 2, false, NULL, NULL);
INSERT INTO public.star VALUES (3, 'ccc', 3, true, NULL, NULL);
INSERT INTO public.star VALUES (4, 'ddd', 3, true, NULL, NULL);
INSERT INTO public.star VALUES (5, 'eee', 2, false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'fff', 1, true, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.person_person_id_seq', 3, true);


--
-- Name: planet_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: person person_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_name_key UNIQUE (name);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


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
-- Name: moon moon_revolve_around_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_revolve_around_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: person person_planer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_planer_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

