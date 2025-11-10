--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 16.2

-- Started on 2025-11-09 16:42:45

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
-- TOC entry 203 (class 1259 OID 24591)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    categoryid integer NOT NULL,
    categoryname character varying(15) NOT NULL,
    description text,
    picture bytea
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24589)
-- Name: category_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_categoryid_seq OWNER TO postgres;

--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 202
-- Name: category_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_categoryid_seq OWNED BY public.category.categoryid;


--
-- TOC entry 209 (class 1259 OID 24625)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    custid integer NOT NULL,
    companyname character varying(40) NOT NULL,
    contactname character varying(30),
    contacttitle character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24623)
-- Name: customer_custid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_custid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_custid_seq OWNER TO postgres;

--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 208
-- Name: customer_custid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_custid_seq OWNED BY public.customer.custid;


--
-- TOC entry 206 (class 1259 OID 24610)
-- Name: customercustomerdemographic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customercustomerdemographic (
    customerid character varying(5) NOT NULL,
    customertypeid character varying(10) NOT NULL
);


ALTER TABLE public.customercustomerdemographic OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24615)
-- Name: customerdemographic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customerdemographic (
    customertypeid character varying(10) NOT NULL,
    customerdesc text
);


ALTER TABLE public.customerdemographic OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24633)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    empid integer NOT NULL,
    lastname character varying(20) NOT NULL,
    firstname character varying(10) NOT NULL,
    title character varying(30),
    titleofcourtesy character varying(25),
    birthdate timestamp without time zone,
    hiredate timestamp without time zone,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    mgrid integer,
    photopath character varying(255)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24631)
-- Name: employee_empid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_empid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_empid_seq OWNER TO postgres;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 210
-- Name: employee_empid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_empid_seq OWNED BY public.employee.empid;


--
-- TOC entry 212 (class 1259 OID 24642)
-- Name: employeeterritory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employeeterritory (
    employeeid integer NOT NULL,
    territoryid character varying(20) NOT NULL
);


ALTER TABLE public.employeeterritory OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24682)
-- Name: orderdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orderdetail (
    orderid integer NOT NULL,
    productid integer NOT NULL,
    unitprice numeric(10,2) NOT NULL,
    qty smallint NOT NULL,
    discount numeric(10,2) NOT NULL
);


ALTER TABLE public.orderdetail OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24649)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    productid integer NOT NULL,
    productname character varying(40) NOT NULL,
    supplierid integer,
    categoryid integer,
    quantityperunit character varying(20),
    unitprice numeric(10,2),
    unitsinstock smallint,
    unitsonorder smallint,
    reorderlevel smallint,
    discontinued character(1) NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24647)
-- Name: product_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_productid_seq OWNER TO postgres;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 213
-- Name: product_productid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_productid_seq OWNED BY public.product.productid;


--
-- TOC entry 204 (class 1259 OID 24600)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    regionid integer NOT NULL,
    regiondescription character varying(50) NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24676)
-- Name: salesorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salesorder (
    orderid integer NOT NULL,
    custid character varying(15),
    empid integer,
    orderdate timestamp without time zone,
    requireddate timestamp without time zone,
    shippeddate timestamp without time zone,
    shipperid integer,
    freight numeric(10,2),
    shipname character varying(40),
    shipaddress character varying(60),
    shipcity character varying(15),
    shipregion character varying(15),
    shippostalcode character varying(10),
    shipcountry character varying(15)
);


ALTER TABLE public.salesorder OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24674)
-- Name: salesorder_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salesorder_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.salesorder_orderid_seq OWNER TO postgres;

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 219
-- Name: salesorder_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salesorder_orderid_seq OWNED BY public.salesorder.orderid;


--
-- TOC entry 216 (class 1259 OID 24657)
-- Name: shipper; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipper (
    shipperid integer NOT NULL,
    companyname character varying(40) NOT NULL,
    phone character varying(44)
);


ALTER TABLE public.shipper OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24655)
-- Name: shipper_shipperid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shipper_shipperid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shipper_shipperid_seq OWNER TO postgres;

--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 215
-- Name: shipper_shipperid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shipper_shipperid_seq OWNED BY public.shipper.shipperid;


--
-- TOC entry 218 (class 1259 OID 24665)
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    supplierid integer NOT NULL,
    companyname character varying(40) NOT NULL,
    contactname character varying(30),
    contacttitle character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    homepage text
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24663)
-- Name: supplier_supplierid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_supplierid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supplier_supplierid_seq OWNER TO postgres;

--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 217
-- Name: supplier_supplierid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_supplierid_seq OWNED BY public.supplier.supplierid;


--
-- TOC entry 205 (class 1259 OID 24605)
-- Name: territory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.territory (
    territoryid character varying(20) NOT NULL,
    territorydescription character varying(50) NOT NULL,
    regionid integer NOT NULL
);


ALTER TABLE public.territory OWNER TO postgres;

--
-- TOC entry 2751 (class 2604 OID 24594)
-- Name: category categoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN categoryid SET DEFAULT nextval('public.category_categoryid_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 24628)
-- Name: customer custid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN custid SET DEFAULT nextval('public.customer_custid_seq'::regclass);


--
-- TOC entry 2753 (class 2604 OID 24636)
-- Name: employee empid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN empid SET DEFAULT nextval('public.employee_empid_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 24652)
-- Name: product productid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN productid SET DEFAULT nextval('public.product_productid_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 24679)
-- Name: salesorder orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesorder ALTER COLUMN orderid SET DEFAULT nextval('public.salesorder_orderid_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 24660)
-- Name: shipper shipperid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipper ALTER COLUMN shipperid SET DEFAULT nextval('public.shipper_shipperid_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 24668)
-- Name: supplier supplierid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN supplierid SET DEFAULT nextval('public.supplier_supplierid_seq'::regclass);


--
-- TOC entry 2759 (class 2606 OID 24599)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoryid);


--
-- TOC entry 2769 (class 2606 OID 24630)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (custid);


--
-- TOC entry 2765 (class 2606 OID 24614)
-- Name: customercustomerdemographic customercustomerdemographic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customercustomerdemographic
    ADD CONSTRAINT customercustomerdemographic_pkey PRIMARY KEY (customerid, customertypeid);


--
-- TOC entry 2767 (class 2606 OID 24622)
-- Name: customerdemographic customerdemographic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customerdemographic
    ADD CONSTRAINT customerdemographic_pkey PRIMARY KEY (customertypeid);


--
-- TOC entry 2771 (class 2606 OID 24641)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (empid);


--
-- TOC entry 2773 (class 2606 OID 24646)
-- Name: employeeterritory employeeterritory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employeeterritory
    ADD CONSTRAINT employeeterritory_pkey PRIMARY KEY (employeeid, territoryid);


--
-- TOC entry 2775 (class 2606 OID 24654)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);


--
-- TOC entry 2761 (class 2606 OID 24604)
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (regionid);


--
-- TOC entry 2781 (class 2606 OID 24681)
-- Name: salesorder salesorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salesorder
    ADD CONSTRAINT salesorder_pkey PRIMARY KEY (orderid);


--
-- TOC entry 2777 (class 2606 OID 24662)
-- Name: shipper shipper_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipper
    ADD CONSTRAINT shipper_pkey PRIMARY KEY (shipperid);


--
-- TOC entry 2779 (class 2606 OID 24673)
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplierid);


--
-- TOC entry 2763 (class 2606 OID 24609)
-- Name: territory territory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.territory
    ADD CONSTRAINT territory_pkey PRIMARY KEY (territoryid);


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2025-11-09 16:42:46

--
-- PostgreSQL database dump complete
--

