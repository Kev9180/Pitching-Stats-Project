--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

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
-- Name: city; Type: TABLE; Schema: public; Owner: kev9180
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name text NOT NULL,
    city_population integer
);


ALTER TABLE public.city OWNER TO kev9180;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: kev9180
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.city_city_id_seq OWNER TO kev9180;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kev9180
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: pitcher; Type: TABLE; Schema: public; Owner: kev9180
--

CREATE TABLE public.pitcher (
    player_id integer NOT NULL,
    last_name text NOT NULL,
    first_name text NOT NULL,
    innings_pitched numeric,
    strikeouts_percentage numeric,
    wins integer,
    losses integer,
    era numeric,
    team_id integer
);


ALTER TABLE public.pitcher OWNER TO kev9180;

--
-- Name: stadium; Type: TABLE; Schema: public; Owner: kev9180
--

CREATE TABLE public.stadium (
    stadium_id integer NOT NULL,
    stadium_name text NOT NULL,
    stadium_type text,
    city_id integer
);


ALTER TABLE public.stadium OWNER TO kev9180;

--
-- Name: stadium_stadium_id_seq; Type: SEQUENCE; Schema: public; Owner: kev9180
--

CREATE SEQUENCE public.stadium_stadium_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stadium_stadium_id_seq OWNER TO kev9180;

--
-- Name: stadium_stadium_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kev9180
--

ALTER SEQUENCE public.stadium_stadium_id_seq OWNED BY public.stadium.stadium_id;


--
-- Name: team; Type: TABLE; Schema: public; Owner: kev9180
--

CREATE TABLE public.team (
    team_id integer NOT NULL,
    team_name text NOT NULL,
    stadium_id integer
);


ALTER TABLE public.team OWNER TO kev9180;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: kev9180
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_team_id_seq OWNER TO kev9180;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kev9180
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team.team_id;


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: stadium stadium_id; Type: DEFAULT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.stadium ALTER COLUMN stadium_id SET DEFAULT nextval('public.stadium_stadium_id_seq'::regclass);


--
-- Name: team team_id; Type: DEFAULT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.team ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: kev9180
--

COPY public.city (city_id, city_name, city_population) FROM stdin;
1	Los Angeles	3822000
2	San Francisco	808437
3	San Diego	909824
4	Phoenix	1644000
5	Denver	713252
6	Oakland	430553
7	Anaheim	344461
8	Seattle	759915
9	Arlington	394602
10	Houston	2303000
11	St. Louis	286578
12	Cincinnati	390513
13	Milwaukee	563305
14	Pittsburgh	302898
15	Cleveland	361607
16	Detroit	620376
17	Chicago	2665000
18	Minneapolis	425096
19	Kansas City	509297
20	Philadelphia	1567000
21	New York City	8336000
22	Washington D.C.	671803
23	Atlanta	499127
24	Miami	449514
25	St. Petersburg	261256
26	Boston	650706
27	Baltimore	569931
28	Toronto	2930000
30	Test City	100000
\.


--
-- Data for Name: pitcher; Type: TABLE DATA; Schema: public; Owner: kev9180
--

