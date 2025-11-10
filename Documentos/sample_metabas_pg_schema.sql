--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 16.2

-- Started on 2025-11-09 16:43:43

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 24690)
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    _mb_row_id bigint NOT NULL,
    id bigint,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    plan character varying(255),
    source character varying(255),
    seats bigint,
    created_at character varying(255),
    trial_ends_at character varying(255),
    canceled_at character varying(255),
    trial_converted boolean,
    active_subscription boolean,
    legacy_plan boolean,
    latitude character varying(255),
    longitude character varying(255),
    country character varying(255)
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24688)
-- Name: accounts_20251109191716__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_20251109191716__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_20251109191716__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 202
-- Name: accounts_20251109191716__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_20251109191716__mb_row_id_seq OWNED BY public.accounts._mb_row_id;


--
-- TOC entry 205 (class 1259 OID 24702)
-- Name: analyticevents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analyticevents (
    _mb_row_id bigint NOT NULL,
    id bigint,
    account_id character varying(255),
    event character varying(255),
    "timestamp" character varying(255),
    page_url character varying(255),
    button_label character varying(255)
);


ALTER TABLE public.analyticevents OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24700)
-- Name: analyticevents_20251109191856__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.analyticevents_20251109191856__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.analyticevents_20251109191856__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 204
-- Name: analyticevents_20251109191856__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.analyticevents_20251109191856__mb_row_id_seq OWNED BY public.analyticevents._mb_row_id;


--
-- TOC entry 207 (class 1259 OID 24713)
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    _mb_row_id bigint NOT NULL,
    id bigint,
    account_id character varying(255),
    email character varying(255),
    date_received character varying(255),
    rating bigint,
    rating_mapped character varying(255),
    body text
);


ALTER TABLE public.feedback OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24711)
-- Name: feedback_20251109191914__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedback_20251109191914__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedback_20251109191914__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 206
-- Name: feedback_20251109191914__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedback_20251109191914__mb_row_id_seq OWNED BY public.feedback._mb_row_id;


--
-- TOC entry 209 (class 1259 OID 24724)
-- Name: invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices (
    _mb_row_id bigint NOT NULL,
    id bigint,
    account_id character varying(255),
    payment double precision,
    expected_invoice boolean,
    plan character varying(255),
    date_received character varying(255)
);


ALTER TABLE public.invoices OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24722)
-- Name: invoices_20251109191936__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoices_20251109191936__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.invoices_20251109191936__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 208
-- Name: invoices_20251109191936__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoices_20251109191936__mb_row_id_seq OWNED BY public.invoices._mb_row_id;


--
-- TOC entry 211 (class 1259 OID 24739)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    _mb_row_id bigint NOT NULL,
    id bigint,
    user_id character varying(255),
    product_id character varying(255),
    subtotal double precision,
    tax double precision,
    total double precision,
    discount____ double precision,
    created_at character varying(255),
    quantity bigint
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24737)
-- Name: orders_20251109191958__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_20251109191958__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_20251109191958__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 210
-- Name: orders_20251109191958__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_20251109191958__mb_row_id_seq OWNED BY public.orders._mb_row_id;


--
-- TOC entry 213 (class 1259 OID 24750)
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    _mb_row_id bigint NOT NULL,
    id bigint,
    address character varying(255),
    email character varying(255),
    password character varying(255),
    name character varying(255),
    city character varying(255),
    longitude character varying(255),
    state character varying(255),
    source character varying(255),
    birth_date character varying(255),
    zip bigint,
    latitude character varying(255),
    created_at character varying(255)
);


ALTER TABLE public.people OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24748)
-- Name: people_20251109192020__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.people_20251109192020__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.people_20251109192020__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 212
-- Name: people_20251109192020__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.people_20251109192020__mb_row_id_seq OWNED BY public.people._mb_row_id;


--
-- TOC entry 215 (class 1259 OID 24769)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    _mb_row_id bigint NOT NULL,
    id bigint,
    ean bigint,
    title character varying(255),
    category character varying(255),
    vendor character varying(255),
    price double precision,
    rating double precision,
    created_at character varying(255)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24767)
-- Name: products_20251109192348__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_20251109192348__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_20251109192348__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 214
-- Name: products_20251109192348__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_20251109192348__mb_row_id_seq OWNED BY public.products._mb_row_id;


--
-- TOC entry 217 (class 1259 OID 24780)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    _mb_row_id bigint NOT NULL,
    id bigint,
    product_id character varying(255),
    reviewer character varying(255),
    rating bigint,
    body text,
    created_at character varying(255)
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24778)
-- Name: reviews_20251109192400__mb_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_20251109192400__mb_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_20251109192400__mb_row_id_seq OWNER TO postgres;

--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 216
-- Name: reviews_20251109192400__mb_row_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_20251109192400__mb_row_id_seq OWNED BY public.reviews._mb_row_id;


--
-- TOC entry 2737 (class 2604 OID 24693)
-- Name: accounts _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.accounts_20251109191716__mb_row_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 24705)
-- Name: analyticevents _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyticevents ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.analyticevents_20251109191856__mb_row_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 24716)
-- Name: feedback _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.feedback_20251109191914__mb_row_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 24727)
-- Name: invoices _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.invoices_20251109191936__mb_row_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 24742)
-- Name: orders _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.orders_20251109191958__mb_row_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 24753)
-- Name: people _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.people_20251109192020__mb_row_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 24772)
-- Name: products _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.products_20251109192348__mb_row_id_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 24783)
-- Name: reviews _mb_row_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN _mb_row_id SET DEFAULT nextval('public.reviews_20251109192400__mb_row_id_seq'::regclass);


--
-- TOC entry 2746 (class 2606 OID 24698)
-- Name: accounts accounts_20251109191716_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_20251109191716_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2748 (class 2606 OID 24710)
-- Name: analyticevents analyticevents_20251109191856_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyticevents
    ADD CONSTRAINT analyticevents_20251109191856_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2750 (class 2606 OID 24721)
-- Name: feedback feedback_20251109191914_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_20251109191914_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2752 (class 2606 OID 24732)
-- Name: invoices invoices_20251109191936_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_20251109191936_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2754 (class 2606 OID 24747)
-- Name: orders orders_20251109191958_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_20251109191958_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2756 (class 2606 OID 24758)
-- Name: people people_20251109192020_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_20251109192020_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2758 (class 2606 OID 24777)
-- Name: products products_20251109192348_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_20251109192348_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2760 (class 2606 OID 24788)
-- Name: reviews reviews_20251109192400_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_20251109192400_pkey PRIMARY KEY (_mb_row_id);


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-11-09 16:43:44

--
-- PostgreSQL database dump complete
--

