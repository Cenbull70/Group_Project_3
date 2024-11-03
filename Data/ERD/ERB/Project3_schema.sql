--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-02 19:33:59

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
-- TOC entry 215 (class 1259 OID 25413)
-- Name: cemetery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cemetery (
    name character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    longitude numeric NOT NULL,
    latitude numeric NOT NULL
);


ALTER TABLE public.cemetery OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25418)
-- Name: haunted_places; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.haunted_places (
    city character varying(255) NOT NULL,
    description character varying(500),
    location_name character varying(255) NOT NULL,
    state character(40),
    longitude numeric,
    latitude numeric
);


ALTER TABLE public.haunted_places OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25423)
-- Name: historical_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historical_sites (
    place_name character varying(255) NOT NULL,
    city character varying(500),
    longitude numeric,
    latitude numeric,
    state character(40)
);


ALTER TABLE public.historical_sites OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25428)
-- Name: medical; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medical (
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    long numeric NOT NULL,
    lat numeric NOT NULL
);


ALTER TABLE public.medical OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25433)
-- Name: us_census; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.us_census (
    state character varying(255) NOT NULL,
    county character varying(255) NOT NULL,
    population integer NOT NULL
);


ALTER TABLE public.us_census OWNER TO postgres;

-- Completed on 2024-11-02 19:34:00

--
-- PostgreSQL database dump complete
--