COPY public.pitcher (player_id, last_name, first_name, innings_pitched, strikeouts_percentage, wins, losses, era, team_id) FROM stdin;
450203	Morton	 Charlie	165.1	23.8	8	10	4.19	24
458681	Lynn	 Lance	117.1	21.3	7	4	3.84	12
500779	Quintana	 Jose	170.1	18.8	10	10	3.75	22
502043	Gibson	 Kyle	169.2	20.9	8	8	4.24	12
519242	Sale	 Chris	177.2	32.1	18	3	2.38	24
527048	Pérez	 Martín	135	18.1	5	6	4.53	3
542881	Anderson	 Tyler	179.1	18.6	10	15	3.81	7
543135	Eovaldi	 Nathan	170.2	23.9	12	8	3.8	9
543243	Gray	 Sonny	166.1	30.3	13	9	3.84	12
543294	Hendricks	 Kyle	130.2	15.3	4	12	5.92	11
544150	Suárez	 Albert	133.2	19.1	9	7	3.7	28
547179	Lorenzen	 Michael	130.1	18.1	7	6	3.31	20
554430	Wheeler	 Zack	200	28.5	16	7	2.57	21
571578	Corbin	 Patrick	174.2	18.2	6	13	5.62	23
571760	Heaney	 Andrew	160	22.9	5	14	4.28	9
571945	Mikolas	 Miles	171.2	16.9	10	11	5.35	12
573186	Stroman	 Marcus	154.2	16.7	10	9	4.31	29
579328	Kikuchi	 Yusei	175.2	28	9	10	4.05	10
592332	Gausman	 Kevin	181	21.4	14	11	3.83	30
592791	Taillon	 Jameson	165.1	18.5	12	8	3.27	11
593423	Montas	 Frankie	150.2	22.6	7	11	4.84	14
594902	Lively	 Ben	151	18.7	13	10	3.81	16
596295	Gomber	 Austin	165	16.7	5	12	4.75	5
601713	Pivetta	 Nick	145.2	28.9	6	12	4.14	27
605135	Bassitt	 Chris	171	22.2	10	14	4.16	30
605400	Nola	 Aaron	199.1	24	14	8	3.57	21
607067	Rea	 Colin	167.2	18.9	12	6	4.29	14
607074	Rodón	 Carlos	175	26.5	16	9	3.96	29
607192	Glasnow	 Tyler	134	32.2	9	6	3.49	1
607200	Fedde	 Erick	177.1	21.2	9	9	3.3	12
607259	Martinez	 Nick	142.1	20.4	10	7	3.1	13
607625	Lugo	 Seth	206.2	21.7	16	9	3	20
608331	Fried	 Max	174.1	23.2	11	10	3.25	24
608379	Wacha	 Michael	166.2	21.2	13	8	3.35	20
615698	Quantrill	 Cal	148.1	16.8	8	11	4.98	5
621107	Eflin	 Zach	165.1	19.6	10	9	3.59	28
621244	Berríos	 José	192.1	19.5	16	11	3.6	30
622491	Castillo	 Luis	175.1	24.3	11	12	3.64	8
622663	Severino	 Luis	182	21.2	11	7	3.91	22
623167	Flexen	 Chris	160	17.4	3	15	4.95	18
624133	Suárez	 Ranger	150.2	23.2	12	8	3.46	21
625643	López	 Reynaldo	135.2	27.3	8	5	1.99	24
640455	Manaea	 Sean	181.2	24.9	12	6	3.47	22
641154	López	 Pablo	185.1	25.6	15	10	4.08	19
641482	Cortes Jr.	 Nestor	174.1	22.8	9	10	3.77	29
641793	Littell	 Zack	156.1	21.5	8	10	3.63	26
641927	Ober	 Bailey	178.2	26.9	12	9	3.98	19
642547	Peralta	 Freddy	173.2	27.6	11	9	3.68	14
650633	King	 Michael	173.2	27.7	13	9	2.95	3
650644	Civale	 Aaron	161	21.6	8	9	4.36	14
650911	Sánchez	 Cristopher	181.2	20.3	11	9	3.32	21
656288	Canning	 Griffin	171.2	17.6	6	13	5.19	7
656302	Cease	 Dylan	189.1	29.4	14	11	3.47	3
656427	Flaherty	 Jack	162	29.9	13	7	3.17	1
656557	Houck	 Tanner	178.2	20.7	9	10	3.12	27
656605	Keller	 Mitch	178	21.5	11	12	4.25	15
656756	Montgomery	 Jordan	117	15.6	8	7	6.23	4
656849	Peterson	 David	121	19.8	10	3	2.9	22
657006	Steele	 Justin	134.2	24.3	5	5	3.07	11
657277	Webb	 Logan	204.2	20.5	13	10	3.47	2
657746	Ryan	 Joe	135	27.3	7	7	3.6	19
661563	Gil	 Luis	151.2	26.8	15	7	3.5	29
663362	Waldron	 Matt	146.2	21.3	7	11	4.91	3
663372	Feltner	 Ryan	162.1	19.9	3	10	4.49	5
663559	Falter	 Bailey	142.1	16.5	8	9	4.43	15
663623	Irvin	 Jake	187.2	20.3	10	14	4.41	23
663903	Singer	 Brady	179.2	22.3	9	13	3.71	20
664285	Valdez	 Framber	176.1	24	15	7	2.91	10
665152	Kremer	 Dean	129.2	22.2	8	10	4.1	28
665871	Assad	 Javier	147	19.4	7	6	3.73	11
666142	Ragans	 Cole	186.1	29.3	11	9	3.14	20
668678	Gallen	 Zac	148	25.1	14	6	3.65	4
668881	Greene	 Hunter	150.1	27.7	9	5	2.75	13
668964	Myers	 Tobias	138	22.3	9	6	3	14
669022	Gore	 MacKenzie	166.1	24.8	10	12	3.9	23
669194	Nelson	 Ryne	150.2	20	10	6	4.24	4
669203	Burnes	 Corbin	194.1	23.1	15	9	2.92	28
669302	Gilbert	 Logan	208.2	27.4	9	12	3.23	8
669373	Skubal	 Tarik	192	30.3	18	4	2.39	17
669432	Rogers	 Trevor	124.1	17.3	2	11	4.92	28
669467	Pallante	 Andre	121.1	18.5	8	8	3.78	12
669854	Blanco	 Ronel	167.1	24.6	13	6	2.8	10
669923	Kirby	 George	191	23	14	11	3.53	8
671096	Abbott	 Andrew	138	19.5	10	10	3.72	13
671737	Bradley	 Taj	138	26.6	8	11	4.11	26
676440	Bibee	 Tanner	173.2	26.3	12	8	3.47	16
676664	Sears	 JP	180.2	18.1	11	13	4.38	6
676710	Crawford	 Kutter	183.2	23.1	9	16	4.36	27
676979	Crochet	 Garrett	146	35.1	6	12	3.58	18
678394	Bello	 Brayan	162.1	21.8	14	8	4.49	27
679525	Marsh	 Alec	129	22.4	9	9	4.53	20
680573	Woods Richardson	 Simeon	133.2	20.6	5	5	4.17	19
680730	Parker	 Mitchell	151	20.6	7	10	4.29	23
681293	Arrighetti	 Spencer	145	27.1	7	13	4.53	10
682243	Miller	 Bryce	180.1	24.3	12	8	2.94	8
682847	Ortiz	 Luis	135.2	19.2	7	6	3.32	15
683003	Jones	 Jared	121.2	26.2	6	8	4.14	15
683155	Estes	 Joey	127.2	16.9	7	9	5.01	6
684007	Imanaga	 Shota	173.1	25.1	15	3	2.91	11
686563	Cannon	 Jonathan	124.1	17.4	5	10	4.49	18
686613	Brown	 Hunter	170	25.1	11	9	3.49	10
686752	Pepiot	 Ryan	130	26.3	8	8	3.6	26
687765	Spence	 Mitch	151.1	19.4	8	10	4.58	6
690986	Harrison	 Kyle	124.1	22.2	7	7	4.56	2
694297	Pfaadt	 Brandon	181.2	24.3	11	10	4.71	4
694813	Stone	 Gavin	140.1	20	11	5	3.53	1
694973	Skenes	 Paul	133	33.1	11	3	1.96	15
12345	Doe	John	100.0	20.0	10	5	3.50	31
\.


