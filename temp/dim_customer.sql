--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 12.19

-- Started on 2025-11-22 06:18:30

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
-- TOC entry 278 (class 1259 OID 35245)
-- Name: dim_customer; Type: TABLE; Schema: dw_dw; Owner: postgres
--

CREATE TABLE dw_dw.dim_customer (
    customer_sk bigint,
    customer_nk text,
    source_system text,
    source_customer_id bigint,
    customer_name character varying,
    contact_name character varying,
    contact_title character varying,
    first_name character varying,
    last_name character varying,
    address character varying,
    city character varying,
    region text,
    country character varying,
    postal_code character varying,
    plan character varying,
    segment character varying,
    seats bigint,
    trial_converted boolean,
    active_subscription boolean,
    legacy_plan boolean,
    created_at timestamp with time zone,
    trial_ends_at timestamp without time zone,
    canceled_at timestamp without time zone,
    dbt_valid_from timestamp without time zone,
    dbt_valid_to timestamp without time zone,
    current_flag boolean
);


ALTER TABLE dw_dw.dim_customer OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 35245)
-- Dependencies: 278
-- Data for Name: dim_customer; Type: TABLE DATA; Schema: dw_dw; Owner: postgres
--

COPY dw_dw.dim_customer (customer_sk, customer_nk, source_system, source_customer_id, customer_name, contact_name, contact_title, first_name, last_name, address, city, region, country, postal_code, plan, segment, seats, trial_converted, active_subscription, legacy_plan, created_at, trial_ends_at, canceled_at, dbt_valid_from, dbt_valid_to, current_flag) FROM stdin;
1	METABASE_1	METABASE	1	Macy Kub	\N	\N	Macy	Kub	\N	\N	\N	IN	\N	Basic	Facebook	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_10	METABASE	10	Elijah Rohan	\N	\N	Elijah	Rohan	\N	\N	\N	IT	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_100	METABASE	100	Marley Cronin	\N	\N	Marley	Cronin	\N	\N	\N	US	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1000	METABASE	1000	Alvis Hayes	\N	\N	Alvis	Hayes	\N	\N	\N	FR	\N	Basic	Twitter	67	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1001	METABASE	1001	Jordy Haag	\N	\N	Jordy	Haag	\N	\N	\N	GT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1002	METABASE	1002	Petra Durgan	\N	\N	Petra	Durgan	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1003	METABASE	1003	Elyssa Wolf	\N	\N	Elyssa	Wolf	\N	\N	\N	TH	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1004	METABASE	1004	Alphonso Quigley	\N	\N	Alphonso	Quigley	\N	\N	\N	RW	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1005	METABASE	1005	Candida Kiehn	\N	\N	Candida	Kiehn	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1006	METABASE	1006	Maximillian Mohr	\N	\N	Maximillian	Mohr	\N	\N	\N	CU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1007	METABASE	1007	Lavonne Senger	\N	\N	Lavonne	Senger	\N	\N	\N	GB	\N	Business	Facebook	19	t	t	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1008	METABASE	1008	Yasmin Stark	\N	\N	Yasmin	Stark	\N	\N	\N	CZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1009	METABASE	1009	Jairo Simonis	\N	\N	Jairo	Simonis	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_101	METABASE	101	Dorris Okuneva	\N	\N	Dorris	Okuneva	\N	\N	\N	IT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1010	METABASE	1010	Dominique Leffler	\N	\N	Dominique	Leffler	\N	\N	\N	ES	\N	Basic	Facebook	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1011	METABASE	1011	Keira Gorczany	\N	\N	Keira	Gorczany	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1012	METABASE	1012	Richard Harris	\N	\N	Richard	Harris	\N	\N	\N	HR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1013	METABASE	1013	Ardith Wisozk	\N	\N	Ardith	Wisozk	\N	\N	\N	ES	\N	Premium	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1014	METABASE	1014	Ciara Dooley	\N	\N	Ciara	Dooley	\N	\N	\N	ES	\N	Basic	\N	135	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1015	METABASE	1015	Torrance Kuhic	\N	\N	Torrance	Kuhic	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1016	METABASE	1016	Cleo Beer	\N	\N	Cleo	Beer	\N	\N	\N	TH	\N	Basic	\N	60	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1017	METABASE	1017	Jayne Breitenberg	\N	\N	Jayne	Breitenberg	\N	\N	\N	IT	\N	Basic	Invite	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1018	METABASE	1018	Emerald Robel	\N	\N	Emerald	Robel	\N	\N	\N	PL	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1019	METABASE	1019	Anderson Morissette	\N	\N	Anderson	Morissette	\N	\N	\N	CA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_102	METABASE	102	Jennifer Klocko	\N	\N	Jennifer	Klocko	\N	\N	\N	GB	\N	Premium	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1020	METABASE	1020	Kristian Kuhic	\N	\N	Kristian	Kuhic	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1021	METABASE	1021	Andreanne Mayert	\N	\N	Andreanne	Mayert	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1022	METABASE	1022	Anais Zieme	\N	\N	Anais	Zieme	\N	\N	\N	NG	\N	Basic	\N	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1023	METABASE	1023	Taya Daniel	\N	\N	Taya	Daniel	\N	\N	\N	FR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1024	METABASE	1024	Gavin Hettinger	\N	\N	Gavin	Hettinger	\N	\N	\N	RO	\N	Basic	\N	32	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1025	METABASE	1025	Cyril Breitenberg	\N	\N	Cyril	Breitenberg	\N	\N	\N	MW	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1026	METABASE	1026	Okey Lueilwitz	\N	\N	Okey	Lueilwitz	\N	\N	\N	BT	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1027	METABASE	1027	Patricia Barrows	\N	\N	Patricia	Barrows	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1028	METABASE	1028	Sabina Green	\N	\N	Sabina	Green	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1029	METABASE	1029	Marguerite Pouros	\N	\N	Marguerite	Pouros	\N	\N	\N	US	\N	Basic	Twitter	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_103	METABASE	103	Johnnie Glover	\N	\N	Johnnie	Glover	\N	\N	\N	IE	\N	Basic	Google	93	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1030	METABASE	1030	Melisa Hilpert	\N	\N	Melisa	Hilpert	\N	\N	\N	KM	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1031	METABASE	1031	Darrell Fritsch	\N	\N	Darrell	Fritsch	\N	\N	\N	IT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1032	METABASE	1032	Clark Schinner	\N	\N	Clark	Schinner	\N	\N	\N	RO	\N	Basic	Twitter	102	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1033	METABASE	1033	Camron Quigley	\N	\N	Camron	Quigley	\N	\N	\N	MX	\N	Basic	Twitter	87	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1034	METABASE	1034	Kariane Hintz	\N	\N	Kariane	Hintz	\N	\N	\N	RU	\N	Premium	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1035	METABASE	1035	Maxie Rogahn	\N	\N	Maxie	Rogahn	\N	\N	\N	US	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1036	METABASE	1036	Samir Hayes	\N	\N	Samir	Hayes	\N	\N	\N	RO	\N	Premium	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1037	METABASE	1037	Cristian Pouros	\N	\N	Cristian	Pouros	\N	\N	\N	BR	\N	Basic	\N	267	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1038	METABASE	1038	Danika Langworth	\N	\N	Danika	Langworth	\N	\N	\N	BY	\N	Premium	Facebook	223	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1039	METABASE	1039	Fabian Heller	\N	\N	Fabian	Heller	\N	\N	\N	DO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_104	METABASE	104	Kenna Walter	\N	\N	Kenna	Walter	\N	\N	\N	IN	\N	Premium	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1040	METABASE	1040	Cedrick Kessler	\N	\N	Cedrick	Kessler	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1041	METABASE	1041	Green Schimmel	\N	\N	Green	Schimmel	\N	\N	\N	IN	\N	Basic	\N	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1042	METABASE	1042	Georgiana Willms	\N	\N	Georgiana	Willms	\N	\N	\N	RO	\N	Basic	\N	82	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1043	METABASE	1043	Lexie Lakin	\N	\N	Lexie	Lakin	\N	\N	\N	MX	\N	Basic	Invite	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1044	METABASE	1044	Louisa Sauer	\N	\N	Louisa	Sauer	\N	\N	\N	CZ	\N	Basic	Invite	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1045	METABASE	1045	Winston Mohr	\N	\N	Winston	Mohr	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1046	METABASE	1046	Camryn Schmeler	\N	\N	Camryn	Schmeler	\N	\N	\N	US	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1047	METABASE	1047	Jenifer Aufderhar	\N	\N	Jenifer	Aufderhar	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1048	METABASE	1048	Priscilla Moore	\N	\N	Priscilla	Moore	\N	\N	\N	PL	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1049	METABASE	1049	Mellie Abernathy	\N	\N	Mellie	Abernathy	\N	\N	\N	US	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_105	METABASE	105	Lonnie Beier	\N	\N	Lonnie	Beier	\N	\N	\N	NO	\N	Basic	Twitter	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1050	METABASE	1050	Rebecca Emard	\N	\N	Rebecca	Emard	\N	\N	\N	KZ	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1051	METABASE	1051	Jazlyn Murray	\N	\N	Jazlyn	Murray	\N	\N	\N	IT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1052	METABASE	1052	Idell Murray	\N	\N	Idell	Murray	\N	\N	\N	TR	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1053	METABASE	1053	Brown Davis	\N	\N	Brown	Davis	\N	\N	\N	CA	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1054	METABASE	1054	Dorris Herzog	\N	\N	Dorris	Herzog	\N	\N	\N	IT	\N	Basic	\N	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1055	METABASE	1055	Henriette Gibson	\N	\N	Henriette	Gibson	\N	\N	\N	ID	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1056	METABASE	1056	Mack Lakin	\N	\N	Mack	Lakin	\N	\N	\N	LT	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1057	METABASE	1057	Maurine Considine	\N	\N	Maurine	Considine	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1058	METABASE	1058	Mario Wisoky	\N	\N	Mario	Wisoky	\N	\N	\N	MX	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1059	METABASE	1059	Loyal Schiller	\N	\N	Loyal	Schiller	\N	\N	\N	MX	\N	Basic	Google	190	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_106	METABASE	106	Minnie Cremin	\N	\N	Minnie	Cremin	\N	\N	\N	PL	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1060	METABASE	1060	Joe Terry	\N	\N	Joe	Terry	\N	\N	\N	TR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1061	METABASE	1061	Jailyn Morissette	\N	\N	Jailyn	Morissette	\N	\N	\N	TH	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1062	METABASE	1062	Brannon Schroeder	\N	\N	Brannon	Schroeder	\N	\N	\N	MX	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1063	METABASE	1063	Nadia Vandervort	\N	\N	Nadia	Vandervort	\N	\N	\N	JP	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1064	METABASE	1064	Davin Turcotte	\N	\N	Davin	Turcotte	\N	\N	\N	BG	\N	Basic	Twitter	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1065	METABASE	1065	Elvis Goyette	\N	\N	Elvis	Goyette	\N	\N	\N	US	\N	Basic	Facebook	49	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1066	METABASE	1066	Charley Renner	\N	\N	Charley	Renner	\N	\N	\N	PH	\N	Premium	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1067	METABASE	1067	Madge Ondricka	\N	\N	Madge	Ondricka	\N	\N	\N	DE	\N	Premium	Invite	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1068	METABASE	1068	Christophe Wilderman	\N	\N	Christophe	Wilderman	\N	\N	\N	BY	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1069	METABASE	1069	Clark Luettgen	\N	\N	Clark	Luettgen	\N	\N	\N	BR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_107	METABASE	107	Leonor Mitchell	\N	\N	Leonor	Mitchell	\N	\N	\N	IR	\N	Premium	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1070	METABASE	1070	Ivory Jacobi	\N	\N	Ivory	Jacobi	\N	\N	\N	BR	\N	Basic	Google	93	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1071	METABASE	1071	Pink Kuhic	\N	\N	Pink	Kuhic	\N	\N	\N	NL	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1072	METABASE	1072	Murray Zemlak	\N	\N	Murray	Zemlak	\N	\N	\N	IT	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1073	METABASE	1073	Lucile Gutmann	\N	\N	Lucile	Gutmann	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1074	METABASE	1074	Dominic Jacobi	\N	\N	Dominic	Jacobi	\N	\N	\N	GB	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1075	METABASE	1075	Viviane Cummerata	\N	\N	Viviane	Cummerata	\N	\N	\N	HT	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1076	METABASE	1076	Thurman Pouros	\N	\N	Thurman	Pouros	\N	\N	\N	CH	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1077	METABASE	1077	Arturo Bahringer	\N	\N	Arturo	Bahringer	\N	\N	\N	ES	\N	Basic	Google	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1078	METABASE	1078	Warren Gulgowski	\N	\N	Warren	Gulgowski	\N	\N	\N	PH	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1079	METABASE	1079	Berry Hirthe	\N	\N	Berry	Hirthe	\N	\N	\N	CZ	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_108	METABASE	108	Clay Pfannerstill	\N	\N	Clay	Pfannerstill	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1080	METABASE	1080	Casimer Mitchell	\N	\N	Casimer	Mitchell	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1081	METABASE	1081	Christop Schulist	\N	\N	Christop	Schulist	\N	\N	\N	AR	\N	Basic	Facebook	27	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1082	METABASE	1082	Mariah Brown	\N	\N	Mariah	Brown	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1083	METABASE	1083	Laurie Ortiz	\N	\N	Laurie	Ortiz	\N	\N	\N	NL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1084	METABASE	1084	Verna Schinner	\N	\N	Verna	Schinner	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1085	METABASE	1085	Harrison Kris	\N	\N	Harrison	Kris	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1086	METABASE	1086	Nikita Little	\N	\N	Nikita	Little	\N	\N	\N	IT	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1087	METABASE	1087	Sabrina Schmidt	\N	\N	Sabrina	Schmidt	\N	\N	\N	IT	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1088	METABASE	1088	Alvis Gleichner	\N	\N	Alvis	Gleichner	\N	\N	\N	PH	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1089	METABASE	1089	Gabrielle Kohler	\N	\N	Gabrielle	Kohler	\N	\N	\N	DE	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_109	METABASE	109	Yvonne Ryan	\N	\N	Yvonne	Ryan	\N	\N	\N	ES	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1090	METABASE	1090	Winifred Tillman	\N	\N	Winifred	Tillman	\N	\N	\N	JP	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1091	METABASE	1091	Myriam Witting	\N	\N	Myriam	Witting	\N	\N	\N	US	\N	Basic	Google	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1092	METABASE	1092	Dariana Schneider	\N	\N	Dariana	Schneider	\N	\N	\N	TH	\N	Basic	\N	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1093	METABASE	1093	Pearline Paucek	\N	\N	Pearline	Paucek	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1094	METABASE	1094	Blair Heaney	\N	\N	Blair	Heaney	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1095	METABASE	1095	Paige Lueilwitz	\N	\N	Paige	Lueilwitz	\N	\N	\N	BE	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1096	METABASE	1096	Ollie Corkery	\N	\N	Ollie	Corkery	\N	\N	\N	CN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1097	METABASE	1097	Darryl Stanton	\N	\N	Darryl	Stanton	\N	\N	\N	JP	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1098	METABASE	1098	Allison Doyle	\N	\N	Allison	Doyle	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1099	METABASE	1099	Adrien VonRueden	\N	\N	Adrien	VonRueden	\N	\N	\N	BR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_11	METABASE	11	Clay Leannon	\N	\N	Clay	Leannon	\N	\N	\N	TZ	\N	Basic	Twitter	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_110	METABASE	110	Sydnie Connelly	\N	\N	Sydnie	Connelly	\N	\N	\N	PL	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1100	METABASE	1100	Kiley Stark	\N	\N	Kiley	Stark	\N	\N	\N	BG	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1101	METABASE	1101	Alaina Howell	\N	\N	Alaina	Howell	\N	\N	\N	NL	\N	Basic	Twitter	54	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1102	METABASE	1102	Theresia Russel	\N	\N	Theresia	Russel	\N	\N	\N	NG	\N	Premium	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1103	METABASE	1103	Darlene Terry	\N	\N	Darlene	Terry	\N	\N	\N	RU	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1104	METABASE	1104	Merritt Walker	\N	\N	Merritt	Walker	\N	\N	\N	CR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1105	METABASE	1105	America Mayer	\N	\N	America	Mayer	\N	\N	\N	FR	\N	Basic	\N	168	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1106	METABASE	1106	Lauretta Gislason	\N	\N	Lauretta	Gislason	\N	\N	\N	BR	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1107	METABASE	1107	Marianna Heaney	\N	\N	Marianna	Heaney	\N	\N	\N	CO	\N	Basic	Invite	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1108	METABASE	1108	Imani Cruickshank	\N	\N	Imani	Cruickshank	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1109	METABASE	1109	Malika Kuphal	\N	\N	Malika	Kuphal	\N	\N	\N	BG	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_111	METABASE	111	Jean Christiansen	\N	\N	Jean	Christiansen	\N	\N	\N	AU	\N	Basic	Invite	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1110	METABASE	1110	Santa Schimmel	\N	\N	Santa	Schimmel	\N	\N	\N	DE	\N	Basic	\N	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1111	METABASE	1111	Mariano Botsford	\N	\N	Mariano	Botsford	\N	\N	\N	FR	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1112	METABASE	1112	Erwin Wilderman	\N	\N	Erwin	Wilderman	\N	\N	\N	DE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1113	METABASE	1113	Howell Morissette	\N	\N	Howell	Morissette	\N	\N	\N	IT	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1114	METABASE	1114	Henriette Hane	\N	\N	Henriette	Hane	\N	\N	\N	GB	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1115	METABASE	1115	Ivory Ebert	\N	\N	Ivory	Ebert	\N	\N	\N	PT	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1116	METABASE	1116	Laura Hills	\N	\N	Laura	Hills	\N	\N	\N	VN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1117	METABASE	1117	Gregorio Terry	\N	\N	Gregorio	Terry	\N	\N	\N	ES	\N	Basic	\N	401	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1118	METABASE	1118	Jarred Mraz	\N	\N	Jarred	Mraz	\N	\N	\N	IT	\N	Basic	\N	236	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1119	METABASE	1119	Emerson O'Keefe	\N	\N	Emerson	O'Keefe	\N	\N	\N	ZA	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_112	METABASE	112	Alden Bednar	\N	\N	Alden	Bednar	\N	\N	\N	FR	\N	Premium	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1120	METABASE	1120	Ephraim Pfannerstill	\N	\N	Ephraim	Pfannerstill	\N	\N	\N	FR	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1121	METABASE	1121	Orlando Conroy	\N	\N	Orlando	Conroy	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1122	METABASE	1122	Edwina VonRueden	\N	\N	Edwina	VonRueden	\N	\N	\N	RS	\N	Premium	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1123	METABASE	1123	Justina Ullrich	\N	\N	Justina	Ullrich	\N	\N	\N	DE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1124	METABASE	1124	Bethany Gusikowski	\N	\N	Bethany	Gusikowski	\N	\N	\N	IR	\N	Premium	\N	47	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1125	METABASE	1125	Winnifred Schinner	\N	\N	Winnifred	Schinner	\N	\N	\N	US	\N	Basic	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1126	METABASE	1126	Juliet Hermiston	\N	\N	Juliet	Hermiston	\N	\N	\N	RU	\N	Basic	\N	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1127	METABASE	1127	Halie Adams	\N	\N	Halie	Adams	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1128	METABASE	1128	Christy Gutkowski	\N	\N	Christy	Gutkowski	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1129	METABASE	1129	Monique Cummerata	\N	\N	Monique	Cummerata	\N	\N	\N	MA	\N	Basic	Facebook	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_113	METABASE	113	Nelle Swaniawski	\N	\N	Nelle	Swaniawski	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1130	METABASE	1130	Casimer Ward	\N	\N	Casimer	Ward	\N	\N	\N	CZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1131	METABASE	1131	Camille Koepp	\N	\N	Camille	Koepp	\N	\N	\N	NL	\N	Basic	Twitter	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1132	METABASE	1132	Henry Rowe	\N	\N	Henry	Rowe	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1133	METABASE	1133	Verla Legros	\N	\N	Verla	Legros	\N	\N	\N	RO	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1134	METABASE	1134	Kadin Mraz	\N	\N	Kadin	Mraz	\N	\N	\N	IN	\N	Basic	Google	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1135	METABASE	1135	Lauryn Simonis	\N	\N	Lauryn	Simonis	\N	\N	\N	DE	\N	Basic	Google	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1136	METABASE	1136	Viviane Kovacek	\N	\N	Viviane	Kovacek	\N	\N	\N	SO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1137	METABASE	1137	Vernie Lakin	\N	\N	Vernie	Lakin	\N	\N	\N	FR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1138	METABASE	1138	Elvie Parisian	\N	\N	Elvie	Parisian	\N	\N	\N	RO	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1139	METABASE	1139	Jarrett Emard	\N	\N	Jarrett	Emard	\N	\N	\N	RO	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_114	METABASE	114	Tanya Connelly	\N	\N	Tanya	Connelly	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1140	METABASE	1140	Lydia Schultz	\N	\N	Lydia	Schultz	\N	\N	\N	ZA	\N	Basic	Google	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1141	METABASE	1141	Reyna Conroy	\N	\N	Reyna	Conroy	\N	\N	\N	RO	\N	Premium	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1142	METABASE	1142	Alayna Conroy	\N	\N	Alayna	Conroy	\N	\N	\N	BR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1143	METABASE	1143	Kiara Bayer	\N	\N	Kiara	Bayer	\N	\N	\N	TZ	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1144	METABASE	1144	Mireya Sporer	\N	\N	Mireya	Sporer	\N	\N	\N	NG	\N	Basic	\N	135	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1145	METABASE	1145	Garrick Rolfson	\N	\N	Garrick	Rolfson	\N	\N	\N	TR	\N	Basic	Invite	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1146	METABASE	1146	Sigrid Maggio	\N	\N	Sigrid	Maggio	\N	\N	\N	BR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1147	METABASE	1147	Jefferey Auer	\N	\N	Jefferey	Auer	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1148	METABASE	1148	Jamison Rodriguez	\N	\N	Jamison	Rodriguez	\N	\N	\N	GT	\N	Basic	Invite	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1149	METABASE	1149	Mayra Hermann	\N	\N	Mayra	Hermann	\N	\N	\N	PK	\N	Basic	Google	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_115	METABASE	115	Tommie Turner	\N	\N	Tommie	Turner	\N	\N	\N	MX	\N	Basic	Twitter	76	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1150	METABASE	1150	Lamont Ondricka	\N	\N	Lamont	Ondricka	\N	\N	\N	AU	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1151	METABASE	1151	Jadyn Barrows	\N	\N	Jadyn	Barrows	\N	\N	\N	NL	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1152	METABASE	1152	Marilou Schultz	\N	\N	Marilou	Schultz	\N	\N	\N	NO	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1153	METABASE	1153	Marian Rice	\N	\N	Marian	Rice	\N	\N	\N	RO	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1154	METABASE	1154	Ambrose Johnson	\N	\N	Ambrose	Johnson	\N	\N	\N	IT	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1155	METABASE	1155	Gabrielle Frami	\N	\N	Gabrielle	Frami	\N	\N	\N	PL	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1156	METABASE	1156	Ana Cruickshank	\N	\N	Ana	Cruickshank	\N	\N	\N	KZ	\N	Basic	Google	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1157	METABASE	1157	Tiara Conroy	\N	\N	Tiara	Conroy	\N	\N	\N	SY	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1158	METABASE	1158	Yadira Conroy	\N	\N	Yadira	Conroy	\N	\N	\N	IT	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1159	METABASE	1159	Patience Strosin	\N	\N	Patience	Strosin	\N	\N	\N	MX	\N	Basic	Twitter	21	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_116	METABASE	116	Alanna Lockman	\N	\N	Alanna	Lockman	\N	\N	\N	BR	\N	Basic	Google	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1160	METABASE	1160	Constantin Harris	\N	\N	Constantin	Harris	\N	\N	\N	AT	\N	Basic	Facebook	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1161	METABASE	1161	Maurice Zboncak	\N	\N	Maurice	Zboncak	\N	\N	\N	SE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1162	METABASE	1162	Mariam Schumm	\N	\N	Mariam	Schumm	\N	\N	\N	MM	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1163	METABASE	1163	Elinore Carroll	\N	\N	Elinore	Carroll	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1164	METABASE	1164	Janis Bode	\N	\N	Janis	Bode	\N	\N	\N	AT	\N	Basic	Google	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1165	METABASE	1165	Theresa Hudson	\N	\N	Theresa	Hudson	\N	\N	\N	IR	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1166	METABASE	1166	Freida Wiza	\N	\N	Freida	Wiza	\N	\N	\N	MX	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1167	METABASE	1167	Angel Auer	\N	\N	Angel	Auer	\N	\N	\N	UA	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1168	METABASE	1168	Toby Sporer	\N	\N	Toby	Sporer	\N	\N	\N	GB	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1169	METABASE	1169	Johnson Mohr	\N	\N	Johnson	Mohr	\N	\N	\N	US	\N	Basic	Twitter	131	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_117	METABASE	117	Bernadette Friesen	\N	\N	Bernadette	Friesen	\N	\N	\N	MU	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1170	METABASE	1170	Susan Abernathy	\N	\N	Susan	Abernathy	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1171	METABASE	1171	Adrienne Kessler	\N	\N	Adrienne	Kessler	\N	\N	\N	DE	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1172	METABASE	1172	Camryn Wunsch	\N	\N	Camryn	Wunsch	\N	\N	\N	US	\N	Basic	\N	65	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1173	METABASE	1173	Humberto Beer	\N	\N	Humberto	Beer	\N	\N	\N	RO	\N	Basic	Facebook	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1174	METABASE	1174	Jerrell Swaniawski	\N	\N	Jerrell	Swaniawski	\N	\N	\N	IT	\N	Basic	Google	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1175	METABASE	1175	Sherwood Larson	\N	\N	Sherwood	Larson	\N	\N	\N	MX	\N	Basic	Google	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1176	METABASE	1176	Boris Gerhold	\N	\N	Boris	Gerhold	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1177	METABASE	1177	Merritt Weber	\N	\N	Merritt	Weber	\N	\N	\N	LC	\N	Basic	Twitter	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1178	METABASE	1178	Camron Homenick	\N	\N	Camron	Homenick	\N	\N	\N	AR	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1179	METABASE	1179	Harrison Ortiz	\N	\N	Harrison	Ortiz	\N	\N	\N	PH	\N	Basic	\N	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_118	METABASE	118	Nannie Boehm	\N	\N	Nannie	Boehm	\N	\N	\N	CZ	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1180	METABASE	1180	Chanel Carroll	\N	\N	Chanel	Carroll	\N	\N	\N	AL	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1181	METABASE	1181	Pearl Bauch	\N	\N	Pearl	Bauch	\N	\N	\N	UA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1182	METABASE	1182	Shaina Witting	\N	\N	Shaina	Witting	\N	\N	\N	MX	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1183	METABASE	1183	Felicita Barrows	\N	\N	Felicita	Barrows	\N	\N	\N	NI	\N	Basic	\N	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1184	METABASE	1184	Tamia Larkin	\N	\N	Tamia	Larkin	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1185	METABASE	1185	Joan Ortiz	\N	\N	Joan	Ortiz	\N	\N	\N	HN	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1186	METABASE	1186	Mason Ferry	\N	\N	Mason	Ferry	\N	\N	\N	MX	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1187	METABASE	1187	Florence Donnelly	\N	\N	Florence	Donnelly	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1188	METABASE	1188	Garry Paucek	\N	\N	Garry	Paucek	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1189	METABASE	1189	Ladarius Ullrich	\N	\N	Ladarius	Ullrich	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_119	METABASE	119	Rosina Von	\N	\N	Rosina	Von	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1190	METABASE	1190	Darryl Bahringer	\N	\N	Darryl	Bahringer	\N	\N	\N	ET	\N	Basic	\N	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1191	METABASE	1191	Javier Strosin	\N	\N	Javier	Strosin	\N	\N	\N	BG	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1192	METABASE	1192	Benedict Schiller	\N	\N	Benedict	Schiller	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1193	METABASE	1193	Alvis Emmerich	\N	\N	Alvis	Emmerich	\N	\N	\N	BE	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1194	METABASE	1194	Felipe Feeney	\N	\N	Felipe	Feeney	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1195	METABASE	1195	Craig Abshire	\N	\N	Craig	Abshire	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1196	METABASE	1196	Charles Murazik	\N	\N	Charles	Murazik	\N	\N	\N	ZW	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1197	METABASE	1197	Caroline Kreiger	\N	\N	Caroline	Kreiger	\N	\N	\N	US	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1198	METABASE	1198	Freida Doyle	\N	\N	Freida	Doyle	\N	\N	\N	ES	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1199	METABASE	1199	Josiah Schimmel	\N	\N	Josiah	Schimmel	\N	\N	\N	US	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_12	METABASE	12	Brennan Olson	\N	\N	Brennan	Olson	\N	\N	\N	IN	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_120	METABASE	120	Ethyl Zboncak	\N	\N	Ethyl	Zboncak	\N	\N	\N	US	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1200	METABASE	1200	Angie Tremblay	\N	\N	Angie	Tremblay	\N	\N	\N	HN	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1201	METABASE	1201	Torey Bahringer	\N	\N	Torey	Bahringer	\N	\N	\N	BO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1202	METABASE	1202	Laura Bahringer	\N	\N	Laura	Bahringer	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1203	METABASE	1203	Dorian Predovic	\N	\N	Dorian	Predovic	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1204	METABASE	1204	Destiney Ortiz	\N	\N	Destiney	Ortiz	\N	\N	\N	JM	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1205	METABASE	1205	Ivory McCullough	\N	\N	Ivory	McCullough	\N	\N	\N	PH	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1206	METABASE	1206	Louie Corkery	\N	\N	Louie	Corkery	\N	\N	\N	CH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1207	METABASE	1207	Felicity Greenfelder	\N	\N	Felicity	Greenfelder	\N	\N	\N	SE	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1208	METABASE	1208	Christophe Durgan	\N	\N	Christophe	Durgan	\N	\N	\N	KZ	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1209	METABASE	1209	Osbaldo Lueilwitz	\N	\N	Osbaldo	Lueilwitz	\N	\N	\N	BR	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_121	METABASE	121	Lionel Stoltenberg	\N	\N	Lionel	Stoltenberg	\N	\N	\N	GR	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1210	METABASE	1210	Eldred Dietrich	\N	\N	Eldred	Dietrich	\N	\N	\N	DE	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1211	METABASE	1211	Laurie Greenholt	\N	\N	Laurie	Greenholt	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1212	METABASE	1212	Danny Oberbrunner	\N	\N	Danny	Oberbrunner	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1213	METABASE	1213	Dulce Conroy	\N	\N	Dulce	Conroy	\N	\N	\N	MK	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1214	METABASE	1214	Angie Hills	\N	\N	Angie	Hills	\N	\N	\N	US	\N	Basic	Invite	74	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1215	METABASE	1215	Laurie Sanford	\N	\N	Laurie	Sanford	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1216	METABASE	1216	Janiya Emard	\N	\N	Janiya	Emard	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1217	METABASE	1217	Kieran Roob	\N	\N	Kieran	Roob	\N	\N	\N	CN	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1218	METABASE	1218	Bonita King	\N	\N	Bonita	King	\N	\N	\N	AT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1219	METABASE	1219	Joshuah Gleichner	\N	\N	Joshuah	Gleichner	\N	\N	\N	MX	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_122	METABASE	122	Jean Zulauf	\N	\N	Jean	Zulauf	\N	\N	\N	CZ	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1220	METABASE	1220	Eladio Parisian	\N	\N	Eladio	Parisian	\N	\N	\N	PT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1221	METABASE	1221	Grant Breitenberg	\N	\N	Grant	Breitenberg	\N	\N	\N	FR	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1222	METABASE	1222	Estrella Reichert	\N	\N	Estrella	Reichert	\N	\N	\N	ES	\N	Basic	Invite	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1223	METABASE	1223	Maximillia Ebert	\N	\N	Maximillia	Ebert	\N	\N	\N	VN	\N	Basic	Google	30	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1224	METABASE	1224	Karine Mante	\N	\N	Karine	Mante	\N	\N	\N	NL	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1225	METABASE	1225	Cedrick Kling	\N	\N	Cedrick	Kling	\N	\N	\N	PH	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1226	METABASE	1226	Rebekah Lueilwitz	\N	\N	Rebekah	Lueilwitz	\N	\N	\N	AM	\N	Basic	Twitter	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1227	METABASE	1227	Vivianne Roob	\N	\N	Vivianne	Roob	\N	\N	\N	US	\N	Basic	Google	80	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1228	METABASE	1228	Melissa Cormier	\N	\N	Melissa	Cormier	\N	\N	\N	RU	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1229	METABASE	1229	Lexi Adams	\N	\N	Lexi	Adams	\N	\N	\N	GR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_123	METABASE	123	Blanche Bednar	\N	\N	Blanche	Bednar	\N	\N	\N	MX	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1230	METABASE	1230	Andre Stamm	\N	\N	Andre	Stamm	\N	\N	\N	PH	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1231	METABASE	1231	Garret Kulas	\N	\N	Garret	Kulas	\N	\N	\N	ES	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1232	METABASE	1232	Bonita Hoppe	\N	\N	Bonita	Hoppe	\N	\N	\N	RU	\N	Basic	\N	129	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1233	METABASE	1233	Valerie Davis	\N	\N	Valerie	Davis	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1234	METABASE	1234	Jerry Stracke	\N	\N	Jerry	Stracke	\N	\N	\N	GR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1235	METABASE	1235	Barry McKenzie	\N	\N	Barry	McKenzie	\N	\N	\N	DO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1236	METABASE	1236	Charlene Bayer	\N	\N	Charlene	Bayer	\N	\N	\N	ES	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1237	METABASE	1237	Ciara Green	\N	\N	Ciara	Green	\N	\N	\N	BD	\N	Basic	\N	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1238	METABASE	1238	Kali Hodkiewicz	\N	\N	Kali	Hodkiewicz	\N	\N	\N	YE	\N	Basic	\N	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1239	METABASE	1239	Nyasia Sporer	\N	\N	Nyasia	Sporer	\N	\N	\N	AU	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_124	METABASE	124	Emma Crona	\N	\N	Emma	Crona	\N	\N	\N	BR	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1240	METABASE	1240	Myrtice Harris	\N	\N	Myrtice	Harris	\N	\N	\N	RO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1241	METABASE	1241	Dimitri Wisoky	\N	\N	Dimitri	Wisoky	\N	\N	\N	RO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1242	METABASE	1242	Andrew Carroll	\N	\N	Andrew	Carroll	\N	\N	\N	PH	\N	Basic	Facebook	69	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1243	METABASE	1243	Moriah Ziemann	\N	\N	Moriah	Ziemann	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1244	METABASE	1244	Shirley Okuneva	\N	\N	Shirley	Okuneva	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1245	METABASE	1245	Gia Abernathy	\N	\N	Gia	Abernathy	\N	\N	\N	TJ	\N	Basic	\N	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1246	METABASE	1246	Leopold Beer	\N	\N	Leopold	Beer	\N	\N	\N	SI	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1247	METABASE	1247	Ike Sporer	\N	\N	Ike	Sporer	\N	\N	\N	HU	\N	Business	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1248	METABASE	1248	Darrick Sawayn	\N	\N	Darrick	Sawayn	\N	\N	\N	AU	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1249	METABASE	1249	Blaise Legros	\N	\N	Blaise	Legros	\N	\N	\N	MY	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_125	METABASE	125	Terry Lehner	\N	\N	Terry	Lehner	\N	\N	\N	TR	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1250	METABASE	1250	Maximillian Zboncak	\N	\N	Maximillian	Zboncak	\N	\N	\N	AU	\N	Basic	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1251	METABASE	1251	Rahul Kreiger	\N	\N	Rahul	Kreiger	\N	\N	\N	NL	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1252	METABASE	1252	Conrad Renner	\N	\N	Conrad	Renner	\N	\N	\N	JP	\N	Basic	Twitter	522	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1253	METABASE	1253	Blanca Schiller	\N	\N	Blanca	Schiller	\N	\N	\N	RU	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1254	METABASE	1254	Abbie Parisian	\N	\N	Abbie	Parisian	\N	\N	\N	JP	\N	Basic	\N	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1255	METABASE	1255	Augusta Lueilwitz	\N	\N	Augusta	Lueilwitz	\N	\N	\N	PT	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1256	METABASE	1256	Jazlyn Mohr	\N	\N	Jazlyn	Mohr	\N	\N	\N	FR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1257	METABASE	1257	Vince Balistreri	\N	\N	Vince	Balistreri	\N	\N	\N	RU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1258	METABASE	1258	Aubree Dibbert	\N	\N	Aubree	Dibbert	\N	\N	\N	MX	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1259	METABASE	1259	Brice Stark	\N	\N	Brice	Stark	\N	\N	\N	PL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_126	METABASE	126	Alayna Halvorson	\N	\N	Alayna	Halvorson	\N	\N	\N	RU	\N	Basic	Facebook	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1260	METABASE	1260	Laurel Pfannerstill	\N	\N	Laurel	Pfannerstill	\N	\N	\N	CZ	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1261	METABASE	1261	Ebba Christiansen	\N	\N	Ebba	Christiansen	\N	\N	\N	DK	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1262	METABASE	1262	Christa Streich	\N	\N	Christa	Streich	\N	\N	\N	UA	\N	Basic	Invite	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1263	METABASE	1263	Austyn Klein	\N	\N	Austyn	Klein	\N	\N	\N	RU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1264	METABASE	1264	Estrella Goyette	\N	\N	Estrella	Goyette	\N	\N	\N	SY	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1265	METABASE	1265	Emmie Mertz	\N	\N	Emmie	Mertz	\N	\N	\N	BE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1266	METABASE	1266	Charlie Bartoletti	\N	\N	Charlie	Bartoletti	\N	\N	\N	IT	\N	Basic	Facebook	102	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1267	METABASE	1267	Lacey Balistreri	\N	\N	Lacey	Balistreri	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1268	METABASE	1268	Barrett Brekke	\N	\N	Barrett	Brekke	\N	\N	\N	DO	\N	Business	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1269	METABASE	1269	Dixie Adams	\N	\N	Dixie	Adams	\N	\N	\N	MX	\N	Basic	Google	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_127	METABASE	127	Burnice Marks	\N	\N	Burnice	Marks	\N	\N	\N	MX	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1270	METABASE	1270	Camila Kautzer	\N	\N	Camila	Kautzer	\N	\N	\N	KR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1271	METABASE	1271	Tyrique Deckow	\N	\N	Tyrique	Deckow	\N	\N	\N	NL	\N	Basic	Invite	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1272	METABASE	1272	Aurelie Moore	\N	\N	Aurelie	Moore	\N	\N	\N	ID	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1273	METABASE	1273	Terrence Emmerich	\N	\N	Terrence	Emmerich	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1274	METABASE	1274	Mike Abernathy	\N	\N	Mike	Abernathy	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1275	METABASE	1275	Mayra Olson	\N	\N	Mayra	Olson	\N	\N	\N	MX	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1276	METABASE	1276	Murray Gleason	\N	\N	Murray	Gleason	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1277	METABASE	1277	Oral Balistreri	\N	\N	Oral	Balistreri	\N	\N	\N	MX	\N	Business	Invite	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1278	METABASE	1278	Enrico Graham	\N	\N	Enrico	Graham	\N	\N	\N	DE	\N	Basic	Google	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1279	METABASE	1279	Marianna Smith	\N	\N	Marianna	Smith	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_128	METABASE	128	Floyd Douglas	\N	\N	Floyd	Douglas	\N	\N	\N	PT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1280	METABASE	1280	Ellie Oberbrunner	\N	\N	Ellie	Oberbrunner	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1281	METABASE	1281	Andres Zulauf	\N	\N	Andres	Zulauf	\N	\N	\N	IR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1282	METABASE	1282	Lisa VonRueden	\N	\N	Lisa	VonRueden	\N	\N	\N	AT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1283	METABASE	1283	Danial Keeling	\N	\N	Danial	Keeling	\N	\N	\N	NO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1284	METABASE	1284	Tobin Huels	\N	\N	Tobin	Huels	\N	\N	\N	GB	\N	Basic	Invite	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1285	METABASE	1285	Rollin Ondricka	\N	\N	Rollin	Ondricka	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1286	METABASE	1286	Kacie Skiles	\N	\N	Kacie	Skiles	\N	\N	\N	PT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1287	METABASE	1287	Lolita Ferry	\N	\N	Lolita	Ferry	\N	\N	\N	DE	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1288	METABASE	1288	Alfred Parisian	\N	\N	Alfred	Parisian	\N	\N	\N	BR	\N	Basic	Invite	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1289	METABASE	1289	Selina O'Hara	\N	\N	Selina	O'Hara	\N	\N	\N	AU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_129	METABASE	129	Tanner Walker	\N	\N	Tanner	Walker	\N	\N	\N	DE	\N	Basic	\N	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1290	METABASE	1290	Omer Kautzer	\N	\N	Omer	Kautzer	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1291	METABASE	1291	Theresia Johnston	\N	\N	Theresia	Johnston	\N	\N	\N	ID	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1292	METABASE	1292	Unique Balistreri	\N	\N	Unique	Balistreri	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1293	METABASE	1293	Jairo Schiller	\N	\N	Jairo	Schiller	\N	\N	\N	BR	\N	Basic	Twitter	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1294	METABASE	1294	Elwin Okuneva	\N	\N	Elwin	Okuneva	\N	\N	\N	FR	\N	Basic	Twitter	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1295	METABASE	1295	Lauren Lueilwitz	\N	\N	Lauren	Lueilwitz	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1296	METABASE	1296	Orlo Lueilwitz	\N	\N	Orlo	Lueilwitz	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1297	METABASE	1297	Marilou Koss	\N	\N	Marilou	Koss	\N	\N	\N	BR	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1298	METABASE	1298	Kamille Bartell	\N	\N	Kamille	Bartell	\N	\N	\N	BR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1299	METABASE	1299	Louie Breitenberg	\N	\N	Louie	Breitenberg	\N	\N	\N	PT	\N	Basic	\N	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_13	METABASE	13	Jude Reinger	\N	\N	Jude	Reinger	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_130	METABASE	130	Dianna Murray	\N	\N	Dianna	Murray	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1300	METABASE	1300	Emmanuelle Sporer	\N	\N	Emmanuelle	Sporer	\N	\N	\N	MX	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1301	METABASE	1301	Aubree Walter	\N	\N	Aubree	Walter	\N	\N	\N	MX	\N	Basic	Google	133	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1302	METABASE	1302	Orville Effertz	\N	\N	Orville	Effertz	\N	\N	\N	CU	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1303	METABASE	1303	Abbie Ryan	\N	\N	Abbie	Ryan	\N	\N	\N	BR	\N	Business	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1304	METABASE	1304	Gabrielle Considine	\N	\N	Gabrielle	Considine	\N	\N	\N	AU	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1305	METABASE	1305	Larry Weimann	\N	\N	Larry	Weimann	\N	\N	\N	PH	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1306	METABASE	1306	Ramiro Green	\N	\N	Ramiro	Green	\N	\N	\N	AU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1307	METABASE	1307	Germaine Brakus	\N	\N	Germaine	Brakus	\N	\N	\N	PW	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1308	METABASE	1308	Demario Tromp	\N	\N	Demario	Tromp	\N	\N	\N	CH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1309	METABASE	1309	Dominique Bergnaum	\N	\N	Dominique	Bergnaum	\N	\N	\N	BR	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_131	METABASE	131	Benny Johnston	\N	\N	Benny	Johnston	\N	\N	\N	HR	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1310	METABASE	1310	Naomi Waelchi	\N	\N	Naomi	Waelchi	\N	\N	\N	IN	\N	Premium	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1311	METABASE	1311	Doris Spencer	\N	\N	Doris	Spencer	\N	\N	\N	AU	\N	Basic	Google	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1312	METABASE	1312	Jerrod King	\N	\N	Jerrod	King	\N	\N	\N	MX	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1313	METABASE	1313	Isaias Spencer	\N	\N	Isaias	Spencer	\N	\N	\N	RU	\N	Basic	Google	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1314	METABASE	1314	Jacinthe Rowe	\N	\N	Jacinthe	Rowe	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1315	METABASE	1315	Karley Hermann	\N	\N	Karley	Hermann	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1316	METABASE	1316	Demetris Schmeler	\N	\N	Demetris	Schmeler	\N	\N	\N	TZ	\N	Premium	\N	208	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1317	METABASE	1317	Lucile Bednar	\N	\N	Lucile	Bednar	\N	\N	\N	RO	\N	Basic	Facebook	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1318	METABASE	1318	Sabryna Schumm	\N	\N	Sabryna	Schumm	\N	\N	\N	DO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1319	METABASE	1319	Madie Bayer	\N	\N	Madie	Bayer	\N	\N	\N	MX	\N	Business	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_132	METABASE	132	Rex Boehm	\N	\N	Rex	Boehm	\N	\N	\N	FR	\N	Basic	Invite	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1320	METABASE	1320	Sheridan VonRueden	\N	\N	Sheridan	VonRueden	\N	\N	\N	GB	\N	Business	Google	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1321	METABASE	1321	Alvina Mertz	\N	\N	Alvina	Mertz	\N	\N	\N	JP	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1322	METABASE	1322	Werner Koepp	\N	\N	Werner	Koepp	\N	\N	\N	JM	\N	Basic	Google	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1323	METABASE	1323	Christopher Hilll	\N	\N	Christopher	Hilll	\N	\N	\N	CM	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1324	METABASE	1324	Theresa Grant	\N	\N	Theresa	Grant	\N	\N	\N	AT	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1325	METABASE	1325	Rosina O'Connell	\N	\N	Rosina	O'Connell	\N	\N	\N	LC	\N	Basic	Invite	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1326	METABASE	1326	Scarlett Beahan	\N	\N	Scarlett	Beahan	\N	\N	\N	RU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1327	METABASE	1327	Felicity Erdman	\N	\N	Felicity	Erdman	\N	\N	\N	PH	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1328	METABASE	1328	Felipe Wilkinson	\N	\N	Felipe	Wilkinson	\N	\N	\N	US	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1329	METABASE	1329	Delilah Stoltenberg	\N	\N	Delilah	Stoltenberg	\N	\N	\N	GB	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_133	METABASE	133	Ted Weber	\N	\N	Ted	Weber	\N	\N	\N	PT	\N	Premium	Google	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1330	METABASE	1330	Carroll Kohler	\N	\N	Carroll	Kohler	\N	\N	\N	BR	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1331	METABASE	1331	Andreanne Hills	\N	\N	Andreanne	Hills	\N	\N	\N	RU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1332	METABASE	1332	Cecilia Stark	\N	\N	Cecilia	Stark	\N	\N	\N	RU	\N	Basic	Invite	56	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1333	METABASE	1333	Ciara Larson	\N	\N	Ciara	Larson	\N	\N	\N	MX	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1334	METABASE	1334	Carmella Rogahn	\N	\N	Carmella	Rogahn	\N	\N	\N	CA	\N	Basic	\N	14	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1335	METABASE	1335	Jerome Cremin	\N	\N	Jerome	Cremin	\N	\N	\N	MX	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1336	METABASE	1336	Jacey Hilpert	\N	\N	Jacey	Hilpert	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1337	METABASE	1337	Braden Rempel	\N	\N	Braden	Rempel	\N	\N	\N	BR	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1338	METABASE	1338	Amiya Veum	\N	\N	Amiya	Veum	\N	\N	\N	US	\N	Premium	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1339	METABASE	1339	Tremaine Jerde	\N	\N	Tremaine	Jerde	\N	\N	\N	EG	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_134	METABASE	134	Brennon Gerlach	\N	\N	Brennon	Gerlach	\N	\N	\N	SI	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1340	METABASE	1340	Jensen Champlin	\N	\N	Jensen	Champlin	\N	\N	\N	RU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1341	METABASE	1341	Brooke Rempel	\N	\N	Brooke	Rempel	\N	\N	\N	FI	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1342	METABASE	1342	Stephon Davis	\N	\N	Stephon	Davis	\N	\N	\N	AT	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1343	METABASE	1343	Jazmyne Medhurst	\N	\N	Jazmyne	Medhurst	\N	\N	\N	AU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1344	METABASE	1344	Jared Tromp	\N	\N	Jared	Tromp	\N	\N	\N	RO	\N	Premium	Invite	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1345	METABASE	1345	Earline Schmitt	\N	\N	Earline	Schmitt	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1346	METABASE	1346	Bernardo Torphy	\N	\N	Bernardo	Torphy	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1347	METABASE	1347	Logan Thompson	\N	\N	Logan	Thompson	\N	\N	\N	ES	\N	Basic	\N	210	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1348	METABASE	1348	Jany Torp	\N	\N	Jany	Torp	\N	\N	\N	IN	\N	Premium	Invite	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1349	METABASE	1349	Deon Tromp	\N	\N	Deon	Tromp	\N	\N	\N	TH	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_135	METABASE	135	Reyna Greenholt	\N	\N	Reyna	Greenholt	\N	\N	\N	BG	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1350	METABASE	1350	Cyril Stamm	\N	\N	Cyril	Stamm	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1351	METABASE	1351	Lucie Cormier	\N	\N	Lucie	Cormier	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1352	METABASE	1352	Augustus Adams	\N	\N	Augustus	Adams	\N	\N	\N	UA	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1353	METABASE	1353	Herman Ratke	\N	\N	Herman	Ratke	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1354	METABASE	1354	Georgianna Hoppe	\N	\N	Georgianna	Hoppe	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1355	METABASE	1355	Jazmin Brekke	\N	\N	Jazmin	Brekke	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1356	METABASE	1356	Sydney Rempel	\N	\N	Sydney	Rempel	\N	\N	\N	MX	\N	Basic	Google	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1357	METABASE	1357	Geo Thompson	\N	\N	Geo	Thompson	\N	\N	\N	CO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1358	METABASE	1358	Shane Adams	\N	\N	Shane	Adams	\N	\N	\N	SE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1359	METABASE	1359	Rita Schmeler	\N	\N	Rita	Schmeler	\N	\N	\N	US	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_136	METABASE	136	Rey Schumm	\N	\N	Rey	Schumm	\N	\N	\N	FR	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1360	METABASE	1360	Alvena Rempel	\N	\N	Alvena	Rempel	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1361	METABASE	1361	Raymundo D'Amore	\N	\N	Raymundo	D'Amore	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1362	METABASE	1362	Hosea Thompson	\N	\N	Hosea	Thompson	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1363	METABASE	1363	Tristin Champlin	\N	\N	Tristin	Champlin	\N	\N	\N	RO	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1364	METABASE	1364	Michael Frami	\N	\N	Michael	Frami	\N	\N	\N	DE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1365	METABASE	1365	Delmer Ledner	\N	\N	Delmer	Ledner	\N	\N	\N	LV	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1366	METABASE	1366	Leanna Cremin	\N	\N	Leanna	Cremin	\N	\N	\N	RO	\N	Basic	\N	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1367	METABASE	1367	Larue Torp	\N	\N	Larue	Torp	\N	\N	\N	RU	\N	Premium	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1368	METABASE	1368	Lauryn Zieme	\N	\N	Lauryn	Zieme	\N	\N	\N	IT	\N	Basic	Invite	25	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1369	METABASE	1369	Litzy Schmitt	\N	\N	Litzy	Schmitt	\N	\N	\N	FR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_137	METABASE	137	Cornell Cartwright	\N	\N	Cornell	Cartwright	\N	\N	\N	TH	\N	Basic	Twitter	71	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1370	METABASE	1370	Madelyn Hermann	\N	\N	Madelyn	Hermann	\N	\N	\N	FR	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1371	METABASE	1371	Annabell Tremblay	\N	\N	Annabell	Tremblay	\N	\N	\N	IT	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1372	METABASE	1372	Vilma Bednar	\N	\N	Vilma	Bednar	\N	\N	\N	SL	\N	Premium	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1373	METABASE	1373	Serena Ziemann	\N	\N	Serena	Ziemann	\N	\N	\N	UA	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1374	METABASE	1374	Clifton Tremblay	\N	\N	Clifton	Tremblay	\N	\N	\N	IT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1375	METABASE	1375	Matt Kemmer	\N	\N	Matt	Kemmer	\N	\N	\N	BG	\N	Basic	Facebook	89	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1376	METABASE	1376	Monserrate Hermiston	\N	\N	Monserrate	Hermiston	\N	\N	\N	RO	\N	Basic	Facebook	269	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1377	METABASE	1377	Wilmer Leannon	\N	\N	Wilmer	Leannon	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1378	METABASE	1378	Marjolaine Torp	\N	\N	Marjolaine	Torp	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1379	METABASE	1379	Anita Frami	\N	\N	Anita	Frami	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_138	METABASE	138	Angelica Towne	\N	\N	Angelica	Towne	\N	\N	\N	FR	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1380	METABASE	1380	Sherman Schmitt	\N	\N	Sherman	Schmitt	\N	\N	\N	US	\N	Basic	Google	63	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1381	METABASE	1381	Una Hermann	\N	\N	Una	Hermann	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1382	METABASE	1382	Domenick Cormier	\N	\N	Domenick	Cormier	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1383	METABASE	1383	Magdalen Torp	\N	\N	Magdalen	Torp	\N	\N	\N	FR	\N	Basic	Google	56	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1384	METABASE	1384	Bonnie Kemmer	\N	\N	Bonnie	Kemmer	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1385	METABASE	1385	Brett Koepp	\N	\N	Brett	Koepp	\N	\N	\N	RS	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1386	METABASE	1386	Brittany Thompson	\N	\N	Brittany	Thompson	\N	\N	\N	MX	\N	Business	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1387	METABASE	1387	Lucinda Schmeler	\N	\N	Lucinda	Schmeler	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1388	METABASE	1388	Hermann Sanford	\N	\N	Hermann	Sanford	\N	\N	\N	ES	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1389	METABASE	1389	Raymond Larson	\N	\N	Raymond	Larson	\N	\N	\N	HR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_139	METABASE	139	Lorna Greenholt	\N	\N	Lorna	Greenholt	\N	\N	\N	US	\N	Basic	Google	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1390	METABASE	1390	Woodrow Hermann	\N	\N	Woodrow	Hermann	\N	\N	\N	FR	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1391	METABASE	1391	Celine Hegmann	\N	\N	Celine	Hegmann	\N	\N	\N	CA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1392	METABASE	1392	Noel Ziemann	\N	\N	Noel	Ziemann	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1393	METABASE	1393	Carmel Cummerata	\N	\N	Carmel	Cummerata	\N	\N	\N	CO	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1394	METABASE	1394	Fatima Murphy	\N	\N	Fatima	Murphy	\N	\N	\N	IN	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1395	METABASE	1395	Danial Hegmann	\N	\N	Danial	Hegmann	\N	\N	\N	IN	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1396	METABASE	1396	Clementine Schmitt	\N	\N	Clementine	Schmitt	\N	\N	\N	MX	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1397	METABASE	1397	Sigmund King	\N	\N	Sigmund	King	\N	\N	\N	CU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1398	METABASE	1398	Liam Schoen	\N	\N	Liam	Schoen	\N	\N	\N	PL	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1399	METABASE	1399	Harley Ziemann	\N	\N	Harley	Ziemann	\N	\N	\N	IT	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_14	METABASE	14	Lisette O'Connell	\N	\N	Lisette	O'Connell	\N	\N	\N	RO	\N	Basic	Facebook	85	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_140	METABASE	140	Leo Toy	\N	\N	Leo	Toy	\N	\N	\N	KI	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1400	METABASE	1400	Fay Thompson	\N	\N	Fay	Thompson	\N	\N	\N	IN	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1401	METABASE	1401	Carmela Schinner	\N	\N	Carmela	Schinner	\N	\N	\N	CL	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1402	METABASE	1402	Ryan Cormier	\N	\N	Ryan	Cormier	\N	\N	\N	UA	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1403	METABASE	1403	Patrick Torp	\N	\N	Patrick	Torp	\N	\N	\N	PA	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1404	METABASE	1404	Jermaine Schmeler	\N	\N	Jermaine	Schmeler	\N	\N	\N	TR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1405	METABASE	1405	Norwood Gutmann	\N	\N	Norwood	Gutmann	\N	\N	\N	ZM	\N	Basic	Google	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1406	METABASE	1406	Jazmin Rau	\N	\N	Jazmin	Rau	\N	\N	\N	MU	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1407	METABASE	1407	Maybelle Cummerata	\N	\N	Maybelle	Cummerata	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1408	METABASE	1408	Gene Kemmer	\N	\N	Gene	Kemmer	\N	\N	\N	VN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1409	METABASE	1409	Dell Adams	\N	\N	Dell	Adams	\N	\N	\N	ES	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_141	METABASE	141	Wilburn Bernhard	\N	\N	Wilburn	Bernhard	\N	\N	\N	MX	\N	Basic	Twitter	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1410	METABASE	1410	Keyshawn Weimann	\N	\N	Keyshawn	Weimann	\N	\N	\N	RO	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1411	METABASE	1411	Alfonzo Casper	\N	\N	Alfonzo	Casper	\N	\N	\N	AU	\N	Basic	Google	41	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1412	METABASE	1412	Kathryne Hoppe	\N	\N	Kathryne	Hoppe	\N	\N	\N	SA	\N	Basic	Twitter	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1413	METABASE	1413	Cory Tromp	\N	\N	Cory	Tromp	\N	\N	\N	US	\N	Basic	Google	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1414	METABASE	1414	Dagmar Sawayn	\N	\N	Dagmar	Sawayn	\N	\N	\N	US	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1415	METABASE	1415	Gunnar Hilpert	\N	\N	Gunnar	Hilpert	\N	\N	\N	NO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1416	METABASE	1416	Emelia Tromp	\N	\N	Emelia	Tromp	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1417	METABASE	1417	Milton Baumbach	\N	\N	Milton	Baumbach	\N	\N	\N	BR	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1418	METABASE	1418	Garett Hegmann	\N	\N	Garett	Hegmann	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1419	METABASE	1419	Ransom Murphy	\N	\N	Ransom	Murphy	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_142	METABASE	142	Henriette O'Connell	\N	\N	Henriette	O'Connell	\N	\N	\N	CI	\N	Basic	\N	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1420	METABASE	1420	Clemens Hansen	\N	\N	Clemens	Hansen	\N	\N	\N	US	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1421	METABASE	1421	Marc Schmitt	\N	\N	Marc	Schmitt	\N	\N	\N	PL	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1422	METABASE	1422	Maurice Rippin	\N	\N	Maurice	Rippin	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1423	METABASE	1423	German Ankunding	\N	\N	German	Ankunding	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1424	METABASE	1424	Leopoldo Schmeler	\N	\N	Leopoldo	Schmeler	\N	\N	\N	DE	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1425	METABASE	1425	Isai Frami	\N	\N	Isai	Frami	\N	\N	\N	SN	\N	Basic	Twitter	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1426	METABASE	1426	Opal Herman	\N	\N	Opal	Herman	\N	\N	\N	TR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1427	METABASE	1427	Melisa Grimes	\N	\N	Melisa	Grimes	\N	\N	\N	TR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1428	METABASE	1428	Cleo Ziemann	\N	\N	Cleo	Ziemann	\N	\N	\N	AU	\N	Basic	\N	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1429	METABASE	1429	Lura Gutmann	\N	\N	Lura	Gutmann	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_143	METABASE	143	Ronny Kessler	\N	\N	Ronny	Kessler	\N	\N	\N	PH	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1430	METABASE	1430	Earl Erdman	\N	\N	Earl	Erdman	\N	\N	\N	MX	\N	Basic	Twitter	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1431	METABASE	1431	Andy Rempel	\N	\N	Andy	Rempel	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1432	METABASE	1432	Jennyfer Hermiston	\N	\N	Jennyfer	Hermiston	\N	\N	\N	LY	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1433	METABASE	1433	Naomi Jacobs	\N	\N	Naomi	Jacobs	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1434	METABASE	1434	Lenore Cummerata	\N	\N	Lenore	Cummerata	\N	\N	\N	PL	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1435	METABASE	1435	Tyler Cremin	\N	\N	Tyler	Cremin	\N	\N	\N	MX	\N	Business	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1436	METABASE	1436	Darian Cremin	\N	\N	Darian	Cremin	\N	\N	\N	JP	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1437	METABASE	1437	Ivah Tromp	\N	\N	Ivah	Tromp	\N	\N	\N	RO	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1438	METABASE	1438	Arvid Hermiston	\N	\N	Arvid	Hermiston	\N	\N	\N	FR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1439	METABASE	1439	Jaeden Cremin	\N	\N	Jaeden	Cremin	\N	\N	\N	DK	\N	Basic	Facebook	52	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_144	METABASE	144	Linnea Dickens	\N	\N	Linnea	Dickens	\N	\N	\N	RO	\N	Basic	Twitter	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1440	METABASE	1440	Carmella Cummerata	\N	\N	Carmella	Cummerata	\N	\N	\N	SI	\N	Basic	Google	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1441	METABASE	1441	Fanny Gutmann	\N	\N	Fanny	Gutmann	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1442	METABASE	1442	Summer Aufderhar	\N	\N	Summer	Aufderhar	\N	\N	\N	MX	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1443	METABASE	1443	Chanelle Cummings	\N	\N	Chanelle	Cummings	\N	\N	\N	DE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1444	METABASE	1444	Jesus Marquardt	\N	\N	Jesus	Marquardt	\N	\N	\N	CA	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1445	METABASE	1445	Stacy Adams	\N	\N	Stacy	Adams	\N	\N	\N	IT	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1446	METABASE	1446	Madisyn Braun	\N	\N	Madisyn	Braun	\N	\N	\N	JM	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1447	METABASE	1447	Annabelle Schmeler	\N	\N	Annabelle	Schmeler	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1448	METABASE	1448	Regan Corkery	\N	\N	Regan	Corkery	\N	\N	\N	UA	\N	Premium	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1449	METABASE	1449	Delphia Price	\N	\N	Delphia	Price	\N	\N	\N	DE	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_145	METABASE	145	Evangeline Hartmann	\N	\N	Evangeline	Hartmann	\N	\N	\N	BR	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1450	METABASE	1450	Vita Cummings	\N	\N	Vita	Cummings	\N	\N	\N	AU	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1451	METABASE	1451	Wilma Roob	\N	\N	Wilma	Roob	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1452	METABASE	1452	Maryam Weimann	\N	\N	Maryam	Weimann	\N	\N	\N	FR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1453	METABASE	1453	Ferne Tremblay	\N	\N	Ferne	Tremblay	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1454	METABASE	1454	Lewis Hoppe	\N	\N	Lewis	Hoppe	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1455	METABASE	1455	Aryanna Hegmann	\N	\N	Aryanna	Hegmann	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1456	METABASE	1456	Melyna Koepp	\N	\N	Melyna	Koepp	\N	\N	\N	HU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1457	METABASE	1457	Grace Casper	\N	\N	Grace	Casper	\N	\N	\N	HR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1458	METABASE	1458	Geoffrey D'Amore	\N	\N	Geoffrey	D'Amore	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1459	METABASE	1459	Gerald Hermiston	\N	\N	Gerald	Hermiston	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_146	METABASE	146	Timothy Trantow	\N	\N	Timothy	Trantow	\N	\N	\N	US	\N	Basic	Twitter	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1460	METABASE	1460	Ashton Schmidt	\N	\N	Ashton	Schmidt	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1461	METABASE	1461	Jackeline Hane	\N	\N	Jackeline	Hane	\N	\N	\N	FR	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1462	METABASE	1462	America Halvorson	\N	\N	America	Halvorson	\N	\N	\N	HU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1463	METABASE	1463	Jayce Hilpert	\N	\N	Jayce	Hilpert	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1464	METABASE	1464	Alicia Cormier	\N	\N	Alicia	Cormier	\N	\N	\N	CZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1465	METABASE	1465	Kirsten Brekke	\N	\N	Kirsten	Brekke	\N	\N	\N	FR	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1466	METABASE	1466	Dorris Frami	\N	\N	Dorris	Frami	\N	\N	\N	FR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1467	METABASE	1467	Curt Baumbach	\N	\N	Curt	Baumbach	\N	\N	\N	US	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1468	METABASE	1468	Terrence Grimes	\N	\N	Terrence	Grimes	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1469	METABASE	1469	Davin Stamm	\N	\N	Davin	Stamm	\N	\N	\N	DE	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_147	METABASE	147	Kiarra O'Kon	\N	\N	Kiarra	O'Kon	\N	\N	\N	FR	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1470	METABASE	1470	Velma Little	\N	\N	Velma	Little	\N	\N	\N	AU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1471	METABASE	1471	Sandy Jenkins	\N	\N	Sandy	Jenkins	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1472	METABASE	1472	Jaquelin Botsford	\N	\N	Jaquelin	Botsford	\N	\N	\N	PL	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1473	METABASE	1473	Kaley Ziemann	\N	\N	Kaley	Ziemann	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1474	METABASE	1474	Ryann Parker	\N	\N	Ryann	Parker	\N	\N	\N	PH	\N	Basic	Google	113	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1475	METABASE	1475	Dagmar Fay	\N	\N	Dagmar	Fay	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1476	METABASE	1476	Marlene Brakus	\N	\N	Marlene	Brakus	\N	\N	\N	HT	\N	Basic	\N	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1477	METABASE	1477	Arnold Adams	\N	\N	Arnold	Adams	\N	\N	\N	RO	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1478	METABASE	1478	Lauretta Dickinson	\N	\N	Lauretta	Dickinson	\N	\N	\N	BR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1479	METABASE	1479	Schuyler Baumbach	\N	\N	Schuyler	Baumbach	\N	\N	\N	FR	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_148	METABASE	148	Emanuel Corwin	\N	\N	Emanuel	Corwin	\N	\N	\N	PL	\N	Basic	Facebook	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1480	METABASE	1480	Edmund Altenwerth	\N	\N	Edmund	Altenwerth	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1481	METABASE	1481	Chelsey Marvin	\N	\N	Chelsey	Marvin	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1482	METABASE	1482	Kacey Glover	\N	\N	Kacey	Glover	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1483	METABASE	1483	Anika Beatty	\N	\N	Anika	Beatty	\N	\N	\N	BR	\N	Premium	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1484	METABASE	1484	Dedrick Steuber	\N	\N	Dedrick	Steuber	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1485	METABASE	1485	Jarvis Rosenbaum	\N	\N	Jarvis	Rosenbaum	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1486	METABASE	1486	Rudolph Ankunding	\N	\N	Rudolph	Ankunding	\N	\N	\N	BG	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1487	METABASE	1487	Oceane McCullough	\N	\N	Oceane	McCullough	\N	\N	\N	CH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1488	METABASE	1488	Cyrus Dach	\N	\N	Cyrus	Dach	\N	\N	\N	BO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1489	METABASE	1489	Lilliana Larkin	\N	\N	Lilliana	Larkin	\N	\N	\N	UA	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_149	METABASE	149	Toy Osinski	\N	\N	Toy	Osinski	\N	\N	\N	GB	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1490	METABASE	1490	Dante Harvey	\N	\N	Dante	Harvey	\N	\N	\N	AU	\N	Basic	Twitter	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1491	METABASE	1491	Barrett Schuppe	\N	\N	Barrett	Schuppe	\N	\N	\N	IT	\N	Basic	Google	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1492	METABASE	1492	Alva Brakus	\N	\N	Alva	Brakus	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1493	METABASE	1493	Adele Parker	\N	\N	Adele	Parker	\N	\N	\N	SN	\N	Basic	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1494	METABASE	1494	Maeve Goldner	\N	\N	Maeve	Goldner	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1495	METABASE	1495	Leola Marks	\N	\N	Leola	Marks	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1496	METABASE	1496	Mark Klein	\N	\N	Mark	Klein	\N	\N	\N	EG	\N	Basic	Twitter	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1497	METABASE	1497	Jaquan Treutel	\N	\N	Jaquan	Treutel	\N	\N	\N	MX	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1498	METABASE	1498	Abdullah Kerluke	\N	\N	Abdullah	Kerluke	\N	\N	\N	TR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1499	METABASE	1499	Nichole Funk	\N	\N	Nichole	Funk	\N	\N	\N	DE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_15	METABASE	15	Manuel Feeney	\N	\N	Manuel	Feeney	\N	\N	\N	BR	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_150	METABASE	150	Melisa Reynolds	\N	\N	Melisa	Reynolds	\N	\N	\N	PE	\N	Basic	Google	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1500	METABASE	1500	Desiree Schultz	\N	\N	Desiree	Schultz	\N	\N	\N	PH	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1501	METABASE	1501	Katharina Glover	\N	\N	Katharina	Glover	\N	\N	\N	IT	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1502	METABASE	1502	Darwin Abshire	\N	\N	Darwin	Abshire	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1503	METABASE	1503	Else Ankunding	\N	\N	Else	Ankunding	\N	\N	\N	ES	\N	Basic	\N	102	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1504	METABASE	1504	Travis Buckridge	\N	\N	Travis	Buckridge	\N	\N	\N	MX	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1505	METABASE	1505	Rigoberto Corkery	\N	\N	Rigoberto	Corkery	\N	\N	\N	GR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1506	METABASE	1506	Adrian Lemke	\N	\N	Adrian	Lemke	\N	\N	\N	DE	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1507	METABASE	1507	Novella Marks	\N	\N	Novella	Marks	\N	\N	\N	US	\N	Basic	Twitter	135	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1508	METABASE	1508	Kelsie Glover	\N	\N	Kelsie	Glover	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1509	METABASE	1509	Jaylon Stokes	\N	\N	Jaylon	Stokes	\N	\N	\N	PH	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_151	METABASE	151	Carolina Crona	\N	\N	Carolina	Crona	\N	\N	\N	MX	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1510	METABASE	1510	Sienna Glover	\N	\N	Sienna	Glover	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1511	METABASE	1511	Alek Hickle	\N	\N	Alek	Hickle	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1512	METABASE	1512	Earnest Buckridge	\N	\N	Earnest	Buckridge	\N	\N	\N	PH	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1513	METABASE	1513	Geovanni Effertz	\N	\N	Geovanni	Effertz	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1514	METABASE	1514	Zackery Bailey	\N	\N	Zackery	Bailey	\N	\N	\N	GR	\N	Basic	\N	67	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1515	METABASE	1515	Harvey Nikolaus	\N	\N	Harvey	Nikolaus	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1516	METABASE	1516	Billy Hickle	\N	\N	Billy	Hickle	\N	\N	\N	CH	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1517	METABASE	1517	Hailie Walker	\N	\N	Hailie	Walker	\N	\N	\N	GB	\N	Basic	\N	25	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1518	METABASE	1518	Tatum Feest	\N	\N	Tatum	Feest	\N	\N	\N	AU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1519	METABASE	1519	Lulu Ondricka	\N	\N	Lulu	Ondricka	\N	\N	\N	IT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_152	METABASE	152	London Ryan	\N	\N	London	Ryan	\N	\N	\N	FR	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1520	METABASE	1520	Stevie Ankunding	\N	\N	Stevie	Ankunding	\N	\N	\N	AU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1521	METABASE	1521	Hannah Hodkiewicz	\N	\N	Hannah	Hodkiewicz	\N	\N	\N	HT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1522	METABASE	1522	Eryn Glover	\N	\N	Eryn	Glover	\N	\N	\N	SI	\N	Premium	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1523	METABASE	1523	Claudie Dare	\N	\N	Claudie	Dare	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1524	METABASE	1524	Mackenzie Ullrich	\N	\N	Mackenzie	Ullrich	\N	\N	\N	GB	\N	Basic	\N	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1525	METABASE	1525	Angus Bergnaum	\N	\N	Angus	Bergnaum	\N	\N	\N	ES	\N	Basic	\N	52	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1526	METABASE	1526	Billy Harvey	\N	\N	Billy	Harvey	\N	\N	\N	RU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1527	METABASE	1527	Antwan Schmeler	\N	\N	Antwan	Schmeler	\N	\N	\N	ES	\N	Basic	\N	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1528	METABASE	1528	Stewart Sawayn	\N	\N	Stewart	Sawayn	\N	\N	\N	YE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1529	METABASE	1529	Cordelia Stokes	\N	\N	Cordelia	Stokes	\N	\N	\N	US	\N	Premium	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_153	METABASE	153	Mya Gleason	\N	\N	Mya	Gleason	\N	\N	\N	RO	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1530	METABASE	1530	Rick Ernser	\N	\N	Rick	Ernser	\N	\N	\N	BY	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1531	METABASE	1531	Nikko Bartoletti	\N	\N	Nikko	Bartoletti	\N	\N	\N	US	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1532	METABASE	1532	Malvina Effertz	\N	\N	Malvina	Effertz	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1533	METABASE	1533	Cyrus Cummerata	\N	\N	Cyrus	Cummerata	\N	\N	\N	MX	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1534	METABASE	1534	Gunner Hodkiewicz	\N	\N	Gunner	Hodkiewicz	\N	\N	\N	PK	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1535	METABASE	1535	Pink Littel	\N	\N	Pink	Littel	\N	\N	\N	PT	\N	Basic	Twitter	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1536	METABASE	1536	Tobin Braun	\N	\N	Tobin	Braun	\N	\N	\N	MX	\N	Basic	Invite	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1537	METABASE	1537	Ricardo Gutkowski	\N	\N	Ricardo	Gutkowski	\N	\N	\N	US	\N	Basic	Invite	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1538	METABASE	1538	Kimberly Brakus	\N	\N	Kimberly	Brakus	\N	\N	\N	DE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1539	METABASE	1539	Cleveland Russel	\N	\N	Cleveland	Russel	\N	\N	\N	AU	\N	Premium	Invite	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_154	METABASE	154	Alice Connelly	\N	\N	Alice	Connelly	\N	\N	\N	ES	\N	Business	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1540	METABASE	1540	Ceasar Harvey	\N	\N	Ceasar	Harvey	\N	\N	\N	US	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1541	METABASE	1541	Salma Treutel	\N	\N	Salma	Treutel	\N	\N	\N	DE	\N	Basic	\N	32	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1542	METABASE	1542	Paxton Glover	\N	\N	Paxton	Glover	\N	\N	\N	IT	\N	Basic	Twitter	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1543	METABASE	1543	Bernadette Brown	\N	\N	Bernadette	Brown	\N	\N	\N	IT	\N	Basic	Facebook	36	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1544	METABASE	1544	Kirsten Corkery	\N	\N	Kirsten	Corkery	\N	\N	\N	UA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1545	METABASE	1545	Jeanne Walker	\N	\N	Jeanne	Walker	\N	\N	\N	MX	\N	Basic	Google	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1546	METABASE	1546	Deontae Brown	\N	\N	Deontae	Brown	\N	\N	\N	CA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1547	METABASE	1547	Edmund Adams	\N	\N	Edmund	Adams	\N	\N	\N	PL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1548	METABASE	1548	Giovani Lesch	\N	\N	Giovani	Lesch	\N	\N	\N	AU	\N	Basic	\N	450	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1549	METABASE	1549	Waylon Jaskolski	\N	\N	Waylon	Jaskolski	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_155	METABASE	155	Joanne Powlowski	\N	\N	Joanne	Powlowski	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1550	METABASE	1550	Iva Wuckert	\N	\N	Iva	Wuckert	\N	\N	\N	TH	\N	Premium	Invite	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1551	METABASE	1551	Brandyn Deckow	\N	\N	Brandyn	Deckow	\N	\N	\N	US	\N	Basic	Invite	56	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1552	METABASE	1552	Cleve Crist	\N	\N	Cleve	Crist	\N	\N	\N	IE	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1553	METABASE	1553	Raoul DuBuque	\N	\N	Raoul	DuBuque	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1554	METABASE	1554	Jean Hickle	\N	\N	Jean	Hickle	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1555	METABASE	1555	Therese Schuppe	\N	\N	Therese	Schuppe	\N	\N	\N	AU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1556	METABASE	1556	Eladio Steuber	\N	\N	Eladio	Steuber	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1557	METABASE	1557	Leilani McCullough	\N	\N	Leilani	McCullough	\N	\N	\N	GB	\N	Basic	Twitter	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1558	METABASE	1558	Nina Marvin	\N	\N	Nina	Marvin	\N	\N	\N	BR	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1559	METABASE	1559	Cale Ankunding	\N	\N	Cale	Ankunding	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_156	METABASE	156	Jed Bartell	\N	\N	Jed	Bartell	\N	\N	\N	CH	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1560	METABASE	1560	Salvatore Hand	\N	\N	Salvatore	Hand	\N	\N	\N	AU	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1561	METABASE	1561	Edmund Wilkinson	\N	\N	Edmund	Wilkinson	\N	\N	\N	NL	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1562	METABASE	1562	Maximillian Dickinson	\N	\N	Maximillian	Dickinson	\N	\N	\N	AU	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1563	METABASE	1563	Maud Wilkinson	\N	\N	Maud	Wilkinson	\N	\N	\N	BG	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1564	METABASE	1564	Walker Carter	\N	\N	Walker	Carter	\N	\N	\N	IN	\N	Basic	\N	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1565	METABASE	1565	Kaleb Schultz	\N	\N	Kaleb	Schultz	\N	\N	\N	MX	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1566	METABASE	1566	Maeve Bernier	\N	\N	Maeve	Bernier	\N	\N	\N	MX	\N	Basic	Facebook	80	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1567	METABASE	1567	Flavio Blick	\N	\N	Flavio	Blick	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1568	METABASE	1568	Freddie Dickens	\N	\N	Freddie	Dickens	\N	\N	\N	CH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1569	METABASE	1569	Bernita Volkman	\N	\N	Bernita	Volkman	\N	\N	\N	US	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_157	METABASE	157	Ole Krajcik	\N	\N	Ole	Krajcik	\N	\N	\N	DE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1570	METABASE	1570	Giovanni Smitham	\N	\N	Giovanni	Smitham	\N	\N	\N	DE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1571	METABASE	1571	Maeve Hilpert	\N	\N	Maeve	Hilpert	\N	\N	\N	GM	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1572	METABASE	1572	Nick Collier	\N	\N	Nick	Collier	\N	\N	\N	IN	\N	Basic	Facebook	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1573	METABASE	1573	Flavio Thompson	\N	\N	Flavio	Thompson	\N	\N	\N	PH	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1574	METABASE	1574	Salvador Prohaska	\N	\N	Salvador	Prohaska	\N	\N	\N	IR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1575	METABASE	1575	Shawna Kilback	\N	\N	Shawna	Kilback	\N	\N	\N	CA	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1576	METABASE	1576	Blake Leffler	\N	\N	Blake	Leffler	\N	\N	\N	VE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1577	METABASE	1577	Trace Walker	\N	\N	Trace	Walker	\N	\N	\N	CA	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1578	METABASE	1578	Pinkie Schulist	\N	\N	Pinkie	Schulist	\N	\N	\N	RU	\N	Basic	\N	203	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1579	METABASE	1579	Roberto Becker	\N	\N	Roberto	Becker	\N	\N	\N	DK	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_158	METABASE	158	Vincenza Lehner	\N	\N	Vincenza	Lehner	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1580	METABASE	1580	Destini Deckow	\N	\N	Destini	Deckow	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1581	METABASE	1581	Paula Corkery	\N	\N	Paula	Corkery	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1582	METABASE	1582	Marvin Kris	\N	\N	Marvin	Kris	\N	\N	\N	SA	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1583	METABASE	1583	Penelope Wilkinson	\N	\N	Penelope	Wilkinson	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1584	METABASE	1584	Jarvis Brekke	\N	\N	Jarvis	Brekke	\N	\N	\N	RU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1585	METABASE	1585	Theresa Corkery	\N	\N	Theresa	Corkery	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1586	METABASE	1586	Aurelio Parker	\N	\N	Aurelio	Parker	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1587	METABASE	1587	Gaston Dicki	\N	\N	Gaston	Dicki	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1588	METABASE	1588	Walker Harris	\N	\N	Walker	Harris	\N	\N	\N	AT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1589	METABASE	1589	Agnes Braun	\N	\N	Agnes	Braun	\N	\N	\N	AU	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_159	METABASE	159	Isabel Swaniawski	\N	\N	Isabel	Swaniawski	\N	\N	\N	NL	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1590	METABASE	1590	Wilmer Volkman	\N	\N	Wilmer	Volkman	\N	\N	\N	RO	\N	Business	Facebook	162	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1591	METABASE	1591	Dale Halvorson	\N	\N	Dale	Halvorson	\N	\N	\N	TR	\N	Basic	Facebook	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1592	METABASE	1592	Libbie Larkin	\N	\N	Libbie	Larkin	\N	\N	\N	TR	\N	Basic	Facebook	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1593	METABASE	1593	Daron Parker	\N	\N	Daron	Parker	\N	\N	\N	FR	\N	Basic	Twitter	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1594	METABASE	1594	Geovanny Schuster	\N	\N	Geovanny	Schuster	\N	\N	\N	DE	\N	Basic	\N	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1595	METABASE	1595	Cedrick Larkin	\N	\N	Cedrick	Larkin	\N	\N	\N	AG	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1596	METABASE	1596	Antwon Steuber	\N	\N	Antwon	Steuber	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1597	METABASE	1597	Zackery Kuhn	\N	\N	Zackery	Kuhn	\N	\N	\N	US	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1598	METABASE	1598	Pattie Gutkowski	\N	\N	Pattie	Gutkowski	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1599	METABASE	1599	Miguel McGlynn	\N	\N	Miguel	McGlynn	\N	\N	\N	UA	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_16	METABASE	16	Dayne Strosin	\N	\N	Dayne	Strosin	\N	\N	\N	JM	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_160	METABASE	160	Brenda Gibson	\N	\N	Brenda	Gibson	\N	\N	\N	TH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1600	METABASE	1600	Roman Walker	\N	\N	Roman	Walker	\N	\N	\N	IN	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1601	METABASE	1601	Keon Dickinson	\N	\N	Keon	Dickinson	\N	\N	\N	US	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1602	METABASE	1602	Stewart Marks	\N	\N	Stewart	Marks	\N	\N	\N	US	\N	Basic	Invite	25	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1603	METABASE	1603	Lavina Schultz	\N	\N	Lavina	Schultz	\N	\N	\N	US	\N	Basic	\N	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1604	METABASE	1604	Osvaldo Steuber	\N	\N	Osvaldo	Steuber	\N	\N	\N	SZ	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1605	METABASE	1605	Nicole Walker	\N	\N	Nicole	Walker	\N	\N	\N	PH	\N	Basic	Invite	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1606	METABASE	1606	Eden Jenkins	\N	\N	Eden	Jenkins	\N	\N	\N	BR	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1607	METABASE	1607	Sedrick Harvey	\N	\N	Sedrick	Harvey	\N	\N	\N	NO	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1608	METABASE	1608	Odell McCullough	\N	\N	Odell	McCullough	\N	\N	\N	SE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1609	METABASE	1609	Lilliana Parker	\N	\N	Lilliana	Parker	\N	\N	\N	AT	\N	Basic	\N	63	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_161	METABASE	161	Oda Yost	\N	\N	Oda	Yost	\N	\N	\N	JO	\N	Business	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1610	METABASE	1610	Nyasia Jakubowski	\N	\N	Nyasia	Jakubowski	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1611	METABASE	1611	Janiya Lockman	\N	\N	Janiya	Lockman	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1612	METABASE	1612	Giovani Thompson	\N	\N	Giovani	Thompson	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1613	METABASE	1613	Brown Blick	\N	\N	Brown	Blick	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1614	METABASE	1614	Isaac Schultz	\N	\N	Isaac	Schultz	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1615	METABASE	1615	Bettie Funk	\N	\N	Bettie	Funk	\N	\N	\N	PK	\N	Basic	Google	45	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1616	METABASE	1616	Florida Hackett	\N	\N	Florida	Hackett	\N	\N	\N	ET	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1617	METABASE	1617	Avis Dickinson	\N	\N	Avis	Dickinson	\N	\N	\N	IT	\N	Basic	Google	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1618	METABASE	1618	Melisa DuBuque	\N	\N	Melisa	DuBuque	\N	\N	\N	BR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1619	METABASE	1619	Abdullah Balistreri	\N	\N	Abdullah	Balistreri	\N	\N	\N	BR	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_162	METABASE	162	Oma Schulist	\N	\N	Oma	Schulist	\N	\N	\N	US	\N	Basic	Google	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1620	METABASE	1620	Tatum Keeling	\N	\N	Tatum	Keeling	\N	\N	\N	TR	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1621	METABASE	1621	Ubaldo Becker	\N	\N	Ubaldo	Becker	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1622	METABASE	1622	Lemuel Schamberger	\N	\N	Lemuel	Schamberger	\N	\N	\N	IT	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1623	METABASE	1623	Nickolas Schuster	\N	\N	Nickolas	Schuster	\N	\N	\N	CH	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1624	METABASE	1624	Crawford Rath	\N	\N	Crawford	Rath	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1625	METABASE	1625	Haskell Graham	\N	\N	Haskell	Graham	\N	\N	\N	AU	\N	Basic	Invite	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1626	METABASE	1626	Claudine McCullough	\N	\N	Claudine	McCullough	\N	\N	\N	YE	\N	Basic	Facebook	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1627	METABASE	1627	Drake Beahan	\N	\N	Drake	Beahan	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1628	METABASE	1628	Norval Collins	\N	\N	Norval	Collins	\N	\N	\N	MX	\N	Basic	Facebook	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1629	METABASE	1629	Sigurd Abernathy	\N	\N	Sigurd	Abernathy	\N	\N	\N	SA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_163	METABASE	163	Loy Krajcik	\N	\N	Loy	Krajcik	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1630	METABASE	1630	Percival Schuppe	\N	\N	Percival	Schuppe	\N	\N	\N	BG	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1631	METABASE	1631	Kimberly Braun	\N	\N	Kimberly	Braun	\N	\N	\N	US	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1632	METABASE	1632	Geovanny Turcotte	\N	\N	Geovanny	Turcotte	\N	\N	\N	DE	\N	Basic	Twitter	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1633	METABASE	1633	Diana Marvin	\N	\N	Diana	Marvin	\N	\N	\N	US	\N	Basic	Twitter	78	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1634	METABASE	1634	Orrin Lemke	\N	\N	Orrin	Lemke	\N	\N	\N	HN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1635	METABASE	1635	Autumn Feeney	\N	\N	Autumn	Feeney	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1636	METABASE	1636	Miguel Reynolds	\N	\N	Miguel	Reynolds	\N	\N	\N	IT	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1637	METABASE	1637	Jovan Buckridge	\N	\N	Jovan	Buckridge	\N	\N	\N	MX	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1638	METABASE	1638	Lila Marks	\N	\N	Lila	Marks	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1639	METABASE	1639	Marvin Hegmann	\N	\N	Marvin	Hegmann	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_164	METABASE	164	Lonny Shanahan	\N	\N	Lonny	Shanahan	\N	\N	\N	BR	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1640	METABASE	1640	Alfonzo Monahan	\N	\N	Alfonzo	Monahan	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1641	METABASE	1641	Antwon Pagac	\N	\N	Antwon	Pagac	\N	\N	\N	ID	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1642	METABASE	1642	Ophelia Herzog	\N	\N	Ophelia	Herzog	\N	\N	\N	MX	\N	Basic	Invite	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1643	METABASE	1643	Derrick Walker	\N	\N	Derrick	Walker	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1644	METABASE	1644	Quinn Metz	\N	\N	Quinn	Metz	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1645	METABASE	1645	Quinn Stokes	\N	\N	Quinn	Stokes	\N	\N	\N	US	\N	Basic	Twitter	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1646	METABASE	1646	Alisha Deckow	\N	\N	Alisha	Deckow	\N	\N	\N	TH	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1647	METABASE	1647	Jessika Treutel	\N	\N	Jessika	Treutel	\N	\N	\N	RU	\N	Basic	Google	426	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1648	METABASE	1648	Ford Larkin	\N	\N	Ford	Larkin	\N	\N	\N	GB	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1649	METABASE	1649	Haleigh Funk	\N	\N	Haleigh	Funk	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_165	METABASE	165	Pat Jast	\N	\N	Pat	Jast	\N	\N	\N	PL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1650	METABASE	1650	Rodolfo Larkin	\N	\N	Rodolfo	Larkin	\N	\N	\N	CH	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1651	METABASE	1651	Nikko Haag	\N	\N	Nikko	Haag	\N	\N	\N	RU	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1652	METABASE	1652	Rowena Hodkiewicz	\N	\N	Rowena	Hodkiewicz	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1653	METABASE	1653	Monserrate Schuppe	\N	\N	Monserrate	Schuppe	\N	\N	\N	NL	\N	Basic	Google	27	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1654	METABASE	1654	Walker Conroy	\N	\N	Walker	Conroy	\N	\N	\N	US	\N	Basic	Google	63	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1655	METABASE	1655	Myrna Hickle	\N	\N	Myrna	Hickle	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1656	METABASE	1656	Vernice Steuber	\N	\N	Vernice	Steuber	\N	\N	\N	PA	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1657	METABASE	1657	Palma Volkman	\N	\N	Palma	Volkman	\N	\N	\N	US	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1658	METABASE	1658	Jarret Marvin	\N	\N	Jarret	Marvin	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1659	METABASE	1659	Deborah Dickens	\N	\N	Deborah	Dickens	\N	\N	\N	NL	\N	Basic	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_166	METABASE	166	Lenna Hahn	\N	\N	Lenna	Hahn	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1660	METABASE	1660	Chaya Volkman	\N	\N	Chaya	Volkman	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1661	METABASE	1661	Chelsey Schuppe	\N	\N	Chelsey	Schuppe	\N	\N	\N	RO	\N	Business	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1662	METABASE	1662	Laura Batz	\N	\N	Laura	Batz	\N	\N	\N	FR	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1663	METABASE	1663	Elmo Schimmel	\N	\N	Elmo	Schimmel	\N	\N	\N	IT	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1664	METABASE	1664	Kavon Dach	\N	\N	Kavon	Dach	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1665	METABASE	1665	Kathryn Lubowitz	\N	\N	Kathryn	Lubowitz	\N	\N	\N	IN	\N	Basic	\N	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1666	METABASE	1666	Beaulah Konopelski	\N	\N	Beaulah	Konopelski	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1667	METABASE	1667	Eleanora Kunze	\N	\N	Eleanora	Kunze	\N	\N	\N	DE	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1668	METABASE	1668	Eldon Crona	\N	\N	Eldon	Crona	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1669	METABASE	1669	Caitlyn Mraz	\N	\N	Caitlyn	Mraz	\N	\N	\N	JP	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_167	METABASE	167	Lila Von	\N	\N	Lila	Von	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1670	METABASE	1670	Gino Johnston	\N	\N	Gino	Johnston	\N	\N	\N	PH	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1671	METABASE	1671	Virgil Schowalter	\N	\N	Virgil	Schowalter	\N	\N	\N	IT	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1672	METABASE	1672	Marquise Crooks	\N	\N	Marquise	Crooks	\N	\N	\N	RU	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1673	METABASE	1673	Cyrus Wisozk	\N	\N	Cyrus	Wisozk	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1674	METABASE	1674	Jason Spencer	\N	\N	Jason	Spencer	\N	\N	\N	AU	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1675	METABASE	1675	Colin Kunze	\N	\N	Colin	Kunze	\N	\N	\N	GB	\N	Basic	\N	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1676	METABASE	1676	Afton Lesch	\N	\N	Afton	Lesch	\N	\N	\N	US	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1677	METABASE	1677	Davonte Runolfsson	\N	\N	Davonte	Runolfsson	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1678	METABASE	1678	Lamont Dooley	\N	\N	Lamont	Dooley	\N	\N	\N	CL	\N	Basic	Invite	107	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1679	METABASE	1679	Bryon Ward	\N	\N	Bryon	Ward	\N	\N	\N	FR	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_168	METABASE	168	Vernice Bernier	\N	\N	Vernice	Bernier	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1680	METABASE	1680	Blaze Daugherty	\N	\N	Blaze	Daugherty	\N	\N	\N	FR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1681	METABASE	1681	Lukas Olson	\N	\N	Lukas	Olson	\N	\N	\N	UZ	\N	Basic	\N	36	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1682	METABASE	1682	Elnora Langosh	\N	\N	Elnora	Langosh	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1683	METABASE	1683	Talon Kreiger	\N	\N	Talon	Kreiger	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1684	METABASE	1684	Norris Jacobs	\N	\N	Norris	Jacobs	\N	\N	\N	US	\N	Basic	Invite	45	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1685	METABASE	1685	Jalon Brakus	\N	\N	Jalon	Brakus	\N	\N	\N	PL	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1686	METABASE	1686	Alicia Runolfsdottir	\N	\N	Alicia	Runolfsdottir	\N	\N	\N	FR	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1687	METABASE	1687	Jerome Koepp	\N	\N	Jerome	Koepp	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1688	METABASE	1688	Shaylee Wisoky	\N	\N	Shaylee	Wisoky	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1689	METABASE	1689	Aurore Yundt	\N	\N	Aurore	Yundt	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_169	METABASE	169	Tia Pfeffer	\N	\N	Tia	Pfeffer	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1690	METABASE	1690	Antonina Morissette	\N	\N	Antonina	Morissette	\N	\N	\N	IR	\N	Basic	\N	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1691	METABASE	1691	Nia Schoen	\N	\N	Nia	Schoen	\N	\N	\N	KZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1692	METABASE	1692	Keyon Gleason	\N	\N	Keyon	Gleason	\N	\N	\N	ES	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1693	METABASE	1693	Troy Pacocha	\N	\N	Troy	Pacocha	\N	\N	\N	IN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1694	METABASE	1694	Triston Nitzsche	\N	\N	Triston	Nitzsche	\N	\N	\N	RO	\N	Basic	\N	115	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1695	METABASE	1695	Abe Konopelski	\N	\N	Abe	Konopelski	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1696	METABASE	1696	Dedrick Strosin	\N	\N	Dedrick	Strosin	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1697	METABASE	1697	Jacky Jacobs	\N	\N	Jacky	Jacobs	\N	\N	\N	SZ	\N	Basic	Facebook	113	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1698	METABASE	1698	Gino Kuhic	\N	\N	Gino	Kuhic	\N	\N	\N	PL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1699	METABASE	1699	Braulio Jacobs	\N	\N	Braulio	Jacobs	\N	\N	\N	NO	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_17	METABASE	17	Benjamin Collier	\N	\N	Benjamin	Collier	\N	\N	\N	IT	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_170	METABASE	170	Brenda Buckridge	\N	\N	Brenda	Buckridge	\N	\N	\N	BO	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1700	METABASE	1700	Carolyne Leuschke	\N	\N	Carolyne	Leuschke	\N	\N	\N	US	\N	Basic	\N	71	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1701	METABASE	1701	Ayla Jacobi	\N	\N	Ayla	Jacobi	\N	\N	\N	GT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1702	METABASE	1702	Cecelia Herzog	\N	\N	Cecelia	Herzog	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1703	METABASE	1703	Dameon Nicolas	\N	\N	Dameon	Nicolas	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1704	METABASE	1704	Khalil Pacocha	\N	\N	Khalil	Pacocha	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1705	METABASE	1705	Omari O'Conner	\N	\N	Omari	O'Conner	\N	\N	\N	CO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1706	METABASE	1706	Tito Metz	\N	\N	Tito	Metz	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1707	METABASE	1707	Blaze Barrows	\N	\N	Blaze	Barrows	\N	\N	\N	ID	\N	Premium	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1708	METABASE	1708	Eleonore Towne	\N	\N	Eleonore	Towne	\N	\N	\N	DE	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1709	METABASE	1709	Meta Abbott	\N	\N	Meta	Abbott	\N	\N	\N	MX	\N	Basic	Google	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_171	METABASE	171	Justine Schneider	\N	\N	Justine	Schneider	\N	\N	\N	RU	\N	Basic	\N	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1710	METABASE	1710	Winona Hickle	\N	\N	Winona	Hickle	\N	\N	\N	NL	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1711	METABASE	1711	Garret Schoen	\N	\N	Garret	Schoen	\N	\N	\N	RO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1712	METABASE	1712	Ronny Jacobs	\N	\N	Ronny	Jacobs	\N	\N	\N	DE	\N	Basic	\N	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1713	METABASE	1713	Deron Cremin	\N	\N	Deron	Cremin	\N	\N	\N	IT	\N	Basic	Google	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1714	METABASE	1714	Willie Nikolaus	\N	\N	Willie	Nikolaus	\N	\N	\N	AT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1715	METABASE	1715	Delores Kuhlman	\N	\N	Delores	Kuhlman	\N	\N	\N	FI	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1716	METABASE	1716	Erick Nitzsche	\N	\N	Erick	Nitzsche	\N	\N	\N	JP	\N	Basic	Facebook	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1717	METABASE	1717	Natalia Herzog	\N	\N	Natalia	Herzog	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1718	METABASE	1718	Carol Feil	\N	\N	Carol	Feil	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1719	METABASE	1719	Hugh Konopelski	\N	\N	Hugh	Konopelski	\N	\N	\N	US	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_172	METABASE	172	Gianni Hansen	\N	\N	Gianni	Hansen	\N	\N	\N	GB	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1720	METABASE	1720	Sigrid Runolfsdottir	\N	\N	Sigrid	Runolfsdottir	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1721	METABASE	1721	Arnold Krajcik	\N	\N	Arnold	Krajcik	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1722	METABASE	1722	Nicola Krajcik	\N	\N	Nicola	Krajcik	\N	\N	\N	CM	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1723	METABASE	1723	Rebeka Wisoky	\N	\N	Rebeka	Wisoky	\N	\N	\N	MX	\N	Basic	\N	331	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1724	METABASE	1724	Nikolas Waelchi	\N	\N	Nikolas	Waelchi	\N	\N	\N	PT	\N	Basic	Facebook	254	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1725	METABASE	1725	Veronica Stark	\N	\N	Veronica	Stark	\N	\N	\N	RO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1726	METABASE	1726	Alfonzo Quigley	\N	\N	Alfonzo	Quigley	\N	\N	\N	SL	\N	Basic	Twitter	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1727	METABASE	1727	Arno Nienow	\N	\N	Arno	Nienow	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1728	METABASE	1728	Otto Krajcik	\N	\N	Otto	Krajcik	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1729	METABASE	1729	Deborah Boyle	\N	\N	Deborah	Boyle	\N	\N	\N	FR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_173	METABASE	173	Agnes Spinka	\N	\N	Agnes	Spinka	\N	\N	\N	CH	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1730	METABASE	1730	Aurelio Jacobson	\N	\N	Aurelio	Jacobson	\N	\N	\N	CO	\N	Basic	Google	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1731	METABASE	1731	Jaron Hansen	\N	\N	Jaron	Hansen	\N	\N	\N	AU	\N	Basic	\N	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1732	METABASE	1732	Winona Cassin	\N	\N	Winona	Cassin	\N	\N	\N	JM	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1733	METABASE	1733	Giovanny Nicolas	\N	\N	Giovanny	Nicolas	\N	\N	\N	GR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1734	METABASE	1734	Veronica Weissnat	\N	\N	Veronica	Weissnat	\N	\N	\N	DE	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1735	METABASE	1735	Eino Cronin	\N	\N	Eino	Cronin	\N	\N	\N	IN	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1736	METABASE	1736	Paris Herzog	\N	\N	Paris	Herzog	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1737	METABASE	1737	Viola Schoen	\N	\N	Viola	Schoen	\N	\N	\N	GB	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1738	METABASE	1738	Karen Nicolas	\N	\N	Karen	Nicolas	\N	\N	\N	PH	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1739	METABASE	1739	Nikolas Hilpert	\N	\N	Nikolas	Hilpert	\N	\N	\N	ZM	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_174	METABASE	174	Joe Becker	\N	\N	Joe	Becker	\N	\N	\N	FR	\N	Basic	Invite	351	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1740	METABASE	1740	Maxime Stroman	\N	\N	Maxime	Stroman	\N	\N	\N	DE	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1741	METABASE	1741	Josiah Jacobs	\N	\N	Josiah	Jacobs	\N	\N	\N	DZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1742	METABASE	1742	Winifred Runolfsson	\N	\N	Winifred	Runolfsson	\N	\N	\N	DK	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1743	METABASE	1743	Carolanne Upton	\N	\N	Carolanne	Upton	\N	\N	\N	PT	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1744	METABASE	1744	Justine Olson	\N	\N	Justine	Olson	\N	\N	\N	US	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1745	METABASE	1745	Eudora Renner	\N	\N	Eudora	Renner	\N	\N	\N	NL	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1746	METABASE	1746	Kevon Morar	\N	\N	Kevon	Morar	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1747	METABASE	1747	Eldon Herman	\N	\N	Eldon	Herman	\N	\N	\N	SI	\N	Basic	Google	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1748	METABASE	1748	Vito Haag	\N	\N	Vito	Haag	\N	\N	\N	FR	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1749	METABASE	1749	Alfonzo Hansen	\N	\N	Alfonzo	Hansen	\N	\N	\N	CN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_175	METABASE	175	Alayna Beatty	\N	\N	Alayna	Beatty	\N	\N	\N	RO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1750	METABASE	1750	Theodora Mertz	\N	\N	Theodora	Mertz	\N	\N	\N	BE	\N	Basic	Invite	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1751	METABASE	1751	Orion Wilkinson	\N	\N	Orion	Wilkinson	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1752	METABASE	1752	Jakob Hansen	\N	\N	Jakob	Hansen	\N	\N	\N	AM	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1753	METABASE	1753	Brooks Shields	\N	\N	Brooks	Shields	\N	\N	\N	RO	\N	Basic	Twitter	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1754	METABASE	1754	Aylin Wisozk	\N	\N	Aylin	Wisozk	\N	\N	\N	FI	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1755	METABASE	1755	Marjorie O'Conner	\N	\N	Marjorie	O'Conner	\N	\N	\N	PH	\N	Basic	Facebook	56	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1756	METABASE	1756	Theodore McGlynn	\N	\N	Theodore	McGlynn	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1757	METABASE	1757	Lamont Hoeger	\N	\N	Lamont	Hoeger	\N	\N	\N	SE	\N	Basic	Google	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1758	METABASE	1758	Oliver Jacobs	\N	\N	Oliver	Jacobs	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1759	METABASE	1759	Tyreek Runolfsdottir	\N	\N	Tyreek	Runolfsdottir	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_176	METABASE	176	Emmy Schimmel	\N	\N	Emmy	Schimmel	\N	\N	\N	UA	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1760	METABASE	1760	Dolores Bins	\N	\N	Dolores	Bins	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1761	METABASE	1761	Allan Runolfsson	\N	\N	Allan	Runolfsson	\N	\N	\N	IR	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1762	METABASE	1762	Orlo Champlin	\N	\N	Orlo	Champlin	\N	\N	\N	IT	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1763	METABASE	1763	Casey Metz	\N	\N	Casey	Metz	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1764	METABASE	1764	Trudie Wisoky	\N	\N	Trudie	Wisoky	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1765	METABASE	1765	Antonina Rolfson	\N	\N	Antonina	Rolfson	\N	\N	\N	US	\N	Basic	Invite	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1766	METABASE	1766	Berneice Abbott	\N	\N	Berneice	Abbott	\N	\N	\N	MX	\N	Basic	\N	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1767	METABASE	1767	Tomas Mraz	\N	\N	Tomas	Mraz	\N	\N	\N	RO	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1768	METABASE	1768	Bryon Lakin	\N	\N	Bryon	Lakin	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1769	METABASE	1769	Cameron Strosin	\N	\N	Cameron	Strosin	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_177	METABASE	177	Chad Reynolds	\N	\N	Chad	Reynolds	\N	\N	\N	CA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1770	METABASE	1770	Aurore Ryan	\N	\N	Aurore	Ryan	\N	\N	\N	BR	\N	Basic	Facebook	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1771	METABASE	1771	Jettie Yost	\N	\N	Jettie	Yost	\N	\N	\N	UG	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1772	METABASE	1772	Edyth Emard	\N	\N	Edyth	Emard	\N	\N	\N	RU	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1773	METABASE	1773	Melvin Upton	\N	\N	Melvin	Upton	\N	\N	\N	BG	\N	Basic	Facebook	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1774	METABASE	1774	Kailyn Leuschke	\N	\N	Kailyn	Leuschke	\N	\N	\N	ES	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1775	METABASE	1775	Glenna Runolfsson	\N	\N	Glenna	Runolfsson	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1776	METABASE	1776	Theodora Dibbert	\N	\N	Theodora	Dibbert	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1777	METABASE	1777	Brett Rogahn	\N	\N	Brett	Rogahn	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1778	METABASE	1778	Stan Jacobson	\N	\N	Stan	Jacobson	\N	\N	\N	ES	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1779	METABASE	1779	Brendon Hettinger	\N	\N	Brendon	Hettinger	\N	\N	\N	SE	\N	Premium	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_178	METABASE	178	Edwin Von	\N	\N	Edwin	Von	\N	\N	\N	AR	\N	Basic	\N	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1780	METABASE	1780	Joelle Ullrich	\N	\N	Joelle	Ullrich	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1781	METABASE	1781	Kayley Powlowski	\N	\N	Kayley	Powlowski	\N	\N	\N	MX	\N	Premium	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1782	METABASE	1782	Melissa Mertz	\N	\N	Melissa	Mertz	\N	\N	\N	JP	\N	Basic	Google	58	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1783	METABASE	1783	Dustin Armstrong	\N	\N	Dustin	Armstrong	\N	\N	\N	NI	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1784	METABASE	1784	Chelsey Schaefer	\N	\N	Chelsey	Schaefer	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1785	METABASE	1785	Dante Lesch	\N	\N	Dante	Lesch	\N	\N	\N	PL	\N	Premium	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1786	METABASE	1786	Jordane Pacocha	\N	\N	Jordane	Pacocha	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1787	METABASE	1787	Blake Jast	\N	\N	Blake	Jast	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1788	METABASE	1788	Unique Runolfsson	\N	\N	Unique	Runolfsson	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1789	METABASE	1789	Augustine Runolfsdottir	\N	\N	Augustine	Runolfsdottir	\N	\N	\N	HN	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_179	METABASE	179	Juanita Kessler	\N	\N	Juanita	Kessler	\N	\N	\N	FR	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1790	METABASE	1790	Alexanne Wisoky	\N	\N	Alexanne	Wisoky	\N	\N	\N	AU	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1791	METABASE	1791	Annamae Gislason	\N	\N	Annamae	Gislason	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1792	METABASE	1792	Keith Bradtke	\N	\N	Keith	Bradtke	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1793	METABASE	1793	Keyon Stroman	\N	\N	Keyon	Stroman	\N	\N	\N	AU	\N	Basic	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1794	METABASE	1794	Halle Lueilwitz	\N	\N	Halle	Lueilwitz	\N	\N	\N	CH	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1795	METABASE	1795	Nikolas Romaguera	\N	\N	Nikolas	Romaguera	\N	\N	\N	ES	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1796	METABASE	1796	Stacy Wisozk	\N	\N	Stacy	Wisozk	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1797	METABASE	1797	Gilbert Abbott	\N	\N	Gilbert	Abbott	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1798	METABASE	1798	Citlalli Brown	\N	\N	Citlalli	Brown	\N	\N	\N	US	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1799	METABASE	1799	Chris Walter	\N	\N	Chris	Walter	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_18	METABASE	18	Johnathan Kris	\N	\N	Johnathan	Kris	\N	\N	\N	IN	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_180	METABASE	180	Hanna Schaden	\N	\N	Hanna	Schaden	\N	\N	\N	RO	\N	Basic	Invite	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1800	METABASE	1800	Cleora Hilll	\N	\N	Cleora	Hilll	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1801	METABASE	1801	Jeromy Smith	\N	\N	Jeromy	Smith	\N	\N	\N	BW	\N	Basic	Google	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1802	METABASE	1802	Rollin West	\N	\N	Rollin	West	\N	\N	\N	US	\N	Basic	Facebook	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1803	METABASE	1803	Bernice Witting	\N	\N	Bernice	Witting	\N	\N	\N	CA	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1804	METABASE	1804	Emmie Beatty	\N	\N	Emmie	Beatty	\N	\N	\N	CZ	\N	Premium	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1805	METABASE	1805	John Little	\N	\N	John	Little	\N	\N	\N	CZ	\N	Basic	Facebook	102	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1806	METABASE	1806	Easton Koch	\N	\N	Easton	Koch	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1807	METABASE	1807	Stella Kshlerin	\N	\N	Stella	Kshlerin	\N	\N	\N	BD	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1808	METABASE	1808	Karelle Koelpin	\N	\N	Karelle	Koelpin	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1809	METABASE	1809	Bernardo Heathcote	\N	\N	Bernardo	Heathcote	\N	\N	\N	HU	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_181	METABASE	181	Jean Larson	\N	\N	Jean	Larson	\N	\N	\N	IT	\N	Basic	\N	203	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1810	METABASE	1810	Leann Jast	\N	\N	Leann	Jast	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1811	METABASE	1811	Antoinette Mertz	\N	\N	Antoinette	Mertz	\N	\N	\N	GR	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1812	METABASE	1812	Jamar Heathcote	\N	\N	Jamar	Heathcote	\N	\N	\N	CZ	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1813	METABASE	1813	Arlene Dietrich	\N	\N	Arlene	Dietrich	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1814	METABASE	1814	Reva Carter	\N	\N	Reva	Carter	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1815	METABASE	1815	Hertha Price	\N	\N	Hertha	Price	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1816	METABASE	1816	Dell Schimmel	\N	\N	Dell	Schimmel	\N	\N	\N	US	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1817	METABASE	1817	Amelie Kunde	\N	\N	Amelie	Kunde	\N	\N	\N	PH	\N	Basic	Twitter	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1818	METABASE	1818	Reid Waelchi	\N	\N	Reid	Waelchi	\N	\N	\N	AU	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1819	METABASE	1819	Adelia Metz	\N	\N	Adelia	Metz	\N	\N	\N	FR	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_182	METABASE	182	Vincenzo Spencer	\N	\N	Vincenzo	Spencer	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1820	METABASE	1820	Jayson Flatley	\N	\N	Jayson	Flatley	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1821	METABASE	1821	Ettie Gislason	\N	\N	Ettie	Gislason	\N	\N	\N	RU	\N	Basic	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1822	METABASE	1822	Durward Hirthe	\N	\N	Durward	Hirthe	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1823	METABASE	1823	Germaine O'Reilly	\N	\N	Germaine	O'Reilly	\N	\N	\N	PL	\N	Basic	\N	41	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1824	METABASE	1824	Abbey Satterfield	\N	\N	Abbey	Satterfield	\N	\N	\N	RO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1825	METABASE	1825	Aletha Huels	\N	\N	Aletha	Huels	\N	\N	\N	AU	\N	Premium	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1826	METABASE	1826	Walter Mueller	\N	\N	Walter	Mueller	\N	\N	\N	KZ	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1827	METABASE	1827	Chris Satterfield	\N	\N	Chris	Satterfield	\N	\N	\N	FR	\N	Basic	Google	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1828	METABASE	1828	Arely Lubowitz	\N	\N	Arely	Lubowitz	\N	\N	\N	BD	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1829	METABASE	1829	Wilton Senger	\N	\N	Wilton	Senger	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_183	METABASE	183	Dusty Trantow	\N	\N	Dusty	Trantow	\N	\N	\N	PH	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1830	METABASE	1830	Misty Botsford	\N	\N	Misty	Botsford	\N	\N	\N	NZ	\N	Basic	Facebook	113	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1831	METABASE	1831	Brody Gottlieb	\N	\N	Brody	Gottlieb	\N	\N	\N	IL	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1832	METABASE	1832	Austyn Doyle	\N	\N	Austyn	Doyle	\N	\N	\N	US	\N	Basic	\N	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1833	METABASE	1833	Abraham Kerluke	\N	\N	Abraham	Kerluke	\N	\N	\N	AU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1834	METABASE	1834	Bernardo Kshlerin	\N	\N	Bernardo	Kshlerin	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1835	METABASE	1835	Odell Stehr	\N	\N	Odell	Stehr	\N	\N	\N	CA	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1836	METABASE	1836	Grace Smith	\N	\N	Grace	Smith	\N	\N	\N	IT	\N	Basic	\N	289	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1837	METABASE	1837	Layla Abernathy	\N	\N	Layla	Abernathy	\N	\N	\N	RO	\N	Basic	Facebook	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1838	METABASE	1838	Garrison Will	\N	\N	Garrison	Will	\N	\N	\N	TH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1839	METABASE	1839	Waino Feil	\N	\N	Waino	Feil	\N	\N	\N	IT	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_184	METABASE	184	Erica Orn	\N	\N	Erica	Orn	\N	\N	\N	ES	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1840	METABASE	1840	Joana Stoltenberg	\N	\N	Joana	Stoltenberg	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1841	METABASE	1841	Monte Langworth	\N	\N	Monte	Langworth	\N	\N	\N	CO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1842	METABASE	1842	Gerardo Mertz	\N	\N	Gerardo	Mertz	\N	\N	\N	TH	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1843	METABASE	1843	Dana Bartell	\N	\N	Dana	Bartell	\N	\N	\N	US	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1844	METABASE	1844	Velva Zemlak	\N	\N	Velva	Zemlak	\N	\N	\N	IN	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1845	METABASE	1845	Blake Will	\N	\N	Blake	Will	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1846	METABASE	1846	Meagan Stoltenberg	\N	\N	Meagan	Stoltenberg	\N	\N	\N	JP	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1847	METABASE	1847	Destiny Murazik	\N	\N	Destiny	Murazik	\N	\N	\N	US	\N	Premium	Facebook	27	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1848	METABASE	1848	Estrella Collier	\N	\N	Estrella	Collier	\N	\N	\N	FR	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1849	METABASE	1849	Kellie Price	\N	\N	Kellie	Price	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_185	METABASE	185	Dax Bartell	\N	\N	Dax	Bartell	\N	\N	\N	PT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1850	METABASE	1850	Vilma Little	\N	\N	Vilma	Little	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1851	METABASE	1851	Misty Daugherty	\N	\N	Misty	Daugherty	\N	\N	\N	DE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1852	METABASE	1852	Bell Fritsch	\N	\N	Bell	Fritsch	\N	\N	\N	JP	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1853	METABASE	1853	Cayla VonRueden	\N	\N	Cayla	VonRueden	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1854	METABASE	1854	Lizeth Carter	\N	\N	Lizeth	Carter	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1855	METABASE	1855	Khalil Kiehn	\N	\N	Khalil	Kiehn	\N	\N	\N	RO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1856	METABASE	1856	Javier Tillman	\N	\N	Javier	Tillman	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1857	METABASE	1857	Bill Pacocha	\N	\N	Bill	Pacocha	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1858	METABASE	1858	Karen Dooley	\N	\N	Karen	Dooley	\N	\N	\N	AT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1859	METABASE	1859	Heath Hettinger	\N	\N	Heath	Hettinger	\N	\N	\N	US	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_186	METABASE	186	Gina Schneider	\N	\N	Gina	Schneider	\N	\N	\N	DE	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1860	METABASE	1860	Hailie Weimann	\N	\N	Hailie	Weimann	\N	\N	\N	BR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1861	METABASE	1861	Eveline Jenkins	\N	\N	Eveline	Jenkins	\N	\N	\N	GB	\N	Basic	Twitter	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1862	METABASE	1862	Carley Orn	\N	\N	Carley	Orn	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1863	METABASE	1863	Greta McClure	\N	\N	Greta	McClure	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1864	METABASE	1864	Kenyatta Kshlerin	\N	\N	Kenyatta	Kshlerin	\N	\N	\N	JM	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1865	METABASE	1865	Kayli Ziemann	\N	\N	Kayli	Ziemann	\N	\N	\N	GR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1866	METABASE	1866	Deondre Koelpin	\N	\N	Deondre	Koelpin	\N	\N	\N	MX	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1867	METABASE	1867	Price Smith	\N	\N	Price	Smith	\N	\N	\N	ID	\N	Basic	Twitter	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1868	METABASE	1868	Martin Greenholt	\N	\N	Martin	Greenholt	\N	\N	\N	RO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1869	METABASE	1869	Murl Abbott	\N	\N	Murl	Abbott	\N	\N	\N	RO	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_187	METABASE	187	Leonora Howell	\N	\N	Leonora	Howell	\N	\N	\N	RO	\N	Basic	\N	30	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1870	METABASE	1870	Baylee Kassulke	\N	\N	Baylee	Kassulke	\N	\N	\N	MX	\N	Basic	Facebook	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1871	METABASE	1871	Justyn Nikolaus	\N	\N	Justyn	Nikolaus	\N	\N	\N	AT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1872	METABASE	1872	Kiel Hyatt	\N	\N	Kiel	Hyatt	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1873	METABASE	1873	Vallie Hamill	\N	\N	Vallie	Hamill	\N	\N	\N	GT	\N	Premium	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1874	METABASE	1874	Alysha Quitzon	\N	\N	Alysha	Quitzon	\N	\N	\N	DE	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1875	METABASE	1875	Bertrand Hayes	\N	\N	Bertrand	Hayes	\N	\N	\N	PL	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1876	METABASE	1876	Nya Mueller	\N	\N	Nya	Mueller	\N	\N	\N	BR	\N	Premium	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1877	METABASE	1877	Maud Witting	\N	\N	Maud	Witting	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1878	METABASE	1878	Murl Keeling	\N	\N	Murl	Keeling	\N	\N	\N	PH	\N	Premium	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1879	METABASE	1879	Beatrice Greenholt	\N	\N	Beatrice	Greenholt	\N	\N	\N	RO	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_188	METABASE	188	Arne Kub	\N	\N	Arne	Kub	\N	\N	\N	BR	\N	Basic	Twitter	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1880	METABASE	1880	Kaitlyn Howe	\N	\N	Kaitlyn	Howe	\N	\N	\N	FR	\N	Basic	\N	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1881	METABASE	1881	Otto Littel	\N	\N	Otto	Littel	\N	\N	\N	US	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1882	METABASE	1882	Kaelyn Gislason	\N	\N	Kaelyn	Gislason	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1883	METABASE	1883	Melyssa Miller	\N	\N	Melyssa	Miller	\N	\N	\N	RU	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1884	METABASE	1884	Ubaldo Wolf	\N	\N	Ubaldo	Wolf	\N	\N	\N	ID	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1885	METABASE	1885	Billie Nolan	\N	\N	Billie	Nolan	\N	\N	\N	PH	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1886	METABASE	1886	Jasmin West	\N	\N	Jasmin	West	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1887	METABASE	1887	Sallie Flatley	\N	\N	Sallie	Flatley	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1888	METABASE	1888	David Hettinger	\N	\N	David	Hettinger	\N	\N	\N	DE	\N	Basic	Facebook	30	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1889	METABASE	1889	Charity Quitzon	\N	\N	Charity	Quitzon	\N	\N	\N	ZA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_189	METABASE	189	Rudy Cremin	\N	\N	Rudy	Cremin	\N	\N	\N	RO	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1890	METABASE	1890	Joaquin Franecki	\N	\N	Joaquin	Franecki	\N	\N	\N	RO	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1891	METABASE	1891	Paul Ortiz	\N	\N	Paul	Ortiz	\N	\N	\N	MT	\N	Premium	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1892	METABASE	1892	Anika Little	\N	\N	Anika	Little	\N	\N	\N	FR	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1893	METABASE	1893	Sterling Feil	\N	\N	Sterling	Feil	\N	\N	\N	MX	\N	Basic	\N	177	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1894	METABASE	1894	Margaret Kshlerin	\N	\N	Margaret	Kshlerin	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1895	METABASE	1895	Marlin O'Conner	\N	\N	Marlin	O'Conner	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1896	METABASE	1896	Abdiel Heathcote	\N	\N	Abdiel	Heathcote	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1897	METABASE	1897	Ruthe Gottlieb	\N	\N	Ruthe	Gottlieb	\N	\N	\N	MX	\N	Basic	Twitter	25	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1898	METABASE	1898	Roscoe Luettgen	\N	\N	Roscoe	Luettgen	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1899	METABASE	1899	Horacio Smith	\N	\N	Horacio	Smith	\N	\N	\N	US	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_19	METABASE	19	Una Williamson	\N	\N	Una	Williamson	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_190	METABASE	190	Aidan Toy	\N	\N	Aidan	Toy	\N	\N	\N	PH	\N	Basic	Facebook	56	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1900	METABASE	1900	Merl Steuber	\N	\N	Merl	Steuber	\N	\N	\N	CN	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1901	METABASE	1901	Mollie Bogan	\N	\N	Mollie	Bogan	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1902	METABASE	1902	Noelia Lynch	\N	\N	Noelia	Lynch	\N	\N	\N	ES	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1903	METABASE	1903	Fritz Dickens	\N	\N	Fritz	Dickens	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1904	METABASE	1904	Sallie Wehner	\N	\N	Sallie	Wehner	\N	\N	\N	CN	\N	Basic	Google	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1905	METABASE	1905	Art Doyle	\N	\N	Art	Doyle	\N	\N	\N	HU	\N	Basic	\N	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1906	METABASE	1906	Heath Dare	\N	\N	Heath	Dare	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1907	METABASE	1907	Monty Abshire	\N	\N	Monty	Abshire	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1908	METABASE	1908	Abel Russel	\N	\N	Abel	Russel	\N	\N	\N	PH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1909	METABASE	1909	Anderson Stoltenberg	\N	\N	Anderson	Stoltenberg	\N	\N	\N	US	\N	Premium	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_191	METABASE	191	Keenan Ferry	\N	\N	Keenan	Ferry	\N	\N	\N	BR	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1910	METABASE	1910	Olga Yost	\N	\N	Olga	Yost	\N	\N	\N	PT	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1911	METABASE	1911	Scottie Schmidt	\N	\N	Scottie	Schmidt	\N	\N	\N	DE	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1912	METABASE	1912	Erick Yost	\N	\N	Erick	Yost	\N	\N	\N	ZA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1913	METABASE	1913	Danika White	\N	\N	Danika	White	\N	\N	\N	IR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1914	METABASE	1914	Milton Schiller	\N	\N	Milton	Schiller	\N	\N	\N	BG	\N	Basic	Invite	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1915	METABASE	1915	Dylan Kertzmann	\N	\N	Dylan	Kertzmann	\N	\N	\N	TR	\N	Basic	Facebook	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1916	METABASE	1916	Heath Prohaska	\N	\N	Heath	Prohaska	\N	\N	\N	GB	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1917	METABASE	1917	Bell Waelchi	\N	\N	Bell	Waelchi	\N	\N	\N	GB	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1918	METABASE	1918	Javon Jast	\N	\N	Javon	Jast	\N	\N	\N	PY	\N	Basic	\N	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1919	METABASE	1919	Dudley Upton	\N	\N	Dudley	Upton	\N	\N	\N	RO	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_192	METABASE	192	Aditya Nienow	\N	\N	Aditya	Nienow	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1920	METABASE	1920	Marquis Fisher	\N	\N	Marquis	Fisher	\N	\N	\N	ID	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1921	METABASE	1921	Ashley Price	\N	\N	Ashley	Price	\N	\N	\N	ES	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1922	METABASE	1922	Hortense Donnelly	\N	\N	Hortense	Donnelly	\N	\N	\N	AM	\N	Premium	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1923	METABASE	1923	Danial Kohler	\N	\N	Danial	Kohler	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1924	METABASE	1924	Ashlee Douglas	\N	\N	Ashlee	Douglas	\N	\N	\N	AU	\N	Basic	Invite	274	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1925	METABASE	1925	Joany Bartell	\N	\N	Joany	Bartell	\N	\N	\N	BR	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1926	METABASE	1926	Mustafa Gleason	\N	\N	Mustafa	Gleason	\N	\N	\N	AT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1927	METABASE	1927	Breanna Pollich	\N	\N	Breanna	Pollich	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1928	METABASE	1928	Connie Satterfield	\N	\N	Connie	Satterfield	\N	\N	\N	MA	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1929	METABASE	1929	Efrain Mante	\N	\N	Efrain	Mante	\N	\N	\N	CV	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_193	METABASE	193	Glenda Cassin	\N	\N	Glenda	Cassin	\N	\N	\N	PH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1930	METABASE	1930	Berneice White	\N	\N	Berneice	White	\N	\N	\N	ID	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1931	METABASE	1931	Dorthy Becker	\N	\N	Dorthy	Becker	\N	\N	\N	PH	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1932	METABASE	1932	Meaghan Smith	\N	\N	Meaghan	Smith	\N	\N	\N	ES	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1933	METABASE	1933	Jarrett Huel	\N	\N	Jarrett	Huel	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1934	METABASE	1934	Adolfo Flatley	\N	\N	Adolfo	Flatley	\N	\N	\N	DE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1935	METABASE	1935	Miguel Stoltenberg	\N	\N	Miguel	Stoltenberg	\N	\N	\N	UA	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1936	METABASE	1936	Gaetano Rogahn	\N	\N	Gaetano	Rogahn	\N	\N	\N	PH	\N	Basic	Twitter	168	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1937	METABASE	1937	Tomasa Hartmann	\N	\N	Tomasa	Hartmann	\N	\N	\N	NG	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1938	METABASE	1938	Ashton Herman	\N	\N	Ashton	Herman	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1939	METABASE	1939	Lilly Harber	\N	\N	Lilly	Harber	\N	\N	\N	DE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_194	METABASE	194	Misty Connelly	\N	\N	Misty	Connelly	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1940	METABASE	1940	Destinee Mills	\N	\N	Destinee	Mills	\N	\N	\N	GT	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1941	METABASE	1941	Lilly Veum	\N	\N	Lilly	Veum	\N	\N	\N	GB	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1942	METABASE	1942	Mittie Treutel	\N	\N	Mittie	Treutel	\N	\N	\N	US	\N	Basic	Twitter	252	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1943	METABASE	1943	Ida Kohler	\N	\N	Ida	Kohler	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1944	METABASE	1944	Carlie Hilll	\N	\N	Carlie	Hilll	\N	\N	\N	FR	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1945	METABASE	1945	Mollie Kozey	\N	\N	Mollie	Kozey	\N	\N	\N	YE	\N	Basic	\N	124	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1946	METABASE	1946	Trevor Smith	\N	\N	Trevor	Smith	\N	\N	\N	RO	\N	Basic	Twitter	63	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1947	METABASE	1947	Merritt Hintz	\N	\N	Merritt	Hintz	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1948	METABASE	1948	Gaston McCullough	\N	\N	Gaston	McCullough	\N	\N	\N	FR	\N	Basic	Google	30	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1949	METABASE	1949	Ozella Kautzer	\N	\N	Ozella	Kautzer	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_195	METABASE	195	Flo Dickens	\N	\N	Flo	Dickens	\N	\N	\N	PA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1950	METABASE	1950	Lillian McDermott	\N	\N	Lillian	McDermott	\N	\N	\N	NZ	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1951	METABASE	1951	Roel Gislason	\N	\N	Roel	Gislason	\N	\N	\N	IR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1952	METABASE	1952	Camilla Wintheiser	\N	\N	Camilla	Wintheiser	\N	\N	\N	US	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1953	METABASE	1953	Easton Kuhlman	\N	\N	Easton	Kuhlman	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1954	METABASE	1954	Rick Yost	\N	\N	Rick	Yost	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1955	METABASE	1955	Zachariah Cartwright	\N	\N	Zachariah	Cartwright	\N	\N	\N	FR	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1956	METABASE	1956	Santiago Luettgen	\N	\N	Santiago	Luettgen	\N	\N	\N	IT	\N	Premium	\N	639	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1957	METABASE	1957	Pasquale Ryan	\N	\N	Pasquale	Ryan	\N	\N	\N	UA	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1958	METABASE	1958	Verlie Bartell	\N	\N	Verlie	Bartell	\N	\N	\N	BR	\N	Basic	\N	269	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1959	METABASE	1959	Grace Hills	\N	\N	Grace	Hills	\N	\N	\N	MX	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_196	METABASE	196	Linwood Osinski	\N	\N	Linwood	Osinski	\N	\N	\N	US	\N	Basic	Invite	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1960	METABASE	1960	Marley Gorczany	\N	\N	Marley	Gorczany	\N	\N	\N	RO	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1961	METABASE	1961	Hollie Carter	\N	\N	Hollie	Carter	\N	\N	\N	MX	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1962	METABASE	1962	Abdiel Huel	\N	\N	Abdiel	Huel	\N	\N	\N	RU	\N	Basic	\N	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1963	METABASE	1963	Murray Wintheiser	\N	\N	Murray	Wintheiser	\N	\N	\N	FR	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1964	METABASE	1964	Russell Muller	\N	\N	Russell	Muller	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1965	METABASE	1965	Myrtle Bahringer	\N	\N	Myrtle	Bahringer	\N	\N	\N	NO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1966	METABASE	1966	Christine Hills	\N	\N	Christine	Hills	\N	\N	\N	IT	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1967	METABASE	1967	Kitty Hessel	\N	\N	Kitty	Hessel	\N	\N	\N	FR	\N	Basic	Facebook	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1968	METABASE	1968	Phyllis Auer	\N	\N	Phyllis	Auer	\N	\N	\N	MX	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1969	METABASE	1969	Ashtyn Orn	\N	\N	Ashtyn	Orn	\N	\N	\N	NO	\N	Basic	Google	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_197	METABASE	197	Sydnie Schimmel	\N	\N	Sydnie	Schimmel	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1970	METABASE	1970	Fred Mueller	\N	\N	Fred	Mueller	\N	\N	\N	RU	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1971	METABASE	1971	Stone Koelpin	\N	\N	Stone	Koelpin	\N	\N	\N	KE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1972	METABASE	1972	Gunnar Huels	\N	\N	Gunnar	Huels	\N	\N	\N	YE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1973	METABASE	1973	Cortney Zemlak	\N	\N	Cortney	Zemlak	\N	\N	\N	IE	\N	Basic	\N	96	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1974	METABASE	1974	Curtis Morar	\N	\N	Curtis	Morar	\N	\N	\N	GB	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1975	METABASE	1975	Morris Gaylord	\N	\N	Morris	Gaylord	\N	\N	\N	PT	\N	Basic	\N	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1976	METABASE	1976	Lillie Wilderman	\N	\N	Lillie	Wilderman	\N	\N	\N	CN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1977	METABASE	1977	Filomena Waelchi	\N	\N	Filomena	Waelchi	\N	\N	\N	LC	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1978	METABASE	1978	Creola Satterfield	\N	\N	Creola	Satterfield	\N	\N	\N	CN	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1979	METABASE	1979	Marlene Cassin	\N	\N	Marlene	Cassin	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_198	METABASE	198	Earnestine Crona	\N	\N	Earnestine	Crona	\N	\N	\N	GB	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1980	METABASE	1980	Violette Wisozk	\N	\N	Violette	Wisozk	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1981	METABASE	1981	Marta Kuvalis	\N	\N	Marta	Kuvalis	\N	\N	\N	RO	\N	Basic	\N	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1982	METABASE	1982	Celestino Wintheiser	\N	\N	Celestino	Wintheiser	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1983	METABASE	1983	Violet Hills	\N	\N	Violet	Hills	\N	\N	\N	RU	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1984	METABASE	1984	Peyton Barton	\N	\N	Peyton	Barton	\N	\N	\N	IN	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1985	METABASE	1985	Mohammed Powlowski	\N	\N	Mohammed	Powlowski	\N	\N	\N	AT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1986	METABASE	1986	Brody O'Reilly	\N	\N	Brody	O'Reilly	\N	\N	\N	SA	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1987	METABASE	1987	Mollie Lynch	\N	\N	Mollie	Lynch	\N	\N	\N	IR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1988	METABASE	1988	Mertie Windler	\N	\N	Mertie	Windler	\N	\N	\N	PL	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1989	METABASE	1989	Eleanora Smith	\N	\N	Eleanora	Smith	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_199	METABASE	199	Daphnee Trantow	\N	\N	Daphnee	Trantow	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1990	METABASE	1990	Jaida Huels	\N	\N	Jaida	Huels	\N	\N	\N	BR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1991	METABASE	1991	Markus Hirthe	\N	\N	Markus	Hirthe	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1992	METABASE	1992	Ansley Cummings	\N	\N	Ansley	Cummings	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1993	METABASE	1993	Bret Quigley	\N	\N	Bret	Quigley	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1994	METABASE	1994	Hollis Adams	\N	\N	Hollis	Adams	\N	\N	\N	NL	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1995	METABASE	1995	Clotilde Johns	\N	\N	Clotilde	Johns	\N	\N	\N	RO	\N	Basic	\N	89	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1996	METABASE	1996	Audra Mante	\N	\N	Audra	Mante	\N	\N	\N	CA	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1997	METABASE	1997	Andy Mills	\N	\N	Andy	Mills	\N	\N	\N	CZ	\N	Basic	\N	175	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1998	METABASE	1998	Clementine Collins	\N	\N	Clementine	Collins	\N	\N	\N	IT	\N	Basic	Invite	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_1999	METABASE	1999	Everett Little	\N	\N	Everett	Little	\N	\N	\N	US	\N	Basic	Google	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2	METABASE	2	Kim Cormier	\N	\N	Kim	Cormier	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_20	METABASE	20	Jennyfer Gislason	\N	\N	Jennyfer	Gislason	\N	\N	\N	PT	\N	Basic	Facebook	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_200	METABASE	200	Samir Johnson	\N	\N	Samir	Johnson	\N	\N	\N	BF	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2000	METABASE	2000	Martina Altenwerth	\N	\N	Martina	Altenwerth	\N	\N	\N	IQ	\N	Basic	Google	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2001	METABASE	2001	Savanah Will	\N	\N	Savanah	Will	\N	\N	\N	DE	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2002	METABASE	2002	Clarabelle Tillman	\N	\N	Clarabelle	Tillman	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2003	METABASE	2003	Lisandro Skiles	\N	\N	Lisandro	Skiles	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2004	METABASE	2004	Nickolas Collins	\N	\N	Nickolas	Collins	\N	\N	\N	BG	\N	Basic	Google	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2005	METABASE	2005	Khalid Blanda	\N	\N	Khalid	Blanda	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2006	METABASE	2006	Viva Willms	\N	\N	Viva	Willms	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2007	METABASE	2007	Bernardo Dietrich	\N	\N	Bernardo	Dietrich	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2008	METABASE	2008	Vallie Labadie	\N	\N	Vallie	Labadie	\N	\N	\N	RO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2009	METABASE	2009	Oleta Hane	\N	\N	Oleta	Hane	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_201	METABASE	201	Maye Kuhn	\N	\N	Maye	Kuhn	\N	\N	\N	BR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2010	METABASE	2010	Abelardo Purdy	\N	\N	Abelardo	Purdy	\N	\N	\N	IN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2011	METABASE	2011	Lionel Hyatt	\N	\N	Lionel	Hyatt	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2012	METABASE	2012	Cindy Witting	\N	\N	Cindy	Witting	\N	\N	\N	CL	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2013	METABASE	2013	Joe Mills	\N	\N	Joe	Mills	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2014	METABASE	2014	Foster Gusikowski	\N	\N	Foster	Gusikowski	\N	\N	\N	RO	\N	Basic	Twitter	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2015	METABASE	2015	Omer Powlowski	\N	\N	Omer	Powlowski	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2016	METABASE	2016	Hollis Rau	\N	\N	Hollis	Rau	\N	\N	\N	FR	\N	Basic	Twitter	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2017	METABASE	2017	Jailyn Hickle	\N	\N	Jailyn	Hickle	\N	\N	\N	US	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2018	METABASE	2018	Burnice Doyle	\N	\N	Burnice	Doyle	\N	\N	\N	ID	\N	Basic	Invite	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2019	METABASE	2019	Destany Dietrich	\N	\N	Destany	Dietrich	\N	\N	\N	AU	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_202	METABASE	202	Eve Mante	\N	\N	Eve	Mante	\N	\N	\N	CZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2020	METABASE	2020	Merle Moen	\N	\N	Merle	Moen	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2021	METABASE	2021	Paolo Kshlerin	\N	\N	Paolo	Kshlerin	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2022	METABASE	2022	Julio Beatty	\N	\N	Julio	Beatty	\N	\N	\N	GB	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2023	METABASE	2023	Tressie Willms	\N	\N	Tressie	Willms	\N	\N	\N	US	\N	Basic	\N	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2024	METABASE	2024	Paxton Fay	\N	\N	Paxton	Fay	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2025	METABASE	2025	Morton Funk	\N	\N	Morton	Funk	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2026	METABASE	2026	Lewis Doyle	\N	\N	Lewis	Doyle	\N	\N	\N	VN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2027	METABASE	2027	Lavon Mante	\N	\N	Lavon	Mante	\N	\N	\N	DE	\N	Basic	\N	32	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2028	METABASE	2028	Gretchen Muller	\N	\N	Gretchen	Muller	\N	\N	\N	BR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2029	METABASE	2029	Giovanna Tillman	\N	\N	Giovanna	Tillman	\N	\N	\N	FR	\N	Basic	Google	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_203	METABASE	203	Theodora Connelly	\N	\N	Theodora	Connelly	\N	\N	\N	NL	\N	Basic	Invite	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2030	METABASE	2030	Vada West	\N	\N	Vada	West	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2031	METABASE	2031	Felton Keebler	\N	\N	Felton	Keebler	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2032	METABASE	2032	Iva Waelchi	\N	\N	Iva	Waelchi	\N	\N	\N	RO	\N	Basic	Facebook	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2033	METABASE	2033	Santa Harvey	\N	\N	Santa	Harvey	\N	\N	\N	US	\N	Basic	\N	113	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2034	METABASE	2034	Schuyler Hills	\N	\N	Schuyler	Hills	\N	\N	\N	DE	\N	Basic	Google	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2035	METABASE	2035	Louie Willms	\N	\N	Louie	Willms	\N	\N	\N	PT	\N	Basic	\N	21	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2036	METABASE	2036	Jermain Kohler	\N	\N	Jermain	Kohler	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2037	METABASE	2037	Kurtis Parker	\N	\N	Kurtis	Parker	\N	\N	\N	EE	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2038	METABASE	2038	Catalina Smith	\N	\N	Catalina	Smith	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2039	METABASE	2039	Abelardo Weissnat	\N	\N	Abelardo	Weissnat	\N	\N	\N	UA	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_204	METABASE	204	Floyd Williamson	\N	\N	Floyd	Williamson	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2040	METABASE	2040	Leila Considine	\N	\N	Leila	Considine	\N	\N	\N	IN	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2041	METABASE	2041	Dakota Mante	\N	\N	Dakota	Mante	\N	\N	\N	GB	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2042	METABASE	2042	Waldo Bartell	\N	\N	Waldo	Bartell	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2043	METABASE	2043	Delta Jerde	\N	\N	Delta	Jerde	\N	\N	\N	PH	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2044	METABASE	2044	Unique Jerde	\N	\N	Unique	Jerde	\N	\N	\N	MX	\N	Basic	Facebook	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2045	METABASE	2045	Fern Carter	\N	\N	Fern	Carter	\N	\N	\N	FR	\N	Basic	\N	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2046	METABASE	2046	Dortha White	\N	\N	Dortha	White	\N	\N	\N	PH	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2047	METABASE	2047	Noel Tillman	\N	\N	Noel	Tillman	\N	\N	\N	AT	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2048	METABASE	2048	Aditya Schoen	\N	\N	Aditya	Schoen	\N	\N	\N	GB	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2049	METABASE	2049	Evelyn Hahn	\N	\N	Evelyn	Hahn	\N	\N	\N	RU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_205	METABASE	205	Janie O'Kon	\N	\N	Janie	O'Kon	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2050	METABASE	2050	Robin Flatley	\N	\N	Robin	Flatley	\N	\N	\N	RU	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2051	METABASE	2051	Syble Collier	\N	\N	Syble	Collier	\N	\N	\N	SM	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2052	METABASE	2052	Magali Willms	\N	\N	Magali	Willms	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2053	METABASE	2053	Kitty Kohler	\N	\N	Kitty	Kohler	\N	\N	\N	IN	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2054	METABASE	2054	Mallie Lang	\N	\N	Mallie	Lang	\N	\N	\N	BR	\N	Basic	\N	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2055	METABASE	2055	Mckenzie Walter	\N	\N	Mckenzie	Walter	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2056	METABASE	2056	Cortney Swift	\N	\N	Cortney	Swift	\N	\N	\N	RO	\N	Basic	Invite	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2057	METABASE	2057	Danny Pollich	\N	\N	Danny	Pollich	\N	\N	\N	CA	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2058	METABASE	2058	Felicia Runte	\N	\N	Felicia	Runte	\N	\N	\N	US	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2059	METABASE	2059	Geovanni Miller	\N	\N	Geovanni	Miller	\N	\N	\N	CA	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_206	METABASE	206	Sidney Kling	\N	\N	Sidney	Kling	\N	\N	\N	FR	\N	Basic	Google	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2060	METABASE	2060	Arturo Marquardt	\N	\N	Arturo	Marquardt	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2061	METABASE	2061	Carlee Champlin	\N	\N	Carlee	Champlin	\N	\N	\N	LY	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2062	METABASE	2062	Kaela Kunze	\N	\N	Kaela	Kunze	\N	\N	\N	IR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2063	METABASE	2063	Darlene Rohan	\N	\N	Darlene	Rohan	\N	\N	\N	DE	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2064	METABASE	2064	Porter Tromp	\N	\N	Porter	Tromp	\N	\N	\N	TZ	\N	Basic	Google	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2065	METABASE	2065	Stefan Reilly	\N	\N	Stefan	Reilly	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2066	METABASE	2066	Kitty Hilll	\N	\N	Kitty	Hilll	\N	\N	\N	BR	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2067	METABASE	2067	Sheldon Braun	\N	\N	Sheldon	Braun	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2068	METABASE	2068	Enola Bayer	\N	\N	Enola	Bayer	\N	\N	\N	US	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2069	METABASE	2069	Coty Kertzmann	\N	\N	Coty	Kertzmann	\N	\N	\N	RO	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_207	METABASE	207	Ruby Bernier	\N	\N	Ruby	Bernier	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2070	METABASE	2070	Gertrude Labadie	\N	\N	Gertrude	Labadie	\N	\N	\N	ID	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2071	METABASE	2071	Mallory Kirlin	\N	\N	Mallory	Kirlin	\N	\N	\N	US	\N	Basic	Google	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2072	METABASE	2072	Daren Huels	\N	\N	Daren	Huels	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2073	METABASE	2073	Keith Rosenbaum	\N	\N	Keith	Rosenbaum	\N	\N	\N	RO	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2074	METABASE	2074	Jennie Kuhlman	\N	\N	Jennie	Kuhlman	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2075	METABASE	2075	Granville Gaylord	\N	\N	Granville	Gaylord	\N	\N	\N	US	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2076	METABASE	2076	Devan Skiles	\N	\N	Devan	Skiles	\N	\N	\N	AT	\N	Basic	Invite	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2077	METABASE	2077	Orval Hettinger	\N	\N	Orval	Hettinger	\N	\N	\N	DE	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2078	METABASE	2078	May Kerluke	\N	\N	May	Kerluke	\N	\N	\N	TH	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2079	METABASE	2079	Molly Klocko	\N	\N	Molly	Klocko	\N	\N	\N	US	\N	Basic	\N	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_208	METABASE	208	Phoebe Mann	\N	\N	Phoebe	Mann	\N	\N	\N	CR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2080	METABASE	2080	Adalberto Terry	\N	\N	Adalberto	Terry	\N	\N	\N	FR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2081	METABASE	2081	Sid Mills	\N	\N	Sid	Mills	\N	\N	\N	MM	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2082	METABASE	2082	Laisha West	\N	\N	Laisha	West	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2083	METABASE	2083	Zetta Nitzsche	\N	\N	Zetta	Nitzsche	\N	\N	\N	ES	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2084	METABASE	2084	Pietro Bogisich	\N	\N	Pietro	Bogisich	\N	\N	\N	FR	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2085	METABASE	2085	Sarina Bailey	\N	\N	Sarina	Bailey	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2086	METABASE	2086	Justine Kertzmann	\N	\N	Justine	Kertzmann	\N	\N	\N	PH	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2087	METABASE	2087	Earline Gulgowski	\N	\N	Earline	Gulgowski	\N	\N	\N	US	\N	Basic	Twitter	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2088	METABASE	2088	Rowan Hyatt	\N	\N	Rowan	Hyatt	\N	\N	\N	BG	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2089	METABASE	2089	Benton Huel	\N	\N	Benton	Huel	\N	\N	\N	AT	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_209	METABASE	209	Lacy Gleichner	\N	\N	Lacy	Gleichner	\N	\N	\N	AT	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2090	METABASE	2090	Chet Blick	\N	\N	Chet	Blick	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2091	METABASE	2091	Phoebe Wintheiser	\N	\N	Phoebe	Wintheiser	\N	\N	\N	CH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2092	METABASE	2092	Alia O'Reilly	\N	\N	Alia	O'Reilly	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2093	METABASE	2093	Gaetano Wilderman	\N	\N	Gaetano	Wilderman	\N	\N	\N	CZ	\N	Basic	Invite	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2094	METABASE	2094	Justina Blanda	\N	\N	Justina	Blanda	\N	\N	\N	MX	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2095	METABASE	2095	Jaqueline Waelchi	\N	\N	Jaqueline	Waelchi	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2096	METABASE	2096	Mattie Russel	\N	\N	Mattie	Russel	\N	\N	\N	BO	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2097	METABASE	2097	Raegan Witting	\N	\N	Raegan	Witting	\N	\N	\N	AT	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2098	METABASE	2098	Hulda Hintz	\N	\N	Hulda	Hintz	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2099	METABASE	2099	Lowell Koelpin	\N	\N	Lowell	Koelpin	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_21	METABASE	21	Randi Bernier	\N	\N	Randi	Bernier	\N	\N	\N	DE	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_210	METABASE	210	Adonis Ritchie	\N	\N	Adonis	Ritchie	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2100	METABASE	2100	Agustin Collins	\N	\N	Agustin	Collins	\N	\N	\N	RO	\N	Basic	\N	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2101	METABASE	2101	Ola Gottlieb	\N	\N	Ola	Gottlieb	\N	\N	\N	IT	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2102	METABASE	2102	Keagan Hirthe	\N	\N	Keagan	Hirthe	\N	\N	\N	PH	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2103	METABASE	2103	Adolph Tillman	\N	\N	Adolph	Tillman	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2104	METABASE	2104	Kayley Klein	\N	\N	Kayley	Klein	\N	\N	\N	IT	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2105	METABASE	2105	Merle Blick	\N	\N	Merle	Blick	\N	\N	\N	MX	\N	Basic	Google	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2106	METABASE	2106	Ardella Willms	\N	\N	Ardella	Willms	\N	\N	\N	RU	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2107	METABASE	2107	Scot Rippin	\N	\N	Scot	Rippin	\N	\N	\N	RO	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2108	METABASE	2108	Nellie Heller	\N	\N	Nellie	Heller	\N	\N	\N	MA	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2109	METABASE	2109	Morgan Miller	\N	\N	Morgan	Miller	\N	\N	\N	CO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_211	METABASE	211	Taryn Schoen	\N	\N	Taryn	Schoen	\N	\N	\N	IN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2110	METABASE	2110	Alverta Reilly	\N	\N	Alverta	Reilly	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2111	METABASE	2111	Shyanne Hettinger	\N	\N	Shyanne	Hettinger	\N	\N	\N	IT	\N	Basic	\N	27	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2112	METABASE	2112	Ashlee Mertz	\N	\N	Ashlee	Mertz	\N	\N	\N	DE	\N	Basic	\N	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2113	METABASE	2113	Lila Roob	\N	\N	Lila	Roob	\N	\N	\N	NL	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2114	METABASE	2114	Stella Abbott	\N	\N	Stella	Abbott	\N	\N	\N	LY	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2115	METABASE	2115	Paige Miller	\N	\N	Paige	Miller	\N	\N	\N	NO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2116	METABASE	2116	Jaylin Hudson	\N	\N	Jaylin	Hudson	\N	\N	\N	ML	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2117	METABASE	2117	Christiana Boyle	\N	\N	Christiana	Boyle	\N	\N	\N	BE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2118	METABASE	2118	Ernie Kohler	\N	\N	Ernie	Kohler	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2119	METABASE	2119	Ulices Feil	\N	\N	Ulices	Feil	\N	\N	\N	RO	\N	Basic	\N	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_212	METABASE	212	Margret Johnston	\N	\N	Margret	Johnston	\N	\N	\N	FR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2120	METABASE	2120	Foster Marks	\N	\N	Foster	Marks	\N	\N	\N	FR	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2121	METABASE	2121	Eulah Gorczany	\N	\N	Eulah	Gorczany	\N	\N	\N	IT	\N	Premium	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2122	METABASE	2122	Gunnar Doyle	\N	\N	Gunnar	Doyle	\N	\N	\N	ID	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2123	METABASE	2123	Domenic Keebler	\N	\N	Domenic	Keebler	\N	\N	\N	US	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2124	METABASE	2124	Bette Lang	\N	\N	Bette	Lang	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2125	METABASE	2125	Benton McCullough	\N	\N	Benton	McCullough	\N	\N	\N	ID	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2126	METABASE	2126	Alize Keebler	\N	\N	Alize	Keebler	\N	\N	\N	AT	\N	Basic	Google	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2127	METABASE	2127	Earnest Huels	\N	\N	Earnest	Huels	\N	\N	\N	EG	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2128	METABASE	2128	Thalia Hirthe	\N	\N	Thalia	Hirthe	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2129	METABASE	2129	Aletha Kertzmann	\N	\N	Aletha	Kertzmann	\N	\N	\N	RU	\N	Basic	Invite	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_213	METABASE	213	Jonas Von	\N	\N	Jonas	Von	\N	\N	\N	ES	\N	Basic	Invite	71	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2130	METABASE	2130	Carmelo Kilback	\N	\N	Carmelo	Kilback	\N	\N	\N	ZA	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2131	METABASE	2131	Berta Roob	\N	\N	Berta	Roob	\N	\N	\N	FI	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2132	METABASE	2132	Mustafa Steuber	\N	\N	Mustafa	Steuber	\N	\N	\N	IT	\N	Basic	Twitter	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2133	METABASE	2133	Caitlyn Dach	\N	\N	Caitlyn	Dach	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2134	METABASE	2134	Margot Lesch	\N	\N	Margot	Lesch	\N	\N	\N	MD	\N	Basic	\N	140	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2135	METABASE	2135	Domenico Ritchie	\N	\N	Domenico	Ritchie	\N	\N	\N	PH	\N	Basic	\N	122	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2136	METABASE	2136	Mohammed Beatty	\N	\N	Mohammed	Beatty	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2137	METABASE	2137	Carmelo Carter	\N	\N	Carmelo	Carter	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2138	METABASE	2138	Twila Turcotte	\N	\N	Twila	Turcotte	\N	\N	\N	IT	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2139	METABASE	2139	Pattie Senger	\N	\N	Pattie	Senger	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_214	METABASE	214	Toby Yundt	\N	\N	Toby	Yundt	\N	\N	\N	PL	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2140	METABASE	2140	Lolita Zemlak	\N	\N	Lolita	Zemlak	\N	\N	\N	PA	\N	Business	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2141	METABASE	2141	Khalid McKenzie	\N	\N	Khalid	McKenzie	\N	\N	\N	AR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2142	METABASE	2142	Madonna Kertzmann	\N	\N	Madonna	Kertzmann	\N	\N	\N	KR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2143	METABASE	2143	Norene Flatley	\N	\N	Norene	Flatley	\N	\N	\N	NO	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2144	METABASE	2144	Rhett Mante	\N	\N	Rhett	Mante	\N	\N	\N	FR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2145	METABASE	2145	Kenna Bailey	\N	\N	Kenna	Bailey	\N	\N	\N	AU	\N	Basic	Google	1	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2146	METABASE	2146	Melisa Walter	\N	\N	Melisa	Walter	\N	\N	\N	RO	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2147	METABASE	2147	Jakob Kerluke	\N	\N	Jakob	Kerluke	\N	\N	\N	IT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2148	METABASE	2148	Franco O'Reilly	\N	\N	Franco	O'Reilly	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2149	METABASE	2149	Makayla Heathcote	\N	\N	Makayla	Heathcote	\N	\N	\N	PH	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_215	METABASE	215	Cornelius Bogisich	\N	\N	Cornelius	Bogisich	\N	\N	\N	PL	\N	Basic	Facebook	423	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2150	METABASE	2150	Hollis Hettinger	\N	\N	Hollis	Hettinger	\N	\N	\N	ES	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2151	METABASE	2151	Jimmie Doyle	\N	\N	Jimmie	Doyle	\N	\N	\N	SI	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2152	METABASE	2152	Rosalyn Price	\N	\N	Rosalyn	Price	\N	\N	\N	ID	\N	Basic	\N	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2153	METABASE	2153	Grace Brown	\N	\N	Grace	Brown	\N	\N	\N	ES	\N	Basic	Twitter	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2154	METABASE	2154	Verla O'Kon	\N	\N	Verla	O'Kon	\N	\N	\N	CO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2155	METABASE	2155	Carleton Effertz	\N	\N	Carleton	Effertz	\N	\N	\N	AT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2156	METABASE	2156	Broderick Wintheiser	\N	\N	Broderick	Wintheiser	\N	\N	\N	PH	\N	Basic	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2157	METABASE	2157	Myrtis Labadie	\N	\N	Myrtis	Labadie	\N	\N	\N	US	\N	Basic	Twitter	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2158	METABASE	2158	Theresa Kertzmann	\N	\N	Theresa	Kertzmann	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2159	METABASE	2159	Wilhelm Willms	\N	\N	Wilhelm	Willms	\N	\N	\N	TH	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_216	METABASE	216	Rosalinda Cronin	\N	\N	Rosalinda	Cronin	\N	\N	\N	DE	\N	Basic	Twitter	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2160	METABASE	2160	Lillian Green	\N	\N	Lillian	Green	\N	\N	\N	IT	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2161	METABASE	2161	Colton Hauck	\N	\N	Colton	Hauck	\N	\N	\N	JM	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2162	METABASE	2162	Seth Willms	\N	\N	Seth	Willms	\N	\N	\N	PE	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2163	METABASE	2163	Holly Bayer	\N	\N	Holly	Bayer	\N	\N	\N	IN	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2164	METABASE	2164	Alison Klocko	\N	\N	Alison	Klocko	\N	\N	\N	TR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2165	METABASE	2165	Arely Pollich	\N	\N	Arely	Pollich	\N	\N	\N	BY	\N	Business	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2166	METABASE	2166	Lucinda Welch	\N	\N	Lucinda	Welch	\N	\N	\N	AU	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2167	METABASE	2167	Khalid Pouros	\N	\N	Khalid	Pouros	\N	\N	\N	DE	\N	Basic	Twitter	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2168	METABASE	2168	Mustafa Thiel	\N	\N	Mustafa	Thiel	\N	\N	\N	ES	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2169	METABASE	2169	Tressa White	\N	\N	Tressa	White	\N	\N	\N	ES	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_217	METABASE	217	Bud Bruen	\N	\N	Bud	Bruen	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2170	METABASE	2170	Domenica Williamson	\N	\N	Domenica	Williamson	\N	\N	\N	AT	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2171	METABASE	2171	Iliana Padberg	\N	\N	Iliana	Padberg	\N	\N	\N	PH	\N	Basic	\N	179	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2172	METABASE	2172	Kirk Harber	\N	\N	Kirk	Harber	\N	\N	\N	CZ	\N	Basic	Twitter	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2173	METABASE	2173	Kathlyn Ruecker	\N	\N	Kathlyn	Ruecker	\N	\N	\N	PL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2174	METABASE	2174	Rachel Gorczany	\N	\N	Rachel	Gorczany	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2175	METABASE	2175	Dorcas Dicki	\N	\N	Dorcas	Dicki	\N	\N	\N	CO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2176	METABASE	2176	Lola Ritchie	\N	\N	Lola	Ritchie	\N	\N	\N	GB	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2177	METABASE	2177	Loyce Lemke	\N	\N	Loyce	Lemke	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2178	METABASE	2178	Percy Kassulke	\N	\N	Percy	Kassulke	\N	\N	\N	TN	\N	Basic	Twitter	168	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2179	METABASE	2179	Emiliano Block	\N	\N	Emiliano	Block	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_218	METABASE	218	Dennis McCullough	\N	\N	Dennis	McCullough	\N	\N	\N	IT	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2180	METABASE	2180	Cleveland Welch	\N	\N	Cleveland	Welch	\N	\N	\N	RU	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2181	METABASE	2181	Kirstin Bosco	\N	\N	Kirstin	Bosco	\N	\N	\N	ES	\N	Premium	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2182	METABASE	2182	Alicia Schimmel	\N	\N	Alicia	Schimmel	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2183	METABASE	2183	Tyree Reichel	\N	\N	Tyree	Reichel	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2184	METABASE	2184	Hillard Price	\N	\N	Hillard	Price	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2185	METABASE	2185	Joseph Lynch	\N	\N	Joseph	Lynch	\N	\N	\N	VN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2186	METABASE	2186	Royce Bins	\N	\N	Royce	Bins	\N	\N	\N	RO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2187	METABASE	2187	Lonny Mosciski	\N	\N	Lonny	Mosciski	\N	\N	\N	ID	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2188	METABASE	2188	Alycia McCullough	\N	\N	Alycia	McCullough	\N	\N	\N	HR	\N	Basic	\N	49	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2189	METABASE	2189	Mitchel Pouros	\N	\N	Mitchel	Pouros	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_219	METABASE	219	Chanel Rippin	\N	\N	Chanel	Rippin	\N	\N	\N	UA	\N	Basic	Twitter	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2190	METABASE	2190	Precious Lakin	\N	\N	Precious	Lakin	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2191	METABASE	2191	Candelario Blick	\N	\N	Candelario	Blick	\N	\N	\N	AU	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2192	METABASE	2192	Eddie Dibbert	\N	\N	Eddie	Dibbert	\N	\N	\N	TZ	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2193	METABASE	2193	Tremayne Price	\N	\N	Tremayne	Price	\N	\N	\N	PL	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2194	METABASE	2194	Maxie Kilback	\N	\N	Maxie	Kilback	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2195	METABASE	2195	Electa Barrows	\N	\N	Electa	Barrows	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2196	METABASE	2196	Ervin Mitchell	\N	\N	Ervin	Mitchell	\N	\N	\N	IN	\N	Premium	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2197	METABASE	2197	Melba Witting	\N	\N	Melba	Witting	\N	\N	\N	PH	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2198	METABASE	2198	Tyson Lynch	\N	\N	Tyson	Lynch	\N	\N	\N	PK	\N	Basic	Invite	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2199	METABASE	2199	Kirsten Reichel	\N	\N	Kirsten	Reichel	\N	\N	\N	ES	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_22	METABASE	22	Janis Renner	\N	\N	Janis	Renner	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_220	METABASE	220	Lesly Fay	\N	\N	Lesly	Fay	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2200	METABASE	2200	Dorcas Brakus	\N	\N	Dorcas	Brakus	\N	\N	\N	BA	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2201	METABASE	2201	Marco Kihn	\N	\N	Marco	Kihn	\N	\N	\N	PL	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2202	METABASE	2202	Donato Padberg	\N	\N	Donato	Padberg	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2203	METABASE	2203	Lacey Mitchell	\N	\N	Lacey	Mitchell	\N	\N	\N	IQ	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2204	METABASE	2204	Shad Welch	\N	\N	Shad	Welch	\N	\N	\N	RO	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2205	METABASE	2205	Elmer Klocko	\N	\N	Elmer	Klocko	\N	\N	\N	FR	\N	Basic	Google	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2206	METABASE	2206	Marquis Roob	\N	\N	Marquis	Roob	\N	\N	\N	SI	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2207	METABASE	2207	Paula Dibbert	\N	\N	Paula	Dibbert	\N	\N	\N	AT	\N	Basic	Invite	69	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2208	METABASE	2208	Araceli Bechtelar	\N	\N	Araceli	Bechtelar	\N	\N	\N	PH	\N	Basic	Twitter	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2209	METABASE	2209	Albert Padberg	\N	\N	Albert	Padberg	\N	\N	\N	RO	\N	Basic	Twitter	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_221	METABASE	221	Rudy Larkin	\N	\N	Rudy	Larkin	\N	\N	\N	BR	\N	Basic	Facebook	82	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2210	METABASE	2210	Alexanne Klocko	\N	\N	Alexanne	Klocko	\N	\N	\N	BR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2211	METABASE	2211	Shaniya Roob	\N	\N	Shaniya	Roob	\N	\N	\N	SO	\N	Basic	Google	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2212	METABASE	2212	Gracie Reichel	\N	\N	Gracie	Reichel	\N	\N	\N	IT	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2213	METABASE	2213	Erich Kris	\N	\N	Erich	Kris	\N	\N	\N	SA	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2214	METABASE	2214	Charity Blick	\N	\N	Charity	Blick	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2215	METABASE	2215	Edyth Roob	\N	\N	Edyth	Roob	\N	\N	\N	PL	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2216	METABASE	2216	Electa Stehr	\N	\N	Electa	Stehr	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2217	METABASE	2217	Zachariah Bosco	\N	\N	Zachariah	Bosco	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2218	METABASE	2218	Antwon Reichel	\N	\N	Antwon	Reichel	\N	\N	\N	US	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2219	METABASE	2219	Kory Bosco	\N	\N	Kory	Bosco	\N	\N	\N	AU	\N	Business	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_222	METABASE	222	Leon Labadie	\N	\N	Leon	Labadie	\N	\N	\N	IN	\N	Basic	\N	63	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2220	METABASE	2220	Marcus Kuhn	\N	\N	Marcus	Kuhn	\N	\N	\N	BR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2221	METABASE	2221	Isom Welch	\N	\N	Isom	Welch	\N	\N	\N	MX	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2222	METABASE	2222	Vance Mueller	\N	\N	Vance	Mueller	\N	\N	\N	US	\N	Basic	Facebook	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2223	METABASE	2223	Cleo Harber	\N	\N	Cleo	Harber	\N	\N	\N	PL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2224	METABASE	2224	Durward Kilback	\N	\N	Durward	Kilback	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2225	METABASE	2225	Tad Ruecker	\N	\N	Tad	Ruecker	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2226	METABASE	2226	Kaycee Keebler	\N	\N	Kaycee	Keebler	\N	\N	\N	DE	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2227	METABASE	2227	Marcellus Wolf	\N	\N	Marcellus	Wolf	\N	\N	\N	RU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2228	METABASE	2228	Dave Lesch	\N	\N	Dave	Lesch	\N	\N	\N	PA	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2229	METABASE	2229	Khalil Padberg	\N	\N	Khalil	Padberg	\N	\N	\N	FR	\N	Basic	Facebook	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_223	METABASE	223	Ryann Rice	\N	\N	Ryann	Rice	\N	\N	\N	SY	\N	Basic	Google	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2230	METABASE	2230	Corbin Wiegand	\N	\N	Corbin	Wiegand	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2231	METABASE	2231	Kasey Roob	\N	\N	Kasey	Roob	\N	\N	\N	GB	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2232	METABASE	2232	Alisha Kilback	\N	\N	Alisha	Kilback	\N	\N	\N	US	\N	Basic	Twitter	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2233	METABASE	2233	Monty Lynch	\N	\N	Monty	Lynch	\N	\N	\N	BR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2234	METABASE	2234	Leonard Blick	\N	\N	Leonard	Blick	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2235	METABASE	2235	Raymundo Ruecker	\N	\N	Raymundo	Ruecker	\N	\N	\N	AU	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2236	METABASE	2236	Bryce Erdman	\N	\N	Bryce	Erdman	\N	\N	\N	GB	\N	Basic	Google	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2237	METABASE	2237	Tracey Denesik	\N	\N	Tracey	Denesik	\N	\N	\N	ZA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2238	METABASE	2238	Howell Price	\N	\N	Howell	Price	\N	\N	\N	US	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2239	METABASE	2239	Larry Paucek	\N	\N	Larry	Paucek	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_224	METABASE	224	Gudrun Blanda	\N	\N	Gudrun	Blanda	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2240	METABASE	2240	Luis Mitchell	\N	\N	Luis	Mitchell	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2241	METABASE	2241	Maybelle Romaguera	\N	\N	Maybelle	Romaguera	\N	\N	\N	GR	\N	Basic	\N	32	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2242	METABASE	2242	Electa Schroeder	\N	\N	Electa	Schroeder	\N	\N	\N	SY	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2243	METABASE	2243	Norberto Dach	\N	\N	Norberto	Dach	\N	\N	\N	BR	\N	Basic	Invite	177	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2244	METABASE	2244	Haylie Bosco	\N	\N	Haylie	Bosco	\N	\N	\N	IN	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2245	METABASE	2245	Jaime Hauck	\N	\N	Jaime	Hauck	\N	\N	\N	IR	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2246	METABASE	2246	Ike Keebler	\N	\N	Ike	Keebler	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2247	METABASE	2247	Newton Klocko	\N	\N	Newton	Klocko	\N	\N	\N	RO	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2248	METABASE	2248	Stacy Considine	\N	\N	Stacy	Considine	\N	\N	\N	CA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2249	METABASE	2249	Marcelo Ferry	\N	\N	Marcelo	Ferry	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_225	METABASE	225	Gloria Conn	\N	\N	Gloria	Conn	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2250	METABASE	2250	Taryn Klocko	\N	\N	Taryn	Klocko	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2251	METABASE	2251	Arielle Mitchell	\N	\N	Arielle	Mitchell	\N	\N	\N	CO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2252	METABASE	2252	Shany Turcotte	\N	\N	Shany	Turcotte	\N	\N	\N	SL	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2253	METABASE	2253	Ben Roob	\N	\N	Ben	Roob	\N	\N	\N	ES	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2254	METABASE	2254	Erick O'Keefe	\N	\N	Erick	O'Keefe	\N	\N	\N	US	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2255	METABASE	2255	Ezequiel Turcotte	\N	\N	Ezequiel	Turcotte	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2256	METABASE	2256	Don Bosco	\N	\N	Don	Bosco	\N	\N	\N	ES	\N	Basic	Twitter	1	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2257	METABASE	2257	Jacklyn Gorczany	\N	\N	Jacklyn	Gorczany	\N	\N	\N	BW	\N	Basic	Invite	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2258	METABASE	2258	Reuben Koelpin	\N	\N	Reuben	Koelpin	\N	\N	\N	DE	\N	Basic	\N	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2259	METABASE	2259	Petra Roob	\N	\N	Petra	Roob	\N	\N	\N	RO	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_226	METABASE	226	Idella Wehner	\N	\N	Idella	Wehner	\N	\N	\N	MX	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2260	METABASE	2260	Jacinto Price	\N	\N	Jacinto	Price	\N	\N	\N	KH	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2261	METABASE	2261	Wilford Bauch	\N	\N	Wilford	Bauch	\N	\N	\N	FR	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2262	METABASE	2262	Alison Paucek	\N	\N	Alison	Paucek	\N	\N	\N	SK	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2263	METABASE	2263	Rosalyn Bauch	\N	\N	Rosalyn	Bauch	\N	\N	\N	BE	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2264	METABASE	2264	Eriberto Cruickshank	\N	\N	Eriberto	Cruickshank	\N	\N	\N	LC	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2265	METABASE	2265	Samson Hauck	\N	\N	Samson	Hauck	\N	\N	\N	MX	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2266	METABASE	2266	Percy Padberg	\N	\N	Percy	Padberg	\N	\N	\N	DE	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2267	METABASE	2267	Kristoffer Keebler	\N	\N	Kristoffer	Keebler	\N	\N	\N	IT	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2268	METABASE	2268	Alycia Collins	\N	\N	Alycia	Collins	\N	\N	\N	JM	\N	Basic	Facebook	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2269	METABASE	2269	Marcelle Rippin	\N	\N	Marcelle	Rippin	\N	\N	\N	TR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_227	METABASE	227	Luisa Swaniawski	\N	\N	Luisa	Swaniawski	\N	\N	\N	HU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2270	METABASE	2270	Isac Cole	\N	\N	Isac	Cole	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2271	METABASE	2271	Marcelina Moore	\N	\N	Marcelina	Moore	\N	\N	\N	AM	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2272	METABASE	2272	Evangeline Reichert	\N	\N	Evangeline	Reichert	\N	\N	\N	GB	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2273	METABASE	2273	Loyce Cole	\N	\N	Loyce	Cole	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2274	METABASE	2274	Gilberto Mueller	\N	\N	Gilberto	Mueller	\N	\N	\N	MX	\N	Basic	\N	197	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2275	METABASE	2275	Corbin Mertz	\N	\N	Corbin	Mertz	\N	\N	\N	FR	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2276	METABASE	2276	Lavinia Harber	\N	\N	Lavinia	Harber	\N	\N	\N	IN	\N	Basic	Invite	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2277	METABASE	2277	Roy Paucek	\N	\N	Roy	Paucek	\N	\N	\N	GB	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2278	METABASE	2278	Ruthe Goldner	\N	\N	Ruthe	Goldner	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2279	METABASE	2279	Shad Bernhard	\N	\N	Shad	Bernhard	\N	\N	\N	JP	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_228	METABASE	228	Francesco Grant	\N	\N	Francesco	Grant	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2280	METABASE	2280	Josh Kilback	\N	\N	Josh	Kilback	\N	\N	\N	RO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2281	METABASE	2281	Trace Daniel	\N	\N	Trace	Daniel	\N	\N	\N	PH	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2282	METABASE	2282	Haylee Hessel	\N	\N	Haylee	Hessel	\N	\N	\N	NL	\N	Premium	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2283	METABASE	2283	Marcelina Jast	\N	\N	Marcelina	Jast	\N	\N	\N	AR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2284	METABASE	2284	Wendell Becker	\N	\N	Wendell	Becker	\N	\N	\N	IT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2285	METABASE	2285	Nestor Hansen	\N	\N	Nestor	Hansen	\N	\N	\N	US	\N	Basic	\N	173	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2286	METABASE	2286	Kayden Grady	\N	\N	Kayden	Grady	\N	\N	\N	US	\N	Basic	\N	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2287	METABASE	2287	Krystal Mills	\N	\N	Krystal	Mills	\N	\N	\N	AT	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2288	METABASE	2288	Sandrine Herman	\N	\N	Sandrine	Herman	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2289	METABASE	2289	Karl Hansen	\N	\N	Karl	Hansen	\N	\N	\N	AU	\N	Basic	Twitter	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_229	METABASE	229	Juanita Altenwerth	\N	\N	Juanita	Altenwerth	\N	\N	\N	RU	\N	Business	\N	503	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2290	METABASE	2290	Dayton Keebler	\N	\N	Dayton	Keebler	\N	\N	\N	CO	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2291	METABASE	2291	Maud Upton	\N	\N	Maud	Upton	\N	\N	\N	VN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2292	METABASE	2292	Dortha Bradtke	\N	\N	Dortha	Bradtke	\N	\N	\N	TR	\N	Basic	Twitter	87	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2293	METABASE	2293	Verdie Mueller	\N	\N	Verdie	Mueller	\N	\N	\N	RU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2294	METABASE	2294	Judd Tromp	\N	\N	Judd	Tromp	\N	\N	\N	US	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2295	METABASE	2295	Beryl Reichel	\N	\N	Beryl	Reichel	\N	\N	\N	GB	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2296	METABASE	2296	Nyah Considine	\N	\N	Nyah	Considine	\N	\N	\N	ES	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2297	METABASE	2297	Carson Rogahn	\N	\N	Carson	Rogahn	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2298	METABASE	2298	Aracely Jenkins	\N	\N	Aracely	Jenkins	\N	\N	\N	AM	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2299	METABASE	2299	Roselyn Bosco	\N	\N	Roselyn	Bosco	\N	\N	\N	BR	\N	Basic	Invite	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_23	METABASE	23	Alanis Kovacek	\N	\N	Alanis	Kovacek	\N	\N	\N	IT	\N	Premium	Facebook	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_230	METABASE	230	Nichole Stanton	\N	\N	Nichole	Stanton	\N	\N	\N	RU	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2300	METABASE	2300	Brody Kassulke	\N	\N	Brody	Kassulke	\N	\N	\N	IT	\N	Premium	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2301	METABASE	2301	Cordie Kutch	\N	\N	Cordie	Kutch	\N	\N	\N	ID	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2302	METABASE	2302	Fredrick Buckridge	\N	\N	Fredrick	Buckridge	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2303	METABASE	2303	Constance Stokes	\N	\N	Constance	Stokes	\N	\N	\N	IR	\N	Basic	Google	133	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2304	METABASE	2304	Ethan Hudson	\N	\N	Ethan	Hudson	\N	\N	\N	US	\N	Premium	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2305	METABASE	2305	Letha Koss	\N	\N	Letha	Koss	\N	\N	\N	IT	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2306	METABASE	2306	Nelda Rau	\N	\N	Nelda	Rau	\N	\N	\N	PH	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2307	METABASE	2307	Nils Gaylord	\N	\N	Nils	Gaylord	\N	\N	\N	BY	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2308	METABASE	2308	Lucienne Crist	\N	\N	Lucienne	Crist	\N	\N	\N	NL	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2309	METABASE	2309	Chadd Larson	\N	\N	Chadd	Larson	\N	\N	\N	DE	\N	Basic	Invite	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_231	METABASE	231	Verna Davis	\N	\N	Verna	Davis	\N	\N	\N	US	\N	Basic	\N	98	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2310	METABASE	2310	Jordon Runolfsson	\N	\N	Jordon	Runolfsson	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2311	METABASE	2311	Cordia Farrell	\N	\N	Cordia	Farrell	\N	\N	\N	DE	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2312	METABASE	2312	Rickey Jerde	\N	\N	Rickey	Jerde	\N	\N	\N	UA	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2313	METABASE	2313	Dalton Larson	\N	\N	Dalton	Larson	\N	\N	\N	CZ	\N	Basic	\N	43	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2314	METABASE	2314	Joanie Goodwin	\N	\N	Joanie	Goodwin	\N	\N	\N	AT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2315	METABASE	2315	Karson Corwin	\N	\N	Karson	Corwin	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2316	METABASE	2316	Jayden Kris	\N	\N	Jayden	Kris	\N	\N	\N	TH	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2317	METABASE	2317	Dawson McGlynn	\N	\N	Dawson	McGlynn	\N	\N	\N	TR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2318	METABASE	2318	Nels O'Connell	\N	\N	Nels	O'Connell	\N	\N	\N	HR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2319	METABASE	2319	Kaya Yundt	\N	\N	Kaya	Yundt	\N	\N	\N	RO	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_232	METABASE	232	Conner Windler	\N	\N	Conner	Windler	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2320	METABASE	2320	Laisha Conn	\N	\N	Laisha	Conn	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2321	METABASE	2321	Ardella Ernser	\N	\N	Ardella	Ernser	\N	\N	\N	IT	\N	Basic	Invite	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2322	METABASE	2322	Audra Hudson	\N	\N	Audra	Hudson	\N	\N	\N	AU	\N	Basic	\N	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2323	METABASE	2323	Nathan Kassulke	\N	\N	Nathan	Kassulke	\N	\N	\N	HR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2324	METABASE	2324	Cleta Cassin	\N	\N	Cleta	Cassin	\N	\N	\N	GB	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2325	METABASE	2325	Ransom Davis	\N	\N	Ransom	Davis	\N	\N	\N	MX	\N	Premium	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2326	METABASE	2326	Brisa Goodwin	\N	\N	Brisa	Goodwin	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2327	METABASE	2327	Brando Yundt	\N	\N	Brando	Yundt	\N	\N	\N	LC	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2328	METABASE	2328	Broderick Tillman	\N	\N	Broderick	Tillman	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2329	METABASE	2329	Lindsey Hegmann	\N	\N	Lindsey	Hegmann	\N	\N	\N	PH	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_233	METABASE	233	Shayne Crona	\N	\N	Shayne	Crona	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2330	METABASE	2330	Olen Watsica	\N	\N	Olen	Watsica	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2331	METABASE	2331	Trudie Armstrong	\N	\N	Trudie	Armstrong	\N	\N	\N	BR	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2332	METABASE	2332	Giuseppe Morar	\N	\N	Giuseppe	Morar	\N	\N	\N	DO	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2333	METABASE	2333	Annamae Lind	\N	\N	Annamae	Lind	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2334	METABASE	2334	Guido McKenzie	\N	\N	Guido	McKenzie	\N	\N	\N	IN	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2335	METABASE	2335	Eveline Gibson	\N	\N	Eveline	Gibson	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2336	METABASE	2336	Lawson Heidenreich	\N	\N	Lawson	Heidenreich	\N	\N	\N	US	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2337	METABASE	2337	Mario Cassin	\N	\N	Mario	Cassin	\N	\N	\N	SA	\N	Basic	Twitter	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2338	METABASE	2338	Adelia Heidenreich	\N	\N	Adelia	Heidenreich	\N	\N	\N	ES	\N	Basic	Google	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2339	METABASE	2339	Margarete Walsh	\N	\N	Margarete	Walsh	\N	\N	\N	GT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_234	METABASE	234	Jay Bruen	\N	\N	Jay	Bruen	\N	\N	\N	US	\N	Basic	Google	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2340	METABASE	2340	Monserrate Doyle	\N	\N	Monserrate	Doyle	\N	\N	\N	JP	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2341	METABASE	2341	Cristina Goldner	\N	\N	Cristina	Goldner	\N	\N	\N	DE	\N	Basic	Facebook	30	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2342	METABASE	2342	Amelie Crist	\N	\N	Amelie	Crist	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2343	METABASE	2343	Alta Hansen	\N	\N	Alta	Hansen	\N	\N	\N	CH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2344	METABASE	2344	Mabel Ward	\N	\N	Mabel	Ward	\N	\N	\N	GB	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2345	METABASE	2345	Peggie Aufderhar	\N	\N	Peggie	Aufderhar	\N	\N	\N	UA	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2346	METABASE	2346	Freddie Wisoky	\N	\N	Freddie	Wisoky	\N	\N	\N	CN	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2347	METABASE	2347	Stan Ernser	\N	\N	Stan	Ernser	\N	\N	\N	NL	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2348	METABASE	2348	Ward Ernser	\N	\N	Ward	Ernser	\N	\N	\N	ES	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2349	METABASE	2349	Kristina Herman	\N	\N	Kristina	Herman	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_235	METABASE	235	Clementina Johnston	\N	\N	Clementina	Johnston	\N	\N	\N	TZ	\N	Basic	Invite	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2350	METABASE	2350	Isadore Homenick	\N	\N	Isadore	Homenick	\N	\N	\N	AU	\N	Basic	Twitter	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2351	METABASE	2351	Evans Bins	\N	\N	Evans	Bins	\N	\N	\N	RO	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2352	METABASE	2352	Hudson Larkin	\N	\N	Hudson	Larkin	\N	\N	\N	HU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2353	METABASE	2353	Adrianna Larson	\N	\N	Adrianna	Larson	\N	\N	\N	CZ	\N	Basic	\N	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2354	METABASE	2354	Stanley Watsica	\N	\N	Stanley	Watsica	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2355	METABASE	2355	Eileen Hand	\N	\N	Eileen	Hand	\N	\N	\N	IN	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2356	METABASE	2356	Aliya Goodwin	\N	\N	Aliya	Goodwin	\N	\N	\N	DK	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2357	METABASE	2357	Dario Goldner	\N	\N	Dario	Goldner	\N	\N	\N	SV	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2358	METABASE	2358	Elisa Grady	\N	\N	Elisa	Grady	\N	\N	\N	RO	\N	Premium	Invite	186	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2359	METABASE	2359	Missouri Grimes	\N	\N	Missouri	Grimes	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_236	METABASE	236	Dolly Bernhard	\N	\N	Dolly	Bernhard	\N	\N	\N	CY	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2360	METABASE	2360	Sandra Maggio	\N	\N	Sandra	Maggio	\N	\N	\N	NO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2361	METABASE	2361	Consuelo Streich	\N	\N	Consuelo	Streich	\N	\N	\N	CA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2362	METABASE	2362	Alisa Schmitt	\N	\N	Alisa	Schmitt	\N	\N	\N	DE	\N	Basic	Invite	43	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2363	METABASE	2363	Sandy Feest	\N	\N	Sandy	Feest	\N	\N	\N	NL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2364	METABASE	2364	Krista Bechtelar	\N	\N	Krista	Bechtelar	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2365	METABASE	2365	Kristoffer Blanda	\N	\N	Kristoffer	Blanda	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2366	METABASE	2366	Lindsay Stark	\N	\N	Lindsay	Stark	\N	\N	\N	BR	\N	Basic	Google	34	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2367	METABASE	2367	Victoria Weissnat	\N	\N	Victoria	Weissnat	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2368	METABASE	2368	Mathilde Weissnat	\N	\N	Mathilde	Weissnat	\N	\N	\N	PH	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2369	METABASE	2369	Mylene Kessler	\N	\N	Mylene	Kessler	\N	\N	\N	PL	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_237	METABASE	237	Eli Haag	\N	\N	Eli	Haag	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2370	METABASE	2370	Evelyn Weissnat	\N	\N	Evelyn	Weissnat	\N	\N	\N	PT	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2371	METABASE	2371	Jensen Mills	\N	\N	Jensen	Mills	\N	\N	\N	NO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2372	METABASE	2372	Ellsworth West	\N	\N	Ellsworth	West	\N	\N	\N	UA	\N	Premium	\N	30	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2373	METABASE	2373	Erna Aufderhar	\N	\N	Erna	Aufderhar	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2374	METABASE	2374	Kris Schinner	\N	\N	Kris	Schinner	\N	\N	\N	IT	\N	Basic	\N	80	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2375	METABASE	2375	Filiberto Armstrong	\N	\N	Filiberto	Armstrong	\N	\N	\N	AU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2376	METABASE	2376	Annabelle Ernser	\N	\N	Annabelle	Ernser	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2377	METABASE	2377	Chadd Doyle	\N	\N	Chadd	Doyle	\N	\N	\N	JP	\N	Basic	Google	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2378	METABASE	2378	Tressie Boyle	\N	\N	Tressie	Boyle	\N	\N	\N	US	\N	Basic	Facebook	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2379	METABASE	2379	Buddy Hills	\N	\N	Buddy	Hills	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_238	METABASE	238	Deon Gerlach	\N	\N	Deon	Gerlach	\N	\N	\N	US	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2380	METABASE	2380	Candida Turcotte	\N	\N	Candida	Turcotte	\N	\N	\N	PH	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2381	METABASE	2381	Randy Blanda	\N	\N	Randy	Blanda	\N	\N	\N	TR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2382	METABASE	2382	Holden Huel	\N	\N	Holden	Huel	\N	\N	\N	RO	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2383	METABASE	2383	Darien Botsford	\N	\N	Darien	Botsford	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2384	METABASE	2384	Filomena Larson	\N	\N	Filomena	Larson	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2385	METABASE	2385	Colt Leuschke	\N	\N	Colt	Leuschke	\N	\N	\N	VN	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2386	METABASE	2386	Norwood Lind	\N	\N	Norwood	Lind	\N	\N	\N	MX	\N	Basic	Facebook	34	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2387	METABASE	2387	Haven Yundt	\N	\N	Haven	Yundt	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2388	METABASE	2388	Pansy Hermann	\N	\N	Pansy	Hermann	\N	\N	\N	US	\N	Basic	\N	93	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2389	METABASE	2389	Pearlie Heidenreich	\N	\N	Pearlie	Heidenreich	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_239	METABASE	239	Dalton Renner	\N	\N	Dalton	Renner	\N	\N	\N	US	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2390	METABASE	2390	Cassandra Nicolas	\N	\N	Cassandra	Nicolas	\N	\N	\N	ES	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2391	METABASE	2391	Alysson Cartwright	\N	\N	Alysson	Cartwright	\N	\N	\N	LT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2392	METABASE	2392	Nellie Wilderman	\N	\N	Nellie	Wilderman	\N	\N	\N	RU	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2393	METABASE	2393	Kelsi Douglas	\N	\N	Kelsi	Douglas	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2394	METABASE	2394	Alessandra Feeney	\N	\N	Alessandra	Feeney	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2395	METABASE	2395	Dereck Hudson	\N	\N	Dereck	Hudson	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2396	METABASE	2396	Aniyah Bins	\N	\N	Aniyah	Bins	\N	\N	\N	FR	\N	Basic	\N	85	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2397	METABASE	2397	Anastacio Jaskolski	\N	\N	Anastacio	Jaskolski	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2398	METABASE	2398	Patience Heidenreich	\N	\N	Patience	Heidenreich	\N	\N	\N	PT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2399	METABASE	2399	Hope Kassulke	\N	\N	Hope	Kassulke	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_24	METABASE	24	Greyson Boyle	\N	\N	Greyson	Boyle	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_240	METABASE	240	Stanley Stanton	\N	\N	Stanley	Stanton	\N	\N	\N	GB	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2400	METABASE	2400	Elyssa Cronin	\N	\N	Elyssa	Cronin	\N	\N	\N	ID	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2401	METABASE	2401	Roberto Armstrong	\N	\N	Roberto	Armstrong	\N	\N	\N	TR	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2402	METABASE	2402	Arnoldo Hessel	\N	\N	Arnoldo	Hessel	\N	\N	\N	DE	\N	Basic	Google	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2403	METABASE	2403	Jessika Kutch	\N	\N	Jessika	Kutch	\N	\N	\N	RU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2404	METABASE	2404	Jacques Wunsch	\N	\N	Jacques	Wunsch	\N	\N	\N	JM	\N	Basic	Twitter	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2405	METABASE	2405	Madisen Kunde	\N	\N	Madisen	Kunde	\N	\N	\N	GB	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2406	METABASE	2406	Aiyana Bradtke	\N	\N	Aiyana	Bradtke	\N	\N	\N	SA	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2407	METABASE	2407	Freddy Fay	\N	\N	Freddy	Fay	\N	\N	\N	RO	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2408	METABASE	2408	Cassidy Watsica	\N	\N	Cassidy	Watsica	\N	\N	\N	PL	\N	Basic	\N	219	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2409	METABASE	2409	Savannah Bradtke	\N	\N	Savannah	Bradtke	\N	\N	\N	FR	\N	Basic	Twitter	261	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_241	METABASE	241	Amanda Mosciski	\N	\N	Amanda	Mosciski	\N	\N	\N	DE	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2410	METABASE	2410	Consuelo Vandervort	\N	\N	Consuelo	Vandervort	\N	\N	\N	IT	\N	Basic	Twitter	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2411	METABASE	2411	Frederic Wehner	\N	\N	Frederic	Wehner	\N	\N	\N	IT	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2412	METABASE	2412	Alisa Morissette	\N	\N	Alisa	Morissette	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2413	METABASE	2413	Madalyn Leuschke	\N	\N	Madalyn	Leuschke	\N	\N	\N	JM	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2414	METABASE	2414	Jude Ward	\N	\N	Jude	Ward	\N	\N	\N	BR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2415	METABASE	2415	Heidi Glover	\N	\N	Heidi	Glover	\N	\N	\N	DE	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2416	METABASE	2416	Madyson Vandervort	\N	\N	Madyson	Vandervort	\N	\N	\N	RU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2417	METABASE	2417	Rickie Vandervort	\N	\N	Rickie	Vandervort	\N	\N	\N	AT	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2418	METABASE	2418	Mya Aufderhar	\N	\N	Mya	Aufderhar	\N	\N	\N	US	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2419	METABASE	2419	Trudie Muller	\N	\N	Trudie	Muller	\N	\N	\N	LC	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_242	METABASE	242	Laverne Stanton	\N	\N	Laverne	Stanton	\N	\N	\N	PH	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2420	METABASE	2420	Candace Greenholt	\N	\N	Candace	Greenholt	\N	\N	\N	BR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2421	METABASE	2421	Vida Crist	\N	\N	Vida	Crist	\N	\N	\N	PL	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2422	METABASE	2422	Kristina Little	\N	\N	Kristina	Little	\N	\N	\N	DE	\N	Basic	\N	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2423	METABASE	2423	Nova Leuschke	\N	\N	Nova	Leuschke	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2424	METABASE	2424	Vincenza Wunsch	\N	\N	Vincenza	Wunsch	\N	\N	\N	CO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2425	METABASE	2425	Grady Raynor	\N	\N	Grady	Raynor	\N	\N	\N	BR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2426	METABASE	2426	Elody Cormier	\N	\N	Elody	Cormier	\N	\N	\N	DE	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2427	METABASE	2427	Fleta Leuschke	\N	\N	Fleta	Leuschke	\N	\N	\N	US	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2428	METABASE	2428	Carrie Heidenreich	\N	\N	Carrie	Heidenreich	\N	\N	\N	PL	\N	Basic	Google	148	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2429	METABASE	2429	Ellsworth Watsica	\N	\N	Ellsworth	Watsica	\N	\N	\N	CH	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_243	METABASE	243	Amya Turner	\N	\N	Amya	Turner	\N	\N	\N	RU	\N	Basic	Google	52	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2430	METABASE	2430	Reid Reilly	\N	\N	Reid	Reilly	\N	\N	\N	KR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2431	METABASE	2431	Weldon McLaughlin	\N	\N	Weldon	McLaughlin	\N	\N	\N	SA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2432	METABASE	2432	Andres Kessler	\N	\N	Andres	Kessler	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2433	METABASE	2433	Pablo Lind	\N	\N	Pablo	Lind	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2434	METABASE	2434	Annetta Predovic	\N	\N	Annetta	Predovic	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2435	METABASE	2435	Zelda Beatty	\N	\N	Zelda	Beatty	\N	\N	\N	FR	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2436	METABASE	2436	Rae Lindgren	\N	\N	Rae	Lindgren	\N	\N	\N	US	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2437	METABASE	2437	Amiya Purdy	\N	\N	Amiya	Purdy	\N	\N	\N	GB	\N	Basic	Google	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2438	METABASE	2438	Itzel Wunsch	\N	\N	Itzel	Wunsch	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2439	METABASE	2439	Issac O'Kon	\N	\N	Issac	O'Kon	\N	\N	\N	BO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_244	METABASE	244	Shanie Spinka	\N	\N	Shanie	Spinka	\N	\N	\N	AU	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2440	METABASE	2440	Zoila Armstrong	\N	\N	Zoila	Armstrong	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2441	METABASE	2441	Tristin Lebsack	\N	\N	Tristin	Lebsack	\N	\N	\N	LA	\N	Basic	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2442	METABASE	2442	Hadley Watsica	\N	\N	Hadley	Watsica	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2443	METABASE	2443	Hassan Hansen	\N	\N	Hassan	Hansen	\N	\N	\N	ES	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2444	METABASE	2444	Carlotta Kessler	\N	\N	Carlotta	Kessler	\N	\N	\N	RO	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2445	METABASE	2445	Justina Kassulke	\N	\N	Justina	Kassulke	\N	\N	\N	ID	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2446	METABASE	2446	Anissa Schuppe	\N	\N	Anissa	Schuppe	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2447	METABASE	2447	Bobby Kessler	\N	\N	Bobby	Kessler	\N	\N	\N	VN	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2448	METABASE	2448	Chester Koepp	\N	\N	Chester	Koepp	\N	\N	\N	GB	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2449	METABASE	2449	Ella Koss	\N	\N	Ella	Koss	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_245	METABASE	245	Leanne Jacobs	\N	\N	Leanne	Jacobs	\N	\N	\N	TR	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2450	METABASE	2450	Ruthe Gibson	\N	\N	Ruthe	Gibson	\N	\N	\N	MG	\N	Basic	Facebook	32	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2451	METABASE	2451	Kenyon Watsica	\N	\N	Kenyon	Watsica	\N	\N	\N	US	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2452	METABASE	2452	Tressie Smitham	\N	\N	Tressie	Smitham	\N	\N	\N	IR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2453	METABASE	2453	Thaddeus Lindgren	\N	\N	Thaddeus	Lindgren	\N	\N	\N	CN	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2454	METABASE	2454	Trudie Koch	\N	\N	Trudie	Koch	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2455	METABASE	2455	Faustino Okuneva	\N	\N	Faustino	Okuneva	\N	\N	\N	IR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2456	METABASE	2456	Ryder Kunde	\N	\N	Ryder	Kunde	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2457	METABASE	2457	Dawson Kuvalis	\N	\N	Dawson	Kuvalis	\N	\N	\N	US	\N	Business	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2458	METABASE	2458	Maudie Leannon	\N	\N	Maudie	Leannon	\N	\N	\N	LU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2459	METABASE	2459	Elmore Weissnat	\N	\N	Elmore	Weissnat	\N	\N	\N	DE	\N	Basic	\N	186	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_246	METABASE	246	Ben Padberg	\N	\N	Ben	Padberg	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2460	METABASE	2460	Ellsworth Stamm	\N	\N	Ellsworth	Stamm	\N	\N	\N	IN	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2461	METABASE	2461	Angus Feest	\N	\N	Angus	Feest	\N	\N	\N	ET	\N	Basic	Facebook	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2462	METABASE	2462	Andrew Russel	\N	\N	Andrew	Russel	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2463	METABASE	2463	Rosario Bradtke	\N	\N	Rosario	Bradtke	\N	\N	\N	RS	\N	Basic	Twitter	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2464	METABASE	2464	Adriel Hudson	\N	\N	Adriel	Hudson	\N	\N	\N	AT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2465	METABASE	2465	Judd Hickle	\N	\N	Judd	Hickle	\N	\N	\N	MY	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2466	METABASE	2466	Vladimir Kuphal	\N	\N	Vladimir	Kuphal	\N	\N	\N	AU	\N	Premium	Twitter	148	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2467	METABASE	2467	Okey Botsford	\N	\N	Okey	Botsford	\N	\N	\N	FR	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2468	METABASE	2468	Marcelina Feest	\N	\N	Marcelina	Feest	\N	\N	\N	HU	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2469	METABASE	2469	Fredrick Gulgowski	\N	\N	Fredrick	Gulgowski	\N	\N	\N	IT	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_247	METABASE	247	Efrain Spencer	\N	\N	Efrain	Spencer	\N	\N	\N	CH	\N	Basic	Invite	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2470	METABASE	2470	Jesus Bins	\N	\N	Jesus	Bins	\N	\N	\N	GB	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2471	METABASE	2471	Aaron Hand	\N	\N	Aaron	Hand	\N	\N	\N	BE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2472	METABASE	2472	Krystel Boyle	\N	\N	Krystel	Boyle	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2473	METABASE	2473	Rupert Walsh	\N	\N	Rupert	Walsh	\N	\N	\N	GB	\N	Basic	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2474	METABASE	2474	Hudson Jacobi	\N	\N	Hudson	Jacobi	\N	\N	\N	RO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2475	METABASE	2475	Jessika Funk	\N	\N	Jessika	Funk	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2476	METABASE	2476	Magnolia Hansen	\N	\N	Magnolia	Hansen	\N	\N	\N	PT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2477	METABASE	2477	Estefania Leuschke	\N	\N	Estefania	Leuschke	\N	\N	\N	DE	\N	Basic	Facebook	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2478	METABASE	2478	Merl Yundt	\N	\N	Merl	Yundt	\N	\N	\N	US	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2479	METABASE	2479	Frederik Bosco	\N	\N	Frederik	Bosco	\N	\N	\N	PL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_248	METABASE	248	Columbus Swaniawski	\N	\N	Columbus	Swaniawski	\N	\N	\N	BR	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2480	METABASE	2480	Seth Goldner	\N	\N	Seth	Goldner	\N	\N	\N	GM	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2481	METABASE	2481	Enos Donnelly	\N	\N	Enos	Donnelly	\N	\N	\N	US	\N	Basic	Facebook	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2482	METABASE	2482	Grady Sipes	\N	\N	Grady	Sipes	\N	\N	\N	US	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2483	METABASE	2483	Henderson Hansen	\N	\N	Henderson	Hansen	\N	\N	\N	RU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2484	METABASE	2484	Hans Hagenes	\N	\N	Hans	Hagenes	\N	\N	\N	CH	\N	Basic	Facebook	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2485	METABASE	2485	Kris Yost	\N	\N	Kris	Yost	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2486	METABASE	2486	Amiya Considine	\N	\N	Amiya	Considine	\N	\N	\N	US	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2487	METABASE	2487	Anibal Hansen	\N	\N	Anibal	Hansen	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2488	METABASE	2488	Gladys Dare	\N	\N	Gladys	Dare	\N	\N	\N	JP	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2489	METABASE	2489	Alvah Wilderman	\N	\N	Alvah	Wilderman	\N	\N	\N	TH	\N	Basic	Twitter	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_249	METABASE	249	Rex Thiel	\N	\N	Rex	Thiel	\N	\N	\N	US	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2490	METABASE	2490	Bradley Green	\N	\N	Bradley	Green	\N	\N	\N	RU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2491	METABASE	2491	Jayden Hamill	\N	\N	Jayden	Hamill	\N	\N	\N	AT	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2492	METABASE	2492	Desiree Walsh	\N	\N	Desiree	Walsh	\N	\N	\N	IT	\N	Basic	Google	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2493	METABASE	2493	Broderick Lockman	\N	\N	Broderick	Lockman	\N	\N	\N	CZ	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2494	METABASE	2494	John Aufderhar	\N	\N	John	Aufderhar	\N	\N	\N	RO	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_2495	METABASE	2495	Anais Ward	\N	\N	Anais	Ward	\N	\N	\N	\N	\N	Business	\N	1	f	f	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_25	METABASE	25	Deontae Hansen	\N	\N	Deontae	Hansen	\N	\N	\N	GB	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_250	METABASE	250	Lon Friesen	\N	\N	Lon	Friesen	\N	\N	\N	SA	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_251	METABASE	251	Dahlia Turner	\N	\N	Dahlia	Turner	\N	\N	\N	MX	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_252	METABASE	252	Nia Franecki	\N	\N	Nia	Franecki	\N	\N	\N	US	\N	Basic	\N	56	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_253	METABASE	253	Quinten Goyette	\N	\N	Quinten	Goyette	\N	\N	\N	PL	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_254	METABASE	254	Jay Strosin	\N	\N	Jay	Strosin	\N	\N	\N	MM	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_255	METABASE	255	Rossie Mann	\N	\N	Rossie	Mann	\N	\N	\N	PH	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_256	METABASE	256	Jessy Spinka	\N	\N	Jessy	Spinka	\N	\N	\N	HN	\N	Basic	\N	63	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_257	METABASE	257	Alexandria Schowalter	\N	\N	Alexandria	Schowalter	\N	\N	\N	ES	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_258	METABASE	258	Sim Gusikowski	\N	\N	Sim	Gusikowski	\N	\N	\N	CZ	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_259	METABASE	259	Haylie Johns	\N	\N	Haylie	Johns	\N	\N	\N	AR	\N	Basic	Google	80	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_26	METABASE	26	Hayley Heaney	\N	\N	Hayley	Heaney	\N	\N	\N	RS	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_260	METABASE	260	Blanche Rau	\N	\N	Blanche	Rau	\N	\N	\N	IT	\N	Basic	Facebook	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_261	METABASE	261	Glen Johnston	\N	\N	Glen	Johnston	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_262	METABASE	262	Arnoldo Cronin	\N	\N	Arnoldo	Cronin	\N	\N	\N	HN	\N	Basic	Google	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_263	METABASE	263	Ava Jaskolski	\N	\N	Ava	Jaskolski	\N	\N	\N	IT	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_264	METABASE	264	Jennings Ferry	\N	\N	Jennings	Ferry	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_265	METABASE	265	Keely O'Conner	\N	\N	Keely	O'Conner	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_266	METABASE	266	Jensen Swaniawski	\N	\N	Jensen	Swaniawski	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_267	METABASE	267	Rogelio Turner	\N	\N	Rogelio	Turner	\N	\N	\N	AU	\N	Business	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_268	METABASE	268	Leonie Crona	\N	\N	Leonie	Crona	\N	\N	\N	BR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_269	METABASE	269	Dawn Goldner	\N	\N	Dawn	Goldner	\N	\N	\N	GB	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_27	METABASE	27	Paula Reinger	\N	\N	Paula	Reinger	\N	\N	\N	RO	\N	Basic	Google	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_270	METABASE	270	Vernice Schmitt	\N	\N	Vernice	Schmitt	\N	\N	\N	RO	\N	Basic	\N	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_271	METABASE	271	Tre Balistreri	\N	\N	Tre	Balistreri	\N	\N	\N	RU	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_272	METABASE	272	Heber Turner	\N	\N	Heber	Turner	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_273	METABASE	273	Kim Grant	\N	\N	Kim	Grant	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_274	METABASE	274	Lou Runte	\N	\N	Lou	Runte	\N	\N	\N	BO	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_275	METABASE	275	Andy Skiles	\N	\N	Andy	Skiles	\N	\N	\N	GB	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_276	METABASE	276	Kennedy Kunde	\N	\N	Kennedy	Kunde	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_277	METABASE	277	Crystel Mann	\N	\N	Crystel	Mann	\N	\N	\N	ID	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_278	METABASE	278	Zoe Bernhard	\N	\N	Zoe	Bernhard	\N	\N	\N	RO	\N	Basic	Twitter	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_279	METABASE	279	Joanne Osinski	\N	\N	Joanne	Osinski	\N	\N	\N	ZA	\N	Basic	Invite	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_28	METABASE	28	Arnaldo Rau	\N	\N	Arnaldo	Rau	\N	\N	\N	RO	\N	Basic	Google	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_280	METABASE	280	Earnestine Lockman	\N	\N	Earnestine	Lockman	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_281	METABASE	281	Liliane Blanda	\N	\N	Liliane	Blanda	\N	\N	\N	RU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_282	METABASE	282	Gwen Ruecker	\N	\N	Gwen	Ruecker	\N	\N	\N	TR	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_283	METABASE	283	Andy Schmeler	\N	\N	Andy	Schmeler	\N	\N	\N	AU	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_284	METABASE	284	Brenna Hudson	\N	\N	Brenna	Hudson	\N	\N	\N	NL	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_285	METABASE	285	Nicklaus Hahn	\N	\N	Nicklaus	Hahn	\N	\N	\N	TH	\N	Basic	\N	74	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_286	METABASE	286	Prince Quitzon	\N	\N	Prince	Quitzon	\N	\N	\N	JP	\N	Basic	Facebook	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_287	METABASE	287	Sibyl Hettinger	\N	\N	Sibyl	Hettinger	\N	\N	\N	SK	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_288	METABASE	288	Quentin Dickinson	\N	\N	Quentin	Dickinson	\N	\N	\N	FR	\N	Premium	Twitter	335	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_289	METABASE	289	Alene Abernathy	\N	\N	Alene	Abernathy	\N	\N	\N	US	\N	Basic	\N	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_29	METABASE	29	Emanuel Schmeler	\N	\N	Emanuel	Schmeler	\N	\N	\N	LC	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_290	METABASE	290	Floyd Lehner	\N	\N	Floyd	Lehner	\N	\N	\N	AT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_291	METABASE	291	Max Reynolds	\N	\N	Max	Reynolds	\N	\N	\N	FR	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_292	METABASE	292	Francesca Hammes	\N	\N	Francesca	Hammes	\N	\N	\N	FR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_293	METABASE	293	Alexa Marvin	\N	\N	Alexa	Marvin	\N	\N	\N	ES	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_294	METABASE	294	Sibyl Bernier	\N	\N	Sibyl	Bernier	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_295	METABASE	295	Libby Ledner	\N	\N	Libby	Ledner	\N	\N	\N	ES	\N	Business	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_296	METABASE	296	Nichole Ledner	\N	\N	Nichole	Ledner	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_297	METABASE	297	Aliyah Pfannerstill	\N	\N	Aliyah	Pfannerstill	\N	\N	\N	IT	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_298	METABASE	298	Neil O'Connell	\N	\N	Neil	O'Connell	\N	\N	\N	DE	\N	Basic	Google	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_299	METABASE	299	Cornell Connelly	\N	\N	Cornell	Connelly	\N	\N	\N	HU	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_3	METABASE	3	Princess Tillman	\N	\N	Princess	Tillman	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_30	METABASE	30	Alfred Kihn	\N	\N	Alfred	Kihn	\N	\N	\N	IR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_300	METABASE	300	Stanford Feest	\N	\N	Stanford	Feest	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_301	METABASE	301	Tamara Pagac	\N	\N	Tamara	Pagac	\N	\N	\N	RO	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_302	METABASE	302	Lexie Franecki	\N	\N	Lexie	Franecki	\N	\N	\N	US	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_303	METABASE	303	Annamarie Block	\N	\N	Annamarie	Block	\N	\N	\N	TH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_304	METABASE	304	Emmalee Goodwin	\N	\N	Emmalee	Goodwin	\N	\N	\N	PT	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_305	METABASE	305	Adrain Kilback	\N	\N	Adrain	Kilback	\N	\N	\N	RO	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_306	METABASE	306	Madalyn Roob	\N	\N	Madalyn	Roob	\N	\N	\N	IT	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_307	METABASE	307	Francesca Gleason	\N	\N	Francesca	Gleason	\N	\N	\N	IN	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_308	METABASE	308	Adonis Will	\N	\N	Adonis	Will	\N	\N	\N	MX	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_309	METABASE	309	Lyda Predovic	\N	\N	Lyda	Predovic	\N	\N	\N	TR	\N	Basic	\N	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_31	METABASE	31	Cassidy Cronin	\N	\N	Cassidy	Cronin	\N	\N	\N	FR	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_310	METABASE	310	Susanna Luettgen	\N	\N	Susanna	Luettgen	\N	\N	\N	MX	\N	Basic	Google	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_311	METABASE	311	Dana Kozey	\N	\N	Dana	Kozey	\N	\N	\N	US	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_312	METABASE	312	Connie Davis	\N	\N	Connie	Davis	\N	\N	\N	RO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_313	METABASE	313	Adan Weissnat	\N	\N	Adan	Weissnat	\N	\N	\N	ID	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_314	METABASE	314	Evalyn Moen	\N	\N	Evalyn	Moen	\N	\N	\N	RO	\N	Basic	Invite	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_315	METABASE	315	Van Windler	\N	\N	Van	Windler	\N	\N	\N	FR	\N	Basic	Facebook	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_316	METABASE	316	Joanie Cruickshank	\N	\N	Joanie	Cruickshank	\N	\N	\N	IN	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_317	METABASE	317	Quentin Cummings	\N	\N	Quentin	Cummings	\N	\N	\N	ES	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_318	METABASE	318	Destiney Swaniawski	\N	\N	Destiney	Swaniawski	\N	\N	\N	IR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_319	METABASE	319	Maye Toy	\N	\N	Maye	Toy	\N	\N	\N	US	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_32	METABASE	32	Kirsten Kihn	\N	\N	Kirsten	Kihn	\N	\N	\N	PH	\N	Basic	Invite	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_320	METABASE	320	Ethan Kling	\N	\N	Ethan	Kling	\N	\N	\N	JP	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_321	METABASE	321	Trenton Batz	\N	\N	Trenton	Batz	\N	\N	\N	CH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_322	METABASE	322	Aliyah Stracke	\N	\N	Aliyah	Stracke	\N	\N	\N	CO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_323	METABASE	323	Brant Dare	\N	\N	Brant	Dare	\N	\N	\N	FR	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_324	METABASE	324	Edwin Spencer	\N	\N	Edwin	Spencer	\N	\N	\N	RO	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_325	METABASE	325	Janae Bahringer	\N	\N	Janae	Bahringer	\N	\N	\N	PH	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_326	METABASE	326	Archibald Von	\N	\N	Archibald	Von	\N	\N	\N	FR	\N	Basic	Invite	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_327	METABASE	327	Nels Heaney	\N	\N	Nels	Heaney	\N	\N	\N	BG	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_328	METABASE	328	Quentin Leannon	\N	\N	Quentin	Leannon	\N	\N	\N	KR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_329	METABASE	329	Tatyana Steuber	\N	\N	Tatyana	Steuber	\N	\N	\N	LV	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_33	METABASE	33	Jaunita Wehner	\N	\N	Jaunita	Wehner	\N	\N	\N	PH	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_330	METABASE	330	Durward Ledner	\N	\N	Durward	Ledner	\N	\N	\N	HN	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_331	METABASE	331	Oda Brakus	\N	\N	Oda	Brakus	\N	\N	\N	RO	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_332	METABASE	332	Macy Olson	\N	\N	Macy	Olson	\N	\N	\N	FR	\N	Business	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_333	METABASE	333	Devyn Kuvalis	\N	\N	Devyn	Kuvalis	\N	\N	\N	LC	\N	Basic	Invite	93	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_334	METABASE	334	Stan Hessel	\N	\N	Stan	Hessel	\N	\N	\N	PH	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_335	METABASE	335	Hugh Hahn	\N	\N	Hugh	Hahn	\N	\N	\N	RU	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_336	METABASE	336	Rafael Zulauf	\N	\N	Rafael	Zulauf	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_337	METABASE	337	Kaleb Swaniawski	\N	\N	Kaleb	Swaniawski	\N	\N	\N	GR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_338	METABASE	338	Bernadine Gorczany	\N	\N	Bernadine	Gorczany	\N	\N	\N	AT	\N	Business	\N	16	f	f	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_339	METABASE	339	Keon Cartwright	\N	\N	Keon	Cartwright	\N	\N	\N	AR	\N	Business	Twitter	47	t	t	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_34	METABASE	34	Florence Raynor	\N	\N	Florence	Raynor	\N	\N	\N	UA	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_340	METABASE	340	Elsa Klocko	\N	\N	Elsa	Klocko	\N	\N	\N	IE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_341	METABASE	341	Lysanne Ernser	\N	\N	Lysanne	Ernser	\N	\N	\N	IT	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_342	METABASE	342	Coralie Koss	\N	\N	Coralie	Koss	\N	\N	\N	DK	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_343	METABASE	343	Lysanne Brekke	\N	\N	Lysanne	Brekke	\N	\N	\N	AT	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_344	METABASE	344	Rodger Bogan	\N	\N	Rodger	Bogan	\N	\N	\N	RU	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_345	METABASE	345	Immanuel Roberts	\N	\N	Immanuel	Roberts	\N	\N	\N	AU	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_346	METABASE	346	Reva Hermann	\N	\N	Reva	Hermann	\N	\N	\N	PH	\N	Basic	\N	52	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_347	METABASE	347	Elva Bailey	\N	\N	Elva	Bailey	\N	\N	\N	RU	\N	Basic	Google	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_348	METABASE	348	Mina Reynolds	\N	\N	Mina	Reynolds	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_349	METABASE	349	Zena Schowalter	\N	\N	Zena	Schowalter	\N	\N	\N	CL	\N	Basic	Invite	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_35	METABASE	35	Jettie Rau	\N	\N	Jettie	Rau	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_350	METABASE	350	Micaela Kerluke	\N	\N	Micaela	Kerluke	\N	\N	\N	PT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_351	METABASE	351	Freida O'Hara	\N	\N	Freida	O'Hara	\N	\N	\N	BE	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_352	METABASE	352	Johathan Schaden	\N	\N	Johathan	Schaden	\N	\N	\N	PK	\N	Basic	Twitter	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_353	METABASE	353	Meta Schimmel	\N	\N	Meta	Schimmel	\N	\N	\N	AT	\N	Basic	Invite	56	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_354	METABASE	354	Donato Bednar	\N	\N	Donato	Bednar	\N	\N	\N	MX	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_355	METABASE	355	Samantha Nolan	\N	\N	Samantha	Nolan	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_356	METABASE	356	Lila Rosenbaum	\N	\N	Lila	Rosenbaum	\N	\N	\N	GB	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_357	METABASE	357	Royal Jast	\N	\N	Royal	Jast	\N	\N	\N	MX	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_358	METABASE	358	Vicente O'Hara	\N	\N	Vicente	O'Hara	\N	\N	\N	GB	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_359	METABASE	359	Sarah Dach	\N	\N	Sarah	Dach	\N	\N	\N	MX	\N	Premium	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_36	METABASE	36	Bernhard Bailey	\N	\N	Bernhard	Bailey	\N	\N	\N	US	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_360	METABASE	360	Amparo Fadel	\N	\N	Amparo	Fadel	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_361	METABASE	361	Emmanuelle Cruickshank	\N	\N	Emmanuelle	Cruickshank	\N	\N	\N	MK	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_362	METABASE	362	Hilma Wyman	\N	\N	Hilma	Wyman	\N	\N	\N	TR	\N	Basic	\N	34	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_363	METABASE	363	Tavares Metz	\N	\N	Tavares	Metz	\N	\N	\N	CO	\N	Premium	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_364	METABASE	364	Milan Ritchie	\N	\N	Milan	Ritchie	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_365	METABASE	365	Janelle O'Hara	\N	\N	Janelle	O'Hara	\N	\N	\N	AU	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_366	METABASE	366	Simone Schaefer	\N	\N	Simone	Schaefer	\N	\N	\N	UZ	\N	Basic	Twitter	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_367	METABASE	367	Horace Schowalter	\N	\N	Horace	Schowalter	\N	\N	\N	DE	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_368	METABASE	368	Jabari Gleason	\N	\N	Jabari	Gleason	\N	\N	\N	SI	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_369	METABASE	369	Elza Williamson	\N	\N	Elza	Williamson	\N	\N	\N	DE	\N	Basic	Google	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_37	METABASE	37	Gideon Conn	\N	\N	Gideon	Conn	\N	\N	\N	US	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_370	METABASE	370	Geraldine Kiehn	\N	\N	Geraldine	Kiehn	\N	\N	\N	AT	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_371	METABASE	371	Armani Kulas	\N	\N	Armani	Kulas	\N	\N	\N	AR	\N	Premium	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_372	METABASE	372	Kasandra Leffler	\N	\N	Kasandra	Leffler	\N	\N	\N	AT	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_373	METABASE	373	Kyra Schulist	\N	\N	Kyra	Schulist	\N	\N	\N	PE	\N	Premium	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_374	METABASE	374	Amya Marquardt	\N	\N	Amya	Marquardt	\N	\N	\N	ID	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_375	METABASE	375	Alda Kuhic	\N	\N	Alda	Kuhic	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_376	METABASE	376	Meta Rogahn	\N	\N	Meta	Rogahn	\N	\N	\N	TR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_377	METABASE	377	Desmond Monahan	\N	\N	Desmond	Monahan	\N	\N	\N	FR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_378	METABASE	378	Jana Hilll	\N	\N	Jana	Hilll	\N	\N	\N	BR	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_379	METABASE	379	Nolan Lebsack	\N	\N	Nolan	Lebsack	\N	\N	\N	RU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_38	METABASE	38	Marcelina Kuhn	\N	\N	Marcelina	Kuhn	\N	\N	\N	RO	\N	Basic	Facebook	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_380	METABASE	380	Taya Morar	\N	\N	Taya	Morar	\N	\N	\N	US	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_381	METABASE	381	Pearl Kovacek	\N	\N	Pearl	Kovacek	\N	\N	\N	DE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_382	METABASE	382	Anna Price	\N	\N	Anna	Price	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_383	METABASE	383	Mafalda Medhurst	\N	\N	Mafalda	Medhurst	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_384	METABASE	384	Susanna Will	\N	\N	Susanna	Will	\N	\N	\N	BR	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_385	METABASE	385	Roxane Little	\N	\N	Roxane	Little	\N	\N	\N	CH	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_386	METABASE	386	Wilmer Schaefer	\N	\N	Wilmer	Schaefer	\N	\N	\N	GB	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_387	METABASE	387	Zora Schamberger	\N	\N	Zora	Schamberger	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_388	METABASE	388	Zane Romaguera	\N	\N	Zane	Romaguera	\N	\N	\N	US	\N	Basic	Invite	668	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_389	METABASE	389	Emmalee Bruen	\N	\N	Emmalee	Bruen	\N	\N	\N	HR	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_39	METABASE	39	Myrtle Johns	\N	\N	Myrtle	Johns	\N	\N	\N	SE	\N	Basic	Facebook	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_390	METABASE	390	Rosalinda Stamm	\N	\N	Rosalinda	Stamm	\N	\N	\N	CN	\N	Basic	Facebook	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_391	METABASE	391	Camila Pagac	\N	\N	Camila	Pagac	\N	\N	\N	GB	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_392	METABASE	392	Viva Zboncak	\N	\N	Viva	Zboncak	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_393	METABASE	393	Aglae Rutherford	\N	\N	Aglae	Rutherford	\N	\N	\N	NO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_394	METABASE	394	Aida Schneider	\N	\N	Aida	Schneider	\N	\N	\N	RO	\N	Premium	Facebook	104	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_395	METABASE	395	Lyda Schulist	\N	\N	Lyda	Schulist	\N	\N	\N	BR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_396	METABASE	396	Lisette Wiza	\N	\N	Lisette	Wiza	\N	\N	\N	TR	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_397	METABASE	397	Natasha Abbott	\N	\N	Natasha	Abbott	\N	\N	\N	MX	\N	Premium	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_398	METABASE	398	Makayla Feest	\N	\N	Makayla	Feest	\N	\N	\N	RO	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_399	METABASE	399	Orval Zieme	\N	\N	Orval	Zieme	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_4	METABASE	4	Jeramie Pfannerstill	\N	\N	Jeramie	Pfannerstill	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_40	METABASE	40	Marjory Bogisich	\N	\N	Marjory	Bogisich	\N	\N	\N	BR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_400	METABASE	400	Jena Schoen	\N	\N	Jena	Schoen	\N	\N	\N	FR	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_401	METABASE	401	Reta Mosciski	\N	\N	Reta	Mosciski	\N	\N	\N	RO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_402	METABASE	402	Jana McKenzie	\N	\N	Jana	McKenzie	\N	\N	\N	US	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_403	METABASE	403	Jabari Schimmel	\N	\N	Jabari	Schimmel	\N	\N	\N	RU	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_404	METABASE	404	Donny Murazik	\N	\N	Donny	Murazik	\N	\N	\N	LK	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_405	METABASE	405	Quentin Morar	\N	\N	Quentin	Morar	\N	\N	\N	CZ	\N	Basic	Facebook	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_406	METABASE	406	Sydnie Labadie	\N	\N	Sydnie	Labadie	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_407	METABASE	407	Otis Murazik	\N	\N	Otis	Murazik	\N	\N	\N	TH	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_408	METABASE	408	Amy Nolan	\N	\N	Amy	Nolan	\N	\N	\N	NL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_409	METABASE	409	Dena Schiller	\N	\N	Dena	Schiller	\N	\N	\N	ES	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_41	METABASE	41	Floyd Jacobson	\N	\N	Floyd	Jacobson	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_410	METABASE	410	Angeline Romaguera	\N	\N	Angeline	Romaguera	\N	\N	\N	HR	\N	Basic	Google	58	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_411	METABASE	411	Jamar Miller	\N	\N	Jamar	Miller	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_412	METABASE	412	Lempi Wyman	\N	\N	Lempi	Wyman	\N	\N	\N	AF	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_413	METABASE	413	Nova Collins	\N	\N	Nova	Collins	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_414	METABASE	414	Rosalee Reinger	\N	\N	Rosalee	Reinger	\N	\N	\N	BR	\N	Basic	Twitter	98	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_415	METABASE	415	Orlo Romaguera	\N	\N	Orlo	Romaguera	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_416	METABASE	416	Miracle Erdman	\N	\N	Miracle	Erdman	\N	\N	\N	PL	\N	Basic	Facebook	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_417	METABASE	417	Maryam Nolan	\N	\N	Maryam	Nolan	\N	\N	\N	IN	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_418	METABASE	418	Gerard Ruecker	\N	\N	Gerard	Ruecker	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_419	METABASE	419	Brianne Jacobson	\N	\N	Brianne	Jacobson	\N	\N	\N	RO	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_42	METABASE	42	Gunner Graham	\N	\N	Gunner	Graham	\N	\N	\N	MX	\N	Basic	Google	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_420	METABASE	420	Ricky Kulas	\N	\N	Ricky	Kulas	\N	\N	\N	IT	\N	Basic	Invite	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_421	METABASE	421	August Wiza	\N	\N	August	Wiza	\N	\N	\N	MX	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_422	METABASE	422	Eleazar Satterfield	\N	\N	Eleazar	Satterfield	\N	\N	\N	CZ	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_423	METABASE	423	Lazaro Keebler	\N	\N	Lazaro	Keebler	\N	\N	\N	TR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_424	METABASE	424	Hobart Dickinson	\N	\N	Hobart	Dickinson	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_425	METABASE	425	Leta Heidenreich	\N	\N	Leta	Heidenreich	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_426	METABASE	426	Alva Conroy	\N	\N	Alva	Conroy	\N	\N	\N	PL	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_427	METABASE	427	Diamond Kuvalis	\N	\N	Diamond	Kuvalis	\N	\N	\N	BR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_428	METABASE	428	Monroe Kulas	\N	\N	Monroe	Kulas	\N	\N	\N	RO	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_429	METABASE	429	Kaya Satterfield	\N	\N	Kaya	Satterfield	\N	\N	\N	KE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_43	METABASE	43	Antwan Grant	\N	\N	Antwan	Grant	\N	\N	\N	PL	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_430	METABASE	430	Ronaldo Willms	\N	\N	Ronaldo	Willms	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_431	METABASE	431	Aidan Jacobi	\N	\N	Aidan	Jacobi	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_432	METABASE	432	Rosamond Wiegand	\N	\N	Rosamond	Wiegand	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_433	METABASE	433	Makayla Ondricka	\N	\N	Makayla	Ondricka	\N	\N	\N	ES	\N	Basic	Twitter	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_434	METABASE	434	Muhammad Waters	\N	\N	Muhammad	Waters	\N	\N	\N	TO	\N	Basic	Google	78	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_435	METABASE	435	Triston Kuvalis	\N	\N	Triston	Kuvalis	\N	\N	\N	PH	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_436	METABASE	436	Jamal Bayer	\N	\N	Jamal	Bayer	\N	\N	\N	UA	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_437	METABASE	437	Amely Wyman	\N	\N	Amely	Wyman	\N	\N	\N	PL	\N	Basic	Google	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_438	METABASE	438	Camryn Murazik	\N	\N	Camryn	Murazik	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_439	METABASE	439	Kaia Waters	\N	\N	Kaia	Waters	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_44	METABASE	44	Ryan O'Keefe	\N	\N	Ryan	O'Keefe	\N	\N	\N	US	\N	Basic	\N	52	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_440	METABASE	440	Breanna Strosin	\N	\N	Breanna	Strosin	\N	\N	\N	CH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_441	METABASE	441	Armand Cronin	\N	\N	Armand	Cronin	\N	\N	\N	FR	\N	Basic	Facebook	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_442	METABASE	442	George Wiza	\N	\N	George	Wiza	\N	\N	\N	AU	\N	Basic	Invite	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_443	METABASE	443	Dina Hand	\N	\N	Dina	Hand	\N	\N	\N	BR	\N	Basic	\N	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_444	METABASE	444	Luna Nienow	\N	\N	Luna	Nienow	\N	\N	\N	MY	\N	Basic	Invite	23	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_445	METABASE	445	Andreanne Wiza	\N	\N	Andreanne	Wiza	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_446	METABASE	446	Orion Romaguera	\N	\N	Orion	Romaguera	\N	\N	\N	US	\N	Basic	Invite	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_447	METABASE	447	Martin Monahan	\N	\N	Martin	Monahan	\N	\N	\N	US	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_448	METABASE	448	Savion Bogan	\N	\N	Savion	Bogan	\N	\N	\N	AT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_449	METABASE	449	Efrain Trantow	\N	\N	Efrain	Trantow	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_45	METABASE	45	Leanne Orn	\N	\N	Leanne	Orn	\N	\N	\N	PL	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_450	METABASE	450	Lillian Wiza	\N	\N	Lillian	Wiza	\N	\N	\N	FR	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_451	METABASE	451	Kyra Lynch	\N	\N	Kyra	Lynch	\N	\N	\N	PE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_452	METABASE	452	Rowan Weimann	\N	\N	Rowan	Weimann	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_453	METABASE	453	Joel Wyman	\N	\N	Joel	Wyman	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_454	METABASE	454	Oscar Olson	\N	\N	Oscar	Olson	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_455	METABASE	455	Anjali Parker	\N	\N	Anjali	Parker	\N	\N	\N	AU	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_456	METABASE	456	Samara Hegmann	\N	\N	Samara	Hegmann	\N	\N	\N	PH	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_457	METABASE	457	Muhammad Kub	\N	\N	Muhammad	Kub	\N	\N	\N	RO	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_458	METABASE	458	Thea Gottlieb	\N	\N	Thea	Gottlieb	\N	\N	\N	GR	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_459	METABASE	459	Kaya Schoen	\N	\N	Kaya	Schoen	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_46	METABASE	46	Maeve Bednar	\N	\N	Maeve	Bednar	\N	\N	\N	IN	\N	Basic	Facebook	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_460	METABASE	460	Johathan Ebert	\N	\N	Johathan	Ebert	\N	\N	\N	ES	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_461	METABASE	461	Elva Herman	\N	\N	Elva	Herman	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_462	METABASE	462	Irma Waters	\N	\N	Irma	Waters	\N	\N	\N	BR	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_463	METABASE	463	Lavada Kuhic	\N	\N	Lavada	Kuhic	\N	\N	\N	DE	\N	Basic	Invite	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_464	METABASE	464	Cierra Kuvalis	\N	\N	Cierra	Kuvalis	\N	\N	\N	FR	\N	Basic	Twitter	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_465	METABASE	465	Muriel Labadie	\N	\N	Muriel	Labadie	\N	\N	\N	RO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_466	METABASE	466	Willis Kuvalis	\N	\N	Willis	Kuvalis	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_467	METABASE	467	Zula Boehm	\N	\N	Zula	Boehm	\N	\N	\N	TH	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_468	METABASE	468	Ezekiel McLaughlin	\N	\N	Ezekiel	McLaughlin	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_469	METABASE	469	Aida Cruickshank	\N	\N	Aida	Cruickshank	\N	\N	\N	PH	\N	Basic	Twitter	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_47	METABASE	47	Brant Klein	\N	\N	Brant	Klein	\N	\N	\N	HN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_470	METABASE	470	Hipolito Kulas	\N	\N	Hipolito	Kulas	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_471	METABASE	471	Sarai Deckow	\N	\N	Sarai	Deckow	\N	\N	\N	IT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_472	METABASE	472	Lafayette Kertzmann	\N	\N	Lafayette	Kertzmann	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_473	METABASE	473	Thad Kuvalis	\N	\N	Thad	Kuvalis	\N	\N	\N	RO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_474	METABASE	474	Ladarius Hyatt	\N	\N	Ladarius	Hyatt	\N	\N	\N	DE	\N	Basic	Google	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_475	METABASE	475	Aidan Rodriguez	\N	\N	Aidan	Rodriguez	\N	\N	\N	RU	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_476	METABASE	476	Jamar Hickle	\N	\N	Jamar	Hickle	\N	\N	\N	CO	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_477	METABASE	477	Hollie Schaefer	\N	\N	Hollie	Schaefer	\N	\N	\N	DK	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_478	METABASE	478	Aidan Hagenes	\N	\N	Aidan	Hagenes	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_479	METABASE	479	Rafael Nikolaus	\N	\N	Rafael	Nikolaus	\N	\N	\N	ZA	\N	Basic	Facebook	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_48	METABASE	48	Jannie Balistreri	\N	\N	Jannie	Balistreri	\N	\N	\N	FR	\N	Basic	Google	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_480	METABASE	480	Oswaldo Heaney	\N	\N	Oswaldo	Heaney	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_481	METABASE	481	Yessenia Pagac	\N	\N	Yessenia	Pagac	\N	\N	\N	MX	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_482	METABASE	482	Bulah Eichmann	\N	\N	Bulah	Eichmann	\N	\N	\N	PH	\N	Basic	Invite	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_483	METABASE	483	Shyanne Wyman	\N	\N	Shyanne	Wyman	\N	\N	\N	MX	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_484	METABASE	484	Donavon Lowe	\N	\N	Donavon	Lowe	\N	\N	\N	FR	\N	Basic	Google	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_485	METABASE	485	Stan Schaefer	\N	\N	Stan	Schaefer	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_486	METABASE	486	Manley Bogan	\N	\N	Manley	Bogan	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_487	METABASE	487	Lazaro Luettgen	\N	\N	Lazaro	Luettgen	\N	\N	\N	DE	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_488	METABASE	488	Micaela Ebert	\N	\N	Micaela	Ebert	\N	\N	\N	FR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_489	METABASE	489	Robin Rohan	\N	\N	Robin	Rohan	\N	\N	\N	BR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_49	METABASE	49	Donny Terry	\N	\N	Donny	Terry	\N	\N	\N	HU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_490	METABASE	490	Briana Koss	\N	\N	Briana	Koss	\N	\N	\N	AU	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_491	METABASE	491	Oceane Runte	\N	\N	Oceane	Runte	\N	\N	\N	RO	\N	Basic	Twitter	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_492	METABASE	492	Ethan Rutherford	\N	\N	Ethan	Rutherford	\N	\N	\N	US	\N	Basic	Facebook	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_493	METABASE	493	Loma Monahan	\N	\N	Loma	Monahan	\N	\N	\N	IT	\N	Basic	\N	69	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_494	METABASE	494	Ignatius Watsica	\N	\N	Ignatius	Watsica	\N	\N	\N	NL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_495	METABASE	495	Maddison Morar	\N	\N	Maddison	Morar	\N	\N	\N	ES	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_496	METABASE	496	Loyal Wintheiser	\N	\N	Loyal	Wintheiser	\N	\N	\N	IT	\N	Basic	\N	23	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_497	METABASE	497	Reyes Kulas	\N	\N	Reyes	Kulas	\N	\N	\N	SE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_498	METABASE	498	Letha Murazik	\N	\N	Letha	Murazik	\N	\N	\N	FR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_499	METABASE	499	Madaline Hilll	\N	\N	Madaline	Hilll	\N	\N	\N	PH	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_5	METABASE	5	Clay Johnston	\N	\N	Clay	Johnston	\N	\N	\N	PH	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_50	METABASE	50	Neal Crona	\N	\N	Neal	Crona	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_500	METABASE	500	Demario Hand	\N	\N	Demario	Hand	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_501	METABASE	501	Arely Zulauf	\N	\N	Arely	Zulauf	\N	\N	\N	ES	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_502	METABASE	502	Donald Dietrich	\N	\N	Donald	Dietrich	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_503	METABASE	503	Veda Raynor	\N	\N	Veda	Raynor	\N	\N	\N	DE	\N	Basic	\N	74	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_504	METABASE	504	Stuart Wintheiser	\N	\N	Stuart	Wintheiser	\N	\N	\N	IT	\N	Basic	Facebook	155	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_505	METABASE	505	Meta Koelpin	\N	\N	Meta	Koelpin	\N	\N	\N	GB	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_506	METABASE	506	Jayme Zulauf	\N	\N	Jayme	Zulauf	\N	\N	\N	IT	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_507	METABASE	507	Ernie Bogan	\N	\N	Ernie	Bogan	\N	\N	\N	DE	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_508	METABASE	508	Edward McClure	\N	\N	Edward	McClure	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_509	METABASE	509	Deja Schmeler	\N	\N	Deja	Schmeler	\N	\N	\N	ES	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_51	METABASE	51	Prudence Kihn	\N	\N	Prudence	Kihn	\N	\N	\N	RO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_510	METABASE	510	Orlando Kovacek	\N	\N	Orlando	Kovacek	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_511	METABASE	511	Krystal Schaden	\N	\N	Krystal	Schaden	\N	\N	\N	CH	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_512	METABASE	512	Breanna Hodkiewicz	\N	\N	Breanna	Hodkiewicz	\N	\N	\N	AU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_513	METABASE	513	Doris Fadel	\N	\N	Doris	Fadel	\N	\N	\N	US	\N	Basic	Invite	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_514	METABASE	514	Alberta Kutch	\N	\N	Alberta	Kutch	\N	\N	\N	DE	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_515	METABASE	515	Alverta Sipes	\N	\N	Alverta	Sipes	\N	\N	\N	DE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_516	METABASE	516	Kyla Zemlak	\N	\N	Kyla	Zemlak	\N	\N	\N	MX	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_517	METABASE	517	Neva Langworth	\N	\N	Neva	Langworth	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_518	METABASE	518	Boris Boyer	\N	\N	Boris	Boyer	\N	\N	\N	FR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_519	METABASE	519	Alberto Gulgowski	\N	\N	Alberto	Gulgowski	\N	\N	\N	BE	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_52	METABASE	52	Solon Spencer	\N	\N	Solon	Spencer	\N	\N	\N	RO	\N	Premium	Facebook	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_520	METABASE	520	Jasen Stanton	\N	\N	Jasen	Stanton	\N	\N	\N	AT	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_521	METABASE	521	Mylene Sporer	\N	\N	Mylene	Sporer	\N	\N	\N	NZ	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_522	METABASE	522	Breana Thiel	\N	\N	Breana	Thiel	\N	\N	\N	BR	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_523	METABASE	523	Dean Anderson	\N	\N	Dean	Anderson	\N	\N	\N	CA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_524	METABASE	524	Mabel Grimes	\N	\N	Mabel	Grimes	\N	\N	\N	AT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_525	METABASE	525	Rozella Tremblay	\N	\N	Rozella	Tremblay	\N	\N	\N	GB	\N	Premium	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_526	METABASE	526	Arne Mayer	\N	\N	Arne	Mayer	\N	\N	\N	US	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_527	METABASE	527	Tamara Sawayn	\N	\N	Tamara	Sawayn	\N	\N	\N	RO	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_528	METABASE	528	Oswald Corwin	\N	\N	Oswald	Corwin	\N	\N	\N	CL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_529	METABASE	529	Leda Hammes	\N	\N	Leda	Hammes	\N	\N	\N	IT	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_53	METABASE	53	Johnson Abshire	\N	\N	Johnson	Abshire	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_530	METABASE	530	Jacey Dach	\N	\N	Jacey	Dach	\N	\N	\N	AM	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_531	METABASE	531	Dana Orn	\N	\N	Dana	Orn	\N	\N	\N	IT	\N	Basic	Google	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_532	METABASE	532	Susana Stiedemann	\N	\N	Susana	Stiedemann	\N	\N	\N	ID	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_533	METABASE	533	Howard Gaylord	\N	\N	Howard	Gaylord	\N	\N	\N	CH	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_534	METABASE	534	Arnaldo Bartell	\N	\N	Arnaldo	Bartell	\N	\N	\N	RU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_535	METABASE	535	Brooks Altenwerth	\N	\N	Brooks	Altenwerth	\N	\N	\N	RO	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_536	METABASE	536	Ashton Beier	\N	\N	Ashton	Beier	\N	\N	\N	IR	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_537	METABASE	537	Tyrel Beatty	\N	\N	Tyrel	Beatty	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_538	METABASE	538	Savanah Fahey	\N	\N	Savanah	Fahey	\N	\N	\N	FR	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_539	METABASE	539	Deven Brekke	\N	\N	Deven	Brekke	\N	\N	\N	RO	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_54	METABASE	54	Winfield O'Kon	\N	\N	Winfield	O'Kon	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_540	METABASE	540	Trace Morar	\N	\N	Trace	Morar	\N	\N	\N	RO	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_541	METABASE	541	Roderick Aufderhar	\N	\N	Roderick	Aufderhar	\N	\N	\N	US	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_542	METABASE	542	Elton Streich	\N	\N	Elton	Streich	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_543	METABASE	543	Lucas Beer	\N	\N	Lucas	Beer	\N	\N	\N	DE	\N	Business	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_544	METABASE	544	Armando Herzog	\N	\N	Armando	Herzog	\N	\N	\N	DE	\N	Business	Google	16	t	t	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_545	METABASE	545	Breanne Schiller	\N	\N	Breanne	Schiller	\N	\N	\N	NL	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_546	METABASE	546	Keenan Schaefer	\N	\N	Keenan	Schaefer	\N	\N	\N	FR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_547	METABASE	547	Eula O'Connell	\N	\N	Eula	O'Connell	\N	\N	\N	RO	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_548	METABASE	548	Maya Berge	\N	\N	Maya	Berge	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_549	METABASE	549	Angelica Zulauf	\N	\N	Angelica	Zulauf	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_55	METABASE	55	Ila Johnston	\N	\N	Ila	Johnston	\N	\N	\N	GR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_550	METABASE	550	Lina Labadie	\N	\N	Lina	Labadie	\N	\N	\N	IN	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_551	METABASE	551	Edgardo Hackett	\N	\N	Edgardo	Hackett	\N	\N	\N	RU	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_552	METABASE	552	Dawson Kovacek	\N	\N	Dawson	Kovacek	\N	\N	\N	PH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_553	METABASE	553	Logan Weber	\N	\N	Logan	Weber	\N	\N	\N	AU	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_554	METABASE	554	Alana Roberts	\N	\N	Alana	Roberts	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_555	METABASE	555	Modesta Kessler	\N	\N	Modesta	Kessler	\N	\N	\N	FR	\N	Basic	Twitter	54	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_556	METABASE	556	Wyman Kertzmann	\N	\N	Wyman	Kertzmann	\N	\N	\N	PH	\N	Basic	\N	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_557	METABASE	557	Lora Cronin	\N	\N	Lora	Cronin	\N	\N	\N	PH	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_558	METABASE	558	Bertrand Romaguera	\N	\N	Bertrand	Romaguera	\N	\N	\N	US	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_559	METABASE	559	Zane Paucek	\N	\N	Zane	Paucek	\N	\N	\N	GB	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_56	METABASE	56	Kelley Turner	\N	\N	Kelley	Turner	\N	\N	\N	RU	\N	Premium	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_560	METABASE	560	Lolita Schaefer	\N	\N	Lolita	Schaefer	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_561	METABASE	561	Lina Heaney	\N	\N	Lina	Heaney	\N	\N	\N	PL	\N	Basic	Twitter	78	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_562	METABASE	562	Jerod Altenwerth	\N	\N	Jerod	Altenwerth	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_563	METABASE	563	Teresa Cartwright	\N	\N	Teresa	Cartwright	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_564	METABASE	564	Hans Kozey	\N	\N	Hans	Kozey	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_565	METABASE	565	Makenna Abshire	\N	\N	Makenna	Abshire	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_566	METABASE	566	Mohammed Mayert	\N	\N	Mohammed	Mayert	\N	\N	\N	US	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_567	METABASE	567	Alverta White	\N	\N	Alverta	White	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_568	METABASE	568	Shaylee Lowe	\N	\N	Shaylee	Lowe	\N	\N	\N	MA	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_569	METABASE	569	Alexzander McKenzie	\N	\N	Alexzander	McKenzie	\N	\N	\N	SA	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_57	METABASE	57	Shanny Kuvalis	\N	\N	Shanny	Kuvalis	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_570	METABASE	570	Yasmeen Sauer	\N	\N	Yasmeen	Sauer	\N	\N	\N	ES	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_571	METABASE	571	Emmanuel Emmerich	\N	\N	Emmanuel	Emmerich	\N	\N	\N	BE	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_572	METABASE	572	Shawn Fadel	\N	\N	Shawn	Fadel	\N	\N	\N	DZ	\N	Premium	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_573	METABASE	573	Haven O'Reilly	\N	\N	Haven	O'Reilly	\N	\N	\N	CN	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_574	METABASE	574	Jaren Leannon	\N	\N	Jaren	Leannon	\N	\N	\N	FR	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_575	METABASE	575	Luther Goyette	\N	\N	Luther	Goyette	\N	\N	\N	PH	\N	Basic	\N	23	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_576	METABASE	576	Demetrius Nikolaus	\N	\N	Demetrius	Nikolaus	\N	\N	\N	DE	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_577	METABASE	577	Yesenia Green	\N	\N	Yesenia	Green	\N	\N	\N	MX	\N	Basic	\N	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_578	METABASE	578	Heber Gulgowski	\N	\N	Heber	Gulgowski	\N	\N	\N	TR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_579	METABASE	579	Rosemary Daniel	\N	\N	Rosemary	Daniel	\N	\N	\N	TR	\N	Basic	Twitter	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_58	METABASE	58	Maryam Watsica	\N	\N	Maryam	Watsica	\N	\N	\N	GB	\N	Basic	\N	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_580	METABASE	580	Mohammad Weber	\N	\N	Mohammad	Weber	\N	\N	\N	FR	\N	Premium	Facebook	109	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_581	METABASE	581	Alexys Jewess	\N	\N	Alexys	Jewess	\N	\N	\N	ES	\N	Premium	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_582	METABASE	582	Citlalli Howe	\N	\N	Citlalli	Howe	\N	\N	\N	NO	\N	Premium	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_583	METABASE	583	Jamel Parisian	\N	\N	Jamel	Parisian	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_584	METABASE	584	Elbert Homenick	\N	\N	Elbert	Homenick	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_585	METABASE	585	Stephon Greenfelder	\N	\N	Stephon	Greenfelder	\N	\N	\N	PH	\N	Basic	Facebook	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_586	METABASE	586	Mina Dare	\N	\N	Mina	Dare	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_587	METABASE	587	Orie Sipes	\N	\N	Orie	Sipes	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_588	METABASE	588	Art McDermott	\N	\N	Art	McDermott	\N	\N	\N	AR	\N	Basic	\N	109	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_589	METABASE	589	Daryl Emmerich	\N	\N	Daryl	Emmerich	\N	\N	\N	BE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_59	METABASE	59	Andreane Spinka	\N	\N	Andreane	Spinka	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_590	METABASE	590	Paxton Mayer	\N	\N	Paxton	Mayer	\N	\N	\N	BR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_591	METABASE	591	Loren Roob	\N	\N	Loren	Roob	\N	\N	\N	FR	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_592	METABASE	592	Karelle Hodkiewicz	\N	\N	Karelle	Hodkiewicz	\N	\N	\N	IN	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_593	METABASE	593	Rosella Bergnaum	\N	\N	Rosella	Bergnaum	\N	\N	\N	BN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_594	METABASE	594	Jedediah Huels	\N	\N	Jedediah	Huels	\N	\N	\N	GT	\N	Basic	\N	1	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_595	METABASE	595	Aurelio Borer	\N	\N	Aurelio	Borer	\N	\N	\N	IT	\N	Basic	\N	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_596	METABASE	596	Kyle Herzog	\N	\N	Kyle	Herzog	\N	\N	\N	AR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_597	METABASE	597	Kyler Halvorson	\N	\N	Kyler	Halvorson	\N	\N	\N	VN	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_598	METABASE	598	Hassan Dare	\N	\N	Hassan	Dare	\N	\N	\N	ES	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_599	METABASE	599	Mark Bayer	\N	\N	Mark	Bayer	\N	\N	\N	ZA	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_6	METABASE	6	Magnus Carroll	\N	\N	Magnus	Carroll	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_60	METABASE	60	Bessie Connelly	\N	\N	Bessie	Connelly	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_600	METABASE	600	Jaden Hansen	\N	\N	Jaden	Hansen	\N	\N	\N	AU	\N	Basic	Invite	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_601	METABASE	601	Casey Robel	\N	\N	Casey	Robel	\N	\N	\N	FR	\N	Basic	Google	111	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_602	METABASE	602	Gino Weber	\N	\N	Gino	Weber	\N	\N	\N	DK	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_603	METABASE	603	Demetris Tromp	\N	\N	Demetris	Tromp	\N	\N	\N	BR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_604	METABASE	604	Elvera Kirlin	\N	\N	Elvera	Kirlin	\N	\N	\N	DE	\N	Premium	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_605	METABASE	605	General Steuber	\N	\N	General	Steuber	\N	\N	\N	GT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_606	METABASE	606	Coleman Keebler	\N	\N	Coleman	Keebler	\N	\N	\N	FR	\N	Basic	Invite	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_607	METABASE	607	Deven Ruecker	\N	\N	Deven	Ruecker	\N	\N	\N	GE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_608	METABASE	608	Braeden Ryan	\N	\N	Braeden	Ryan	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_609	METABASE	609	Rylee Upton	\N	\N	Rylee	Upton	\N	\N	\N	MX	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_61	METABASE	61	Ethyl Little	\N	\N	Ethyl	Little	\N	\N	\N	US	\N	Basic	\N	27	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_610	METABASE	610	Bryce Nader	\N	\N	Bryce	Nader	\N	\N	\N	RS	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_611	METABASE	611	Jace Kihn	\N	\N	Jace	Kihn	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_612	METABASE	612	Freeda Swaniawski	\N	\N	Freeda	Swaniawski	\N	\N	\N	BR	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_613	METABASE	613	Nayeli Becker	\N	\N	Nayeli	Becker	\N	\N	\N	SK	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_614	METABASE	614	Uriel Eichmann	\N	\N	Uriel	Eichmann	\N	\N	\N	IT	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_615	METABASE	615	Paul Kozey	\N	\N	Paul	Kozey	\N	\N	\N	BR	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_616	METABASE	616	Candace McKenzie	\N	\N	Candace	McKenzie	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_617	METABASE	617	Gwen Cole	\N	\N	Gwen	Cole	\N	\N	\N	RO	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_618	METABASE	618	Fay Bayer	\N	\N	Fay	Bayer	\N	\N	\N	ES	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_619	METABASE	619	Sydnie Bode	\N	\N	Sydnie	Bode	\N	\N	\N	GB	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_62	METABASE	62	Marquise Mann	\N	\N	Marquise	Mann	\N	\N	\N	GR	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_620	METABASE	620	Wanda Thiel	\N	\N	Wanda	Thiel	\N	\N	\N	PL	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_621	METABASE	621	Carter Hane	\N	\N	Carter	Hane	\N	\N	\N	MX	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_622	METABASE	622	Cyrus Macejkovic	\N	\N	Cyrus	Macejkovic	\N	\N	\N	PH	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_623	METABASE	623	Rebekah Ledner	\N	\N	Rebekah	Ledner	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_624	METABASE	624	Nat Hane	\N	\N	Nat	Hane	\N	\N	\N	US	\N	Basic	Invite	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_625	METABASE	625	Elnora Effertz	\N	\N	Elnora	Effertz	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_626	METABASE	626	Braeden Corwin	\N	\N	Braeden	Corwin	\N	\N	\N	MX	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_627	METABASE	627	Estefania Goyette	\N	\N	Estefania	Goyette	\N	\N	\N	PH	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_628	METABASE	628	Rozella Weber	\N	\N	Rozella	Weber	\N	\N	\N	RO	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_629	METABASE	629	Faye Denesik	\N	\N	Faye	Denesik	\N	\N	\N	GB	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_63	METABASE	63	Chasity Raynor	\N	\N	Chasity	Raynor	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_630	METABASE	630	Lupe Konopelski	\N	\N	Lupe	Konopelski	\N	\N	\N	AE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_631	METABASE	631	Pete Reilly	\N	\N	Pete	Reilly	\N	\N	\N	CH	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_632	METABASE	632	Domenico Bailey	\N	\N	Domenico	Bailey	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_633	METABASE	633	Hulda Homenick	\N	\N	Hulda	Homenick	\N	\N	\N	CN	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_634	METABASE	634	Ramiro Shields	\N	\N	Ramiro	Shields	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_635	METABASE	635	Tyrell Nikolaus	\N	\N	Tyrell	Nikolaus	\N	\N	\N	IT	\N	Basic	Twitter	21	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_636	METABASE	636	Caleigh Hodkiewicz	\N	\N	Caleigh	Hodkiewicz	\N	\N	\N	BY	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_637	METABASE	637	Jamel Stanton	\N	\N	Jamel	Stanton	\N	\N	\N	ES	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_638	METABASE	638	Trey Waters	\N	\N	Trey	Waters	\N	\N	\N	AR	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_639	METABASE	639	Kyler Altenwerth	\N	\N	Kyler	Altenwerth	\N	\N	\N	US	\N	Basic	Invite	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_64	METABASE	64	Jensen Schneider	\N	\N	Jensen	Schneider	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_640	METABASE	640	Demetris Hauck	\N	\N	Demetris	Hauck	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_641	METABASE	641	Kacey Jones	\N	\N	Kacey	Jones	\N	\N	\N	RO	\N	Basic	\N	36	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_642	METABASE	642	Nicolas Goyette	\N	\N	Nicolas	Goyette	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_643	METABASE	643	Nathan Waters	\N	\N	Nathan	Waters	\N	\N	\N	MX	\N	Basic	Facebook	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_644	METABASE	644	Rebeka Tromp	\N	\N	Rebeka	Tromp	\N	\N	\N	CA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_645	METABASE	645	Porter Lowe	\N	\N	Porter	Lowe	\N	\N	\N	ES	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_646	METABASE	646	Andrew Macejkovic	\N	\N	Andrew	Macejkovic	\N	\N	\N	US	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_647	METABASE	647	Myles Brekke	\N	\N	Myles	Brekke	\N	\N	\N	US	\N	Basic	Invite	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_648	METABASE	648	Jerel Miller	\N	\N	Jerel	Miller	\N	\N	\N	FR	\N	Premium	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_649	METABASE	649	Reba Howell	\N	\N	Reba	Howell	\N	\N	\N	US	\N	Premium	Invite	12	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_65	METABASE	65	Tiana Parisian	\N	\N	Tiana	Parisian	\N	\N	\N	AU	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_650	METABASE	650	Kendall Dare	\N	\N	Kendall	Dare	\N	\N	\N	TH	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_651	METABASE	651	Jessyca Mayert	\N	\N	Jessyca	Mayert	\N	\N	\N	IN	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_652	METABASE	652	Reece Kozey	\N	\N	Reece	Kozey	\N	\N	\N	IT	\N	Basic	\N	201	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_653	METABASE	653	Kade Heathcote	\N	\N	Kade	Heathcote	\N	\N	\N	AR	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_654	METABASE	654	Eugenia Stroman	\N	\N	Eugenia	Stroman	\N	\N	\N	AU	\N	Basic	Google	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_655	METABASE	655	Jameson Grady	\N	\N	Jameson	Grady	\N	\N	\N	US	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_656	METABASE	656	Payton Denesik	\N	\N	Payton	Denesik	\N	\N	\N	DE	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_657	METABASE	657	Arvel Lakin	\N	\N	Arvel	Lakin	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_658	METABASE	658	Arnaldo Rice	\N	\N	Arnaldo	Rice	\N	\N	\N	ES	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_659	METABASE	659	Kaleigh Harris	\N	\N	Kaleigh	Harris	\N	\N	\N	RU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_66	METABASE	66	Lexie Bednar	\N	\N	Lexie	Bednar	\N	\N	\N	IT	\N	Basic	\N	111	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_660	METABASE	660	Tyrel Runolfsson	\N	\N	Tyrel	Runolfsson	\N	\N	\N	AU	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_661	METABASE	661	Randi Howe	\N	\N	Randi	Howe	\N	\N	\N	FR	\N	Basic	Twitter	71	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_662	METABASE	662	Efren Kshlerin	\N	\N	Efren	Kshlerin	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_663	METABASE	663	Alverta Rogahn	\N	\N	Alverta	Rogahn	\N	\N	\N	UA	\N	Basic	\N	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_664	METABASE	664	Rupert Ondricka	\N	\N	Rupert	Ondricka	\N	\N	\N	US	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_665	METABASE	665	Jude Pacocha	\N	\N	Jude	Pacocha	\N	\N	\N	ET	\N	Basic	\N	45	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_666	METABASE	666	Marc Macejkovic	\N	\N	Marc	Macejkovic	\N	\N	\N	GB	\N	Basic	Twitter	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_667	METABASE	667	Eliza Anderson	\N	\N	Eliza	Anderson	\N	\N	\N	FR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_668	METABASE	668	Serena Langosh	\N	\N	Serena	Langosh	\N	\N	\N	US	\N	Basic	Invite	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_669	METABASE	669	Celestine Rowe	\N	\N	Celestine	Rowe	\N	\N	\N	HU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_67	METABASE	67	Brandt Erdman	\N	\N	Brandt	Erdman	\N	\N	\N	IT	\N	Basic	Invite	63	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_670	METABASE	670	Kaleigh Dicki	\N	\N	Kaleigh	Dicki	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_671	METABASE	671	Jacey Schoen	\N	\N	Jacey	Schoen	\N	\N	\N	RO	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_672	METABASE	672	Braeden Stehr	\N	\N	Braeden	Stehr	\N	\N	\N	IN	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_673	METABASE	673	Michale Mayer	\N	\N	Michale	Mayer	\N	\N	\N	LR	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_674	METABASE	674	Everett Effertz	\N	\N	Everett	Effertz	\N	\N	\N	GB	\N	Basic	Invite	25	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_675	METABASE	675	Sabina Borer	\N	\N	Sabina	Borer	\N	\N	\N	DE	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_676	METABASE	676	Omer Sipes	\N	\N	Omer	Sipes	\N	\N	\N	AM	\N	Basic	Google	65	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_677	METABASE	677	Rosella Bergstrom	\N	\N	Rosella	Bergstrom	\N	\N	\N	BE	\N	Basic	\N	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_678	METABASE	678	Miles VonRueden	\N	\N	Miles	VonRueden	\N	\N	\N	FR	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_679	METABASE	679	Leonardo Fahey	\N	\N	Leonardo	Fahey	\N	\N	\N	ES	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_68	METABASE	68	Mertie Shanahan	\N	\N	Mertie	Shanahan	\N	\N	\N	RO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_680	METABASE	680	Dane Monahan	\N	\N	Dane	Monahan	\N	\N	\N	CH	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_681	METABASE	681	Brielle Ondricka	\N	\N	Brielle	Ondricka	\N	\N	\N	BF	\N	Basic	Facebook	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_682	METABASE	682	Lizeth VonRueden	\N	\N	Lizeth	VonRueden	\N	\N	\N	MG	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_683	METABASE	683	Estefania Conroy	\N	\N	Estefania	Conroy	\N	\N	\N	AT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_684	METABASE	684	Gage Labadie	\N	\N	Gage	Labadie	\N	\N	\N	US	\N	Basic	\N	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_685	METABASE	685	Vella Fadel	\N	\N	Vella	Fadel	\N	\N	\N	AU	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_686	METABASE	686	Coby Stiedemann	\N	\N	Coby	Stiedemann	\N	\N	\N	SE	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_687	METABASE	687	Mylene Green	\N	\N	Mylene	Green	\N	\N	\N	IT	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_688	METABASE	688	Ernestine Erdman	\N	\N	Ernestine	Erdman	\N	\N	\N	IR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_689	METABASE	689	Vanessa Jaskolski	\N	\N	Vanessa	Jaskolski	\N	\N	\N	AR	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_69	METABASE	69	Gayle Towne	\N	\N	Gayle	Towne	\N	\N	\N	ES	\N	Basic	Twitter	19	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_690	METABASE	690	Annetta Zulauf	\N	\N	Annetta	Zulauf	\N	\N	\N	RU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_691	METABASE	691	Jensen Dare	\N	\N	Jensen	Dare	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_692	METABASE	692	Caleb Dare	\N	\N	Caleb	Dare	\N	\N	\N	PH	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_693	METABASE	693	Norene Cole	\N	\N	Norene	Cole	\N	\N	\N	SA	\N	Basic	Google	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_694	METABASE	694	Gerald Mayert	\N	\N	Gerald	Mayert	\N	\N	\N	CN	\N	Basic	Facebook	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_695	METABASE	695	Onie Altenwerth	\N	\N	Onie	Altenwerth	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_696	METABASE	696	Gene Lueilwitz	\N	\N	Gene	Lueilwitz	\N	\N	\N	MX	\N	Basic	\N	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_697	METABASE	697	Gideon Fadel	\N	\N	Gideon	Fadel	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_698	METABASE	698	Wyatt McDermott	\N	\N	Wyatt	McDermott	\N	\N	\N	RO	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_699	METABASE	699	Lillian Sauer	\N	\N	Lillian	Sauer	\N	\N	\N	IN	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_7	METABASE	7	Mekhi O'Conner	\N	\N	Mekhi	O'Conner	\N	\N	\N	PH	\N	Basic	Google	19	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_70	METABASE	70	Elena Herman	\N	\N	Elena	Herman	\N	\N	\N	PH	\N	Basic	Invite	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_700	METABASE	700	Johanna Homenick	\N	\N	Johanna	Homenick	\N	\N	\N	IT	\N	Basic	Facebook	82	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_701	METABASE	701	Eliezer Conroy	\N	\N	Eliezer	Conroy	\N	\N	\N	RO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_702	METABASE	702	Helen Crooks	\N	\N	Helen	Crooks	\N	\N	\N	DO	\N	Basic	\N	25	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_703	METABASE	703	Skye Heidenreich	\N	\N	Skye	Heidenreich	\N	\N	\N	IT	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_704	METABASE	704	Karina Borer	\N	\N	Karina	Borer	\N	\N	\N	EE	\N	Basic	Twitter	27	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_705	METABASE	705	Christophe Cole	\N	\N	Christophe	Cole	\N	\N	\N	RO	\N	Basic	\N	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_706	METABASE	706	Ike Homenick	\N	\N	Ike	Homenick	\N	\N	\N	BR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_707	METABASE	707	Dane Huel	\N	\N	Dane	Huel	\N	\N	\N	ES	\N	Basic	Twitter	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_708	METABASE	708	Arnaldo Nader	\N	\N	Arnaldo	Nader	\N	\N	\N	UA	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_709	METABASE	709	Lavern Boyle	\N	\N	Lavern	Boyle	\N	\N	\N	GE	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_71	METABASE	71	Joana Pfeffer	\N	\N	Joana	Pfeffer	\N	\N	\N	NL	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_710	METABASE	710	Quincy Weber	\N	\N	Quincy	Weber	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_711	METABASE	711	Vicente Schaden	\N	\N	Vicente	Schaden	\N	\N	\N	CH	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_712	METABASE	712	Angelica Sipes	\N	\N	Angelica	Sipes	\N	\N	\N	HR	\N	Basic	Invite	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_713	METABASE	713	Rosie Hagenes	\N	\N	Rosie	Hagenes	\N	\N	\N	US	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_714	METABASE	714	Zoie Kozey	\N	\N	Zoie	Kozey	\N	\N	\N	PL	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_715	METABASE	715	Jaren Kertzmann	\N	\N	Jaren	Kertzmann	\N	\N	\N	MX	\N	Basic	Facebook	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_716	METABASE	716	Anderson Schinner	\N	\N	Anderson	Schinner	\N	\N	\N	RO	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_717	METABASE	717	Eduardo McKenzie	\N	\N	Eduardo	McKenzie	\N	\N	\N	DE	\N	Basic	Twitter	54	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_718	METABASE	718	Coleman Beier	\N	\N	Coleman	Beier	\N	\N	\N	IT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_719	METABASE	719	Franco Sauer	\N	\N	Franco	Sauer	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_72	METABASE	72	Loy Gleichner	\N	\N	Loy	Gleichner	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_720	METABASE	720	Gage Stiedemann	\N	\N	Gage	Stiedemann	\N	\N	\N	IT	\N	Basic	Google	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_721	METABASE	721	Audie Hane	\N	\N	Audie	Hane	\N	\N	\N	IT	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_722	METABASE	722	Loren Weimann	\N	\N	Loren	Weimann	\N	\N	\N	DE	\N	Basic	Invite	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_723	METABASE	723	Domingo Waters	\N	\N	Domingo	Waters	\N	\N	\N	AT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_724	METABASE	724	Sigrid Denesik	\N	\N	Sigrid	Denesik	\N	\N	\N	AT	\N	Basic	Facebook	120	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_725	METABASE	725	Sigmund Mayer	\N	\N	Sigmund	Mayer	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_726	METABASE	726	Jacinthe Howell	\N	\N	Jacinthe	Howell	\N	\N	\N	BR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_727	METABASE	727	Misael Beier	\N	\N	Misael	Beier	\N	\N	\N	ES	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_728	METABASE	728	Janet Stiedemann	\N	\N	Janet	Stiedemann	\N	\N	\N	AU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_729	METABASE	729	Haleigh Bayer	\N	\N	Haleigh	Bayer	\N	\N	\N	CR	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_73	METABASE	73	Jadyn Rice	\N	\N	Jadyn	Rice	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_730	METABASE	730	Eudora Greenholt	\N	\N	Eudora	Greenholt	\N	\N	\N	US	\N	Basic	Twitter	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_731	METABASE	731	Arden Jast	\N	\N	Arden	Jast	\N	\N	\N	VE	\N	Basic	Invite	67	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_732	METABASE	732	Amina O'Reilly	\N	\N	Amina	O'Reilly	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_733	METABASE	733	Mozell Frami	\N	\N	Mozell	Frami	\N	\N	\N	ES	\N	Basic	\N	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_734	METABASE	734	Celestino Bernhard	\N	\N	Celestino	Bernhard	\N	\N	\N	MX	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_735	METABASE	735	Maverick Roob	\N	\N	Maverick	Roob	\N	\N	\N	TR	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_736	METABASE	736	Vicente Kessler	\N	\N	Vicente	Kessler	\N	\N	\N	CA	\N	Basic	Google	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_737	METABASE	737	Teresa Hodkiewicz	\N	\N	Teresa	Hodkiewicz	\N	\N	\N	GB	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_738	METABASE	738	Kennedi Waters	\N	\N	Kennedi	Waters	\N	\N	\N	LU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_739	METABASE	739	Davin Jewess	\N	\N	Davin	Jewess	\N	\N	\N	RO	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_74	METABASE	74	Elinor Douglas	\N	\N	Elinor	Douglas	\N	\N	\N	IR	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_740	METABASE	740	Brielle Kertzmann	\N	\N	Brielle	Kertzmann	\N	\N	\N	US	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_741	METABASE	741	Omari Homenick	\N	\N	Omari	Homenick	\N	\N	\N	MX	\N	Basic	Google	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_742	METABASE	742	Lorena Predovic	\N	\N	Lorena	Predovic	\N	\N	\N	DE	\N	Basic	Twitter	74	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_743	METABASE	743	Philip Fadel	\N	\N	Philip	Fadel	\N	\N	\N	DE	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_744	METABASE	744	Lilian Roberts	\N	\N	Lilian	Roberts	\N	\N	\N	PH	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_745	METABASE	745	Olen Emmerich	\N	\N	Olen	Emmerich	\N	\N	\N	TH	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_746	METABASE	746	Kaden Lakin	\N	\N	Kaden	Lakin	\N	\N	\N	GB	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_747	METABASE	747	Dale Macejkovic	\N	\N	Dale	Macejkovic	\N	\N	\N	PL	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_748	METABASE	748	Marlon Howell	\N	\N	Marlon	Howell	\N	\N	\N	DE	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_749	METABASE	749	Deven Bruen	\N	\N	Deven	Bruen	\N	\N	\N	AT	\N	Basic	Google	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_75	METABASE	75	Donato Spinka	\N	\N	Donato	Spinka	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_750	METABASE	750	Hulda Greenfelder	\N	\N	Hulda	Greenfelder	\N	\N	\N	ES	\N	Basic	Twitter	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_751	METABASE	751	Demetris Carroll	\N	\N	Demetris	Carroll	\N	\N	\N	AR	\N	Basic	Google	34	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_752	METABASE	752	Aylin Haley	\N	\N	Aylin	Haley	\N	\N	\N	IT	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_753	METABASE	753	Liliane Hayes	\N	\N	Liliane	Hayes	\N	\N	\N	IN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_754	METABASE	754	Richmond Bode	\N	\N	Richmond	Bode	\N	\N	\N	IT	\N	Basic	Google	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_755	METABASE	755	Daisha Boyer	\N	\N	Daisha	Boyer	\N	\N	\N	FI	\N	Basic	Facebook	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_756	METABASE	756	Will Kozey	\N	\N	Will	Kozey	\N	\N	\N	MX	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_757	METABASE	757	Breana Weber	\N	\N	Breana	Weber	\N	\N	\N	MX	\N	Basic	Twitter	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_758	METABASE	758	Corine Rosenbaum	\N	\N	Corine	Rosenbaum	\N	\N	\N	IT	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_759	METABASE	759	Janelle Rutherford	\N	\N	Janelle	Rutherford	\N	\N	\N	AU	\N	Premium	Invite	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_76	METABASE	76	Maiya Beier	\N	\N	Maiya	Beier	\N	\N	\N	RU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_760	METABASE	760	Amya Homenick	\N	\N	Amya	Homenick	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_761	METABASE	761	Chanel Dare	\N	\N	Chanel	Dare	\N	\N	\N	DE	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_762	METABASE	762	Myles Deckow	\N	\N	Myles	Deckow	\N	\N	\N	PH	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_763	METABASE	763	Elvera Lowe	\N	\N	Elvera	Lowe	\N	\N	\N	ES	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_764	METABASE	764	Sincere Waters	\N	\N	Sincere	Waters	\N	\N	\N	RU	\N	Basic	Google	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_765	METABASE	765	Domenico Abernathy	\N	\N	Domenico	Abernathy	\N	\N	\N	IT	\N	Basic	Facebook	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_766	METABASE	766	Mark Hane	\N	\N	Mark	Hane	\N	\N	\N	RO	\N	Basic	Google	49	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_767	METABASE	767	Lavern Botsford	\N	\N	Lavern	Botsford	\N	\N	\N	CA	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_768	METABASE	768	Rosario Thiel	\N	\N	Rosario	Thiel	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_769	METABASE	769	Ryleigh Padberg	\N	\N	Ryleigh	Padberg	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_77	METABASE	77	Joan Langosh	\N	\N	Joan	Langosh	\N	\N	\N	PH	\N	Premium	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_770	METABASE	770	Lisette Roberts	\N	\N	Lisette	Roberts	\N	\N	\N	IT	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_771	METABASE	771	Molly Robel	\N	\N	Molly	Robel	\N	\N	\N	MX	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_772	METABASE	772	Serenity Wolff	\N	\N	Serenity	Wolff	\N	\N	\N	US	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_773	METABASE	773	Clovis Homenick	\N	\N	Clovis	Homenick	\N	\N	\N	DE	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_774	METABASE	774	Rebekah Dickinson	\N	\N	Rebekah	Dickinson	\N	\N	\N	IT	\N	Basic	\N	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_775	METABASE	775	Delbert Borer	\N	\N	Delbert	Borer	\N	\N	\N	RU	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_776	METABASE	776	Bernhard Boyer	\N	\N	Bernhard	Boyer	\N	\N	\N	HR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_777	METABASE	777	Ryley Nader	\N	\N	Ryley	Nader	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_778	METABASE	778	Lacey Dickinson	\N	\N	Lacey	Dickinson	\N	\N	\N	US	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_779	METABASE	779	Pamela Jast	\N	\N	Pamela	Jast	\N	\N	\N	BR	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_78	METABASE	78	Danyka Kunze	\N	\N	Danyka	Kunze	\N	\N	\N	JP	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_780	METABASE	780	Ryleigh Gleason	\N	\N	Ryleigh	Gleason	\N	\N	\N	RO	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_781	METABASE	781	Rogers Bode	\N	\N	Rogers	Bode	\N	\N	\N	MA	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_782	METABASE	782	Arno Bruen	\N	\N	Arno	Bruen	\N	\N	\N	IN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_783	METABASE	783	Jaden Cole	\N	\N	Jaden	Cole	\N	\N	\N	MK	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_784	METABASE	784	Sasha Nolan	\N	\N	Sasha	Nolan	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_785	METABASE	785	Delphia Denesik	\N	\N	Delphia	Denesik	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_786	METABASE	786	Ubaldo Rath	\N	\N	Ubaldo	Rath	\N	\N	\N	EG	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_787	METABASE	787	Bertrand Streich	\N	\N	Bertrand	Streich	\N	\N	\N	DZ	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_788	METABASE	788	Jewell Walker	\N	\N	Jewell	Walker	\N	\N	\N	US	\N	Basic	Google	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_789	METABASE	789	Jammie Gulgowski	\N	\N	Jammie	Gulgowski	\N	\N	\N	US	\N	Basic	Facebook	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_79	METABASE	79	Maryam Friesen	\N	\N	Maryam	Friesen	\N	\N	\N	PH	\N	Basic	Twitter	14	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_790	METABASE	790	Pamela Murray	\N	\N	Pamela	Murray	\N	\N	\N	US	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_791	METABASE	791	Nicholaus Brakus	\N	\N	Nicholaus	Brakus	\N	\N	\N	YE	\N	Premium	\N	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_792	METABASE	792	Kyleigh Beier	\N	\N	Kyleigh	Beier	\N	\N	\N	ID	\N	Basic	\N	16	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_793	METABASE	793	Lowell Daniel	\N	\N	Lowell	Daniel	\N	\N	\N	AU	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_794	METABASE	794	Ubaldo Gulgowski	\N	\N	Ubaldo	Gulgowski	\N	\N	\N	RU	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_795	METABASE	795	Alvena Legros	\N	\N	Alvena	Legros	\N	\N	\N	BG	\N	Basic	\N	16	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_796	METABASE	796	Antone Bechtelar	\N	\N	Antone	Bechtelar	\N	\N	\N	MX	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_797	METABASE	797	Green Carter	\N	\N	Green	Carter	\N	\N	\N	US	\N	Basic	Facebook	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_798	METABASE	798	Destany Friesen	\N	\N	Destany	Friesen	\N	\N	\N	LV	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_799	METABASE	799	Audra Hane	\N	\N	Audra	Hane	\N	\N	\N	RU	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_8	METABASE	8	Prince Schowalter	\N	\N	Prince	Schowalter	\N	\N	\N	IT	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_80	METABASE	80	Maymie Moen	\N	\N	Maymie	Moen	\N	\N	\N	RS	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_800	METABASE	800	Jonas O'Keefe	\N	\N	Jonas	O'Keefe	\N	\N	\N	BR	\N	Basic	Facebook	32	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_801	METABASE	801	Rebeca Parisian	\N	\N	Rebeca	Parisian	\N	\N	\N	CA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_802	METABASE	802	Ernestina Gerhold	\N	\N	Ernestina	Gerhold	\N	\N	\N	CD	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_803	METABASE	803	Rupert Ruecker	\N	\N	Rupert	Ruecker	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_804	METABASE	804	Mattie Bayer	\N	\N	Mattie	Bayer	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_805	METABASE	805	Eileen Mayert	\N	\N	Eileen	Mayert	\N	\N	\N	TZ	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_806	METABASE	806	Orie Bartoletti	\N	\N	Orie	Bartoletti	\N	\N	\N	BR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_807	METABASE	807	Wilbert Greenfelder	\N	\N	Wilbert	Greenfelder	\N	\N	\N	AU	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_808	METABASE	808	Judy Maggio	\N	\N	Judy	Maggio	\N	\N	\N	RO	\N	Premium	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_809	METABASE	809	Rocio Gerhold	\N	\N	Rocio	Gerhold	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_81	METABASE	81	Bianka Crona	\N	\N	Bianka	Crona	\N	\N	\N	NO	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_810	METABASE	810	Otha Kiehn	\N	\N	Otha	Kiehn	\N	\N	\N	FR	\N	Basic	Facebook	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_811	METABASE	811	Halie Berge	\N	\N	Halie	Berge	\N	\N	\N	AR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_812	METABASE	812	Wilhelm Hintz	\N	\N	Wilhelm	Hintz	\N	\N	\N	BG	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_813	METABASE	813	Ward Swift	\N	\N	Ward	Swift	\N	\N	\N	CN	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_814	METABASE	814	Anais Dare	\N	\N	Anais	Dare	\N	\N	\N	AF	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_815	METABASE	815	Kade Kub	\N	\N	Kade	Kub	\N	\N	\N	IT	\N	Basic	Invite	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_816	METABASE	816	Ayden Heller	\N	\N	Ayden	Heller	\N	\N	\N	US	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_817	METABASE	817	Aurelie Spinka	\N	\N	Aurelie	Spinka	\N	\N	\N	PT	\N	Basic	Google	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_818	METABASE	818	Heber Vandervort	\N	\N	Heber	Vandervort	\N	\N	\N	IL	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_819	METABASE	819	Mathilde Quigley	\N	\N	Mathilde	Quigley	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_82	METABASE	82	Trevor Kling	\N	\N	Trevor	Kling	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_820	METABASE	820	Isobel Fadel	\N	\N	Isobel	Fadel	\N	\N	\N	AU	\N	Basic	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_821	METABASE	821	Arne O'Hara	\N	\N	Arne	O'Hara	\N	\N	\N	CL	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_822	METABASE	822	Zane Koelpin	\N	\N	Zane	Koelpin	\N	\N	\N	IN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_823	METABASE	823	Syble Langworth	\N	\N	Syble	Langworth	\N	\N	\N	LT	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_824	METABASE	824	Margarete Tillman	\N	\N	Margarete	Tillman	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_825	METABASE	825	Reyes Strosin	\N	\N	Reyes	Strosin	\N	\N	\N	FR	\N	Basic	\N	87	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_826	METABASE	826	Emiliano Durgan	\N	\N	Emiliano	Durgan	\N	\N	\N	ZM	\N	Basic	Invite	122	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_827	METABASE	827	Jaleel Collins	\N	\N	Jaleel	Collins	\N	\N	\N	US	\N	Business	Facebook	109	t	f	t	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_828	METABASE	828	Emilie Goyette	\N	\N	Emilie	Goyette	\N	\N	\N	BR	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_829	METABASE	829	Graham Kessler	\N	\N	Graham	Kessler	\N	\N	\N	FR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_83	METABASE	83	Nya Hilpert	\N	\N	Nya	Hilpert	\N	\N	\N	CM	\N	Basic	Facebook	47	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_830	METABASE	830	Kyler Abshire	\N	\N	Kyler	Abshire	\N	\N	\N	IT	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_831	METABASE	831	Araceli Stiedemann	\N	\N	Araceli	Stiedemann	\N	\N	\N	GN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_832	METABASE	832	Nya Weber	\N	\N	Nya	Weber	\N	\N	\N	PH	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_833	METABASE	833	Angela Botsford	\N	\N	Angela	Botsford	\N	\N	\N	IN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_834	METABASE	834	Margarita Anderson	\N	\N	Margarita	Anderson	\N	\N	\N	NG	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_835	METABASE	835	Emmet Eichmann	\N	\N	Emmet	Eichmann	\N	\N	\N	IN	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_836	METABASE	836	Rene Muller	\N	\N	Rene	Muller	\N	\N	\N	FR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_837	METABASE	837	Hudson Borer	\N	\N	Hudson	Borer	\N	\N	\N	MX	\N	Business	Twitter	188	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_838	METABASE	838	Hadley Kuphal	\N	\N	Hadley	Kuphal	\N	\N	\N	JP	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_839	METABASE	839	Lempi Gerhold	\N	\N	Lempi	Gerhold	\N	\N	\N	FR	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_84	METABASE	84	Ramiro Wehner	\N	\N	Ramiro	Wehner	\N	\N	\N	ES	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_840	METABASE	840	Deshaun Leffler	\N	\N	Deshaun	Leffler	\N	\N	\N	AU	\N	Basic	Google	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_841	METABASE	841	Reed Dach	\N	\N	Reed	Dach	\N	\N	\N	CN	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_842	METABASE	842	Kamryn Eichmann	\N	\N	Kamryn	Eichmann	\N	\N	\N	IN	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_843	METABASE	843	Mohammad Swift	\N	\N	Mohammad	Swift	\N	\N	\N	HU	\N	Basic	\N	58	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_844	METABASE	844	Nicklaus Langosh	\N	\N	Nicklaus	Langosh	\N	\N	\N	US	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_845	METABASE	845	Theodore Dach	\N	\N	Theodore	Dach	\N	\N	\N	IT	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_846	METABASE	846	Janelle Wolf	\N	\N	Janelle	Wolf	\N	\N	\N	RU	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_847	METABASE	847	Richmond Adams	\N	\N	Richmond	Adams	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_848	METABASE	848	Meggie Blick	\N	\N	Meggie	Blick	\N	\N	\N	US	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_849	METABASE	849	Arch Ryan	\N	\N	Arch	Ryan	\N	\N	\N	PH	\N	Basic	\N	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_85	METABASE	85	Trevion Raynor	\N	\N	Trevion	Raynor	\N	\N	\N	CH	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_850	METABASE	850	Jeffry Schowalter	\N	\N	Jeffry	Schowalter	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_851	METABASE	851	Haven Hoeger	\N	\N	Haven	Hoeger	\N	\N	\N	FR	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_852	METABASE	852	Natalie Rolfson	\N	\N	Natalie	Rolfson	\N	\N	\N	PL	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_853	METABASE	853	Eloise King	\N	\N	Eloise	King	\N	\N	\N	IN	\N	Basic	\N	38	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_854	METABASE	854	Wilhelm Wunsch	\N	\N	Wilhelm	Wunsch	\N	\N	\N	BR	\N	Basic	Google	45	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_855	METABASE	855	Mavis Fisher	\N	\N	Mavis	Fisher	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_856	METABASE	856	Stefanie Barton	\N	\N	Stefanie	Barton	\N	\N	\N	MX	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_857	METABASE	857	Archibald Turner	\N	\N	Archibald	Turner	\N	\N	\N	BR	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_858	METABASE	858	Gregorio Harvey	\N	\N	Gregorio	Harvey	\N	\N	\N	PH	\N	Business	\N	1325	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_859	METABASE	859	Wilford King	\N	\N	Wilford	King	\N	\N	\N	DE	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_86	METABASE	86	Jennings Brakus	\N	\N	Jennings	Brakus	\N	\N	\N	DE	\N	Basic	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_860	METABASE	860	Richard Kub	\N	\N	Richard	Kub	\N	\N	\N	KZ	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_861	METABASE	861	Elsa Dach	\N	\N	Elsa	Dach	\N	\N	\N	RU	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_862	METABASE	862	Noelia Sanford	\N	\N	Noelia	Sanford	\N	\N	\N	PL	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_863	METABASE	863	Freeman Stehr	\N	\N	Freeman	Stehr	\N	\N	\N	HN	\N	Basic	Google	30	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_864	METABASE	864	Marge Stroman	\N	\N	Marge	Stroman	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_865	METABASE	865	Virginia Macejkovic	\N	\N	Virginia	Macejkovic	\N	\N	\N	RO	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_866	METABASE	866	Delfina Luettgen	\N	\N	Delfina	Luettgen	\N	\N	\N	FR	\N	Basic	Invite	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_867	METABASE	867	Cathrine Langosh	\N	\N	Cathrine	Langosh	\N	\N	\N	IT	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_868	METABASE	868	Eleanora Senger	\N	\N	Eleanora	Senger	\N	\N	\N	CZ	\N	Basic	\N	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_869	METABASE	869	Gerhard Towne	\N	\N	Gerhard	Towne	\N	\N	\N	US	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_87	METABASE	87	Kathleen Bernhard	\N	\N	Kathleen	Bernhard	\N	\N	\N	MA	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_870	METABASE	870	Savion Langworth	\N	\N	Savion	Langworth	\N	\N	\N	KZ	\N	Premium	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_871	METABASE	871	Julianne Leffler	\N	\N	Julianne	Leffler	\N	\N	\N	CL	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_872	METABASE	872	Katheryn Jacobson	\N	\N	Katheryn	Jacobson	\N	\N	\N	ES	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_873	METABASE	873	Frank Rath	\N	\N	Frank	Rath	\N	\N	\N	PH	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_874	METABASE	874	Vesta Lang	\N	\N	Vesta	Lang	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_875	METABASE	875	Jeffery Hermann	\N	\N	Jeffery	Hermann	\N	\N	\N	PH	\N	Basic	Twitter	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_876	METABASE	876	Una Graham	\N	\N	Una	Graham	\N	\N	\N	CN	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_877	METABASE	877	Brandyn Douglas	\N	\N	Brandyn	Douglas	\N	\N	\N	MX	\N	Basic	Twitter	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_878	METABASE	878	Ricky Senger	\N	\N	Ricky	Senger	\N	\N	\N	MX	\N	Basic	Twitter	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_879	METABASE	879	Alvena Stehr	\N	\N	Alvena	Stehr	\N	\N	\N	CA	\N	Basic	\N	38	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_88	METABASE	88	Stanley Kuphal	\N	\N	Stanley	Kuphal	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_880	METABASE	880	Wilfred Schaden	\N	\N	Wilfred	Schaden	\N	\N	\N	US	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_881	METABASE	881	Zena Wolf	\N	\N	Zena	Wolf	\N	\N	\N	AU	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_882	METABASE	882	Micheal Lang	\N	\N	Micheal	Lang	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_883	METABASE	883	Delaney Gerhold	\N	\N	Delaney	Gerhold	\N	\N	\N	IT	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_884	METABASE	884	Marques Koch	\N	\N	Marques	Koch	\N	\N	\N	DE	\N	Basic	Twitter	41	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_885	METABASE	885	Arielle Dach	\N	\N	Arielle	Dach	\N	\N	\N	ES	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_886	METABASE	886	Mathias Maggio	\N	\N	Mathias	Maggio	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_887	METABASE	887	Lula Rutherford	\N	\N	Lula	Rutherford	\N	\N	\N	AU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_888	METABASE	888	Olaf Sipes	\N	\N	Olaf	Sipes	\N	\N	\N	AT	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_889	METABASE	889	Selina Dach	\N	\N	Selina	Dach	\N	\N	\N	FR	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_89	METABASE	89	Joannie Hudson	\N	\N	Joannie	Hudson	\N	\N	\N	MX	\N	Premium	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_890	METABASE	890	Chelsie Bergstrom	\N	\N	Chelsie	Bergstrom	\N	\N	\N	RO	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_891	METABASE	891	Tyson Stehr	\N	\N	Tyson	Stehr	\N	\N	\N	JM	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_892	METABASE	892	Colton Kuphal	\N	\N	Colton	Kuphal	\N	\N	\N	CN	\N	Basic	Facebook	78	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_893	METABASE	893	Kobe O'Keefe	\N	\N	Kobe	O'Keefe	\N	\N	\N	PH	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_894	METABASE	894	Johathan Sanford	\N	\N	Johathan	Sanford	\N	\N	\N	DZ	\N	Basic	Invite	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_895	METABASE	895	Daphne Gulgowski	\N	\N	Daphne	Gulgowski	\N	\N	\N	CN	\N	Basic	Google	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_896	METABASE	896	Leonardo Langworth	\N	\N	Leonardo	Langworth	\N	\N	\N	FR	\N	Basic	Invite	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_897	METABASE	897	Reagan Senger	\N	\N	Reagan	Senger	\N	\N	\N	AU	\N	Business	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_898	METABASE	898	Greg Purdy	\N	\N	Greg	Purdy	\N	\N	\N	RU	\N	Basic	Invite	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_899	METABASE	899	Michel Wilderman	\N	\N	Michel	Wilderman	\N	\N	\N	NE	\N	Basic	Twitter	10	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_9	METABASE	9	Mikel Johns	\N	\N	Mikel	Johns	\N	\N	\N	US	\N	Premium	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_90	METABASE	90	Tina Hahn	\N	\N	Tina	Hahn	\N	\N	\N	RO	\N	Premium	\N	142	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_900	METABASE	900	Pietro Swift	\N	\N	Pietro	Swift	\N	\N	\N	RU	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_901	METABASE	901	Ruthe Hane	\N	\N	Ruthe	Hane	\N	\N	\N	IT	\N	Basic	\N	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_902	METABASE	902	Liam Graham	\N	\N	Liam	Graham	\N	\N	\N	LY	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_903	METABASE	903	Sterling Koch	\N	\N	Sterling	Koch	\N	\N	\N	JP	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_904	METABASE	904	Tyshawn Hermiston	\N	\N	Tyshawn	Hermiston	\N	\N	\N	US	\N	Basic	Google	12	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_905	METABASE	905	Jimmie Lang	\N	\N	Jimmie	Lang	\N	\N	\N	DE	\N	Basic	Google	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_906	METABASE	906	Archibald Wunsch	\N	\N	Archibald	Wunsch	\N	\N	\N	UA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_907	METABASE	907	Watson Gerhold	\N	\N	Watson	Gerhold	\N	\N	\N	IT	\N	Basic	\N	10	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_908	METABASE	908	Josh Schimmel	\N	\N	Josh	Schimmel	\N	\N	\N	GB	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_909	METABASE	909	Antwan Fisher	\N	\N	Antwan	Fisher	\N	\N	\N	DE	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_91	METABASE	91	Ferne Rosenbaum	\N	\N	Ferne	Rosenbaum	\N	\N	\N	RO	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_910	METABASE	910	Vergie Rempel	\N	\N	Vergie	Rempel	\N	\N	\N	CO	\N	Basic	\N	21	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_911	METABASE	911	Alphonso Rodriguez	\N	\N	Alphonso	Rodriguez	\N	\N	\N	IT	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_912	METABASE	912	Vito Eichmann	\N	\N	Vito	Eichmann	\N	\N	\N	ES	\N	Basic	Invite	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_913	METABASE	913	Wilfred Anderson	\N	\N	Wilfred	Anderson	\N	\N	\N	FR	\N	Basic	Twitter	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_914	METABASE	914	Milford Douglas	\N	\N	Milford	Douglas	\N	\N	\N	CZ	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_915	METABASE	915	Katharina Heathcote	\N	\N	Katharina	Heathcote	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_916	METABASE	916	Winfield King	\N	\N	Winfield	King	\N	\N	\N	MX	\N	Basic	\N	43	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_917	METABASE	917	Carmen Abshire	\N	\N	Carmen	Abshire	\N	\N	\N	US	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_918	METABASE	918	Margot Beahan	\N	\N	Margot	Beahan	\N	\N	\N	DE	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_919	METABASE	919	Mathias Altenwerth	\N	\N	Mathias	Altenwerth	\N	\N	\N	CN	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_92	METABASE	92	Francisco Robel	\N	\N	Francisco	Robel	\N	\N	\N	CZ	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_920	METABASE	920	Esther Douglas	\N	\N	Esther	Douglas	\N	\N	\N	BF	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_921	METABASE	921	Geoffrey Olson	\N	\N	Geoffrey	Olson	\N	\N	\N	SE	\N	Basic	Facebook	23	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_922	METABASE	922	Jarred Koch	\N	\N	Jarred	Koch	\N	\N	\N	US	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_923	METABASE	923	Nyah Keebler	\N	\N	Nyah	Keebler	\N	\N	\N	MX	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_924	METABASE	924	Domenic Daugherty	\N	\N	Domenic	Daugherty	\N	\N	\N	ES	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_925	METABASE	925	Ford Rolfson	\N	\N	Ford	Rolfson	\N	\N	\N	BR	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_926	METABASE	926	Marta Langworth	\N	\N	Marta	Langworth	\N	\N	\N	MX	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_927	METABASE	927	Elsie Sanford	\N	\N	Elsie	Sanford	\N	\N	\N	LS	\N	Basic	\N	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_928	METABASE	928	Amanda Boehm	\N	\N	Amanda	Boehm	\N	\N	\N	NE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_929	METABASE	929	Jorge Bins	\N	\N	Jorge	Bins	\N	\N	\N	ES	\N	Basic	\N	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_93	METABASE	93	Abby Larkin	\N	\N	Abby	Larkin	\N	\N	\N	FR	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_930	METABASE	930	Douglas Prosacco	\N	\N	Douglas	Prosacco	\N	\N	\N	MX	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_931	METABASE	931	Maye Rath	\N	\N	Maye	Rath	\N	\N	\N	GB	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_932	METABASE	932	Archibald Lowe	\N	\N	Archibald	Lowe	\N	\N	\N	UA	\N	Basic	Twitter	14	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_933	METABASE	933	Conrad King	\N	\N	Conrad	King	\N	\N	\N	NL	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_934	METABASE	934	Jeffry Grimes	\N	\N	Jeffry	Grimes	\N	\N	\N	MX	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_935	METABASE	935	Everette Kuphal	\N	\N	Everette	Kuphal	\N	\N	\N	AM	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_936	METABASE	936	Sophie Blanda	\N	\N	Sophie	Blanda	\N	\N	\N	DE	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_937	METABASE	937	Delfina Orn	\N	\N	Delfina	Orn	\N	\N	\N	DE	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_938	METABASE	938	Jeffery Frami	\N	\N	Jeffery	Frami	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_939	METABASE	939	Keshaun Carroll	\N	\N	Keshaun	Carroll	\N	\N	\N	DE	\N	Basic	Facebook	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_94	METABASE	94	Leone Littel	\N	\N	Leone	Littel	\N	\N	\N	RO	\N	Basic	\N	16	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_940	METABASE	940	Margarita Tromp	\N	\N	Margarita	Tromp	\N	\N	\N	GB	\N	Basic	Invite	30	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_941	METABASE	941	Eusebio Eichmann	\N	\N	Eusebio	Eichmann	\N	\N	\N	FR	\N	Basic	Facebook	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_942	METABASE	942	Marques Koch	\N	\N	Marques	Koch	\N	\N	\N	US	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_943	METABASE	943	Jo Gusikowski	\N	\N	Jo	Gusikowski	\N	\N	\N	PH	\N	Basic	\N	137	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_944	METABASE	944	Aniya Langosh	\N	\N	Aniya	Langosh	\N	\N	\N	GB	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_945	METABASE	945	Dina Wolf	\N	\N	Dina	Wolf	\N	\N	\N	US	\N	Basic	Twitter	19	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_946	METABASE	946	Jewell Wolf	\N	\N	Jewell	Wolf	\N	\N	\N	AU	\N	Basic	Twitter	41	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_947	METABASE	947	Burnice Daugherty	\N	\N	Burnice	Daugherty	\N	\N	\N	FR	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_948	METABASE	948	Cecelia Rolfson	\N	\N	Cecelia	Rolfson	\N	\N	\N	BR	\N	Basic	\N	87	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_949	METABASE	949	Margot Keeling	\N	\N	Margot	Keeling	\N	\N	\N	MX	\N	Basic	Invite	393	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_95	METABASE	95	Ivy Koelpin	\N	\N	Ivy	Koelpin	\N	\N	\N	FR	\N	Basic	Invite	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_950	METABASE	950	Sonny Beahan	\N	\N	Sonny	Beahan	\N	\N	\N	AU	\N	Basic	\N	107	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_951	METABASE	951	Shyann Boehm	\N	\N	Shyann	Boehm	\N	\N	\N	\N	\N	Basic	Google	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_952	METABASE	952	Virginia Prohaska	\N	\N	Virginia	Prohaska	\N	\N	\N	US	\N	Basic	Invite	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_953	METABASE	953	Rachelle Schmidt	\N	\N	Rachelle	Schmidt	\N	\N	\N	IT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_954	METABASE	954	Griffin Kling	\N	\N	Griffin	Kling	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_955	METABASE	955	Letha Streich	\N	\N	Letha	Streich	\N	\N	\N	AT	\N	Basic	\N	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_956	METABASE	956	Deonte Hoeger	\N	\N	Deonte	Hoeger	\N	\N	\N	US	\N	Basic	\N	390	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_957	METABASE	957	Madge Friesen	\N	\N	Madge	Friesen	\N	\N	\N	PL	\N	Basic	Invite	52	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_958	METABASE	958	Kamron Senger	\N	\N	Kamron	Senger	\N	\N	\N	US	\N	Basic	Google	91	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_959	METABASE	959	Abdullah Fisher	\N	\N	Abdullah	Fisher	\N	\N	\N	RO	\N	Basic	\N	8	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_96	METABASE	96	Alexandrine Rosenbaum	\N	\N	Alexandrine	Rosenbaum	\N	\N	\N	RO	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_960	METABASE	960	Morris Beahan	\N	\N	Morris	Beahan	\N	\N	\N	PL	\N	Basic	\N	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_961	METABASE	961	Magnolia O'Keefe	\N	\N	Magnolia	O'Keefe	\N	\N	\N	CA	\N	Basic	Twitter	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_962	METABASE	962	Vergie Borer	\N	\N	Vergie	Borer	\N	\N	\N	CA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_963	METABASE	963	Winfield Donnelly	\N	\N	Winfield	Donnelly	\N	\N	\N	GB	\N	Basic	Facebook	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_964	METABASE	964	Gregory Brakus	\N	\N	Gregory	Brakus	\N	\N	\N	BE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_965	METABASE	965	Marguerite Huels	\N	\N	Marguerite	Huels	\N	\N	\N	GR	\N	Basic	\N	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_966	METABASE	966	Arch Simonis	\N	\N	Arch	Simonis	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_967	METABASE	967	Enrique Wiegand	\N	\N	Enrique	Wiegand	\N	\N	\N	US	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_968	METABASE	968	Reagan DuBuque	\N	\N	Reagan	DuBuque	\N	\N	\N	BR	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_969	METABASE	969	Leilani Sanford	\N	\N	Leilani	Sanford	\N	\N	\N	LT	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_97	METABASE	97	Art Graham	\N	\N	Art	Graham	\N	\N	\N	DE	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_970	METABASE	970	Mellie Wolf	\N	\N	Mellie	Wolf	\N	\N	\N	BR	\N	Basic	Google	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_971	METABASE	971	Meagan Cremin	\N	\N	Meagan	Cremin	\N	\N	\N	MX	\N	Basic	Invite	3	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_972	METABASE	972	Wilhelmine Erdman	\N	\N	Wilhelmine	Erdman	\N	\N	\N	MX	\N	Basic	\N	32	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_973	METABASE	973	Guy Wiegand	\N	\N	Guy	Wiegand	\N	\N	\N	FR	\N	Basic	\N	3	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_974	METABASE	974	Cassandre Daugherty	\N	\N	Cassandre	Daugherty	\N	\N	\N	PL	\N	Basic	Google	23	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_975	METABASE	975	Ruthe Champlin	\N	\N	Ruthe	Champlin	\N	\N	\N	AR	\N	Basic	Invite	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_976	METABASE	976	Chester Eichmann	\N	\N	Chester	Eichmann	\N	\N	\N	PH	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_977	METABASE	977	Mara Prohaska	\N	\N	Mara	Prohaska	\N	\N	\N	AU	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_978	METABASE	978	Beau Rutherford	\N	\N	Beau	Rutherford	\N	\N	\N	YE	\N	Basic	\N	12	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_979	METABASE	979	Enos Morissette	\N	\N	Enos	Morissette	\N	\N	\N	PH	\N	Basic	Google	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_98	METABASE	98	Rex Smitham	\N	\N	Rex	Smitham	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_980	METABASE	980	Effie Wolff	\N	\N	Effie	Wolff	\N	\N	\N	ES	\N	Basic	Facebook	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_981	METABASE	981	Wilhelmine Ullrich	\N	\N	Wilhelmine	Ullrich	\N	\N	\N	ES	\N	Basic	Twitter	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_982	METABASE	982	Anais Douglas	\N	\N	Anais	Douglas	\N	\N	\N	TH	\N	Basic	Facebook	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_983	METABASE	983	Sterling Yundt	\N	\N	Sterling	Yundt	\N	\N	\N	IT	\N	Basic	Twitter	23	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_984	METABASE	984	Mazie Nienow	\N	\N	Mazie	Nienow	\N	\N	\N	DK	\N	Basic	Twitter	1	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_985	METABASE	985	William Terry	\N	\N	William	Terry	\N	\N	\N	US	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_986	METABASE	986	Earnestine Prohaska	\N	\N	Earnestine	Prohaska	\N	\N	\N	VN	\N	Basic	\N	1	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_987	METABASE	987	Bethel Schultz	\N	\N	Bethel	Schultz	\N	\N	\N	IT	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_988	METABASE	988	Taurean Wolf	\N	\N	Taurean	Wolf	\N	\N	\N	IN	\N	Basic	Google	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_989	METABASE	989	Jesse Daugherty	\N	\N	Jesse	Daugherty	\N	\N	\N	UA	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_99	METABASE	99	Dennis Parisian	\N	\N	Dennis	Parisian	\N	\N	\N	ES	\N	Basic	Invite	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_990	METABASE	990	Felipe Johnston	\N	\N	Felipe	Johnston	\N	\N	\N	PH	\N	Basic	Facebook	5	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_991	METABASE	991	Raphael Wolff	\N	\N	Raphael	Wolff	\N	\N	\N	MT	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_992	METABASE	992	Emery Gerlach	\N	\N	Emery	Gerlach	\N	\N	\N	UA	\N	Premium	Google	5	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_993	METABASE	993	Trisha Hoeger	\N	\N	Trisha	Hoeger	\N	\N	\N	BR	\N	Business	\N	5	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_994	METABASE	994	Lazaro Rodriguez	\N	\N	Lazaro	Rodriguez	\N	\N	\N	IT	\N	Basic	\N	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_995	METABASE	995	Diego Will	\N	\N	Diego	Will	\N	\N	\N	JO	\N	Basic	\N	8	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_996	METABASE	996	Kathleen Quitzon	\N	\N	Kathleen	Quitzon	\N	\N	\N	HN	\N	Basic	Twitter	3	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_997	METABASE	997	Briana Kuphal	\N	\N	Briana	Kuphal	\N	\N	\N	BR	\N	Basic	Invite	34	t	t	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_998	METABASE	998	Enrico Ferry	\N	\N	Enrico	Ferry	\N	\N	\N	UA	\N	Basic	Facebook	8	t	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_999	METABASE	999	Leonor Moore	\N	\N	Leonor	Moore	\N	\N	\N	DE	\N	Basic	Google	10	f	f	f	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1	METABASE	1	Hudson Borer	\N	\N	Hudson	Borer	9611-9809 West Rosedale Road	Wood River	NE	\N	68883	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_10	METABASE	10	Tressa White	\N	\N	Tressa	White	13081-13217 Main Street	Upper Sandusky	OH	\N	43351	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_100	METABASE	100	Nels Heaney	\N	\N	Nels	Heaney	6088 Meiss Road	Glenfield	NY	\N	13343	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1000	METABASE	1000	Craig Abshire	\N	\N	Craig	Abshire	162 Hartwell Road	Bedford	MA	\N	1730	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1001	METABASE	1001	Felipe Feeney	\N	\N	Felipe	Feeney	2600-2698 Buchanan Avenue	Arthur	IA	\N	51431	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1002	METABASE	1002	Martin Monahan	\N	\N	Martin	Monahan	291 Boenig Road	Woodsboro	TX	\N	78393	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1003	METABASE	1003	Orion Romaguera	\N	\N	Orion	Romaguera	69 Bixler Way	Jaffrey	NH	\N	3452	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1004	METABASE	1004	Alvis Emmerich	\N	\N	Alvis	Emmerich	1200-1250 Knox Road 300 East	Galesburg	IL	\N	61401	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1005	METABASE	1005	Bernardo Dietrich	\N	\N	Bernardo	Dietrich	9699 Kingrey Road	College Corner	OH	\N	45003	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1006	METABASE	1006	Gene Kemmer	\N	\N	Gene	Kemmer	46630 Benton Road	Atkinson	NE	\N	68713	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1007	METABASE	1007	Viva Willms	\N	\N	Viva	Willms	2261 Wilson Drive	Akron	OH	\N	44312	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1008	METABASE	1008	Khalid Blanda	\N	\N	Khalid	Blanda	10302 County Road 430	Shallowater	TX	\N	79363	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1009	METABASE	1009	Leonard Blick	\N	\N	Leonard	Blick	10819 North 2010 Road	Elk City	OK	\N	73644	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_101	METABASE	101	Beryl Reichel	\N	\N	Beryl	Reichel	3118 South 1938 Road	Rich Hill	MO	\N	64779	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1010	METABASE	1010	Nickolas Collins	\N	\N	Nickolas	Collins	253-265 Landsford Road	Catawba	SC	\N	29704	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1011	METABASE	1011	Roberto Becker	\N	\N	Roberto	Becker	1336 East Rosebud Road	Roscoe	MT	\N	59071	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1012	METABASE	1012	Andreanne Wiza	\N	\N	Andreanne	Wiza	42000 93rd Street Northeast	Regan	ND	\N	58477	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1013	METABASE	1013	Karen Nicolas	\N	\N	Karen	Nicolas	4801 83rd Avenue Southeast	Jamestown	ND	\N	58401	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1014	METABASE	1014	Lavern Boyle	\N	\N	Lavern	Boyle	11843 U.S. 212	Glencoe	MN	\N	55336	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1015	METABASE	1015	Benedict Schiller	\N	\N	Benedict	Schiller	121 Okatie Highway	Okatie	SC	\N	29909	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1016	METABASE	1016	Viola Schoen	\N	\N	Viola	Schoen	990 Mount Hunger Road	Bethel	VT	\N	5032	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1017	METABASE	1017	Maybelle Cummerata	\N	\N	Maybelle	Cummerata	276 State Highway 639	Albany	KY	\N	42602	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1018	METABASE	1018	Javier Strosin	\N	\N	Javier	Strosin	823 West Travertine Way	Kingman	AZ	\N	86409	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1019	METABASE	1019	Freddy Fay	\N	\N	Freddy	Fay	2700-2756 26th Street Northeast	Harvey	ND	\N	58341	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_102	METABASE	102	Kade Kub	\N	\N	Kade	Kub	550 Rock Creek Road	Clinton	MT	\N	59825	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1020	METABASE	1020	Darryl Bahringer	\N	\N	Darryl	Bahringer	1130-1390 West Taylor School Road	Hamilton	OH	\N	45013	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1021	METABASE	1021	Ladarius Ullrich	\N	\N	Ladarius	Ullrich	1096 Zion-Hampton Road	Collinsville	MS	\N	39325	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1022	METABASE	1022	Theodora Connelly	\N	\N	Theodora	Connelly	5668 Town Line Road	West Valley	NY	\N	14171	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1023	METABASE	1023	Pinkie Schulist	\N	\N	Pinkie	Schulist	3560 Hamilton Road	Harrison	MI	\N	48625	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1024	METABASE	1024	Eve Mante	\N	\N	Eve	Mante	1460 California 16	Rumsey	CA	\N	95679	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1025	METABASE	1025	Maye Kuhn	\N	\N	Maye	Kuhn	724 County Road 2729	Marietta	TX	\N	75566	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1026	METABASE	1026	Aiyana Bradtke	\N	\N	Aiyana	Bradtke	207 South Railroad Avenue	Harleyville	SC	\N	29448	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1027	METABASE	1027	Nyah Keebler	\N	\N	Nyah	Keebler	80 North Lakeside Drive	Amarillo	TX	\N	79118	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1028	METABASE	1028	Trace Walker	\N	\N	Trace	Walker	N3466 County Road H	Melrose	WI	\N	54642	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1029	METABASE	1029	Paris Herzog	\N	\N	Paris	Herzog	687 County Road North	North Bend	NE	\N	68649	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_103	METABASE	103	Jayce Hilpert	\N	\N	Jayce	Hilpert	16780 14th Street Northeast	Buxton	ND	\N	58218	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1030	METABASE	1030	Samir Johnson	\N	\N	Samir	Johnson	685 West 300 South	Tipton	IN	\N	46072	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1031	METABASE	1031	Garry Paucek	\N	\N	Garry	Paucek	8102-8104 Cattle Drive	Austin	TX	\N	78749	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1032	METABASE	1032	Lisandro Skiles	\N	\N	Lisandro	Skiles	35579 Rabbit Trail	Ashby	MN	\N	56309	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1033	METABASE	1033	Arnaldo Nader	\N	\N	Arnaldo	Nader	136 Hadley Hill Road	Hadley	NY	\N	12835	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1034	METABASE	1034	Dane Huel	\N	\N	Dane	Huel	10245 County Road 74-82	Peyton	CO	\N	80831	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1035	METABASE	1035	Blake Leffler	\N	\N	Blake	Leffler	1522 Cooper Hill Road	Birmingham	AL	\N	35213	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1036	METABASE	1036	Clarabelle Tillman	\N	\N	Clarabelle	Tillman	2202 County Road 2130	Meridian	TX	\N	76665	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1037	METABASE	1037	Savanah Will	\N	\N	Savanah	Will	373-605 Georgia 63	Commerce	GA	\N	30529	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1038	METABASE	1038	Luna Nienow	\N	\N	Luna	Nienow	3542 Weed-Keltner Road	Columbia	KY	\N	42728	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1039	METABASE	1039	Jarred Koch	\N	\N	Jarred	Koch	85 Melton Lane	Marion	AL	\N	36756	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_104	METABASE	104	Briana Kuphal	\N	\N	Briana	Kuphal	6183 Old Dixie Highway	Evensville	TN	\N	37332	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1040	METABASE	1040	Ike Homenick	\N	\N	Ike	Homenick	3675 Captain Yancey Road	Elkton	VA	\N	22827	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1041	METABASE	1041	Geoffrey Olson	\N	\N	Geoffrey	Olson	1200-1298 U.S. 380	Brownfield	TX	\N	79316	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1042	METABASE	1042	Martina Altenwerth	\N	\N	Martina	Altenwerth	155 Compton Road	Ithaca	NY	\N	14850	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1043	METABASE	1043	Daphnee Trantow	\N	\N	Daphnee	Trantow	4001-4045 23rd Street Northeast	Harvey	ND	\N	58341	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1044	METABASE	1044	Everett Little	\N	\N	Everett	Little	1973-2050 Badgerland Drive	Howard	WI	\N	54303	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1045	METABASE	1045	Clementine Collins	\N	\N	Clementine	Collins	2043 Harrison Avenue	Rock Rapids	IA	\N	51246	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1046	METABASE	1046	Christophe Cole	\N	\N	Christophe	Cole	431 Mitchell Road	Valley Mills	TX	\N	76689	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1047	METABASE	1047	Andy Mills	\N	\N	Andy	Mills	8306 Jefferson Highway	Mineral	VA	\N	23117	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1048	METABASE	1048	Eino Cronin	\N	\N	Eino	Cronin	725 Woodlawn Street	Marshfield	MO	\N	65706	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1049	METABASE	1049	Audra Mante	\N	\N	Audra	Mante	1800-1866 Upper Hurricane Creek Road	New Market	AL	\N	35761	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_105	METABASE	105	Carleton Effertz	\N	\N	Carleton	Effertz	3135 Sanhedrin Road	Elk Creek	CA	\N	95939	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1050	METABASE	1050	Florence Donnelly	\N	\N	Florence	Donnelly	204 Pzinski Road	Newcastle	WY	\N	82701	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1051	METABASE	1051	Mason Ferry	\N	\N	Mason	Ferry	510 Pate Road	Huntingdon	TN	\N	38344	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1052	METABASE	1052	Clotilde Johns	\N	\N	Clotilde	Johns	325 Stephanie Place	East Wenatchee	WA	\N	98802	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1053	METABASE	1053	Earnestine Crona	\N	\N	Earnestine	Crona	16154 Cedar Canyon Road	Faith	SD	\N	57626	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1054	METABASE	1054	Dina Hand	\N	\N	Dina	Hand	13500 County Road 226	Brownwood	TX	\N	76801	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1055	METABASE	1055	Madisen Kunde	\N	\N	Madisen	Kunde	7100 Cold Spring Creek	Dillon	MT	\N	59725	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1056	METABASE	1056	Sydnie Schimmel	\N	\N	Sydnie	Schimmel	321-403 Sugar Hill Road	Shubuta	MS	\N	39360	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1057	METABASE	1057	Linwood Osinski	\N	\N	Linwood	Osinski	1 Rabbit Island	Hammond	NY	\N	13646	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1058	METABASE	1058	Jacques Wunsch	\N	\N	Jacques	Wunsch	1400-1455 60th Avenue Northeast	Cathay	ND	\N	58422	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1059	METABASE	1059	Hollis Adams	\N	\N	Hollis	Adams	4840 Highway 328	Eubank	KY	\N	42567	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_106	METABASE	106	Rosina O'Connell	\N	\N	Rosina	O'Connell	1701-1999 West County Road 850 North	Lizton	IN	\N	46149	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1060	METABASE	1060	Karina Borer	\N	\N	Karina	Borer	988 32nd Avenue Southwest	Backus	MN	\N	56435	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1061	METABASE	1061	Jessika Kutch	\N	\N	Jessika	Kutch	4614 North Rolland Road	Lake	MI	\N	48632	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1062	METABASE	1062	Monty Lynch	\N	\N	Monty	Lynch	341 County Road 59	Alliance	NE	\N	69301	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1063	METABASE	1063	Flo Dickens	\N	\N	Flo	Dickens	6 Mahoney Road	East Windsor	CT	\N	6088	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1064	METABASE	1064	Misty Connelly	\N	\N	Misty	Connelly	6017 U.S. 23	Folkston	GA	\N	31537	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1065	METABASE	1065	Jazmin Rau	\N	\N	Jazmin	Rau	2129-2679 Beaverslide Road	Carter	MT	\N	59420	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1066	METABASE	1066	Norwood Gutmann	\N	\N	Norwood	Gutmann	1121 Tolar Cemetery Road	Tolar	TX	\N	76476	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1067	METABASE	1067	Glenda Cassin	\N	\N	Glenda	Cassin	200 German Hill Road	Shohola	PA	\N	18458	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1068	METABASE	1068	Bret Quigley	\N	\N	Bret	Quigley	17211 Tyler Station Road	Beaverdam	VA	\N	23015	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1069	METABASE	1069	Ansley Cummings	\N	\N	Ansley	Cummings	822 South Coalmine Road	Bloomfield	IN	\N	47424	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_107	METABASE	107	Verla O'Kon	\N	\N	Verla	O'Kon	48502-48654 150th Avenue	Pocahontas	IA	\N	50574	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1070	METABASE	1070	Skye Heidenreich	\N	\N	Skye	Heidenreich	14272-14502 Oak Meadow Road	Penn Valley	CA	\N	95946	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1071	METABASE	1071	Helen Crooks	\N	\N	Helen	Crooks	10551 County Road 188	Waverly	AL	\N	36879	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1072	METABASE	1072	Markus Hirthe	\N	\N	Markus	Hirthe	898 280th Street	Woodville	WI	\N	54028	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1073	METABASE	1073	Aditya Nienow	\N	\N	Aditya	Nienow	101-127 510th Street	Emmons	MN	\N	56029	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1074	METABASE	1074	Joan Ortiz	\N	\N	Joan	Ortiz	13245 Lagrange Road	Grand Junction	TN	\N	38039	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1075	METABASE	1075	Eliezer Conroy	\N	\N	Eliezer	Conroy	47450 Alabama 77	Ashland	AL	\N	36251	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1076	METABASE	1076	Jaida Huels	\N	\N	Jaida	Huels	2750 Oat Road	Clyde	KS	\N	66938	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1077	METABASE	1077	Veronica Weissnat	\N	\N	Veronica	Weissnat	6854 Barney Road	Jacksonville	FL	\N	32219	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1078	METABASE	1078	Keenan Ferry	\N	\N	Keenan	Ferry	800-1110 Cool Springs Ellenton Road	Norman Park	GA	\N	31771	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1079	METABASE	1079	Johanna Homenick	\N	\N	Johanna	Homenick	569-799 Flint Lane	Burfordville	MO	\N	63739	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_108	METABASE	108	Archibald Von	\N	\N	Archibald	Von	5706 Farm to Market 1743	Windom	TX	\N	75492	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1080	METABASE	1080	Shawna Kilback	\N	\N	Shawna	Kilback	21801-21853 427th Avenue	Carthage	SD	\N	57323	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1081	METABASE	1081	Esther Douglas	\N	\N	Esther	Douglas	7376 Union Grove Road	Lithonia	GA	\N	30058	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1082	METABASE	1082	Giovanny Nicolas	\N	\N	Giovanny	Nicolas	1076 Featherston Road	Homer	LA	\N	71040	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1083	METABASE	1083	Mathias Altenwerth	\N	\N	Mathias	Altenwerth	2047 Hayes Avenue	Fort Dodge	IA	\N	50501	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1084	METABASE	1084	Tamia Larkin	\N	\N	Tamia	Larkin	1832 Boner Road	Lusk	WY	\N	82225	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1085	METABASE	1085	Felicita Barrows	\N	\N	Felicita	Barrows	831 Lake Forest Drive	Bonner Springs	KS	\N	66012	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1086	METABASE	1086	Eleanora Smith	\N	\N	Eleanora	Smith	6693 Virginia 49	Buffalo Junction	VA	\N	24529	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1087	METABASE	1087	Shaina Witting	\N	\N	Shaina	Witting	104 3rd Street Southwest	Rothsay	MN	\N	56579	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1088	METABASE	1088	Mertie Windler	\N	\N	Mertie	Windler	10850 Gibbon Road	Gibbon	NE	\N	68840	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1089	METABASE	1089	George Wiza	\N	\N	George	Wiza	5322 County Road 2910	West Plains	MO	\N	65775	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_109	METABASE	109	Anais Dare	\N	\N	Anais	Dare	271 West Comet Road	Clinton	OH	\N	44216	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1090	METABASE	1090	Lillian Sauer	\N	\N	Lillian	Sauer	56 Richardson Highway	Valdez	AK	\N	99686	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1091	METABASE	1091	Margot Beahan	\N	\N	Margot	Beahan	1846-1898 70th Street	Balsam Lake	WI	\N	54810	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1092	METABASE	1092	Carmen Abshire	\N	\N	Carmen	Abshire	597 Willow Brook Road	Plainfield	NH	\N	3781	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1093	METABASE	1093	Mollie Lynch	\N	\N	Mollie	Lynch	8216 U.S. 87	Fredericksburg	TX	\N	78624	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1094	METABASE	1094	Salvador Prohaska	\N	\N	Salvador	Prohaska	452 Sussex Road	Kaycee	WY	\N	82639	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1095	METABASE	1095	Armand Cronin	\N	\N	Armand	Cronin	9 Pocotaligo Place	Sheldon	SC	\N	29941	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1096	METABASE	1096	Jermaine Schmeler	\N	\N	Jermaine	Schmeler	701-713 State Road S-35-574	McColl	SC	\N	29570	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1097	METABASE	1097	Arnoldo Hessel	\N	\N	Arnoldo	Hessel	6704 425 East	Albany	IN	\N	47320	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1098	METABASE	1098	Pearl Bauch	\N	\N	Pearl	Bauch	3037 Jack Bennett Road	Chapel Hill	NC	\N	27517	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1099	METABASE	1099	Aidan Toy	\N	\N	Aidan	Toy	6132 Texas 315	Carthage	TX	\N	75633	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_11	METABASE	11	Lolita Schaefer	\N	\N	Lolita	Schaefer	495 Juniper Road	Pilot Mound	IA	\N	50223	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_110	METABASE	110	Alexanne Wisoky	\N	\N	Alexanne	Wisoky	5361 East 700 South	Brook	IN	\N	47922	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1100	METABASE	1100	Rudy Cremin	\N	\N	Rudy	Cremin	530 Oak Valley Farm Road	Coats	NC	\N	27521	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1101	METABASE	1101	Patrick Torp	\N	\N	Patrick	Torp	14300-14396 64th Street Southeast	Lisbon	ND	\N	58054	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1102	METABASE	1102	Winona Cassin	\N	\N	Winona	Cassin	25316 180th Street	Purcell	OK	\N	73080	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1103	METABASE	1103	Winfield King	\N	\N	Winfield	King	26255 Richards Ranch Road	Sonora	CA	\N	95370	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1104	METABASE	1104	Roberto Armstrong	\N	\N	Roberto	Armstrong	805-1005 North Lane	Eagleville	TN	\N	37060	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1105	METABASE	1105	Brody O'Reilly	\N	\N	Brody	O'Reilly	18717 Northwest Dairy Creek Road	North Plains	OR	\N	97133	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1106	METABASE	1106	Arne Kub	\N	\N	Arne	Kub	16511 Sperry Lake Road	Atwater	MN	\N	56209	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1107	METABASE	1107	Leonora Howell	\N	\N	Leonora	Howell	2461-2499 Lancer Avenue	Marble Rock	IA	\N	50653	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1108	METABASE	1108	Wyatt McDermott	\N	\N	Wyatt	McDermott	69 Ranch Road 1913	Channing	TX	\N	79018	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1109	METABASE	1109	Mohammed Powlowski	\N	\N	Mohammed	Powlowski	2630 State Road 13	Fruit Cove	FL	\N	32259	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_111	METABASE	111	Augustine Runolfsdottir	\N	\N	Augustine	Runolfsdottir	521-599 Louisiana 27	Bell City	LA	\N	70630	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1110	METABASE	1110	Peyton Barton	\N	\N	Peyton	Barton	2166 Fairview Church Road	Bonne Terre	MO	\N	63628	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1111	METABASE	1111	Chanel Carroll	\N	\N	Chanel	Carroll	358 Gully Horn Spring Trail	Saint Matthews	SC	\N	29135	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1112	METABASE	1112	Breanna Strosin	\N	\N	Breanna	Strosin	8439 Cedar Fork Road	New Haven	MO	\N	63068	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1113	METABASE	1113	Violet Hills	\N	\N	Violet	Hills	4931 Lay Springs Road	Gadsden	AL	\N	35904	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1114	METABASE	1114	Celestino Wintheiser	\N	\N	Celestino	Wintheiser	55501-55999 120 Street	Lyle	MN	\N	55953	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1115	METABASE	1115	Gina Schneider	\N	\N	Gina	Schneider	3635 Cheat Valley Highway	Parsons	WV	\N	26287	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1116	METABASE	1116	Jaron Hansen	\N	\N	Jaron	Hansen	787-891 Busby Road	Grayson	LA	\N	71435	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1117	METABASE	1117	Katharina Heathcote	\N	\N	Katharina	Heathcote	3501-3629 Clark Road	Live Oak	CA	\N	95953	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1118	METABASE	1118	Marta Kuvalis	\N	\N	Marta	Kuvalis	16073 Fish Lake Road	Holly	MI	\N	48442	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1119	METABASE	1119	Alisha Kilback	\N	\N	Alisha	Kilback	3300-3348 30th Avenue Southeast	Steele	ND	\N	58482	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_112	METABASE	112	Theresa Grant	\N	\N	Theresa	Grant	370 North Street	Maxwell	CA	\N	95955	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1120	METABASE	1120	Violette Wisozk	\N	\N	Violette	Wisozk	35909 California 99	Kingsburg	CA	\N	93631	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1121	METABASE	1121	Marlene Cassin	\N	\N	Marlene	Cassin	37000-38298 262nd Street Northeast	Wing	ND	\N	58494	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1122	METABASE	1122	Milford Douglas	\N	\N	Milford	Douglas	14517 Northwest 232 Street	High Springs	FL	\N	32643	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1123	METABASE	1123	Creola Satterfield	\N	\N	Creola	Satterfield	18885 Philo Greenwood Road	Philo	CA	\N	95466	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1124	METABASE	1124	Ryan Cormier	\N	\N	Ryan	Cormier	1305 Moon Creek Road	Miles City	MT	\N	59301	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1125	METABASE	1125	Kaia Waters	\N	\N	Kaia	Waters	2472 Farm to Market Road 2190	Jacksboro	TX	\N	76458	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1126	METABASE	1126	Harrison Ortiz	\N	\N	Harrison	Ortiz	2200-2298 240th Street	Rippey	IA	\N	50235	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1127	METABASE	1127	Aurelio Jacobson	\N	\N	Aurelio	Jacobson	1265 Fm 1948 Road North	Burton	TX	\N	77835	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1128	METABASE	1128	Filomena Waelchi	\N	\N	Filomena	Waelchi	501-547 Northwest 14th Street	Lawton	OK	\N	73507	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1129	METABASE	1129	Elyssa Cronin	\N	\N	Elyssa	Cronin	54250 Rockport Cascade Road	Rockport	WA	\N	98283	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_113	METABASE	113	Kathleen Quitzon	\N	\N	Kathleen	Quitzon	1711 Welliver Road	Redstone	MT	\N	59257	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1130	METABASE	1130	Gideon Fadel	\N	\N	Gideon	Fadel	805 Freedom Plains Road	Poughkeepsie	NY	\N	12603	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1131	METABASE	1131	Flavio Thompson	\N	\N	Flavio	Thompson	32000-32486 195th Avenue	New Prague	MN	\N	56071	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1132	METABASE	1132	Camryn Murazik	\N	\N	Camryn	Murazik	16168-16246 Lake Shore Drive	Caldwell	ID	\N	83607	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1133	METABASE	1133	Wilfred Anderson	\N	\N	Wilfred	Anderson	7601-7699 North Ridge Road	Madison	OH	\N	44057	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1134	METABASE	1134	Lillie Wilderman	\N	\N	Lillie	Wilderman	120 Winchester Drive	Wendell	NC	\N	27591	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1135	METABASE	1135	Gene Lueilwitz	\N	\N	Gene	Lueilwitz	22762-23198 County Road 85	Osakis	MN	\N	56360	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1136	METABASE	1136	Amely Wyman	\N	\N	Amely	Wyman	8770 Geysers Road	Geyserville	CA	\N	95441	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1137	METABASE	1137	Jamal Bayer	\N	\N	Jamal	Bayer	10389 68th Street Northwest	Tioga	ND	\N	58852	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1138	METABASE	1138	Morris Gaylord	\N	\N	Morris	Gaylord	740 Lutheran Camp Road	Lakeside	MT	\N	59922	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1139	METABASE	1139	Kasey Roob	\N	\N	Kasey	Roob	15164-15254 25th Street	Bloomfield	IA	\N	52537	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_114	METABASE	114	Wilbert Greenfelder	\N	\N	Wilbert	Greenfelder	1 A Point Pleasant Road	Hopatcong	NJ	\N	7843	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1140	METABASE	1140	Curtis Morar	\N	\N	Curtis	Morar	4852-4888 215th Street	Deep River	IA	\N	52222	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1141	METABASE	1141	Onie Altenwerth	\N	\N	Onie	Altenwerth	9893 Northwest 1st Street	Bristol	FL	\N	32321	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1142	METABASE	1142	Corbin Wiegand	\N	\N	Corbin	Wiegand	232-486 Bottom Road	Ashville	PA	\N	16613	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1143	METABASE	1143	Triston Kuvalis	\N	\N	Triston	Kuvalis	56901-56999 Wynridge Circle	Elkhart	IN	\N	46516	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1144	METABASE	1144	Gerald Mayert	\N	\N	Gerald	Mayert	15288-15770 Farm to Market Road 306	Canyon Lake	TX	\N	78133	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1145	METABASE	1145	Deborah Boyle	\N	\N	Deborah	Boyle	381 Cardinal Lane	Cottageville	SC	\N	29435	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1146	METABASE	1146	Hope Kassulke	\N	\N	Hope	Kassulke	12678 South Whitehouse Road	Fayetteville	AR	\N	72701	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1147	METABASE	1147	Nick Collier	\N	\N	Nick	Collier	13901 Mountain Laurel Grove	Lanexa	VA	\N	23089	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1148	METABASE	1148	Dax Bartell	\N	\N	Dax	Bartell	2331 East Roosevelt Road	Merced	CA	\N	95341	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1149	METABASE	1149	Khalil Padberg	\N	\N	Khalil	Padberg	18959 291st Avenue	Pierre	SD	\N	57501	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_115	METABASE	115	Edwin Spencer	\N	\N	Edwin	Spencer	28161 FM 521 Road	Angleton	TX	\N	77515	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1150	METABASE	1150	Camron Homenick	\N	\N	Camron	Homenick	2086-2186 Shepherd Crossing Road	Highwood	MT	\N	59450	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1151	METABASE	1151	Norene Cole	\N	\N	Norene	Cole	42 Offwhite Rock Road	Tonasket	WA	\N	98855	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1152	METABASE	1152	Erica Orn	\N	\N	Erica	Orn	210 Harrold Rose Road	Ezel	KY	\N	41425	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1153	METABASE	1153	Carmela Schinner	\N	\N	Carmela	Schinner	18280-18998 County Road 22	Clarissa	MN	\N	56440	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1154	METABASE	1154	Merritt Weber	\N	\N	Merritt	Weber	1B Southeast	Mount Pleasant	TX	\N	75455	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1155	METABASE	1155	Boris Gerhold	\N	\N	Boris	Gerhold	1352 Clella Circle	Bee Branch	AR	\N	72013	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1156	METABASE	1156	Caleb Dare	\N	\N	Caleb	Dare	27004 Teeney Weeney Lane	Folsom	LA	\N	70437	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1157	METABASE	1157	Jensen Dare	\N	\N	Jensen	Dare	65053 Crane Buchanan Road	Burns	OR	\N	97720	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1158	METABASE	1158	Muhammad Waters	\N	\N	Muhammad	Waters	12035-12483 39th Avenue Northwest	Garfield	MN	\N	56332	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1159	METABASE	1159	Maeve Hilpert	\N	\N	Maeve	Hilpert	1000-1398 Roberts Chapel Road	Goldston	NC	\N	27252	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_116	METABASE	116	Jimmie Doyle	\N	\N	Jimmie	Doyle	2020-2026 Rosebud Creek Road	Forsyth	MT	\N	59327	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1160	METABASE	1160	Patience Heidenreich	\N	\N	Patience	Heidenreich	14786 420th Avenue	Bristol	SD	\N	57219	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1161	METABASE	1161	Cortney Zemlak	\N	\N	Cortney	Zemlak	4443 Mathis Mill Road	Valdosta	GA	\N	31602	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1162	METABASE	1162	Sherwood Larson	\N	\N	Sherwood	Larson	627 West 130th Avenue North	Conway Springs	KS	\N	67031	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1163	METABASE	1163	Otto Krajcik	\N	\N	Otto	Krajcik	W5941 M Johnson Road	Holmen	WI	\N	54636	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1164	METABASE	1164	Annetta Zulauf	\N	\N	Annetta	Zulauf	74384 Avenue 359	Hayes Center	NE	\N	69032	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1165	METABASE	1165	Makayla Ondricka	\N	\N	Makayla	Ondricka	17701-17799 69th Street Southeast	Wahpeton	ND	\N	58075	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1166	METABASE	1166	Dusty Trantow	\N	\N	Dusty	Trantow	795-805 Shivers Road	Pinola	MS	\N	39149	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1167	METABASE	1167	Vanessa Jaskolski	\N	\N	Vanessa	Jaskolski	1301 Branch Road	Pavo	GA	\N	31778	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1168	METABASE	1168	Ernestine Erdman	\N	\N	Ernestine	Erdman	50600 South Oilwell Road	Willow	AK	\N	99688	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1169	METABASE	1169	Jerrell Swaniawski	\N	\N	Jerrell	Swaniawski	32372 County Road 3g	Genoa	CO	\N	80818	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_117	METABASE	117	Hollis Hettinger	\N	\N	Hollis	Hettinger	10237 Pennsylvania 285	Conneaut Lake	PA	\N	16316	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1170	METABASE	1170	Gunnar Huels	\N	\N	Gunnar	Huels	6040 Carsley Road	Waverly	VA	\N	23890	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1171	METABASE	1171	Humberto Beer	\N	\N	Humberto	Beer	115 East Holderness Road	Holderness	NH	\N	3245	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1172	METABASE	1172	Camryn Wunsch	\N	\N	Camryn	Wunsch	2110-2198 Palm Avenue	Garner	IA	\N	50438	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1173	METABASE	1173	Anastacio Jaskolski	\N	\N	Anastacio	Jaskolski	1148-1472 County Road 238	Concepcion	TX	\N	78349	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1174	METABASE	1174	Rosamond Wiegand	\N	\N	Rosamond	Wiegand	6594-6850 130th Avenue	Princeton	MN	\N	55371	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1175	METABASE	1175	Aidan Jacobi	\N	\N	Aidan	Jacobi	4 Osage Pass	Sand Springs	OK	\N	74063	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1176	METABASE	1176	Mylene Green	\N	\N	Mylene	Green	16000-16498 County Road 00 North	Industry	IL	\N	61440	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1177	METABASE	1177	Vincenzo Spencer	\N	\N	Vincenzo	Spencer	W23274 German Coulee Lane	Galesville	WI	\N	54630	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1178	METABASE	1178	Ronaldo Willms	\N	\N	Ronaldo	Willms	244 Wesley Road	Quarryville	PA	\N	17566	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1179	METABASE	1179	Stone Koelpin	\N	\N	Stone	Koelpin	4550 Highland Road	Thiensville	WI	\N	53092	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_118	METABASE	118	Diego Will	\N	\N	Diego	Will	870 Marions Ferry Road	Huntington	TX	\N	75949	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1180	METABASE	1180	Fred Mueller	\N	\N	Fred	Mueller	2225 FM 2848	Valley View	TX	\N	76272	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1181	METABASE	1181	Giovanni Smitham	\N	\N	Giovanni	Smitham	401 North Main Street	Englewood	OH	\N	45322	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1182	METABASE	1182	Jean Larson	\N	\N	Jean	Larson	3701-3793 1st Lane	Oxford	WI	\N	53952	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1183	METABASE	1183	Vito Eichmann	\N	\N	Vito	Eichmann	815 Cairo Road	Morven	NC	\N	28119	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1184	METABASE	1184	Dave Lesch	\N	\N	Dave	Lesch	6945 County Road P	Manitowish Waters	WI	\N	54545	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1185	METABASE	1185	Coby Stiedemann	\N	\N	Coby	Stiedemann	6894 146th Avenue Northwest	Williston	ND	\N	58801	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1186	METABASE	1186	Marcellus Wolf	\N	\N	Marcellus	Wolf	601-685 US for Service Highway 15	Isabella	MN	\N	55607	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1187	METABASE	1187	Ashtyn Orn	\N	\N	Ashtyn	Orn	1700-1762 Wyatt Road	Standish	MI	\N	48658	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1188	METABASE	1188	Arno Nienow	\N	\N	Arno	Nienow	9 Farm to Market 842	Lufkin	TX	\N	75901	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1189	METABASE	1189	Aniyah Bins	\N	\N	Aniyah	Bins	114 Pine Street	Bainbridge	GA	\N	39819	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_119	METABASE	119	Makayla Heathcote	\N	\N	Makayla	Heathcote	2945-2965 Gillsville Highway	Gainesville	GA	\N	30507	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1190	METABASE	1190	Adrienne Kessler	\N	\N	Adrienne	Kessler	671 Strand Pond Circle	Webster	NY	\N	14580	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1191	METABASE	1191	Alphonso Rodriguez	\N	\N	Alphonso	Rodriguez	150 Wintermote Road	Douglas	WY	\N	82633	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1192	METABASE	1192	Dereck Hudson	\N	\N	Dereck	Hudson	38045 County Highway 64	Ashby	MN	\N	56309	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1193	METABASE	1193	Fay Thompson	\N	\N	Fay	Thompson	1220 Chisenhall Road	Angier	NC	\N	27501	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1194	METABASE	1194	Phyllis Auer	\N	\N	Phyllis	Auer	5504 Lighthouse Circle	Gautier	MS	\N	39553	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1195	METABASE	1195	Alessandra Feeney	\N	\N	Alessandra	Feeney	1213-1299 T Road	Wisner	NE	\N	68791	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1196	METABASE	1196	Kitty Hessel	\N	\N	Kitty	Hessel	330-422 Northeast 151 Street	Warrensburg	MO	\N	64093	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1197	METABASE	1197	Hanna Schaden	\N	\N	Hanna	Schaden	1369 Beechwood Drive	Jesup	GA	\N	31545	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1198	METABASE	1198	Harley Ziemann	\N	\N	Harley	Ziemann	289-499 Lawrence 1245	Ash Grove	MO	\N	65604	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1199	METABASE	1199	Kaya Satterfield	\N	\N	Kaya	Satterfield	3864 Beech Bluff Road	Beech Bluff	TN	\N	38313	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_12	METABASE	12	Ciara Larson	\N	\N	Ciara	Larson	16701-16743 449th Avenue	Florence	SD	\N	57235	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_120	METABASE	120	Ashton Schmidt	\N	\N	Ashton	Schmidt	538 Clark Street	Gardner	MA	\N	1440	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1200	METABASE	1200	Vergie Rempel	\N	\N	Vergie	Rempel	604 Quarry Road	Springville	PA	\N	18844	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1201	METABASE	1201	Kaycee Keebler	\N	\N	Kaycee	Keebler	2909 Herring Road	Arvin	CA	\N	93203	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1202	METABASE	1202	Christine Hills	\N	\N	Christine	Hills	448 East Shore Road	Kings Point	NY	\N	11024	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1203	METABASE	1203	Vella Fadel	\N	\N	Vella	Fadel	2078 South Rudolphs Road	Maple	WI	\N	54854	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1204	METABASE	1204	Myrtle Bahringer	\N	\N	Myrtle	Bahringer	1700-1776 175th Street	Fort Dodge	IA	\N	50501	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1205	METABASE	1205	Monroe Kulas	\N	\N	Monroe	Kulas	8053 Hannum Road	Mayville	NY	\N	14757	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1206	METABASE	1206	Diamond Kuvalis	\N	\N	Diamond	Kuvalis	6700 Ridgeview Drive	Black Hawk	SD	\N	57718	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1207	METABASE	1207	Gage Labadie	\N	\N	Gage	Labadie	2622 County Road K	Mauston	WI	\N	53948	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1208	METABASE	1208	Alva Conroy	\N	\N	Alva	Conroy	376-586 North Muddy Road	Riverton	WY	\N	82501	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1209	METABASE	1209	Juanita Kessler	\N	\N	Juanita	Kessler	311 South 18th Street	Plattsmouth	NE	\N	68048	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_121	METABASE	121	Trace Morar	\N	\N	Trace	Morar	41706 280th Street	Tripp	SD	\N	57376	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1210	METABASE	1210	Alfonzo Quigley	\N	\N	Alfonzo	Quigley	4623 Oak Ridge Road	Morgantown	KY	\N	42261	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1211	METABASE	1211	Kelsi Douglas	\N	\N	Kelsi	Douglas	971-1135 Gowdy Road	Venus	PA	\N	16364	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1212	METABASE	1212	Liam Schoen	\N	\N	Liam	Schoen	28201-28869 233rd Avenue Southwest	Ryder	ND	\N	58779	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1213	METABASE	1213	Russell Muller	\N	\N	Russell	Muller	7247 Fort King Road	Zephyrhills	FL	\N	33541	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1214	METABASE	1214	Susan Abernathy	\N	\N	Susan	Abernathy	9970 Watson Seed Farm Road	Whitakers	NC	\N	27891	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1215	METABASE	1215	Estefania Conroy	\N	\N	Estefania	Conroy	14462-14560 Township Road 1061	Thornville	OH	\N	43076	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1216	METABASE	1216	Johnson Mohr	\N	\N	Johnson	Mohr	59870-61498 Clackamas Highway	Estacada	OR	\N	97023	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1217	METABASE	1217	Bernita Volkman	\N	\N	Bernita	Volkman	29675 Komsolmol Street	Anchor Point	AK	\N	99556	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1218	METABASE	1218	Freddie Dickens	\N	\N	Freddie	Dickens	3 Burnt Cove Road	Stonington	ME	\N	4681	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1219	METABASE	1219	Toby Sporer	\N	\N	Toby	Sporer	10684 Main Street	Clarence	NY	\N	14031	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_122	METABASE	122	Brant Dare	\N	\N	Brant	Dare	31541 California 33	Maricopa	CA	\N	93252	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1220	METABASE	1220	Lizeth VonRueden	\N	\N	Lizeth	VonRueden	16467 South 82 Road	Pickrell	NE	\N	68422	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1221	METABASE	1221	Edwin Von	\N	\N	Edwin	Von	36728-36798 Road 606	Raymond	CA	\N	93653	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1222	METABASE	1222	Chad Reynolds	\N	\N	Chad	Reynolds	198 County Road 60	Stapleton	NE	\N	69163	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1223	METABASE	1223	Antwan Fisher	\N	\N	Antwan	Fisher	7750 Michalik Lane	Wisconsin Rapids	WI	\N	54495	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1224	METABASE	1224	Emmy Schimmel	\N	\N	Emmy	Schimmel	25 Mile Creek Road	Chelan	WA	\N	98816	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1225	METABASE	1225	Alayna Beatty	\N	\N	Alayna	Beatty	3401 South 343rd Street West	Cheney	KS	\N	67025	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1226	METABASE	1226	Veronica Stark	\N	\N	Veronica	Stark	5477 County Road 343	Forestburg	TX	\N	76239	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1227	METABASE	1227	Murray Wintheiser	\N	\N	Murray	Wintheiser	200 George Gray Rd	Danville	GA	\N	31017	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1228	METABASE	1228	Joe Becker	\N	\N	Joe	Becker	6101 Wright Road	Kannapolis	NC	\N	28081	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1229	METABASE	1229	Angel Auer	\N	\N	Angel	Auer	8600 East 90th Street	Tennessee	IL	\N	62374	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_123	METABASE	123	Gerald Hermiston	\N	\N	Gerald	Hermiston	583 Pennsylvania 590	Lackawaxen	PA	\N	18435	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1230	METABASE	1230	Sigmund King	\N	\N	Sigmund	King	175 Bronze Oak Court	Bowman	SC	\N	29018	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1231	METABASE	1231	Brielle Ondricka	\N	\N	Brielle	Ondricka	3261 Cherry Corner Road	Murray	KY	\N	42071	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1232	METABASE	1232	Dane Monahan	\N	\N	Dane	Monahan	465 Jerseyfield Road	Little Falls	NY	\N	13365	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1233	METABASE	1233	Agnes Spinka	\N	\N	Agnes	Spinka	395 Old Highway 395	Fallbrook	CA	\N	92028	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1234	METABASE	1234	Abdiel Huel	\N	\N	Abdiel	Huel	313 Newridge Road	Lexington	SC	\N	29072	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1235	METABASE	1235	Nellie Wilderman	\N	\N	Nellie	Wilderman	99 Private Lane	Bethune	SC	\N	29009	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1236	METABASE	1236	Freida Wiza	\N	\N	Freida	Wiza	384 Lancaster Pike	New Providence	PA	\N	17560	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1237	METABASE	1237	Theresa Hudson	\N	\N	Theresa	Hudson	2226 280th Street West	Northfield	MN	\N	55057	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1238	METABASE	1238	Josh Schimmel	\N	\N	Josh	Schimmel	18576-19008 Long Parkway Road	Olsburg	KS	\N	66520	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1239	METABASE	1239	Gianni Hansen	\N	\N	Gianni	Hansen	850-898 North 200 East Road	Cerro Gordo	IL	\N	61818	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_124	METABASE	124	Franco O'Reilly	\N	\N	Franco	O'Reilly	1451-1499 37th Street Northeast	Larimore	ND	\N	58251	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1240	METABASE	1240	Clementine Schmitt	\N	\N	Clementine	Schmitt	9414 Warren Road	Valley Springs	CA	\N	95252	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1241	METABASE	1241	Danial Hegmann	\N	\N	Danial	Hegmann	1801 South Eff Creek Road	Brookville	KS	\N	67425	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1242	METABASE	1242	Tad Ruecker	\N	\N	Tad	Ruecker	1003-1075 County Highway Z	Arkdale	WI	\N	54613	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1243	METABASE	1243	Nikolas Waelchi	\N	\N	Nikolas	Waelchi	2136-2598 Wright Road	Hollister	CA	\N	95023	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1244	METABASE	1244	Hollie Carter	\N	\N	Hollie	Carter	766 County Road 293	Jasper	TX	\N	75951	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1245	METABASE	1245	Justine Schneider	\N	\N	Justine	Schneider	3057 State Road S-11-54	Gaffney	SC	\N	29340	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1246	METABASE	1246	Leonardo Fahey	\N	\N	Leonardo	Fahey	1076 Heritage Road	Sedan	KS	\N	67361	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1247	METABASE	1247	Alysson Cartwright	\N	\N	Alysson	Cartwright	44386 160th Avenue	Leland	IA	\N	50453	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1248	METABASE	1248	Cassandra Nicolas	\N	\N	Cassandra	Nicolas	15341-15999 East North Caribou Lake Road	De Tour Village	MI	\N	49725	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1249	METABASE	1249	Janis Bode	\N	\N	Janis	Bode	801 County Road 153	Comanche	TX	\N	76442	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_125	METABASE	125	Geoffrey D'Amore	\N	\N	Geoffrey	D'Amore	4801 Road Cce	Ishpeming	MI	\N	49849	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1250	METABASE	1250	Brenda Buckridge	\N	\N	Brenda	Buckridge	2096-2398 Hamilton Street	West Mansfield	OH	\N	43358	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1251	METABASE	1251	Flavio Blick	\N	\N	Flavio	Blick	1096 McMillan Road	Greeleyville	SC	\N	29056	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1252	METABASE	1252	Durward Kilback	\N	\N	Durward	Kilback	1543-1583 U.S. 52	Castalia	IA	\N	52133	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1253	METABASE	1253	Maeve Bernier	\N	\N	Maeve	Bernier	1200-1298 North Benzel Road	Ritzville	WA	\N	99169	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1254	METABASE	1254	Watson Gerhold	\N	\N	Watson	Gerhold	481 French Lane	Scobey	MT	\N	59263	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1255	METABASE	1255	Tia Pfeffer	\N	\N	Tia	Pfeffer	300-1098 East Preston Avenue	Shreveport	LA	\N	71105	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1256	METABASE	1256	Archibald Wunsch	\N	\N	Archibald	Wunsch	248-298 East Milner Road	Zebulon	GA	\N	30295	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1257	METABASE	1257	Marley Gorczany	\N	\N	Marley	Gorczany	11890 Fitzpatrick Road	Fowler	MI	\N	48835	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1258	METABASE	1258	Vernice Bernier	\N	\N	Vernice	Bernier	1585-1593 West Genesee Road	Baldwinsville	NY	\N	13027	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1259	METABASE	1259	Elinore Carroll	\N	\N	Elinore	Carroll	735 Providence Road	Grenada	MS	\N	38901	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_126	METABASE	126	Kris Yost	\N	\N	Kris	Yost	1188 Farm to Market Road 1702	Dublin	TX	\N	76446	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1260	METABASE	1260	Miles VonRueden	\N	\N	Miles	VonRueden	13683 Cincinnati Creek Road	Summers	AR	\N	72769	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1261	METABASE	1261	Mariam Schumm	\N	\N	Mariam	Schumm	6322-6726 County Road 49	Kennedy	AL	\N	35574	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1262	METABASE	1262	Maurice Zboncak	\N	\N	Maurice	Zboncak	11434 State Highway 111 North	Edna	TX	\N	77957	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1263	METABASE	1263	Lila Von	\N	\N	Lila	Von	151-299 North 500 East Road	Hammond	IL	\N	61929	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1264	METABASE	1264	Grace Hills	\N	\N	Grace	Hills	11500-11998 County Road 60	Sheridan Lake	CO	\N	81071	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1265	METABASE	1265	Rebeka Wisoky	\N	\N	Rebeka	Wisoky	585 Core Creek Landing Road	Dover	NC	\N	28526	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1266	METABASE	1266	Leta Heidenreich	\N	\N	Leta	Heidenreich	1131 Mill Iron Camp Crook Road	Ekalaka	MT	\N	59324	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1267	METABASE	1267	Fatima Murphy	\N	\N	Fatima	Murphy	640-726 Road 209	Terry	MT	\N	59349	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1268	METABASE	1268	Lenna Hahn	\N	\N	Lenna	Hahn	2211 South Madison Road	Montegut	LA	\N	70377	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1269	METABASE	1269	Pat Jast	\N	\N	Pat	Jast	801 Ben Jones Lane	Lothian	MD	\N	20711	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_127	METABASE	127	Hans Hagenes	\N	\N	Hans	Hagenes	9698-9912 North 700 West	De Motte	IN	\N	46310	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1270	METABASE	1270	Hobart Dickinson	\N	\N	Hobart	Dickinson	811 Furnace Hollow Road	Dickson	TN	\N	37055	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1271	METABASE	1271	Pearlie Heidenreich	\N	\N	Pearlie	Heidenreich	2383 Collinstown Road	Appleton	ME	\N	4862	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1272	METABASE	1272	Lonny Shanahan	\N	\N	Lonny	Shanahan	16638-16644 Linwood Lawn Drive	Lexington	MO	\N	64067	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1273	METABASE	1273	Rosella Bergstrom	\N	\N	Rosella	Bergstrom	2307-3099 Davis Road	Vicksburg	MS	\N	39183	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1274	METABASE	1274	Carmel Cummerata	\N	\N	Carmel	Cummerata	6240-6298 South 125 West	Brook	IN	\N	47922	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1275	METABASE	1275	Omer Sipes	\N	\N	Omer	Sipes	598 County Road 155	Fulton	AR	\N	71838	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1276	METABASE	1276	Constantin Harris	\N	\N	Constantin	Harris	1150 Farm to Market 590	Zephyr	TX	\N	76890	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1277	METABASE	1277	Pansy Hermann	\N	\N	Pansy	Hermann	17789-18511 Briggs Coleman Road	Harlingen	TX	\N	78550	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1278	METABASE	1278	Lazaro Keebler	\N	\N	Lazaro	Keebler	6425 27th Avenue	Vinton	IA	\N	52349	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1279	METABASE	1279	Patience Strosin	\N	\N	Patience	Strosin	7092 Interstate 20	Merkel	TX	\N	79536	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_128	METABASE	128	Jakob Kerluke	\N	\N	Jakob	Kerluke	19045 County Road 15	Del Norte	CO	\N	81132	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1280	METABASE	1280	Jimmie Lang	\N	\N	Jimmie	Lang	16800-17998 South Holstein Avenue	Holstein	NE	\N	68950	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1281	METABASE	1281	Noel Ziemann	\N	\N	Noel	Ziemann	4463 Louisiana 494	Natchez	LA	\N	71456	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1282	METABASE	1282	Verlie Bartell	\N	\N	Verlie	Bartell	424 East 1000 Road	Baldwin City	KS	\N	66006	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1283	METABASE	1283	Yadira Conroy	\N	\N	Yadira	Conroy	747 Liberty Church Road	Mitchell	IN	\N	47446	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1284	METABASE	1284	Tiara Conroy	\N	\N	Tiara	Conroy	11988 198th Avenue	Ottumwa	IA	\N	52501	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1285	METABASE	1285	Eleazar Satterfield	\N	\N	Eleazar	Satterfield	2247 East Fm 1462 Road	Rosharon	TX	\N	77583	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1286	METABASE	1286	Haven Yundt	\N	\N	Haven	Yundt	2872-3380 South Old Bastrop Highway	San Marcos	TX	\N	78666	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1287	METABASE	1287	Celine Hegmann	\N	\N	Celine	Hegmann	17752 Tree Road	Hoyleton	IL	\N	62803	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1288	METABASE	1288	Norwood Lind	\N	\N	Norwood	Lind	306 Bolster Road	Plentywood	MT	\N	59254	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1289	METABASE	1289	Loy Krajcik	\N	\N	Loy	Krajcik	16037 110th Street	Le Roy	MN	\N	55951	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_129	METABASE	129	Grace Casper	\N	\N	Grace	Casper	8235 Nolin Dam Road	Mammoth Cave	KY	\N	42259	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1290	METABASE	1290	Pasquale Ryan	\N	\N	Pasquale	Ryan	1820 Fox Hill Road	Ulysses	PA	\N	16948	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1291	METABASE	1291	Tyshawn Hermiston	\N	\N	Tyshawn	Hermiston	2528 Wood Duck Trail	Shakopee	MN	\N	55379	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1292	METABASE	1292	Kaleb Schultz	\N	\N	Kaleb	Schultz	25119 Sea Turtle Lane	Magnolia	TX	\N	77355	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1293	METABASE	1293	Oma Schulist	\N	\N	Oma	Schulist	266 Warren Chapel Church Road	Chocowinity	NC	\N	27817	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1294	METABASE	1294	Santiago Luettgen	\N	\N	Santiago	Luettgen	2216 Little Weiser River Road	Indian Valley	ID	\N	83632	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1295	METABASE	1295	Zachariah Cartwright	\N	\N	Zachariah	Cartwright	498 Whitaker Road	Pinnacle	NC	\N	27043	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1296	METABASE	1296	Sterling Koch	\N	\N	Sterling	Koch	11719 County Road 424	Swan River	MN	\N	55784	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1297	METABASE	1297	Colt Leuschke	\N	\N	Colt	Leuschke	26200 62nd Street Southwest	Douglas	ND	\N	58735	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1298	METABASE	1298	Rick Yost	\N	\N	Rick	Yost	2262-2286 Rush Mendon Road	Rush	NY	\N	14543	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1299	METABASE	1299	Easton Kuhlman	\N	\N	Easton	Kuhlman	23918 353 Avenue	Pukwana	SD	\N	57370	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_13	METABASE	13	Mustafa Thiel	\N	\N	Mustafa	Thiel	2993 Hoskings Ranch Road	Santa Ysabel	CA	\N	92070	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_130	METABASE	130	Myrna Hickle	\N	\N	Myrna	Hickle	2919 Walker Creek Road	Douglas	WY	\N	82633	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1300	METABASE	1300	Cleo Harber	\N	\N	Cleo	Harber	100-172 Christian Road	Strong	AR	\N	71765	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1301	METABASE	1301	Oda Yost	\N	\N	Oda	Yost	65 Warren Avenue	Albany	NY	\N	12203	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1302	METABASE	1302	August Wiza	\N	\N	August	Wiza	16555 Hope Road	New Underwood	SD	\N	57761	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1303	METABASE	1303	Ricky Kulas	\N	\N	Ricky	Kulas	3052-3098 Ridgeway Avenue	Fredericksburg	IA	\N	50630	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1304	METABASE	1304	Brenda Gibson	\N	\N	Brenda	Gibson	2082-2474 Beaver Drive	Rochester Mills	PA	\N	15771	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1305	METABASE	1305	Isabel Swaniawski	\N	\N	Isabel	Swaniawski	8569-8619 Blind Sodus Bay Road	Red Creek	NY	\N	13143	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1306	METABASE	1306	Ana Cruickshank	\N	\N	Ana	Cruickshank	1902 North Grape Creek Road	Fredericksburg	TX	\N	78624	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1307	METABASE	1307	Filomena Larson	\N	\N	Filomena	Larson	4230 Old Birmingham Highway	Jasper	AL	\N	35501	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1308	METABASE	1308	Sabina Borer	\N	\N	Sabina	Borer	29906-29980 464th Avenue	Centerville	SD	\N	57014	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1309	METABASE	1309	Camilla Wintheiser	\N	\N	Camilla	Wintheiser	1651 White House Road	Moneta	VA	\N	24121	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_131	METABASE	131	Melisa Walter	\N	\N	Melisa	Walter	5132 Wengers Mill Road	Linville	VA	\N	22834	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1310	METABASE	1310	Nicola Krajcik	\N	\N	Nicola	Krajcik	267 Holbert Stretch	Dilliner	PA	\N	15327	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1311	METABASE	1311	Vance Mueller	\N	\N	Vance	Mueller	516 Owens Road	Clarksdale	MS	\N	38614	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1312	METABASE	1312	Isom Welch	\N	\N	Isom	Welch	35552 Flag Road	Lanesboro	MN	\N	55949	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1313	METABASE	1313	Darien Botsford	\N	\N	Darien	Botsford	10882 Fishers Landing Road	Yuma	AZ	\N	85365	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1314	METABASE	1314	Roel Gislason	\N	\N	Roel	Gislason	11 Roloff Road	Lind	WA	\N	99341	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1315	METABASE	1315	Lillian McDermott	\N	\N	Lillian	McDermott	9 Airport Road	Kiana	AK	\N	99749	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1316	METABASE	1316	Walker Carter	\N	\N	Walker	Carter	17625 Elk Mountain Road	Upper Lake	CA	\N	95485	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1317	METABASE	1317	Everett Effertz	\N	\N	Everett	Effertz	8500-8846 South 210th Avenue	Reed City	MI	\N	49677	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1318	METABASE	1318	Gabrielle Frami	\N	\N	Gabrielle	Frami	1780 Oregon Terrace	Rantoul	KS	\N	66079	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1319	METABASE	1319	Arnold Krajcik	\N	\N	Arnold	Krajcik	1944 130th Street	Paton	IA	\N	50217	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_132	METABASE	132	Kenna Bailey	\N	\N	Kenna	Bailey	228 Abpp Drive	Grant Town	WV	\N	26574	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1320	METABASE	1320	Maud Wilkinson	\N	\N	Maud	Wilkinson	51020 400 Street	Saint Edward	NE	\N	68660	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1321	METABASE	1321	Vincenza Lehner	\N	\N	Vincenza	Lehner	11500-11998 East No 2 Road	Fife Lake	MI	\N	49633	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1322	METABASE	1322	Ole Krajcik	\N	\N	Ole	Krajcik	55122 290th Avenue	Chariton	IA	\N	50049	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1323	METABASE	1323	Ambrose Johnson	\N	\N	Ambrose	Johnson	15206 US Highway 285	Saguache	CO	\N	81149	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1324	METABASE	1324	Holden Huel	\N	\N	Holden	Huel	3358-3366 Harrington Drive	DeRidder	LA	\N	70634	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1325	METABASE	1325	Ozella Kautzer	\N	\N	Ozella	Kautzer	4391 FM 2690	Uvalde	TX	\N	78801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1326	METABASE	1326	Maximillian Dickinson	\N	\N	Maximillian	Dickinson	3598-3608 Turner Road	Turner	MI	\N	48765	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1327	METABASE	1327	Marian Rice	\N	\N	Marian	Rice	1200 Estancia Parkway	Austin	TX	\N	78748	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1328	METABASE	1328	Randy Blanda	\N	\N	Randy	Blanda	21794 Erie Street	Saegertown	PA	\N	16433	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1329	METABASE	1329	Michale Mayer	\N	\N	Michale	Mayer	49846 222nd Street	Lake Crystal	MN	\N	56055	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_133	METABASE	133	Christopher Hilll	\N	\N	Christopher	Hilll	281-699 East Duck Creek Road	Circle	MT	\N	59215	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1330	METABASE	1330	Woodrow Hermann	\N	\N	Woodrow	Hermann	867 East 400 North Road	Cissna Park	IL	\N	60924	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1331	METABASE	1331	Jed Bartell	\N	\N	Jed	Bartell	2283 County Road 406	Stephenville	TX	\N	76401	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1332	METABASE	1332	Edmund Wilkinson	\N	\N	Edmund	Wilkinson	6490 Route 232	Marshfield	VT	\N	5658	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1333	METABASE	1333	Braeden Stehr	\N	\N	Braeden	Stehr	3614 Willow Swamp Road	Islandton	SC	\N	29929	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1334	METABASE	1334	Liam Graham	\N	\N	Liam	Graham	3180 Wheeler Hill Road	Blossvale	NY	\N	13308	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1335	METABASE	1335	Marilou Schultz	\N	\N	Marilou	Schultz	39001-39999 205th Avenue	Laporte	MN	\N	56461	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1336	METABASE	1336	Raymond Larson	\N	\N	Raymond	Larson	60648 Oil Well Road	Ninilchik	AK	\N	99639	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1337	METABASE	1337	Hermann Sanford	\N	\N	Hermann	Sanford	56251 County Road 36	Genoa	CO	\N	80818	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1338	METABASE	1338	Joanne Powlowski	\N	\N	Joanne	Powlowski	137-199 107th Street Northwest	Souris	ND	\N	58783	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1339	METABASE	1339	Candida Turcotte	\N	\N	Candida	Turcotte	1228 Gordon Highway	Augusta	GA	\N	30901	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_134	METABASE	134	Orie Bartoletti	\N	\N	Orie	Bartoletti	8001-8783 Road 16 Northeast	Moses Lake	WA	\N	98837	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1340	METABASE	1340	Lucinda Schmeler	\N	\N	Lucinda	Schmeler	15200 State Highway 116	Colcord	OK	\N	74338	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1341	METABASE	1341	Sigrid Runolfsdottir	\N	\N	Sigrid	Runolfsdottir	1147-1149 Stanford Lake Road	Poplarville	MS	\N	39470	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1342	METABASE	1342	Brittany Thompson	\N	\N	Brittany	Thompson	13140 West Farm Road 84	Ash Grove	MO	\N	65604	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1343	METABASE	1343	Brianne Jacobson	\N	\N	Brianne	Jacobson	15652 County Highway L20	Castana	IA	\N	51010	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1344	METABASE	1344	Buddy Hills	\N	\N	Buddy	Hills	9331 East Summer Field Drive	Traverse City	MI	\N	49684	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1345	METABASE	1345	Alice Connelly	\N	\N	Alice	Connelly	9695-9999 South Locust Street	Doniphan	NE	\N	68832	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1346	METABASE	1346	Gerard Ruecker	\N	\N	Gerard	Ruecker	2499 Schutt Road	Burkeville	VA	\N	23922	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1347	METABASE	1347	Mya Gleason	\N	\N	Mya	Gleason	344 Bentown Ridge Road	Brumley	MO	\N	65017	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1348	METABASE	1348	Maryam Nolan	\N	\N	Maryam	Nolan	104 Airport Drive	Unalaska	AK	\N	99692	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1349	METABASE	1349	London Ryan	\N	\N	London	Ryan	20520 No Name Road	Corning	CA	\N	96021	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_135	METABASE	135	Rhett Mante	\N	\N	Rhett	Mante	5509-5501,5500-5508 McKinley Avenue	North Ridgeville	OH	\N	44039	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1350	METABASE	1350	Jacey Schoen	\N	\N	Jacey	Schoen	27515 West Beryozova Drive	Willow	AK	\N	99688	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1351	METABASE	1351	Carolina Crona	\N	\N	Carolina	Crona	43863 Nebraska 2	Hyannis	NE	\N	69350	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1352	METABASE	1352	Gaston McCullough	\N	\N	Gaston	McCullough	1005 Floyd Avenue	Jackson	MI	\N	49203	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1353	METABASE	1353	Merritt Hintz	\N	\N	Merritt	Hintz	17315 Bloss Avenue	Delhi	CA	\N	95315	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1354	METABASE	1354	Melisa Reynolds	\N	\N	Melisa	Reynolds	11235 Jones Wilke Road	Chappell Hill	TX	\N	77426	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1355	METABASE	1355	Miracle Erdman	\N	\N	Miracle	Erdman	13001-13199 Road 30	Sidney	NE	\N	69162	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1356	METABASE	1356	Tressie Boyle	\N	\N	Tressie	Boyle	19 EMS B4 Lane	Pierceton	IN	\N	46562	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1357	METABASE	1357	Orlo Romaguera	\N	\N	Orlo	Romaguera	2151-2297 50th Avenue	Aledo	IL	\N	61231	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1358	METABASE	1358	Chadd Doyle	\N	\N	Chadd	Doyle	7250 Southwest 10th Street	Towanda	KS	\N	67144	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1359	METABASE	1359	Brett Koepp	\N	\N	Brett	Koepp	1040 Bratton Road	New Albany	MS	\N	38652	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_136	METABASE	136	Aliyah Stracke	\N	\N	Aliyah	Stracke	9967-10311 Jinkins Road	North Zulch	TX	\N	77872	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1360	METABASE	1360	Kaleigh Dicki	\N	\N	Kaleigh	Dicki	555 Sandringham	Beaumont	TX	\N	77713	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1361	METABASE	1361	Jadyn Barrows	\N	\N	Jadyn	Barrows	6503-6725 East Curve Road	Avon	IL	\N	61415	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1362	METABASE	1362	Marcus Kuhn	\N	\N	Marcus	Kuhn	3451 North 491st Avenue	Tonopah	AZ	\N	85354	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1363	METABASE	1363	Toy Osinski	\N	\N	Toy	Osinski	1855 Dogwood Avenue	Alexander	IA	\N	50420	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1364	METABASE	1364	Trevor Smith	\N	\N	Trevor	Smith	1841 Shuteye Road	Many	LA	\N	71449	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1365	METABASE	1365	Mollie Kozey	\N	\N	Mollie	Kozey	12209 Renz Farm Road	Holts Summit	MO	\N	65043	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1366	METABASE	1366	Carlie Hilll	\N	\N	Carlie	Hilll	86683 Nebraska 7	Ainsworth	NE	\N	69210	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1367	METABASE	1367	Bonnie Kemmer	\N	\N	Bonnie	Kemmer	2301-2307 State Road S-28-697	Camden	SC	\N	29020	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1368	METABASE	1368	Hugh Konopelski	\N	\N	Hugh	Konopelski	19519-19527 Eos Mill Road	Pine	CO	\N	80470	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1369	METABASE	1369	Rosalee Reinger	\N	\N	Rosalee	Reinger	8216-8298 Cavalier-Ramsey County Line Road	Starkweather	ND	\N	58377	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_137	METABASE	137	Dayton Keebler	\N	\N	Dayton	Keebler	261 Pr 1138	Texarkana	AR	\N	71854	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1370	METABASE	1370	Emanuel Corwin	\N	\N	Emanuel	Corwin	26800-27176 Colorado 9	Guffey	CO	\N	80820	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1371	METABASE	1371	Ida Kohler	\N	\N	Ida	Kohler	5314 Dewey Road	Valdosta	GA	\N	31601	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1372	METABASE	1372	Celestine Rowe	\N	\N	Celestine	Rowe	1855 Hickory Lane	Honeoye Falls	NY	\N	14472	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1373	METABASE	1373	Salvatore Hand	\N	\N	Salvatore	Hand	4501 Southwest 97th Street	Wakarusa	KS	\N	66546	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1374	METABASE	1374	Kory Bosco	\N	\N	Kory	Bosco	24833 Warren Wagon Road	McCall	ID	\N	83638	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1375	METABASE	1375	Serena Langosh	\N	\N	Serena	Langosh	3724 Hoods Branch Road	Springfield	TN	\N	37172	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1376	METABASE	1376	Nova Collins	\N	\N	Nova	Collins	24 Rosebud Lane	Lovington	NM	\N	88260	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1377	METABASE	1377	Lempi Wyman	\N	\N	Lempi	Wyman	3535 Little Snow Creek Road	Holly Springs	MS	\N	38635	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1378	METABASE	1378	Magdalen Torp	\N	\N	Magdalen	Torp	246 Hoy Road	Howard	PA	\N	16841	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1379	METABASE	1379	Domenick Cormier	\N	\N	Domenick	Cormier	25502 Hoehn Road	Sedro-Woolley	WA	\N	98284	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_138	METABASE	138	Unique Runolfsson	\N	\N	Unique	Runolfsson	3001-3099 170th Street	Tracy	MN	\N	56175	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1380	METABASE	1380	Ruthe Hane	\N	\N	Ruthe	Hane	4142-4198 Parrottsville Road	Bybee	TN	\N	37713	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1381	METABASE	1381	Kiarra O'Kon	\N	\N	Kiarra	O'Kon	21301-21361 625th Street	Dodge Center	MN	\N	55927	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1382	METABASE	1382	Carol Feil	\N	\N	Carol	Feil	423 Manningham Loop	Greenville	AL	\N	36037	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1383	METABASE	1383	Una Hermann	\N	\N	Una	Hermann	9520 Dilly Shaw Tap Road	Bryan	TX	\N	77808	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1384	METABASE	1384	Timothy Trantow	\N	\N	Timothy	Trantow	1417 Peaceable Street	Ballston Spa	NY	\N	12020	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1385	METABASE	1385	Evangeline Hartmann	\N	\N	Evangeline	Hartmann	4084 Old Southmayd Road	Sherman	TX	\N	75092	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1386	METABASE	1386	Eliza Anderson	\N	\N	Eliza	Anderson	2001-2099 County Road 500 North	Wellington	IL	\N	60973	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1387	METABASE	1387	Linnea Dickens	\N	\N	Linnea	Dickens	308 Baughman Road	McGehee	AR	\N	71654	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1388	METABASE	1388	Ronny Kessler	\N	\N	Ronny	Kessler	5 Sunset Terrace	Seymour	CT	\N	6483	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1389	METABASE	1389	Henriette O'Connell	\N	\N	Henriette	O'Connell	1703-1825 Banbury Drive	Branchville	SC	\N	29432	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_139	METABASE	139	Norene Flatley	\N	\N	Norene	Flatley	15024 Farm to Market 682	Yoakum	TX	\N	77995	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1390	METABASE	1390	Marc Macejkovic	\N	\N	Marc	Macejkovic	8774 Fairhaven College CRNR Road	College Corner	OH	\N	45003	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1391	METABASE	1391	Mittie Treutel	\N	\N	Mittie	Treutel	108 Creek Lane	Palatka	FL	\N	32177	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1392	METABASE	1392	Pietro Swift	\N	\N	Pietro	Swift	1428 Abbott Street	Salinas	CA	\N	93901	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1393	METABASE	1393	Lamont Ondricka	\N	\N	Lamont	Ondricka	3980 Middle Reservation Road	Perry	NY	\N	14530	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1394	METABASE	1394	Mayra Hermann	\N	\N	Mayra	Hermann	1335 Washington Avenue	Havre	MT	\N	59501	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1395	METABASE	1395	Jude Pacocha	\N	\N	Jude	Pacocha	134-164 Berry Hill Lane	Amherst	VA	\N	24521	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1396	METABASE	1396	Rupert Ondricka	\N	\N	Rupert	Ondricka	61 Mason Lane	Laramie	WY	\N	82070	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1397	METABASE	1397	Antwon Reichel	\N	\N	Antwon	Reichel	E2302 County Road V	Prairie Farm	WI	\N	54762	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1398	METABASE	1398	Cale Ankunding	\N	\N	Cale	Ankunding	312 Lame Jones Trail	Plevna	MT	\N	59344	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1399	METABASE	1399	Jamison Rodriguez	\N	\N	Jamison	Rodriguez	1395 Callihan Road	Luling	TX	\N	78648	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_14	METABASE	14	Lavonne Senger	\N	\N	Lavonne	Senger	3964 Chico River Road	Chico	CA	\N	95928	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_140	METABASE	140	Walker Conroy	\N	\N	Walker	Conroy	2933 Sarpy Avenue	Baton Rouge	LA	\N	70820	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1400	METABASE	1400	Sherman Schmitt	\N	\N	Sherman	Schmitt	7911 County Road 730	Gunnison	CO	\N	81230	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1401	METABASE	1401	Wilburn Bernhard	\N	\N	Wilburn	Bernhard	2818 Jordans Grove Road	Marion	IA	\N	52302	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1402	METABASE	1402	Natalia Herzog	\N	\N	Natalia	Herzog	9000 Rock Haven Road	Joshua Tree	CA	\N	92252	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1403	METABASE	1403	Alverta Rogahn	\N	\N	Alverta	Rogahn	23000-23524 29 Road	Meade	KS	\N	67864	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1404	METABASE	1404	Nina Marvin	\N	\N	Nina	Marvin	1512 Spring Street	Houtzdale	PA	\N	16651	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1405	METABASE	1405	Leo Toy	\N	\N	Leo	Toy	75915 Road 312	Venango	NE	\N	69168	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1406	METABASE	1406	Jefferey Auer	\N	\N	Jefferey	Auer	230-240 Farris Cemetary Road	Anacoco	LA	\N	71403	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1407	METABASE	1407	Lorna Greenholt	\N	\N	Lorna	Greenholt	551 Fayville Road	Broadalbin	NY	\N	12025	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1408	METABASE	1408	Lilly Veum	\N	\N	Lilly	Veum	8110 Glenn Highway	Glennallen	AK	\N	99588	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1409	METABASE	1409	Destinee Mills	\N	\N	Destinee	Mills	218 Cedar Trail	Fort Davis	TX	\N	79734	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_141	METABASE	141	Alvina Mertz	\N	\N	Alvina	Mertz	22087 Fishermans Haven Road Northeast	Waskish	MN	\N	56685	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1410	METABASE	1410	Efren Kshlerin	\N	\N	Efren	Kshlerin	19366 Louisville Road	Park City	KY	\N	42160	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1411	METABASE	1411	Lilly Harber	\N	\N	Lilly	Harber	25940-27498 Stockton Corners Road	Cochranton	PA	\N	16314	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1412	METABASE	1412	Leilani McCullough	\N	\N	Leilani	McCullough	60 Avenue F North	Bay City	TX	\N	77414	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1413	METABASE	1413	Erick Nitzsche	\N	\N	Erick	Nitzsche	401-499 86th Avenue Northeast	Glenfield	ND	\N	58443	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1414	METABASE	1414	Delores Kuhlman	\N	\N	Delores	Kuhlman	2551 Storment Road	Endicott	WA	\N	99125	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1415	METABASE	1415	Anita Frami	\N	\N	Anita	Frami	14036 Indiana 110	Rochester	IN	\N	46975	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1416	METABASE	1416	Michel Wilderman	\N	\N	Michel	Wilderman	6444 Fisher Road	Oakfield	NY	\N	14125	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1417	METABASE	1417	Greg Purdy	\N	\N	Greg	Purdy	16809 Going-to-the-Sun Road	West Glacier	MT	\N	59936	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1418	METABASE	1418	Reagan Senger	\N	\N	Reagan	Senger	5187 County Road 45	Fort Deposit	AL	\N	36032	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1419	METABASE	1419	Angelica Towne	\N	\N	Angelica	Towne	2601-2699 Grant Avenue	Doon	IA	\N	51235	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_142	METABASE	142	Sheridan VonRueden	\N	\N	Sheridan	VonRueden	1855 190th Street	Centuria	WI	\N	54824	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1420	METABASE	1420	Leonardo Langworth	\N	\N	Leonardo	Langworth	92 Upper Greyson Creek Road	Townsend	MT	\N	59644	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1421	METABASE	1421	Cornell Cartwright	\N	\N	Cornell	Cartwright	140 South Deadman Road	Pomeroy	WA	\N	99347	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1422	METABASE	1422	Sigrid Maggio	\N	\N	Sigrid	Maggio	818-898 County Road 2300 East	Iuka	IL	\N	62849	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1423	METABASE	1423	Randi Howe	\N	\N	Randi	Howe	1898 County Road 027	Jasper	TX	\N	75951	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1424	METABASE	1424	Rey Schumm	\N	\N	Rey	Schumm	411-467 Avenue D	Wilson	KS	\N	67490	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1425	METABASE	1425	Annabelle Ernser	\N	\N	Annabelle	Ernser	2208 340th Street	Titonka	IA	\N	50480	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1426	METABASE	1426	Filiberto Armstrong	\N	\N	Filiberto	Armstrong	1564 County Road 3309	Omaha	TX	\N	75571	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1427	METABASE	1427	Daphne Gulgowski	\N	\N	Daphne	Gulgowski	2335 Mule Creek Road	Augusta	MT	\N	59410	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1428	METABASE	1428	Garrick Rolfson	\N	\N	Garrick	Rolfson	13615-13827 Matthews Road	Sardinia	OH	\N	45171	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1429	METABASE	1429	Kris Schinner	\N	\N	Kris	Schinner	3900 Love Lane	Coxs Creek	KY	\N	40013	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_143	METABASE	143	Melyna Koepp	\N	\N	Melyna	Koepp	86229-86265 576th Avenue	Wayne	NE	\N	68787	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1430	METABASE	1430	Reyna Greenholt	\N	\N	Reyna	Greenholt	11459 Oak Lake Road	Bryan	TX	\N	77808	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1431	METABASE	1431	Mireya Sporer	\N	\N	Mireya	Sporer	5300 Rumley Mine Road	Midpines	CA	\N	95345	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1432	METABASE	1432	Willie Nikolaus	\N	\N	Willie	Nikolaus	14508 North South 331	Shawnee	OK	\N	74801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1433	METABASE	1433	Brennon Gerlach	\N	\N	Brennon	Gerlach	7197-7805 Farm to Market Road 619	Taylor	TX	\N	76574	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1434	METABASE	1434	Eladio Steuber	\N	\N	Eladio	Steuber	2627-2687 Northeast 72nd Street	Altoona	IA	\N	50009	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1435	METABASE	1435	Kiara Bayer	\N	\N	Kiara	Bayer	1437 Knox Road	Rossville	TN	\N	38066	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1436	METABASE	1436	Tyrel Runolfsson	\N	\N	Tyrel	Runolfsson	1896 215th Street	Grand Mound	IA	\N	52751	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1437	METABASE	1437	Marjolaine Torp	\N	\N	Marjolaine	Torp	57207 888th Road	Wynot	NE	\N	68792	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1438	METABASE	1438	Therese Schuppe	\N	\N	Therese	Schuppe	223 Haden Road	Purvis	MS	\N	39475	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1439	METABASE	1439	Alayna Conroy	\N	\N	Alayna	Conroy	351 Valley Road	Chandler	MN	\N	56122	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_144	METABASE	144	Savanah Fahey	\N	\N	Savanah	Fahey	6956 Mount Aire Road	Russellville	OH	\N	45168	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1440	METABASE	1440	Jean Hickle	\N	\N	Jean	Hickle	42270 Griswold Road	Elyria	OH	\N	44035	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1441	METABASE	1441	Ashton Herman	\N	\N	Ashton	Herman	12920 Southwest 81st Road	Rushville	MO	\N	64484	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1442	METABASE	1442	Raoul DuBuque	\N	\N	Raoul	DuBuque	2424 Thorp Road	Immokalee	FL	\N	34142	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1443	METABASE	1443	Tomasa Hartmann	\N	\N	Tomasa	Hartmann	52000-52086 Wisconsin 27	Solon Springs	WI	\N	54873	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1444	METABASE	1444	Kaleigh Harris	\N	\N	Kaleigh	Harris	7115 South Avenue 17 East	Yuma	AZ	\N	85365	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1445	METABASE	1445	Cleve Crist	\N	\N	Cleve	Crist	481 Wc Braswell Road	Selma	NC	\N	27576	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1446	METABASE	1446	Gaetano Rogahn	\N	\N	Gaetano	Rogahn	11802 South Co Road 6	Mizpah	MN	\N	56660	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1447	METABASE	1447	Johathan Sanford	\N	\N	Johathan	Sanford	970 Adel Road	Cascade	MT	\N	59421	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1448	METABASE	1448	Deron Cremin	\N	\N	Deron	Cremin	12492-13498 County Road 12	Somerset	CO	\N	81434	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1449	METABASE	1449	Jamar Miller	\N	\N	Jamar	Miller	67 Eagle Creek Trail	Whitefish	MT	\N	59937	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_145	METABASE	145	Aryanna Hegmann	\N	\N	Aryanna	Hegmann	2491 Miller Road	Lincoln	MI	\N	48742	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1450	METABASE	1450	Zachariah Bosco	\N	\N	Zachariah	Bosco	3104 Humberto Garza Junior Street	Mission	TX	\N	78572	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1451	METABASE	1451	Electa Stehr	\N	\N	Electa	Stehr	9756 South Lincoln Road	Shepherd	MI	\N	48883	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1452	METABASE	1452	Angeline Romaguera	\N	\N	Angeline	Romaguera	478 Campbell Road	Keswick	VA	\N	22947	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1453	METABASE	1453	Ted Weber	\N	\N	Ted	Weber	46801 East 192nd Street	Richmond	MO	\N	64085	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1454	METABASE	1454	Arnaldo Rice	\N	\N	Arnaldo	Rice	13478 507th Avenue	Vernon Center	MN	\N	56090	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1455	METABASE	1455	Brandyn Deckow	\N	\N	Brandyn	Deckow	1019 East 2200 Road	Eudora	KS	\N	66025	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1456	METABASE	1456	Reyna Conroy	\N	\N	Reyna	Conroy	3384 Old Orchard Lane	Lexington	MI	\N	48450	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1457	METABASE	1457	Lydia Schultz	\N	\N	Lydia	Schultz	3837 Forest Trail	Allegan	MI	\N	49010	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1458	METABASE	1458	Rex Boehm	\N	\N	Rex	Boehm	5301-5315 Olive Avenue	Atwater	CA	\N	95301	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1459	METABASE	1459	Jarrett Emard	\N	\N	Jarrett	Emard	13996 U.S Highway 169	Oologah	OK	\N	74053	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_146	METABASE	146	Trenton Batz	\N	\N	Trenton	Batz	8840 Saint Clair Highway	Casco	MI	\N	48064	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1460	METABASE	1460	Miguel Stoltenberg	\N	\N	Miguel	Stoltenberg	3936 Ashton Woods Drive	Moorefield	WV	\N	26836	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1461	METABASE	1461	Benny Johnston	\N	\N	Benny	Johnston	36150 Eldeen Avenue	Bonesteel	SD	\N	57317	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1462	METABASE	1462	Wilmer Leannon	\N	\N	Wilmer	Leannon	470 Thornton View Road	Cle Elum	WA	\N	98922	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1463	METABASE	1463	Adolfo Flatley	\N	\N	Adolfo	Flatley	1986 North Carolina 49	Prospect Hill	NC	\N	27314	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1464	METABASE	1464	Jarrett Huel	\N	\N	Jarrett	Huel	42473 150th Avenue	Leland	IA	\N	50453	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1465	METABASE	1465	Meaghan Smith	\N	\N	Meaghan	Smith	37929 20th Avenue	Dennison	MN	\N	55018	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1466	METABASE	1466	Monserrate Hermiston	\N	\N	Monserrate	Hermiston	1987 Farm to Market 79	Telephone	TX	\N	75488	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1467	METABASE	1467	Ronny Jacobs	\N	\N	Ronny	Jacobs	7219 Morehead Road	Flemingsburg	KY	\N	41041	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1468	METABASE	1468	Elvie Parisian	\N	\N	Elvie	Parisian	864 Sunny Hollow Road	Smithville	WV	\N	26178	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1469	METABASE	1469	Dianna Murray	\N	\N	Dianna	Murray	4151-4199 Kenya Road	Levelland	TX	\N	79336	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_147	METABASE	147	Eileen Mayert	\N	\N	Eileen	Mayert	19500 Dovetail Court	Tehachapi	CA	\N	93561	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1470	METABASE	1470	Tanner Walker	\N	\N	Tanner	Walker	1496-1502 Harrison Road Southeast	Thomson	GA	\N	30824	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1471	METABASE	1471	Edyth Roob	\N	\N	Edyth	Roob	1551 U.S. 283	Throckmorton	TX	\N	76483	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1472	METABASE	1472	Charity Blick	\N	\N	Charity	Blick	27335 Durango Avenue	Malta Bend	MO	\N	65339	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1473	METABASE	1473	Arvel Lakin	\N	\N	Arvel	Lakin	1900 County Road Y	Western	NE	\N	68464	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1474	METABASE	1474	Dorthy Becker	\N	\N	Dorthy	Becker	167 Cooper Lane	Pearisburg	VA	\N	24134	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1475	METABASE	1475	Kobe O'Keefe	\N	\N	Kobe	O'Keefe	369 McCotter Road	Bayboro	NC	\N	28515	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1476	METABASE	1476	Berneice White	\N	\N	Berneice	White	1400-1598 South Roosevelt Road 13	Portales	NM	\N	88130	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1477	METABASE	1477	Efrain Mante	\N	\N	Efrain	Mante	12402 North Carbine Road	Marana	AZ	\N	85653	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1478	METABASE	1478	Vernie Lakin	\N	\N	Vernie	Lakin	9508 Lisbon Street Northeast	East Canton	OH	\N	44730	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1479	METABASE	1479	Colton Kuphal	\N	\N	Colton	Kuphal	6901-6963 100th Avenue Northeast	Edmore	ND	\N	58330	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_148	METABASE	148	Madie Bayer	\N	\N	Madie	Bayer	268 County Road 454	Greenwood	MS	\N	38930	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1480	METABASE	1480	Floyd Douglas	\N	\N	Floyd	Douglas	2-282 West 7th Way	Greenville	FL	\N	32331	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1481	METABASE	1481	Erna Aufderhar	\N	\N	Erna	Aufderhar	208 Dogwood Hill Road	Livingston	TX	\N	77351	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1482	METABASE	1482	Connie Satterfield	\N	\N	Connie	Satterfield	22 Bridlewood Drive	Billings	MT	\N	59102	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1483	METABASE	1483	Breanna Pollich	\N	\N	Breanna	Pollich	219 Old Ridgeway Road	Bremen	GA	\N	30110	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1484	METABASE	1484	Ellsworth West	\N	\N	Ellsworth	West	2612 South Finn Road	Kettle River	MN	\N	55757	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1485	METABASE	1485	Erich Kris	\N	\N	Erich	Kris	5499-5529 N3820 Road	Bokchito	OK	\N	74726	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1486	METABASE	1486	Iva Wuckert	\N	\N	Iva	Wuckert	498 Walker Lane	Woodville	MS	\N	39669	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1487	METABASE	1487	Garret Schoen	\N	\N	Garret	Schoen	1833-1899 North 270th Road	Clay Center	KS	\N	67432	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1488	METABASE	1488	Matt Kemmer	\N	\N	Matt	Kemmer	5 Bourbon Street	Geneseo	KS	\N	67444	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1489	METABASE	1489	Burnice Marks	\N	\N	Burnice	Marks	844-878 Mayberry Road	Circle	MT	\N	59215	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_149	METABASE	149	Madonna Kertzmann	\N	\N	Madonna	Kertzmann	1349 Prison Road	Dillwyn	VA	\N	23936	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1490	METABASE	1490	Waylon Jaskolski	\N	\N	Waylon	Jaskolski	3639 100th Avenue Southwest	Gladstone	ND	\N	58630	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1491	METABASE	1491	Payton Denesik	\N	\N	Payton	Denesik	16800-17498 Country Club Drive	Catlettsburg	KY	\N	41129	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1492	METABASE	1492	Jameson Grady	\N	\N	Jameson	Grady	500-550 Southwest Road	Castalia	OH	\N	44824	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1493	METABASE	1493	Mustafa Gleason	\N	\N	Mustafa	Gleason	15469 Jesus Maria Road	Mokelumne Hill	CA	\N	95245	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1494	METABASE	1494	Viviane Kovacek	\N	\N	Viviane	Kovacek	160 Riverview Drive	Horatio	AR	\N	71842	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1495	METABASE	1495	Dena Schiller	\N	\N	Dena	Schiller	198 Pearson Moss Drive	Bostic	NC	\N	28018	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1496	METABASE	1496	Eugenia Stroman	\N	\N	Eugenia	Stroman	3466 183rd Trail	Lakeside	NE	\N	69351	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1497	METABASE	1497	Jensen Mills	\N	\N	Jensen	Mills	47201 Tamiami Trail East	Ochopee	FL	\N	34141	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1498	METABASE	1498	Giovani Lesch	\N	\N	Giovani	Lesch	37 Beckton Drive	Sheridan	WY	\N	82801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1499	METABASE	1499	Lauryn Simonis	\N	\N	Lauryn	Simonis	25800 County Road 77	Jefferson	CO	\N	80456	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_15	METABASE	15	Bertrand Romaguera	\N	\N	Bertrand	Romaguera	258 Opal Road	El Paso	AR	\N	72045	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_150	METABASE	150	Henderson Hansen	\N	\N	Henderson	Hansen	1746 East Ashley Avenue	Folly Beach	SC	\N	29439	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1500	METABASE	1500	Kadin Mraz	\N	\N	Kadin	Mraz	7901-7999 23rd Street Southeast	Buchanan	ND	\N	58420	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1501	METABASE	1501	Winona Hickle	\N	\N	Winona	Hickle	18361-18655 South Creek Road	Los Banos	CA	\N	93635	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1502	METABASE	1502	Alayna Halvorson	\N	\N	Alayna	Halvorson	7740-7798 66th Street Northeast	Webster	ND	\N	58382	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1503	METABASE	1503	Amy Nolan	\N	\N	Amy	Nolan	5016 Luray Highway	Brunson	SC	\N	29911	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1504	METABASE	1504	Gracie Reichel	\N	\N	Gracie	Reichel	15313 Livermore Road	Pinckney	MI	\N	48169	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1505	METABASE	1505	Joany Bartell	\N	\N	Joany	Bartell	3205-3209 U.S. 12	Niles	MI	\N	49120	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1506	METABASE	1506	Ashlee Douglas	\N	\N	Ashlee	Douglas	70 Coal Kiln Road	Princeton	MA	\N	1541	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1507	METABASE	1507	Verla Legros	\N	\N	Verla	Legros	7337 Northwest Ryegrass Road	Prineville	OR	\N	97754	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1508	METABASE	1508	Danial Kohler	\N	\N	Danial	Kohler	12231 Farm to Market Road 2796	Pittsburg	TX	\N	75686	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1509	METABASE	1509	Henry Rowe	\N	\N	Henry	Rowe	10431 South 513th West Avenue	Drumright	OK	\N	74030	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_151	METABASE	151	Khalid McKenzie	\N	\N	Khalid	McKenzie	820-872 Poison Lake Road	Douglas	WY	\N	82633	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1510	METABASE	1510	Evelyn Weissnat	\N	\N	Evelyn	Weissnat	470 South Broad Street	Abbeville	GA	\N	31001	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1511	METABASE	1511	Otis Murazik	\N	\N	Otis	Murazik	4695 Crown Lead Road	Coulterville	CA	\N	95311	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1512	METABASE	1512	Kade Heathcote	\N	\N	Kade	Heathcote	2734 Browns Meadow Road	Kila	MT	\N	59920	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1513	METABASE	1513	Hortense Donnelly	\N	\N	Hortense	Donnelly	28515 Horwege Road	Davenport	WA	\N	99122	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1514	METABASE	1514	Shaniya Roob	\N	\N	Shaniya	Roob	542 National Forest Development Road 008	Lemhi	ID	\N	83465	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1515	METABASE	1515	Mylene Kessler	\N	\N	Mylene	Kessler	653 Green Fields Lane	Columbus	NC	\N	28722	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1516	METABASE	1516	Sydnie Labadie	\N	\N	Sydnie	Labadie	6627 Blue Spring Road	Cadiz	KY	\N	42211	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1517	METABASE	1517	Clifton Tremblay	\N	\N	Clifton	Tremblay	315 Pine Unit Road	Fallon	MT	\N	59326	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1518	METABASE	1518	Serena Ziemann	\N	\N	Serena	Ziemann	353-551 Newell Grade Road	Roosevelt	WA	\N	99356	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1519	METABASE	1519	Ashley Price	\N	\N	Ashley	Price	1224-1298 130th Street	Emerson	IA	\N	51533	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_152	METABASE	152	Ethan Kling	\N	\N	Ethan	Kling	17401-17499 95th Street Southeast	Fairmount	ND	\N	58030	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1520	METABASE	1520	Vilma Bednar	\N	\N	Vilma	Bednar	3686 County Road 31	Union Springs	AL	\N	36089	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1521	METABASE	1521	Terry Lehner	\N	\N	Terry	Lehner	33151 South Dakota 47	Reliance	SD	\N	57569	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1522	METABASE	1522	Edmund Adams	\N	\N	Edmund	Adams	139 Hans Creek Road	Broadalbin	NY	\N	12025	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1523	METABASE	1523	Mathilde Weissnat	\N	\N	Mathilde	Weissnat	360 Page Road	Washington	NC	\N	27889	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1524	METABASE	1524	Emma Crona	\N	\N	Emma	Crona	30374 Mendocino Pass Road	Covelo	CA	\N	95428	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1525	METABASE	1525	Quentin Morar	\N	\N	Quentin	Morar	700-708 West Middle Street	Necedah	WI	\N	54646	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1526	METABASE	1526	Tyson Stehr	\N	\N	Tyson	Stehr	51 Gorman Lane	Whitefield	ME	\N	4353	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1527	METABASE	1527	Annabell Tremblay	\N	\N	Annabell	Tremblay	22364 320th Avenue Southwest	Fisher	MN	\N	56723	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1528	METABASE	1528	Donny Murazik	\N	\N	Donny	Murazik	546 Mulberry Road	Winder	GA	\N	30680	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1529	METABASE	1529	Deontae Brown	\N	\N	Deontae	Brown	5001-5637 North Co Road 375 West	Royal Center	IN	\N	46978	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_153	METABASE	153	Lewis Hoppe	\N	\N	Lewis	Hoppe	314 Wisconsin 35	River Falls	WI	\N	54022	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1530	METABASE	1530	Meta Abbott	\N	\N	Meta	Abbott	17736-18032 Lark Avenue	Keosauqua	IA	\N	52565	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1531	METABASE	1531	Jabari Schimmel	\N	\N	Jabari	Schimmel	8905 15th Road	Rapid River	MI	\N	49878	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1532	METABASE	1532	Marquis Fisher	\N	\N	Marquis	Fisher	11523 33rd Street Southwest	Dickinson	ND	\N	58601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1533	METABASE	1533	Alexanne Klocko	\N	\N	Alexanne	Klocko	225-299 West Phillips Ferry Road	Bluffs	IL	\N	62621	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1534	METABASE	1534	Chelsie Bergstrom	\N	\N	Chelsie	Bergstrom	901-921 East 4500 North	Buhl	ID	\N	83316	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1535	METABASE	1535	Eleonore Towne	\N	\N	Eleonore	Towne	51-99 Circle B	Dillon	CO	\N	80435	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1536	METABASE	1536	Reece Kozey	\N	\N	Reece	Kozey	W10733 Olden Road	Pickett	WI	\N	54964	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1537	METABASE	1537	Jessyca Mayert	\N	\N	Jessyca	Mayert	1501-1517 Parkersburg Road	Spencer	WV	\N	25276	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1538	METABASE	1538	Blanche Bednar	\N	\N	Blanche	Bednar	6020 Thane Road	Juneau	AK	\N	99801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1539	METABASE	1539	Jean Zulauf	\N	\N	Jean	Zulauf	7922 Lincoln Avenue Extension	Lockport	NY	\N	14094	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_154	METABASE	154	Monserrate Schuppe	\N	\N	Monserrate	Schuppe	3331-3589 Ballard Road	Bellvue	CO	\N	80512	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1540	METABASE	1540	Blaze Barrows	\N	\N	Blaze	Barrows	1100 Happy Top Road	Grandview	TN	\N	37337	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1541	METABASE	1541	Dudley Upton	\N	\N	Dudley	Upton	80 Old Teresita Road	Owenton	KY	\N	40359	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1542	METABASE	1542	Camille Koepp	\N	\N	Camille	Koepp	7667 County Road 705	Farmersville	TX	\N	75442	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1543	METABASE	1543	Madelyn Hermann	\N	\N	Madelyn	Hermann	36 Stagecoach Drive	South Fork	CO	\N	81154	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1544	METABASE	1544	Lionel Stoltenberg	\N	\N	Lionel	Stoltenberg	2191-2497 Allen-Beulah Road	Marthaville	LA	\N	71450	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1545	METABASE	1545	Kendall Dare	\N	\N	Kendall	Dare	26496-28658 County Road 25	Granada	CO	\N	81041	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1546	METABASE	1546	Casimer Ward	\N	\N	Casimer	Ward	4660 Brown Road	Little Suamico	WI	\N	54141	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1547	METABASE	1547	Monique Cummerata	\N	\N	Monique	Cummerata	299-373 Palisades Road	Palisades	WA	\N	98845	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1548	METABASE	1548	Ethyl Zboncak	\N	\N	Ethyl	Zboncak	185 Puckett Road	Fort Stockton	TX	\N	79735	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1549	METABASE	1549	Javon Jast	\N	\N	Javon	Jast	1796-1798 Nebraska 92	Sutherland	NE	\N	69165	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_155	METABASE	155	Trisha Hoeger	\N	\N	Trisha	Hoeger	5036 Airline Road	Uniontown	KY	\N	42461	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1550	METABASE	1550	Rosina Von	\N	\N	Rosina	Von	11422 Deer Creek Highway	Chico	CA	\N	95928	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1551	METABASE	1551	Nannie Boehm	\N	\N	Nannie	Boehm	1709 Jeffrey Bryan Drive	Charlotte	NC	\N	28213	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1552	METABASE	1552	Albert Padberg	\N	\N	Albert	Padberg	242-298 Thompson Drive	Troy	MO	\N	63379	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1553	METABASE	1553	Litzy Schmitt	\N	\N	Litzy	Schmitt	29408 230th Avenue	Holcombe	WI	\N	54745	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1554	METABASE	1554	Bernadette Friesen	\N	\N	Bernadette	Friesen	1230 Caldwell Road	Proctor	AR	\N	72376	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1555	METABASE	1555	Reba Howell	\N	\N	Reba	Howell	715 County Road 2615	Rio Medina	TX	\N	78066	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1556	METABASE	1556	Araceli Bechtelar	\N	\N	Araceli	Bechtelar	30205 Highway 160	Cortez	CO	\N	81321	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1557	METABASE	1557	Christy Gutkowski	\N	\N	Christy	Gutkowski	6418 Byrnes Road	Vacaville	CA	\N	95687	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1558	METABASE	1558	Halie Adams	\N	\N	Halie	Adams	1619 County Road 111	Mosca	CO	\N	81146	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1559	METABASE	1559	Victoria Weissnat	\N	\N	Victoria	Weissnat	E9075 Bear Creek Road	Clintonville	WI	\N	54929	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_156	METABASE	156	Lolita Zemlak	\N	\N	Lolita	Zemlak	212 Park Street	Jacksonville	IL	\N	62650	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1560	METABASE	1560	Jerel Miller	\N	\N	Jerel	Miller	S11780 County Road B	Eleva	WI	\N	54738	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1561	METABASE	1561	Juliet Hermiston	\N	\N	Juliet	Hermiston	485 West Union Street	Wytheville	VA	\N	24382	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1562	METABASE	1562	Alanna Lockman	\N	\N	Alanna	Lockman	2010-2054 Victor Avenue	Winthrop	IA	\N	50682	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1563	METABASE	1563	Bell Waelchi	\N	\N	Bell	Waelchi	25540 Nubbin Ridge	Spiro	OK	\N	74959	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1564	METABASE	1564	Paula Dibbert	\N	\N	Paula	Dibbert	18465-18849 Fort Street	Omaha	NE	\N	68022	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1565	METABASE	1565	Jeanne Walker	\N	\N	Jeanne	Walker	75848 Memphis Road	Anita	IA	\N	50020	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1566	METABASE	1566	Myles Brekke	\N	\N	Myles	Brekke	Mile 214.5 George Parks Highway	Denali National Park and Preserve	AK	\N	99755	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1567	METABASE	1567	Kirsten Corkery	\N	\N	Kirsten	Corkery	459 Ricketts Drive	Benton	PA	\N	17814	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1568	METABASE	1568	Heath Prohaska	\N	\N	Heath	Prohaska	3245 Doolittle Road	Monument	CO	\N	80132	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1569	METABASE	1569	Winnifred Schinner	\N	\N	Winnifred	Schinner	13222 West Rindge Road	Stockton	CA	\N	95219	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_157	METABASE	157	Ferne Tremblay	\N	\N	Ferne	Tremblay	1343 Davenport Road	Columbia	NC	\N	27925	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1570	METABASE	1570	Andrew Macejkovic	\N	\N	Andrew	Macejkovic	8724-8768 Domser Road	Boonville	NY	\N	13309	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1571	METABASE	1571	Selina Dach	\N	\N	Selina	Dach	12012 57th Avenue Southwest	Pillager	MN	\N	56473	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1572	METABASE	1572	Jana McKenzie	\N	\N	Jana	McKenzie	615 Whitehall Road	Mangham	LA	\N	71259	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1573	METABASE	1573	Porter Lowe	\N	\N	Porter	Lowe	19 Casey Road	Sardis	AL	\N	36775	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1574	METABASE	1574	Tito Metz	\N	\N	Tito	Metz	58062 3rd Street Northeast	Royal City	WA	\N	99357	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1575	METABASE	1575	Dylan Kertzmann	\N	\N	Dylan	Kertzmann	2961 County Road 28	Crossville	AL	\N	35962	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1576	METABASE	1576	Milton Schiller	\N	\N	Milton	Schiller	19610 Highway 7	Richland	MO	\N	65556	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1577	METABASE	1577	Omari O'Conner	\N	\N	Omari	O'Conner	195 Downer Avenue	Hingham	MA	\N	2043	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1578	METABASE	1578	Reta Mosciski	\N	\N	Reta	Mosciski	1 Joseph Drive	Moravia	NY	\N	13118	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1579	METABASE	1579	Jena Schoen	\N	\N	Jena	Schoen	3559 120th Street	Pierson	IA	\N	51048	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_158	METABASE	158	Maye Toy	\N	\N	Maye	Toy	19736-19746 County Road 581	Essex	MO	\N	63846	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1580	METABASE	1580	Lindsay Stark	\N	\N	Lindsay	Stark	6695-7143 Georgia Road	Wetumpka	AL	\N	36092	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1581	METABASE	1581	Orval Zieme	\N	\N	Orval	Zieme	29831-29999 185th Street	Onida	SD	\N	57564	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1582	METABASE	1582	Makayla Feest	\N	\N	Makayla	Feest	6046-7330 Scenic Drive	Patterson	GA	\N	31557	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1583	METABASE	1583	Bernadette Brown	\N	\N	Bernadette	Brown	5007 Wesley Chapel Road	West Harrison	IN	\N	47060	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1584	METABASE	1584	Kristoffer Blanda	\N	\N	Kristoffer	Blanda	6478 Southridge Road	Milton	FL	\N	32570	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1585	METABASE	1585	Danika White	\N	\N	Danika	White	901-939 Rosenoff Road	Ritzville	WA	\N	99169	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1586	METABASE	1586	Bethany Gusikowski	\N	\N	Bethany	Gusikowski	11533 Flat Creek Road	Geraldine	MT	\N	59446	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1587	METABASE	1587	Erick Yost	\N	\N	Erick	Yost	3837 Freeman Road	Orchard Park	NY	\N	14127	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1588	METABASE	1588	Scottie Schmidt	\N	\N	Scottie	Schmidt	397 Sd 32740	Rocksprings	TX	\N	78880	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1589	METABASE	1589	Rebeka Tromp	\N	\N	Rebeka	Tromp	484 County Road 343	Taylor	MS	\N	38673	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_159	METABASE	159	Mattie Bayer	\N	\N	Mattie	Bayer	790 Echo Avenue	Mechanicsville	IA	\N	52306	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1590	METABASE	1590	Tommie Turner	\N	\N	Tommie	Turner	145 Pr 507	Fairfield	TX	\N	75840	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1591	METABASE	1591	Natasha Abbott	\N	\N	Natasha	Abbott	4680 Creekwood Trail	Maple Plain	MN	\N	55359	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1592	METABASE	1592	Nathan Waters	\N	\N	Nathan	Waters	45908 825th Road	Burwell	NE	\N	68823	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1593	METABASE	1593	Marquis Roob	\N	\N	Marquis	Roob	401-499 41 Road	Minden	NE	\N	68959	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1594	METABASE	1594	Khalil Pacocha	\N	\N	Khalil	Pacocha	10414-10498 76th Avenue Northeast	Sarles	ND	\N	58372	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1595	METABASE	1595	Olga Yost	\N	\N	Olga	Yost	53 Eisenhart Mill Road	East Berlin	PA	\N	17316	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1596	METABASE	1596	Lisette Wiza	\N	\N	Lisette	Wiza	3073 County Road 24	Ridgway	CO	\N	81432	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1597	METABASE	1597	Tanya Connelly	\N	\N	Tanya	Connelly	2050-2100 109th Avenue Southeast	Dazey	ND	\N	58429	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1598	METABASE	1598	Paxton Glover	\N	\N	Paxton	Glover	5201 North 376 Road	Allen	OK	\N	74825	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1599	METABASE	1599	Justina Ullrich	\N	\N	Justina	Ullrich	14041-14645 County Road 102	Elbert	CO	\N	80106	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_16	METABASE	16	Khalid Pouros	\N	\N	Khalid	Pouros	3234 County Road 7	Greensboro	AL	\N	36744	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_160	METABASE	160	Jordane Pacocha	\N	\N	Jordane	Pacocha	10360 North 100 West	Macy	IN	\N	46951	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1600	METABASE	1600	Anderson Stoltenberg	\N	\N	Anderson	Stoltenberg	131 Laurel Street	Uxbridge	MA	\N	1569	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1601	METABASE	1601	Olaf Sipes	\N	\N	Olaf	Sipes	915 Elm Grove Road	Colerain	NC	\N	27924	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1602	METABASE	1602	Abel Russel	\N	\N	Abel	Russel	835 Camas Creek Road	White Sulphur Springs	MT	\N	59645	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1603	METABASE	1603	Lula Rutherford	\N	\N	Lula	Rutherford	2875 U.S. 93	Whitefish	MT	\N	59937	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1604	METABASE	1604	Nelle Swaniawski	\N	\N	Nelle	Swaniawski	935 Verdure Road Southeast	Le Roy	KS	\N	66857	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1605	METABASE	1605	Salma Treutel	\N	\N	Salma	Treutel	46801 White Wolf Road Northwest	Grygla	MN	\N	56727	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1606	METABASE	1606	Alden Bednar	\N	\N	Alden	Bednar	500 South 5 Mi W Of 1600w	Francesville	IN	\N	47946	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1607	METABASE	1607	Monty Abshire	\N	\N	Monty	Abshire	4281-4371 33rd Street Southeast	Tappen	ND	\N	58487	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1608	METABASE	1608	Edwina VonRueden	\N	\N	Edwina	VonRueden	257 Bigwoods Vinton Road	Vinton	LA	\N	70668	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1609	METABASE	1609	Krista Bechtelar	\N	\N	Krista	Bechtelar	1966 Bayside Road	Trenton	ME	\N	4605	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_161	METABASE	161	Rupert Ruecker	\N	\N	Rupert	Ruecker	4119 Chambers County 173	La Fayette	AL	\N	36862	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1610	METABASE	1610	Heath Dare	\N	\N	Heath	Dare	244 Elk Crossing Road	Tie Siding	WY	\N	82084	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1611	METABASE	1611	Nicolas Goyette	\N	\N	Nicolas	Goyette	2510-2684 Conley Bumgarner Road	Morganton	NC	\N	28655	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1612	METABASE	1612	Elmer Klocko	\N	\N	Elmer	Klocko	5-101 G-032	Dell City	NM	\N	79837	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1613	METABASE	1613	Art Doyle	\N	\N	Art	Doyle	64103 U.S. 50	Gunnison	CO	\N	81230	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1614	METABASE	1614	Sallie Wehner	\N	\N	Sallie	Wehner	2805 Ruby Road	Nogales	AZ	\N	85621	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1615	METABASE	1615	Sandy Feest	\N	\N	Sandy	Feest	52136 150th Street	Vernon Center	MN	\N	56090	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1616	METABASE	1616	Fritz Dickens	\N	\N	Fritz	Dickens	1363 7th Avenue	Hillsdale	WI	\N	54733	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1617	METABASE	1617	Dameon Nicolas	\N	\N	Dameon	Nicolas	2678 West 1200 South	Aberdeen	ID	\N	83210	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1618	METABASE	1618	Alisa Schmitt	\N	\N	Alisa	Schmitt	21144-22214 County Road 5	Rifle	CO	\N	81650	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1619	METABASE	1619	Kacey Jones	\N	\N	Kacey	Jones	12167 U.S. 54	Carrizozo	NM	\N	88301	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_162	METABASE	162	Destiney Swaniawski	\N	\N	Destiney	Swaniawski	6738-6772 Ohio 162	Attica	OH	\N	44807	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1620	METABASE	1620	Mathias Maggio	\N	\N	Mathias	Maggio	201-299 Papermill Road	Springfield	PA	\N	19064	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1621	METABASE	1621	Jean Christiansen	\N	\N	Jean	Christiansen	300-498 Curry Road 43	Broadview	NM	\N	88112	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1622	METABASE	1622	Ceasar Harvey	\N	\N	Ceasar	Harvey	1477-1645 Ohio 772	Bainbridge	OH	\N	45612	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1623	METABASE	1623	Cleveland Russel	\N	\N	Cleveland	Russel	7425 1st Avenue North	Towner	ND	\N	58788	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1624	METABASE	1624	Kimberly Brakus	\N	\N	Kimberly	Brakus	1210 Eden Road	Great Falls	MT	\N	59405	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1625	METABASE	1625	Demetris Hauck	\N	\N	Demetris	Hauck	1016 Piketown Road	Harrisburg	PA	\N	17112	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1626	METABASE	1626	Ricardo Gutkowski	\N	\N	Ricardo	Gutkowski	27 Kiowa Road	Windom	KS	\N	67491	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1627	METABASE	1627	Sydnie Connelly	\N	\N	Sydnie	Connelly	1699 Georgia 195	Americus	GA	\N	31709	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1628	METABASE	1628	Orlando Conroy	\N	\N	Orlando	Conroy	4500-6098 Dutch Lane Northwest	Johnstown	OH	\N	43031	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1629	METABASE	1629	Consuelo Streich	\N	\N	Consuelo	Streich	1465 Black Creek Road	Silverthorne	CO	\N	80498	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_163	METABASE	163	Rowena Hodkiewicz	\N	\N	Rowena	Hodkiewicz	26046 West North River Road	Hershey	NE	\N	69143	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1630	METABASE	1630	Noelia Lynch	\N	\N	Noelia	Lynch	8047 North 2100th Street	Dieterich	IL	\N	62424	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1631	METABASE	1631	Lauryn Zieme	\N	\N	Lauryn	Zieme	21900-21998 Road 17	Columbus Grove	OH	\N	45830	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1632	METABASE	1632	Ephraim Pfannerstill	\N	\N	Ephraim	Pfannerstill	224-238 Singleton Road	Mocksville	NC	\N	27028	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1633	METABASE	1633	Tobin Braun	\N	\N	Tobin	Braun	484 Baptist Hill Road	Chillicothe	OH	\N	45601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1634	METABASE	1634	Emerson O'Keefe	\N	\N	Emerson	O'Keefe	339 Maxwell Hill Road	Wolf Point	MT	\N	59201	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1635	METABASE	1635	Shad Welch	\N	\N	Shad	Welch	3072 Chanute Road	Pall Mall	TN	\N	38577	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1636	METABASE	1636	Sandra Maggio	\N	\N	Sandra	Maggio	741 Batista Drive	San Jose	CA	\N	95136	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1637	METABASE	1637	Cecelia Herzog	\N	\N	Cecelia	Herzog	9700 County Road 7950	Pottersville	MO	\N	65790	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1638	METABASE	1638	Mollie Bogan	\N	\N	Mollie	Bogan	801 Brannen Cemetery Road	Statesboro	GA	\N	30458	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1639	METABASE	1639	Jarred Mraz	\N	\N	Jarred	Mraz	693-799 Huntington Road	Rosenberg	TX	\N	77471	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_164	METABASE	164	Sabryna Schumm	\N	\N	Sabryna	Schumm	13271 West Splithand Road	Grand Rapids	MN	\N	55744	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1640	METABASE	1640	Kyler Altenwerth	\N	\N	Kyler	Altenwerth	11638 Johnson School Road	Mer Rouge	LA	\N	71261	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1641	METABASE	1641	Gregorio Terry	\N	\N	Gregorio	Terry	23950 Recluse Road	Philip	SD	\N	57567	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1642	METABASE	1642	Merl Steuber	\N	\N	Merl	Steuber	1528-1598 South Road	Plainville	KS	\N	67663	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1643	METABASE	1643	Horacio Smith	\N	\N	Horacio	Smith	7700-7706 Cecelia Drive	Chattanooga	TN	\N	37416	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1644	METABASE	1644	Laura Hills	\N	\N	Laura	Hills	106 Spruce Lane	Greentown	PA	\N	18426	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1645	METABASE	1645	Missouri Grimes	\N	\N	Missouri	Grimes	20090 Chalon Road	Perris	CA	\N	92570	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1646	METABASE	1646	Trey Waters	\N	\N	Trey	Waters	1350 River Road	Floyd	IA	\N	50435	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1647	METABASE	1647	Jamel Stanton	\N	\N	Jamel	Stanton	20 Hardiman Road South	Leoma	TN	\N	38468	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1648	METABASE	1648	Ayla Jacobi	\N	\N	Ayla	Jacobi	1943-1957 U.S. 75	Dakota City	NE	\N	68731	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1649	METABASE	1649	Carolyne Leuschke	\N	\N	Carolyne	Leuschke	6339 Creek Road	Andover	OH	\N	44003	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_165	METABASE	165	Pattie Senger	\N	\N	Pattie	Senger	735 Kelley Road	Colquitt	GA	\N	39837	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1650	METABASE	1650	Lyda Schulist	\N	\N	Lyda	Schulist	9537 228th Avenue	Ackworth	IA	\N	50001	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1651	METABASE	1651	Pink Littel	\N	\N	Pink	Littel	2188-2226 Spout Springs Road	Clay City	KY	\N	40312	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1652	METABASE	1652	Arielle Dach	\N	\N	Arielle	Dach	924 Ulm Road	Banner	WY	\N	82832	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1653	METABASE	1653	Roscoe Luettgen	\N	\N	Roscoe	Luettgen	W593 Spring Brook Avenue	Merrill	WI	\N	54452	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1654	METABASE	1654	Braulio Jacobs	\N	\N	Braulio	Jacobs	354 Summit Drive	Del Rio	TX	\N	78840	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1655	METABASE	1655	Yvonne Ryan	\N	\N	Yvonne	Ryan	157 Centerline Road	Presque Isle	ME	\N	4769	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1656	METABASE	1656	Ruthe Gottlieb	\N	\N	Ruthe	Gottlieb	372 Hodges Road	Wibaux	MT	\N	59353	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1657	METABASE	1657	Ivory Ebert	\N	\N	Ivory	Ebert	481 South Churchtown Road	Narvon	PA	\N	17555	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1658	METABASE	1658	Aida Schneider	\N	\N	Aida	Schneider	1567 Coldwater Road	Dewy Rose	GA	\N	30634	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1659	METABASE	1659	Caleigh Hodkiewicz	\N	\N	Caleigh	Hodkiewicz	1405 Gin Mill Court	Monroe	GA	\N	30656	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_166	METABASE	166	Carmelo Carter	\N	\N	Carmelo	Carter	9011 Kisser Road	Onaway	MI	\N	49765	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1660	METABASE	1660	Tyrell Nikolaus	\N	\N	Tyrell	Nikolaus	701 Turner Road	Hammond	NY	\N	13646	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1661	METABASE	1661	Marques Koch	\N	\N	Marques	Koch	37656 Black Pine Road	Pine City	MN	\N	55063	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1662	METABASE	1662	Clay Pfannerstill	\N	\N	Clay	Pfannerstill	271 County Road	Fort Bridger	WY	\N	82933	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1663	METABASE	1663	Abdiel Heathcote	\N	\N	Abdiel	Heathcote	6599 Alvarado Street	Borrego Springs	CA	\N	92004	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1664	METABASE	1664	Leonor Mitchell	\N	\N	Leonor	Mitchell	13785-13865 Sullivan Creek Trail	Rudyard	MI	\N	49780	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1665	METABASE	1665	Henriette Hane	\N	\N	Henriette	Hane	342 4 Acres Sec34 T23nr2e	Chico	CA	\N	95928	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1666	METABASE	1666	Minnie Cremin	\N	\N	Minnie	Cremin	30945 Ohio 325	Langsville	OH	\N	45741	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1667	METABASE	1667	Delaney Gerhold	\N	\N	Delaney	Gerhold	7577 South County Road 210 East	Rensselaer	IN	\N	47978	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1668	METABASE	1668	Aglae Rutherford	\N	\N	Aglae	Rutherford	641 Knox Road 900 East	Gilson	IL	\N	61436	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1669	METABASE	1669	Gunner Hodkiewicz	\N	\N	Gunner	Hodkiewicz	125-177 Snowy Mountain Road	Roundup	MT	\N	59072	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_167	METABASE	167	Grady Sipes	\N	\N	Grady	Sipes	4126 Smokey Creek Road	Lenoir	NC	\N	28645	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1670	METABASE	1670	Lonnie Beier	\N	\N	Lonnie	Beier	272 Guske Road	LaCrosse	WA	\N	99143	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1671	METABASE	1671	Howell Morissette	\N	\N	Howell	Morissette	12404 U.S. 231	Youngstown	FL	\N	32466	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1672	METABASE	1672	Elisa Grady	\N	\N	Elisa	Grady	41351 Solomon Drive	Chiloquin	OR	\N	97624	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1673	METABASE	1673	Dario Goldner	\N	\N	Dario	Goldner	9942 Suring Lane	Argonne	WI	\N	54511	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1674	METABASE	1674	Erwin Wilderman	\N	\N	Erwin	Wilderman	23-999 County Road 545	New Brockton	AL	\N	36351	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1675	METABASE	1675	Marlin O'Conner	\N	\N	Marlin	O'Conner	141 Blankenship Road	Hazel Green	KY	\N	41332	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1676	METABASE	1676	Ramiro Shields	\N	\N	Ramiro	Shields	200 Sunnyside Drive	Marlboro Township	NJ	\N	7746	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1677	METABASE	1677	Lacey Mitchell	\N	\N	Lacey	Mitchell	4746-4998 195th Street	Burlington	IA	\N	52601	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1678	METABASE	1678	Donato Padberg	\N	\N	Donato	Padberg	44600 Dawley-New Pittsburg Road	Nelsonville	OH	\N	45764	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1679	METABASE	1679	Cyrus Cummerata	\N	\N	Cyrus	Cummerata	71 Meadow Farms Road	Old Fields	WV	\N	26845	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_168	METABASE	168	Lucile Bednar	\N	\N	Lucile	Bednar	9872 County Road 132	Somerville	TX	\N	77879	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1680	METABASE	1680	Mariano Botsford	\N	\N	Mariano	Botsford	2642 Meadowbrook Lane	Silverthorne	CO	\N	80498	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1681	METABASE	1681	Gino Kuhic	\N	\N	Gino	Kuhic	3536-3620 135th Street	Charlotte	IA	\N	52731	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1682	METABASE	1682	Viva Zboncak	\N	\N	Viva	Zboncak	487 South Sand Creek Road	Jordan	MT	\N	59337	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1683	METABASE	1683	Margaret Kshlerin	\N	\N	Margaret	Kshlerin	157-171 Neil Thompson Road	Shohola	PA	\N	18458	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1684	METABASE	1684	Camila Pagac	\N	\N	Camila	Pagac	275 Allen Road	Plattsburgh	NY	\N	12901	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1685	METABASE	1685	Micheal Lang	\N	\N	Micheal	Lang	N7109 Wettach Road	Monticello	WI	\N	53570	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1686	METABASE	1686	Malvina Effertz	\N	\N	Malvina	Effertz	9431 Hessen Cassel Road	Fort Wayne	IN	\N	46816	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1687	METABASE	1687	Santa Schimmel	\N	\N	Santa	Schimmel	35860 Oklahoma 45	Waynoka	OK	\N	73860	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1688	METABASE	1688	Kenna Walter	\N	\N	Kenna	Walter	23000-23220 East 15th Road	Morrisonville	IL	\N	62546	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1689	METABASE	1689	Aliya Goodwin	\N	\N	Aliya	Goodwin	11905 North Carolina 97	Rocky Mount	NC	\N	27803	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_169	METABASE	169	Arnaldo Bartell	\N	\N	Arnaldo	Bartell	154-156 Cedar Street	East Hampton	NY	\N	11937	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1690	METABASE	1690	Sterling Feil	\N	\N	Sterling	Feil	9032-9056 West County Highway B	Hayward	WI	\N	54843	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1691	METABASE	1691	Johnnie Glover	\N	\N	Johnnie	Glover	5311 Southeast Promontory Road	Corinne	UT	\N	84307	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1692	METABASE	1692	Jennifer Klocko	\N	\N	Jennifer	Klocko	12577 State Line Road	Olive Branch	MS	\N	38654	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1693	METABASE	1693	Hulda Homenick	\N	\N	Hulda	Homenick	37232 Arizona 61	Concho	AZ	\N	85924	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1694	METABASE	1694	Rosalinda Stamm	\N	\N	Rosalinda	Stamm	11715 North Fr 174	Hayward	WI	\N	54843	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1695	METABASE	1695	Zena Wolf	\N	\N	Zena	Wolf	4708 Paine Road	Mound City	KS	\N	66056	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1696	METABASE	1696	Jacky Jacobs	\N	\N	Jacky	Jacobs	740 Harrison Road	Palmersville	TN	\N	38241	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1697	METABASE	1697	Wilfred Schaden	\N	\N	Wilfred	Schaden	6225 Boles Road	Arbuckle	CA	\N	95912	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1698	METABASE	1698	Malika Kuphal	\N	\N	Malika	Kuphal	168 Otis Stage Road	Blandford	MA	\N	1008	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1699	METABASE	1699	Domenico Bailey	\N	\N	Domenico	Bailey	97 Po Box	Wood	PA	\N	16694	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_17	METABASE	17	Lora Cronin	\N	\N	Lora	Cronin	6111 Rogue Riv	Gold Beach	OR	\N	97444	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_170	METABASE	170	Mohammed Beatty	\N	\N	Mohammed	Beatty	671 Prairie Dale Road	Ekalaka	MT	\N	59324	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1700	METABASE	1700	Pete Reilly	\N	\N	Pete	Reilly	3800 Murphy Lane	Mount Eden	KY	\N	40046	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1701	METABASE	1701	Lupe Konopelski	\N	\N	Lupe	Konopelski	1563 FM 303	Sudan	TX	\N	79371	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1702	METABASE	1702	Eileen Hand	\N	\N	Eileen	Hand	14428 San Road	Cato	WI	\N	54230	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1703	METABASE	1703	Dorris Okuneva	\N	\N	Dorris	Okuneva	800-942 South Steele Road	Othello	WA	\N	99344	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1704	METABASE	1704	Imani Cruickshank	\N	\N	Imani	Cruickshank	384 Landis Road	Stantonsburg	NC	\N	27883	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1705	METABASE	1705	Larue Torp	\N	\N	Larue	Torp	5064-6362 South Edison Road	Bakersfield	CA	\N	93307	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1706	METABASE	1706	Marley Cronin	\N	\N	Marley	Cronin	1916 Off Road	Morganton	NC	\N	28655	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1707	METABASE	1707	Dennis Parisian	\N	\N	Dennis	Parisian	11910 East Co Road 500 North	Albany	IN	\N	47320	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1708	METABASE	1708	Anika Little	\N	\N	Anika	Little	509 County Road 49	Dawson	AL	\N	35963	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1709	METABASE	1709	Leanna Cremin	\N	\N	Leanna	Cremin	1939 Iowa 2	Donnellson	IA	\N	52625	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_171	METABASE	171	Raphael Wolff	\N	\N	Raphael	Wolff	3399 360th Avenue	Lancaster	MN	\N	56735	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1710	METABASE	1710	Emmalee Bruen	\N	\N	Emmalee	Bruen	1172 Geer Road	Nashua	MT	\N	59248	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1711	METABASE	1711	Marianna Heaney	\N	\N	Marianna	Heaney	153 Laurel Creek Road	Greenville	WV	\N	24945	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1712	METABASE	1712	Marco Kihn	\N	\N	Marco	Kihn	4972 Lake Road	Saco	MT	\N	59261	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1713	METABASE	1713	Alvena Stehr	\N	\N	Alvena	Stehr	42750 Upper Calapooia Drive	Sweet Home	OR	\N	97386	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1714	METABASE	1714	Nikko Bartoletti	\N	\N	Nikko	Bartoletti	1185 Mountview Road	Richland	MO	\N	65556	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1715	METABASE	1715	Dorcas Brakus	\N	\N	Dorcas	Brakus	72382 O Road	Holdrege	NE	\N	68949	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1716	METABASE	1716	Rick Ernser	\N	\N	Rick	Ernser	22317 Deep Creek Road	Onancock	VA	\N	23417	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1717	METABASE	1717	Lauretta Gislason	\N	\N	Lauretta	Gislason	305 Ball Hollow Estate Road	Pulaski	TN	\N	38478	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1718	METABASE	1718	Dedrick Strosin	\N	\N	Dedrick	Strosin	54117 Sisler Avenue	Ninilchik	AK	\N	99639	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1719	METABASE	1719	America Mayer	\N	\N	America	Mayer	4098 Fire Lane Road	White Lake	WI	\N	54491	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_172	METABASE	172	Maryam Weimann	\N	\N	Maryam	Weimann	1901-1999 Telephone Road	Andrews	TX	\N	79714	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1720	METABASE	1720	Paul Ortiz	\N	\N	Paul	Ortiz	15151 Interstate 20	Cisco	TX	\N	76437	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1721	METABASE	1721	Faye Denesik	\N	\N	Faye	Denesik	4381 Klotz Road	Portland	MI	\N	48875	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1722	METABASE	1722	Rex Smitham	\N	\N	Rex	Smitham	2355-2665 Roberts Chapel Road	Lamar	MS	\N	38642	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1723	METABASE	1723	Rozella Weber	\N	\N	Rozella	Weber	159 East Rc Road	Bowie	TX	\N	76230	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1724	METABASE	1724	Delmer Ledner	\N	\N	Delmer	Ledner	4770 Maple Grove Road	Hastings	MI	\N	49058	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1725	METABASE	1725	Stanley Watsica	\N	\N	Stanley	Watsica	2096 560th Street Southwest	Kalona	IA	\N	52247	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1726	METABASE	1726	Zane Romaguera	\N	\N	Zane	Romaguera	724-1350 Jacksboro Road	Morrison	TN	\N	37357	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1727	METABASE	1727	Estefania Goyette	\N	\N	Estefania	Goyette	102 Robin Drive	South Mills	NC	\N	27976	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1728	METABASE	1728	Braeden Corwin	\N	\N	Braeden	Corwin	175 Democrat Road	Spencer	VA	\N	24165	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1729	METABASE	1729	Cordelia Stokes	\N	\N	Cordelia	Stokes	8000-8054 29th Avenue Northwest	Lansford	ND	\N	58750	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_173	METABASE	173	Howard Gaylord	\N	\N	Howard	Gaylord	1246 Jarvis Road	Wakeman	OH	\N	44889	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1730	METABASE	1730	Stewart Sawayn	\N	\N	Stewart	Sawayn	14108 North Sonby Road	Hayward	WI	\N	54843	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1731	METABASE	1731	Ricky Senger	\N	\N	Ricky	Senger	21875-22399 28 Mile Road	Ray	MI	\N	48096	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1732	METABASE	1732	Kirsten Reichel	\N	\N	Kirsten	Reichel	7346 West 400 North	Rochester	IN	\N	46975	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1733	METABASE	1733	Adrianna Larson	\N	\N	Adrianna	Larson	7502 Upper Beaver Creek Road	Penrose	CO	\N	81240	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1734	METABASE	1734	Art Graham	\N	\N	Art	Graham	2300-2332 Timber Run Drive	Lenoir	NC	\N	28645	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1735	METABASE	1735	Tyson Lynch	\N	\N	Tyson	Lynch	14601-14649 76th Street Northwest	Grenora	ND	\N	58845	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1736	METABASE	1736	Joaquin Franecki	\N	\N	Joaquin	Franecki	7329-7499 County Road 13	Wheeler	TX	\N	79096	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1737	METABASE	1737	Merritt Walker	\N	\N	Merritt	Walker	3500-3568 East Humorist Road	Burbank	WA	\N	99323	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1738	METABASE	1738	Brandyn Douglas	\N	\N	Brandyn	Douglas	1443 Lowell Williams Road	Linn Creek	MO	\N	65052	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1739	METABASE	1739	Alexandrine Rosenbaum	\N	\N	Alexandrine	Rosenbaum	11701 Melody Avenue	Glencoe	MN	\N	55336	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_174	METABASE	174	Quentin Cummings	\N	\N	Quentin	Cummings	131764-132898 Homer-Klinefelter Road	Needles	CA	\N	92363	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1740	METABASE	1740	Charity Quitzon	\N	\N	Charity	Quitzon	17600 Flemmings Road	Winter Garden	FL	\N	34787	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1741	METABASE	1741	Hudson Larkin	\N	\N	Hudson	Larkin	43314 Hillcrest Drive	Sterling Heights	MI	\N	48313	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1742	METABASE	1742	Antwan Schmeler	\N	\N	Antwan	Schmeler	1263 Curtis Hill Church Lane	Bethel Springs	TN	\N	38315	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1743	METABASE	1743	Darlene Terry	\N	\N	Darlene	Terry	A3 Van Fleet Road	Polk City	FL	\N	33868	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1744	METABASE	1744	Abe Konopelski	\N	\N	Abe	Konopelski	6298 Northwest Sandy Shores Drive	Williams	MN	\N	56686	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1745	METABASE	1745	Elnora Effertz	\N	\N	Elnora	Effertz	1224 Plantation Road	Hope Hull	AL	\N	36043	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1746	METABASE	1746	David Hettinger	\N	\N	David	Hettinger	2001 Old Ffa Road	Fort Pierce	FL	\N	34951	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1747	METABASE	1747	Triston Nitzsche	\N	\N	Triston	Nitzsche	400 Wilbert Lane	Vicksburg	MS	\N	39180	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1748	METABASE	1748	Evans Bins	\N	\N	Evans	Bins	1174 Red Belt Road	Chickamauga	GA	\N	30707	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1749	METABASE	1749	Ivy Koelpin	\N	\N	Ivy	Koelpin	23861 Route 66	Calumet	OK	\N	73014	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_175	METABASE	175	Ernestina Gerhold	\N	\N	Ernestina	Gerhold	496 260th Street	Ogden	IA	\N	50212	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1750	METABASE	1750	Troy Pacocha	\N	\N	Troy	Pacocha	1511-1591 Kane Street	Carlyle	IL	\N	62231	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1751	METABASE	1751	Theresia Russel	\N	\N	Theresia	Russel	27358-27398 377th Avenue	Corsica	SD	\N	57328	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1752	METABASE	1752	Alaina Howell	\N	\N	Alaina	Howell	99 County Road 3706	Addison	AL	\N	35540	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1753	METABASE	1753	Leone Littel	\N	\N	Leone	Littel	473 Bill Evans Road	Silver City	NM	\N	88061	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1754	METABASE	1754	Zora Schamberger	\N	\N	Zora	Schamberger	3543 Rocky Hill Road	Blackstone	VA	\N	23824	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1755	METABASE	1755	Keyon Gleason	\N	\N	Keyon	Gleason	339 Maxwell Hill Road	Wolf Point	MT	\N	59201	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1756	METABASE	1756	Kiley Stark	\N	\N	Kiley	Stark	1460 Youngs Mill Road	Plains	GA	\N	31780	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1757	METABASE	1757	Michael Frami	\N	\N	Michael	Frami	756 Country Club Road	Mount Olive	NC	\N	28365	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1758	METABASE	1758	Adrien VonRueden	\N	\N	Adrien	VonRueden	11079-11099 66th Street Southeast	Verona	ND	\N	58490	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1759	METABASE	1759	Abby Larkin	\N	\N	Abby	Larkin	3095 Hensley Lane	Hopkinsville	KY	\N	42240	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_176	METABASE	176	Rebeca Parisian	\N	\N	Rebeca	Parisian	22711 Davis Drive	Three Rivers	MI	\N	49093	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1760	METABASE	1760	Isadore Homenick	\N	\N	Isadore	Homenick	1026 Pine Gap Drive	Dale	TX	\N	78616	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1761	METABASE	1761	Wilmer Schaefer	\N	\N	Wilmer	Schaefer	4139 Planer Road	Effingham	SC	\N	29541	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1762	METABASE	1762	Francisco Robel	\N	\N	Francisco	Robel	1636 U.S. 84	Evant	TX	\N	76525	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1763	METABASE	1763	Una Graham	\N	\N	Una	Graham	1564 325th Street	North English	IA	\N	52316	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1764	METABASE	1764	Billy Harvey	\N	\N	Billy	Harvey	1118 Cole Thomas Road	Bear Creek	NC	\N	27207	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1765	METABASE	1765	Kristina Herman	\N	\N	Kristina	Herman	6742 Kirk Lane	Warrenton	VA	\N	20187	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1766	METABASE	1766	Ferne Rosenbaum	\N	\N	Ferne	Rosenbaum	8622 Bull Creek Road	Coulterville	CA	\N	95311	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1767	METABASE	1767	Jeffery Hermann	\N	\N	Jeffery	Hermann	2-8 Henry County 47	Shorterville	AL	\N	36373	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1768	METABASE	1768	Roxane Little	\N	\N	Roxane	Little	13841 Chicago Avenue	Wellston	MI	\N	49689	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1769	METABASE	1769	Vesta Lang	\N	\N	Vesta	Lang	240 Wagle Lane	McKinleyville	CA	\N	95519	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_177	METABASE	177	Nikko Haag	\N	\N	Nikko	Haag	17411 Shannon Route	Shannon	IL	\N	61078	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1770	METABASE	1770	Frank Rath	\N	\N	Frank	Rath	46973 Haines Dump Road	Haines	OR	\N	97833	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1771	METABASE	1771	Susanna Will	\N	\N	Susanna	Will	13000 U.S. 20	Sisters	OR	\N	97759	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1772	METABASE	1772	Sallie Flatley	\N	\N	Sallie	Flatley	27729-27757 Intracoastal Road	Plaquemine	LA	\N	70764	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1773	METABASE	1773	Jasmin West	\N	\N	Jasmin	West	3254-3294 1300th Avenue	Ridgeland	WI	\N	54763	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1774	METABASE	1774	Nat Hane	\N	\N	Nat	Hane	5419 Shandon Place	Tucson	AZ	\N	85749	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1775	METABASE	1775	Ward Ernser	\N	\N	Ward	Ernser	N6687 Aspen Road	Phillips	WI	\N	54555	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1776	METABASE	1776	Tina Hahn	\N	\N	Tina	Hahn	8335 West Vincennes Trail	Campbellsburg	IN	\N	47108	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1777	METABASE	1777	Stan Ernser	\N	\N	Stan	Ernser	37000-37912 190th Avenue	Goodhue	MN	\N	55027	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1778	METABASE	1778	Angus Bergnaum	\N	\N	Angus	Bergnaum	3001 Bald Mountain Road	Bear Creek Village	PA	\N	18702	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1779	METABASE	1779	Billie Nolan	\N	\N	Billie	Nolan	36844 East Palmer Road	Brady	NE	\N	69123	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_178	METABASE	178	Joanie Cruickshank	\N	\N	Joanie	Cruickshank	12759 Gurnsey Hollow Road	Frewsburg	NY	\N	14738	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1780	METABASE	1780	Ubaldo Wolf	\N	\N	Ubaldo	Wolf	2840 Seldom Seen Road	Forestburg	TX	\N	76239	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1781	METABASE	1781	Nia Schoen	\N	\N	Nia	Schoen	2963 7th Avenue	Chetek	WI	\N	54728	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1782	METABASE	1782	Melyssa Miller	\N	\N	Melyssa	Miller	7859 Lake Road	Belleville	NY	\N	13611	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1783	METABASE	1783	Tristin Champlin	\N	\N	Tristin	Champlin	21101-21199 415th Avenue	Iroquois	SD	\N	57353	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1784	METABASE	1784	Mafalda Medhurst	\N	\N	Mafalda	Medhurst	6876 Dean Road	Howell	MI	\N	48855	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1785	METABASE	1785	Joannie Hudson	\N	\N	Joannie	Hudson	3824-3938 Wilmington Road	Lebanon	OH	\N	45036	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1786	METABASE	1786	Allison Doyle	\N	\N	Allison	Doyle	122 Falls Lane	Bonnerdale	AR	\N	71933	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1787	METABASE	1787	Katheryn Jacobson	\N	\N	Katheryn	Jacobson	628-998 Seay Lane	New Braunfels	TX	\N	78132	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1788	METABASE	1788	Mackenzie Ullrich	\N	\N	Mackenzie	Ullrich	3200 Penny Drive	Meeker	CO	\N	81641	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1789	METABASE	1789	Rebekah Ledner	\N	\N	Rebekah	Ledner	1100-1116 East 2nd Avenue	Salt Lake City	UT	\N	84103	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_179	METABASE	179	Van Windler	\N	\N	Van	Windler	253 Par Road 2-75	Ferriday	LA	\N	71334	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1790	METABASE	1790	Claudie Dare	\N	\N	Claudie	Dare	12949 Delbridge Road	Potosi	MO	\N	63664	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1791	METABASE	1791	Cyrus Macejkovic	\N	\N	Cyrus	Macejkovic	510 Stock Pen Mountain Road	Narrows	VA	\N	24124	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1792	METABASE	1792	Stanley Kuphal	\N	\N	Stanley	Kuphal	25504-25986 42nd Avenue	Oakville	IA	\N	52646	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1793	METABASE	1793	Anna Price	\N	\N	Anna	Price	721 Wasserfall Road	Fredericksburg	TX	\N	78624	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1794	METABASE	1794	Darryl Stanton	\N	\N	Darryl	Stanton	1086 Tongue River Road	Miles City	MT	\N	59301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1795	METABASE	1795	Ollie Corkery	\N	\N	Ollie	Corkery	111-199 Cottonwood Drive	Mescalero	NM	\N	88340	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1796	METABASE	1796	Hosea Thompson	\N	\N	Hosea	Thompson	1272-1980 Weldon Road	Marion	KY	\N	42064	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1797	METABASE	1797	Julianne Leffler	\N	\N	Julianne	Leffler	355 Coleman Road	Wheatland	WY	\N	82201	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1798	METABASE	1798	Paige Lueilwitz	\N	\N	Paige	Lueilwitz	1950 County Road E	Baldwin	WI	\N	54002	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1799	METABASE	1799	Antonina Morissette	\N	\N	Antonina	Morissette	11560 370th Avenue	Comfrey	MN	\N	56019	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_18	METABASE	18	Arely Pollich	\N	\N	Arely	Pollich	13116 Northeast Sandy Boulevard	Portland	OR	\N	97230	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_180	METABASE	180	Wilma Roob	\N	\N	Wilma	Roob	7059 Highway Bb	La Russell	MO	\N	64848	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1800	METABASE	1800	Freddie Wisoky	\N	\N	Freddie	Wisoky	4816-4820 30th Avenue	Mandan	ND	\N	58554	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1801	METABASE	1801	Kaelyn Gislason	\N	\N	Kaelyn	Gislason	251 East Johnson Road	Wheatland	WY	\N	82201	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1802	METABASE	1802	Blair Heaney	\N	\N	Blair	Heaney	17224 Old 212	Mud Butte	SD	\N	57758	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1803	METABASE	1803	Raymundo D'Amore	\N	\N	Raymundo	D'Amore	2460 Tennessee 213	Tiptonville	TN	\N	38079	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1804	METABASE	1804	Carter Hane	\N	\N	Carter	Hane	195 Big Sky Ridge Lane	Drummond	MT	\N	59832	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1805	METABASE	1805	Alvena Rempel	\N	\N	Alvena	Rempel	1049 Travis Road	Jordanville	NY	\N	13361	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1806	METABASE	1806	Melba Witting	\N	\N	Melba	Witting	1000 Old Union Road	Floral	AR	\N	72534	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1807	METABASE	1807	Pearline Paucek	\N	\N	Pearline	Paucek	7295 Johnson Canyon Road	Kanab	UT	\N	84741	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1808	METABASE	1808	Dariana Schneider	\N	\N	Dariana	Schneider	N7851 Bay View Road	Horicon	WI	\N	53032	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1809	METABASE	1809	Rita Schmeler	\N	\N	Rita	Schmeler	6310 Highway 422	Norwood	LA	\N	70761	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_181	METABASE	181	Evalyn Moen	\N	\N	Evalyn	Moen	15274 West Shields Avenue	Kerman	CA	\N	93630	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1810	METABASE	1810	Kathleen Bernhard	\N	\N	Kathleen	Bernhard	2099-2199 South 850 Road	Council Grove	KS	\N	66846	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1811	METABASE	1811	Jennings Brakus	\N	\N	Jennings	Brakus	2420 Enterprise Way	Imperial	CA	\N	92251	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1812	METABASE	1812	Trevion Raynor	\N	\N	Trevion	Raynor	41 Austin Road	Morrisonville	NY	\N	12962	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1813	METABASE	1813	Myriam Witting	\N	\N	Myriam	Witting	24118-24500 Shadow Lane	Grand Ronde	OR	\N	97347	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1814	METABASE	1814	Shane Adams	\N	\N	Shane	Adams	410 Burgess Hollow Road	New Creek	WV	\N	26743	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1815	METABASE	1815	Ramiro Wehner	\N	\N	Ramiro	Wehner	7439 Old Federal Road	Quincy	FL	\N	32351	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1816	METABASE	1816	Peggie Aufderhar	\N	\N	Peggie	Aufderhar	306-318 Thorgaard Road	Vida	MT	\N	59274	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1817	METABASE	1817	Winifred Tillman	\N	\N	Winifred	Tillman	12016 Mazoch Road Holman Area	La Grange	TX	\N	78945	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1818	METABASE	1818	Nya Hilpert	\N	\N	Nya	Hilpert	2999 County Road 50 North	Scottsburg	IN	\N	47170	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1819	METABASE	1819	Gabrielle Kohler	\N	\N	Gabrielle	Kohler	10000 CR 835	Clewiston	FL	\N	33440	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_182	METABASE	182	Dana Orn	\N	\N	Dana	Orn	2051 Edmondson Road	Cornersville	TN	\N	37047	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1820	METABASE	1820	Alvis Gleichner	\N	\N	Alvis	Gleichner	1572 RR 1	Glenallen	MO	\N	63751	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1821	METABASE	1821	Otto Littel	\N	\N	Otto	Littel	6352-6746 North Range Line Road	Shelbyville	IN	\N	46176	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1822	METABASE	1822	Pearl Kovacek	\N	\N	Pearl	Kovacek	4120 40th Street Southeast	Tappen	ND	\N	58487	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1823	METABASE	1823	Mabel Ward	\N	\N	Mabel	Ward	21766 East 1750 North Road	Towanda	IL	\N	61776	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1824	METABASE	1824	Trevor Kling	\N	\N	Trevor	Kling	800 South Cox Creek Parkway	Florence	AL	\N	35630	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1825	METABASE	1825	Wanda Thiel	\N	\N	Wanda	Thiel	1 Uinaq Road	Hooper Bay	AK	\N	99604	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1826	METABASE	1826	Ervin Mitchell	\N	\N	Ervin	Mitchell	375 Meriwether Road	Cut Bank	MT	\N	59427	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1827	METABASE	1827	Savion Langworth	\N	\N	Savion	Langworth	8701-8767 91st Avenue Northwest	Powers Lake	ND	\N	58773	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1828	METABASE	1828	Sydnie Bode	\N	\N	Sydnie	Bode	460 Burrillo Road	Maryland	NY	\N	12116	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1829	METABASE	1829	Kaitlyn Howe	\N	\N	Kaitlyn	Howe	8601-8649 178th Avenue Southeast	Wahpeton	ND	\N	58075	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_183	METABASE	183	Rodolfo Larkin	\N	\N	Rodolfo	Larkin	22 Snick Road	Priest River	ID	\N	83856	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1830	METABASE	1830	Alta Hansen	\N	\N	Alta	Hansen	662 Foster Road	Union Springs	AL	\N	36089	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1831	METABASE	1831	Electa Barrows	\N	\N	Electa	Barrows	1444 Crane Lane	Squaw Valley	CA	\N	93675	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1832	METABASE	1832	Fay Bayer	\N	\N	Fay	Bayer	5580 County Road 411	Brownwood	TX	\N	76801	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1833	METABASE	1833	Gwen Cole	\N	\N	Gwen	Cole	7015 Farm to Market Road 3009	Schertz	TX	\N	78154	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1834	METABASE	1834	Amelie Crist	\N	\N	Amelie	Crist	85104 South Junction Road	Maupin	OR	\N	97037	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1835	METABASE	1835	Aurore Yundt	\N	\N	Aurore	Yundt	1581 Horseshoe Pike	Lebanon	PA	\N	17042	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1836	METABASE	1836	Bianka Crona	\N	\N	Bianka	Crona	14036 Star Landing Road	Lake Cormorant	MS	\N	38641	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1837	METABASE	1837	Sabrina Schmidt	\N	\N	Sabrina	Schmidt	5765-5981 U.S. 22	Washington Court House	OH	\N	43160	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1838	METABASE	1838	Maymie Moen	\N	\N	Maymie	Moen	1986 Old Rustburg Road	Lynchburg	VA	\N	24501	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1839	METABASE	1839	Nikita Little	\N	\N	Nikita	Little	4615 County Road 16	Tuskegee	AL	\N	36083	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_184	METABASE	184	Jesse Daugherty	\N	\N	Jesse	Daugherty	1073 Bailey Run Road	Austin	PA	\N	16720	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1840	METABASE	1840	Maryam Friesen	\N	\N	Maryam	Friesen	1601-1629 250 Street	Red Oak	IA	\N	51566	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1841	METABASE	1841	Harrison Kris	\N	\N	Harrison	Kris	1 Whitams Island	Saint Helena Island	SC	\N	29920	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1842	METABASE	1842	Candace McKenzie	\N	\N	Candace	McKenzie	1-5 Texas 41	Mountain Home	TX	\N	78058	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1843	METABASE	1843	Geo Thompson	\N	\N	Geo	Thompson	8001-9999 East Finkle Road	Falmouth	MI	\N	49632	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1844	METABASE	1844	Shaylee Wisoky	\N	\N	Shaylee	Wisoky	1272 County Road 900	Bunker	MO	\N	63629	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1845	METABASE	1845	Verna Schinner	\N	\N	Verna	Schinner	2301-2307 East 30th Street	Spencer	IA	\N	51301	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1846	METABASE	1846	Taya Morar	\N	\N	Taya	Morar	900 East North Street	Delphi	IN	\N	46923	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1847	METABASE	1847	Sydney Rempel	\N	\N	Sydney	Rempel	180 Unimak Drive	False Pass	AK	\N	99583	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1848	METABASE	1848	Danyka Kunze	\N	\N	Danyka	Kunze	755 Cades Lane	Gould	AR	\N	71643	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1849	METABASE	1849	Eryn Glover	\N	\N	Eryn	Glover	321 Magnolia	Gunnison	CO	\N	81230	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_185	METABASE	185	Audra Hane	\N	\N	Audra	Hane	21000 Spirit Lake Highway	Toutle	WA	\N	98649	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1850	METABASE	1850	Cristina Goldner	\N	\N	Cristina	Goldner	895 Sweeney Creek Road	Rosebud	MT	\N	59347	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1851	METABASE	1851	Nolan Lebsack	\N	\N	Nolan	Lebsack	505 South FM 441 Road	Louise	TX	\N	77455	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1852	METABASE	1852	Joan Langosh	\N	\N	Joan	Langosh	593 Hempstead 207 Road	Prescott	AR	\N	71857	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1853	METABASE	1853	Hannah Hodkiewicz	\N	\N	Hannah	Hodkiewicz	39583 180th Street Northwest	Warren	MN	\N	56762	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1854	METABASE	1854	Gerhard Towne	\N	\N	Gerhard	Towne	2602 Enterprise Drive	Anderson	IN	\N	46013	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1855	METABASE	1855	Stevie Ankunding	\N	\N	Stevie	Ankunding	11851 46th Street Northwest	Watford City	ND	\N	58854	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1856	METABASE	1856	Laurie Ortiz	\N	\N	Laurie	Ortiz	287 Tatum Salt Dome Road	Lumberton	MS	\N	39455	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1857	METABASE	1857	Beatrice Greenholt	\N	\N	Beatrice	Greenholt	17900 Glacier Highway	Juneau	AK	\N	99801	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1858	METABASE	1858	Mariah Brown	\N	\N	Mariah	Brown	7026 Mallard Drive Southeast	Warden	WA	\N	98857	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1859	METABASE	1859	Murl Keeling	\N	\N	Murl	Keeling	1019-1299 Louisiana 27	Bell City	LA	\N	70630	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_186	METABASE	186	Caitlyn Dach	\N	\N	Caitlyn	Dach	5460 Old River Road South	Brooklet	GA	\N	30415	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1860	METABASE	1860	Maiya Beier	\N	\N	Maiya	Beier	106 New Preston Hill Road	Washington	CT	\N	6777	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1861	METABASE	1861	Jana Hilll	\N	\N	Jana	Hilll	173 Bear Creek Road	Hysham	MT	\N	59038	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1862	METABASE	1862	Lulu Ondricka	\N	\N	Lulu	Ondricka	560 Goodie Creek Road	Rosie	AR	\N	72571	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1863	METABASE	1863	Monserrate Doyle	\N	\N	Monserrate	Doyle	5000 East County Road 126	Snyder	TX	\N	79549	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1864	METABASE	1864	Margarete Walsh	\N	\N	Margarete	Walsh	42259 257th Street	Alexandria	SD	\N	57311	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1865	METABASE	1865	Jerome Koepp	\N	\N	Jerome	Koepp	5689 Road 1078	Wolf Point	MT	\N	59201	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1866	METABASE	1866	Tatum Feest	\N	\N	Tatum	Feest	114 Cedar Street	Victor	CO	\N	80860	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1867	METABASE	1867	Alicia Runolfsdottir	\N	\N	Alicia	Runolfsdottir	2705 East Townline Road	Free Soil	MI	\N	49411	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1868	METABASE	1868	Maud Witting	\N	\N	Maud	Witting	2518 Rectortown Road	Marshall	VA	\N	20115	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1869	METABASE	1869	Nya Mueller	\N	\N	Nya	Mueller	44000-46998 Colorado 96	Eads	CO	\N	81036	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_187	METABASE	187	Bethel Schultz	\N	\N	Bethel	Schultz	79 North Of Highway	Stanton	TN	\N	38069	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1870	METABASE	1870	Donato Spinka	\N	\N	Donato	Spinka	11735 Desert Fire Trail	Kingman	AZ	\N	86401	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1871	METABASE	1871	Maxie Kilback	\N	\N	Maxie	Kilback	7500 FM 1728	Pledger	TX	\N	77468	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1872	METABASE	1872	Paul Kozey	\N	\N	Paul	Kozey	3663 Stone Creek Road	Dillon	MT	\N	59725	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1873	METABASE	1873	Jazmin Brekke	\N	\N	Jazmin	Brekke	4478 Indian Run Road	Flatwoods	KY	\N	41139	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1874	METABASE	1874	Christop Schulist	\N	\N	Christop	Schulist	10064 2nd Street Southeast	Sutton	ND	\N	58484	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1875	METABASE	1875	Georgianna Hoppe	\N	\N	Georgianna	Hoppe	9071 Highway 182	Franklin	LA	\N	70538	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1876	METABASE	1876	Bertrand Hayes	\N	\N	Bertrand	Hayes	1700-1710 Ellis Road	Park Hills	MO	\N	63601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1877	METABASE	1877	Alysha Quitzon	\N	\N	Alysha	Quitzon	128 Shady Bower Lane	Sonora	KY	\N	42776	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1878	METABASE	1878	Herman Ratke	\N	\N	Herman	Ratke	309-311 South Locust Street	Jonesboro	IL	\N	62952	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1879	METABASE	1879	Uriel Eichmann	\N	\N	Uriel	Eichmann	1579 Northeast 178th Place	Citra	FL	\N	32113	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_188	METABASE	188	Leda Hammes	\N	\N	Leda	Hammes	5331 116th Avenue Southwest	New England	ND	\N	58647	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1880	METABASE	1880	Nayeli Becker	\N	\N	Nayeli	Becker	164 Rocky Hill Road	Scituate	RI	\N	2857	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1881	METABASE	1881	Jalon Brakus	\N	\N	Jalon	Brakus	955-1163 V-20 C	Highlandville	MO	\N	65669	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1882	METABASE	1882	Vallie Hamill	\N	\N	Vallie	Hamill	81140-81160 County 983 Road	Helix	OR	\N	97835	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1883	METABASE	1883	Eleanora Senger	\N	\N	Eleanora	Senger	1831 255th Street	Manchester	IA	\N	52057	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1884	METABASE	1884	Adelia Heidenreich	\N	\N	Adelia	Heidenreich	6945 North O Street	Braman	OK	\N	74632	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1885	METABASE	1885	Kiel Hyatt	\N	\N	Kiel	Hyatt	1600-1620 Hurley Court	Tracy	CA	\N	95376	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1886	METABASE	1886	Hailie Walker	\N	\N	Hailie	Walker	W18444 Hoffy Road	Germfask	MI	\N	49836	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1887	METABASE	1887	Desmond Monahan	\N	\N	Desmond	Monahan	1476-1498 B Road	West Point	NE	\N	68788	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1888	METABASE	1888	Elinor Douglas	\N	\N	Elinor	Douglas	340 Witt Road	Clewiston	FL	\N	33440	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1889	METABASE	1889	Billy Hickle	\N	\N	Billy	Hickle	323-355 Irvine Road	Douglas	WY	\N	82633	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_189	METABASE	189	Vita Cummings	\N	\N	Vita	Cummings	15584 Old 79	New London	MO	\N	63459	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1890	METABASE	1890	Freeda Swaniawski	\N	\N	Freeda	Swaniawski	1002 Condon Grove Lane	Milburn	OK	\N	73450	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1891	METABASE	1891	Justyn Nikolaus	\N	\N	Justyn	Nikolaus	58101-58155 853rd Road	Wakefield	NE	\N	68784	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1892	METABASE	1892	Cathrine Langosh	\N	\N	Cathrine	Langosh	1095 Buxton Road	Spencer	WI	\N	54479	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1893	METABASE	1893	Delfina Luettgen	\N	\N	Delfina	Luettgen	350 North League Line Road	Trinidad	TX	\N	75163	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1894	METABASE	1894	Baylee Kassulke	\N	\N	Baylee	Kassulke	15436 County Highway 5	Springfield	MN	\N	56087	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1895	METABASE	1895	Meta Rogahn	\N	\N	Meta	Rogahn	6642 Shongo Valley Road	Fillmore	NY	\N	14735	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1896	METABASE	1896	Casimer Mitchell	\N	\N	Casimer	Mitchell	3435 McConnell Road	Greensboro	NC	\N	27405	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1897	METABASE	1897	Berry Hirthe	\N	\N	Berry	Hirthe	192-198 Agrico Lane	Seymour	IN	\N	47274	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1898	METABASE	1898	Virginia Macejkovic	\N	\N	Virginia	Macejkovic	86204 California 70	Beckwourth	CA	\N	96129	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1899	METABASE	1899	Murl Abbott	\N	\N	Murl	Abbott	1422 Kentucky 138	Dixon	KY	\N	42409	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_19	METABASE	19	Wyman Kertzmann	\N	\N	Wyman	Kertzmann	1460 Grays Creek Road	Grants Pass	OR	\N	97527	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_190	METABASE	190	Oswald Corwin	\N	\N	Oswald	Corwin	3044 Robinson Road	Ulster	PA	\N	18850	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1900	METABASE	1900	Warren Gulgowski	\N	\N	Warren	Gulgowski	227-257 Southeast 140 Avenue	Ellinwood	KS	\N	67526	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1901	METABASE	1901	Martin Greenholt	\N	\N	Martin	Greenholt	229 George Parks Highway	Denali National Park and Preserve	AK	\N	99755	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1902	METABASE	1902	Jace Kihn	\N	\N	Jace	Kihn	1602 Cabin Creek Road	Fallon	MT	\N	59326	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1903	METABASE	1903	Arturo Bahringer	\N	\N	Arturo	Bahringer	201 Lennington Street	Roland	OK	\N	74954	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1904	METABASE	1904	Mario Cassin	\N	\N	Mario	Cassin	13684 US Highway 95	Marsing	ID	\N	83639	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1905	METABASE	1905	Thurman Pouros	\N	\N	Thurman	Pouros	3930 County Road 312	Frankston	TX	\N	75763	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1906	METABASE	1906	Price Smith	\N	\N	Price	Smith	8101-8199 Chico Road Northeast	Albuquerque	NM	\N	87108	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1907	METABASE	1907	Deondre Koelpin	\N	\N	Deondre	Koelpin	18240 Quarry Road	Gillespie	IL	\N	62033	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1908	METABASE	1908	Jadyn Rice	\N	\N	Jadyn	Rice	201 Dysart Drive	Dysart	PA	\N	16636	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1909	METABASE	1909	Norris Jacobs	\N	\N	Norris	Jacobs	2869 Bashaw Road	Orofino	ID	\N	83544	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_191	METABASE	191	Mustafa Steuber	\N	\N	Mustafa	Steuber	24722 240th Avenue	Cornell	WI	\N	54732	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1910	METABASE	1910	Harvey Nikolaus	\N	\N	Harvey	Nikolaus	14119 Haven Lane	Neosho	MO	\N	64850	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1911	METABASE	1911	Talon Kreiger	\N	\N	Talon	Kreiger	9954 California 167	Bridgeport	CA	\N	93517	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1912	METABASE	1912	Loy Gleichner	\N	\N	Loy	Gleichner	1217 Gosser Ridge Road	Liberty	KY	\N	42539	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1913	METABASE	1913	Joana Pfeffer	\N	\N	Joana	Pfeffer	1748 Fred Hall Road	Gordon	GA	\N	31031	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1914	METABASE	1914	Lawson Heidenreich	\N	\N	Lawson	Heidenreich	53401-54799 506th Avenue Northwest	Bowbells	ND	\N	58721	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1915	METABASE	1915	Eveline Gibson	\N	\N	Eveline	Gibson	2327-2391 Turquoise Trail	Los Cerrillos	NM	\N	87010	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1916	METABASE	1916	Augustus Adams	\N	\N	Augustus	Adams	2265 Adel Lane	Cascade	MT	\N	59421	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1917	METABASE	1917	Elnora Langosh	\N	\N	Elnora	Langosh	601-681 24th Street Northwest	Butte	ND	\N	58723	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1918	METABASE	1918	Zackery Bailey	\N	\N	Zackery	Bailey	752 Tepusquet Road	Santa Maria	CA	\N	93454	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1919	METABASE	1919	Lukas Olson	\N	\N	Lukas	Olson	1678-1684 Baxter Avenue	Jesup	IA	\N	50648	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_192	METABASE	192	Haleigh Funk	\N	\N	Haleigh	Funk	365 Hickory Hill Road	Varnville	SC	\N	29944	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1920	METABASE	1920	Viviane Cummerata	\N	\N	Viviane	Cummerata	1085-1249 Wire Road East	Perkinston	MS	\N	39573	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1921	METABASE	1921	Kayli Ziemann	\N	\N	Kayli	Ziemann	31703 North River Road Way	Benton City	WA	\N	99320	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1922	METABASE	1922	Marge Stroman	\N	\N	Marge	Stroman	10722 Pine Butte Road	Bozeman	MT	\N	59718	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1923	METABASE	1923	Bryce Nader	\N	\N	Bryce	Nader	9438 Goose Creek Road	Bristol	VA	\N	24202	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1924	METABASE	1924	Blaze Daugherty	\N	\N	Blaze	Daugherty	1393 Coughran Road	Pleasanton	TX	\N	78064	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1925	METABASE	1925	Alda Kuhic	\N	\N	Alda	Kuhic	10150 North Antelope Meadows Drive	Prescott Valley	AZ	\N	86315	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1926	METABASE	1926	Elena Herman	\N	\N	Elena	Herman	4260-4264 Cloverfield Court	Wayland	MI	\N	49348	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1927	METABASE	1927	Guido McKenzie	\N	\N	Guido	McKenzie	1004 Henry-Washington Road	Crawfordsville	IA	\N	52621	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1928	METABASE	1928	Dominic Jacobi	\N	\N	Dominic	Jacobi	2524 Minnis Drive	Fort Worth	TX	\N	76117	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1929	METABASE	1929	Lucile Gutmann	\N	\N	Lucile	Gutmann	103615 South 3490 Road	Prague	OK	\N	74864	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_193	METABASE	193	Berta Roob	\N	\N	Berta	Roob	219 Perry Road	Louisville	MS	\N	39339	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1930	METABASE	1930	Lucie Cormier	\N	\N	Lucie	Cormier	56 Richardson Highway	Valdez	AK	\N	99686	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1931	METABASE	1931	Bryon Ward	\N	\N	Bryon	Ward	1704 Georgia 27	Georgetown	GA	\N	39854	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1932	METABASE	1932	Kenyatta Kshlerin	\N	\N	Kenyatta	Kshlerin	2785 Porter Road	Mason	TN	\N	38049	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1933	METABASE	1933	Rylee Upton	\N	\N	Rylee	Upton	1667 Shelco Road	Lost Hills	CA	\N	93249	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1934	METABASE	1934	Murray Zemlak	\N	\N	Murray	Zemlak	23933 Point Creek Road	Kiel	WI	\N	53042	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1935	METABASE	1935	Braeden Ryan	\N	\N	Braeden	Ryan	4700-5230 31st Street Southwest	Great Falls	MT	\N	59404	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1936	METABASE	1936	Geovanni Effertz	\N	\N	Geovanni	Effertz	1507 County Road 34	Bolckow	MO	\N	64427	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1937	METABASE	1937	Greta McClure	\N	\N	Greta	McClure	4081-4157 McKeown Lake Road Northwest	Hackensack	MN	\N	56452	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1938	METABASE	1938	Cyril Stamm	\N	\N	Cyril	Stamm	15492 Road 218	Cecil	OH	\N	45821	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1939	METABASE	1939	Amya Marquardt	\N	\N	Amya	Marquardt	441 Pilgrims Rest Road	Slocomb	AL	\N	36375	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_194	METABASE	194	Destany Friesen	\N	\N	Destany	Friesen	3914 Missouri 5	Mansfield	MO	\N	65704	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1940	METABASE	1940	Deon Tromp	\N	\N	Deon	Tromp	7117 Tarlton Road	Circleville	OH	\N	43113	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1941	METABASE	1941	Deven Ruecker	\N	\N	Deven	Ruecker	20000 East Plumley Road	Palmer	AK	\N	99645	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1942	METABASE	1942	Pink Kuhic	\N	\N	Pink	Kuhic	1928-1968 13th Avenue Northeast	Mott	ND	\N	58646	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1943	METABASE	1943	Coleman Keebler	\N	\N	Coleman	Keebler	4917 Road 20 Northeast	Soap Lake	WA	\N	98851	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1944	METABASE	1944	Jany Torp	\N	\N	Jany	Torp	1055 Smith Mill Road	Thomson	GA	\N	30824	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1945	METABASE	1945	Kyra Schulist	\N	\N	Kyra	Schulist	675 Isabella-Nashville Road	Tifton	GA	\N	31793	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1946	METABASE	1946	Logan Thompson	\N	\N	Logan	Thompson	18310 North Coates Highway	Brethren	MI	\N	49619	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1947	METABASE	1947	Earnest Buckridge	\N	\N	Earnest	Buckridge	16385 Sullivan Avenue	Palmer	AK	\N	99645	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1948	METABASE	1948	Gayle Towne	\N	\N	Gayle	Towne	4766 Mock Road	Concordia	MO	\N	64020	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1949	METABASE	1949	Carley Orn	\N	\N	Carley	Orn	3898 Union Flat Creek Road	Endicott	WA	\N	99125	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_195	METABASE	195	Green Carter	\N	\N	Green	Carter	14b County Road H	Richards	MO	\N	64778	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1950	METABASE	1950	Alek Hickle	\N	\N	Alek	Hickle	211-231 North Rateau Road	Ponchatoula	LA	\N	70454	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1951	METABASE	1951	Sienna Glover	\N	\N	Sienna	Glover	1355 Milikruak Street	Wainwright	AK	\N	99782	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1952	METABASE	1952	Eveline Jenkins	\N	\N	Eveline	Jenkins	1622 Farm to Market Road 1563	Wolfe City	TX	\N	75496	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1953	METABASE	1953	Mertie Shanahan	\N	\N	Mertie	Shanahan	116-118 Weischedel Road	Recluse	WY	\N	82725	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1954	METABASE	1954	General Steuber	\N	\N	General	Steuber	2625 J Avenue	Williamsburg	IA	\N	52361	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1955	METABASE	1955	Hailie Weimann	\N	\N	Hailie	Weimann	1547 Blackwater Road	London	KY	\N	40744	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1956	METABASE	1956	Kasandra Leffler	\N	\N	Kasandra	Leffler	1150 County Road 118	Liberty	TX	\N	77575	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1957	METABASE	1957	Lamont Dooley	\N	\N	Lamont	Dooley	4130 470 Road	King City	MO	\N	64463	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1958	METABASE	1958	Bernardo Torphy	\N	\N	Bernardo	Torphy	344-654 3 Way Road West	Heth	AR	\N	72346	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1959	METABASE	1959	Annamae Lind	\N	\N	Annamae	Lind	4408 Owen Prather Highway	Piñon	NM	\N	88344	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_196	METABASE	196	Alvena Legros	\N	\N	Alvena	Legros	2582-2640 North Al Harrison Road	Nogales	AZ	\N	85621	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1960	METABASE	1960	Tremayne Price	\N	\N	Tremayne	Price	755 Georgia 46	Lyons	GA	\N	30436	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1961	METABASE	1961	Jaylon Stokes	\N	\N	Jaylon	Stokes	7393-7999 East 1300th Road	Paris	IL	\N	61944	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1962	METABASE	1962	Ivory Jacobi	\N	\N	Ivory	Jacobi	3149 Clair Carrier Road	Friendship	NY	\N	14739	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1963	METABASE	1963	Heath Hettinger	\N	\N	Heath	Hettinger	2824 County Road 41	Oakland	MS	\N	38948	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1964	METABASE	1964	Elvera Kirlin	\N	\N	Elvera	Kirlin	204-310 Staggs Drive	Pleasant Plains	AR	\N	72568	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1965	METABASE	1965	Eddie Dibbert	\N	\N	Eddie	Dibbert	101 Qanirtuuq Road	Quinhagak	AK	\N	99655	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1966	METABASE	1966	Davonte Runolfsson	\N	\N	Davonte	Runolfsson	1149 State Park Road	Lucas	KY	\N	42156	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1967	METABASE	1967	Brandt Erdman	\N	\N	Brandt	Erdman	N5334 Hemlock Lane	Kewaunee	WI	\N	54216	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1968	METABASE	1968	Demetris Tromp	\N	\N	Demetris	Tromp	309-605 Livermore Creek Road	Browning	MT	\N	59417	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1969	METABASE	1969	Freeman Stehr	\N	\N	Freeman	Stehr	1325 Wideman Road	Oxford	AR	\N	72565	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_197	METABASE	197	Aletha Kertzmann	\N	\N	Aletha	Kertzmann	11206 Ruger Road	Klamath Falls	OR	\N	97601	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1970	METABASE	1970	Clark Luettgen	\N	\N	Clark	Luettgen	150 Road	Athol	KS	\N	66932	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1971	METABASE	1971	Karen Dooley	\N	\N	Karen	Dooley	11332-11338 Sunrise Drive	Brownsboro	TX	\N	75756	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1972	METABASE	1972	Kelsie Glover	\N	\N	Kelsie	Glover	1709 Crawford Smithonia Road	Colbert	GA	\N	30628	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1973	METABASE	1973	Lexie Bednar	\N	\N	Lexie	Bednar	34100-34248 Interstate 85 Business	Greensboro	NC	\N	27406	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1974	METABASE	1974	Candelario Blick	\N	\N	Candelario	Blick	10993 Georgia 45	Damascus	GA	\N	39841	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1975	METABASE	1975	Armani Kulas	\N	\N	Armani	Kulas	21609 Liv 306	Hale	MO	\N	64643	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1976	METABASE	1976	Bill Pacocha	\N	\N	Bill	Pacocha	67945 Stoddard Avenue	Anchor Point	AK	\N	99556	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1977	METABASE	1977	Tiana Parisian	\N	\N	Tiana	Parisian	12851 Range Line Road	Houstonia	MO	\N	65333	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1978	METABASE	1978	Giuseppe Morar	\N	\N	Giuseppe	Morar	242-254 Old Y O Crossing Road	Dexter	NM	\N	88230	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1979	METABASE	1979	Trudie Armstrong	\N	\N	Trudie	Armstrong	48908 310th Avenue	Russell	IA	\N	50238	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_198	METABASE	198	Tamara Sawayn	\N	\N	Tamara	Sawayn	22331 312th Street	Garber	IA	\N	52048	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1980	METABASE	1980	Geraldine Kiehn	\N	\N	Geraldine	Kiehn	1803 Mier Avenue	Zapata	TX	\N	78076	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1981	METABASE	1981	Novella Marks	\N	\N	Novella	Marks	6311 Wallace Road	Meridian	MS	\N	39301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1982	METABASE	1982	Javier Tillman	\N	\N	Javier	Tillman	5874 500th Avenue	Miles	IA	\N	52064	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1983	METABASE	1983	Christophe Wilderman	\N	\N	Christophe	Wilderman	27687 Northwest 1980th Road	Garnett	KS	\N	66032	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1984	METABASE	1984	Khalil Kiehn	\N	\N	Khalil	Kiehn	463 County Road 517	Creede	CO	\N	81130	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1985	METABASE	1985	Noelia Sanford	\N	\N	Noelia	Sanford	7866-8194 Byrn Grwyn Road	Barneveld	WI	\N	53507	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1986	METABASE	1986	Gino Weber	\N	\N	Gino	Weber	4000 South Kinney Coulee Road	Onalaska	WI	\N	54650	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1987	METABASE	1987	Madge Ondricka	\N	\N	Madge	Ondricka	100-112 Day Street	Ramona	CA	\N	92065	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1988	METABASE	1988	Charley Renner	\N	\N	Charley	Renner	2525 Rocky Mountain Road	Darby	MT	\N	59829	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1989	METABASE	1989	Adrian Lemke	\N	\N	Adrian	Lemke	407 Stinson Street	Pittsfield	ME	\N	4967	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_199	METABASE	199	Adan Weissnat	\N	\N	Adan	Weissnat	4633 Steamtown Road	Ashley	OH	\N	43003	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1990	METABASE	1990	Elvis Goyette	\N	\N	Elvis	Goyette	105-361 Haase Road	Ryegate	MT	\N	59074	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1991	METABASE	1991	Lizeth Carter	\N	\N	Lizeth	Carter	1213 East Co Road 600 North	Logansport	IN	\N	46947	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1992	METABASE	1992	Olen Watsica	\N	\N	Olen	Watsica	43 Snapper Lane	Beaufort	SC	\N	29907	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1993	METABASE	1993	Davin Turcotte	\N	\N	Davin	Turcotte	539 Mann Road	Downsville	LA	\N	71234	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1994	METABASE	1994	Casey Robel	\N	\N	Casey	Robel	18640 U S F S 3136 Road	Rudyard	MI	\N	49780	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1995	METABASE	1995	Jensen Schneider	\N	\N	Jensen	Schneider	1201-1239 40th Avenue	Lake Wilson	MN	\N	56151	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1996	METABASE	1996	Chasity Raynor	\N	\N	Chasity	Raynor	8400 Austin Road	Fallon	NV	\N	89406	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1997	METABASE	1997	Jaden Hansen	\N	\N	Jaden	Hansen	271 Peters Road	Fairbanks	AK	\N	99712	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1998	METABASE	1998	Cayla VonRueden	\N	\N	Cayla	VonRueden	3728 Turlock Road	Snelling	CA	\N	95369	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_1999	METABASE	1999	Bell Fritsch	\N	\N	Bell	Fritsch	1358-1398 Ida Avenue	Moville	IA	\N	51039	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2	METABASE	2	Domenica Williamson	\N	\N	Domenica	Williamson	101 4th Street	Searsboro	IA	\N	50242	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_20	METABASE	20	John Aufderhar	\N	\N	John	Aufderhar	52737 570th Street	Marne	IA	\N	51552	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_200	METABASE	200	Thalia Hirthe	\N	\N	Thalia	Hirthe	26000-26670 County Road 7	Wabasso	MN	\N	56293	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2000	METABASE	2000	Marquise Mann	\N	\N	Marquise	Mann	893 County Road 151	Carthage	TX	\N	75633	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2001	METABASE	2001	Elza Williamson	\N	\N	Elza	Williamson	11220 Indian Trail	Helotes	TX	\N	78023	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2002	METABASE	2002	Nadia Vandervort	\N	\N	Nadia	Vandervort	13160 Surenuff Road	Forest Grove	MT	\N	59441	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2003	METABASE	2003	Precious Lakin	\N	\N	Precious	Lakin	2059-2087 Country Trails Road	Conway	MO	\N	65632	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2004	METABASE	2004	Mark Bayer	\N	\N	Mark	Bayer	2368-2380 National Forest Development Road 199	Council	ID	\N	83612	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2005	METABASE	2005	Lindsey Hegmann	\N	\N	Lindsey	Hegmann	19020 Doerre Road	Spring	TX	\N	77379	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2006	METABASE	2006	Misty Daugherty	\N	\N	Misty	Daugherty	93 U.S. Highway 64	McCrory	AR	\N	72101	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2007	METABASE	2007	Ethyl Little	\N	\N	Ethyl	Little	325 Plum Creek Road	Vevay	IN	\N	47043	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2008	METABASE	2008	Afton Lesch	\N	\N	Afton	Lesch	18622 404th Avenue	Hitchcock	SD	\N	57348	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2009	METABASE	2009	Bessie Connelly	\N	\N	Bessie	Connelly	10870 Range Road	Gibbon	NE	\N	68840	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_201	METABASE	201	Ford Larkin	\N	\N	Ford	Larkin	9998 Iliamna Village Road	Iliamna	AK	\N	99606	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2010	METABASE	2010	Hassan Dare	\N	\N	Hassan	Dare	64920 County Road 111	Grover	CO	\N	80729	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2011	METABASE	2011	Elsa Dach	\N	\N	Elsa	Dach	76525 Middleman Road	Iron River	WI	\N	54847	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2012	METABASE	2012	Kyler Halvorson	\N	\N	Kyler	Halvorson	1360 Mission Valley Road	Hysham	MT	\N	59038	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2013	METABASE	2013	Mitchel Pouros	\N	\N	Mitchel	Pouros	4529 New Castle Road	New Wilmington	PA	\N	16142	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2014	METABASE	2014	Vilma Little	\N	\N	Vilma	Little	108 Coulter Road	Dupo	IL	\N	62240	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2015	METABASE	2015	Rigoberto Corkery	\N	\N	Rigoberto	Corkery	2300 South 114th Street West	Muskogee	OK	\N	74401	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2016	METABASE	2016	Alycia McCullough	\N	\N	Alycia	McCullough	1261 Cedar Lane	Shepherdstown	WV	\N	25443	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2017	METABASE	2017	Brannon Schroeder	\N	\N	Brannon	Schroeder	15753 Gull Lake Loop Road Northeast	Bemidji	MN	\N	56601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2018	METABASE	2018	Kyle Herzog	\N	\N	Kyle	Herzog	4758-4798 13th Avenue Northeast	Larimore	ND	\N	58251	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2019	METABASE	2019	Jabari Gleason	\N	\N	Jabari	Gleason	16 Cottage Walk	Bedford	NH	\N	3110	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_202	METABASE	202	Delphia Price	\N	\N	Delphia	Price	136 State Highway RA	Whitewater	MO	\N	63785	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2020	METABASE	2020	Andreane Spinka	\N	\N	Andreane	Spinka	1501 Beaumont Centre Lane	Lexington	KY	\N	40513	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2021	METABASE	2021	Kellie Price	\N	\N	Kellie	Price	27645 Missouri 21	Lesterville	MO	\N	63654	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2022	METABASE	2022	Maryam Watsica	\N	\N	Maryam	Watsica	6225-6403 62nd Avenue Northeast	Salem	OR	\N	97305	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2023	METABASE	2023	Jailyn Morissette	\N	\N	Jailyn	Morissette	9278 Derby Acres Lane	Jacksonville	FL	\N	32220	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2024	METABASE	2024	Horace Schowalter	\N	\N	Horace	Schowalter	30716 Greenfield Road	Burbank	SD	\N	57010	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2025	METABASE	2025	Broderick Tillman	\N	\N	Broderick	Tillman	193-195 Eagle Creek Road	Moyock	NC	\N	27958	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2026	METABASE	2026	Colin Kunze	\N	\N	Colin	Kunze	9426 U.S. 231	Huntingburg	IN	\N	47542	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2027	METABASE	2027	Simone Schaefer	\N	\N	Simone	Schaefer	5782 South Chippewa Road	Shepherd	MI	\N	48883	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2028	METABASE	2028	Janelle O'Hara	\N	\N	Janelle	O'Hara	148 Cedar Bluff Drive	Monticello	KY	\N	42633	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2029	METABASE	2029	Estrella Collier	\N	\N	Estrella	Collier	37119 138th Street	Mina	SD	\N	57451	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_203	METABASE	203	Jessika Treutel	\N	\N	Jessika	Treutel	5831 Moonglow Drive	Beaumont	TX	\N	77713	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2030	METABASE	2030	Joe Terry	\N	\N	Joe	Terry	2030 River Road	Malta	MT	\N	59538	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2031	METABASE	2031	Loyal Schiller	\N	\N	Loyal	Schiller	26989 560th Street	Palisade	MN	\N	56469	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2032	METABASE	2032	Aurelio Borer	\N	\N	Aurelio	Borer	47201 Tamiami Trail East	Ochopee	FL	\N	34141	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2033	METABASE	2033	Destiny Murazik	\N	\N	Destiny	Murazik	19304 County Road 1550 East	Princeton	IL	\N	61356	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2034	METABASE	2034	Brando Yundt	\N	\N	Brando	Yundt	256 Mountain View Road	Ashland	AL	\N	36251	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2035	METABASE	2035	Brisa Goodwin	\N	\N	Brisa	Goodwin	11898 Tom Folsom Road	Thonotosassa	FL	\N	33592	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2036	METABASE	2036	Shanny Kuvalis	\N	\N	Shanny	Kuvalis	515 Welliver Road	Plentywood	MT	\N	59254	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2037	METABASE	2037	Ransom Davis	\N	\N	Ransom	Davis	132 Merrifield Road	Earlville	NY	\N	13332	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2038	METABASE	2038	Mario Wisoky	\N	\N	Mario	Wisoky	2817 Boomer Hill Road	Myrtle Creek	OR	\N	97457	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2039	METABASE	2039	Cleta Cassin	\N	\N	Cleta	Cassin	7698 Hidden Valley Drive	Kirtland	OH	\N	44094	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_204	METABASE	204	Enos Donnelly	\N	\N	Enos	Donnelly	1631 Otto Staudt Road	Fredericksburg	TX	\N	78624	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2040	METABASE	2040	Meagan Stoltenberg	\N	\N	Meagan	Stoltenberg	88413 426th Avenue	Ainsworth	NE	\N	69210	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2041	METABASE	2041	Maurine Considine	\N	\N	Maurine	Considine	455 Lower Curry Branch Road	Delbarton	WV	\N	25670	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2042	METABASE	2042	Travis Buckridge	\N	\N	Travis	Buckridge	143 Lobachsville Road	Fleetwood	PA	\N	19522	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2043	METABASE	2043	Jason Spencer	\N	\N	Jason	Spencer	9370 US-441 South	Ocala	FL	\N	34475	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2044	METABASE	2044	Milan Ritchie	\N	\N	Milan	Ritchie	1680 South Roosevelt Road Q 1/2	Portales	NM	\N	88130	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2045	METABASE	2045	Mack Lakin	\N	\N	Mack	Lakin	3169 Brannens Bridge Road	Sylvania	GA	\N	30467	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2046	METABASE	2046	Kelley Turner	\N	\N	Kelley	Turner	328 George Parks Highway	Fairbanks	AK	\N	99709	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2047	METABASE	2047	Cyrus Wisozk	\N	\N	Cyrus	Wisozk	6459 Benton Road	Lowville	NY	\N	13367	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2048	METABASE	2048	Jedediah Huels	\N	\N	Jedediah	Huels	4412-4472 74th Street Northwest	Carpio	ND	\N	58725	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2049	METABASE	2049	Blake Will	\N	\N	Blake	Will	812 Van Eaton Road	Xenia	OH	\N	45385	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_205	METABASE	205	Lowell Daniel	\N	\N	Lowell	Daniel	561 Little Sulphur Creek Road	Big Sandy	TN	\N	38221	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2050	METABASE	2050	Tavares Metz	\N	\N	Tavares	Metz	14701-14899 West Pay Drive Northwest	Depauw	IN	\N	47115	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2051	METABASE	2051	Lonny Mosciski	\N	\N	Lonny	Mosciski	18995 Quaker Road	Albany	MN	\N	56307	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2052	METABASE	2052	Henriette Gibson	\N	\N	Henriette	Gibson	1 Appaloosa Court	Centerville	WA	\N	98613	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2053	METABASE	2053	Rosella Bergnaum	\N	\N	Rosella	Bergnaum	3507 North Faust Lake Road	Rhinelander	WI	\N	54501	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2054	METABASE	2054	Hilma Wyman	\N	\N	Hilma	Wyman	2754 137th Street	Earlville	IA	\N	52041	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2055	METABASE	2055	Ila Johnston	\N	\N	Ila	Johnston	N11196 Fisher Road	Iola	WI	\N	54945	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2056	METABASE	2056	Earline Schmitt	\N	\N	Earline	Schmitt	2150 Lewis Ferrell Road	South Boston	VA	\N	24592	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2057	METABASE	2057	Nathan Kassulke	\N	\N	Nathan	Kassulke	5653 Northeast 46th Street	Owatonna	MN	\N	55060	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2058	METABASE	2058	Else Ankunding	\N	\N	Else	Ankunding	911 George Swamp Road	Pine Apple	AL	\N	36768	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2059	METABASE	2059	Richard Kub	\N	\N	Richard	Kub	70 Columbia Road 265	Magnolia	AR	\N	71753	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_206	METABASE	206	Marcelina Jast	\N	\N	Marcelina	Jast	5275 Road 203	Lewellen	NE	\N	69147	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2060	METABASE	2060	Darwin Abshire	\N	\N	Darwin	Abshire	1-7 County Road 462	Loraine	TX	\N	79532	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2061	METABASE	2061	Karelle Hodkiewicz	\N	\N	Karelle	Hodkiewicz	9798 County Road 471	Henderson	TX	\N	75654	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2062	METABASE	2062	Velva Zemlak	\N	\N	Velva	Zemlak	19602 7 Springs Dairy Road	Creston	WA	\N	99117	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2063	METABASE	2063	Winfield O'Kon	\N	\N	Winfield	O'Kon	6000-6398 Q R Az	Tucumcari	NM	\N	88401	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2064	METABASE	2064	Audra Hudson	\N	\N	Audra	Hudson	21000-23904 County Road 153	Branson	CO	\N	81027	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2065	METABASE	2065	Johnson Abshire	\N	\N	Johnson	Abshire	4325-4699 Watson Creek Road Southeast	Uhrichsville	OH	\N	44683	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2066	METABASE	2066	Ardella Ernser	\N	\N	Ardella	Ernser	1008-1164 County Highway FF	Butternut	WI	\N	54514	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2067	METABASE	2067	Dana Bartell	\N	\N	Dana	Bartell	330 Washington Street	Scotland	SD	\N	57059	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2068	METABASE	2068	Gerardo Mertz	\N	\N	Gerardo	Mertz	7330 Greenville Road	Hopkinsville	KY	\N	42240	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2069	METABASE	2069	Monte Langworth	\N	\N	Monte	Langworth	39296-39998 440th Street Northwest	Stephen	MN	\N	56757	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_207	METABASE	207	Earnest Huels	\N	\N	Earnest	Huels	100 Main Street	Sand Point	AK	\N	99661	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2070	METABASE	2070	Loren Roob	\N	\N	Loren	Roob	869 25th Avenue Southwest	Baudette	MN	\N	56623	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2071	METABASE	2071	Joana Stoltenberg	\N	\N	Joana	Stoltenberg	324 Spangler Road	Boswell	PA	\N	15531	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2072	METABASE	2072	Laisha Conn	\N	\N	Laisha	Conn	834 Cranford Hollow Road	Columbia	TN	\N	38401	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2073	METABASE	2073	Wilford King	\N	\N	Wilford	King	899 West Daniel Road	San Tan Valley	AZ	\N	85143	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2074	METABASE	2074	Marquise Crooks	\N	\N	Marquise	Crooks	123 Airport way	Lake Minchumina	AK	\N	99757	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2075	METABASE	2075	Royce Bins	\N	\N	Royce	Bins	2290-2398 35th Avenue Southeast	Robinson	ND	\N	58478	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2076	METABASE	2076	Emmanuelle Cruickshank	\N	\N	Emmanuelle	Cruickshank	512 South Marion Street	Cardington	OH	\N	43315	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2077	METABASE	2077	Kaya Yundt	\N	\N	Kaya	Yundt	1700-1794 East 2800N Road	Piper City	IL	\N	60959	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2078	METABASE	2078	Solon Spencer	\N	\N	Solon	Spencer	539 Beverly Pike	Grafton	WV	\N	26354	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2079	METABASE	2079	Amparo Fadel	\N	\N	Amparo	Fadel	76299 Wiley Canyon Road	Lexington	NE	\N	68850	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_208	METABASE	208	Alisha Deckow	\N	\N	Alisha	Deckow	4500-4758 East Euclid Street	Royalton	IL	\N	62983	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2080	METABASE	2080	Dorris Herzog	\N	\N	Dorris	Herzog	20518 Carty Road	Rushville	IL	\N	62681	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2081	METABASE	2081	Paxton Mayer	\N	\N	Paxton	Mayer	12175-12179 Oval Avenue	Winston	MO	\N	64689	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2082	METABASE	2082	Nels O'Connell	\N	\N	Nels	O'Connell	15551-16213 Thaxton Pens Road	Electra	TX	\N	76360	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2083	METABASE	2083	Katharina Glover	\N	\N	Katharina	Glover	748 Governors Road	Windsor	NC	\N	27983	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2084	METABASE	2084	Prudence Kihn	\N	\N	Prudence	Kihn	74868 330 Avenue	Imperial	NE	\N	69033	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2085	METABASE	2085	Daryl Emmerich	\N	\N	Daryl	Emmerich	32811 Garrett Avenue	Northfield	MN	\N	55057	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2086	METABASE	2086	Neal Crona	\N	\N	Neal	Crona	1706 Fisher Lane	Mosinee	WI	\N	54455	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2087	METABASE	2087	Dawson McGlynn	\N	\N	Dawson	McGlynn	181 Rock Island Road	Moscow	TX	\N	75960	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2088	METABASE	2088	Donny Terry	\N	\N	Donny	Terry	5001-5129 Deland Road	Flushing	MI	\N	48433	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2089	METABASE	2089	Sarah Dach	\N	\N	Sarah	Dach	67 George Parks Highway	Nenana	AK	\N	99760	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_209	METABASE	209	Kyleigh Beier	\N	\N	Kyleigh	Beier	3832 West Sandwich Road	Sandwich	IL	\N	60548	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2090	METABASE	2090	Jannie Balistreri	\N	\N	Jannie	Balistreri	102-270 Tempaloni Road	Ellenville	NY	\N	12428	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2091	METABASE	2091	Joseph Lynch	\N	\N	Joseph	Lynch	22971 Rye Creek Road	Kirksville	MO	\N	63501	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2092	METABASE	2092	Vicente O'Hara	\N	\N	Vicente	O'Hara	2412 Farm to Market 1679	Port Lavaca	TX	\N	77979	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2093	METABASE	2093	Royal Jast	\N	\N	Royal	Jast	13071 Winokur Road	Nahunta	GA	\N	31553	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2094	METABASE	2094	Brant Klein	\N	\N	Brant	Klein	40502 West 63rd Street South	Cheney	KS	\N	67025	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2095	METABASE	2095	Hillard Price	\N	\N	Hillard	Price	10094 Campfire Circle	Hayward	WI	\N	54843	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2096	METABASE	2096	Waino Feil	\N	\N	Waino	Feil	7039 U.S. Highway 62	Mountain Home	AR	\N	72653	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2097	METABASE	2097	Maeve Bednar	\N	\N	Maeve	Bednar	18635 Usta Road	Faith	SD	\N	57626	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2098	METABASE	2098	Desiree Schultz	\N	\N	Desiree	Schultz	447534 East 130 Road	Bluejacket	OK	\N	74333	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2099	METABASE	2099	Jayden Kris	\N	\N	Jayden	Kris	W3110 Wood Creek Avenue	Medford	WI	\N	54451	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_21	METABASE	21	Angela Botsford	\N	\N	Angela	Botsford	2002-2078 North J Road	Phillips	NE	\N	68865	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_210	METABASE	210	Earnestine Prohaska	\N	\N	Earnestine	Prohaska	22828-23086 County Road 25	Damon	TX	\N	77430	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2100	METABASE	2100	Lila Rosenbaum	\N	\N	Lila	Rosenbaum	4739-5421 Honea Egypt Road	Montgomery	TX	\N	77316	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2101	METABASE	2101	Jared Tromp	\N	\N	Jared	Tromp	1461-1493 West 10 Road	Aurora	NE	\N	68818	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2102	METABASE	2102	Garrison Will	\N	\N	Garrison	Will	3427 Joe Johnson Road	Catawba	NC	\N	28609	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2103	METABASE	2103	Brown Davis	\N	\N	Brown	Davis	901-999 Planter Road	Burlington	KS	\N	66839	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2104	METABASE	2104	Virgil Schowalter	\N	\N	Virgil	Schowalter	74 West Road 130	Dighton	KS	\N	67839	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2105	METABASE	2105	Art McDermott	\N	\N	Art	McDermott	650 Halfmoon Ridge	Hot Springs	NC	\N	28743	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2106	METABASE	2106	Tyree Reichel	\N	\N	Tyree	Reichel	2303-2349 County Road 526	Dimmitt	TX	\N	79027	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2107	METABASE	2107	Leanne Orn	\N	\N	Leanne	Orn	204 Fritz Run Road	Forest Hill	WV	\N	24935	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2108	METABASE	2108	Karson Corwin	\N	\N	Karson	Corwin	61345 724 Road	Tecumseh	NE	\N	68450	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2109	METABASE	2109	Gregorio Harvey	\N	\N	Gregorio	Harvey	26496 Noland Drive	Lebanon	MO	\N	65536	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_211	METABASE	211	Quinn Stokes	\N	\N	Quinn	Stokes	35700-35792 181st Street	Orient	SD	\N	57467	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2110	METABASE	2110	Idell Murray	\N	\N	Idell	Murray	2446 Cartersville Road	Rosebud	MT	\N	59347	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2111	METABASE	2111	Ryan O'Keefe	\N	\N	Ryan	O'Keefe	20890 Florida 64	Bradenton	FL	\N	34212	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2112	METABASE	2112	Alicia Schimmel	\N	\N	Alicia	Schimmel	565 Ellis Jordan Sawmill Road	Chatom	AL	\N	36518	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2113	METABASE	2113	Archibald Turner	\N	\N	Archibald	Turner	701 Cherokee Ridge Road	Pikeville	TN	\N	37367	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2114	METABASE	2114	Jazmyne Medhurst	\N	\N	Jazmyne	Medhurst	5399 West Henderson Court	Marion	IN	\N	46952	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2115	METABASE	2115	Layla Abernathy	\N	\N	Layla	Abernathy	5142 Fm 1386 Harwood	Luling	TX	\N	78648	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2116	METABASE	2116	Grace Smith	\N	\N	Grace	Smith	300 County Road 229	Toyah	TX	\N	79785	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2117	METABASE	2117	Joanie Goodwin	\N	\N	Joanie	Goodwin	4400-4410 290th Avenue	Menomonie	WI	\N	54751	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2118	METABASE	2118	Odell Stehr	\N	\N	Odell	Stehr	6680 240th Lane	Gordon	NE	\N	69343	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2119	METABASE	2119	Samantha Nolan	\N	\N	Samantha	Nolan	1861 Davison Road	East Tawas	MI	\N	48730	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_212	METABASE	212	Jacinthe Rowe	\N	\N	Jacinthe	Rowe	761 County Road 191	Westcliffe	CO	\N	81252	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2120	METABASE	2120	Bernardo Kshlerin	\N	\N	Bernardo	Kshlerin	21871 Hancock Street	Talkeetna	AK	\N	99676	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2121	METABASE	2121	Orie Sipes	\N	\N	Orie	Sipes	3199 Fox Hill Drive	Chambersburg	PA	\N	17202	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2122	METABASE	2122	Antwan Grant	\N	\N	Antwan	Grant	4000-5282 Mabien Lake Road	Franklin	AL	\N	36444	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2123	METABASE	2123	Nichole Funk	\N	\N	Nichole	Funk	13623-14999 County Road 127	Trinchera	CO	\N	81081	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2124	METABASE	2124	Jazlyn Murray	\N	\N	Jazlyn	Murray	1043-1057 Bethel Road	Troy	ID	\N	83871	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2125	METABASE	2125	Stefanie Barton	\N	\N	Stefanie	Barton	8417-9203 Walmsley Road	Macon	IL	\N	62544	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2126	METABASE	2126	Abraham Kerluke	\N	\N	Abraham	Kerluke	3675 West Evans Drive	Terre Haute	IN	\N	47802	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2127	METABASE	2127	Stephon Davis	\N	\N	Stephon	Davis	974 Highway 567	Clayton	LA	\N	71326	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2128	METABASE	2128	Gunner Graham	\N	\N	Gunner	Graham	4002 Yale Bridge Road	Rockton	IL	\N	61072	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2129	METABASE	2129	Rebecca Emard	\N	\N	Rebecca	Emard	26028 Southwest 142 Road	Beatrice	NE	\N	68310	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_213	METABASE	213	Connie Davis	\N	\N	Connie	Davis	2641 Tails Creek Church Road	Ellijay	GA	\N	30540	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2130	METABASE	2130	Abdullah Kerluke	\N	\N	Abdullah	Kerluke	2899 Oregon 126	Redmond	OR	\N	97756	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2131	METABASE	2131	Mina Dare	\N	\N	Mina	Dare	100 Echo Valley Road	Morganton	GA	\N	30560	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2132	METABASE	2132	Mellie Abernathy	\N	\N	Mellie	Abernathy	10000-10484 County Road 700 North	Buda	IL	\N	61314	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2133	METABASE	2133	Jaquan Treutel	\N	\N	Jaquan	Treutel	2200 County Road 2501	Alto	TX	\N	75925	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2134	METABASE	2134	Stephon Greenfelder	\N	\N	Stephon	Greenfelder	1815 River Road	Muscle Shoals	AL	\N	35661	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2135	METABASE	2135	Mavis Fisher	\N	\N	Mavis	Fisher	46756 229th Street	Colman	SD	\N	57017	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2136	METABASE	2136	Elbert Homenick	\N	\N	Elbert	Homenick	602-606 Catlett Lane	Magazine	AR	\N	72943	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2137	METABASE	2137	Donato Bednar	\N	\N	Donato	Bednar	1813-1899 560th Avenue	Ames	IA	\N	50010	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2138	METABASE	2138	Priscilla Moore	\N	\N	Priscilla	Moore	84000-87998 54th Street	Decatur	MI	\N	49045	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2139	METABASE	2139	Floyd Jacobson	\N	\N	Floyd	Jacobson	813 Rosetown Church Road	Corbin	KY	\N	40701	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_214	METABASE	214	Trace Daniel	\N	\N	Trace	Daniel	19443 560th Avenue	Austin	MN	\N	55912	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2140	METABASE	2140	Dalton Larson	\N	\N	Dalton	Larson	207 Ashley Road	Plattsburgh	NY	\N	12901	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2141	METABASE	2141	Wilhelm Wunsch	\N	\N	Wilhelm	Wunsch	108 15 Mile Road	Sonnette	MT	\N	59317	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2142	METABASE	2142	Austyn Doyle	\N	\N	Austyn	Doyle	7 Duke Court	Tinton Falls	NJ	\N	7724	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2143	METABASE	2143	Mark Klein	\N	\N	Mark	Klein	972 FM 2187 Road	Sealy	TX	\N	77474	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2144	METABASE	2144	Jenifer Aufderhar	\N	\N	Jenifer	Aufderhar	134-372 Armitage Road	Blakely Island	WA	\N	98222	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2145	METABASE	2145	Camryn Schmeler	\N	\N	Camryn	Schmeler	1001-1075 17th Street Northwest	Reeder	ND	\N	58649	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2146	METABASE	2146	Gino Johnston	\N	\N	Gino	Johnston	9241 County Road 10 Southeast	Chatfield	MN	\N	55923	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2147	METABASE	2147	Winston Mohr	\N	\N	Winston	Mohr	74212 Wyndotte Road	Kentwood	LA	\N	70444	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2148	METABASE	2148	Marjory Bogisich	\N	\N	Marjory	Bogisich	34604 East Hammond Road	Lone Jack	MO	\N	64070	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2149	METABASE	2149	Myrtle Johns	\N	\N	Myrtle	Johns	1000-1098 7th Road	Marysville	KS	\N	66508	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_215	METABASE	215	Benton McCullough	\N	\N	Benton	McCullough	322 Medlan Chapel Road	Graham	TX	\N	76450	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2150	METABASE	2150	Marcelina Kuhn	\N	\N	Marcelina	Kuhn	11001 South Jeffery Avenue	Chicago	IL	\N	60617	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2151	METABASE	2151	Jamel Parisian	\N	\N	Jamel	Parisian	4645-4653 North Black Rock Place	Tucson	AZ	\N	85750	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2152	METABASE	2152	Louisa Sauer	\N	\N	Louisa	Sauer	2125 Clous Road	Kingsley	MI	\N	49649	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2153	METABASE	2153	Leola Marks	\N	\N	Leola	Marks	729 Ferguson Landing Way	Eutawville	SC	\N	29048	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2154	METABASE	2154	Eloise King	\N	\N	Eloise	King	7005 County Road 221	Salida	CO	\N	81201	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2155	METABASE	2155	Natalie Rolfson	\N	\N	Natalie	Rolfson	588 Cranberry Creek Road	Cresco	PA	\N	18326	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2156	METABASE	2156	Citlalli Howe	\N	\N	Citlalli	Howe	366 South R Buffalo Creek Road	Sheridan	WY	\N	82801	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2157	METABASE	2157	Caitlyn Mraz	\N	\N	Caitlyn	Mraz	3383 180th Street	Ionia	IA	\N	50645	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2158	METABASE	2158	Lexie Lakin	\N	\N	Lexie	Lakin	1652 County Road 2000 North	Urbana	IL	\N	61802	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2159	METABASE	2159	Rickey Jerde	\N	\N	Rickey	Jerde	163 Holiday Lane	Newton Grove	NC	\N	28366	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_216	METABASE	216	Josh Kilback	\N	\N	Josh	Kilback	561 Sunlight Road	Cody	WY	\N	82414	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2160	METABASE	2160	Haven Hoeger	\N	\N	Haven	Hoeger	15454-15806 27 Road	Fowler	KS	\N	67844	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2161	METABASE	2161	Brody Gottlieb	\N	\N	Brody	Gottlieb	17938-17944 River Road	Wasta	SD	\N	57791	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2162	METABASE	2162	Eldon Crona	\N	\N	Eldon	Crona	719 Lost Creek Road	Lobelville	TN	\N	37097	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2163	METABASE	2163	Alexys Jewess	\N	\N	Alexys	Jewess	15093-15749 Nixon Road	Nashville	IL	\N	62263	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2164	METABASE	2164	Cordia Farrell	\N	\N	Cordia	Farrell	3001 Howard Road	Raleigh	NC	\N	27613	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2165	METABASE	2165	Jordon Runolfsson	\N	\N	Jordon	Runolfsson	3078-3088 Mossy Lake Road	Bennington	OK	\N	74723	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2166	METABASE	2166	Maeve Goldner	\N	\N	Maeve	Goldner	63201-63227 Franciskovich Road	Mason	WI	\N	54856	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2167	METABASE	2167	Gideon Conn	\N	\N	Gideon	Conn	6626-7298 Long Grove Road	Elizabethtown	KY	\N	42701	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2168	METABASE	2168	Meta Schimmel	\N	\N	Meta	Schimmel	11449 North 67th Avenue East	Kellogg	IA	\N	50135	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2169	METABASE	2169	Jeffry Schowalter	\N	\N	Jeffry	Schowalter	26102 Golden Gate Canyon Road	Golden	CO	\N	80403	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_217	METABASE	217	Annabelle Schmeler	\N	\N	Annabelle	Schmeler	1668-1698 156th Street	Slayton	MN	\N	56172	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2170	METABASE	2170	Misty Botsford	\N	\N	Misty	Botsford	22771 Sagebrush Lane	Colorado Springs	CO	\N	80928	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2171	METABASE	2171	Chadd Larson	\N	\N	Chadd	Larson	262-278 Wendover Road	Guernsey	WY	\N	82214	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2172	METABASE	2172	Brooke Rempel	\N	\N	Brooke	Rempel	8453-8499 51st Street Southeast	Montpelier	ND	\N	58472	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2173	METABASE	2173	Wilton Senger	\N	\N	Wilton	Senger	22416 East Farm to Market 1462	Damon	TX	\N	77430	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2174	METABASE	2174	Adele Parker	\N	\N	Adele	Parker	193-203 Zelma Lane	Florence	MS	\N	39073	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2175	METABASE	2175	Bernhard Bailey	\N	\N	Bernhard	Bailey	391 Frizzell Hollow Road	Gainesboro	TN	\N	38562	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2176	METABASE	2176	Johathan Schaden	\N	\N	Johathan	Schaden	38619 Road 740	Curtis	NE	\N	69025	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2177	METABASE	2177	Arch Ryan	\N	\N	Arch	Ryan	21344 Krupala Road	Harlingen	TX	\N	78550	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2178	METABASE	2178	Meggie Blick	\N	\N	Meggie	Blick	4201 Old Lehman Road	Kingsbury	TX	\N	78638	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2179	METABASE	2179	Mohammad Weber	\N	\N	Mohammad	Weber	1403 Chesnee Highway	Gaffney	SC	\N	29341	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_218	METABASE	218	Stan Jacobson	\N	\N	Stan	Jacobson	3620 South Magrudder Road	St. Louis	MI	\N	48880	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2180	METABASE	2180	Eleanora Kunze	\N	\N	Eleanora	Kunze	4441 Buttercup Drive	Redgranite	WI	\N	54970	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2181	METABASE	2181	Jettie Rau	\N	\N	Jettie	Rau	3904 Summer Brook Drive	Apex	NC	\N	27539	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2182	METABASE	2182	Alva Brakus	\N	\N	Alva	Brakus	1311 Heald Road	Gillette	WY	\N	82731	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2183	METABASE	2183	Freida O'Hara	\N	\N	Freida	O'Hara	2285 Hunt Road	Cottage Grove	TN	\N	38224	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2184	METABASE	2184	Jensen Champlin	\N	\N	Jensen	Champlin	4182 Upper Anglins Creek	Mount Nebo	WV	\N	26679	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2185	METABASE	2185	Arely Lubowitz	\N	\N	Arely	Lubowitz	1800-1952 Lake Street	Shoreham	VT	\N	5770	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2186	METABASE	2186	Rosemary Daniel	\N	\N	Rosemary	Daniel	106 Creekside Lane	Oriental	NC	\N	28571	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2187	METABASE	2187	Chris Satterfield	\N	\N	Chris	Satterfield	295-299 Big Valley Road	Outlook	MT	\N	59252	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2188	METABASE	2188	Heber Gulgowski	\N	\N	Heber	Gulgowski	3475 Lake Ridge Drive	Murrysville	PA	\N	15668	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2189	METABASE	2189	Beaulah Konopelski	\N	\N	Beaulah	Konopelski	1 Spring Brook Lane	Glen Gardner	NJ	\N	8826	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_219	METABASE	219	Isaias Spencer	\N	\N	Isaias	Spencer	191 Snake Meadow Road	Killingly	CT	\N	6239	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2190	METABASE	2190	Yesenia Green	\N	\N	Yesenia	Green	3060 West Overland Trail	Abilene	TX	\N	79603	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2191	METABASE	2191	Demetrius Nikolaus	\N	\N	Demetrius	Nikolaus	166 Bessie	Lumberton	NC	\N	28358	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2192	METABASE	2192	Kirstin Bosco	\N	\N	Kirstin	Bosco	1517-4093 Bly Mountain Cutoff Road	Bonanza	OR	\N	97623	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2193	METABASE	2193	Kathryn Lubowitz	\N	\N	Kathryn	Lubowitz	1-661 Poverty Lane	Cortland	NY	\N	13045	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2194	METABASE	2194	Walter Mueller	\N	\N	Walter	Mueller	48824 250th Street	Gaylord	MN	\N	55334	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2195	METABASE	2195	Tremaine Jerde	\N	\N	Tremaine	Jerde	4500 Gold Ridge Road	Saint Maries	ID	\N	83861	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2196	METABASE	2196	Barrett Schuppe	\N	\N	Barrett	Schuppe	801-881 30th Road	Clifton	KS	\N	66937	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2197	METABASE	2197	Aletha Huels	\N	\N	Aletha	Huels	28765 U.S. 69	Davis City	IA	\N	50065	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2198	METABASE	2198	Amiya Veum	\N	\N	Amiya	Veum	1054-1076 190th Street	Anita	IA	\N	50020	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2199	METABASE	2199	Dante Harvey	\N	\N	Dante	Harvey	136 Centennial Drive	Mediapolis	IA	\N	52637	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_22	METABASE	22	Jeromy Smith	\N	\N	Jeromy	Smith	1165 Rimrock Drive	Napa	CA	\N	94558	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_220	METABASE	220	Bette Lang	\N	\N	Bette	Lang	13627 Rabbit Creek Place	Reva	SD	\N	57651	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2200	METABASE	2200	Richmond Adams	\N	\N	Richmond	Adams	3448-3460 Trant Avenue	Norfolk	VA	\N	23502	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2201	METABASE	2201	Cleveland Welch	\N	\N	Cleveland	Welch	17162 Tennessee 8	McMinnville	TN	\N	37110	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2202	METABASE	2202	Emiliano Block	\N	\N	Emiliano	Block	113 Logan Lane	West Glacier	MT	\N	59936	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2203	METABASE	2203	Micaela Kerluke	\N	\N	Micaela	Kerluke	19149-19199 458th Avenue	Castlewood	SD	\N	57223	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2204	METABASE	2204	Lilliana Larkin	\N	\N	Lilliana	Larkin	6456-7908 Camp Creek Road	Savanna	IL	\N	61074	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2205	METABASE	2205	Florence Raynor	\N	\N	Florence	Raynor	3037-3167 104th Street Northeast	Remer	MN	\N	56672	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2206	METABASE	2206	Lucienne Crist	\N	\N	Lucienne	Crist	224 George Parks Highway	Denali National Park and Preserve	AK	\N	99755	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2207	METABASE	2207	Janelle Wolf	\N	\N	Janelle	Wolf	87743 450th Avenue	Bassett	NE	\N	68714	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2208	METABASE	2208	Jaunita Wehner	\N	\N	Jaunita	Wehner	244 Ashley Road	Hamburg	AR	\N	71646	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2209	METABASE	2209	Luther Goyette	\N	\N	Luther	Goyette	939 80 Road	Ponca City	OK	\N	74604	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_221	METABASE	221	Seth Goldner	\N	\N	Seth	Goldner	4960 U.S. 6	Iowa City	IA	\N	52240	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2210	METABASE	2210	Abbey Satterfield	\N	\N	Abbey	Satterfield	2141 Donald Wapato Road	Wapato	WA	\N	98951	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2211	METABASE	2211	Theodore Dach	\N	\N	Theodore	Dach	88536 496th Avenue	O'Neill	NE	\N	68763	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2212	METABASE	2212	Braden Rempel	\N	\N	Braden	Rempel	67125 County Road 83	Grover	CO	\N	80729	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2213	METABASE	2213	Cyrus Dach	\N	\N	Cyrus	Dach	9546 County Line Road	Hill City	ID	\N	83337	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2214	METABASE	2214	Kavon Dach	\N	\N	Kavon	Dach	2508 County Road 90	Red Bay	AL	\N	35582	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2215	METABASE	2215	Georgiana Willms	\N	\N	Georgiana	Willms	444 York Road	Sturgis	MS	\N	39769	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2216	METABASE	2216	Zena Schowalter	\N	\N	Zena	Schowalter	8410 Ninepin Branch Road	Berlin	MD	\N	21811	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2217	METABASE	2217	Green Schimmel	\N	\N	Green	Schimmel	5317-5323 63rd Street Northeast	Leeds	ND	\N	58346	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2218	METABASE	2218	Nicklaus Langosh	\N	\N	Nicklaus	Langosh	504-766 Burrell Road	Pickens	MS	\N	39146	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2219	METABASE	2219	Kirsten Kihn	\N	\N	Kirsten	Kihn	572-798 Louisiana 871	Winnsboro	LA	\N	71295	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_222	METABASE	222	Theodora Dibbert	\N	\N	Theodora	Dibbert	17229 1st Street	Chandler	MN	\N	56122	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2220	METABASE	2220	Cedrick Kessler	\N	\N	Cedrick	Kessler	5396-5492 Valley Road	Meridian	MS	\N	39307	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2221	METABASE	2221	Percy Kassulke	\N	\N	Percy	Kassulke	1152 East 128th Street	Grant	MI	\N	49327	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2222	METABASE	2222	Fabian Heller	\N	\N	Fabian	Heller	100-312 Hunter Cove Road	Allons	TN	\N	38541	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2223	METABASE	2223	Cassidy Cronin	\N	\N	Cassidy	Cronin	7701-7759 Meadow Road	West Bend	WI	\N	53090	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2224	METABASE	2224	Jaren Leannon	\N	\N	Jaren	Leannon	611 Foster Field Drive	Victoria	TX	\N	77904	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2225	METABASE	2225	Nils Gaylord	\N	\N	Nils	Gaylord	11020 Perkins Hill Road	Chestertown	MD	\N	21620	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2226	METABASE	2226	Danika Langworth	\N	\N	Danika	Langworth	155 Sunrise Drive	Woodbine	GA	\N	31569	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2227	METABASE	2227	Nelda Rau	\N	\N	Nelda	Rau	2200-2998 Harfield Court Southeast	Bethlehem	GA	\N	30620	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2228	METABASE	2228	Alfred Kihn	\N	\N	Alfred	Kihn	19400-19484 288th Avenue	Pierre	SD	\N	57501	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2229	METABASE	2229	Letha Koss	\N	\N	Letha	Koss	443 Fairview Heights Drive	Toronto	OH	\N	43964	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_223	METABASE	223	Frederik Bosco	\N	\N	Frederik	Bosco	15 North Slope Haul Road	Fairbanks	AK	\N	99701	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2230	METABASE	2230	Cristian Pouros	\N	\N	Cristian	Pouros	14256 Dahlstein Road	Finlayson	MN	\N	55735	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2231	METABASE	2231	Jacey Hilpert	\N	\N	Jacey	Hilpert	2065 Huajuco Lane Lasalle Co	Cotulla	TX	\N	78014	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2232	METABASE	2232	Mohammad Swift	\N	\N	Mohammad	Swift	6181 Sugarloaf Road	Boulder	CO	\N	80302	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2233	METABASE	2233	Haven O'Reilly	\N	\N	Haven	O'Reilly	1798 Montana 24	Circle	MT	\N	59215	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2234	METABASE	2234	Germaine O'Reilly	\N	\N	Germaine	O'Reilly	5317 South Co Road 3f	Fort Collins	CO	\N	80528	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2235	METABASE	2235	Mina Reynolds	\N	\N	Mina	Reynolds	8 Melody Lane	Wayland	MA	\N	1778	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2236	METABASE	2236	Emanuel Schmeler	\N	\N	Emanuel	Schmeler	23626 North Perry Road	Colbert	WA	\N	99005	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2237	METABASE	2237	Shawn Fadel	\N	\N	Shawn	Fadel	79369 Drive 439	Broken Bow	NE	\N	68822	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2238	METABASE	2238	Arnaldo Rau	\N	\N	Arnaldo	Rau	5346 Ramseur Julian Road	Liberty	NC	\N	27298	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2239	METABASE	2239	Ethan Hudson	\N	\N	Ethan	Hudson	34601-34605 112th Street	Eureka	SD	\N	57437	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_224	METABASE	224	Pamela Murray	\N	\N	Pamela	Murray	17403 Kaylor Road	Danville	OH	\N	43014	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2240	METABASE	2240	Samir Hayes	\N	\N	Samir	Hayes	17400 Oakdale Road	Athens	AL	\N	35613	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2241	METABASE	2241	Kamryn Eichmann	\N	\N	Kamryn	Eichmann	800 Tok Highway	Gakona	AK	\N	99586	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2242	METABASE	2242	Oceane McCullough	\N	\N	Oceane	McCullough	308 Cushing Road	Friendship	ME	\N	4547	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2243	METABASE	2243	Durward Hirthe	\N	\N	Durward	Hirthe	16500-16548 Bauman Circle	Omaha	NE	\N	68116	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2244	METABASE	2244	Maxie Rogahn	\N	\N	Maxie	Rogahn	101-151 Main Street	Big Stone City	SD	\N	57216	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2245	METABASE	2245	Rudolph Ankunding	\N	\N	Rudolph	Ankunding	4777 West 5000 Road South	Kankakee	IL	\N	60901	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2246	METABASE	2246	Paula Reinger	\N	\N	Paula	Reinger	13151 County Road 95	Elberta	AL	\N	36530	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2247	METABASE	2247	Ettie Gislason	\N	\N	Ettie	Gislason	300 Hillside	Pleasanton	TX	\N	78064	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2248	METABASE	2248	Elva Bailey	\N	\N	Elva	Bailey	22656 South Dakota 13	Flandreau	SD	\N	57028	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2249	METABASE	2249	Jayson Flatley	\N	\N	Jayson	Flatley	3201-4915 North Indian Bluff Road	Spokane	WA	\N	99224	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_225	METABASE	225	Gunnar Doyle	\N	\N	Gunnar	Doyle	3507-3745 Marlette Road	Croswell	MI	\N	48422	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2250	METABASE	2250	Loyce Lemke	\N	\N	Loyce	Lemke	27485 North Sh108	Stephenville	TX	\N	76401	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2251	METABASE	2251	Reva Hermann	\N	\N	Reva	Hermann	17030 Chena Hot Springs Road	Fairbanks	AK	\N	99712	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2252	METABASE	2252	Adelia Metz	\N	\N	Adelia	Metz	1747 Washburn Road	Washburn	ME	\N	4786	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2253	METABASE	2253	Jarvis Rosenbaum	\N	\N	Jarvis	Rosenbaum	1795 170th Street	Wellman	IA	\N	52356	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2254	METABASE	2254	Kariane Hintz	\N	\N	Kariane	Hintz	42560 Harpers Church Road	Bellville	TX	\N	77418	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2255	METABASE	2255	Camron Quigley	\N	\N	Camron	Quigley	6921 Three Mile Road	Flatonia	TX	\N	78941	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2256	METABASE	2256	Hayley Heaney	\N	\N	Hayley	Heaney	9 Kolob Terrace Road	Virgin	UT	\N	84779	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2257	METABASE	2257	Jerome Cremin	\N	\N	Jerome	Cremin	2229 North Cocomo Loop	Mannford	OK	\N	74044	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2258	METABASE	2258	Emmanuel Emmerich	\N	\N	Emmanuel	Emmerich	185-1883 Sable Mountain Road	Canaan	VT	\N	5903	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2259	METABASE	2259	Dedrick Steuber	\N	\N	Dedrick	Steuber	15729 Arkansas 114	Gould	AR	\N	71643	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_226	METABASE	226	Breana Thiel	\N	\N	Breana	Thiel	23248 County Highway 8	Elbow Lake	MN	\N	56531	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2260	METABASE	2260	Reed Dach	\N	\N	Reed	Dach	2139 Schenck Road	Wells Tannery	PA	\N	16691	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2261	METABASE	2261	Reid Waelchi	\N	\N	Reid	Waelchi	575 Lee Road 40	Opelika	AL	\N	36804	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2262	METABASE	2262	Yasmeen Sauer	\N	\N	Yasmeen	Sauer	770 County Road 462	De Leon	TX	\N	76444	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2263	METABASE	2263	Clark Schinner	\N	\N	Clark	Schinner	9794-10792 County Road 1	Genoa	CO	\N	80818	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2264	METABASE	2264	Darrell Fritsch	\N	\N	Darrell	Fritsch	32523-32943 County Road 193.5	Kim	CO	\N	81049	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2265	METABASE	2265	Amelie Kunde	\N	\N	Amelie	Kunde	26279 304th Avenue	Winner	SD	\N	57580	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2266	METABASE	2266	Constance Stokes	\N	\N	Constance	Stokes	2748 East 800 South	Warren	IN	\N	46792	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2267	METABASE	2267	Melisa Hilpert	\N	\N	Melisa	Hilpert	1550 Poole Road	Salisbury	NC	\N	28146	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2268	METABASE	2268	Dell Schimmel	\N	\N	Dell	Schimmel	334-336 Lake Osiris Road	Walden	NY	\N	12586	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2269	METABASE	2269	Alexzander McKenzie	\N	\N	Alexzander	McKenzie	46865 281st Street	Lennox	SD	\N	57039	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_227	METABASE	227	Merl Yundt	\N	\N	Merl	Yundt	100 Sunshine Lane	Livingston	TX	\N	77351	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2270	METABASE	2270	Lola Ritchie	\N	\N	Lola	Ritchie	1444 Tahoe Avenue	Sumner	IA	\N	50674	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2271	METABASE	2271	Deontae Hansen	\N	\N	Deontae	Hansen	29846 County Road 305	Campbell	MO	\N	63933	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2272	METABASE	2272	Anika Beatty	\N	\N	Anika	Beatty	19047 Highway 140 East	Dairy	OR	\N	97625	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2273	METABASE	2273	Marguerite Pouros	\N	\N	Marguerite	Pouros	9161 North Concho Drive	Kingman	AZ	\N	86401	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2274	METABASE	2274	Dorcas Dicki	\N	\N	Dorcas	Dicki	256 Clark's Hill Road	Stetson	ME	\N	4488	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2275	METABASE	2275	Sabina Green	\N	\N	Sabina	Green	2627 Telegraph Gulch	Butte	MT	\N	59701	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2276	METABASE	2276	Patricia Barrows	\N	\N	Patricia	Barrows	1588 Tummins Road	McEwen	TN	\N	37101	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2277	METABASE	2277	Rachel Gorczany	\N	\N	Rachel	Gorczany	145-175 Jake Brown Road	Old Bridge Township	NJ	\N	8857	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2278	METABASE	2278	Hertha Price	\N	\N	Hertha	Price	6001 135th Avenue Southwest	Minot	ND	\N	58701	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2279	METABASE	2279	Shaylee Lowe	\N	\N	Shaylee	Lowe	402 Molly Court	Runnells	IA	\N	50237	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_228	METABASE	228	Estefania Leuschke	\N	\N	Estefania	Leuschke	17791 Pee Dee Road North	Galivants Ferry	SC	\N	29544	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2280	METABASE	2280	Reva Carter	\N	\N	Reva	Carter	4410 South 3rd Street	Velpen	IN	\N	47590	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2281	METABASE	2281	Fredrick Buckridge	\N	\N	Fredrick	Buckridge	12512 Greenwell Spring Pt Hudso Road	Zachary	LA	\N	70791	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2282	METABASE	2282	Arlene Dietrich	\N	\N	Arlene	Dietrich	1446 Centre Line Road	Warriors Mark	PA	\N	16877	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2283	METABASE	2283	Alverta White	\N	\N	Alverta	White	4475 Lodoga Stonyford Road	Stonyford	CA	\N	95979	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2284	METABASE	2284	Deshaun Leffler	\N	\N	Deshaun	Leffler	261 Old Bath Road	Brunswick	ME	\N	4011	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2285	METABASE	2285	Lempi Gerhold	\N	\N	Lempi	Gerhold	1825 Kafir Road	Burlington	KS	\N	66839	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2286	METABASE	2286	Okey Lueilwitz	\N	\N	Okey	Lueilwitz	901 South Limit Avenue	Sedalia	MO	\N	65301	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2287	METABASE	2287	Cyril Breitenberg	\N	\N	Cyril	Breitenberg	118 Belah Cemetery Road	Trout	LA	\N	71371	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2288	METABASE	2288	Greyson Boyle	\N	\N	Greyson	Boyle	5794 South R 247	Hillsboro	OH	\N	45133	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2289	METABASE	2289	Alanis Kovacek	\N	\N	Alanis	Kovacek	2446 Glenn Highway	Glennallen	AK	\N	99588	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_229	METABASE	229	Jewell Walker	\N	\N	Jewell	Walker	1 Old Garrard Road	Berea	KY	\N	40403	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2290	METABASE	2290	Kathlyn Ruecker	\N	\N	Kathlyn	Ruecker	2200-2298 Shetland Road	Waverly	KS	\N	66871	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2291	METABASE	2291	Kacey Glover	\N	\N	Kacey	Glover	8332 Bell Avenue	Ivor	VA	\N	23866	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2292	METABASE	2292	Carmella Rogahn	\N	\N	Carmella	Rogahn	111 Haggerty Road	Wantage	NJ	\N	7461	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2293	METABASE	2293	Chelsey Marvin	\N	\N	Chelsey	Marvin	5700 Stokes Road	Lizella	GA	\N	31052	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2294	METABASE	2294	Cordie Kutch	\N	\N	Cordie	Kutch	19028-19030 Old Guy Road	Damon	TX	\N	77430	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2295	METABASE	2295	Gavin Hettinger	\N	\N	Gavin	Hettinger	28757 Bear Drive	Meadville	MO	\N	64659	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2296	METABASE	2296	Jamar Heathcote	\N	\N	Jamar	Heathcote	21000-22464 County Road 550 North	West Union	IL	\N	62477	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2297	METABASE	2297	Immanuel Roberts	\N	\N	Immanuel	Roberts	1619-1631 Park Mills Road	Adamstown	MD	\N	21710	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2298	METABASE	2298	Antoinette Mertz	\N	\N	Antoinette	Mertz	8080 Forge Road	Turbeville	SC	\N	29162	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2299	METABASE	2299	Taya Daniel	\N	\N	Taya	Daniel	650-698 County Road 523	Happy	TX	\N	79042	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_23	METABASE	23	Candida Kiehn	\N	\N	Candida	Kiehn	2003 Brigham Landing Road	Girard	GA	\N	30426	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_230	METABASE	230	Stacy Adams	\N	\N	Stacy	Adams	N10285 490th Street	Wheeler	WI	\N	54772	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2300	METABASE	2300	Brody Kassulke	\N	\N	Brody	Kassulke	1183 Center Ridge Road	Luverne	AL	\N	36049	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2301	METABASE	2301	Anais Zieme	\N	\N	Anais	Zieme	3001-3941 Wieland Road	Defiance	OH	\N	43512	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2302	METABASE	2302	Leann Jast	\N	\N	Leann	Jast	632 Wakefield Road	Cameron	LA	\N	70631	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2303	METABASE	2303	Mohammed Mayert	\N	\N	Mohammed	Mayert	2080 Road 136	Cheyenne	WY	\N	82009	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2304	METABASE	2304	Janis Renner	\N	\N	Janis	Renner	12771 Al Highway 25	Greensboro	AL	\N	36744	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2305	METABASE	2305	Rodger Bogan	\N	\N	Rodger	Bogan	2000 Ranch Road 573	Comanche	TX	\N	76442	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2306	METABASE	2306	Makenna Abshire	\N	\N	Makenna	Abshire	22087 Columbia Road	Eddyville	IA	\N	52553	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2307	METABASE	2307	Bernardo Heathcote	\N	\N	Bernardo	Heathcote	1329-2599 Alum Cliff Road	Chillicothe	OH	\N	45601	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2308	METABASE	2308	Edmund Altenwerth	\N	\N	Edmund	Altenwerth	1482 Ridge Road	Marshfield	MO	\N	65706	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2309	METABASE	2309	Andreanne Mayert	\N	\N	Andreanne	Mayert	648 Parkside Drive	Limestone	NY	\N	14753	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_231	METABASE	231	Foster Marks	\N	\N	Foster	Marks	35498 Arizona 77	Tucson	AZ	\N	85739	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2310	METABASE	2310	Kristian Kuhic	\N	\N	Kristian	Kuhic	2799 Tipperary Road	Arvada	WY	\N	82831	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2311	METABASE	2311	Karelle Koelpin	\N	\N	Karelle	Koelpin	5746-5768 68th Street Southwest	Carson	ND	\N	58529	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2312	METABASE	2312	Randi Bernier	\N	\N	Randi	Bernier	220 Bluetick Ridge Lane	Tecumseh	MO	\N	65760	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2313	METABASE	2313	Stella Kshlerin	\N	\N	Stella	Kshlerin	1183 State Highway U	Bland	MO	\N	65014	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2314	METABASE	2314	Easton Koch	\N	\N	Easton	Koch	151 4800th Street	Savonburg	KS	\N	66772	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2315	METABASE	2315	Lysanne Brekke	\N	\N	Lysanne	Brekke	859 County Road 572	Poplar Bluff	MO	\N	63901	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2316	METABASE	2316	Hans Kozey	\N	\N	Hans	Kozey	4225-4433 Smithfield-Adena Road	Adena	OH	\N	43901	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2317	METABASE	2317	Anderson Morissette	\N	\N	Anderson	Morissette	19057 U.S. Highway 62	Garfield	AR	\N	72732	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2318	METABASE	2318	Jennyfer Gislason	\N	\N	Jennyfer	Gislason	1101-1185 Illinois 26	Dixon	IL	\N	61021	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2319	METABASE	2319	Teresa Cartwright	\N	\N	Teresa	Cartwright	6949 Crockett Highway	Blissfield	MI	\N	49228	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_232	METABASE	232	Magnolia Hansen	\N	\N	Magnolia	Hansen	19333 Texas 16	Von Ormy	TX	\N	78073	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2320	METABASE	2320	Emerald Robel	\N	\N	Emerald	Robel	281 Cuchilla Road	Taos	NM	\N	87571	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2321	METABASE	2321	Schuyler Baumbach	\N	\N	Schuyler	Baumbach	507 Lamberton Road	Mooers Forks	NY	\N	12959	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2322	METABASE	2322	Jerod Altenwerth	\N	\N	Jerod	Altenwerth	936 U.S. Highway 64	Webbers Falls	OK	\N	74470	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2323	METABASE	2323	Coralie Koss	\N	\N	Coralie	Koss	4142 North Parks Highway	Talkeetna	AK	\N	99676	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2324	METABASE	2324	Lysanne Ernser	\N	\N	Lysanne	Ernser	219 Northwest 13th Avenue	Miami	FL	\N	33125	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2325	METABASE	2325	Jayne Breitenberg	\N	\N	Jayne	Breitenberg	1221 Richardson Highway	Delta Junction	AK	\N	99737	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2326	METABASE	2326	Cleo Beer	\N	\N	Cleo	Beer	1068 County Road 305	Seminole	TX	\N	79360	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2327	METABASE	2327	Torrance Kuhic	\N	\N	Torrance	Kuhic	6000-6244 Hucks Road	Conway	SC	\N	29526	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2328	METABASE	2328	Kirk Harber	\N	\N	Kirk	Harber	11100 Heather Lane	Hornbrook	CA	\N	96044	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2329	METABASE	2329	Ciara Dooley	\N	\N	Ciara	Dooley	435 Toinette Road	Wagarville	AL	\N	36585	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_233	METABASE	233	Ulices Feil	\N	\N	Ulices	Feil	38 Gene Roberts Drive	Shubuta	MS	\N	39360	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2330	METABASE	2330	Ardith Wisozk	\N	\N	Ardith	Wisozk	54253 Oregon 86	Halfway	OR	\N	97834	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2331	METABASE	2331	John Little	\N	\N	John	Little	6123 Pymatuning Lake Road	Andover	OH	\N	44003	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2332	METABASE	2332	Una Williamson	\N	\N	Una	Williamson	100-198 Lazy Pine Road	Darby	MT	\N	59829	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2333	METABASE	2333	Emmie Beatty	\N	\N	Emmie	Beatty	3887 Faxon Avenue	Memphis	TN	\N	38122	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2334	METABASE	2334	Hadley Kuphal	\N	\N	Hadley	Kuphal	2351 43 Road	Linwood	NE	\N	68036	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2335	METABASE	2335	Iliana Padberg	\N	\N	Iliana	Padberg	30000-30236 210th Avenue	Greenbush	MN	\N	56726	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2336	METABASE	2336	Richard Harris	\N	\N	Richard	Harris	43701-43745 210th Street	De Smet	SD	\N	57231	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2337	METABASE	2337	Keira Gorczany	\N	\N	Keira	Gorczany	3091 White Rocks Road	Big Sandy	MT	\N	59520	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2338	METABASE	2338	Elsa Klocko	\N	\N	Elsa	Klocko	804-880 Willow Glen Drive	El Cajon	CA	\N	92019	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2339	METABASE	2339	Bernice Witting	\N	\N	Bernice	Witting	9417 Stuart Road	San Antonio	TX	\N	78263	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_234	METABASE	234	Bertrand Streich	\N	\N	Bertrand	Streich	37555 South Kaliak	Talkeetna	AK	\N	99676	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2340	METABASE	2340	Elmo Schimmel	\N	\N	Elmo	Schimmel	1990 Clover Avenue	Creston	IA	\N	50801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2341	METABASE	2341	Lauretta Dickinson	\N	\N	Lauretta	Dickinson	27600-27698 394th Avenue	Armour	SD	\N	57313	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2342	METABASE	2342	Jairo Simonis	\N	\N	Jairo	Simonis	30001-30019 Quail Cove	Okolona	MS	\N	38860	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2343	METABASE	2343	Yasmin Stark	\N	\N	Yasmin	Stark	290 Ella Ford Road	Haynesville	LA	\N	71038	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2344	METABASE	2344	Emmet Eichmann	\N	\N	Emmet	Eichmann	399 Two Rivers Drive	Troy	VA	\N	22974	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2345	METABASE	2345	Marlene Brakus	\N	\N	Marlene	Brakus	467-605 Montana 200	Circle	MT	\N	59215	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2346	METABASE	2346	Zane Paucek	\N	\N	Zane	Paucek	2697 Kenyon Road	Owatonna	MN	\N	55060	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2347	METABASE	2347	Margarita Anderson	\N	\N	Margarita	Anderson	42662 Thurso Bay	Clayton	NY	\N	13624	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2348	METABASE	2348	Rollin West	\N	\N	Rollin	West	400-496 County Road 158	Carpenter	WY	\N	82054	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2349	METABASE	2349	Laura Batz	\N	\N	Laura	Batz	14470 East Gate Road	Green City	MO	\N	63545	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_235	METABASE	235	Jerrod King	\N	\N	Jerrod	King	14850 Smart-Cole Road	Ostrander	OH	\N	43061	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2350	METABASE	2350	Lucinda Welch	\N	\N	Lucinda	Welch	198-422 Castle Hill Road	Sherburne	NY	\N	13460	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2351	METABASE	2351	Maximillian Mohr	\N	\N	Maximillian	Mohr	219 Timms Road	Donalds	SC	\N	29638	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2352	METABASE	2352	Graham Kessler	\N	\N	Graham	Kessler	W1722 County Road B	Eden	WI	\N	53019	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2353	METABASE	2353	Ryann Parker	\N	\N	Ryann	Parker	8290 County Road 134	Fulton	MO	\N	65251	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2354	METABASE	2354	Jaquelin Botsford	\N	\N	Jaquelin	Botsford	2400 Rock Church Highway	Tolar	TX	\N	76476	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2355	METABASE	2355	Modesta Kessler	\N	\N	Modesta	Kessler	1585-1615 Northwest 1050 Road	Urich	MO	\N	64788	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2356	METABASE	2356	Alana Roberts	\N	\N	Alana	Roberts	83820 Gaston Road	Thedford	NE	\N	69166	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2357	METABASE	2357	Emiliano Durgan	\N	\N	Emiliano	Durgan	13469-14379 Utah 102	Tremonton	UT	\N	84337	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2358	METABASE	2358	Johnathan Kris	\N	\N	Johnathan	Kris	1370 Montana 59	Miles City	MT	\N	59301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2359	METABASE	2359	Chris Walter	\N	\N	Chris	Walter	2699 East 5000 South	Victor	ID	\N	83455	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_236	METABASE	236	Doris Spencer	\N	\N	Doris	Spencer	805 River Road	Piedmont	SC	\N	29673	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2360	METABASE	2360	Petra Durgan	\N	\N	Petra	Durgan	3883 Texas 173	Hondo	TX	\N	78861	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2361	METABASE	2361	Citlalli Brown	\N	\N	Citlalli	Brown	932 County Road 230	Meadow	TX	\N	79345	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2362	METABASE	2362	Carson Rogahn	\N	\N	Carson	Rogahn	7035 Louisiana 70	Belle Rose	LA	\N	70341	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2363	METABASE	2363	Alison Klocko	\N	\N	Alison	Klocko	295 Mule Farm Road	Spartanburg	SC	\N	29303	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2364	METABASE	2364	Margarete Tillman	\N	\N	Margarete	Tillman	7390F County Road 359	Pagosa Springs	CO	\N	81147	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2365	METABASE	2365	Syble Langworth	\N	\N	Syble	Langworth	814 Rolling Hills Road	Ridgeway	SC	\N	29130	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2366	METABASE	2366	Sandy Jenkins	\N	\N	Sandy	Jenkins	6551-6651 Miller Road	Kannapolis	NC	\N	28081	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2367	METABASE	2367	Nyah Considine	\N	\N	Nyah	Considine	275 Highway 584	Rayville	LA	\N	71269	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2368	METABASE	2368	Rafael Zulauf	\N	\N	Rafael	Zulauf	401-499 Boarts Road	Brawley	CA	\N	92227	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2369	METABASE	2369	Deborah Dickens	\N	\N	Deborah	Dickens	944 John Sam Road	Bainbridge	GA	\N	39817	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_237	METABASE	237	Ernie Kohler	\N	\N	Ernie	Kohler	111 Poverty Pond Road	Shapleigh	ME	\N	4076	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2370	METABASE	2370	Halle Lueilwitz	\N	\N	Halle	Lueilwitz	2479 Gun Club Road	Wasco	CA	\N	93280	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2371	METABASE	2371	Benjamin Collier	\N	\N	Benjamin	Collier	382 County Road 302	Carthage	TX	\N	75633	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2372	METABASE	2372	Keith Bradtke	\N	\N	Keith	Bradtke	5112-5510 South Warren Road	Warren	IN	\N	46792	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2373	METABASE	2373	Alvis Hayes	\N	\N	Alvis	Hayes	26150 Oregon 58	Crescent	OR	\N	97733	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2374	METABASE	2374	Dayne Strosin	\N	\N	Dayne	Strosin	145 Calvit Street	Hempstead	TX	\N	77445	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2375	METABASE	2375	Leonor Moore	\N	\N	Leonor	Moore	27525 State Highway N	Ewing	MO	\N	63440	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2376	METABASE	2376	Enrico Ferry	\N	\N	Enrico	Ferry	18756-18998 720th Street	Hayfield	MN	\N	55940	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2377	METABASE	2377	Devyn Kuvalis	\N	\N	Devyn	Kuvalis	22358 Deep Branch Road	Quantico	MD	\N	21856	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2378	METABASE	2378	Manuel Feeney	\N	\N	Manuel	Feeney	346 Johnson Road	Sicklerville	NJ	\N	8081	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2379	METABASE	2379	Felicity Erdman	\N	\N	Felicity	Erdman	260 Monkey Run Road	Gillett	PA	\N	16925	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_238	METABASE	238	Derrick Walker	\N	\N	Derrick	Walker	1711 Great Bend Turnpike	Pleasant Mount	PA	\N	18453	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2380	METABASE	2380	Mathilde Quigley	\N	\N	Mathilde	Quigley	3828 West 300 North	Winamac	IN	\N	46996	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2381	METABASE	2381	Kirsten Brekke	\N	\N	Kirsten	Brekke	975 Cypress Road	Neshkoro	WI	\N	54960	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2382	METABASE	2382	Annamae Gislason	\N	\N	Annamae	Gislason	5252-5298 22nd Street Southeast	Woodworth	ND	\N	58496	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2383	METABASE	2383	Judd Tromp	\N	\N	Judd	Tromp	579-1053 County Road 169	Roscoe	TX	\N	79545	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2384	METABASE	2384	Verdie Mueller	\N	\N	Verdie	Mueller	3213 Falcon Street	Isle	MN	\N	56342	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2385	METABASE	2385	Elton Streich	\N	\N	Elton	Streich	35 Stone Bridge Way	Plattsburgh	NY	\N	12901	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2386	METABASE	2386	Dortha Bradtke	\N	\N	Dortha	Bradtke	1010-1311 Township Road 223	Richmond	OH	\N	43944	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2387	METABASE	2387	America Halvorson	\N	\N	America	Halvorson	9479 Sliding Hill Road	Ashland	VA	\N	23005	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2388	METABASE	2388	Lisette O'Connell	\N	\N	Lisette	O'Connell	9601 T M Road	Indiantown	FL	\N	34956	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2389	METABASE	2389	Roderick Aufderhar	\N	\N	Roderick	Aufderhar	10402 FM 2193	Brenham	TX	\N	77833	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_239	METABASE	239	Glenna Runolfsson	\N	\N	Glenna	Runolfsson	1861 Jasmine Road	Sandy Level	VA	\N	24161	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2390	METABASE	2390	Ward Swift	\N	\N	Ward	Swift	4134 North 36th Street	Quincy	IL	\N	62305	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2391	METABASE	2391	Jude Reinger	\N	\N	Jude	Reinger	1903 2nd Street	Agua Dulce	TX	\N	78330	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2392	METABASE	2392	Maud Upton	\N	\N	Maud	Upton	463210 East 594 Road	Kansas	OK	\N	74347	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2393	METABASE	2393	Wilhelm Hintz	\N	\N	Wilhelm	Hintz	247 Roanwood Road	Opheim	MT	\N	59250	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2394	METABASE	2394	Grace Brown	\N	\N	Grace	Brown	1720 Country Manor Road	Timmonsville	SC	\N	29161	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2395	METABASE	2395	Brennan Olson	\N	\N	Brennan	Olson	16480 Hemlock Road	Birnamwood	WI	\N	54414	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2396	METABASE	2396	Halie Berge	\N	\N	Halie	Berge	535 Turkey Creek Road	Silver City	NM	\N	88061	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2397	METABASE	2397	Jackeline Hane	\N	\N	Jackeline	Hane	398 North Yellowstone Trail Road	Big Timber	MT	\N	59011	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2398	METABASE	2398	Otha Kiehn	\N	\N	Otha	Kiehn	820 Cr 239	Gatesville	TX	\N	76528	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2399	METABASE	2399	Janae Bahringer	\N	\N	Janae	Bahringer	112-208 Coalfield Road	Midlothian	VA	\N	23114	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_24	METABASE	24	Nya Weber	\N	\N	Nya	Weber	20930 Sugar Hills Road	Cohasset	MN	\N	55721	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_240	METABASE	240	Anais Douglas	\N	\N	Anais	Douglas	361 Leeds Road	Elkton	MD	\N	21921	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2400	METABASE	2400	Rocio Gerhold	\N	\N	Rocio	Gerhold	27587 U.S. 70	Glencoe	NM	\N	88324	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2401	METABASE	2401	Judy Maggio	\N	\N	Judy	Maggio	1190 Seward Avenue	Sitka	AK	\N	99835	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2402	METABASE	2402	Rosalyn Price	\N	\N	Rosalyn	Price	600 Clover Creek Road	Caliente	NV	\N	89008	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2403	METABASE	2403	Deven Brekke	\N	\N	Deven	Brekke	7882 Morrow Road	Marine City	MI	\N	48039	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2404	METABASE	2404	Werner Koepp	\N	\N	Werner	Koepp	1514-1568 260th Street	Algona	IA	\N	50511	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2405	METABASE	2405	Lazaro Rodriguez	\N	\N	Lazaro	Rodriguez	4632 Fallston Road	Shelby	NC	\N	28150	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2406	METABASE	2406	Clay Leannon	\N	\N	Clay	Leannon	5690 Farm to Market 184	Gatesville	TX	\N	76528	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2407	METABASE	2407	Elijah Rohan	\N	\N	Elijah	Rohan	98-108 Judson Avenue	Woodbury	CT	\N	6798	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2408	METABASE	2408	Blake Jast	\N	\N	Blake	Jast	637 Dry Valley Road Northeast	Cleveland	TN	\N	37312	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2409	METABASE	2409	Karl Hansen	\N	\N	Karl	Hansen	201-363 McElroy Road	Westby	MT	\N	59275	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_241	METABASE	241	Christiana Boyle	\N	\N	Christiana	Boyle	21250 Dentler Drive	Three Rivers	MI	\N	49093	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2410	METABASE	2410	Sandrine Herman	\N	\N	Sandrine	Herman	1358 Warner Lane	Harrisonburg	VA	\N	22802	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2411	METABASE	2411	Tyrel Beatty	\N	\N	Tyrel	Beatty	1605-1611 Sellers Road	Dawson	GA	\N	39842	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2412	METABASE	2412	Ashton Beier	\N	\N	Ashton	Beier	852 Smith and Hair Road	Elizabethtown	NC	\N	28337	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2413	METABASE	2413	Twila Turcotte	\N	\N	Twila	Turcotte	1797-1927 New Columbia Highway	Lewisburg	TN	\N	37091	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2414	METABASE	2414	Dante Lesch	\N	\N	Dante	Lesch	2097 Old Wilkesboro Road	Statesville	NC	\N	28625	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2415	METABASE	2415	Mikel Johns	\N	\N	Mikel	Johns	5625 Mack Road	Skaneateles	NY	\N	13152	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2416	METABASE	2416	Emery Gerlach	\N	\N	Emery	Gerlach	100-198 Road 1	Tupelo	MS	\N	38804	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2417	METABASE	2417	Krystal Mills	\N	\N	Krystal	Mills	1077-1487 Colorado 149	South Fork	CO	\N	81154	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2418	METABASE	2418	Brooks Altenwerth	\N	\N	Brooks	Altenwerth	41-51 Georgia 121	Twin City	GA	\N	30471	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2419	METABASE	2419	Kayden Grady	\N	\N	Kayden	Grady	1283-1293 1300 Avenue	Abilene	KS	\N	67410	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_242	METABASE	242	Jaylin Hudson	\N	\N	Jaylin	Hudson	1045 10th Avenue	Woodstock	MN	\N	56186	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2420	METABASE	2420	Chelsey Schaefer	\N	\N	Chelsey	Schaefer	363 State Highway WW	Miller	MO	\N	65707	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2421	METABASE	2421	Prince Schowalter	\N	\N	Prince	Schowalter	1310 Bobby Brown State Park Road	Elberton	GA	\N	30635	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2422	METABASE	2422	Susana Stiedemann	\N	\N	Susana	Stiedemann	27529-27827 Sawyers Bar Road	Etna	CA	\N	96027	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2423	METABASE	2423	Felipe Johnston	\N	\N	Felipe	Johnston	1515 Keelersburg Road	Tunkhannock	PA	\N	18657	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2424	METABASE	2424	Mekhi O'Conner	\N	\N	Mekhi	O'Conner	945 Old Well Road	Spencer	VA	\N	24165	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2425	METABASE	2425	Dustin Armstrong	\N	\N	Dustin	Armstrong	3006 County Street 2500	Hydro	OK	\N	73048	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2426	METABASE	2426	Jonas O'Keefe	\N	\N	Jonas	O'Keefe	16-62 Thompson Creek Road	Superior	MT	\N	59872	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2427	METABASE	2427	Jacey Dach	\N	\N	Jacey	Dach	729 Jonathan Road	Weiser	ID	\N	83672	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2428	METABASE	2428	Magnus Carroll	\N	\N	Magnus	Carroll	1900-2012 George Road	La Grange	TX	\N	78945	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2429	METABASE	2429	Demetris Schmeler	\N	\N	Demetris	Schmeler	19651 South Dakota 44	Interior	SD	\N	57750	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_243	METABASE	243	Paige Miller	\N	\N	Paige	Miller	2656 Fox Run	Imperial	MO	\N	63052	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2430	METABASE	2430	Nestor Hansen	\N	\N	Nestor	Hansen	4305 Snowmass Creek Road	Snowmass	CO	\N	81654	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2431	METABASE	2431	Melissa Mertz	\N	\N	Melissa	Mertz	3240 U.S. 60	Hereford	TX	\N	79045	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2432	METABASE	2432	Clay Johnston	\N	\N	Clay	Johnston	1878 Hickory Valley Road	Maynardville	TN	\N	37807	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2433	METABASE	2433	Taurean Wolf	\N	\N	Taurean	Wolf	11258 570th Avenue	Cosmos	MN	\N	56228	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2434	METABASE	2434	Domenico Ritchie	\N	\N	Domenico	Ritchie	8399 CR 194	Cash	AR	\N	72421	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2435	METABASE	2435	Margot Lesch	\N	\N	Margot	Lesch	18-30 302nd Avenue	Valentine	NE	\N	69201	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2436	METABASE	2436	Kayley Powlowski	\N	\N	Kayley	Powlowski	1 Whitams Island	Saint Helena Island	SC	\N	29920	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2437	METABASE	2437	Carmelo Kilback	\N	\N	Carmelo	Kilback	710 Lake Creek Lane	Cotopaxi	CO	\N	81223	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2438	METABASE	2438	Antone Bechtelar	\N	\N	Antone	Bechtelar	6500-6698 Giants Ridge Road	Embarrass	MN	\N	55732	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2439	METABASE	2439	Jeramie Pfannerstill	\N	\N	Jeramie	Pfannerstill	25678 County Road 457	Mineola	TX	\N	75773	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_244	METABASE	244	Jessika Funk	\N	\N	Jessika	Funk	3338 McCaskill Road	Bethune	SC	\N	29009	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2440	METABASE	2440	Wendell Becker	\N	\N	Wendell	Becker	10787 Rose Lane	Birch Run	MI	\N	48415	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2441	METABASE	2441	Joelle Ullrich	\N	\N	Joelle	Ullrich	23123-23159 Roland Road	Rapidan	VA	\N	22733	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2442	METABASE	2442	Ubaldo Gulgowski	\N	\N	Ubaldo	Gulgowski	6091 Boonville Road	Ukiah	CA	\N	95482	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2443	METABASE	2443	Regan Corkery	\N	\N	Regan	Corkery	18 Sunset Beach Road	Aurora	NY	\N	13026	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2444	METABASE	2444	Karley Hermann	\N	\N	Karley	Hermann	44289 Whitehorse Ranch Lane	Fields	OR	\N	97710	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2445	METABASE	2445	Haylee Hessel	\N	\N	Haylee	Hessel	24141 Old Hot Springs Highway	Hot Springs Village	AR	\N	71909	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2446	METABASE	2446	Brendon Hettinger	\N	\N	Brendon	Hettinger	6255 County Road 213	Pine Bluffs	WY	\N	82082	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2447	METABASE	2447	Arne Mayer	\N	\N	Arne	Mayer	501 Delano Street	Augusta	GA	\N	30904	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2448	METABASE	2448	Alize Keebler	\N	\N	Alize	Keebler	2701-2799 North 1353rd Lane	Clayton	IL	\N	62324	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2449	METABASE	2449	Quinn Metz	\N	\N	Quinn	Metz	28 Highland Loop Road	Douglas	WY	\N	82633	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_245	METABASE	245	Adonis Will	\N	\N	Adonis	Will	3839 Mook-Centerview Road	Hudson	KY	\N	40145	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2450	METABASE	2450	William Terry	\N	\N	William	Terry	7001-7089 18th Street Southeast	Pingree	ND	\N	58476	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2451	METABASE	2451	Brett Rogahn	\N	\N	Brett	Rogahn	13546 Alacia Court	College Station	TX	\N	77845	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2452	METABASE	2452	Nicholaus Brakus	\N	\N	Nicholaus	Brakus	1435 West 400 North	Crawfordsville	IN	\N	47933	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2453	METABASE	2453	Rozella Tremblay	\N	\N	Rozella	Tremblay	666 Hestor Drive	Pittsburgh	PA	\N	15220	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2454	METABASE	2454	Mabel Grimes	\N	\N	Mabel	Grimes	1 Benson Creek Drive	Twisp	WA	\N	98856	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2455	METABASE	2455	Dana Kozey	\N	\N	Dana	Kozey	435 Craft Road	Bells	TX	\N	75414	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2456	METABASE	2456	Susanna Luettgen	\N	\N	Susanna	Luettgen	12821 Dix	Dearborn	MI	\N	48120	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2457	METABASE	2457	Princess Tillman	\N	\N	Princess	Tillman	254 Otter Creek Road	Topton	NC	\N	28781	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2458	METABASE	2458	Mazie Nienow	\N	\N	Mazie	Nienow	4757-5201 Emerson Loop Road	The Dalles	OR	\N	97058	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2459	METABASE	2459	Sterling Yundt	\N	\N	Sterling	Yundt	85346-85398 575 Avenue	Wayne	NE	\N	68787	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_246	METABASE	246	Francesca Gleason	\N	\N	Francesca	Gleason	17210 Scenic Drive	Fall Creek	WI	\N	54742	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2460	METABASE	2460	Shad Bernhard	\N	\N	Shad	Bernhard	14077 East Circle Lily Road	Manitowish Waters	WI	\N	54545	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2461	METABASE	2461	Kim Cormier	\N	\N	Kim	Cormier	11500 Ferman Avenue Southwest	Waverly	MN	\N	55390	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2462	METABASE	2462	Dean Anderson	\N	\N	Dean	Anderson	28909 South Kircher Road	Harrisonville	MO	\N	64701	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2463	METABASE	2463	Domenic Keebler	\N	\N	Domenic	Keebler	822 Comanche Trail	Abilene	TX	\N	79601	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2464	METABASE	2464	Eulah Gorczany	\N	\N	Eulah	Gorczany	1510-1580 Whitehill Road	Yorktown Heights	NY	\N	10598	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2465	METABASE	2465	Madisyn Braun	\N	\N	Madisyn	Braun	628 Ohio 164	Salineville	OH	\N	43945	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2466	METABASE	2466	Jammie Gulgowski	\N	\N	Jammie	Gulgowski	501-899 Idlewood Road	Waynesboro	GA	\N	30830	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2467	METABASE	2467	Lyda Predovic	\N	\N	Lyda	Predovic	681 Newsome Road	Bishopville	SC	\N	29010	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2468	METABASE	2468	Jesus Marquardt	\N	\N	Jesus	Marquardt	2616 Siler Road	Winchester	VA	\N	22603	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2469	METABASE	2469	Mylene Sporer	\N	\N	Mylene	Sporer	84325 Oregon 11	Milton-Freewater	OR	\N	97862	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_247	METABASE	247	Stella Abbott	\N	\N	Stella	Abbott	7470 Railroad Street Northeast	Mount Sterling	OH	\N	43143	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2470	METABASE	2470	Naomi Waelchi	\N	\N	Naomi	Waelchi	24 Cross Road	Wellington	ME	\N	4942	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2471	METABASE	2471	Jasen Stanton	\N	\N	Jasen	Stanton	2071-2199 East Riverside Drive	Warsaw	IN	\N	46582	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2472	METABASE	2472	Alberto Gulgowski	\N	\N	Alberto	Gulgowski	12280 North Jackson Highway	Magnolia	KY	\N	42757	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2473	METABASE	2473	Boris Boyer	\N	\N	Boris	Boyer	1876 Spruce Corner Road	Ashfield	MA	\N	1330	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2474	METABASE	2474	Ubaldo Rath	\N	\N	Ubaldo	Rath	125-127 2nd Street Southeast	Rio Rancho	NM	\N	87124	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2475	METABASE	2475	Ophelia Herzog	\N	\N	Ophelia	Herzog	1000 Wilderfield Road	Los Gatos	CA	\N	95033	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2476	METABASE	2476	Madalyn Roob	\N	\N	Madalyn	Roob	3191 Fernberg Road	Ely	MN	\N	55731	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2477	METABASE	2477	Wilhelmine Ullrich	\N	\N	Wilhelmine	Ullrich	8700 Farm to Market 967	Buda	TX	\N	78610	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2478	METABASE	2478	Kailyn Leuschke	\N	\N	Kailyn	Leuschke	22310 406th Avenue	Forestburg	SD	\N	57314	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2479	METABASE	2479	Demario Tromp	\N	\N	Demario	Tromp	5056-5638 Keystone Road	Pearsall	TX	\N	78061	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_248	METABASE	248	Chanelle Cummings	\N	\N	Chanelle	Cummings	550B U.S. 56	Great Bend	KS	\N	67530	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2480	METABASE	2480	Germaine Brakus	\N	\N	Germaine	Brakus	493 Old Chipley Road	Pine Mountain	GA	\N	31822	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2481	METABASE	2481	Sasha Nolan	\N	\N	Sasha	Nolan	409 Westbrook Drive	Raleigh	NC	\N	27615	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2482	METABASE	2482	Ruthe Goldner	\N	\N	Ruthe	Goldner	875-893 Estes Drive Extension	Chapel Hill	NC	\N	27516	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2483	METABASE	2483	Lila Roob	\N	\N	Lila	Roob	2993 Arkansas 249	Hazen	AR	\N	72064	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2484	METABASE	2484	Adrain Kilback	\N	\N	Adrain	Kilback	99 Pioneer Trail	Armonk	NY	\N	10504	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2485	METABASE	2485	Alverta Sipes	\N	\N	Alverta	Sipes	21 Tanana-Allakaket Winter Trail	Allakaket	AK	\N	99720	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2486	METABASE	2486	Emmalee Goodwin	\N	\N	Emmalee	Goodwin	2499 Bungtown Road	Kenney	IL	\N	61749	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2487	METABASE	2487	Effie Wolff	\N	\N	Effie	Wolff	770 Cave Hill Road	Munfordville	KY	\N	42765	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2488	METABASE	2488	Alberta Kutch	\N	\N	Alberta	Kutch	35887 State Route 324	Hamden	OH	\N	45634	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2489	METABASE	2489	Enos Morissette	\N	\N	Enos	Morissette	70 Tinkham Road	Eure	NC	\N	27935	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_249	METABASE	249	Neva Langworth	\N	\N	Neva	Langworth	18633 440th Street	Holdingford	MN	\N	56340	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2490	METABASE	2490	Macy Kub	\N	\N	Macy	Kub	16475 Cleveland Road	Chinook	MT	\N	59523	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2491	METABASE	2491	Annamarie Block	\N	\N	Annamarie	Block	1465 Ponderosa	Bixby	MO	\N	65439	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2492	METABASE	2492	Doris Fadel	\N	\N	Doris	Fadel	1099 East Wildwood Drive	Grand Island	NE	\N	68801	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2493	METABASE	2493	Edyth Emard	\N	\N	Edyth	Emard	2160 U.S. 77	Lyons	NE	\N	68038	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2494	METABASE	2494	Tamara Pagac	\N	\N	Tamara	Pagac	37500-37598 194th Street	Wessington	SD	\N	57381	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2495	METABASE	2495	Alfonzo Monahan	\N	\N	Alfonzo	Monahan	104 Broken Bow Road	Big Spring	TX	\N	79720	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2496	METABASE	2496	Jettie Yost	\N	\N	Jettie	Yost	22000-22998 County Road G	Yuma	CO	\N	80759	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2497	METABASE	2497	Sadye Gibson	\N	\N	Sadye	Gibson	23402 Camp Arrowhead Road	Lewes	DE	\N	19958	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2498	METABASE	2498	Verner Hamill	\N	\N	Verner	Hamill	186 4500 South	Milford	UT	\N	84751	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2499	METABASE	2499	Cloyd Beer\r\n	\N	\N	Cloyd	Beer\r\n	15708 East Lincoln Road\r\n	Spokane\r\n	WA\r\n	\N	99217	\N	Twitter\r\n	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_25	METABASE	25	Araceli Stiedemann	\N	\N	Araceli	Stiedemann	1201-2099 Plumberosa Drive	Fayetteville	AR	\N	72701	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_250	METABASE	250	Antwon Pagac	\N	\N	Antwon	Pagac	402 County Road 292	Rising Star	TX	\N	76471	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_2500	METABASE	2500	Kenny Schmidt\r\n	\N	\N	Kenny	Schmidt\r\n	14933 Walton-Verona Road\r\n	Verona\r\n	KY\r\n	\N	41092	\N	Google\r\n	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_251	METABASE	251	Dominique Bergnaum	\N	\N	Dominique	Bergnaum	37 Country Knoll Drive	Binghamton	NY	\N	13901	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_252	METABASE	252	Delphia Denesik	\N	\N	Delphia	Denesik	15285 Georgia 106	Carnesville	GA	\N	30521	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_253	METABASE	253	Kyla Zemlak	\N	\N	Kyla	Zemlak	24217 Alihon Lane	Hermosa	SD	\N	57744	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_254	METABASE	254	Ramiro Green	\N	\N	Ramiro	Green	488-998 West 100 North	Reynolds	IN	\N	47980	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_255	METABASE	255	Hudson Jacobi	\N	\N	Hudson	Jacobi	463 Nowhere Road	Axton	VA	\N	24054	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_256	METABASE	256	Rupert Walsh	\N	\N	Rupert	Walsh	20684 Claremont Road	Carlinville	IL	\N	62626	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_257	METABASE	257	Summer Aufderhar	\N	\N	Summer	Aufderhar	6453 County Road 15	Arlington	NE	\N	68002	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_258	METABASE	258	Melvin Upton	\N	\N	Melvin	Upton	1582 New York 162	Sprakers	NY	\N	12166	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_259	METABASE	259	Krystel Boyle	\N	\N	Krystel	Boyle	818 State Highway 116 South	Upton	WY	\N	82730	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_26	METABASE	26	Dagmar Fay	\N	\N	Dagmar	Fay	19480 Happy Creek Road	Winnemucca	NV	\N	89445	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_260	METABASE	260	Lexie Franecki	\N	\N	Lexie	Franecki	9655 Old Post Road	Texarkana	AR	\N	71854	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_261	METABASE	261	Jaden Cole	\N	\N	Jaden	Cole	208 Morris Road	Sandusky	MI	\N	48471	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_262	METABASE	262	Aaron Hand	\N	\N	Aaron	Hand	224 Road 4900	Hardy	NE	\N	68943	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_263	METABASE	263	Ashlee Mertz	\N	\N	Ashlee	Mertz	202 McCallie Ferry Road	Soddy-Daisy	TN	\N	37379	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_264	METABASE	264	Arno Bruen	\N	\N	Arno	Bruen	80 158th Avenue Northeast	Hillsboro	ND	\N	58045	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_265	METABASE	265	Larry Weimann	\N	\N	Larry	Weimann	2585 Galls Creek Road	Gold Hill	OR	\N	97525	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_266	METABASE	266	Beau Rutherford	\N	\N	Beau	Rutherford	345 Johnson Run Road	Blue Creek	OH	\N	45616	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_267	METABASE	267	Rogers Bode	\N	\N	Rogers	Bode	56503 Paul Road	Perdido	AL	\N	36562	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_268	METABASE	268	Marvin Hegmann	\N	\N	Marvin	Hegmann	15874 Red Shale Hill Road	Pekin	IL	\N	61554	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_269	METABASE	269	Mara Prohaska	\N	\N	Mara	Prohaska	2901-2999 Texas 86	Friona	TX	\N	79035	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_27	METABASE	27	Kyler Abshire	\N	\N	Kyler	Abshire	2398-2558 Township Highway 249	Arcadia	OH	\N	44804	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_270	METABASE	270	Chester Eichmann	\N	\N	Chester	Eichmann	85 June Lane	Arley	AL	\N	35541	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_271	METABASE	271	Aurore Ryan	\N	\N	Aurore	Ryan	1100 Lydia's Canyon Road	Glendale	UT	\N	84729	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_272	METABASE	272	Roy Paucek	\N	\N	Roy	Paucek	758 H Road	Cedar Point	KS	\N	66843	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_273	METABASE	273	Jesus Bins	\N	\N	Jesus	Bins	2278 Horned Owl Road	Hiawatha	KS	\N	66434	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_274	METABASE	274	Cameron Strosin	\N	\N	Cameron	Strosin	1220-1298 29th Street Northeast	Anamoose	ND	\N	58710	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_275	METABASE	275	Gabrielle Considine	\N	\N	Gabrielle	Considine	8669 Valley Line Road	Oconto Falls	WI	\N	54154	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_276	METABASE	276	Abbie Ryan	\N	\N	Abbie	Ryan	15819 Index-Galena Road	Sultan	WA	\N	98294	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_277	METABASE	277	Ruthe Champlin	\N	\N	Ruthe	Champlin	320 Priestford Road	Churchville	MD	\N	21028	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_278	METABASE	278	Fredrick Gulgowski	\N	\N	Fredrick	Gulgowski	170 State Road S-42-1958	Chesnee	SC	\N	29323	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_279	METABASE	279	Orville Effertz	\N	\N	Orville	Effertz	24590-24998 V Avenue	Eldora	IA	\N	50627	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_28	METABASE	28	Keon Cartwright	\N	\N	Keon	Cartwright	355 Road 2538	Baldwyn	MS	\N	38824	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_280	METABASE	280	Ryleigh Gleason	\N	\N	Ryleigh	Gleason	32997 County Road 193.5	Kim	CO	\N	81049	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_281	METABASE	281	Marcelina Feest	\N	\N	Marcelina	Feest	621 Butler Mill Road	Maryville	TN	\N	37803	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_282	METABASE	282	Breanna Hodkiewicz	\N	\N	Breanna	Hodkiewicz	3551 50th Street	Grinnell	IA	\N	50112	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_283	METABASE	283	Stanford Feest	\N	\N	Stanford	Feest	7800 Schmeid Road	Lakeview	MI	\N	48850	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_284	METABASE	284	Shyanne Hettinger	\N	\N	Shyanne	Hettinger	36449 Strawberry River Road	Duchesne	UT	\N	84021	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_285	METABASE	285	Okey Botsford	\N	\N	Okey	Botsford	11168 41st Street Northwest	Keene	ND	\N	58847	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_286	METABASE	286	Pamela Jast	\N	\N	Pamela	Jast	676 Craig Road	Edgerton	WI	\N	53534	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_287	METABASE	287	Alverta Reilly	\N	\N	Alverta	Reilly	101 U.S. 385	Boys Ranch	TX	\N	79010	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_288	METABASE	288	Morgan Miller	\N	\N	Morgan	Miller	35213 Oak Springs Road	Tollhouse	CA	\N	93667	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_289	METABASE	289	Lacey Dickinson	\N	\N	Lacey	Dickinson	321 County Road 549	Mullin	TX	\N	76864	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_29	METABASE	29	Broderick Lockman	\N	\N	Broderick	Lockman	5125 Duffy Road Southeast	Lancaster	OH	\N	43130	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_290	METABASE	290	Lila Marks	\N	\N	Lila	Marks	4500-4758 State Road 28	Williamsport	IN	\N	47993	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_291	METABASE	291	Jovan Buckridge	\N	\N	Jovan	Buckridge	741 Lewis Branch Road	Marshall	NC	\N	28753	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_292	METABASE	292	Krystal Schaden	\N	\N	Krystal	Schaden	4501 Well Site Road	Wasilla	AK	\N	99654	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_293	METABASE	293	Cornell Connelly	\N	\N	Cornell	Connelly	13469-13599 Ivy Avenue	Greene	IA	\N	50636	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_294	METABASE	294	Neil O'Connell	\N	\N	Neil	O'Connell	24206 Fairview Road	Philip	SD	\N	57567	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_295	METABASE	295	Aliyah Pfannerstill	\N	\N	Aliyah	Pfannerstill	26323 Merced Avenue	Wasco	CA	\N	93280	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_296	METABASE	296	Nellie Heller	\N	\N	Nellie	Heller	256 Yarmouth Road	Gray	ME	\N	4039	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_297	METABASE	297	Ryley Nader	\N	\N	Ryley	Nader	1720 Hicks Street	Tomball	TX	\N	77375	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_298	METABASE	298	Bernhard Boyer	\N	\N	Bernhard	Boyer	5766 East Whispering Woods Avenue	Trapper Creek	AK	\N	99688	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_299	METABASE	299	Delbert Borer	\N	\N	Delbert	Borer	101-199 Durango Lane	Cabot	PA	\N	16023	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_3	METABASE	3	Lina Heaney	\N	\N	Lina	Heaney	29494 Anderson Drive	Sandstone	MN	\N	55072	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_30	METABASE	30	Desiree Walsh	\N	\N	Desiree	Walsh	13-99 Deberry Levee Road	DeWitt	AR	\N	72042	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_300	METABASE	300	Bryon Lakin	\N	\N	Bryon	Lakin	3680 Carroll Ulmer Road	Valdosta	GA	\N	31601	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_301	METABASE	301	Nichole Ledner	\N	\N	Nichole	Ledner	1747-1799 120th Street	Goodell	IA	\N	50439	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_302	METABASE	302	Aubree Walter	\N	\N	Aubree	Walter	3600-3698 340th Avenue	Ruthven	IA	\N	51358	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_303	METABASE	303	Orlando Kovacek	\N	\N	Orlando	Kovacek	369 Mississippi 30	Oxford	MS	\N	38655	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_304	METABASE	304	Emmanuelle Sporer	\N	\N	Emmanuelle	Sporer	9601-9697 160th Avenue Northeast	Pembina	ND	\N	58271	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_305	METABASE	305	Rebekah Dickinson	\N	\N	Rebekah	Dickinson	180 County Road 22	Slate Hill	NY	\N	10973	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_306	METABASE	306	Louie Breitenberg	\N	\N	Louie	Breitenberg	43 Downing Drive	Phenix City	AL	\N	36869	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_307	METABASE	307	Vladimir Kuphal	\N	\N	Vladimir	Kuphal	179 Cloverdale Road	Bremo Bluff	VA	\N	23022	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_308	METABASE	308	Kamille Bartell	\N	\N	Kamille	Bartell	1961 540th Avenue	Gibson	IA	\N	50104	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_309	METABASE	309	Marilou Koss	\N	\N	Marilou	Koss	20716 Whitewood Creek Road	Sturgis	SD	\N	57785	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_31	METABASE	31	Cleora Hilll	\N	\N	Cleora	Hilll	2303 Christianson Hill Road	Houston	MN	\N	55943	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_310	METABASE	310	Libby Ledner	\N	\N	Libby	Ledner	12996 Highway 88	Creston	NC	\N	28615	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_311	METABASE	311	Orlo Lueilwitz	\N	\N	Orlo	Lueilwitz	228 Back Road	Rebersburg	PA	\N	16872	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_312	METABASE	312	Lauren Lueilwitz	\N	\N	Lauren	Lueilwitz	6350 County Lake Road	Sulligent	AL	\N	35586	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_313	METABASE	313	Miguel Reynolds	\N	\N	Miguel	Reynolds	100 Main Street	Sand Point	AK	\N	99661	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_314	METABASE	314	Tomas Mraz	\N	\N	Tomas	Mraz	42264 269th Street	Alexandria	SD	\N	57311	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_315	METABASE	315	Autumn Feeney	\N	\N	Autumn	Feeney	14329 Road 592	Bridgeville	DE	\N	19933	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_316	METABASE	316	Judd Hickle	\N	\N	Judd	Hickle	5-31 290th Avenue	Valentine	NE	\N	69201	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_317	METABASE	317	Sibyl Bernier	\N	\N	Sibyl	Bernier	101 West Emerling Avenue	Akron	OH	\N	44301	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_318	METABASE	318	Cassandre Daugherty	\N	\N	Cassandre	Daugherty	4998 County Road 16	Walden	CO	\N	80480	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_319	METABASE	319	Alexa Marvin	\N	\N	Alexa	Marvin	520 Willow Bend Lane	O'Fallon	IL	\N	62269	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_32	METABASE	32	Jayden Hamill	\N	\N	Jayden	Hamill	6101 County Road CC67	Pueblo	CO	\N	81004	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_320	METABASE	320	Adriel Hudson	\N	\N	Adriel	Hudson	32548 200th Street Northwest	Warren	MN	\N	56762	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_321	METABASE	321	Francesca Hammes	\N	\N	Francesca	Hammes	292-434 Draper Road	Roswell	NM	\N	88201	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_322	METABASE	322	Scot Rippin	\N	\N	Scot	Rippin	5001-5999 County Road 44	Yuma	CO	\N	80759	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_323	METABASE	323	Deja Schmeler	\N	\N	Deja	Schmeler	825 Clonmell Road	Paulsboro	NJ	\N	8066	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_324	METABASE	324	Ardella Willms	\N	\N	Ardella	Willms	43200 Colorado 109	Kim	CO	\N	81049	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_325	METABASE	325	Orrin Lemke	\N	\N	Orrin	Lemke	4100-4116 Sand Road	Erie	IL	\N	61250	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_326	METABASE	326	Clovis Homenick	\N	\N	Clovis	Homenick	1767 Brush Run Road	Avella	PA	\N	15312	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_327	METABASE	327	Rosario Bradtke	\N	\N	Rosario	Bradtke	36376 North 170 East Road	Rankin	IL	\N	60960	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_328	METABASE	328	Merle Blick	\N	\N	Merle	Blick	4989 Foxen Canyon Road	Santa Maria	CA	\N	93454	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_329	METABASE	329	Elwin Okuneva	\N	\N	Elwin	Okuneva	285 Emory Road	Blaine	TN	\N	37709	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_33	METABASE	33	Alphonso Quigley	\N	\N	Alphonso	Quigley	33430 Danver Trail	Steamboat Springs	CO	\N	80487	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_330	METABASE	330	Edward McClure	\N	\N	Edward	McClure	11498 County Road 4167	Hermleigh	TX	\N	79526	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_331	METABASE	331	Max Reynolds	\N	\N	Max	Reynolds	9668-9674 Pleasant Lake Road	Upson	WI	\N	54565	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_332	METABASE	332	Kayley Klein	\N	\N	Kayley	Klein	5674 Old Ridge Trail	Fairbanks	AK	\N	99709	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_333	METABASE	333	Floyd Lehner	\N	\N	Floyd	Lehner	27107-27539 Chimney Rock Road	Inverness	CA	\N	94937	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_334	METABASE	334	Berneice Abbott	\N	\N	Berneice	Abbott	71669 639 Avenue	Humboldt	NE	\N	68376	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_335	METABASE	335	Guy Wiegand	\N	\N	Guy	Wiegand	6746-6842 County Road 83	Flasher	ND	\N	58535	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_336	METABASE	336	Wilhelmine Erdman	\N	\N	Wilhelmine	Erdman	1229 Shadow Mountain Lane	Blue Ridge	VA	\N	24064	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_337	METABASE	337	Adolph Tillman	\N	\N	Adolph	Tillman	6203-6299 Chambers County 053	Wadley	AL	\N	36276	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_338	METABASE	338	Ernie Bogan	\N	\N	Ernie	Bogan	R3E Camino Court	Dixon	CA	\N	95620	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_339	METABASE	339	Keagan Hirthe	\N	\N	Keagan	Hirthe	730-800 Jw Warren Road	East Dublin	GA	\N	31027	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_34	METABASE	34	Emilie Goyette	\N	\N	Emilie	Goyette	3349 Holly Springs Road	Amissville	VA	\N	20106	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_340	METABASE	340	Serenity Wolff	\N	\N	Serenity	Wolff	9701-10035 South Iris Road	Plymouth	IN	\N	46563	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_341	METABASE	341	Andrew Russel	\N	\N	Andrew	Russel	4501-4517 Alphonse Drive	Metairie	LA	\N	70006	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_342	METABASE	342	Lavinia Harber	\N	\N	Lavinia	Harber	3104 County Road 43270	Powderly	TX	\N	75473	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_343	METABASE	343	Angus Feest	\N	\N	Angus	Feest	4511 White Plains Road	White Plains	GA	\N	30678	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_344	METABASE	344	Ellsworth Stamm	\N	\N	Ellsworth	Stamm	3701-3797 Erieville Road	Cazenovia	NY	\N	13035	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_345	METABASE	345	Jayme Zulauf	\N	\N	Jayme	Zulauf	8299 Green Road	Bolivar	NY	\N	14715	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_346	METABASE	346	Alene Abernathy	\N	\N	Alene	Abernathy	188 Victor Padgett	Monroe	TN	\N	38573	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_347	METABASE	347	Ola Gottlieb	\N	\N	Ola	Gottlieb	1001 South Main Street	Rochelle	IL	\N	61068	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_348	METABASE	348	Elmore Weissnat	\N	\N	Elmore	Weissnat	40523 Line Street	Le Flore	OK	\N	74942	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_349	METABASE	349	Agustin Collins	\N	\N	Agustin	Collins	15182 Valentine Road	Roy	MT	\N	59471	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_35	METABASE	35	Chelsey Schuppe	\N	\N	Chelsey	Schuppe	N1962 County Road K	Sharon	WI	\N	53585	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_350	METABASE	350	Quentin Dickinson	\N	\N	Quentin	Dickinson	2-298 Windmill Hill Trail	Brookline	VT	\N	5345	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_351	METABASE	351	Maudie Leannon	\N	\N	Maudie	Leannon	13981 Perry Road	Lake Odessa	MI	\N	48849	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_352	METABASE	352	Lowell Koelpin	\N	\N	Lowell	Koelpin	2400-2418 East Colonial Drive	Orlando	FL	\N	32803	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_353	METABASE	353	Hulda Hintz	\N	\N	Hulda	Hintz	7130 Kochville Road	Freeland	MI	\N	48623	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_354	METABASE	354	Molly Robel	\N	\N	Molly	Robel	2120 Ln 16 1/2	Lovell	WY	\N	82431	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_355	METABASE	355	Jairo Schiller	\N	\N	Jairo	Schiller	177-183 Antioch-Shiloh Road	Pelahatchie	MS	\N	39145	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_356	METABASE	356	Meta Koelpin	\N	\N	Meta	Koelpin	3942 8th Drive	Montello	WI	\N	53949	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_357	METABASE	357	Raegan Witting	\N	\N	Raegan	Witting	1102-1162 Judith Gap Road	Judith Gap	MT	\N	59453	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_358	METABASE	358	Antonina Rolfson	\N	\N	Antonina	Rolfson	629 Chipley Street	Pine Mountain	GA	\N	31822	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_359	METABASE	359	Mattie Russel	\N	\N	Mattie	Russel	2631 North US Highway 281	Blanco	TX	\N	78606	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_36	METABASE	36	Kaley Ziemann	\N	\N	Kaley	Ziemann	244-298 Northwest 180 Road	Hoisington	KS	\N	67544	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_360	METABASE	360	Stuart Wintheiser	\N	\N	Stuart	Wintheiser	5485 County Road 535	Jackson	MO	\N	63755	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_361	METABASE	361	Unique Balistreri	\N	\N	Unique	Balistreri	5895 North Carolina 90	Collettsville	NC	\N	28611	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_362	METABASE	362	Jaqueline Waelchi	\N	\N	Jaqueline	Waelchi	8874-9380 Ohio 294	Harpster	OH	\N	43323	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_363	METABASE	363	Diana Marvin	\N	\N	Diana	Marvin	43521 Vía Canada	King City	CA	\N	93930	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_364	METABASE	364	Geovanny Turcotte	\N	\N	Geovanny	Turcotte	2811 Martin Road	Sheldon	WI	\N	54766	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_365	METABASE	365	Sibyl Hettinger	\N	\N	Sibyl	Hettinger	2406 East 23 Road	Hampton	NE	\N	68843	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_366	METABASE	366	Justina Blanda	\N	\N	Justina	Blanda	301 Fox Lake Lane	LaFollette	TN	\N	37766	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_367	METABASE	367	Gaetano Wilderman	\N	\N	Gaetano	Wilderman	2913 Horse Creek Road	Circle	MT	\N	59215	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_368	METABASE	368	Trudie Wisoky	\N	\N	Trudie	Wisoky	9505 Meadow Ridge Lane	Laytonsville	MD	\N	20882	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_369	METABASE	369	Alia O'Reilly	\N	\N	Alia	O'Reilly	274 Knight Road	Chidester	AR	\N	71726	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_37	METABASE	37	Jaleel Collins	\N	\N	Jaleel	Collins	3210-3298 West Overton Road	Tucson	AZ	\N	85742	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_370	METABASE	370	Lisette Roberts	\N	\N	Lisette	Roberts	10041 Road 785	Philadelphia	MS	\N	39350	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_371	METABASE	371	Kimberly Braun	\N	\N	Kimberly	Braun	971 Clay Road	Skipwith	VA	\N	23968	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_372	METABASE	372	Meagan Cremin	\N	\N	Meagan	Cremin	112 Batchelor Road	Richlands	NC	\N	28574	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_373	METABASE	373	Dawson Kuvalis	\N	\N	Dawson	Kuvalis	23196 U.S. 84	Abiquiu	NM	\N	87510	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_374	METABASE	374	Ryleigh Padberg	\N	\N	Ryleigh	Padberg	5115 Ridge Road	Union Springs	NY	\N	13160	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_375	METABASE	375	Ryder Kunde	\N	\N	Ryder	Kunde	8717 Chevallier Drive	Helena	MT	\N	59602	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_376	METABASE	376	Fanny Gutmann	\N	\N	Fanny	Gutmann	810 Tipton Street	Lagro	IN	\N	46941	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_377	METABASE	377	Prince Quitzon	\N	\N	Prince	Quitzon	251 Polish Road	Great Falls	MT	\N	59404	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_378	METABASE	378	Corbin Mertz	\N	\N	Corbin	Mertz	1899 Higginbotham Highway	Church Point	LA	\N	70525	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_379	METABASE	379	Theresia Johnston	\N	\N	Theresia	Johnston	221 Waltz Mill Road	Ruffs Dale	PA	\N	15679	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_38	METABASE	38	Cecilia Stark	\N	\N	Cecilia	Stark	155 Cow Creek Road	Hurricane	WV	\N	25526	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_380	METABASE	380	Faustino Okuneva	\N	\N	Faustino	Okuneva	38 Back Shore Road	Castine	ME	\N	4421	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_381	METABASE	381	Trudie Koch	\N	\N	Trudie	Koch	27 Noe's Chicken House Road	Orleans	IN	\N	47452	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_382	METABASE	382	Thaddeus Lindgren	\N	\N	Thaddeus	Lindgren	7231 Northwest 30th Street	Chiefland	FL	\N	32626	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_383	METABASE	383	Phoebe Wintheiser	\N	\N	Phoebe	Wintheiser	7059-7099 83rd Street Northeast	Egeland	ND	\N	58331	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_384	METABASE	384	Tressie Smitham	\N	\N	Tressie	Smitham	2425 Oak Forest Road	Pontotoc	MS	\N	38863	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_385	METABASE	385	Veda Raynor	\N	\N	Veda	Raynor	180 Unimak Drive	False Pass	AK	\N	99583	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_386	METABASE	386	Omer Kautzer	\N	\N	Omer	Kautzer	95 Alaska 4	Copper Center	AK	\N	99573	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_387	METABASE	387	Selina O'Hara	\N	\N	Selina	O'Hara	11001 Low Gap Road	Ukiah	CA	\N	95482	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_388	METABASE	388	Nicklaus Hahn	\N	\N	Nicklaus	Hahn	2100-2174 350th Street	Stanhope	IA	\N	50246	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_389	METABASE	389	Mellie Wolf	\N	\N	Mellie	Wolf	2730 Road North	Lawrence	NE	\N	68957	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_39	METABASE	39	Andreanne Hills	\N	\N	Andreanne	Hills	618 150th Avenue	Edgerton	MN	\N	56128	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_390	METABASE	390	Brenna Hudson	\N	\N	Brenna	Hudson	3321 Pleasant Hill View	Ashton	ID	\N	83420	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_391	METABASE	391	Gilberto Mueller	\N	\N	Gilberto	Mueller	2594-3538 County Road 76	Parlin	CO	\N	81239	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_392	METABASE	392	Percival Schuppe	\N	\N	Percival	Schuppe	5683 Jay Green Road	Canton	GA	\N	30114	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_393	METABASE	393	Sigurd Abernathy	\N	\N	Sigurd	Abernathy	4571-4599 Musser Road	Mancelona	MI	\N	49659	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_394	METABASE	394	Rosario Thiel	\N	\N	Rosario	Thiel	184 Lilly Lane	Lonoke	AR	\N	72086	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_395	METABASE	395	Chet Blick	\N	\N	Chet	Blick	9234-9256 Zebrafinch Avenue	Brooksville	FL	\N	34614	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_396	METABASE	396	Alfred Parisian	\N	\N	Alfred	Parisian	40300-40398 257th Street	Mitchell	SD	\N	57301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_397	METABASE	397	Lavern Botsford	\N	\N	Lavern	Botsford	31002 Johnson Road	Townville	PA	\N	16360	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_398	METABASE	398	Norval Collins	\N	\N	Norval	Collins	14787 Minnesota 108	Pelican Rapids	MN	\N	56572	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_399	METABASE	399	Leilani Sanford	\N	\N	Leilani	Sanford	37661 South Kaliak	Talkeetna	AK	\N	99676	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_4	METABASE	4	Arnold Adams	\N	\N	Arnold	Adams	2-7900 Cuerno Verde Road	Rye	CO	\N	81069	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_40	METABASE	40	Elyssa Wolf	\N	\N	Elyssa	Wolf	171 Olive Oyle Lane	Dale	TX	\N	78616	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_400	METABASE	400	Benton Huel	\N	\N	Benton	Huel	1901-1973 215th Street	Muscatine	IA	\N	52761	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_401	METABASE	401	Mark Hane	\N	\N	Mark	Hane	1499 Plank Road	Robbins	NC	\N	27325	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_402	METABASE	402	Carmella Cummerata	\N	\N	Carmella	Cummerata	225 Miller Creek Road	Batesville	AR	\N	72501	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_403	METABASE	403	Andy Schmeler	\N	\N	Andy	Schmeler	171 Jones Road	Sutton	MA	\N	1590	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_404	METABASE	404	Lolita Ferry	\N	\N	Lolita	Ferry	2540 Sharon Court	Sunderland	MD	\N	20689	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_405	METABASE	405	Gwen Ruecker	\N	\N	Gwen	Ruecker	370 Clark Street Extended	Groton	NY	\N	13073	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_406	METABASE	406	Kacie Skiles	\N	\N	Kacie	Skiles	46115 269th Street	Chancellor	SD	\N	57015	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_407	METABASE	407	Liliane Blanda	\N	\N	Liliane	Blanda	7665 Texas 73	Beaumont	TX	\N	77705	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_408	METABASE	408	Drake Beahan	\N	\N	Drake	Beahan	101 South Hickel Highway	Bettles	AK	\N	99726	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_409	METABASE	409	Kenyon Watsica	\N	\N	Kenyon	Watsica	205 Hebert Trailer Park Road	Lake Charles	LA	\N	70607	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_41	METABASE	41	Bernadine Gorczany	\N	\N	Bernadine	Gorczany	31619 Silverado Lane	Waukee	IA	\N	50263	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_410	METABASE	410	Donald Dietrich	\N	\N	Donald	Dietrich	6192 South Carolina 394	North	SC	\N	29112	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_411	METABASE	411	Ruthe Gibson	\N	\N	Ruthe	Gibson	4850 Gainey Road	Fayetteville	NC	\N	28306	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_412	METABASE	412	Earnestine Lockman	\N	\N	Earnestine	Lockman	2927 Freshwater Road	Eureka	CA	\N	95503	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_413	METABASE	413	Joanne Osinski	\N	\N	Joanne	Osinski	493 Perins Peak Lane	Durango	CO	\N	81301	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_414	METABASE	414	Casey Metz	\N	\N	Casey	Metz	576 Fincher Road	Canton	GA	\N	30114	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_415	METABASE	415	Orlo Champlin	\N	\N	Orlo	Champlin	1245 Jenne Trail Road	Douglas	WY	\N	82633	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_416	METABASE	416	Zoe Bernhard	\N	\N	Zoe	Bernhard	11443 East Gogomain Road	Goetzville	MI	\N	49736	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_417	METABASE	417	Rowan Hyatt	\N	\N	Rowan	Hyatt	745-813 County Highway 12	Coulterville	IL	\N	62237	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_418	METABASE	418	Ella Koss	\N	\N	Ella	Koss	31942-31950 Oak Ridge Parkway	Bulverde	TX	\N	78163	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_419	METABASE	419	Jaeden Cremin	\N	\N	Jaeden	Cremin	759 Henry Clay Smith Road	Franklin	KY	\N	42134	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_42	METABASE	42	Reyes Strosin	\N	\N	Reyes	Strosin	30379-30383 Herbrecht Road	Watertown	NY	\N	13601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_420	METABASE	420	Crystel Mann	\N	\N	Crystel	Mann	9343 24th Street Northeast	Tolna	ND	\N	58380	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_421	METABASE	421	Arely Zulauf	\N	\N	Arely	Zulauf	16418 E0470 Road	Fairmont	OK	\N	73736	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_422	METABASE	422	Reagan DuBuque	\N	\N	Reagan	DuBuque	196 Wyatt Way	Chula	GA	\N	31733	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_423	METABASE	423	Loyce Cole	\N	\N	Loyce	Cole	1106 L Avenue	Elliott	IA	\N	51532	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_424	METABASE	424	Earline Gulgowski	\N	\N	Earline	Gulgowski	7904 State Highway PP	Puxico	MO	\N	63960	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_425	METABASE	425	Enrique Wiegand	\N	\N	Enrique	Wiegand	7882 Mississippi 1	Duncan	MS	\N	38740	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_426	METABASE	426	Rollin Ondricka	\N	\N	Rollin	Ondricka	17283 North Las Vegas Boulevard	Moapa	NV	\N	89025	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_427	METABASE	427	Chester Koepp	\N	\N	Chester	Koepp	11500 Curtis Road	Myakka City	FL	\N	34251	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_428	METABASE	428	Kennedy Kunde	\N	\N	Kennedy	Kunde	26701-27699 East Oyler Road	Ingalls	KS	\N	67853	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_429	METABASE	429	Andy Skiles	\N	\N	Andy	Skiles	3963 Carter Road	Juda	WI	\N	53550	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_43	METABASE	43	Chaya Volkman	\N	\N	Chaya	Volkman	18001-18999 North Morrion	Dike	IA	\N	50624	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_430	METABASE	430	Justine Kertzmann	\N	\N	Justine	Kertzmann	14262 Martha Redmond Road	Saucier	MS	\N	39574	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_431	METABASE	431	Tobin Huels	\N	\N	Tobin	Huels	450 North Old Highway	Monticello	UT	\N	84535	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_432	METABASE	432	Lou Runte	\N	\N	Lou	Runte	36168 South Archy Draw	Vernal	UT	\N	84078	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_433	METABASE	433	Kim Grant	\N	\N	Kim	Grant	200-298 Locust Street	La Veta	CO	\N	81055	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_434	METABASE	434	Domenico Abernathy	\N	\N	Domenico	Abernathy	1101-1121 Harriett Circle	Anderson	SC	\N	29621	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_435	METABASE	435	Allan Runolfsson	\N	\N	Allan	Runolfsson	8880 County Road 9850	West Plains	MO	\N	65775	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_436	METABASE	436	Heber Turner	\N	\N	Heber	Turner	701-799 250th Street	Scranton	IA	\N	51462	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_437	METABASE	437	Danial Keeling	\N	\N	Danial	Keeling	487 Lone Mountain Road	Toston	MT	\N	59643	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_438	METABASE	438	Arvid Hermiston	\N	\N	Arvid	Hermiston	1133 Hartman Road	Livermore	CA	\N	94551	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_439	METABASE	439	Ivah Tromp	\N	\N	Ivah	Tromp	26859-27499 188th Avenue Northeast	Wing	ND	\N	58494	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_44	METABASE	44	Carroll Kohler	\N	\N	Carroll	Kohler	4251-4389 485th Avenue	Mallard	IA	\N	50562	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_440	METABASE	440	Sarina Bailey	\N	\N	Sarina	Bailey	35996 University Avenue Northeast	Cambridge	MN	\N	55008	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_441	METABASE	441	Pietro Bogisich	\N	\N	Pietro	Bogisich	4001-20827 85th Avenue	Onamia	MN	\N	56359	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_442	METABASE	442	Arch Simonis	\N	\N	Arch	Simonis	651 Cole Road	Philippi	WV	\N	26416	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_443	METABASE	443	Lisa VonRueden	\N	\N	Lisa	VonRueden	10168 56th Street Southeast	Marion	ND	\N	58466	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_444	METABASE	444	Andres Zulauf	\N	\N	Andres	Zulauf	8 U.S. 69	Baxter Springs	KS	\N	66713	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_445	METABASE	445	Claudine McCullough	\N	\N	Claudine	McCullough	3860 South Court Street	Montgomery	AL	\N	36105	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_446	METABASE	446	Tre Balistreri	\N	\N	Tre	Balistreri	3119 Windmill Drive	Dayton	OH	\N	45432	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_447	METABASE	447	Demario Hand	\N	\N	Demario	Hand	4328 3r Fish Camp Road	White Oak	GA	\N	31568	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_448	METABASE	448	Darian Cremin	\N	\N	Darian	Cremin	9918 Howards Lick Road	Mathias	WV	\N	26812	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_449	METABASE	449	Zetta Nitzsche	\N	\N	Zetta	Nitzsche	2607 Yanez Street	Donna	TX	\N	78537	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_45	METABASE	45	Gilbert Abbott	\N	\N	Gilbert	Abbott	28001-28599 180th Street	Columbus Junction	IA	\N	52738	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_450	METABASE	450	Sincere Waters	\N	\N	Sincere	Waters	11410 Enos Road	Kingston	OK	\N	73439	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_451	METABASE	451	Vernice Schmitt	\N	\N	Vernice	Schmitt	6 Lake Simond Road	Tupper Lake	NY	\N	12986	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_452	METABASE	452	Dawn Goldner	\N	\N	Dawn	Goldner	12000-12998 County Road 20	Ovid	CO	\N	80744	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_453	METABASE	453	Evangeline Reichert	\N	\N	Evangeline	Reichert	95162 U.S. 87	Lewistown	MT	\N	59457	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_454	METABASE	454	Bobby Kessler	\N	\N	Bobby	Kessler	7230-8282 Chambers County 173	La Fayette	AL	\N	36862	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_455	METABASE	455	Leonie Crona	\N	\N	Leonie	Crona	6854 Messenger Road	Valier	MT	\N	59486	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_456	METABASE	456	Rogelio Turner	\N	\N	Rogelio	Turner	21115 State Highway Ab	Burlington Junction	MO	\N	64428	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_457	METABASE	457	Marguerite Huels	\N	\N	Marguerite	Huels	19200 Sweet Ola Highway	Ola	ID	\N	83657	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_458	METABASE	458	Elvera Lowe	\N	\N	Elvera	Lowe	5150 Highway 78 East	Graysville	AL	\N	35073	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_459	METABASE	459	Anissa Schuppe	\N	\N	Anissa	Schuppe	1922 South Main Street	Corry	PA	\N	16407	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_46	METABASE	46	Kaleb Swaniawski	\N	\N	Kaleb	Swaniawski	15000-15312 Crooked Road Northeast	Kalkaska	MI	\N	49646	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_460	METABASE	460	Laisha West	\N	\N	Laisha	West	1501 Frank Lovell Road	Clarkesville	GA	\N	30523	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_461	METABASE	461	Sid Mills	\N	\N	Sid	Mills	263 Barrows Ranch Road	Evergreen	CO	\N	80439	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_462	METABASE	462	Ellie Oberbrunner	\N	\N	Ellie	Oberbrunner	164 Frogtown Estate	Livingston	TN	\N	38570	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_463	METABASE	463	Marianna Smith	\N	\N	Marianna	Smith	32792-32798 Greenwood Drive	New Baltimore	MI	\N	48047	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_464	METABASE	464	Madaline Hilll	\N	\N	Madaline	Hilll	1252 U.S. 56	Larned	KS	\N	67550	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_465	METABASE	465	Haskell Graham	\N	\N	Haskell	Graham	7269 North Adams Drive	Madras	OR	\N	97741	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_466	METABASE	466	Myles Deckow	\N	\N	Myles	Deckow	12002 Southwest Kanner Highway	Indiantown	FL	\N	34956	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_467	METABASE	467	Chanel Dare	\N	\N	Chanel	Dare	6590 O Road	Nebraska City	NE	\N	68410	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_468	METABASE	468	Jensen Swaniawski	\N	\N	Jensen	Swaniawski	520-550 Clay County Road 320	Qulin	MO	\N	63961	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_469	METABASE	469	Letha Murazik	\N	\N	Letha	Murazik	4001-5147 East 1400th Avenue	Wheeler	IL	\N	62479	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_47	METABASE	47	Bradley Green	\N	\N	Bradley	Green	111 Leupp Road	Flagstaff	AZ	\N	86004	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_470	METABASE	470	Enrico Graham	\N	\N	Enrico	Graham	11656 Utica Road	Greenwood	DE	\N	19950	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_471	METABASE	471	Oral Balistreri	\N	\N	Oral	Balistreri	3874 El Monte Drive	Loomis	CA	\N	95650	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_472	METABASE	472	Gregory Brakus	\N	\N	Gregory	Brakus	203 East Barnhill Street	Williamston	NC	\N	27892	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_473	METABASE	473	Tyler Cremin	\N	\N	Tyler	Cremin	653 County Road 105	Riesel	TX	\N	76682	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_474	METABASE	474	Reyes Kulas	\N	\N	Reyes	Kulas	9190 West 1100 North	De Motte	IN	\N	46310	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_475	METABASE	475	Murray Gleason	\N	\N	Murray	Gleason	12197 Cross Fence Trail	Tyler	TX	\N	75706	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_476	METABASE	476	Adalberto Terry	\N	\N	Adalberto	Terry	64 Goose Pond Road	Comer	GA	\N	30629	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_477	METABASE	477	Winfield Donnelly	\N	\N	Winfield	Donnelly	5004-5008 Picardy Place	Raleigh	NC	\N	27612	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_478	METABASE	478	Vergie Borer	\N	\N	Vergie	Borer	1215 Kinderhook Road	Madison	VA	\N	22727	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_479	METABASE	479	Molly Klocko	\N	\N	Molly	Klocko	95 Alaska 4	Copper Center	AK	\N	99573	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_48	METABASE	48	Logan Weber	\N	\N	Logan	Weber	1260 29th Road	Morrowville	KS	\N	66958	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_480	METABASE	480	Crawford Rath	\N	\N	Crawford	Rath	3190-3398 County Road 30 East	Attica	IN	\N	47918	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_481	METABASE	481	Keely O'Conner	\N	\N	Keely	O'Conner	308 Pebblecreek Drive	Mountain Home	AR	\N	72653	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_482	METABASE	482	Dolores Bins	\N	\N	Dolores	Bins	4466 Arkansas 9	Carthage	AR	\N	71725	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_483	METABASE	483	Magnolia O'Keefe	\N	\N	Magnolia	O'Keefe	497 Old Ferguson Town Road	Young Harris	GA	\N	30582	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_484	METABASE	484	Mayra Olson	\N	\N	Mayra	Olson	7934 County Road 56	Saint Joe	IN	\N	46785	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_485	METABASE	485	Marcelina Moore	\N	\N	Marcelina	Moore	1026-1324 Industrial Park	Mount Jackson	VA	\N	22842	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_486	METABASE	486	Morris Beahan	\N	\N	Morris	Beahan	7706 Farm Road 1120	Verona	MO	\N	65769	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_487	METABASE	487	Mike Abernathy	\N	\N	Mike	Abernathy	1155 Temples Point Road	Havelock	NC	\N	28532	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_488	METABASE	488	Terrence Emmerich	\N	\N	Terrence	Emmerich	11439-11447 Glenpark Drive Northeast	Bolivar	OH	\N	44612	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_489	METABASE	489	Amya Homenick	\N	\N	Amya	Homenick	7800-8094 Burley	Township of Branch	MI	\N	49402	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_49	METABASE	49	Zane Koelpin	\N	\N	Zane	Koelpin	6043 County Road 30	Reeds	MO	\N	64859	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_490	METABASE	490	Tyreek Runolfsdottir	\N	\N	Tyreek	Runolfsdottir	41 Laurel Lane	Columbia	CT	\N	6237	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_491	METABASE	491	Justina Kassulke	\N	\N	Justina	Kassulke	3312 National Forest Development Road 215	Sandpoint	ID	\N	83864	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_492	METABASE	492	Janelle Rutherford	\N	\N	Janelle	Rutherford	1610 Vz County Road 1313	Canton	TX	\N	75103	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_493	METABASE	493	May Kerluke	\N	\N	May	Kerluke	194 Colonial Drive	Webster	NY	\N	14580	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_494	METABASE	494	Abdullah Fisher	\N	\N	Abdullah	Fisher	1206 Georgia 272	Tennille	GA	\N	31089	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_495	METABASE	495	Kamron Senger	\N	\N	Kamron	Senger	14463 Old Macon Road	Columbus	MS	\N	39701	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_496	METABASE	496	Corine Rosenbaum	\N	\N	Corine	Rosenbaum	3701 Applegate Road	Hope Mills	NC	\N	28348	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_497	METABASE	497	Jennings Ferry	\N	\N	Jennings	Ferry	304 Warren Avenue	Chocowinity	NC	\N	27817	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_498	METABASE	498	Nickolas Schuster	\N	\N	Nickolas	Schuster	22828 Highway V	Myrtle	MO	\N	65778	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_499	METABASE	499	Loyal Wintheiser	\N	\N	Loyal	Wintheiser	2499 Fish Trap Road	Wise River	MT	\N	59762	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_5	METABASE	5	Dominique Leffler	\N	\N	Dominique	Leffler	761 Fish Hill Road	Beaver Dams	NY	\N	14812	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_50	METABASE	50	Stacy Wisozk	\N	\N	Stacy	Wisozk	12751-12799 57th Street Northeast	Fordville	ND	\N	58231	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_500	METABASE	500	Madge Friesen	\N	\N	Madge	Friesen	1821 70th Road	Yates Center	KS	\N	66783	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_501	METABASE	501	Orval Hettinger	\N	\N	Orval	Hettinger	5290 Missouri 94	Marthasville	MO	\N	63357	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_502	METABASE	502	Maddison Morar	\N	\N	Maddison	Morar	1567-1573 West Exchange Street	Akron	OH	\N	44313	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_503	METABASE	503	Devan Skiles	\N	\N	Devan	Skiles	3272-3348 Colorado Road	Pomona	KS	\N	66076	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_504	METABASE	504	Carlotta Kessler	\N	\N	Carlotta	Kessler	2315-2347 Pinewood Avenue	Greenfield	IA	\N	50849	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_505	METABASE	505	Isac Cole	\N	\N	Isac	Cole	4898 Clair Road	Millport	NY	\N	14864	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_506	METABASE	506	Lenore Cummerata	\N	\N	Lenore	Cummerata	3701-3841 14.5 Road	Escanaba	MI	\N	49829	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_507	METABASE	507	Ava Jaskolski	\N	\N	Ava	Jaskolski	16423 Star Barn Road North	Davenport	WA	\N	99122	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_508	METABASE	508	Breana Weber	\N	\N	Breana	Weber	21501 North Point Pleasant Road	Marietta	IL	\N	61459	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_509	METABASE	509	Ignatius Watsica	\N	\N	Ignatius	Watsica	311 Deerwood Lane	Brentwood	TN	\N	37027	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_51	METABASE	51	Alvah Wilderman	\N	\N	Alvah	Wilderman	21421 U.S. 82	Carrollton	MS	\N	38917	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_510	METABASE	510	Arnoldo Cronin	\N	\N	Arnoldo	Cronin	509 Roberts Terrace	Marshalltown	IA	\N	50158	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_511	METABASE	511	Lemuel Schamberger	\N	\N	Lemuel	Schamberger	6957-6999 Highway 10 Boulevard	Sutherland	IA	\N	51058	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_512	METABASE	512	Oliver Jacobs	\N	\N	Oliver	Jacobs	24523-25321 Arkansas 9	Paron	AR	\N	72122	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_513	METABASE	513	Loma Monahan	\N	\N	Loma	Monahan	11481 Shelbyville Road	Morrison	TN	\N	37357	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_514	METABASE	514	Glen Johnston	\N	\N	Glen	Johnston	4851-5197 Yeoman Road	Shepherd	MT	\N	59079	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_515	METABASE	515	Hassan Hansen	\N	\N	Hassan	Hansen	13009 Rock Hill Road	Dalhart	TX	\N	79022	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_516	METABASE	516	Aurelie Moore	\N	\N	Aurelie	Moore	1426-1498 Corporate Center Parkway	Santa Rosa	CA	\N	95407	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_517	METABASE	517	Blanche Rau	\N	\N	Blanche	Rau	N6698 East Long Lake Road	Wild Rose	WI	\N	54984	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_518	METABASE	518	Granville Gaylord	\N	\N	Granville	Gaylord	1821 V Drive South	Athens	MI	\N	49011	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_519	METABASE	519	Marcelle Rippin	\N	\N	Marcelle	Rippin	765 County Road 4426	Avery	TX	\N	75554	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_52	METABASE	52	Velma Little	\N	\N	Velma	Little	1110 Puckett Road	Auburn	GA	\N	30011	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_520	METABASE	520	Lamont Hoeger	\N	\N	Lamont	Hoeger	237 Mary Smith Hill Road	Livingston Manor	NY	\N	12758	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_521	METABASE	521	Ubaldo Becker	\N	\N	Ubaldo	Becker	300-398 Pishkun Road	Choteau	MT	\N	59422	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_522	METABASE	522	Theodore McGlynn	\N	\N	Theodore	McGlynn	5175 Road 1026	Froid	MT	\N	59226	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_523	METABASE	523	Deonte Hoeger	\N	\N	Deonte	Hoeger	3319 Main Boulder Road	Mc Leod	MT	\N	59052	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_524	METABASE	524	Naomi Jacobs	\N	\N	Naomi	Jacobs	18100 Duval Road	Moseley	VA	\N	23120	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_525	METABASE	525	Ethan Rutherford	\N	\N	Ethan	Rutherford	98 Ostby Drive	Superior	WI	\N	54880	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_526	METABASE	526	Tyrique Deckow	\N	\N	Tyrique	Deckow	20469-20731 South 1st Avenue	Pratt	KS	\N	67124	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_527	METABASE	527	Marjorie O'Conner	\N	\N	Marjorie	O'Conner	2743 Dane Ridge Road	Dow City	IA	\N	51528	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_528	METABASE	528	Jennyfer Hermiston	\N	\N	Jennyfer	Hermiston	4398 Buzzard Roost Road	Mountain Home	AR	\N	72653	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_529	METABASE	529	Haylie Johns	\N	\N	Haylie	Johns	12508-12998 County Road 22	Ovid	CO	\N	80744	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_53	METABASE	53	Nikolas Romaguera	\N	\N	Nikolas	Romaguera	1380 Juba Road	Pontotoc	MS	\N	38863	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_530	METABASE	530	Camila Kautzer	\N	\N	Camila	Kautzer	N8279 Wisconsin 49	Berlin	WI	\N	54923	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_531	METABASE	531	Dixie Adams	\N	\N	Dixie	Adams	22605 County Road 53	Uniontown	AL	\N	36786	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_532	METABASE	532	Barrett Brekke	\N	\N	Barrett	Brekke	573 Williamson Road	Burkburnett	TX	\N	76354	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_533	METABASE	533	Jennie Kuhlman	\N	\N	Jennie	Kuhlman	21-585 Haymaker Road	Harlowton	MT	\N	59036	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_534	METABASE	534	Lacey Balistreri	\N	\N	Lacey	Balistreri	34255 Harrisville Road	Calhan	CO	\N	80808	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_535	METABASE	535	Will Kozey	\N	\N	Will	Kozey	13149 Tulloch Dam Road	Jamestown	CA	\N	95327	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_536	METABASE	536	Daisha Boyer	\N	\N	Daisha	Boyer	1400 East 2 1/2 Road	Kingsley	MI	\N	49649	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_537	METABASE	537	Keith Rosenbaum	\N	\N	Keith	Rosenbaum	718-798 County Road 5141	Pettigrew	AR	\N	72752	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_538	METABASE	538	Charlie Bartoletti	\N	\N	Charlie	Bartoletti	N15535 Parkway Road	Athelstane	WI	\N	54104	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_539	METABASE	539	Daren Huels	\N	\N	Daren	Huels	47 Belus Road	Buffalo	WY	\N	82834	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_54	METABASE	54	Davin Stamm	\N	\N	Davin	Stamm	87245 590 Avenue	Waterbury	NE	\N	68785	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_540	METABASE	540	Mallory Kirlin	\N	\N	Mallory	Kirlin	50951 Burns Canyon Road	Pioneertown	CA	\N	92268	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_541	METABASE	541	Alycia Collins	\N	\N	Alycia	Collins	259 Highway 32 East	Leesburg	GA	\N	31763	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_542	METABASE	542	Gertrude Labadie	\N	\N	Gertrude	Labadie	439 Baughan Road	Woodland	NC	\N	27897	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_543	METABASE	543	Hadley Watsica	\N	\N	Hadley	Watsica	11 Quarry Road	Tannersville	NY	\N	12485	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_544	METABASE	544	Emmie Mertz	\N	\N	Emmie	Mertz	107 Old Comfort Road	Fredericksburg	TX	\N	78624	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_545	METABASE	545	Aylin Wisozk	\N	\N	Aylin	Wisozk	537 Silver Leaf Drive	Summerville	GA	\N	30747	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_546	METABASE	546	Richmond Bode	\N	\N	Richmond	Bode	11238 South Carolina 101	Gray Court	SC	\N	29645	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_547	METABASE	547	Sim Gusikowski	\N	\N	Sim	Gusikowski	183 Hopson Road	Bowie	TX	\N	76230	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_548	METABASE	548	Liliane Hayes	\N	\N	Liliane	Hayes	3734 North 800 West	Warsaw	IN	\N	46582	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_549	METABASE	549	Andy Rempel	\N	\N	Andy	Rempel	6085 South County Road A	Solon Springs	WI	\N	54873	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_55	METABASE	55	Holly Bayer	\N	\N	Holly	Bayer	373 Lee Loop Road	Union Springs	AL	\N	36089	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_550	METABASE	550	Kristoffer Keebler	\N	\N	Kristoffer	Keebler	4916 Rossburg Road	Fairbanks	AK	\N	99712	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_551	METABASE	551	Oceane Runte	\N	\N	Oceane	Runte	18100-18114 345th Avenue	Orient	SD	\N	57467	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_552	METABASE	552	Isidro Schuppe	\N	\N	Isidro	Schuppe	6642-7862 Chadwick Road	Chadwick	MO	\N	65629	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_553	METABASE	553	Briana Koss	\N	\N	Briana	Koss	52944-53578 County Road CC	Wray	CO	\N	80758	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_554	METABASE	554	Robin Rohan	\N	\N	Robin	Rohan	8970 Michel Lane	Waterloo	WI	\N	53594	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_555	METABASE	555	Coty Kertzmann	\N	\N	Coty	Kertzmann	906 Hidden Valley Lane	Weippe	ID	\N	83553	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_556	METABASE	556	Percy Padberg	\N	\N	Percy	Padberg	1304 Park Haven Court	Danville	IL	\N	61832	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_557	METABASE	557	Enola Bayer	\N	\N	Enola	Bayer	5377-5733 County Road 2000 South	Verona	IL	\N	60479	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_558	METABASE	558	Alexandria Schowalter	\N	\N	Alexandria	Schowalter	45 Middle Street	Valley	AL	\N	36854	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_559	METABASE	559	Aylin Haley	\N	\N	Aylin	Haley	4401 Riley Road	Terre Haute	IN	\N	47802	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_56	METABASE	56	Seth Willms	\N	\N	Seth	Willms	22842 County Road 15	Haxtun	CO	\N	80731	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_560	METABASE	560	Earl Erdman	\N	\N	Earl	Erdman	4346 Jones Lane	Preston	MD	\N	21655	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_561	METABASE	561	Brooks Shields	\N	\N	Brooks	Shields	13546 Fields-Denio Road	Fields	OR	\N	97710	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_562	METABASE	562	Samson Hauck	\N	\N	Samson	Hauck	5305 24th Street Southwest	Pine River	MN	\N	56474	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_563	METABASE	563	Tristin Lebsack	\N	\N	Tristin	Lebsack	919 Nebraska 4	Bladen	NE	\N	68928	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_564	METABASE	564	Lura Gutmann	\N	\N	Lura	Gutmann	2138 County Road F	Athens	WI	\N	54411	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_565	METABASE	565	Letha Streich	\N	\N	Letha	Streich	2142 Samaria Bend Road	Dyersburg	TN	\N	38024	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_566	METABASE	566	Jessy Spinka	\N	\N	Jessy	Spinka	45737-46099 52nd Street Northeast	Wilton	ND	\N	58579	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_567	METABASE	567	Rossie Mann	\N	\N	Rossie	Mann	16701-16899 County Road T	Boscobel	WI	\N	53805	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_568	METABASE	568	Jay Strosin	\N	\N	Jay	Strosin	1260 18th Lane Northeast	Power	MT	\N	59468	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_569	METABASE	569	Griffin Kling	\N	\N	Griffin	Kling	2-158 Simpson Lane	Maggie Valley	NC	\N	28751	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_57	METABASE	57	Jordy Haag	\N	\N	Jordy	Haag	35378 South Road	Kendrick	ID	\N	83537	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_570	METABASE	570	Zoila Armstrong	\N	\N	Zoila	Armstrong	1506-1508 Woodsdale Road	Wilmington	DE	\N	19809	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_571	METABASE	571	Micaela Ebert	\N	\N	Micaela	Ebert	31351 340th Street Northeast	Wing	ND	\N	58494	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_572	METABASE	572	Sheldon Braun	\N	\N	Sheldon	Braun	122 Deer Run Circle	Claxton	GA	\N	30417	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_573	METABASE	573	Rachelle Schmidt	\N	\N	Rachelle	Schmidt	4785 Indiana 14	Winamac	IN	\N	46996	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_574	METABASE	574	Jakob Hansen	\N	\N	Jakob	Hansen	16845 21st Street Southeast	Argusville	ND	\N	58005	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_575	METABASE	575	Demetris Carroll	\N	\N	Demetris	Carroll	3224 East Henrietta Road	Henrietta	NY	\N	14467	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_576	METABASE	576	Hulda Greenfelder	\N	\N	Hulda	Greenfelder	115 Tatley Road	Baker	MT	\N	59313	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_577	METABASE	577	Orion Wilkinson	\N	\N	Orion	Wilkinson	2565 East 850 North	Rome City	IN	\N	46784	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_578	METABASE	578	Estrella Goyette	\N	\N	Estrella	Goyette	1247 Highway 114	Hessmer	LA	\N	71341	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_579	METABASE	579	Austyn Klein	\N	\N	Austyn	Klein	605 Berry River Road	Barrington	NH	\N	3825	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_58	METABASE	58	Dawson Kovacek	\N	\N	Dawson	Kovacek	174 Kentucky 1554	Owensboro	KY	\N	42301	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_580	METABASE	580	Kitty Hilll	\N	\N	Kitty	Hilll	2247 Farm to Market 2828	Bandera	TX	\N	78003	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_581	METABASE	581	Quinten Goyette	\N	\N	Quinten	Goyette	20161 Paul Avenue	Worthington	MN	\N	56187	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_582	METABASE	582	Eriberto Cruickshank	\N	\N	Eriberto	Cruickshank	23317 East 1120 Road	Corn	OK	\N	73024	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_583	METABASE	583	Issac O'Kon	\N	\N	Issac	O'Kon	2800-2898 Grant Avenue	Hull	IA	\N	51239	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_584	METABASE	584	Nia Franecki	\N	\N	Nia	Franecki	1529-1603 330th Avenue	Charlotte	IA	\N	52731	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_585	METABASE	585	Stefan Reilly	\N	\N	Stefan	Reilly	5444-6392 Airbase Road	Mountain Home	ID	\N	83647	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_586	METABASE	586	Rosalyn Bauch	\N	\N	Rosalyn	Bauch	33530-33532 770th Street	Round Lake	MN	\N	56167	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_587	METABASE	587	Deven Bruen	\N	\N	Deven	Bruen	3696 Basinburg Road	Fort Loramie	OH	\N	45845	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_588	METABASE	588	Porter Tromp	\N	\N	Porter	Tromp	11022 Penderville Road	Weir	MS	\N	39772	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_589	METABASE	589	Lazaro Luettgen	\N	\N	Lazaro	Luettgen	7 Homestead Lane	Gorham	ME	\N	4038	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_59	METABASE	59	Hugh Hahn	\N	\N	Hugh	Hahn	3405 Brittain Road	Fort Garland	CO	\N	81133	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_590	METABASE	590	Cleo Ziemann	\N	\N	Cleo	Ziemann	901-999 Bluff Road	Joy	IL	\N	61260	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_591	METABASE	591	Dahlia Turner	\N	\N	Dahlia	Turner	24100-24998 423rd Avenue	Battle Lake	MN	\N	56515	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_592	METABASE	592	Manley Bogan	\N	\N	Manley	Bogan	77367 320th Street	Olivia	MN	\N	56277	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_593	METABASE	593	Christa Streich	\N	\N	Christa	Streich	711 Reservoir Road	Lunenburg	MA	\N	1462	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_594	METABASE	594	Marlon Howell	\N	\N	Marlon	Howell	372 Morgan Cemetery Road	Clyo	GA	\N	31303	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_595	METABASE	595	Darlene Rohan	\N	\N	Darlene	Rohan	3171-3339 Highway 66	Longmont	CO	\N	80504	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_596	METABASE	596	Dale Macejkovic	\N	\N	Dale	Macejkovic	23232-23998 Fir Avenue	Merrill	IA	\N	51038	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_597	METABASE	597	Stan Schaefer	\N	\N	Stan	Schaefer	14154 Eska Mine Road	Sutton-Alpine	AK	\N	99674	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_598	METABASE	598	Lon Friesen	\N	\N	Lon	Friesen	526 Rose Lane	Bedford	PA	\N	15522	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_599	METABASE	599	Ebba Christiansen	\N	\N	Ebba	Christiansen	30011 Covey Road	Leonidas	MI	\N	49066	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_6	METABASE	6	Rene Muller	\N	\N	Rene	Muller	1243 West Whitney Street	Morse	LA	\N	70559	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_60	METABASE	60	Edgardo Hackett	\N	\N	Edgardo	Hackett	1826 Paddle Creek Road	Fort Gay	WV	\N	25514	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_600	METABASE	600	Tatum Keeling	\N	\N	Tatum	Keeling	20001-20347 County Road 900 East	Sciota	IL	\N	61475	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_601	METABASE	601	Donavon Lowe	\N	\N	Donavon	Lowe	9914 South 475 East	Ferdinand	IN	\N	47532	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_602	METABASE	602	Kaela Kunze	\N	\N	Kaela	Kunze	2446 Glenn Highway	Glennallen	AK	\N	99588	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_603	METABASE	603	Shyanne Wyman	\N	\N	Shyanne	Wyman	2671 Lake Creek Road	Thermopolis	WY	\N	82443	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_604	METABASE	604	Carlee Champlin	\N	\N	Carlee	Champlin	220 Plevna Road	Plevna	MT	\N	59344	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_605	METABASE	605	Arturo Marquardt	\N	\N	Arturo	Marquardt	13132 205th Street	Dibble	OK	\N	73031	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_606	METABASE	606	Abdullah Balistreri	\N	\N	Abdullah	Balistreri	14-22 Norfolk Road	Sandisfield	MA	\N	1255	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_607	METABASE	607	Laurel Pfannerstill	\N	\N	Laurel	Pfannerstill	6600 Hat 6 Road	Casper	WY	\N	82609	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_608	METABASE	608	Melisa Grimes	\N	\N	Melisa	Grimes	1738-1884 Millpond Road	Fairlee	VT	\N	5045	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_609	METABASE	609	Opal Herman	\N	\N	Opal	Herman	10631 7th Lane	Athens	WI	\N	54411	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_61	METABASE	61	Lina Labadie	\N	\N	Lina	Labadie	7100 Hudson Chapel Road	Catawba	NC	\N	28609	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_610	METABASE	610	Melisa DuBuque	\N	\N	Melisa	DuBuque	42300-42398 211th Street	Iroquois	SD	\N	57353	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_611	METABASE	611	Brice Stark	\N	\N	Brice	Stark	23694 Sumac Avenue	Ute	IA	\N	51060	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_612	METABASE	612	Virginia Prohaska	\N	\N	Virginia	Prohaska	28-54 County Road 324	Iuka	MS	\N	38852	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_613	METABASE	613	Kaden Lakin	\N	\N	Kaden	Lakin	48000-48098 157th Street	Revillo	SD	\N	57259	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_614	METABASE	614	Geovanni Miller	\N	\N	Geovanni	Miller	3978 Merritt Road	Leakesville	MS	\N	39451	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_615	METABASE	615	Aubree Dibbert	\N	\N	Aubree	Dibbert	1034 Corolla Lane	Blue Springs	MS	\N	38828	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_616	METABASE	616	Rex Thiel	\N	\N	Rex	Thiel	50016 Moss Road	Amory	MS	\N	38821	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_617	METABASE	617	Isai Frami	\N	\N	Isai	Frami	36808 County Road 1	Idalia	CO	\N	80735	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_618	METABASE	618	Avis Dickinson	\N	\N	Avis	Dickinson	1550 Casa Sierra	Canyon Lake	TX	\N	78133	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_619	METABASE	619	Vince Balistreri	\N	\N	Vince	Balistreri	51789 Base Street	New Baltimore	MI	\N	48047	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_62	METABASE	62	Angelica Zulauf	\N	\N	Angelica	Zulauf	12055 Gandy Boulevard North	Saint Petersburg	FL	\N	33702	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_620	METABASE	620	Shyann Boehm	\N	\N	Shyann	Boehm	625 Depot Street	Greenland	MI	\N	49929	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_621	METABASE	621	Jazlyn Mohr	\N	\N	Jazlyn	Mohr	7151-7175 2nd Street Northeast	Carrington	ND	\N	58421	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_622	METABASE	622	Augusta Lueilwitz	\N	\N	Augusta	Lueilwitz	2500 Day Road	Loma	MT	\N	59460	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_623	METABASE	623	Olen Emmerich	\N	\N	Olen	Emmerich	213 Kelley Road	Caribou	ME	\N	4736	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_624	METABASE	624	Abbie Parisian	\N	\N	Abbie	Parisian	4730 Pilot Creek Lane	Pilot Hill	CA	\N	95664	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_625	METABASE	625	Bulah Eichmann	\N	\N	Bulah	Eichmann	49347 40th Avenue	Buffalo Center	IA	\N	50424	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_626	METABASE	626	Columbus Swaniawski	\N	\N	Columbus	Swaniawski	1252 Lyerly Dam Road	Lyerly	GA	\N	30730	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_627	METABASE	627	Efrain Spencer	\N	\N	Efrain	Spencer	155 Penrose Lane	Yerington	NV	\N	89447	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_628	METABASE	628	Leopoldo Schmeler	\N	\N	Leopoldo	Schmeler	695 Raleigh Creek Road	Monticello	KY	\N	42633	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_629	METABASE	629	Yessenia Pagac	\N	\N	Yessenia	Pagac	7150 Lower Sand Lick Road	West Liberty	KY	\N	41472	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_63	METABASE	63	Delilah Stoltenberg	\N	\N	Delilah	Stoltenberg	1725 300th Street	Spencer	IA	\N	51301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_630	METABASE	630	Felicia Runte	\N	\N	Felicia	Runte	30268-30270 County Road 61	Aguilar	CO	\N	81020	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_631	METABASE	631	Blanca Schiller	\N	\N	Blanca	Schiller	449 Black Creek Church Road	Mount Croghan	SC	\N	29727	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_632	METABASE	632	Ben Padberg	\N	\N	Ben	Padberg	13527 East 380 Road	Jay	OK	\N	74346	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_633	METABASE	633	Conrad Renner	\N	\N	Conrad	Renner	173-285 Old Waco Road	Temple	TX	\N	76502	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_634	METABASE	634	Oswaldo Heaney	\N	\N	Oswaldo	Heaney	413-993 North Platte River Road	Sedalia	CO	\N	80135	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_635	METABASE	635	Rahul Kreiger	\N	\N	Rahul	Kreiger	825 New York Road	Brooklyn	MS	\N	39425	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_636	METABASE	636	Danny Pollich	\N	\N	Danny	Pollich	615 Clay Run Road	Mill Run	PA	\N	15464	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_637	METABASE	637	Maximillian Zboncak	\N	\N	Maximillian	Zboncak	15-381 Juniper Road	Bremen	IN	\N	46506	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_638	METABASE	638	Lilian Roberts	\N	\N	Lilian	Roberts	12766 East 2000th Avenue	West York	IL	\N	62478	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_639	METABASE	639	Cortney Swift	\N	\N	Cortney	Swift	653-681 Kafir Lane	Burlington	KS	\N	66839	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_64	METABASE	64	Terrence Grimes	\N	\N	Terrence	Grimes	207 Grenadier Drive	DeRuyter	NY	\N	13052	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_640	METABASE	640	Rafael Nikolaus	\N	\N	Rafael	Nikolaus	173 Glenn Highway	Glennallen	AK	\N	99588	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_641	METABASE	641	Blaise Legros	\N	\N	Blaise	Legros	2648 Angus Road Southeast	Tenino	WA	\N	98589	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_642	METABASE	642	Sonny Beahan	\N	\N	Sonny	Beahan	850 South Sussex Court	Aurora	OH	\N	44202	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_643	METABASE	643	Darrick Sawayn	\N	\N	Darrick	Sawayn	78 Jensen Quarry Road	Roosevelt	WA	\N	99356	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_644	METABASE	644	Florida Hackett	\N	\N	Florida	Hackett	2785 Garden Prairie Road	Garden Prairie	IL	\N	61038	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_645	METABASE	645	Ike Sporer	\N	\N	Ike	Sporer	2021 North Road	Gilead	ME	\N	4217	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_646	METABASE	646	Leopold Beer	\N	\N	Leopold	Beer	7505 North Spades Road	Sunman	IN	\N	47041	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_647	METABASE	647	Alison Paucek	\N	\N	Alison	Paucek	1975 Wyatt's Windy Road	Anchorage	AK	\N	99587	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_648	METABASE	648	Mckenzie Walter	\N	\N	Mckenzie	Walter	12715 Chiniak Highway	Kodiak	AK	\N	99615	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_649	METABASE	649	Leanne Jacobs	\N	\N	Leanne	Jacobs	3001 Bonnie Mine Road	Bartow	FL	\N	33830	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_65	METABASE	65	Arne O'Hara	\N	\N	Arne	O'Hara	18630 Old Marcus Road	Howes	SD	\N	57748	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_650	METABASE	650	Gia Abernathy	\N	\N	Gia	Abernathy	23700 Indian Creek Road	Kadoka	SD	\N	57543	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_651	METABASE	651	Mallie Lang	\N	\N	Mallie	Lang	4893 North Ochoco Highway	Prineville	OR	\N	97754	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_652	METABASE	652	Kitty Kohler	\N	\N	Kitty	Kohler	823 Sussex Road	Kaycee	WY	\N	82639	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_653	METABASE	653	Shanie Spinka	\N	\N	Shanie	Spinka	2005 Longbranch	Alpine	TX	\N	79830	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_654	METABASE	654	Amya Turner	\N	\N	Amya	Turner	537 3400 Avenue	Abilene	KS	\N	67410	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_655	METABASE	655	Shirley Okuneva	\N	\N	Shirley	Okuneva	201 McBerney Road	Greene	NY	\N	13778	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_656	METABASE	656	Bettie Funk	\N	\N	Bettie	Funk	71 Off Highway	Springfield	SC	\N	29146	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_657	METABASE	657	Itzel Wunsch	\N	\N	Itzel	Wunsch	6001 Jalama Road	Lompoc	CA	\N	93436	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_658	METABASE	658	Amiya Purdy	\N	\N	Amiya	Purdy	1608-1798 North 500 East	Markle	IN	\N	46770	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_659	METABASE	659	Wilford Bauch	\N	\N	Wilford	Bauch	21-30 290th Avenue	Valentine	NE	\N	69201	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_66	METABASE	66	Gladys Dare	\N	\N	Gladys	Dare	6568 Pine Grove Road	Glenfield	NY	\N	13343	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_660	METABASE	660	Jacinto Price	\N	\N	Jacinto	Price	1075 South Draw Lane	Boulder	UT	\N	84716	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_661	METABASE	661	Moriah Ziemann	\N	\N	Moriah	Ziemann	10371 212th Avenue	Keldron	SD	\N	57634	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_662	METABASE	662	Magali Willms	\N	\N	Magali	Willms	349-359 Richardson Road	Leoma	TN	\N	38468	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_663	METABASE	663	Philip Fadel	\N	\N	Philip	Fadel	29161 North Parks Highway	Trapper Creek	AK	\N	99683	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_664	METABASE	664	Aidan Hagenes	\N	\N	Aidan	Hagenes	1659 Aspen Avenue	Villisca	IA	\N	50864	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_665	METABASE	665	Petra Roob	\N	\N	Petra	Roob	1018-1024 Harley Drive	East Bend	NC	\N	27018	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_666	METABASE	666	Andrew Carroll	\N	\N	Andrew	Carroll	6275 County Road 33	Craig	CO	\N	81625	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_667	METABASE	667	Isaac Schultz	\N	\N	Isaac	Schultz	27676-27698 Oak Ridge Road	Browerville	MN	\N	56438	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_668	METABASE	668	Rae Lindgren	\N	\N	Rae	Lindgren	1378-1390 Valley Road	Farwell	NE	\N	68838	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_669	METABASE	669	Dimitri Wisoky	\N	\N	Dimitri	Wisoky	33 Saint Andrews Lane	Glenmoore	PA	\N	19343	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_67	METABASE	67	Keyon Stroman	\N	\N	Keyon	Stroman	19 Riverfront Drive C Street	Chignik Lake	AK	\N	99548	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_670	METABASE	670	Syble Collier	\N	\N	Syble	Collier	195 Kornegay Road	De Queen	AR	\N	71832	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_671	METABASE	671	Hollie Schaefer	\N	\N	Hollie	Schaefer	791 East Eden Road	Great Falls	MT	\N	59405	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_672	METABASE	672	Robin Flatley	\N	\N	Robin	Flatley	238 Prewitt Road Extension	Pontotoc	MS	\N	38863	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_673	METABASE	673	Lorena Predovic	\N	\N	Lorena	Predovic	10601 Bartolotti Loop	Seffner	FL	\N	33584	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_674	METABASE	674	Evelyn Hahn	\N	\N	Evelyn	Hahn	1435 Rake Avenue	Goodell	IA	\N	50439	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_675	METABASE	675	Zelda Beatty	\N	\N	Zelda	Beatty	1313 Road G	York	NE	\N	68467	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_676	METABASE	676	Aditya Schoen	\N	\N	Aditya	Schoen	2511-2585 County Road 97	Muleshoe	TX	\N	79347	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_677	METABASE	677	Brown Blick	\N	\N	Brown	Blick	3151 Lashley Road	Alexander City	AL	\N	35010	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_678	METABASE	678	Laverne Stanton	\N	\N	Laverne	Stanton	3 3 Saints Avenue	Old Harbor	AK	\N	99643	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_679	METABASE	679	Theodora Mertz	\N	\N	Theodora	Mertz	1201-1245 320th Street	Britt	IA	\N	50423	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_68	METABASE	68	Colton Hauck	\N	\N	Colton	Hauck	449-499 County Road 400 West	Rockport	IN	\N	47635	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_680	METABASE	680	Alfonzo Hansen	\N	\N	Alfonzo	Hansen	1655 Oates Road	Tawas City	MI	\N	48763	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_681	METABASE	681	Myrtice Harris	\N	\N	Myrtice	Harris	2368 2nd New Hampshire Turnpike North	Deering	NH	\N	3244	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_682	METABASE	682	Annetta Predovic	\N	\N	Annetta	Predovic	14400 Bullard Road	Buffalo	IL	\N	62515	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_683	METABASE	683	Reuben Koelpin	\N	\N	Reuben	Koelpin	9832 Reams Road	South Fulton	TN	\N	38257	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_684	METABASE	684	Jacklyn Gorczany	\N	\N	Jacklyn	Gorczany	298 County 41 Northwest	Backus	MN	\N	56435	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_685	METABASE	685	Noel Tillman	\N	\N	Noel	Tillman	8565 Gratitude Trail	Plano	TX	\N	75024	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_686	METABASE	686	Dortha White	\N	\N	Dortha	White	5463 Carter Road	Floweree	MT	\N	59440	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_687	METABASE	687	Jamar Hickle	\N	\N	Jamar	Hickle	1104 Summer Street	Anaktuvuk Pass	AK	\N	99721	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_688	METABASE	688	Omari Homenick	\N	\N	Omari	Homenick	140-148 County Road 507	East Prairie	MO	\N	63845	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_689	METABASE	689	Fern Carter	\N	\N	Fern	Carter	4467 Wildway Road	Appomattox	VA	\N	24522	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_69	METABASE	69	Anibal Hansen	\N	\N	Anibal	Hansen	2508-2520 Hancock Avenue	Moville	IA	\N	51039	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_690	METABASE	690	Giovani Thompson	\N	\N	Giovani	Thompson	1-799 Smith Road	Brimfield	MA	\N	1010	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_691	METABASE	691	Don Bosco	\N	\N	Don	Bosco	4327 North Road	Red Bud	IL	\N	62278	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_692	METABASE	692	Janiya Lockman	\N	\N	Janiya	Lockman	14951 44th Lane Northwest	Williston	ND	\N	58801	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_693	METABASE	693	Margot Keeling	\N	\N	Margot	Keeling	298-1500 Miami Trace Road Northwest	Washington Court House	OH	\N	43160	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_694	METABASE	694	Unique Jerde	\N	\N	Unique	Jerde	500 Harvey Point Lane	Ewing	KY	\N	41039	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_695	METABASE	695	Nyasia Sporer	\N	\N	Nyasia	Sporer	1580 Honeycutt Road	Clinton	NC	\N	28328	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_696	METABASE	696	Aidan Rodriguez	\N	\N	Aidan	Rodriguez	701 Columbia Lane	Provo	UT	\N	84604	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_697	METABASE	697	Delta Jerde	\N	\N	Delta	Jerde	421 Russell Cave Road	Paris	KY	\N	40361	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_698	METABASE	698	Amanda Mosciski	\N	\N	Amanda	Mosciski	601-999 Center Street	Jessup	PA	\N	18434	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_699	METABASE	699	Brielle Kertzmann	\N	\N	Brielle	Kertzmann	6309 North 24th Street	Quincy	IL	\N	62305	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_7	METABASE	7	Roselyn Bosco	\N	\N	Roselyn	Bosco	630 Coaker Road	Leakesville	MS	\N	39451	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_70	METABASE	70	Maya Berge	\N	\N	Maya	Berge	84975 Nebraska 7	Ainsworth	NE	\N	69210	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_700	METABASE	700	Ezequiel Turcotte	\N	\N	Ezequiel	Turcotte	5764-5768 Carpenter Avenue West	Forest River	ND	\N	58233	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_701	METABASE	701	Pablo Lind	\N	\N	Pablo	Lind	4450 County Road 1707	Jacksonville	TX	\N	75766	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_702	METABASE	702	Nyasia Jakubowski	\N	\N	Nyasia	Jakubowski	1823 Northeast 55th Avenue	Portland	OR	\N	97213	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_703	METABASE	703	Lilliana Parker	\N	\N	Lilliana	Parker	187 Atkins Road	Roulette	PA	\N	16746	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_704	METABASE	704	Stanley Stanton	\N	\N	Stanley	Stanton	7705-8103 U.S. 77 Alternate	Goliad	TX	\N	77963	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_705	METABASE	705	Andres Kessler	\N	\N	Andres	Kessler	714 Heath Lane	Mayfield	KY	\N	42066	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_706	METABASE	706	Ladarius Hyatt	\N	\N	Ladarius	Hyatt	9998 Ambler Avenue	Ambler	AK	\N	99786	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_707	METABASE	707	Thad Kuvalis	\N	\N	Thad	Kuvalis	7947-7949 Harrington Flat Road	Kelseyville	CA	\N	95451	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_708	METABASE	708	Davin Jewess	\N	\N	Davin	Jewess	2779 Sunaire Avenue	Williams	AZ	\N	86046	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_709	METABASE	709	Erick O'Keefe	\N	\N	Erick	O'Keefe	44600 Brownlee-Oxbow Highway	Oxbow	OR	\N	97840	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_71	METABASE	71	Lillian Green	\N	\N	Lillian	Green	3801-4099 North Fork Highway	Cody	WY	\N	82414	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_710	METABASE	710	Kali Hodkiewicz	\N	\N	Kali	Hodkiewicz	2662 Sand Bar Road	Chuckey	TN	\N	37641	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_711	METABASE	711	Ciara Green	\N	\N	Ciara	Green	515-521 South Lambert Street	Brazil	IN	\N	47834	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_712	METABASE	712	Dalton Renner	\N	\N	Dalton	Renner	19916 Harvard Avenue	Warrensville Heights	OH	\N	44122	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_713	METABASE	713	Waldo Bartell	\N	\N	Waldo	Bartell	9613 East Mount Spokane Park Drive	Mead	WA	\N	99021	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_714	METABASE	714	Dakota Mante	\N	\N	Dakota	Mante	7864-7870 South 1600 East	Rexburg	ID	\N	83440	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_715	METABASE	715	Lafayette Kertzmann	\N	\N	Lafayette	Kertzmann	8505 County Road 57	Keenesburg	CO	\N	80643	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_716	METABASE	716	Ben Roob	\N	\N	Ben	Roob	37592 South Kilgore Road	Kilgore	NE	\N	69216	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_717	METABASE	717	Sarai Deckow	\N	\N	Sarai	Deckow	3438 West County Road 500 South	Clayton	IN	\N	46118	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_718	METABASE	718	Deon Gerlach	\N	\N	Deon	Gerlach	10001-10199 48th Street Northeast	Lakota	ND	\N	58344	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_719	METABASE	719	Odell McCullough	\N	\N	Odell	McCullough	871 Stanley Road	Two Harbors	MN	\N	55616	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_72	METABASE	72	Eula O'Connell	\N	\N	Eula	O'Connell	28367 Florida 69	Grand Ridge	FL	\N	32442	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_720	METABASE	720	German Ankunding	\N	\N	German	Ankunding	19000-19998 North 300 East Road	Flanagan	IL	\N	61740	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_721	METABASE	721	Charlene Bayer	\N	\N	Charlene	Bayer	33049 275th Street	Dallas	SD	\N	57529	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_722	METABASE	722	Leila Considine	\N	\N	Leila	Considine	562 Andrews Road	Harrison	NE	\N	69346	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_723	METABASE	723	Shany Turcotte	\N	\N	Shany	Turcotte	12490 Nevada 400	Imlay	NV	\N	89418	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_724	METABASE	724	Vito Haag	\N	\N	Vito	Haag	1468-1814 County Road S-45-122	Andrews	SC	\N	29510	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_725	METABASE	725	Sedrick Harvey	\N	\N	Sedrick	Harvey	617 Wheeler Creek Road	Big Timber	MT	\N	59011	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_726	METABASE	726	Abelardo Weissnat	\N	\N	Abelardo	Weissnat	31401-31799 Bryant Way Southwest	Albany	OR	\N	97321	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_727	METABASE	727	Cecelia Rolfson	\N	\N	Cecelia	Rolfson	1871 Buck Creek Road	Cottonwood Falls	KS	\N	66845	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_728	METABASE	728	Burnice Daugherty	\N	\N	Burnice	Daugherty	4957-4963 Dowd Road	West End	NC	\N	27376	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_729	METABASE	729	Maurice Rippin	\N	\N	Maurice	Rippin	72000-72999 400th Street	Bird Island	MN	\N	55310	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_73	METABASE	73	Stan Hessel	\N	\N	Stan	Hessel	28-50 Hawks Road	Shelburne Falls	MA	\N	1370	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_730	METABASE	730	Arielle Mitchell	\N	\N	Arielle	Mitchell	7494 Sunrise Road	Wausau	WI	\N	54403	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_731	METABASE	731	Eldon Herman	\N	\N	Eldon	Herman	59001-62733 Huerfano Meter Station Road	Fowler	CO	\N	81039	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_732	METABASE	732	Barry McKenzie	\N	\N	Barry	McKenzie	44915-44965 182nd Street	Hayti	SD	\N	57241	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_733	METABASE	733	Jerry Stracke	\N	\N	Jerry	Stracke	9301-9351 South Rangeline Road	Columbia	MO	\N	65201	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_734	METABASE	734	Weldon McLaughlin	\N	\N	Weldon	McLaughlin	81785 Sears Road	Creswell	OR	\N	97426	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_735	METABASE	735	Taryn Klocko	\N	\N	Taryn	Klocko	10 Olive Drive	Porterville	CA	\N	93257	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_736	METABASE	736	Valerie Davis	\N	\N	Valerie	Davis	540 Big Branch Hollow Road	Pembroke	VA	\N	24136	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_737	METABASE	737	Hipolito Kulas	\N	\N	Hipolito	Kulas	212 Hyde Road	Jay	ME	\N	4239	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_738	METABASE	738	Bonita Hoppe	\N	\N	Bonita	Hoppe	1648 Redwood Road	Kirkman	IA	\N	51447	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_739	METABASE	739	Catalina Smith	\N	\N	Catalina	Smith	R Love Joy Road	Troy	NC	\N	27371	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_74	METABASE	74	Jarret Marvin	\N	\N	Jarret	Marvin	350 East North Street	Rushville	IN	\N	46173	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_740	METABASE	740	Aida Cruickshank	\N	\N	Aida	Cruickshank	49055 Aberdeen Avenue	Baring	MO	\N	63531	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_741	METABASE	741	Marcelo Ferry	\N	\N	Marcelo	Ferry	1104 Summer Street	Anaktuvuk Pass	AK	\N	99721	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_742	METABASE	742	Garret Kulas	\N	\N	Garret	Kulas	4337 Sucker Creek Road	Black River	MI	\N	48721	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_743	METABASE	743	Stacy Considine	\N	\N	Stacy	Considine	34200 South Answer Creek Road	Talkeetna	AK	\N	99676	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_744	METABASE	744	Reid Reilly	\N	\N	Reid	Reilly	104 Carry Lane	Indian Lake	NY	\N	12812	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_745	METABASE	745	Kurtis Parker	\N	\N	Kurtis	Parker	37714 Owyhee Highway	Grand View	ID	\N	83624	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_746	METABASE	746	Andre Stamm	\N	\N	Andre	Stamm	444 28th Street	New Auburn	WI	\N	54757	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_747	METABASE	747	Lexi Adams	\N	\N	Lexi	Adams	23600 County Road 181	Bullard	TX	\N	75757	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_748	METABASE	748	Eden Jenkins	\N	\N	Eden	Jenkins	4422-4657 Mount Zion Road	Blacksburg	VA	\N	24060	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_749	METABASE	749	Melissa Cormier	\N	\N	Melissa	Cormier	656 Coyote Lane	Anderson	MO	\N	64831	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_75	METABASE	75	Isobel Fadel	\N	\N	Isobel	Fadel	30682 291st Street	Winner	SD	\N	57580	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_750	METABASE	750	Jermain Kohler	\N	\N	Jermain	Kohler	1434 Patten Coolidge Road	Thomasville	GA	\N	31757	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_751	METABASE	751	Eli Haag	\N	\N	Eli	Haag	56 10 Mile Road	Ashland	MT	\N	59003	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_752	METABASE	752	Vivianne Roob	\N	\N	Vivianne	Roob	371 Ball-Adams Road	Rhine	GA	\N	31077	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_753	METABASE	753	Rebekah Lueilwitz	\N	\N	Rebekah	Lueilwitz	870 Morris Creek Road	Andrews	NC	\N	28901	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_754	METABASE	754	Ellsworth Watsica	\N	\N	Ellsworth	Watsica	21636-23044 Chalk Creek Drive	Nathrop	CO	\N	81236	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_755	METABASE	755	Cedrick Kling	\N	\N	Cedrick	Kling	2870 Heart Butte Road	Heart Butte	MT	\N	59448	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_756	METABASE	756	Kennedi Waters	\N	\N	Kennedi	Waters	25651 440th Street	Staples	MN	\N	56479	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_757	METABASE	757	Teresa Hodkiewicz	\N	\N	Teresa	Hodkiewicz	10856-10872 Colorado 131	Bond	CO	\N	80423	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_758	METABASE	758	Dolly Bernhard	\N	\N	Dolly	Bernhard	1-1245 Lee Road 146	Marianna	AR	\N	72360	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_759	METABASE	759	Nicole Walker	\N	\N	Nicole	Walker	1430 Camp Road	Hubbardton	VT	\N	5733	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_76	METABASE	76	Amiya Considine	\N	\N	Amiya	Considine	600 Hight Moore Road	Noxapater	MS	\N	39346	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_760	METABASE	760	Louie Willms	\N	\N	Louie	Willms	2045-2099 North Fork Highway	Cody	WY	\N	82414	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_761	METABASE	761	Newton Klocko	\N	\N	Newton	Klocko	8945 Mississippi 35	Mize	MS	\N	39116	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_762	METABASE	762	Marc Schmitt	\N	\N	Marc	Schmitt	4-6 Berm Road	Delta Junction	AK	\N	99737	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_763	METABASE	763	Ezekiel McLaughlin	\N	\N	Ezekiel	McLaughlin	993 Bremen Road	Waldoboro	ME	\N	4572	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_764	METABASE	764	Ike Keebler	\N	\N	Ike	Keebler	2684 140 Street	Clarinda	IA	\N	51632	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_765	METABASE	765	Vicente Kessler	\N	\N	Vicente	Kessler	4144-4174 Cedar Avenue	West Bloomfield Township	MI	\N	48323	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_766	METABASE	766	Zula Boehm	\N	\N	Zula	Boehm	1100-1140 1100th Street	Iola	KS	\N	66749	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_767	METABASE	767	Clementina Johnston	\N	\N	Clementina	Johnston	5370 Oregon 201	Ontario	OR	\N	97914	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_768	METABASE	768	Schuyler Hills	\N	\N	Schuyler	Hills	1439 Old Stage Coach Road	Wyalusing	PA	\N	18853	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_769	METABASE	769	Maverick Roob	\N	\N	Maverick	Roob	169-303 Tenneco Road	Little America	WY	\N	82929	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_77	METABASE	77	Felipe Wilkinson	\N	\N	Felipe	Wilkinson	1436 Tom Cat Trail	London	KY	\N	40741	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_770	METABASE	770	Jay Bruen	\N	\N	Jay	Bruen	41643-41645 Stanciu Road	Richland	OR	\N	97870	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_771	METABASE	771	Kevon Morar	\N	\N	Kevon	Morar	11574 South Highway 16	Drumright	OK	\N	74030	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_772	METABASE	772	Santa Harvey	\N	\N	Santa	Harvey	17465 North Reservoir Road	Rathdrum	ID	\N	83858	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_773	METABASE	773	Willis Kuvalis	\N	\N	Willis	Kuvalis	17767-18027 Britto Road	Dos Palos	CA	\N	93620	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_774	METABASE	774	Celestino Bernhard	\N	\N	Celestino	Bernhard	8797-8799 43rd Street Southwest	Richardton	ND	\N	58652	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_775	METABASE	775	Osvaldo Steuber	\N	\N	Osvaldo	Steuber	18895 North Bluegrass Road	Martinsville	IL	\N	62442	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_776	METABASE	776	Clemens Hansen	\N	\N	Clemens	Hansen	1561 Holly Ridge	Delbarton	WV	\N	25670	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_777	METABASE	777	Mozell Frami	\N	\N	Mozell	Frami	133 New York 28	Forestport	NY	\N	13338	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_778	METABASE	778	Lavina Schultz	\N	\N	Lavina	Schultz	977 Harding Highway	Newfield	NJ	\N	8344	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_779	METABASE	779	Carrie Heidenreich	\N	\N	Carrie	Heidenreich	73606 342 Avenue	Wauneta	NE	\N	69045	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_78	METABASE	78	Keenan Schaefer	\N	\N	Keenan	Schaefer	4333 Madison Road	Three Forks	MT	\N	59752	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_780	METABASE	780	Fleta Leuschke	\N	\N	Fleta	Leuschke	18236 Liv 216	Chula	MO	\N	64635	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_781	METABASE	781	Muriel Labadie	\N	\N	Muriel	Labadie	6275 County Road 261	Zephyr	TX	\N	76890	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_782	METABASE	782	Iva Waelchi	\N	\N	Iva	Waelchi	13210 County Road 7480	Rolla	MO	\N	65401	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_783	METABASE	783	Shayne Crona	\N	\N	Shayne	Crona	1701 Lode Road	Judith Gap	MT	\N	59453	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_784	METABASE	784	Felton Keebler	\N	\N	Felton	Keebler	4243 County Road 6	Silas	AL	\N	36919	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_785	METABASE	785	Jewell Wolf	\N	\N	Jewell	Wolf	W1521 U.S. 8	Hawkins	WI	\N	54530	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_786	METABASE	786	Karine Mante	\N	\N	Karine	Mante	18315 Brenridge Drive	Brandy Station	VA	\N	22714	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_787	METABASE	787	Dina Wolf	\N	\N	Dina	Wolf	922 Rock Creek Road	Broxton	GA	\N	31519	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_788	METABASE	788	Conner Windler	\N	\N	Conner	Windler	18926-19804 County Road 42	Aguilar	CO	\N	81020	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_789	METABASE	789	Cierra Kuvalis	\N	\N	Cierra	Kuvalis	24915-24999 Fosters Bay Road	Hayes	SD	\N	57537	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_79	METABASE	79	Palma Volkman	\N	\N	Palma	Volkman	4797 Central Florida Parkway	Orlando	FL	\N	32821	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_790	METABASE	790	Eudora Renner	\N	\N	Eudora	Renner	800 Gold Mine Road	Grantville	GA	\N	30220	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_791	METABASE	791	Amina O'Reilly	\N	\N	Amina	O'Reilly	151 Attie Lee Lane	Sanford	NC	\N	27330	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_792	METABASE	792	Maximillia Ebert	\N	\N	Maximillia	Ebert	359-433 Kanetown Road	Tunnelton	WV	\N	26444	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_793	METABASE	793	Estrella Reichert	\N	\N	Estrella	Reichert	8762-8798 Quay Road C	Nara Visa	NM	\N	88430	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_794	METABASE	794	Elody Cormier	\N	\N	Elody	Cormier	440 Creed Road	Sandyville	WV	\N	25275	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_795	METABASE	795	Vada West	\N	\N	Vada	West	2860-3498 115th Road	Elm Creek	NE	\N	68836	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_796	METABASE	796	Giovanna Tillman	\N	\N	Giovanna	Tillman	N2496 County Road O	Endeavor	WI	\N	53930	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_797	METABASE	797	Gretchen Muller	\N	\N	Gretchen	Muller	10862 Mercer Pike	Meadville	PA	\N	16335	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_798	METABASE	798	Arden Jast	\N	\N	Arden	Jast	90 West Street	New Riegel	OH	\N	44853	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_799	METABASE	799	Eudora Greenholt	\N	\N	Eudora	Greenholt	24455 Korpal Valley Road	Arcadia	WI	\N	54612	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_8	METABASE	8	Aracely Jenkins	\N	\N	Aracely	Jenkins	1167 East 570th Avenue	Pittsburg	KS	\N	66762	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_80	METABASE	80	Wilhelm Willms	\N	\N	Wilhelm	Willms	101-1299 Mosley Street	Commerce	TX	\N	75428	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_800	METABASE	800	Ransom Murphy	\N	\N	Ransom	Murphy	1121 Georgia 46	Register	GA	\N	30452	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_801	METABASE	801	Lavon Mante	\N	\N	Lavon	Mante	19158 West Brady Road	Oakley	MI	\N	48649	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_802	METABASE	802	Lavada Kuhic	\N	\N	Lavada	Kuhic	40 Country Club Lane	Easton	CT	\N	6612	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_803	METABASE	803	Stewart Marks	\N	\N	Stewart	Marks	1212 County Road 3900	Lorenzo	TX	\N	79343	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_804	METABASE	804	Verna Davis	\N	\N	Verna	Davis	2821 Grand Coulee Road	Iota	LA	\N	70543	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_805	METABASE	805	Lewis Doyle	\N	\N	Lewis	Doyle	67000 Block Linden Road	Lakeville	IN	\N	46536	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_806	METABASE	806	Nichole Stanton	\N	\N	Nichole	Stanton	9151 Texas 36	Comanche	TX	\N	76442	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_807	METABASE	807	Juanita Altenwerth	\N	\N	Juanita	Altenwerth	568 Pine Crest Road	Columbus	MT	\N	59019	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_808	METABASE	808	Grady Raynor	\N	\N	Grady	Raynor	1888 Busby Road	Unadilla	GA	\N	31091	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_809	METABASE	809	Francesco Grant	\N	\N	Francesco	Grant	5697-5965 East Levering Road	Levering	MI	\N	49755	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_81	METABASE	81	Curt Baumbach	\N	\N	Curt	Baumbach	6913 168th Street Northeast	Arlington	WA	\N	98223	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_810	METABASE	810	Keon Dickinson	\N	\N	Keon	Dickinson	21492 County Road 19.5	Fort Morgan	CO	\N	80701	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_811	METABASE	811	Grant Breitenberg	\N	\N	Grant	Breitenberg	4783 Scr 406	Sonora	TX	\N	76950	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_812	METABASE	812	Vincenza Wunsch	\N	\N	Vincenza	Wunsch	1731-1753 Edgemont Drive	Camarillo	CA	\N	93010	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_813	METABASE	813	Roman Walker	\N	\N	Roman	Walker	291 County Road 428	Parkin	AR	\N	72373	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_814	METABASE	814	Miguel McGlynn	\N	\N	Miguel	McGlynn	201 Westboro Road	Grafton	MA	\N	1536	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_815	METABASE	815	Aniya Langosh	\N	\N	Aniya	Langosh	1104 Summer Street	Anaktuvuk Pass	AK	\N	99721	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_816	METABASE	816	Luisa Swaniawski	\N	\N	Luisa	Swaniawski	1047 Williams Road	Le Raysville	PA	\N	18829	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_817	METABASE	817	Nova Leuschke	\N	\N	Nova	Leuschke	340 Grover Hollow Road	Genesee	PA	\N	16923	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_818	METABASE	818	Eladio Parisian	\N	\N	Eladio	Parisian	1938 South Houston Lake Road	Kathleen	GA	\N	31047	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_819	METABASE	819	Jaime Hauck	\N	\N	Jaime	Hauck	510 Sassafras Trail	Ravenden Springs	AR	\N	72460	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_82	METABASE	82	Macy Olson	\N	\N	Macy	Olson	15079-15327 Readings Road	Siloam Springs	AR	\N	72761	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_820	METABASE	820	Garett Hegmann	\N	\N	Garett	Hegmann	282-298 Kendall Road	Blairs	VA	\N	24527	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_821	METABASE	821	Haylie Bosco	\N	\N	Haylie	Bosco	8712 Ohio 753	Greenfield	OH	\N	45123	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_822	METABASE	822	Morton Funk	\N	\N	Morton	Funk	32801-33307 Myers Road	Yoder	CO	\N	80864	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_823	METABASE	823	Pattie Gutkowski	\N	\N	Pattie	Gutkowski	1916 South 42nd Road	Talmage	NE	\N	68448	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_824	METABASE	824	Justine Olson	\N	\N	Justine	Olson	1150 Fieldstone Lane	Hollidaysburg	PA	\N	16648	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_825	METABASE	825	Milton Baumbach	\N	\N	Milton	Baumbach	40822-40854 140th Street	Groton	SD	\N	57445	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_826	METABASE	826	Jo Gusikowski	\N	\N	Jo	Gusikowski	8526-9194 East County Road 120	Midland	TX	\N	79706	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_827	METABASE	827	Idella Wehner	\N	\N	Idella	Wehner	6060 U.S. 82	Gainesville	TX	\N	76240	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_828	METABASE	828	Irma Waters	\N	\N	Irma	Waters	1625 Hudgins Highway	Summersville	KY	\N	42782	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_829	METABASE	829	Elva Herman	\N	\N	Elva	Herman	58232-58838 County Saint Aid Highway 12	Cosmos	MN	\N	56228	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_83	METABASE	83	Theresa Kertzmann	\N	\N	Theresa	Kertzmann	4 Hc 69	Chinook	MT	\N	59523	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_830	METABASE	830	Joshuah Gleichner	\N	\N	Joshuah	Gleichner	7220-7256 101st Street Northeast	Sarles	ND	\N	58372	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_831	METABASE	831	Marques Koch	\N	\N	Marques	Koch	7620 Swan Lake Road	Altheimer	AR	\N	72004	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_832	METABASE	832	Norberto Dach	\N	\N	Norberto	Dach	13125 Missouri 125	Garrison	MO	\N	65657	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_833	METABASE	833	Paxton Fay	\N	\N	Paxton	Fay	25000-25420 Emstad Road	Brainerd	MN	\N	56401	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_834	METABASE	834	Haleigh Bayer	\N	\N	Haleigh	Bayer	582 Bowgun Road	Terry	MT	\N	59349	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_835	METABASE	835	Gloria Conn	\N	\N	Gloria	Conn	24378 County Highway East	Cornell	WI	\N	54732	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_836	METABASE	836	Janet Stiedemann	\N	\N	Janet	Stiedemann	10086 Cache Creek Trail	Petersville	AK	\N	99688	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_837	METABASE	837	Bonita King	\N	\N	Bonita	King	845 County Road 102	Guffey	CO	\N	80820	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_838	METABASE	838	Kristina Little	\N	\N	Kristina	Little	4498 South 600 East	Oxford	IN	\N	47971	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_839	METABASE	839	Emelia Tromp	\N	\N	Emelia	Tromp	8255 V Road	Bedrock	CO	\N	81411	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_84	METABASE	84	Dorris Frami	\N	\N	Dorris	Frami	2787 North 300 East	Peru	IN	\N	46970	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_840	METABASE	840	Eusebio Eichmann	\N	\N	Eusebio	Eichmann	4005 203rd Avenue Northeast	Snohomish	WA	\N	98290	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_841	METABASE	841	Gudrun Blanda	\N	\N	Gudrun	Blanda	31675 Southwest Tongue Lane	Cornelius	OR	\N	97113	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_842	METABASE	842	Kieran Roob	\N	\N	Kieran	Roob	52191 Lucille Drive	Kenai	AK	\N	99611	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_843	METABASE	843	Zackery Kuhn	\N	\N	Zackery	Kuhn	2111 Davis School Road	Carter	MT	\N	59420	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_844	METABASE	844	Vida Crist	\N	\N	Vida	Crist	333 Dixon Springs Road	LaFayette	GA	\N	30728	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_845	METABASE	845	Antwon Steuber	\N	\N	Antwon	Steuber	1 Fox Lane	Sunflower	MS	\N	38778	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_846	METABASE	846	Janiya Emard	\N	\N	Janiya	Emard	165 High Rock Road	Raphine	VA	\N	24472	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_847	METABASE	847	Margarita Tromp	\N	\N	Margarita	Tromp	11350 Southeast Trego Road	Kincaid	KS	\N	66039	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_848	METABASE	848	Tressie Willms	\N	\N	Tressie	Willms	3370 Reserve Drive	Portage	IN	\N	46368	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_849	METABASE	849	Misael Beier	\N	\N	Misael	Beier	905 Moore Street	Bainbridge	GA	\N	39817	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_85	METABASE	85	Vernice Steuber	\N	\N	Vernice	Steuber	21-89 Lyons Hill Road	Gill	MA	\N	1354	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_850	METABASE	850	Carolanne Upton	\N	\N	Carolanne	Upton	267 Old Mountain Fork Road	New Market	AL	\N	35761	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_851	METABASE	851	Ryann Rice	\N	\N	Ryann	Rice	2550 South Locust Street	Canadian	TX	\N	79014	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_852	METABASE	852	Leon Labadie	\N	\N	Leon	Labadie	2430 Schipf Lane	Highwood	MT	\N	59450	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_853	METABASE	853	Jacinthe Howell	\N	\N	Jacinthe	Howell	4849 East Atwater Road	Minden City	MI	\N	48456	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_854	METABASE	854	Sigmund Mayer	\N	\N	Sigmund	Mayer	554-620 Alabama 6	Eufaula	AL	\N	36027	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_855	METABASE	855	Keshaun Carroll	\N	\N	Keshaun	Carroll	12090-12170 Pennsylvania 44	Allenwood	PA	\N	17810	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_856	METABASE	856	Laurie Sanford	\N	\N	Laurie	Sanford	11586 New York 39	Perrysburg	NY	\N	14129	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_857	METABASE	857	Rudy Larkin	\N	\N	Rudy	Larkin	12469 Grant Road	Caroline	WI	\N	54928	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_858	METABASE	858	Angie Hills	\N	\N	Angie	Hills	1006-1152 Convict Grade Road	Livingston	MT	\N	59047	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_859	METABASE	859	Julio Beatty	\N	\N	Julio	Beatty	630 Westfield Avenue	Westfield	NJ	\N	7090	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_86	METABASE	86	Oda Brakus	\N	\N	Oda	Brakus	17300 View Drive	Cottonwood	CA	\N	96022	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_860	METABASE	860	Lesly Fay	\N	\N	Lesly	Fay	14609 Wallace Road	McFarland	CA	\N	93250	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_861	METABASE	861	Dulce Conroy	\N	\N	Dulce	Conroy	230 County Road 995	Iuka	MS	\N	38852	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_862	METABASE	862	Electa Schroeder	\N	\N	Electa	Schroeder	8431 Montana 200	Plains	MT	\N	59859	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_863	METABASE	863	Paolo Kshlerin	\N	\N	Paolo	Kshlerin	12051 Louisiana 191	Noble	LA	\N	71462	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_864	METABASE	864	Gunnar Hilpert	\N	\N	Gunnar	Hilpert	2429 Academy Circle East	Kissimmee	FL	\N	34744	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_865	METABASE	865	Dagmar Sawayn	\N	\N	Dagmar	Sawayn	37054 Road 740a	Hayes Center	NE	\N	69032	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_866	METABASE	866	Maybelle Romaguera	\N	\N	Maybelle	Romaguera	9393 U.S. 93	Caliente	NV	\N	89008	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_867	METABASE	867	Jeffery Frami	\N	\N	Jeffery	Frami	218 Qigalik Avenue	Point Lay	AK	\N	99759	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_868	METABASE	868	Danny Oberbrunner	\N	\N	Danny	Oberbrunner	818 McAfee Lane	Salvisa	KY	\N	40372	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_869	METABASE	869	Candace Greenholt	\N	\N	Candace	Greenholt	321 Carolyn Lane	Italy	TX	\N	76651	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_87	METABASE	87	Heber Vandervort	\N	\N	Heber	Vandervort	9665 Pat Drive	Klamath Falls	OR	\N	97601	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_870	METABASE	870	Sigrid Denesik	\N	\N	Sigrid	Denesik	662-748 County Road 229	Toyah	TX	\N	79785	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_871	METABASE	871	Luis Mitchell	\N	\N	Luis	Mitchell	103 Thompson Lane	Big Timber	MT	\N	59011	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_872	METABASE	872	Cedrick Larkin	\N	\N	Cedrick	Larkin	251 State Road S-37-90	Westminster	SC	\N	29693	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_873	METABASE	873	Cory Tromp	\N	\N	Cory	Tromp	41616 U.S. 20	Johnstown	NE	\N	69214	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_874	METABASE	874	Johathan Ebert	\N	\N	Johathan	Ebert	4702 Texas 150	New Waverly	TX	\N	77358	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_875	METABASE	875	Trudie Muller	\N	\N	Trudie	Muller	5238 Northwest Conley Drive	Port St. Lucie	FL	\N	34986	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_876	METABASE	876	Laurie Greenholt	\N	\N	Laurie	Greenholt	5555 West Pettibone Road	Georgiana	AL	\N	36033	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_877	METABASE	877	Larry Paucek	\N	\N	Larry	Paucek	2679 Fruitvale Glendale Road	Fruitvale	ID	\N	83612	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_878	METABASE	878	Chanel Rippin	\N	\N	Chanel	Rippin	2072 Burkett Road	Clinton	KY	\N	42031	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_879	METABASE	879	Merle Moen	\N	\N	Merle	Moen	71375 I Road	Orleans	NE	\N	68966	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_88	METABASE	88	Breanne Schiller	\N	\N	Breanne	Schiller	2 Site 7	Hoopa	CA	\N	95546	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_880	METABASE	880	Domingo Waters	\N	\N	Domingo	Waters	192 Palomino Road	Carthage	NC	\N	28327	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_881	METABASE	881	Kaya Schoen	\N	\N	Kaya	Schoen	812 Louisiana 109	Starks	LA	\N	70661	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_882	METABASE	882	Geovanny Schuster	\N	\N	Geovanny	Schuster	500 Bob Moore Road	Winchester	OH	\N	45697	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_883	METABASE	883	Dennis McCullough	\N	\N	Dennis	McCullough	7912 Old State Road	Johannesburg	MI	\N	49751	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_884	METABASE	884	Daron Parker	\N	\N	Daron	Parker	2946 296th Street	Logan	IA	\N	51546	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_885	METABASE	885	Eldred Dietrich	\N	\N	Eldred	Dietrich	95 South Main Street	Cedar City	UT	\N	84720	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_886	METABASE	886	Howell Price	\N	\N	Howell	Price	10355 Gap Road	Ukiah	CA	\N	95482	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_887	METABASE	887	Osbaldo Lueilwitz	\N	\N	Osbaldo	Lueilwitz	500 Airport Road	Crooked Creek	AK	\N	99575	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_888	METABASE	888	Bud Bruen	\N	\N	Bud	Bruen	4105-4155 Newhouse Road	Ostrander	OH	\N	43061	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_889	METABASE	889	Thea Gottlieb	\N	\N	Thea	Gottlieb	3835 Lee Avenue	Wall Lake	IA	\N	51466	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_89	METABASE	89	Durward Ledner	\N	\N	Durward	Ledner	17779 Walnut Road	Brownsville	MN	\N	55919	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_890	METABASE	890	Loren Weimann	\N	\N	Loren	Weimann	14400-14498 377th Avenue	Mansfield	SD	\N	57460	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_891	METABASE	891	Destany Dietrich	\N	\N	Destany	Dietrich	46060 221st Street	Nunda	SD	\N	57050	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_892	METABASE	892	Muhammad Kub	\N	\N	Muhammad	Kub	345-457 Industrial Park Road	Oneonta	AL	\N	35121	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_893	METABASE	893	Audie Hane	\N	\N	Audie	Hane	11401-11799 Illinois 84	Savanna	IL	\N	61074	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_894	METABASE	894	Rosalinda Cronin	\N	\N	Rosalinda	Cronin	25470 Guenoc Valley Road	Middletown	CA	\N	95461	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_895	METABASE	895	Gage Stiedemann	\N	\N	Gage	Stiedemann	382 Moughmer Point Road	Cottonwood	ID	\N	83522	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_896	METABASE	896	Christophe Durgan	\N	\N	Christophe	Durgan	3422 Fairview Farm Road	Asheboro	NC	\N	27205	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_897	METABASE	897	Mya Aufderhar	\N	\N	Mya	Aufderhar	213 Wade's Lane	Nellysford	VA	\N	22958	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_898	METABASE	898	Cornelius Bogisich	\N	\N	Cornelius	Bogisich	344 County Highway 13	North Bangor	NY	\N	12966	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_899	METABASE	899	Samara Hegmann	\N	\N	Samara	Hegmann	12207-12499 Road 50	Gurley	NE	\N	69141	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_9	METABASE	9	Anais Ward	\N	\N	Anais	Ward	5816-5894 280th Street	Ida Grove	IA	\N	51445	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_90	METABASE	90	Scarlett Beahan	\N	\N	Scarlett	Beahan	2190 East Grand Avenue	Hot Springs	AR	\N	71901	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_900	METABASE	900	Kathryne Hoppe	\N	\N	Kathryne	Hoppe	15898 Elk Creek Road	New Underwood	SD	\N	57761	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_901	METABASE	901	Libbie Larkin	\N	\N	Libbie	Larkin	103 Moses Hill Road	Piermont	NH	\N	3779	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_902	METABASE	902	Anjali Parker	\N	\N	Anjali	Parker	2250 Saint Lawrence Street	Riverside	CA	\N	92504	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_903	METABASE	903	Felicity Greenfelder	\N	\N	Felicity	Greenfelder	9009 Farm to Market Road 339	Kosse	TX	\N	76653	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_904	METABASE	904	Tracey Denesik	\N	\N	Tracey	Denesik	12288-12364 260th Street	Adrian	MN	\N	56110	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_905	METABASE	905	Delfina Orn	\N	\N	Delfina	Orn	456 Dean Archer Road	Jonesborough	TN	\N	37659	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_906	METABASE	906	Dale Halvorson	\N	\N	Dale	Halvorson	8 Bison Hill Lane	Dixon	MT	\N	59831	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_907	METABASE	907	Louie Corkery	\N	\N	Louie	Corkery	37128 Norfolk Drive	Eldridge	MO	\N	65463	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_908	METABASE	908	Toby Yundt	\N	\N	Toby	Yundt	12719 Us Highway 287	Lander	WY	\N	82520	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_909	METABASE	909	Sophie Blanda	\N	\N	Sophie	Blanda	2715-2999 Northwest 110 Avenue	Cunningham	KS	\N	67035	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_91	METABASE	91	Myrtis Labadie	\N	\N	Myrtis	Labadie	292-386 County Road 206	Pecos	TX	\N	79772	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_910	METABASE	910	Jonas Von	\N	\N	Jonas	Von	590 Camp Creek Road	Wendover	KY	\N	41775	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_911	METABASE	911	Ivory McCullough	\N	\N	Ivory	McCullough	535 Arkansas 58	Melbourne	AR	\N	72556	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_912	METABASE	912	Rickie Vandervort	\N	\N	Rickie	Vandervort	112 Farm to Market Road 112	Lexington	TX	\N	78947	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_913	METABASE	913	Destiney Ortiz	\N	\N	Destiney	Ortiz	19426 Homedale Road	Caldwell	ID	\N	83607	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_914	METABASE	914	Alfonzo Casper	\N	\N	Alfonzo	Casper	25591 Clare Road	Clare	IL	\N	60111	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_915	METABASE	915	Dorian Predovic	\N	\N	Dorian	Predovic	3519 Attala Road 4163	Sallis	MS	\N	39160	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_916	METABASE	916	Everette Kuphal	\N	\N	Everette	Kuphal	3350-3398 7th Street Northwest	Coleharbor	ND	\N	58531	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_917	METABASE	917	Franco Sauer	\N	\N	Franco	Sauer	15587 U.S. 50	Coaldale	CO	\N	81222	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_918	METABASE	918	Margret Johnston	\N	\N	Margret	Johnston	21301-21397 349th Avenue	Ree Heights	SD	\N	57371	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_919	METABASE	919	Oscar Olson	\N	\N	Oscar	Olson	7001-7499 40th Street South	Moorhead	MN	\N	56560	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_92	METABASE	92	Tatyana Steuber	\N	\N	Tatyana	Steuber	29883 412th Avenue	Avon	SD	\N	57315	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_920	METABASE	920	Wilmer Volkman	\N	\N	Wilmer	Volkman	22979 Fishmarket Road	Tecumseh	OK	\N	74873	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_921	METABASE	921	Bryce Erdman	\N	\N	Bryce	Erdman	14388 County Road 2	Rush	CO	\N	80833	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_922	METABASE	922	Jeffry Grimes	\N	\N	Jeffry	Grimes	N10010 Mack Lake Road	Trego	WI	\N	54888	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_923	METABASE	923	Conrad King	\N	\N	Conrad	King	11 Easy Street	Lordsburg	NM	\N	88045	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_924	METABASE	924	Agnes Braun	\N	\N	Agnes	Braun	150 Erkhart Lane	Lucedale	MS	\N	39452	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_925	METABASE	925	Archibald Lowe	\N	\N	Archibald	Lowe	3300 West Pacific Avenue	Burbank	CA	\N	91505	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_926	METABASE	926	Burnice Doyle	\N	\N	Burnice	Doyle	702 Parks Ridge Road	Russell Springs	KY	\N	42642	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_927	METABASE	927	Laura Bahringer	\N	\N	Laura	Bahringer	605 Enfield Road	Arthur	NE	\N	69121	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_928	METABASE	928	Madyson Vandervort	\N	\N	Madyson	Vandervort	440 McClendon Drive	Trout	LA	\N	71371	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_929	METABASE	929	Winifred Runolfsson	\N	\N	Winifred	Runolfsson	8301-8355 105th Street Northwest	Portal	ND	\N	58772	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_93	METABASE	93	Broderick Wintheiser	\N	\N	Broderick	Wintheiser	25890 Holstein Avenue	Wasilla	AK	\N	99654	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_930	METABASE	930	Walker Harris	\N	\N	Walker	Harris	2808 County Road 3425 East	Farmer City	IL	\N	61842	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_931	METABASE	931	Maye Rath	\N	\N	Maye	Rath	162 Lawrence Road	Shaftsbury	VT	\N	5262	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_932	METABASE	932	Gaston Dicki	\N	\N	Gaston	Dicki	1083-1099 Broken Creek Road	Three Forks	MT	\N	59752	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_933	METABASE	933	Aurelio Parker	\N	\N	Aurelio	Parker	5631 FM 1624 Road	Lexington	TX	\N	78947	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_934	METABASE	934	Douglas Prosacco	\N	\N	Douglas	Prosacco	80 Hunter Lane	Salinas	CA	\N	93908	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_935	METABASE	935	Taryn Schoen	\N	\N	Taryn	Schoen	3730 22nd Street	Dorr	MI	\N	49323	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_936	METABASE	936	Jailyn Hickle	\N	\N	Jailyn	Hickle	1701-1791 27th Avenue	Rice Lake	WI	\N	54868	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_937	METABASE	937	Adonis Ritchie	\N	\N	Adonis	Ritchie	69369 Lee Road	Saint Clairsville	OH	\N	43950	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_938	METABASE	938	Heidi Glover	\N	\N	Heidi	Glover	505 Joey Street	Patterson	LA	\N	70392	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_939	METABASE	939	Coleman Beier	\N	\N	Coleman	Beier	3126-3312 Washington 25	Gifford	WA	\N	99131	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_94	METABASE	94	Armando Herzog	\N	\N	Armando	Herzog	11105 North Old Highway 97	Madras	OR	\N	97741	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_940	METABASE	940	Jude Ward	\N	\N	Jude	Ward	10844 County Farm Road	Lexington	MO	\N	64067	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_941	METABASE	941	Eduardo McKenzie	\N	\N	Eduardo	McKenzie	7654 County Road 121	Wharton	TX	\N	77488	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_942	METABASE	942	Lacy Gleichner	\N	\N	Lacy	Gleichner	3600-3680 Lincoln	Levelland	TX	\N	79336	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_943	METABASE	943	Phoebe Mann	\N	\N	Phoebe	Mann	373 Hidden Lane	Oriental	NC	\N	28571	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_944	METABASE	944	Hollis Rau	\N	\N	Hollis	Rau	10241 U.S. 12	Ismay	MT	\N	59336	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_945	METABASE	945	Madalyn Leuschke	\N	\N	Madalyn	Leuschke	2912 South Broad Street	Scottsboro	AL	\N	35769	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_946	METABASE	946	Jorge Bins	\N	\N	Jorge	Bins	3000-3914 Road 151	Grover Hill	OH	\N	45849	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_947	METABASE	947	Omer Powlowski	\N	\N	Omer	Powlowski	9591 Nevada Street	Indianola	IA	\N	50125	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_948	METABASE	948	Anderson Schinner	\N	\N	Anderson	Schinner	1981-2039 Spring Canyon Road	Douglas	WY	\N	82633	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_949	METABASE	949	Amanda Boehm	\N	\N	Amanda	Boehm	1362 Smith Woods Lane	Hickory Grove	SC	\N	29717	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_95	METABASE	95	Aurelie Spinka	\N	\N	Aurelie	Spinka	25611 South Carman Road	Cheney	WA	\N	99004	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_950	METABASE	950	Foster Gusikowski	\N	\N	Foster	Gusikowski	272 Farm to Market 684	Roaring Springs	TX	\N	79256	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_951	METABASE	951	Elsie Sanford	\N	\N	Elsie	Sanford	19471 East 1130 Road	Elk City	OK	\N	73644	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_952	METABASE	952	Joel Wyman	\N	\N	Joel	Wyman	2525 Kansas Street	Osceola	IA	\N	50213	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_953	METABASE	953	Rowan Weimann	\N	\N	Rowan	Weimann	7957-7959 County Road 142	Gatesville	TX	\N	76528	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_954	METABASE	954	Keyshawn Weimann	\N	\N	Keyshawn	Weimann	137-173 Pleasant Acres Trail	Piedmont	AL	\N	36272	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_955	METABASE	955	Torey Bahringer	\N	\N	Torey	Bahringer	3550 Grapevine Canyon Road	Inyokern	CA	\N	93527	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_956	METABASE	956	Ruby Bernier	\N	\N	Ruby	Bernier	N5705 Vans Road	Hilbert	WI	\N	54129	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_957	METABASE	957	Marta Langworth	\N	\N	Marta	Langworth	5201-5599 County Road 203	Hunnewell	MO	\N	63443	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_958	METABASE	958	Alisa Morissette	\N	\N	Alisa	Morissette	62000 Peach Road	La Grande	OR	\N	97850	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_959	METABASE	959	Joe Mills	\N	\N	Joe	Mills	2331-2399 East 2900 North Road	Twin Falls	ID	\N	83301	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_96	METABASE	96	Ayden Heller	\N	\N	Ayden	Heller	839 Bradley 60 Road	Hermitage	AR	\N	71647	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_960	METABASE	960	Angie Tremblay	\N	\N	Angie	Tremblay	3444 Wisconsin 133	Blue River	WI	\N	53518	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_961	METABASE	961	Josiah Jacobs	\N	\N	Josiah	Jacobs	77597 180th Street	Sacred Heart	MN	\N	56285	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_962	METABASE	962	Theresa Corkery	\N	\N	Theresa	Corkery	4098 East 13th Street	Ames	IA	\N	50010	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_963	METABASE	963	Cindy Witting	\N	\N	Cindy	Witting	30528 Old Saltworks Road	Meadowview	VA	\N	24361	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_964	METABASE	964	Lionel Hyatt	\N	\N	Lionel	Hyatt	3401-3499 Q R Bh	McAlister	NM	\N	88427	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_965	METABASE	965	Jaren Kertzmann	\N	\N	Jaren	Kertzmann	715 East Cedarville Road	Freeport	IL	\N	61032	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_966	METABASE	966	Ford Rolfson	\N	\N	Ford	Rolfson	86 Nye Way	Wilmington	NY	\N	12997	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_967	METABASE	967	Zoie Kozey	\N	\N	Zoie	Kozey	100 Old Cemetery Road	Chignik	AK	\N	99564	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_968	METABASE	968	Josiah Schimmel	\N	\N	Josiah	Schimmel	2755 Cooks Landing Road	Quincy	FL	\N	32351	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_969	METABASE	969	Dell Adams	\N	\N	Dell	Adams	663 Rockhouse Fork Road	Salyersville	KY	\N	41465	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_97	METABASE	97	Quentin Leannon	\N	\N	Quentin	Leannon	11821 West Lincoln Avenue	Fresno	CA	\N	93706	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_970	METABASE	970	Rosie Hagenes	\N	\N	Rosie	Hagenes	853 Abner Fork Road	Belcher	KY	\N	41513	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_971	METABASE	971	Angelica Sipes	\N	\N	Angelica	Sipes	2154 McConnell Pond Road	Brighton	VT	\N	5846	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_972	METABASE	972	Frederic Wehner	\N	\N	Frederic	Wehner	2101-2105 Slug Creek Road	Soda Springs	ID	\N	83276	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_973	METABASE	973	Kyra Lynch	\N	\N	Kyra	Lynch	15002 Sd Highway 20	Reva	SD	\N	57651	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_974	METABASE	974	Freida Doyle	\N	\N	Freida	Doyle	28000-28998 Hawaii Road	Ashley	IL	\N	62808	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_975	METABASE	975	Sidney Kling	\N	\N	Sidney	Kling	11501-11599 62nd Street Northeast	Adams	ND	\N	58210	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_976	METABASE	976	Consuelo Vandervort	\N	\N	Consuelo	Vandervort	2002 U.S. 70	Brinkley	AR	\N	72021	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_977	METABASE	977	Lillian Wiza	\N	\N	Lillian	Wiza	877 North 400 East Road	Milmine	IL	\N	61855	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_978	METABASE	978	Domenic Daugherty	\N	\N	Domenic	Daugherty	575 South 250th Street	Pittsburg	KS	\N	66762	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_979	METABASE	979	Janie O'Kon	\N	\N	Janie	O'Kon	5600-5698 Southwest 80th Street	Trenton	FL	\N	32693	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_98	METABASE	98	Lucas Beer	\N	\N	Lucas	Beer	2329 Jackson Fork Road	South Webster	OH	\N	45682	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_980	METABASE	980	Abelardo Purdy	\N	\N	Abelardo	Purdy	36087 South Rose Lake Road	Frazee	MN	\N	56544	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_981	METABASE	981	Jarvis Brekke	\N	\N	Jarvis	Brekke	664 Hidden Meadows Lane	Oakland	OR	\N	97462	\N	Twitter	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_982	METABASE	982	Maxime Stroman	\N	\N	Maxime	Stroman	4036 North 8000 Road East	Bourbonnais	IL	\N	60914	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_983	METABASE	983	Caroline Kreiger	\N	\N	Caroline	Kreiger	15674 Highway Nn	Bowling Green	MO	\N	63334	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_984	METABASE	984	Vicente Schaden	\N	\N	Vicente	Schaden	7963 Lime Kiln Drive	Neosho	MO	\N	64850	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_985	METABASE	985	Penelope Wilkinson	\N	\N	Penelope	Wilkinson	17502 East Blaine Road	Hunter	OK	\N	74640	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_986	METABASE	986	Oleta Hane	\N	\N	Oleta	Hane	2205 2nd Avenue	Columbus	GA	\N	31901	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_987	METABASE	987	Marvin Kris	\N	\N	Marvin	Kris	2200-2398 North Monterey Drive	Apache Junction	AZ	\N	85120	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_988	METABASE	988	Savannah Bradtke	\N	\N	Savannah	Bradtke	4002-4442 North Rucker Canyon Road	Elfrida	AZ	\N	85610	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_989	METABASE	989	Floyd Williamson	\N	\N	Floyd	Williamson	114 Heart Lane	Princeton	WV	\N	24739	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_99	METABASE	99	Alicia Cormier	\N	\N	Alicia	Cormier	2160 Settler Road	Craigmont	ID	\N	83523	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_990	METABASE	990	Paula Corkery	\N	\N	Paula	Corkery	22978 E0760 Road	Kellyville	OK	\N	74039	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_991	METABASE	991	Quincy Weber	\N	\N	Quincy	Weber	2017 County Road 61	Keenesburg	CO	\N	80643	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_992	METABASE	992	Cassidy Watsica	\N	\N	Cassidy	Watsica	120 North Fork Travis Creek Road	Clancy	MT	\N	59634	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_993	METABASE	993	Charles Murazik	\N	\N	Charles	Murazik	20101-20161 Lagoon Road	Lyman	NE	\N	69352	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_994	METABASE	994	Nikolas Hilpert	\N	\N	Nikolas	Hilpert	335 North Oak Avenue	Joplin	MO	\N	64801	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_995	METABASE	995	Efrain Trantow	\N	\N	Efrain	Trantow	1241 Deer Trail	Bishop	GA	\N	30621	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_996	METABASE	996	Raymundo Ruecker	\N	\N	Raymundo	Ruecker	1414 Holiday Drive	Carter Lake	IA	\N	51510	\N	Organic	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_997	METABASE	997	Savion Bogan	\N	\N	Savion	Bogan	400-498 County Road 100	Plainview	TX	\N	79072	\N	Affiliate	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_998	METABASE	998	Vallie Labadie	\N	\N	Vallie	Labadie	1062 Kamrin Lane	Valliant	OK	\N	74764	\N	Google	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	METABASE_PERSON_999	METABASE	999	Destini Deckow	\N	\N	Destini	Deckow	51 Williams Road	Newfane	VT	\N	5345	\N	Facebook	\N	\N	\N	\N	\N	\N	\N	2025-11-21 23:39:47.459689	\N	t
1	NORTHWIND_1	NORTHWIND	1	Customer NRZBB	Allen, Michael	Sales Representative	\N	\N	Obere Str. 0123	Berlin	N/A	Germany	10092	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_10	NORTHWIND	10	Customer EEALV	Bassols, Pilar Colome	Accounting Manager	\N	\N	8901 Tsawassen Blvd.	Tsawassen	BC	Canada	10111	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_11	NORTHWIND	11	Customer UBHAU	Jaffe, David	Sales Representative	\N	\N	Fauntleroy Circus 4567	London	N/A	UK	10064	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_12	NORTHWIND	12	Customer PSNMQ	Ray, Mike	Sales Agent	\N	\N	Cerrito 3456	Buenos Aires	N/A	Argentina	10057	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_13	NORTHWIND	13	Customer VMLOG	Benito, Almudena	Marketing Manager	\N	\N	Sierras de Granada 7890	México D.F.	N/A	Mexico	10056	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_14	NORTHWIND	14	Customer WNMAF	Jelitto, Jacek	Owner	\N	\N	Hauptstr. 0123	Bern	N/A	Switzerland	10065	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_15	NORTHWIND	15	Customer JUWXK	Richardson, Shawn	Sales Associate	\N	\N	Av. dos Lusíadas, 6789	Sao Paulo	SP	Brazil	10087	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_16	NORTHWIND	16	Customer GYBBY	Birkby, Dana	Sales Representative	\N	\N	Berkeley Gardens 0123 Brewery	London	N/A	UK	10039	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_17	NORTHWIND	17	Customer FEVNN	Jones, TiAnna	Order Administrator	\N	\N	Walserweg 4567	Aachen	N/A	Germany	10067	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_18	NORTHWIND	18	Customer BSVAR	Rizaldy, Arif	Owner	\N	\N	3456, rue des Cinquante Otages	Nantes	N/A	France	10041	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_19	NORTHWIND	19	Customer RFNQC	Boseman, Randall	Sales Agent	\N	\N	5678 King George	London	N/A	UK	10110	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_2	NORTHWIND	2	Customer MLTDN	Hassall, Mark	Owner	\N	\N	Avda. de la Constitución 5678	México D.F.	N/A	Mexico	10077	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_20	NORTHWIND	20	Customer THHDP	Kane, John	Sales Manager	\N	\N	Kirchgasse 9012	Graz	N/A	Austria	10059	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_21	NORTHWIND	21	Customer KIDPX	Russo, Giuseppe	Marketing Assistant	\N	\N	Rua Orós, 3456	Sao Paulo	SP	Brazil	10096	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_22	NORTHWIND	22	Customer DTDMN	Bueno, Janaina Burdan, Neville	Accounting Manager	\N	\N	C/ Moralzarzal, 5678	Madrid	N/A	Spain	10080	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_23	NORTHWIND	23	Customer WVFAF	Khanna, Karan	Assistant Sales Agent	\N	\N	4567, chaussée de Tournai	Lille	N/A	France	10048	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_24	NORTHWIND	24	Customer CYZTN	San Juan, Patricia	Owner	\N	\N	Åkergatan 5678	Bräcke	N/A	Sweden	10114	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_25	NORTHWIND	25	Customer AZJED	Carlson, Jason	Marketing Manager	\N	\N	Berliner Platz 9012	München	N/A	Germany	10091	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_26	NORTHWIND	26	Customer USDBG	Koch, Paul	Marketing Manager	\N	\N	9012, rue Royale	Nantes	N/A	France	10101	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_27	NORTHWIND	27	Customer WMFEA	Schmöllerl, Martin	Sales Representative	\N	\N	Via Monte Bianco 4567	Torino	N/A	Italy	10099	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_28	NORTHWIND	28	Customer XYUFB	Cavaglieri, Giorgio	Sales Manager	\N	\N	Jardim das rosas n. 8901	Lisboa	N/A	Portugal	10054	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_29	NORTHWIND	29	Customer MDLWA	Kolesnikova, Katerina	Marketing Manager	\N	\N	Rambla de Cataluña, 8901	Barcelona	N/A	Spain	10081	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_3	NORTHWIND	3	Customer KBUDE	Peoples, John	Owner	\N	\N	Mataderos  7890	México D.F.	N/A	Mexico	10097	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_30	NORTHWIND	30	Customer KSLQF	Shabalin, Rostislav	Sales Manager	\N	\N	C/ Romero, 1234	Sevilla	N/A	Spain	10075	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_31	NORTHWIND	31	Customer YJCBX	Cheng, Yao-Qiang	Sales Associate	\N	\N	Av. Brasil, 5678	Campinas	SP	Brazil	10128	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_32	NORTHWIND	32	Customer YSIQX	Krishnan, Venky	Marketing Manager	\N	\N	6789 Baker Blvd.	Eugene	OR	USA	10070	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_33	NORTHWIND	33	Customer FVXPQ	Sigurdarson, Hallur	Owner	\N	\N	5ª Ave. Los Palos Grandes 3456	Caracas	DF	Venezuela	10043	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_34	NORTHWIND	34	Customer IBVRG	Cohen, Shy	Accounting Manager	\N	\N	Rua do Paço, 7890	Rio de Janeiro	RJ	Brazil	10076	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_35	NORTHWIND	35	Customer UMTLM	Langohr, Kris	Sales Representative	\N	\N	Carrera 1234 con Ave. Carlos Soublette #8-35	San Cristóbal	Táchira	Venezuela	10066	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_36	NORTHWIND	36	Customer LVJSO	Smith, Denise	Sales Representative	\N	\N	City Center Plaza 2345 Main St.	Elgin	OR	USA	10103	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_37	NORTHWIND	37	Customer FRXZL	Crăciun, Ovidiu V.	Sales Associate	\N	\N	9012 Johnstown Road	Cork	Co. Cork	Ireland	10051	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_38	NORTHWIND	38	Customer LJUCA	Lee, Frank	Marketing Manager	\N	\N	Garden House Crowther Way 3456	Cowes	Isle of Wight	UK	10063	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_39	NORTHWIND	39	Customer GLLAG	Song, Lolan	Sales Associate	\N	\N	Maubelstr. 8901	Brandenburg	N/A	Germany	10060	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_4	NORTHWIND	4	Customer HFBZG	Arndt, Torsten	Sales Representative	\N	\N	7890 Hanover Sq.	London	N/A	UK	10046	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_40	NORTHWIND	40	Customer EFFTC	De Oliveira, Jose	Sales Representative	\N	\N	2345, avenue de l'Europe	Versailles	N/A	France	10108	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_41	NORTHWIND	41	Customer XIIWM	Litton, Tim	Sales Manager	\N	\N	3456 rue Alsace-Lorraine	Toulouse	N/A	France	10053	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_42	NORTHWIND	42	Customer IAIJK	Steiner, Dominik	Marketing Assistant	\N	\N	2345 Oak St.	Vancouver	BC	Canada	10098	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_43	NORTHWIND	43	Customer UISOJ	Deshpande, Anu	Marketing Manager	\N	\N	8901 Orchestra Terrace	Walla Walla	WA	USA	10069	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_44	NORTHWIND	44	Customer OXFRU	Louverdis, George	Sales Representative	\N	\N	Magazinweg 8901	Frankfurt a.M.	N/A	Germany	10095	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_45	NORTHWIND	45	Customer QXPPT	Sunkammurali,  Krishna	Owner	\N	\N	1234 Polk St. Suite 5	San Francisco	CA	USA	10062	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_46	NORTHWIND	46	Customer XPNIK	Dressler, Marlies	Accounting Manager	\N	\N	Carrera 7890 con Ave. Bolívar #65-98 Llano Largo	Barquisimeto	Lara	Venezuela	10093	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_47	NORTHWIND	47	Customer PSQUZ	Lupu, Cornel	Owner	\N	\N	Ave. 5 de Mayo Porlamar 5678	I. de Margarita	Nueva Esparta	Venezuela	10121	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_48	NORTHWIND	48	Customer DVFMB	Szymczak, Radosław	Sales Manager	\N	\N	9012 Chiaroscuro Rd.	Portland	OR	USA	10073	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_49	NORTHWIND	49	Customer CQRAA	Duerr, Bernard	Marketing Manager	\N	\N	Via Ludovico il Moro 6789	Bergamo	N/A	Italy	10106	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_5	NORTHWIND	5	Customer HGVLZ	Higginbotham, Tom	Order Administrator	\N	\N	Berguvsvägen  5678	Luleå	N/A	Sweden	10112	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_50	NORTHWIND	50	Customer JYPSC	Mace, Donald	Sales Agent	\N	\N	Rue Joseph-Bens 0123	Bruxelles	N/A	Belgium	10074	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_51	NORTHWIND	51	Customer PVDZC	Taylor, Maurice	Marketing Assistant	\N	\N	8901 rue St. Laurent	Montréal	Québec	Canada	10040	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_52	NORTHWIND	52	Customer PZNLA	Dupont-Roc, Patrice	Marketing Assistant	\N	\N	Heerstr. 4567	Leipzig	N/A	Germany	10125	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_53	NORTHWIND	53	Customer GCJSG	Mallit, Ken	Sales Associate	\N	\N	South House 1234 Queensbridge	London	N/A	UK	10061	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_54	NORTHWIND	54	Customer TDKEG	Tiano, Mike	Sales Agent	\N	\N	Ing. Gustavo Moncada 0123 Piso 20-A	Buenos Aires	N/A	Argentina	10094	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_55	NORTHWIND	55	Customer KZQZT	Egelund-Muller, Anja	Sales Representative	\N	\N	7890 Bering St.	Anchorage	AK	USA	10050	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_56	NORTHWIND	56	Customer QNIVZ	Marinova, Nadejda	Owner	\N	\N	Mehrheimerstr. 9012	Köln	N/A	Germany	10047	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_57	NORTHWIND	57	Customer WVAXS	Tollevsen, Bjørn	Owner	\N	\N	5678, boulevard Charonne	Paris	N/A	France	10085	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_58	NORTHWIND	58	Customer AHXHT	Fakhouri, Fadi	Sales Representative	\N	\N	Calle Dr. Jorge Cash 8901	México D.F.	N/A	Mexico	10116	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_59	NORTHWIND	59	Customer LOLJO	Meston, Tosh	Sales Manager	\N	\N	Geislweg 2345	Salzburg	N/A	Austria	10127	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_6	NORTHWIND	6	Customer XHXJV	Poland, Carole	Sales Representative	\N	\N	Forsterstr. 7890	Mannheim	N/A	Germany	10117	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_60	NORTHWIND	60	Customer QZURI	Uppal, Sunil	Sales Representative	\N	\N	Estrada da saúde n. 6789	Lisboa	N/A	Portugal	10083	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_61	NORTHWIND	61	Customer WULWD	Florczyk, Krzysztof	Accounting Manager	\N	\N	Rua da Panificadora, 1234	Rio de Janeiro	RJ	Brazil	10115	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_62	NORTHWIND	62	Customer WFIZJ	Misiec, Anna	Marketing Assistant	\N	\N	Alameda dos Canàrios, 1234	Sao Paulo	SP	Brazil	10102	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_63	NORTHWIND	63	Customer IRRVL	Veronesi, Giorgio	Accounting Manager	\N	\N	Taucherstraße 1234	Cunewalde	N/A	Germany	10126	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_64	NORTHWIND	64	Customer LWGMD	Gaffney, Lawrie	Sales Representative	\N	\N	Av. del Libertador 3456	Buenos Aires	N/A	Argentina	10124	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_65	NORTHWIND	65	Customer NYUHS	Moore, Michael	Assistant Sales Representative	\N	\N	6789 Milton Dr.	Albuquerque	NM	USA	10109	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_66	NORTHWIND	66	Customer LHANT	Voss, Florian	Sales Associate	\N	\N	Strada Provinciale 7890	Reggio Emilia	N/A	Italy	10038	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_67	NORTHWIND	67	Customer QVEPD	Garden, Euan	Assistant Sales Agent	\N	\N	Av. Copacabana, 6789	Rio de Janeiro	RJ	Brazil	10052	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_68	NORTHWIND	68	Customer CCKOT	Myrcha, Jacek	Sales Manager	\N	\N	Grenzacherweg 0123	Genève	N/A	Switzerland	10122	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_69	NORTHWIND	69	Customer SIUIH	Watters, Jason M.	Accounting Manager	\N	\N	Gran Vía, 4567	Madrid	N/A	Spain	10071	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_7	NORTHWIND	7	Customer QXVLA	Bansal, Dushyant	Marketing Manager	\N	\N	2345, place Kléber	Strasbourg	N/A	France	10089	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_70	NORTHWIND	70	Customer TMXGN	Ginters, Kaspars	Owner	\N	\N	Erling Skakkes gate 2345	Stavern	N/A	Norway	10123	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_71	NORTHWIND	71	Customer LCOUJ	Navarro, Tomás	Sales Representative	\N	\N	9012 Suffolk Ln.	Boise	ID	USA	10078	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_72	NORTHWIND	72	Customer AHPOP	Welcker, Brian	Sales Manager	\N	\N	4567 Wadhurst Rd.	London	N/A	UK	10088	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_73	NORTHWIND	73	Customer JMIKW	Gonzalez, Nuria	Owner	\N	\N	Vinbæltet 3456	Kobenhavn	N/A	Denmark	10079	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_74	NORTHWIND	74	Customer YSHXL	O’Brien, Dave	Marketing Manager	\N	\N	9012, rue Lauriston	Paris	N/A	France	10058	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_75	NORTHWIND	75	Customer XOJYP	Wojciechowska, Agnieszka	Sales Manager	\N	\N	P.O. Box 1234	Lander	WY	USA	10113	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_76	NORTHWIND	76	Customer SFOGW	Gulbis, Katrin	Accounting Manager	\N	\N	Boulevard Tirou, 2345	Charleroi	N/A	Belgium	10100	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_77	NORTHWIND	77	Customer LCYBZ	Osorio, Cristian	Marketing Manager	\N	\N	2345 Jefferson Way Suite 2	Portland	OR	USA	10042	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_78	NORTHWIND	78	Customer NLTYP	Young, Robin	Marketing Assistant	\N	\N	0123 Grizzly Peak Rd.	Butte	MT	USA	10107	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_79	NORTHWIND	79	Customer FAPSM	Wickham, Jim	Marketing Manager	\N	\N	Luisenstr. 0123	Münster	N/A	Germany	10118	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_8	NORTHWIND	8	Customer QUHWH	Ilyina, Julia	Owner	\N	\N	C/ Araquil, 0123	Madrid	N/A	Spain	10104	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_80	NORTHWIND	80	Customer VONTK	Geschwandtner, Jens	Owner	\N	\N	Avda. Azteca 4567	México D.F.	N/A	Mexico	10044	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_81	NORTHWIND	81	Customer YQQWW	Nagel, Jean-Philippe	Sales Representative	\N	\N	Av. Inês de Castro, 1234	Sao Paulo	SP	Brazil	10120	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_82	NORTHWIND	82	Customer EYHKM	Veninga, Tjeerd	Sales Associate	\N	\N	1234 DaVinci Blvd.	Kirkland	WA	USA	10119	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_83	NORTHWIND	83	Customer ZRNDE	Fonteneau, Karl	Sales Manager	\N	\N	Smagsloget 3456	Århus	N/A	Denmark	10090	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_84	NORTHWIND	84	Customer NRCSK	Tuntisangaroon, Sittichai	Sales Agent	\N	\N	6789, rue du Commerce	Lyon	N/A	France	10072	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_85	NORTHWIND	85	Customer ENQZT	McLin, Nkenge	Accounting Manager	\N	\N	5678 rue de l'Abbaye	Reims	N/A	France	10082	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_86	NORTHWIND	86	Customer SNXOJ	Syamala, Manoj	Sales Representative	\N	\N	Adenauerallee 7890	Stuttgart	N/A	Germany	10086	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_87	NORTHWIND	87	Customer ZHYOS	Ludwig, Michael	Accounting Manager	\N	\N	Torikatu 9012	Oulu	N/A	Finland	10045	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_88	NORTHWIND	88	Customer SRQVM	Li, Yan	Sales Manager	\N	\N	Rua do Mercado, 4567	Resende	SP	Brazil	10084	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_89	NORTHWIND	89	Customer YBQTI	Smith Jr., Ronaldo	Owner	\N	\N	8901 - 14th Ave. S. Suite 3B	Seattle	WA	USA	10049	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_9	NORTHWIND	9	Customer RTXGC	Raghav, Amritansh	Owner	\N	\N	6789, rue des Bouchers	Marseille	N/A	France	10105	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_90	NORTHWIND	90	Customer XBBVR	Larsson, Katarina	Owner/Marketing Assistant	\N	\N	Keskuskatu 2345	Helsinki	N/A	Finland	10055	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
1	NORTHWIND_91	NORTHWIND	91	Customer CCFIZ	Conn, Steve	Owner	\N	\N	ul. Filtrowa 6789	Warszawa	N/A	Poland	10068	\N	\N	\N	\N	\N	\N	2025-11-22 06:05:18.589022-03	\N	\N	1975-11-21 20:59:05.569474	\N	t
\.


-- Completed on 2025-11-22 06:18:30

--
-- PostgreSQL database dump complete
--