--
-- Data for Name: stadium; Type: TABLE DATA; Schema: public; Owner: kev9180
--

COPY public.stadium (stadium_id, stadium_name, stadium_type, city_id) FROM stdin;
1	Dodger Stadium	Outdoors	1
2	Oracle Park	Outdoors	2
3	Petco Park	Outdoors	3
4	Chase Field	Indoor	4
5	Coors Field	Outdoors	5
6	Oakland-Alameda County Coliseum	Outdoors	6
7	Angel Stadium	Outdoors	7
8	T-Mobile Park	Indoor	8
9	Globe Life Field	Indoor	9
10	Minute Maid Park	Indoor	10
11	Wrigley Field	Outdoors	17
12	Busch Stadium	Outdoors	11
13	Great American Ball Park	Outdoors	12
14	American Family Field	Indoor	13
15	PNC Park	Outdoors	14
16	Progressive Field	Outdoors	15
17	Comerica Park	Outdoors	16
18	Guaranteed Rate Field	Outdoors	17
19	Target Field	Outdoors	18
20	Kauffman Stadium	Outdoors	19
21	Citizens Bank Park	Outdoors	20
22	Citi Field	Outdoors	21
23	Nationals Park	Outdoors	22
24	Truist Park	Outdoors	23
25	LoanDepot Park	Indoor	24
26	Tropicana Field	Indoor	25
27	Fenway Park	Outdoors	26
28	Oriole Park at Camden Yards	Outdoors	27
29	Yankee Stadium	Outdoors	21
30	Rogers Centre	Indoor	28
31	Test Stadium 1	Indoor	30
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: kev9180
--

COPY public.team (team_id, team_name, stadium_id) FROM stdin;
1	Dodgers	1
2	Giants	2
3	Padres	3
4	Diamondbacks	4
5	Rockies	5
6	Athletics	6
7	Angels	7
8	Mariners	8
9	Rangers	9
10	Astros	10
11	Cubs	11
12	Cardinals	12
13	Reds	13
14	Brewers	14
15	Pirates	15
16	Guardians	16
17	Tigers	17
18	White Sox	18
19	Twins	19
20	Royals	20
21	Phillies	21
22	Mets	22
23	Nationals	23
24	Braves	24
25	Marlins	25
26	Rays	26
27	Red Sox	27
28	Orioles	28
29	Yankees	29
30	Blue Jays	30
31	Test Team	31
\.


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kev9180
--

SELECT pg_catalog.setval('public.city_city_id_seq', 31, true);


--
-- Name: stadium_stadium_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kev9180
--

SELECT pg_catalog.setval('public.stadium_stadium_id_seq', 31, true);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kev9180
--

SELECT pg_catalog.setval('public.team_team_id_seq', 31, true);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: pitcher player_pkey; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.pitcher
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);


--
-- Name: stadium stadium_pkey; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_pkey PRIMARY KEY (stadium_id);


--
-- Name: stadium stadium_stadium_name_key; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_stadium_name_key UNIQUE (stadium_name);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);


--
-- Name: team team_team_name_key; Type: CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_team_name_key UNIQUE (team_name);


--
-- Name: pitcher pitcher_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.pitcher
    ADD CONSTRAINT pitcher_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id) ON DELETE SET NULL;


--
-- Name: stadium stadium_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.stadium
    ADD CONSTRAINT stadium_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(city_id) ON DELETE SET NULL;


--
-- Name: team team_stadium_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kev9180
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_stadium_id_fkey FOREIGN KEY (stadium_id) REFERENCES public.stadium(stadium_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

