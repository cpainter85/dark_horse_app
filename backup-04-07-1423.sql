--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: charlespainter; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO charlespainter;

--
-- Name: volumes; Type: TABLE; Schema: public; Owner: charlespainter; Tablespace: 
--

CREATE TABLE volumes (
    id integer NOT NULL,
    name character varying,
    comic_vine_volume_id integer,
    description text,
    image_url text,
    thumbnail_url text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    start_year integer
);


ALTER TABLE volumes OWNER TO charlespainter;

--
-- Name: volumes_id_seq; Type: SEQUENCE; Schema: public; Owner: charlespainter
--

CREATE SEQUENCE volumes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE volumes_id_seq OWNER TO charlespainter;

--
-- Name: volumes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: charlespainter
--

ALTER SEQUENCE volumes_id_seq OWNED BY volumes.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: charlespainter
--

ALTER TABLE ONLY volumes ALTER COLUMN id SET DEFAULT nextval('volumes_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: charlespainter
--

COPY schema_migrations (version) FROM stdin;
20150406205932
20150407174802
20150407191955
20150407194358
\.


--
-- Data for Name: volumes; Type: TABLE DATA; Schema: public; Owner: charlespainter
--

COPY volumes (id, name, comic_vine_volume_id, description, image_url, thumbnail_url, created_at, updated_at, start_year) FROM stdin;
6	Wacky Squirrel	3921	\N	http://static.comicvine.com/uploads/scale_small/0/4/25843-3921-28713-1-wacky-squirrel.jpg	http://static.comicvine.com/uploads/scale_small/0/4/25843-3921-28713-1-wacky-squirrel.jpg	2015-04-06 21:40:54.293107	2015-04-07 20:04:25.843753	1987
10	Godzilla	4136	\N	http://static.comicvine.com/uploads/scale_small/0/4/26680-4136-29611-1-godzilla.jpg	http://static.comicvine.com/uploads/scale_small/0/4/26680-4136-29611-1-godzilla.jpg	2015-04-06 21:40:54.314112	2015-04-07 20:04:27.216913	1988
14	Junior Carrot Patrol	4301	\N	http://static.comicvine.com/uploads/scale_small/0/4/28077-4301-31161-1-junior-carrot-patrol.jpg	http://static.comicvine.com/uploads/scale_small/0/4/28077-4301-31161-1-junior-carrot-patrol.jpg	2015-04-06 21:42:55.478566	2015-04-07 20:04:28.526288	1989
17	Cormac Mac Art	4466	\N	http://static.comicvine.com/uploads/scale_small/0/4/28978-4466-32196-1-cormac-mac-art.jpg	http://static.comicvine.com/uploads/scale_small/0/4/28978-4466-32196-1-cormac-mac-art.jpg	2015-04-06 21:42:55.492772	2015-04-07 20:04:29.479287	1989
21	Deadline USA	4637	\N	http://static.comicvine.com/uploads/scale_small/0/4/31487-4637-35063-1-deadline-usa.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31487-4637-35063-1-deadline-usa.jpg	2015-04-06 21:46:54.82717	2015-04-07 20:04:31.034927	1991
25	Terminator: The Enemy Within	4642	\N	http://static.comicvine.com/uploads/scale_small/0/4/31286-4642-34830-1-terminator-the-enem.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31286-4642-34830-1-terminator-the-enem.jpg	2015-04-06 21:46:54.843159	2015-04-07 20:04:32.349214	1991
30	Classic Star Wars	4861	\N	http://static.comicvine.com/uploads/scale_small/0/4/32260-4861-35977-1-classic-star-wars.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32260-4861-35977-1-classic-star-wars.jpg	2015-04-06 21:46:54.866337	2015-04-07 20:04:34.211653	1992
33	Deadline USA	4866	\N	http://static.comicvine.com/uploads/scale_small/0/4/32775-4866-36577-1-deadline-usa.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32775-4866-36577-1-deadline-usa.jpg	2015-04-06 21:47:41.648587	2015-04-07 20:04:35.544158	1992
36	Hard Looks	4869	\N	http://static.comicvine.com/uploads/scale_small/0/4/31802-4869-35427-1-hard-looks.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31802-4869-35427-1-hard-looks.jpg	2015-04-06 21:47:41.666933	2015-04-07 20:04:36.431661	1992
42	Terminator: Hunters and Killers	4878	\N	http://static.comicvine.com/uploads/scale_small/0/4/31803-4878-35428-1-terminator-hunters-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31803-4878-35428-1-terminator-hunters-.jpg	2015-04-06 21:47:41.694893	2015-04-07 20:04:38.269584	1992
44	Virus	4880	\N	http://static.comicvine.com/uploads/scale_small/0/4/34294-4880-38289-1-virus.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34294-4880-38289-1-virus.jpg	2015-04-06 21:47:41.704208	2015-04-07 20:04:38.846253	1992
48	James Bond 007: A Silent Armageddon	5109	\N	http://static.comicvine.com/uploads/scale_small/0/4/33142-5109-37000-1-james-bond-007-a-si.jpg	http://static.comicvine.com/uploads/scale_small/0/4/33142-5109-37000-1-james-bond-007-a-si.jpg	2015-04-06 21:47:41.720729	2015-04-07 20:04:40.156862	1993
51	Thing From Another World: Eternal Vows	5115	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/34296-5115-38291-1-thing-from-another-w.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34296-5115-38291-1-thing-from-another-w.jpg	2015-04-06 21:47:41.733177	2015-04-07 20:04:41.278039	1993
55	Badger: Zen Pop Funny-Animal Version	5375	\N	http://static.comicvine.com/uploads/scale_small/0/4/35183-5375-39304-1-badger-zen-pop-funn.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35183-5375-39304-1-badger-zen-pop-funn.jpg	2015-04-06 21:49:36.385036	2015-04-07 20:04:42.454035	1994
59	Classic Star Wars: The Return of the Jedi	5379	\N	http://static.comicvine.com/uploads/scale_small/0/4/35581-5379-39733-1-classic-star-wars-t.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35581-5379-39733-1-classic-star-wars-t.jpg	2015-04-06 21:49:36.40218	2015-04-07 20:04:43.937877	1994
62	Enemy	5382	\N	http://static.comicvine.com/uploads/scale_small/0/4/35024-5382-39116-1-enemy.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35024-5382-39116-1-enemy.jpg	2015-04-06 21:49:36.415079	2015-04-07 20:04:44.801161	1994
67	Johnny Dynamite	5389	<p style="">Collected in <a data-ref-id="4050-48666" href="/johnny-dynamite/4050-48666/" slug="johnny-dynamite">Johnny Dynamite</a> (2003, AIT/Planet Lar).</p>	http://static.comicvine.com/uploads/scale_small/0/4/35540-5389-39686-1-johnny-dynamite.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35540-5389-39686-1-johnny-dynamite.jpg	2015-04-06 21:49:36.4362	2015-04-07 20:04:46.482318	1994
72	The Shadow	5394	\N	http://static.comicvine.com/uploads/scale_small/0/4/35057-5394-39160-1-shadow-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35057-5394-39160-1-shadow-the.jpg	2015-04-06 21:49:36.458516	2015-04-07 20:04:48.033426	1994
76	Star Wars: Tales of the Jedi - Dark Lords of the Sith	5400	<p style="">A series set several thousands of years before the Battle of Yavin. Tells the story of Ulic and Nomi.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3515461-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3515461-01.jpg	2015-04-06 21:49:36.47702	2015-04-07 20:04:49.578378	1994
79	X	5403	\N	http://static.comicvine.com/uploads/scale_small/0/4/34543-5403-38586-1-x.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34543-5403-38586-1-x.jpg	2015-04-06 21:49:36.489437	2015-04-07 20:04:50.710104	1994
82	Babe 2	5609	\N	http://static.comicvine.com/uploads/scale_small/0/4/36383-5609-40633-1-babe-2.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36383-5609-40633-1-babe-2.jpg	2015-04-06 21:49:36.503607	2015-04-07 20:04:51.823299	1995
86	Nexus The Wages of Sin	5619	\N	http://static.comicvine.com/uploads/scale_small/0/4/36292-5619-40535-1-nexus-the-wages-of-s.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36292-5619-40535-1-nexus-the-wages-of-s.jpg	2015-04-06 21:49:36.520397	2015-04-07 20:04:53.10051	1995
90	James Bond 007: The Quasimodo Gambit	5663	\N	http://static.comicvine.com/uploads/scale_small/0/4/36156-5663-40374-1-james-bond-007-the-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36156-5663-40374-1-james-bond-007-the-.jpg	2015-04-06 21:49:36.538429	2015-04-07 20:04:54.447585	1995
94	A Decade of Dark Horse	5829	<p style="">Celebrates 10 years of Dark Horse</p>	http://static.comicvine.com/uploads/scale_small/0/4/37986-5829-42624-1-decade-of-dark-horse.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37986-5829-42624-1-decade-of-dark-horse.jpg	2015-04-06 21:49:36.555433	2015-04-07 20:04:55.618452	1996
97	Heartbreakers	5833	\N	http://static.comicvine.com/uploads/scale_small/0/1867/1008900-001.jpg	http://static.comicvine.com/uploads/scale_small/0/1867/1008900-001.jpg	2015-04-06 21:49:36.569939	2015-04-07 20:04:56.753933	1996
101	Space Usagi	5841	\N	http://static.comicvine.com/uploads/scale_small/0/4/37438-5841-41945-1-space-usagi.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37438-5841-41945-1-space-usagi.jpg	2015-04-06 21:49:36.587002	2015-04-07 20:04:58.003335	1996
105	Aliens: Alchemy	6055	\N	http://static.comicvine.com/uploads/scale_small/0/4/39319-6055-44229-1-aliens-alchemy.jpg	http://static.comicvine.com/uploads/scale_small/0/4/39319-6055-44229-1-aliens-alchemy.jpg	2015-04-06 21:51:03.100466	2015-04-07 20:04:59.438028	1997
112	The Superman/Madman Hullabaloo	6100	<p style="">Collected in a single volume: <a data-ref-id="4050-30047" href="/the-superman-madman-hullabaloo/4050-30047/" slug="the-superman-madman-hullabaloo">The Superman/Madman Hullabaloo</a></p>	http://static.comicvine.com/uploads/scale_small/0/4/38910-6100-43739-1-superman--madman-hu.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38910-6100-43739-1-superman--madman-hu.jpg	2015-04-06 21:51:03.137179	2015-04-07 20:05:01.774461	1997
116	SubHuman	6243	\N	http://static.comicvine.com/uploads/scale_small/0/77/1200270-56385.jpg	http://static.comicvine.com/uploads/scale_small/0/77/1200270-56385.jpg	2015-04-06 21:51:03.152436	2015-04-07 20:05:03.275318	1998
124	Tarzan The Savage Heart	6377	\N	http://static.comicvine.com/uploads/scale_small/0/4/40614-6377-45790-1-tarzan-the-savage-he.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40614-6377-45790-1-tarzan-the-savage-he.jpg	2015-04-06 21:51:03.188244	2015-04-07 20:05:05.795995	1999
125	World Below	6379	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/40595-6379-45760-1-world-below-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40595-6379-45760-1-world-below-the.jpg	2015-04-06 21:51:03.192548	2015-04-07 20:05:06.129291	1999
126	Xena: Warrior Princess	6380	\N	http://static.comicvine.com/uploads/scale_small/6/67663/2549003-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2549003-01.jpg	2015-04-06 21:51:03.196992	2015-04-07 20:05:06.571377	1999
130	Rebel Sword	6672	\N	http://static.comicvine.com/uploads/scale_small/0/4/41933-6672-47602-1-rebel-sword.jpg	http://static.comicvine.com/uploads/scale_small/0/4/41933-6672-47602-1-rebel-sword.jpg	2015-04-06 21:51:03.220551	2015-04-07 20:05:07.853638	1994
135	Aliens vs. Predator	6812	<p style="">#0 was released after #1 but occurred before it, reprinting the material that this series spun out of.</p>	http://static.comicvine.com/uploads/scale_small/0/4/42671-6812-48795-1-aliens-vs-predator.jpg	http://static.comicvine.com/uploads/scale_small/0/4/42671-6812-48795-1-aliens-vs-predator.jpg	2015-04-06 21:51:03.242899	2015-04-07 20:05:09.535192	1990
140	Buffy the Vampire Slayer: Oz	7075	<p style=""><b>NOTE:</b> Indicia titled as "Buffy the Vampire Slayer: Oz".</p>	http://static.comicvine.com/uploads/scale_small/5/58436/3581688-buffy-oz-01-page-01a.jpg	http://static.comicvine.com/uploads/scale_small/5/58436/3581688-buffy-oz-01-page-01a.jpg	2015-04-06 21:51:03.26675	2015-04-07 20:05:11.042811	2001
146	Roachmill	7405	\N	http://static.comicvine.com/uploads/scale_small/7/74848/1522513-roachmill_01.jpg	http://static.comicvine.com/uploads/scale_small/7/74848/1522513-roachmill_01.jpg	2015-04-06 21:51:03.293114	2015-04-07 20:05:13.53226	1988
150	Triple X	9107	\N	http://static.comicvine.com/uploads/scale_small/0/4/50826-9107-66635-1-triple-x.jpg	http://static.comicvine.com/uploads/scale_small/0/4/50826-9107-66635-1-triple-x.jpg	2015-04-06 21:51:03.311308	2015-04-07 20:05:15.101316	1994
153	Lone Wolf and Cub	9319	<p style="">English translation of the Japanese manga Kozure Ōkami (子連れ狼).</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2790704-01_cropped.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2790704-01_cropped.jpg	2015-04-06 21:51:03.326787	2015-04-07 20:05:16.010421	2000
158	Aliens vs. Predator: Duel	10997	<p style="">Color.</p>	http://static.comicvine.com/uploads/scale_small/0/4/62836-10997-95832-1-aliens-vs-predator.jpg	http://static.comicvine.com/uploads/scale_small/0/4/62836-10997-95832-1-aliens-vs-predator.jpg	2015-04-06 21:51:03.347289	2015-04-07 20:05:17.948891	1995
161	Barb Wire: Ace of Spades	11242	\N	http://static.comicvine.com/uploads/scale_small/0/4/65730-11242-98727-1-barb-wire-ace-of-sp.jpg	http://static.comicvine.com/uploads/scale_small/0/4/65730-11242-98727-1-barb-wire-ace-of-sp.jpg	2015-04-06 21:51:03.364693	2015-04-07 20:05:19.475983	1996
166	Hero Zero	18004	\N	http://static.comicvine.com/uploads/scale_small/0/607/80565-18004-105405-1-hero-zero.jpg	http://static.comicvine.com/uploads/scale_small/0/607/80565-18004-105405-1-hero-zero.jpg	2015-04-06 21:51:03.3874	2015-04-07 20:05:21.407346	1994
170	The Escapists	18225	<p style="">Six-Part Miniseries featuring the the mysterious hero from Michael Chabon's Pulitzer winning novel The Amazing Adventures of Kavalier &amp; Clay.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/251013-18225-119426-1-the-escapists.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/251013-18225-119426-1-the-escapists.jpg	2015-04-06 21:51:03.404084	2015-04-07 20:05:22.991086	2006
176	Hellboy: Makoma, or, a Tale Told by a Mummy in the New York City Explorers’ Club on August 16, 1993	18284	<p style="">A Flashback Story of Hellboy.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2185299-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2185299-01.jpg	2015-04-06 21:51:03.434707	2015-04-07 20:05:25.263181	2006
183	City of Others	18318	<p style="">When it comes to horror comics, there are few artists who can measure up to the legendary Bernie Wrightson. After a long hiatus from comics, Mr. Wrightson is back with acclaimed writer Steve Niles on the most exciting new horror comic of the year:</p><p style="">City of Others</p>	http://static.comicvine.com/uploads/scale_small/0/2350/100367-18318-107264-1-city-of-others.JPG	http://static.comicvine.com/uploads/scale_small/0/2350/100367-18318-107264-1-city-of-others.JPG	2015-04-06 21:51:03.462332	2015-04-07 20:05:27.876633	2007
189	Tales to Offend	18472	<p style=""> The brainchild of Frank Miller. One-shot comic.</p>	http://static.comicvine.com/uploads/scale_small/0/229/107705-18472-108451-1-tales-to-offend.jpg	http://static.comicvine.com/uploads/scale_small/0/229/107705-18472-108451-1-tales-to-offend.jpg	2015-04-06 21:51:03.48711	2015-04-07 20:05:30.220836	1997
191	Fax From Sarajevo	18486	<p style="">Dedicated to Karim Zaimovic</p>	http://static.comicvine.com/uploads/scale_small/0/229/109087-18486-108565-1-fax-from-sarajevo.jpg	http://static.comicvine.com/uploads/scale_small/0/229/109087-18486-108565-1-fax-from-sarajevo.jpg	2015-04-06 21:51:03.494977	2015-04-07 20:05:30.774795	1996
197	The Goon	18632	<p style=""><em>Issue #45 continues in <a href="/the-goon-one-for-the-road/4050-75131/" data-ref-id="4050-75131">THE GOON: ONE FOR THE ROAD</a>.</em></p><p style="">The Goon tenth anniversary book is off to the printer, chock full of 32 pages of story, a pinups section by some of Eric's heroes, and a look at the earliest Goon material, from the development of the character up to his first appearances.</p><p style="">As some of you already know, Eric is throwing a gala celebration in Nashville on Friday, March 13, and I'd be there if it didn't fall on the same day as my kid's birthday. Damn kid. There's gonna be comics, and rollergirls, and all manner of Southern hostility, served up Goon style. There'll also be an announcement about the next thing you can expect from The Goon, in this year of relatively low, but increasingly bizarre, output from Eric.</p><p style="">I'm writing this immediately upon my return from New York Comic Con, the second biggest U.S. comics show, where the crew from Dark Horse hung out with Powell and Samantha for a few days in the freezing cold. At the show, someone gave Powell a little sculpture of his most notorious character Satan's Sodomy Baby. The DH legal team says I can't post the picture of the baby here, but this was a hell of a sculpture. Powell might put pictures up on his own site, but that'd be a bad idea for a guy living in Tennessee.</p><p style="">While at the show, Powell, Sierra, Sam, and I got to sit down and figure out some finishing touches to the designs for the new line of Goon trade paperbacks. This summer we'll be collecting The Return of Labrazio, the storyline from Goon Year, in three volumes. Amy Arendts, the designer on The Goon, as well as B.P.R.D., Rex Mundi, and dozens of other books from Dark Horse, has been diligently hammering at this new design for The Goon for weeks, so when I say we got to "figure out the finishing touches," what I mean is logging another batch of requests and directions for Amy to figure out. It might be too much to ask for the readers to get excited about the design of the trade paperback, but on Sunday night in Eric's hotel room, over pizza and SKYY vodka, we were alternately high-fiving each other and staring in desperation at the computer fearing we were dreaming an impossible dream.</p><p style="">Goon Volume 7: A Place of Heartache and Grief hits stores June 3, with the remaining two volumes of The Return of Labrazio following at two-month intervals. In the meantime, look for the anniversary issue of The Goon on March 4!</p><p style="">P.S. Read about Eric's thoughts on art in an interview conducted by 7-year-old grade schooler Mina Bella Kreiter. And if you're around, join us for the Goon's 10th Anniversary Party in Nashville, Tennessee. You can find out more about the party right here.</p><p style="">Scott Allie</p><p style="">Editor</p><p style=""><b>Previous Series and Spin-Offs</b></p><ul><li><a href="/the-goon/4050-31449/" data-ref-id="4050-31449">The Goon Vol. 1</a></li><li><a href="/the-goon/4050-31450/" data-ref-id="4050-31450">The Goon Vol. 2</a></li><li><a href="/the-goon-noir/4050-23116/" data-ref-id="4050-23116">The Goon Noir</a></li><li><a href="/buzzard/4050-33632/" data-ref-id="4050-33632">Buzzard</a></li></ul><h3>Collected Editions</h3><h4>Trade Paperback Collections</h4><ul><li>Vol. 0: <a href="/the-goon-rough-stuff/4050-38990/" data-ref-id="4050-38990">Rough Stuff</a> (The Goon Vol. 1 #1-3)</li><li>Vol. 1: <a href="/the-goon-nothin-but-misery/4050-39943/" data-ref-id="4050-39943">Nothin' But Misery</a> (The Goon Vol. 2 #1-4 and <a href="/the-goon-color-special/4050-48316/" data-ref-id="4050-48316">The Goon Color Special</a>)</li><li>Vol. 2: <a href="/the-goon-my-murderous-childhood-and-other-grievous-yarns/4050-39945/" data-ref-id="4050-39945">My Murderous Childhood (and Other Grievous Yarns)</a> (#1-4)</li><li>Vol. 3: <a href="/the-goon-heaps-of-ruination/4050-39956/" data-ref-id="4050-39956">Heaps of Ruination!</a> (#5-8)</li><li>Vol. 4: <a href="/the-goon-virtue-and-the-grim-consequences-thereof/4050-45334/" data-ref-id="4050-45334">Virtue and Grim Consequences Thereof</a> (#9-13)</li><li>Vol. 5: <a href="/the-goon-wicked-inclinations/4050-45268/" data-ref-id="4050-45268">Wicked Inclinations</a> (#14-18)</li><li><a href="/the-goon-noir/4050-23116/" data-ref-id="4050-23116">The Goon Noir</a> (The Goon Noir #1-3)</li><li>Vol. 6: <a href="/the-goon-chinatown-and-the-mystery-of-mr-wicker/4050-22478/" data-ref-id="4050-22478">Chinatown and the Mystery of Mr. Wicker</a> - OGN</li><li>Vol. 7: <a href="/the-goon-a-place-of-heartache-and-grief/4050-46029/" data-ref-id="4050-46029">A Place of Heartache and Grief</a> (#19-23)</li><li>Vol. 8: <a href="/the-goon-those-that-is-damned/4050-46028/" data-ref-id="4050-46028">Those That Is Damned</a> (#24-27)</li><li>Vol. 9: <a href="/the-goon-calamity-of-conscience/4050-45267/" data-ref-id="4050-45267">Calamity of Conscience</a> (#28-31)</li><li>Vol. 10: <a href="/the-goon-deaths-greedy-comeuppance/4050-46031/" data-ref-id="4050-46031">Death's Greedy Comeuppance</a> (#32-33 and <a href="/buzzard/4050-33632/" data-ref-id="4050-33632">Buzzard</a> #1-3)</li><li>Vol. 11: <a href="/the-goon-the-deformed-of-body-and-devious-of-mind/4050-49941/" data-ref-id="4050-49941">The Deformed of Body and Devious of Mind</a> (#34-37)</li><li>Vol. 12: <a href="/the-goon-them-that-raised-us-lament/4050-57531/" data-ref-id="4050-57531">Them That Raised Us Lament</a> (#38-41)</li><li>Vol. 13: <a href="/the-goon-for-want-of-whiskey-and-blood/4050-77412/" data-ref-id="4050-77412">For Want of Whiskey and Blood</a> (#42-44, <a href="/the-goon-one-for-the-road/4050-75131/" data-ref-id="4050-75131">One for the Road </a>#1)</li><li>Vol. 14: <a href="/the-goon-occasion-of-revenge/4050-81118/" data-ref-id="4050-81118">Occasion of Revenge</a> (<a href="/the-goon-occasion-of-revenge/4050-75866/" data-ref-id="4050-75866">Occasion of Revenge</a> #1-4)</li></ul><p style=""><b>Fancy Pants Editions</b></p><ul><li><a href="/the-goon-fancy-pants-edition-vol-1/4000-345735/" data-ref-id="4000-345735">Vol. 1</a> (#1-2 of The Goon Vol. 2 Vol. 3 #1, 3, 5 and 9)</li><li><a href="/the-goon-fancy-pants-edition-vol-2-the-rise-and-fall-of-the-diabolical-dr-alloy/4000-345736/" data-ref-id="4000-345736">Vol. 2: The Rise and Fall of the Diabolical Dr. Alloy</a> (#2, 6, and 11-12)</li><li><a href="/the-goon-fancy-pants-edition-vol-3-the-return-of-labrazio/4000-345737/" data-ref-id="4000-345737">Vol. 3: The Return of Labrazio</a> (#20-31)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/1812/127350-18632-109906-1-the-goon.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/127350-18632-109906-1-the-goon.jpg	2015-04-06 21:51:03.522808	2015-04-07 20:05:33.295291	2003
201	Fray: Future Slayer	18751	<p style="">Collects the eight issues of Fray.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754742-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754742-01.jpg	2015-04-06 21:51:03.537893	2015-04-07 20:05:34.754577	2003
207	Martha Washington Dies	18865	<p style="">The final story of Martha Washington.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/1991272-00.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/1991272-00.jpg	2015-04-06 21:51:03.561286	2015-04-07 20:05:37.07105	2007
209	Rack & Pain	18890	\N	http://static.comicvine.com/uploads/scale_small/0/1812/154188-18890-111661-1-rack--pain.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/154188-18890-111661-1-rack--pain.jpg	2015-04-06 21:51:03.57332	2015-04-07 20:05:37.695572	1994
217	Godzilla vs. Barkley	18943	<p style="">Godzilla versus the famous NBA all-star Charles Barkley in a game of basketball. No double dribbling or spitting!</p>	http://static.comicvine.com/uploads/scale_small/0/3125/160998-18943-112061-1-godzilla-vs-barkley.jpg	http://static.comicvine.com/uploads/scale_small/0/3125/160998-18943-112061-1-godzilla-vs-barkley.jpg	2015-04-06 21:51:03.606452	2015-04-07 20:05:40.479186	1993
222	Aliens vs. Predator Omnibus	19078	<p style="">Mankind's two ultimate nightmares come together in mortal combat, and whoever wins-we lose.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3613217-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3613217-01.jpg	2015-04-06 21:51:03.628139	2015-04-07 20:05:42.201074	2007
228	Groo: 25th Anniversary Special	19131	<p style="">Celebrate twenty-five years of Groo!</p>	http://static.comicvine.com/uploads/scale_small/0/787/192428-19131-114401-1-groo-25th-anniversa.jpg	http://static.comicvine.com/uploads/scale_small/0/787/192428-19131-114401-1-groo-25th-anniversa.jpg	2015-04-06 21:51:03.651205	2015-04-07 20:05:44.439153	2007
230	Star Wars: Jabba The Hutt - Betrayal	19144	\N	http://static.comicvine.com/uploads/scale_small/0/574/193902-19144-114506-1-star-wars-jabba-the.jpg	http://static.comicvine.com/uploads/scale_small/0/574/193902-19144-114506-1-star-wars-jabba-the.jpg	2015-04-06 21:51:03.661482	2015-04-07 20:05:45.046972	1996
234	Star Wars: Underworld - The Yavin Vassilika	19162	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/9/98410/1835004-acvra.jpg	http://static.comicvine.com/uploads/scale_small/9/98410/1835004-acvra.jpg	2015-04-06 21:51:03.679512	2015-04-07 20:05:46.326806	2000
237	Star Wars: Boba Fett	19253	\N	http://static.comicvine.com/uploads/scale_small/0/574/211730-19253-115534-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/0/574/211730-19253-115534-1-star-wars-boba-fett.jpg	2015-04-06 21:51:03.690593	2015-04-07 20:05:47.325694	1995
243	ZombieWorld: Champion of the Worms	19359	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/1/10162/218856-19359-116114-1-zombie-world.jpg	http://static.comicvine.com/uploads/scale_small/1/10162/218856-19359-116114-1-zombie-world.jpg	2015-04-06 21:51:03.726361	2015-04-07 20:05:49.284781	1997
244	Sergio Aragonés Dia De Los Muertos	19361	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2848403-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2848403-01.jpg	2015-04-06 21:51:03.730258	2015-04-07 20:05:49.574834	1998
247	Bettie Page: Queen of the Nile	19396	<br/>	http://static.comicvine.com/uploads/scale_small/6/67663/2359016-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2359016-01.jpg	2015-04-06 21:51:03.742321	2015-04-07 20:05:50.479538	2000
251	Concrete: Land and Sea	19454	\N	http://static.comicvine.com/uploads/scale_small/0/229/221982-19454-116473-1-concrete-land-and-s.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221982-19454-116473-1-concrete-land-and-s.jpg	2015-04-06 21:51:03.760357	2015-04-07 20:05:51.779406	1989
255	Concrete: Odd Jobs	19458	\N	http://static.comicvine.com/uploads/scale_small/0/229/221984-19458-116477-1-concrete-odd-jobs.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221984-19458-116477-1-concrete-odd-jobs.jpg	2015-04-06 21:51:03.777101	2015-04-07 20:05:53.145231	1990
260	Ghost in the Shell 2: Man-Machine Interface	19529	\N	http://static.comicvine.com/uploads/scale_small/1/11307/382213-19529-116793-2-ghost-in-the-shell-2.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/382213-19529-116793-2-ghost-in-the-shell-2.jpg	2015-04-06 21:51:03.796921	2015-04-07 20:05:54.758064	2003
264	Ghost	19533	<p style="">Second volume and ongoing series starring <a href="http://www.comicvine.com/ghost/4005-25085/" data-ref-id="4005-25085">Ghost</a>.</p><p style="">* V2, #1-6: Elisa learns from the mysterious Concordia Leveche that she is not really dead. Instead, her "death" is linked to Scythe and Trouvaille, who have been running experiments through which souls are stripped from bodies, the souls "rendered" and then replaced with beings from another dimension. Trouvaille captures Elisa and shows her the tape. From the tape, she learns that she was a killer for Crux, that Trouvaille, aided by Scythe, tried ripping Elisa's soul from her body, but in the middle of the procedure, Cameron Nemo briefly appeared. Then, Elisa vanished. Silhouette is shown to be back in control of Margo's body while Margo's soul awaits rendering. Elisa escapes and fights Silhouette, who escapes, still in control of Margo's body. Elisa then kills Trouvaille. Elisa also has learned that Focus was in league with Trouvaille and soon discovers the same about Peter. She suggests Peter kill himself, while Focus informs Elisa that Elisa used to be one of the Furies. Soon, Elisa finds Cameron Scythe. Nemo, who reveals that as a part of Elisa's subconscious, he has always known her, is sent back to Elisa's hell. Margo, now a being like Elisa, appears and shoots Scythe through the skull, killing him.</p><p style="">* V2, #7-15: Elisa, Concordia and Margo go to Hoyo Grande to ask King Tiger for help. Instead, they end up helping a very down and out Tiger regain his mojo and battle the shapeshifting "Szothstromael" clan. Elisa also has a revelatory encounter with the Man From the Vortex, who "reboots" her brain. This allows Elisa to recall that her real father, Dan Deerlane, was shot down by her adoptive father, in front of her eyes, when she was very young and that the pain of this deadened her to that of others, leading to her living the life of a Fury assassin. Silhouette returns, having used Trouvaille's technology to transfer more beings into the bodies of Scythe's remaining followers. Sent as ghost-hunters, they attack Elisa and her friends. Upon Failing, Trouvaille, whose body is dead yet whose essence now exists within his armor, joins them to take down Elisa and fulfill his experiments. They take Margo and Concordia, but Peter returns to aid Elisa in her battle. Margo's body is recovered, Silhouette is defeated and Trouvaille, along with the hunters, appear to be disposed of. Giving Peter a solid "get lost" Elisa leaves with her newly "re-alive" sister.</p><h4>Collected Editions</h4><ul><li><a href="http://www.comicvine.com/ghost-omnibus-4-vol-4/4000-387236/" data-ref-id="4000-387236">Ghost Omnibus vol. 4</a> (#1-11)</li><li><a href="http://www.comicvine.com/ghost-omnibus-5-volume-5/4000-450536/" data-ref-id="4000-450536">Ghost Omnibus vol. 5</a> (#12-22)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2787290-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787290-01.jpg	2015-04-06 21:51:03.815741	2015-04-07 20:05:56.2114	1998
266	Agents of Law	19559	\N	http://static.comicvine.com/uploads/scale_small/0/8015/225276-19559-116953-1-agents-of-law.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/225276-19559-116953-1-agents-of-law.jpg	2015-04-06 21:51:03.828275	2015-04-07 20:05:56.92985	1995
272	Martha Washington Stranded In Space	19625	\N	http://static.comicvine.com/uploads/scale_small/6/67663/1991269-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/1991269-01.jpg	2015-04-06 21:51:03.857524	2015-04-07 20:05:58.900467	1995
275	Superman vs. Terminator: Death to the Future	19649	\N	http://static.comicvine.com/uploads/scale_small/0/229/231174-19649-117850-1-superman-vs-termina.jpg	http://static.comicvine.com/uploads/scale_small/0/229/231174-19649-117850-1-superman-vs-termina.jpg	2015-04-06 21:51:03.870716	2015-04-07 20:05:59.826508	1999
278	Sergio Aragonés Stomps Star Wars	19718	<p style="">Nothing is safe from Sergio Aragones!</p>	http://static.comicvine.com/uploads/scale_small/0/40/238987-19718-118228-1-sergio-aragones-stom.jpg	http://static.comicvine.com/uploads/scale_small/0/40/238987-19718-118228-1-sergio-aragones-stom.jpg	2015-04-06 21:51:03.886247	2015-04-07 20:06:00.730313	2000
282	Godzilla Versus Hero Zero	19772	\N	http://static.comicvine.com/uploads/scale_small/1/11307/244230-19772-118716-1-godzilla-versus-hero.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244230-19772-118716-1-godzilla-versus-hero.jpg	2015-04-06 21:51:03.904101	2015-04-07 20:06:01.945658	1995
287	Star Wars: Boba Fett: Overkill	19794	<p style="">One-shot</p>	http://static.comicvine.com/uploads/scale_small/1/11307/245659-19794-118810-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/245659-19794-118810-1-star-wars-boba-fett.jpg	2015-04-06 21:51:03.925748	2015-04-07 20:06:03.481366	2006
292	Corny's Fetish	19976	\N	http://static.comicvine.com/uploads/scale_small/1/11307/250950-19976-119418-1-corny-s-fetish.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/250950-19976-119418-1-corny-s-fetish.jpg	2015-04-06 21:51:03.947365	2015-04-07 20:06:05.154661	1998
295	Buffy The Vampire Slayer: Panel to Panel	20054	\N	http://static.comicvine.com/uploads/scale_small/1/11307/253422-20054-119733-1-buffy-the-vampire-sl.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/253422-20054-119733-1-buffy-the-vampire-sl.jpg	2015-04-06 21:51:03.95954	2015-04-07 20:06:06.07737	2007
301	Star Wars: Qui-Gon & Obi-Wan - The Aurorient Express	20214	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/263503-20214-120506-1-star-wars-qui-gon-a.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263503-20214-120506-1-star-wars-qui-gon-a.jpg	2015-04-06 21:51:03.986613	2015-04-07 20:06:08.132615	2002
303	Star Wars: River of Chaos	20216	\N	http://static.comicvine.com/uploads/scale_small/0/8015/263520-20216-120524-1-star-wars-river-of.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263520-20216-120524-1-star-wars-river-of.jpg	2015-04-06 21:51:03.995379	2015-04-07 20:06:09.239064	1995
307	Star Wars Handbook	20222	\N	http://static.comicvine.com/uploads/scale_small/0/8015/263550-20222-120530-1-star-wars-handbook.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263550-20222-120530-1-star-wars-handbook.jpg	2015-04-06 21:51:04.012701	2015-04-07 20:06:11.000751	1998
401	Aliens vs. Predator: Booty	21224	\N	\N	\N	2015-04-06 21:51:04.419088	2015-04-06 21:51:04.419088	\N
402	Aliens vs. Predator: Eternal	21225	\N	\N	\N	2015-04-06 21:51:04.422908	2015-04-06 21:51:04.422908	\N
403	Aliens vs. Predator: Xenogenesis	21226	\N	\N	\N	2015-04-06 21:51:04.426302	2015-04-06 21:51:04.426302	\N
404	Aliens vs. Predator: War	21227	\N	\N	\N	2015-04-06 21:51:04.430499	2015-04-06 21:51:04.430499	\N
405	Aliens: Earth Angel	21234	\N	\N	\N	2015-04-06 21:51:04.43471	2015-04-06 21:51:04.43471	\N
406	Aliens: Berserker	21235	\N	\N	\N	2015-04-06 21:51:04.438792	2015-04-06 21:51:04.438792	\N
506	Columbus	21828	\N	\N	\N	2015-04-06 21:51:45.685889	2015-04-06 21:51:45.685889	\N
321	Conan: Book of Thoth	20388	<p style="">Collected in <a data-ref-id="4050-44760" href="/conan-book-of-thoth/4050-44760/" slug="conan-book-of-thoth">Conan: Book of Thoth</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/2293/288352-20388-121933-1-conan--book-of-thot.jpg	http://static.comicvine.com/uploads/scale_small/0/2293/288352-20388-121933-1-conan--book-of-thot.jpg	2015-04-06 21:51:04.071425	2015-04-07 20:06:16.248739	2006
325	Star Wars: Jabba The Hutt: The Gaar Suppoon Hit	20706	\N	http://static.comicvine.com/uploads/scale_small/1/15317/317962-20706-124127-1-jabba-the-hutt-the-g.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/317962-20706-124127-1-jabba-the-hutt-the-g.jpg	2015-04-06 21:51:04.090037	2015-04-07 20:06:17.463551	1995
327	Star Wars: The Last Command	20766	<p style="">Collects the Dark Horse volume <a data-ref-id="4050-28350" href="/star-wars-the-last-command/4050-28350/" slug="star-wars-the-last-command"> Star Wars The Last Command</a> #1-6</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754500-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754500-01.jpg	2015-04-06 21:51:04.098088	2015-04-07 20:06:18.058937	1999
335	Dark Horse Maverick: Happy Endings	20834	<p style="">2003 Eisner Award winner in the Best Short Story category for Katie &amp; Mike Mignola's "The Magician and the Snake"</p>	http://static.comicvine.com/uploads/scale_small/0/229/325089-20834-124855-1-dark-horse-maverick.jpg	http://static.comicvine.com/uploads/scale_small/0/229/325089-20834-124855-1-dark-horse-maverick.jpg	2015-04-06 21:51:04.132969	2015-04-07 20:06:20.6877	2002
339	Star Wars: Tales of the Jedi - The Golden Age of the Sith	20896	<p style="">5 Issue Limited-series.</p>	http://static.comicvine.com/uploads/scale_small/5/50638/975351-star_wars__tales_of_the_jedi__the_golden_age_of_the_sith__1__1996_10____page_1.jpg	http://static.comicvine.com/uploads/scale_small/5/50638/975351-star_wars__tales_of_the_jedi__the_golden_age_of_the_sith__1__1996_10____page_1.jpg	2015-04-06 21:51:04.149635	2015-04-07 20:06:21.957332	1996
343	Manga Darkchylde	20924	<p style="">Manga Darkhylde was planned as a 5 issue mini, but was canceled after second issue.</p>	http://static.comicvine.com/uploads/scale_small/1/15776/330596-20924-125366-1-manga-darkchylde.jpg	http://static.comicvine.com/uploads/scale_small/1/15776/330596-20924-125366-1-manga-darkchylde.jpg	2015-04-06 21:51:04.166083	2015-04-07 20:06:23.473882	2005
347	Sin City: The Babe Wore Red and Other Stories	20948	\N	http://static.comicvine.com/uploads/scale_small/0/229/331510-20948-125489-1-sin-city-the-babe-w.jpg	http://static.comicvine.com/uploads/scale_small/0/229/331510-20948-125489-1-sin-city-the-babe-w.jpg	2015-04-06 21:51:04.184179	2015-04-07 20:06:25.025966	1994
350	Star Wars: Tales From Mos Eisley	20998	\N	http://static.comicvine.com/uploads/scale_small/1/15317/334559-20998-125698-1-star-wars-tales-from.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/334559-20998-125698-1-star-wars-tales-from.jpg	2015-04-06 21:51:04.19782	2015-04-07 20:06:25.947394	1996
355	Too Much Coffee Man's Guide for the Perplexed	21039	\N	http://static.comicvine.com/uploads/scale_small/0/229/338795-21039-125920-1-too-much-coffee-man.jpg	http://static.comicvine.com/uploads/scale_small/0/229/338795-21039-125920-1-too-much-coffee-man.jpg	2015-04-06 21:51:04.218125	2015-04-07 20:06:27.995984	1998
359	Star Wars: Episode III: Revenge of the Sith	21047	<p style="">Trade Paper Back that compiles the 4 issue Star Wars Episode III Revenge of the Sith comic book adaptation</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754498-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754498-01.jpg	2015-04-06 21:51:04.23428	2015-04-07 20:06:29.74316	2005
363	Creature From The Black Lagoon	21086	\N	http://static.comicvine.com/uploads/scale_small/1/11863/345521-21086-126524-1-creature-from-the-bl.GIF	http://static.comicvine.com/uploads/scale_small/1/11863/345521-21086-126524-1-creature-from-the-bl.GIF	2015-04-06 21:51:04.25155	2015-04-07 20:06:31.671851	1993
365	X: Hero Special	21111	\N	http://static.comicvine.com/uploads/scale_small/1/11307/347756-21111-126859-1-x-hero-special.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/347756-21111-126859-1-x-hero-special.jpg	2015-04-06 21:51:04.259024	2015-04-07 20:06:32.426957	1994
373	Aliens: Rogue	21127	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-54238" href="/aliens-rogue/4050-54238/" slug="aliens-rogue">Aliens: Rogue</a></li><li><a data-ref-id="4000-126940" href="/aliens-omnibus-volume-3/4000-126940/" slug="aliens-omnibus-volume-3">Aliens Omnibus volume 3</a></li></ul>	http://static.comicvine.com/uploads/scale_small/10/108980/2322546-01.jpg	http://static.comicvine.com/uploads/scale_small/10/108980/2322546-01.jpg	2015-04-06 21:51:04.293126	2015-04-07 20:06:34.863275	1993
376	Harlequin Valentine	21137	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349872-21137-126964-1-harlequin-valentine.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349872-21137-126964-1-harlequin-valentine.jpg	2015-04-06 21:51:04.304532	2015-04-07 20:06:35.762593	2001
381	Starship Troopers: Dominant Species	21150	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349953-21150-126991-1-starship-troopers-d.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349953-21150-126991-1-starship-troopers-d.jpg	2015-04-06 21:51:04.325387	2015-04-07 20:06:37.254708	1998
387	Star Wars: Clone Wars Adventures	21177	<p style="">New stories based on the artwork and story telling style of the Clone Wars animated series</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754505-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754505-01.jpg	2015-04-06 21:51:04.356019	2015-04-07 20:06:39.559339	2004
390	Star Wars: Crimson Empire II: Council of Blood	21180	<p style="">Trade Paper Back collecting the six-issue limited series Star Wars Crimson Empire II Council of Blood.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754452-02.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754452-02.jpg	2015-04-06 21:51:04.368327	2015-04-07 20:06:41.3018	1999
395	Grendel Cycle	21216	\N	http://static.comicvine.com/uploads/scale_small/0/462/357317-21216-127569-1-grendel-cycle.png	http://static.comicvine.com/uploads/scale_small/0/462/357317-21216-127569-1-grendel-cycle.png	2015-04-06 21:51:04.387971	2015-04-07 20:06:43.060034	2008
399	Alien Resurrection	21221	<p style="">Overview<br/></p><p style="">Two hundred years ago, Ellen Ripley died in a blazing inferno. But the government has need of her again. So they've rebuilt her. And now she's going to be tested against a hive of Aliens.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3432824-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3432824-01.jpg	2015-04-06 21:51:04.411027	2015-04-07 20:06:44.577535	1997
407	Aliens: Colonial Marines	21236	\N	\N	\N	2015-04-06 21:51:04.446467	2015-04-06 21:51:04.446467	\N
408	Aliens: Genocide	21237	\N	\N	\N	2015-04-06 21:51:04.449865	2015-04-06 21:51:04.449865	\N
409	Aliens: Kidnapped	21238	\N	\N	\N	2015-04-06 21:51:04.45384	2015-04-06 21:51:04.45384	\N
410	Aliens: Labyrinth	21239	\N	\N	\N	2015-04-06 21:51:04.458717	2015-04-06 21:51:04.458717	\N
411	Aliens: Glass Corridor	21240	\N	\N	\N	2015-04-06 21:51:04.463089	2015-04-06 21:51:04.463089	\N
412	Aliens: Mondo Heat	21241	\N	\N	\N	2015-04-06 21:51:04.466877	2015-04-06 21:51:04.466877	\N
413	Aliens: Lovesick	21242	\N	\N	\N	2015-04-06 21:51:04.470863	2015-04-06 21:51:04.470863	\N
414	Star Wars: Dark Forces - Soldier for the Empire	21243	\N	\N	\N	2015-04-06 21:51:04.475069	2015-04-06 21:51:04.475069	\N
415	Star Wars: The Bounty Hunters	21253	\N	\N	\N	2015-04-06 21:51:04.478877	2015-04-06 21:51:04.478877	\N
416	Aliens: Mondo Pest	21302	\N	\N	\N	2015-04-06 21:51:04.482852	2015-04-06 21:51:04.482852	\N
417	Aliens: Purge	21304	\N	\N	\N	2015-04-06 21:51:04.48706	2015-04-06 21:51:04.48706	\N
418	Aliens: Sacrifice	21305	\N	\N	\N	2015-04-06 21:51:04.491114	2015-04-06 21:51:04.491114	\N
419	Aliens: Salvation	21306	\N	\N	\N	2015-04-06 21:51:04.498878	2015-04-06 21:51:04.498878	\N
420	Aliens: Special	21307	\N	\N	\N	2015-04-06 21:51:04.502453	2015-04-06 21:51:04.502453	\N
421	Aliens: Stalker	21308	\N	\N	\N	2015-04-06 21:51:04.507495	2015-04-06 21:51:04.507495	\N
422	Aliens: Wraith	21309	\N	\N	\N	2015-04-06 21:51:04.51183	2015-04-06 21:51:04.51183	\N
423	The Amazing Screw-On Head	21310	\N	\N	\N	2015-04-06 21:51:04.515224	2015-04-06 21:51:04.515224	\N
424	The American Special	21311	\N	\N	\N	2015-04-06 21:51:04.518777	2015-04-06 21:51:04.518777	\N
425	Aliens: Music of the Spears	21312	\N	\N	\N	2015-04-06 21:51:04.522489	2015-04-06 21:51:04.522489	\N
426	Aliens: Survival	21313	\N	\N	\N	2015-04-06 21:51:04.526197	2015-04-06 21:51:04.526197	\N
427	Aliens: Xenogenesis	21314	\N	\N	\N	2015-04-06 21:51:04.529923	2015-04-06 21:51:04.529923	\N
428	The American: Lost in America	21344	\N	\N	\N	2015-04-06 21:51:04.533997	2015-04-06 21:51:04.533997	\N
429	Ancient Joe	21346	\N	\N	\N	2015-04-06 21:51:04.538169	2015-04-06 21:51:04.538169	\N
430	Andrew Vachss' Underground	21347	\N	\N	\N	2015-04-06 21:51:04.542506	2015-04-06 21:51:04.542506	\N
431	Animal Confidential	21349	\N	\N	\N	2015-04-06 21:51:04.549253	2015-04-06 21:51:04.549253	\N
432	The 1,001 Nights of Bacchus	21350	\N	\N	\N	2015-04-06 21:51:04.552596	2015-04-06 21:51:04.552596	\N
433	The 13th Son	21351	\N	\N	\N	2015-04-06 21:51:04.558294	2015-04-06 21:51:04.558294	\N
434	Appleseed Databook	21354	\N	\N	\N	2015-04-06 21:51:04.561942	2015-04-06 21:51:04.561942	\N
435	ArchEnemies	21356	\N	\N	\N	2015-04-06 21:51:04.565411	2015-04-06 21:51:04.565411	\N
436	The Incredibles	21365	\N	\N	\N	2015-04-06 21:51:04.569202	2015-04-06 21:51:04.569202	\N
437	Bacchus	21380	\N	\N	\N	2015-04-06 21:51:04.572629	2015-04-06 21:51:04.572629	\N
438	Barb Wire Comics Magazine Special	21384	\N	\N	\N	2015-04-06 21:51:04.576979	2015-04-06 21:51:04.576979	\N
439	Barb Wire Movie Special	21385	\N	\N	\N	2015-04-06 21:51:04.580851	2015-04-06 21:51:04.580851	\N
440	Baseball Greats	21386	\N	\N	\N	2015-04-06 21:51:04.585822	2015-04-06 21:51:04.585822	\N
441	Basil Wolverton's Fantastic Fables	21388	\N	\N	\N	2015-04-06 21:51:04.590314	2015-04-06 21:51:04.590314	\N
442	Bettie Page Comics: Spicy Adventure	21389	\N	\N	\N	2015-04-06 21:51:04.598041	2015-04-06 21:51:04.598041	\N
443	Big	21390	\N	\N	\N	2015-04-06 21:51:04.600947	2015-04-06 21:51:04.600947	\N
444	Big Blown Baby	21391	\N	\N	\N	2015-04-06 21:51:04.605981	2015-04-06 21:51:04.605981	\N
445	Big Guy and Rusty the Boy Robot	21392	\N	\N	\N	2015-04-06 21:51:04.610179	2015-04-06 21:51:04.610179	\N
446	Billi 99	21393	\N	\N	\N	2015-04-06 21:51:04.613801	2015-04-06 21:51:04.613801	\N
447	Billy the Kid's Old-Timey Oddities	21394	\N	\N	\N	2015-04-06 21:51:04.617546	2015-04-06 21:51:04.617546	\N
448	Black Cross Special	21395	\N	\N	\N	2015-04-06 21:51:04.621825	2015-04-06 21:51:04.621825	\N
449	Black Cross: Dirty Work	21396	\N	\N	\N	2015-04-06 21:51:04.625777	2015-04-06 21:51:04.625777	\N
450	Basil Wolverton's Gateway to Horror	21400	\N	\N	\N	2015-04-06 21:51:04.62961	2015-04-06 21:51:04.62961	\N
451	Batman Versus Predator	21402	\N	\N	\N	2015-04-06 21:51:04.634181	2015-04-06 21:51:04.634181	\N
452	Blanche Goes To Hollywood	21404	\N	\N	\N	2015-04-06 21:51:04.638202	2015-04-06 21:51:04.638202	\N
453	Sergio Aragonés Blair Which?	21405	\N	\N	\N	2015-04-06 21:51:04.649019	2015-04-06 21:51:04.649019	\N
454	Blanche Goes to New York	21406	\N	\N	\N	2015-04-06 21:51:04.653473	2015-04-06 21:51:04.653473	\N
455	Blast Corps	21407	\N	\N	\N	2015-04-06 21:51:04.658469	2015-04-06 21:51:04.658469	\N
456	The Blue Lily	21408	\N	\N	\N	2015-04-06 21:51:04.662218	2015-04-06 21:51:04.662218	\N
457	The Blue Witch of Oz	21409	\N	\N	\N	2015-04-06 21:51:04.666373	2015-04-06 21:51:04.666373	\N
458	Boris the Bear Instant Classics	21410	\N	\N	\N	2015-04-06 21:51:04.670806	2015-04-06 21:51:04.670806	\N
459	Bob Burden's Original Mysterymen	21411	\N	\N	\N	2015-04-06 21:51:04.674885	2015-04-06 21:51:04.674885	\N
460	Hellboy: Free Comic Book Day	21448	\N	\N	\N	2015-04-06 21:51:04.679139	2015-04-06 21:51:04.679139	\N
461	Buffy the Vampire Slayer Annual 1999	21454	\N	\N	\N	2015-04-06 21:51:04.683945	2015-04-06 21:51:04.683945	\N
462	Buffy the Vampire Slayer: Chaos Bleeds	21457	\N	\N	\N	2015-04-06 21:51:04.689257	2015-04-06 21:51:04.689257	\N
463	Buffy the Vampire Slayer: Creatures of Habit	21458	\N	\N	\N	2015-04-06 21:51:04.697266	2015-04-06 21:51:04.697266	\N
464	Caravan Kidd	21459	\N	\N	\N	2015-04-06 21:51:04.700465	2015-04-06 21:51:04.700465	\N
465	By Bizarre Hands	21460	\N	\N	\N	2015-04-06 21:51:04.705519	2015-04-06 21:51:04.705519	\N
466	Caravan Kidd Part 2	21462	\N	\N	\N	2015-04-06 21:51:04.711253	2015-04-06 21:51:04.711253	\N
467	Caravan Kidd, Part 3	21463	\N	\N	\N	2015-04-06 21:51:04.715841	2015-04-06 21:51:04.715841	\N
468	Buffy the Vampire Slayer: Spike and Dru: All's Fair	21465	\N	\N	\N	2015-04-06 21:51:04.721033	2015-04-06 21:51:04.721033	\N
469	Buffy the Vampire Slayer: Spike and Dru: The Queen of Hearts	21466	\N	\N	\N	2015-04-06 21:51:04.725	2015-04-06 21:51:04.725	\N
470	Buffy the Vampire Slayer: Spike and Dru	21467	\N	\N	\N	2015-04-06 21:51:04.729933	2015-04-06 21:51:04.729933	\N
471	Buffy the Vampire Slayer: Willow and Tara -- Wilderness	21468	\N	\N	\N	2015-04-06 21:51:04.734	2015-04-06 21:51:04.734	\N
472	Buffy the Vampire Slayer: Willow and Tara - Wannablessedbe	21469	\N	\N	\N	2015-04-06 21:51:04.737852	2015-04-06 21:51:04.737852	\N
473	Buffy the Vampire Slayer: Giles	21471	\N	\N	\N	2015-04-06 21:51:04.743113	2015-04-06 21:51:04.743113	\N
474	Buffy the Vampire Slayer: Haunted	21472	\N	\N	\N	2015-04-06 21:51:04.748851	2015-04-06 21:51:04.748851	\N
475	Buffy the Vampire Slayer: Ring of Fire	21475	\N	\N	\N	2015-04-06 21:51:04.752902	2015-04-06 21:51:04.752902	\N
476	Buffy the Vampire Slayer: Lost and Found	21476	\N	\N	\N	2015-04-06 21:51:04.758137	2015-04-06 21:51:04.758137	\N
477	Buffy the Vampire Slayer: Lovers Walk	21477	\N	\N	\N	2015-04-06 21:51:04.762087	2015-04-06 21:51:04.762087	\N
478	Buffy the Vampire Slayer: Jonathan	21478	\N	\N	\N	2015-04-06 21:51:04.76611	2015-04-06 21:51:04.76611	\N
479	Caravan Kidd Holiday Special	21480	\N	\N	\N	2015-04-06 21:51:04.771127	2015-04-06 21:51:04.771127	\N
480	Caravan Kidd Valentine's Day Special	21481	\N	\N	\N	2015-04-06 21:51:04.774972	2015-04-06 21:51:04.774972	\N
481	Catalyst: Agents of Change	21482	\N	\N	\N	2015-04-06 21:51:04.778975	2015-04-06 21:51:04.778975	\N
482	Classic Star Wars: A Long Time Ago....	21483	\N	\N	\N	2015-04-06 21:51:04.782611	2015-04-06 21:51:04.782611	\N
483	Classic Star Wars: Han Solo at Stars' End	21484	\N	\N	\N	2015-04-06 21:51:04.786609	2015-04-06 21:51:04.786609	\N
484	Classic Star Wars: The Vandelhelm Mission	21485	\N	\N	\N	2015-04-06 21:51:04.791231	2015-04-06 21:51:04.791231	\N
485	Ghost in the Shell	21488	\N	\N	\N	2015-04-06 21:51:04.797911	2015-04-06 21:51:04.797911	\N
486	Ghost in the Shell 1.5: Human-Error Processor	21490	\N	\N	\N	2015-04-06 21:51:04.801411	2015-04-06 21:51:04.801411	\N
487	Ghost in the Shell 2: Man-Machine Interface	21491	\N	\N	\N	2015-04-06 21:51:04.807542	2015-04-06 21:51:04.807542	\N
488	Dominion: Conflict 1 No More Noise	21493	\N	\N	\N	2015-04-06 21:51:04.812895	2015-04-06 21:51:04.812895	\N
489	Appleseed	21494	\N	\N	\N	2015-04-06 21:51:04.817083	2015-04-06 21:51:04.817083	\N
490	Orion	21496	\N	\N	\N	2015-04-06 21:51:04.82209	2015-04-06 21:51:04.82209	\N
491	Intron Depot	21497	\N	\N	\N	2015-04-06 21:51:04.825828	2015-04-06 21:51:04.825828	\N
492	Dominion Book One	21504	\N	\N	\N	2015-04-06 21:51:04.829415	2015-04-06 21:51:04.829415	\N
493	Sin City: Family Values	21638	\N	\N	\N	2015-04-06 21:51:04.83343	2015-04-06 21:51:04.83343	\N
494	James Bond 007: Serpent's Tooth	21648	\N	\N	\N	2015-04-06 21:51:04.837477	2015-04-06 21:51:04.837477	\N
495	Sin City: The Hard Goodbye	21649	\N	\N	\N	2015-04-06 21:51:04.841943	2015-04-06 21:51:04.841943	\N
496	Dark Horse Monsters	21656	\N	\N	\N	2015-04-06 21:51:04.848252	2015-04-06 21:51:04.848252	\N
497	Hellboy: Christmas Special	21658	\N	\N	\N	2015-04-06 21:51:04.851758	2015-04-06 21:51:04.851758	\N
498	Rick Geary's Wonders & Oddities	21664	\N	\N	\N	2015-04-06 21:51:04.857422	2015-04-06 21:51:04.857422	\N
499	Indiana Jones and the Kingdom of the Crystal Skull	21668	\N	\N	\N	2015-04-06 21:51:04.861277	2015-04-06 21:51:04.861277	\N
500	Sin City: Silent Night	21672	\N	\N	\N	2015-04-06 21:51:04.865029	2015-04-06 21:51:04.865029	\N
501	Sin City: Lost, Lonely, & Lethal	21675	\N	\N	\N	2015-04-06 21:51:04.868836	2015-04-06 21:51:04.868836	\N
502	Star Wars: Empire	21677	\N	\N	\N	2015-04-06 21:51:45.667702	2015-04-06 21:51:45.667702	\N
503	B.P.R.D.: War on Frogs	21800	\N	\N	\N	2015-04-06 21:51:45.671442	2015-04-06 21:51:45.671442	\N
504	The Clowns	21826	\N	\N	\N	2015-04-06 21:51:45.676833	2015-04-06 21:51:45.676833	\N
505	Clonezone Special	21827	\N	\N	\N	2015-04-06 21:51:45.681157	2015-04-06 21:51:45.681157	\N
507	Comic Book	21829	\N	\N	\N	2015-04-06 21:51:45.689964	2015-04-06 21:51:45.689964	\N
508	Comics and Stories	21830	\N	\N	\N	2015-04-06 21:51:45.694115	2015-04-06 21:51:45.694115	\N
509	Predator: Big Game	21859	\N	\N	\N	2015-04-06 21:51:45.69816	2015-04-06 21:51:45.69816	\N
510	Predator: Captive	21860	\N	\N	\N	2015-04-06 21:51:45.701988	2015-04-06 21:51:45.701988	\N
511	Predator: Cold War	21861	\N	\N	\N	2015-04-06 21:51:45.705808	2015-04-06 21:51:45.705808	\N
512	B.P.R.D.: The Ectoplasmic Man	21875	\N	\N	\N	2015-04-06 21:51:45.71044	2015-04-06 21:51:45.71044	\N
513	Conan the Cimmerian	21896	\N	\N	\N	2015-04-06 21:51:45.719343	2015-04-06 21:51:45.719343	\N
514	Pigeons from Hell	21897	\N	\N	\N	2015-04-06 21:51:45.722329	2015-04-06 21:51:45.722329	\N
515	3 Story: The Secret History of the Giant Man	21913	\N	\N	\N	2015-04-06 21:51:45.727858	2015-04-06 21:51:45.727858	\N
516	Hellboy: The Crooked Man	21935	\N	\N	\N	2015-04-06 21:51:45.731989	2015-04-06 21:51:45.731989	\N
517	The Mask	21952	\N	\N	\N	2015-04-06 21:51:45.735685	2015-04-06 21:51:45.735685	\N
518	The Mask Returns	21954	\N	\N	\N	2015-04-06 21:51:45.740452	2015-04-06 21:51:45.740452	\N
519	The Savage Sword of Conan	21975	\N	\N	\N	2015-04-06 21:51:45.744997	2015-04-06 21:51:45.744997	\N
520	F5 Origin	22021	\N	\N	\N	2015-04-06 21:51:45.749002	2015-04-06 21:51:45.749002	\N
521	Silke	22022	\N	\N	\N	2015-04-06 21:51:45.752999	2015-04-06 21:51:45.752999	\N
522	Shi: Ju-Nen	22076	\N	\N	\N	2015-04-06 21:51:45.756787	2015-04-06 21:51:45.756787	\N
523	Indiana Jones and the Tomb of the Gods	22102	\N	\N	\N	2015-04-06 21:51:45.76103	2015-04-06 21:51:45.76103	\N
524	B.P.R.D.: The Warning	22108	\N	\N	\N	2015-04-06 21:51:45.76995	2015-04-06 21:51:45.76995	\N
525	X: One Shot To The Head	22116	\N	\N	\N	2015-04-06 21:51:45.773615	2015-04-06 21:51:45.773615	\N
526	Mayhem	22202	\N	\N	\N	2015-04-06 21:51:45.778576	2015-04-06 21:51:45.778576	\N
527	Conan and the Demons of Khitai	22214	\N	\N	\N	2015-04-06 21:51:45.787554	2015-04-06 21:51:45.787554	\N
528	Age of Conan: Hyborian Adventures	22215	\N	\N	\N	2015-04-06 21:51:45.791957	2015-04-06 21:51:45.791957	\N
529	The Helm	22240	\N	\N	\N	2015-04-06 21:51:45.796083	2015-04-06 21:51:45.796083	\N
530	Sergio Aragones' Groo	22343	\N	\N	\N	2015-04-06 21:51:45.800658	2015-04-06 21:51:45.800658	\N
531	Dark Horse Book of Hauntings	22346	\N	\N	\N	2015-04-06 21:51:45.80484	2015-04-06 21:51:45.80484	\N
532	Signal To Noise	22353	\N	\N	\N	2015-04-06 21:51:45.809582	2015-04-06 21:51:45.809582	\N
533	Buffy the Vampire Slayer: Tales of the Slayers	22356	\N	\N	\N	2015-04-06 21:51:45.815902	2015-04-06 21:51:45.815902	\N
534	Drawing On Your Nightmares	22359	\N	\N	\N	2015-04-06 21:51:45.819348	2015-04-06 21:51:45.819348	\N
535	Small Killing	22361	\N	\N	\N	2015-04-06 21:51:45.822483	2015-04-06 21:51:45.822483	\N
536	Conan and the Jewels of Gwahlur	22365	\N	\N	\N	2015-04-06 21:51:45.82781	2015-04-06 21:51:45.82781	\N
537	Conan and the Songs of the Dead	22367	\N	\N	\N	2015-04-06 21:51:45.83191	2015-04-06 21:51:45.83191	\N
538	Concrete: Fragile Creatures	22369	\N	\N	\N	2015-04-06 21:51:45.836285	2015-04-06 21:51:45.836285	\N
539	Michael Chabon Presents: The Amazing Adventures of the Escapist	22380	\N	\N	\N	2015-04-06 21:51:45.841014	2015-04-06 21:51:45.841014	\N
540	The 13th Son: Worse Thing Waiting	22384	\N	\N	\N	2015-04-06 21:51:45.844868	2015-04-06 21:51:45.844868	\N
541	Coutoo	22395	\N	\N	\N	2015-04-06 21:51:45.848991	2015-04-06 21:51:45.848991	\N
542	Criminal Macabre: A Cal McDonald Mystery	22397	\N	\N	\N	2015-04-06 21:51:45.854017	2015-04-06 21:51:45.854017	\N
543	Criminal Macabre: Cell Block 666	22399	\N	\N	\N	2015-04-06 21:51:45.858623	2015-04-06 21:51:45.858623	\N
544	Criminal Macabre: Feat of Clay	22400	\N	\N	\N	2015-04-06 21:51:45.863177	2015-04-06 21:51:45.863177	\N
545	The Goon: Chinatown and the Mystery of Mr. Wicker	22478	\N	\N	\N	2015-04-06 21:51:45.869917	2015-04-06 21:51:45.869917	\N
546	Aliens: Tribes	22479	\N	\N	\N	2015-04-06 21:51:45.873536	2015-04-06 21:51:45.873536	\N
547	Creatures of the Night	22483	\N	\N	\N	2015-04-06 21:51:45.879247	2015-04-06 21:51:45.879247	\N
548	Criminal Macabre: Two Red Eyes	22503	\N	\N	\N	2015-04-06 21:51:45.883865	2015-04-06 21:51:45.883865	\N
549	Critical Error	22504	\N	\N	\N	2015-04-06 21:51:45.887369	2015-04-06 21:51:45.887369	\N
550	Cromwell Stone	22505	\N	\N	\N	2015-04-06 21:51:45.891486	2015-04-06 21:51:45.891486	\N
551	Crush	22506	\N	\N	\N	2015-04-06 21:51:45.895607	2015-04-06 21:51:45.895607	\N
552	Curse of Dracula	22512	\N	\N	\N	2015-04-06 21:51:45.900034	2015-04-06 21:51:45.900034	\N
553	Damn Nation	22513	\N	\N	\N	2015-04-06 21:51:45.903737	2015-04-06 21:51:45.903737	\N
554	Dance of Lifey Death	22514	\N	\N	\N	2015-04-06 21:51:45.908208	2015-04-06 21:51:45.908208	\N
555	Dark Horse Classics - Aliens vs. Predator	22515	\N	\N	\N	2015-04-06 21:51:45.912512	2015-04-06 21:51:45.912512	\N
556	Star Wars: Dark Empire	22516	\N	\N	\N	2015-04-06 21:51:45.920036	2015-04-06 21:51:45.920036	\N
557	Dark Horse Classics: 20,000 Leagues Under the Sea	22517	\N	\N	\N	2015-04-06 21:51:45.924662	2015-04-06 21:51:45.924662	\N
558	Dark Horse Classics: Godzilla - King of the Monsters	22518	\N	\N	\N	2015-04-06 21:51:45.930023	2015-04-06 21:51:45.930023	\N
559	Dark Horse Classics: Godzilla Color Special	22520	\N	\N	\N	2015-04-06 21:51:45.933845	2015-04-06 21:51:45.933845	\N
560	Dark Horse Classics: The Last of the Mohicans	22521	\N	\N	\N	2015-04-06 21:51:45.937238	2015-04-06 21:51:45.937238	\N
561	Mask Omnibus	22528	\N	\N	\N	2015-04-06 21:51:45.941448	2015-04-06 21:51:45.941448	\N
562	The Blackburne Covenant	22546	\N	\N	\N	2015-04-06 21:51:45.945395	2015-04-06 21:51:45.945395	\N
563	9-11	22549	\N	\N	\N	2015-04-06 21:51:45.949862	2015-04-06 21:51:45.949862	\N
564	300	22632	\N	\N	\N	2015-04-06 21:51:45.953847	2015-04-06 21:51:45.953847	\N
565	300: The Art of the Film	22633	\N	\N	\N	2015-04-06 21:51:45.958012	2015-04-06 21:51:45.958012	\N
566	3x3 Eyes	22641	\N	\N	\N	2015-04-06 21:51:45.962641	2015-04-06 21:51:45.962641	\N
567	Tongue Lash	22667	\N	\N	\N	2015-04-06 21:51:45.969027	2015-04-06 21:51:45.969027	\N
568	Star Wars: The Force Unleashed	22675	\N	\N	\N	2015-04-06 21:51:45.972834	2015-04-06 21:51:45.972834	\N
569	Neil Gaiman's Murder Mysteries	22691	\N	\N	\N	2015-04-06 21:51:45.978238	2015-04-06 21:51:45.978238	\N
570	R.I.P.D.	22934	\N	\N	\N	2015-04-06 21:51:45.982043	2015-04-06 21:51:45.982043	\N
571	Sin City: Sex and Violence	22942	\N	\N	\N	2015-04-06 21:51:45.986287	2015-04-06 21:51:45.986287	\N
572	Sin City: Just Another Saturday Night	22943	\N	\N	\N	2015-04-06 21:51:45.990544	2015-04-06 21:51:45.990544	\N
573	Star Wars: The Clone Wars	22969	\N	\N	\N	2015-04-06 21:51:45.994477	2015-04-06 21:51:45.994477	\N
574	Race Of Scorpions	22972	\N	\N	\N	2015-04-06 21:51:45.998914	2015-04-06 21:51:45.998914	\N
575	Race Of Scorpions	22974	\N	\N	\N	2015-04-06 21:51:46.003161	2015-04-06 21:51:46.003161	\N
576	The Real Adventures Of Jonny Quest	22980	\N	\N	\N	2015-04-06 21:51:46.007337	2015-04-06 21:51:46.007337	\N
577	Dark Horse: Twenty Years	23012	\N	\N	\N	2015-04-06 21:51:46.011851	2015-04-06 21:51:46.011851	\N
578	Darkness Falls: The Tragic Life of Matilda Dixon	23013	\N	\N	\N	2015-04-06 21:51:46.019482	2015-04-06 21:51:46.019482	\N
579	Dead or Alive: A Cyberpunk Western	23014	\N	\N	\N	2015-04-06 21:51:46.023321	2015-04-06 21:51:46.023321	\N
580	The Dead Rider	23016	\N	\N	\N	2015-04-06 21:51:46.028904	2015-04-06 21:51:46.028904	\N
581	Deadface: Doing the Islands with Bacchus	23017	\N	\N	\N	2015-04-06 21:51:46.032844	2015-04-06 21:51:46.032844	\N
582	Devil Chef	23029	\N	\N	\N	2015-04-06 21:51:46.036504	2015-04-06 21:51:46.036504	\N
583	The Devil's Footprints	23032	\N	\N	\N	2015-04-06 21:51:46.040594	2015-04-06 21:51:46.040594	\N
584	Diablo II: Tales of Sanctuary	23034	\N	\N	\N	2015-04-06 21:51:46.04483	2015-04-06 21:51:46.04483	\N
585	Digimon	23035	\N	\N	\N	2015-04-06 21:51:46.048688	2015-04-06 21:51:46.048688	\N
586	Dirty Pair: Sim Hell	23037	\N	\N	\N	2015-04-06 21:51:46.053372	2015-04-06 21:51:46.053372	\N
587	Disney's Tarzan	23038	\N	\N	\N	2015-04-06 21:51:46.058746	2015-04-06 21:51:46.058746	\N
588	Division 13	23039	\N	\N	\N	2015-04-06 21:51:46.068821	2015-04-06 21:51:46.068821	\N
589	Doc Savage: Curse of the Fire God	23041	\N	\N	\N	2015-04-06 21:51:46.072035	2015-04-06 21:51:46.072035	\N
590	Tale of Genji	23044	\N	\N	\N	2015-04-06 21:51:46.078194	2015-04-06 21:51:46.078194	\N
591	Vampire Hunter D	23045	\N	\N	\N	2015-04-06 21:51:46.082103	2015-04-06 21:51:46.082103	\N
592	Dominion Special	23069	\N	\N	\N	2015-04-06 21:51:46.086818	2015-04-06 21:51:46.086818	\N
593	Domu: A Child's Dream	23070	\N	\N	\N	2015-04-06 21:51:46.090786	2015-04-06 21:51:46.090786	\N
594	Dr. Giggles	23096	\N	\N	\N	2015-04-06 21:51:46.094626	2015-04-06 21:51:46.094626	\N
595	Dr. Robot Special	23097	\N	\N	\N	2015-04-06 21:51:46.098801	2015-04-06 21:51:46.098801	\N
596	My Name Is Bruce	23114	\N	\N	\N	2015-04-06 21:51:46.103181	2015-04-06 21:51:46.103181	\N
597	Droopy	23115	\N	\N	\N	2015-04-06 21:51:46.108206	2015-04-06 21:51:46.108206	\N
598	The Goon Noir	23116	\N	\N	\N	2015-04-06 21:51:46.113039	2015-04-06 21:51:46.113039	\N
599	Dylan Dog	23117	\N	\N	\N	2015-04-06 21:51:46.119025	2015-04-06 21:51:46.119025	\N
600	Solomon Kane	23118	\N	\N	\N	2015-04-06 21:51:46.12254	2015-04-06 21:51:46.12254	\N
601	Tarzan: A Tale of Mugambi	23138	\N	\N	\N	2015-04-06 21:51:46.127905	2015-04-06 21:51:46.127905	\N
602	Tarzan: The Lost Adventure	23139	\N	\N	\N	2015-04-06 21:51:46.132067	2015-04-06 21:51:46.132067	\N
603	Tarzan: The Rivers of Blood	23154	\N	\N	\N	2015-04-06 21:51:46.136109	2015-04-06 21:51:46.136109	\N
604	The Return of Tarzan	23156	\N	\N	\N	2015-04-06 21:51:46.140949	2015-04-06 21:51:46.140949	\N
605	Egon	23157	\N	\N	\N	2015-04-06 21:51:46.145232	2015-04-06 21:51:46.145232	\N
606	Eighth Wonder	23159	\N	\N	\N	2015-04-06 21:51:46.149486	2015-04-06 21:51:46.149486	\N
607	El Zombo Fantasma	23160	\N	\N	\N	2015-04-06 21:51:46.15364	2015-04-06 21:51:46.15364	\N
608	Emily the Strange	23170	\N	\N	\N	2015-04-06 21:51:46.157437	2015-04-06 21:51:46.157437	\N
609	The Eudaemon	23171	\N	\N	\N	2015-04-06 21:51:46.162264	2015-04-06 21:51:46.162264	\N
610	Exquisite Corpse	23173	\N	\N	\N	2015-04-06 21:51:46.169075	2015-04-06 21:51:46.169075	\N
611	Fat Dog Mendoza	23174	\N	\N	\N	2015-04-06 21:51:46.173947	2015-04-06 21:51:46.173947	\N
612	Feeders	23175	\N	\N	\N	2015-04-06 21:51:46.179813	2015-04-06 21:51:46.179813	\N
613	Fierce	23176	\N	\N	\N	2015-04-06 21:51:46.183944	2015-04-06 21:51:46.183944	\N
614	Flaming Carrot Comics Annual	23178	\N	\N	\N	2015-04-06 21:51:46.188211	2015-04-06 21:51:46.188211	\N
615	Flaxen	23179	\N	\N	\N	2015-04-06 21:51:46.192981	2015-04-06 21:51:46.192981	\N
616	Floaters	23180	\N	\N	\N	2015-04-06 21:51:46.198199	2015-04-06 21:51:46.198199	\N
617	The Foot Soldiers	23181	\N	\N	\N	2015-04-06 21:51:46.204497	2015-04-06 21:51:46.204497	\N
618	Freaks of the Heartland	23182	\N	\N	\N	2015-04-06 21:51:46.211393	2015-04-06 21:51:46.211393	\N
619	Freaks' Amour	23231	\N	\N	\N	2015-04-06 21:51:46.216225	2015-04-06 21:51:46.216225	\N
620	Wacky Squirrel Halloween Adventure Special	23241	\N	\N	\N	2015-04-06 21:51:46.225012	2015-04-06 21:51:46.225012	\N
621	White Like She	23250	\N	\N	\N	2015-04-06 21:51:46.230752	2015-04-06 21:51:46.230752	\N
622	Walter: Campaign of Terror	23251	\N	\N	\N	2015-04-06 21:51:46.235515	2015-04-06 21:51:46.235515	\N
623	Wacky Squirrel Summer Fun Special	23255	\N	\N	\N	2015-04-06 21:51:46.240414	2015-04-06 21:51:46.240414	\N
624	Warrior Of Waverly Street	23256	\N	\N	\N	2015-04-06 21:51:46.245118	2015-04-06 21:51:46.245118	\N
625	Shadow Lady Special	23269	\N	\N	\N	2015-04-06 21:51:46.249308	2015-04-06 21:51:46.249308	\N
626	Universal Monsters: Frankenstein	23301	\N	\N	\N	2015-04-06 21:51:46.253409	2015-04-06 21:51:46.253409	\N
627	Universal Monsters: The Mummy	23302	\N	\N	\N	2015-04-06 21:51:46.257835	2015-04-06 21:51:46.257835	\N
628	Universal Monsters: Dracula	23303	\N	\N	\N	2015-04-06 21:51:46.275567	2015-04-06 21:51:46.275567	\N
629	Star Wars: Jedi - Mace Windu	23340	\N	\N	\N	2015-04-06 21:51:46.280994	2015-04-06 21:51:46.280994	\N
630	Last Train To Deadsville: A Cal McDonald Mystery	23369	\N	\N	\N	2015-04-06 21:51:46.285595	2015-04-06 21:51:46.285595	\N
631	Galactic	23393	\N	\N	\N	2015-04-06 21:51:46.289706	2015-04-06 21:51:46.289706	\N
632	Gamera	23394	\N	\N	\N	2015-04-06 21:51:46.294059	2015-04-06 21:51:46.294059	\N
633	Pumpkinhead: The Rites of Exorcism	23403	\N	\N	\N	2015-04-06 21:51:46.298267	2015-04-06 21:51:46.298267	\N
634	Ghost and The Shadow	23414	\N	\N	\N	2015-04-06 21:51:46.302923	2015-04-06 21:51:46.302923	\N
635	Ghost Handbook	23415	\N	\N	\N	2015-04-06 21:51:46.307971	2015-04-06 21:51:46.307971	\N
636	Ghost/Batgirl	23416	\N	\N	\N	2015-04-06 21:51:46.312441	2015-04-06 21:51:46.312441	\N
637	Star Wars: The Clone Wars - Shipyards of Doom	23494	\N	\N	\N	2015-04-06 21:51:46.320697	2015-04-06 21:51:46.320697	\N
638	Grendel: Devil's Reign	23523	\N	\N	\N	2015-04-06 21:51:46.324935	2015-04-06 21:51:46.324935	\N
639	The Milkman Murders	23530	\N	\N	\N	2015-04-06 21:51:46.330472	2015-04-06 21:51:46.330472	\N
640	Hellboy: In the Chapel of Moloch	23549	\N	\N	\N	2015-04-06 21:51:46.334599	2015-04-06 21:51:46.334599	\N
641	Hellboy Animated: The Black Wedding	23591	\N	\N	\N	2015-04-06 21:51:46.338452	2015-04-06 21:51:46.338452	\N
642	Dark Horse Archives - Doctor Solar Man of the Atom	23598	\N	\N	\N	2015-04-06 21:51:46.342962	2015-04-06 21:51:46.342962	\N
643	Dark Horse Archives - Magnus Robot Fighter 4000 A. D.	23600	\N	\N	\N	2015-04-06 21:51:46.346601	2015-04-06 21:51:46.346601	\N
644	Gigantic	23601	\N	\N	\N	2015-04-06 21:51:46.35112	2015-04-06 21:51:46.35112	\N
645	Kull	23605	\N	\N	\N	2015-04-06 21:51:46.354671	2015-04-06 21:51:46.354671	\N
646	Buffy the Vampire Slayer: Reunion	23614	\N	\N	\N	2015-04-06 21:51:46.358507	2015-04-06 21:51:46.358507	\N
647	Star Wars: Chewbacca	23735	\N	\N	\N	2015-04-06 21:51:46.363245	2015-04-06 21:51:46.363245	\N
648	Trekker	23754	\N	\N	\N	2015-04-06 21:51:46.370605	2015-04-06 21:51:46.370605	\N
649	Zone	23772	\N	\N	\N	2015-04-06 21:51:46.375062	2015-04-06 21:51:46.375062	\N
650	ZombieWorld: Tree of Death	23774	\N	\N	\N	2015-04-06 21:51:46.380443	2015-04-06 21:51:46.380443	\N
651	ZombieWorld: Home for the Holidays	23775	\N	\N	\N	2015-04-06 21:51:46.384692	2015-04-06 21:51:46.384692	\N
652	ZombieWorld: Eat Your Heart Out	23776	\N	\N	\N	2015-04-06 21:51:46.388584	2015-04-06 21:51:46.388584	\N
653	ZombieWorld: Dead End	23777	\N	\N	\N	2015-04-06 21:51:46.392804	2015-04-06 21:51:46.392804	\N
654	Young Indiana Jones Chronicles	23778	\N	\N	\N	2015-04-06 21:51:46.396604	2015-04-06 21:51:46.396604	\N
655	The Young Cynics Club	23798	\N	\N	\N	2015-04-06 21:51:46.400664	2015-04-06 21:51:46.400664	\N
656	You're Under Arrest	23799	\N	\N	\N	2015-04-06 21:51:46.404605	2015-04-06 21:51:46.404605	\N
657	World Below: Deeper And Stranger	23806	\N	\N	\N	2015-04-06 21:51:46.408827	2015-04-06 21:51:46.408827	\N
658	Version	23807	\N	\N	\N	2015-04-06 21:51:46.418435	2015-04-06 21:51:46.418435	\N
659	Fairies	23820	\N	\N	\N	2015-04-06 21:51:46.421597	2015-04-06 21:51:46.421597	\N
660	Venus Wars II	23824	\N	\N	\N	2015-04-06 21:51:46.426722	2015-04-06 21:51:46.426722	\N
661	Van Helsing: From Beneath The Rue Morgue	23825	\N	\N	\N	2015-04-06 21:51:46.430926	2015-04-06 21:51:46.430926	\N
662	The Cleaners	23862	\N	\N	\N	2015-04-06 21:51:46.435452	2015-04-06 21:51:46.435452	\N
663	Urban Legends	24052	\N	\N	\N	2015-04-06 21:51:46.439353	2015-04-06 21:51:46.439353	\N
664	Ultraman Tiga	24053	\N	\N	\N	2015-04-06 21:51:46.443507	2015-04-06 21:51:46.443507	\N
665	Two Faces Of Tomorrow	24061	\N	\N	\N	2015-04-06 21:51:46.447732	2015-04-06 21:51:46.447732	\N
666	The Umbrella Academy: Dallas	24066	\N	\N	\N	2015-04-06 21:51:46.451504	2015-04-06 21:51:46.451504	\N
667	Trekker Color Special	24101	\N	\N	\N	2015-04-06 21:51:46.455682	2015-04-06 21:51:46.455682	\N
668	Torch Of Liberty Special	24102	\N	\N	\N	2015-04-06 21:51:46.460027	2015-04-06 21:51:46.460027	\N
669	Sock Monkey	24104	\N	\N	\N	2015-04-06 21:51:46.469167	2015-04-06 21:51:46.469167	\N
670	Sock Monkey	24105	\N	\N	\N	2015-04-06 21:51:46.472727	2015-04-06 21:51:46.472727	\N
671	Sock Monkey	24106	\N	\N	\N	2015-04-06 21:51:46.478625	2015-04-06 21:51:46.478625	\N
672	Sock Monkey	24107	\N	\N	\N	2015-04-06 21:51:46.483374	2015-04-06 21:51:46.483374	\N
673	Tongue Lash II	24108	\N	\N	\N	2015-04-06 21:51:46.486974	2015-04-06 21:51:46.486974	\N
674	Titan Special	24185	\N	\N	\N	2015-04-06 21:51:46.491174	2015-04-06 21:51:46.491174	\N
675	Thirteen O'Clock	24186	\N	\N	\N	2015-04-06 21:51:46.494911	2015-04-06 21:51:46.494911	\N
676	Territory	24187	\N	\N	\N	2015-04-06 21:51:46.498808	2015-04-06 21:51:46.498808	\N
677	Terminator: One-Shot	24188	\N	\N	\N	2015-04-06 21:51:46.503016	2015-04-06 21:51:46.503016	\N
678	The Terminator	24189	\N	\N	\N	2015-04-06 21:51:46.507983	2015-04-06 21:51:46.507983	\N
679	Terminator	24190	\N	\N	\N	2015-04-06 21:51:46.512476	2015-04-06 21:51:46.512476	\N
680	Terminator: The Dark Years	24191	\N	\N	\N	2015-04-06 21:51:46.517927	2015-04-06 21:51:46.517927	\N
681	Terminal Point	24192	\N	\N	\N	2015-04-06 21:51:46.521591	2015-04-06 21:51:46.521591	\N
682	Tarzan vs. Predator at the Earth's Core	24193	\N	\N	\N	2015-04-06 21:51:46.527604	2015-04-06 21:51:46.527604	\N
683	Shrek	24195	\N	\N	\N	2015-04-06 21:51:46.531963	2015-04-06 21:51:46.531963	\N
684	Alice in Sunderland	24221	\N	\N	\N	2015-04-06 21:51:46.536183	2015-04-06 21:51:46.536183	\N
685	BMW Film Presents: The Hire	24222	\N	\N	\N	2015-04-06 21:51:46.540931	2015-04-06 21:51:46.540931	\N
686	The Heretic	24223	\N	\N	\N	2015-04-06 21:51:46.545219	2015-04-06 21:51:46.545219	\N
687	Hypersonic	24224	\N	\N	\N	2015-04-06 21:51:46.548956	2015-04-06 21:51:46.548956	\N
688	Indiana Jones and the Golden Fleece	24225	\N	\N	\N	2015-04-06 21:51:46.553153	2015-04-06 21:51:46.553153	\N
689	Lone Gunmen	24227	\N	\N	\N	2015-04-06 21:51:46.557605	2015-04-06 21:51:46.557605	\N
690	Man With The Screaming Brain	24228	\N	\N	\N	2015-04-06 21:51:46.561998	2015-04-06 21:51:46.561998	\N
691	Nocturnals: Witching Hour	24229	\N	\N	\N	2015-04-06 21:51:46.566622	2015-04-06 21:51:46.566622	\N
692	Oktane	24230	\N	\N	\N	2015-04-06 21:51:46.571273	2015-04-06 21:51:46.571273	\N
693	Out of the Vortex	24231	\N	\N	\N	2015-04-06 21:51:46.576292	2015-04-06 21:51:46.576292	\N
694	Propellerman	24232	\N	\N	\N	2015-04-06 21:51:46.580632	2015-04-06 21:51:46.580632	\N
695	Redblade	24233	\N	\N	\N	2015-04-06 21:51:46.585219	2015-04-06 21:51:46.585219	\N
696	Sex Warrior	24234	\N	\N	\N	2015-04-06 21:51:46.59017	2015-04-06 21:51:46.59017	\N
697	Hellboy: The Wild Hunt	24442	\N	\N	\N	2015-04-06 21:51:46.594539	2015-04-06 21:51:46.594539	\N
698	Godzilla, King of the Monsters Special	24582	\N	\N	\N	2015-04-06 21:51:46.598769	2015-04-06 21:51:46.598769	\N
699	Worlds of Amano	24747	\N	\N	\N	2015-04-06 21:51:46.602536	2015-04-06 21:51:46.602536	\N
700	Grifter and the Mask	24798	\N	\N	\N	2015-04-06 21:51:46.606418	2015-04-06 21:51:46.606418	\N
701	Joker/Mask	24799	\N	\N	\N	2015-04-06 21:51:46.610213	2015-04-06 21:51:46.610213	\N
702	Lost In Space, The Film	24864	\N	\N	\N	2015-04-06 21:51:46.614458	2015-04-06 21:51:46.614458	\N
703	Aliens: Pig	25088	\N	\N	\N	2015-04-06 21:51:46.620038	2015-04-06 21:51:46.620038	\N
704	Autobiographix	25140	\N	\N	\N	2015-04-06 21:51:46.624284	2015-04-06 21:51:46.624284	\N
705	Mister X: Condemned	25180	\N	\N	\N	2015-04-06 21:51:46.629507	2015-04-06 21:51:46.629507	\N
706	Adrenalynn: Weapon of War	25388	\N	\N	\N	2015-04-06 21:51:46.633121	2015-04-06 21:51:46.633121	\N
707	Star Wars: Clone Wars	25404	\N	\N	\N	2015-04-06 21:51:46.63755	2015-04-06 21:51:46.63755	\N
708	B.P.R.D.: The Black Goddess	25424	\N	\N	\N	2015-04-06 21:51:46.641555	2015-04-06 21:51:46.641555	\N
709	Manga Star Wars: A New Hope	25439	\N	\N	\N	2015-04-06 21:51:46.645139	2015-04-06 21:51:46.645139	\N
710	The Chronicles of Conan	25491	\N	\N	\N	2015-04-06 21:51:46.648476	2015-04-06 21:51:46.648476	\N
711	The Safest Place In The World	25649	\N	\N	\N	2015-04-06 21:51:46.652836	2015-04-06 21:51:46.652836	\N
712	Lazarus Jack	25671	\N	\N	\N	2015-04-06 21:51:46.656945	2015-04-06 21:51:46.656945	\N
713	The New Two-Fisted Tales	25695	\N	\N	\N	2015-04-06 21:51:46.661054	2015-04-06 21:51:46.661054	\N
714	Larry Marder's Beanworld™ Holiday Special	25703	\N	\N	\N	2015-04-06 21:51:46.670556	2015-04-06 21:51:46.670556	\N
715	Star Wars: The Clone Wars - Crash Course	25846	\N	\N	\N	2015-04-06 21:51:46.67509	2015-04-06 21:51:46.67509	\N
716	One Trick Rip Off	25875	\N	\N	\N	2015-04-06 21:51:46.680285	2015-04-06 21:51:46.680285	\N
717	The Adventures of Luther Arkwright	26011	\N	\N	\N	2015-04-06 21:51:46.684328	2015-04-06 21:51:46.684328	\N
718	Land Of Nod	26112	\N	\N	\N	2015-04-06 21:51:46.688345	2015-04-06 21:51:46.688345	\N
719	The Lords of Misrule	26113	\N	\N	\N	2015-04-06 21:51:46.693317	2015-04-06 21:51:46.693317	\N
720	Who Wants To Be A Superhero?: Defuser	26135	\N	\N	\N	2015-04-06 21:51:46.698414	2015-04-06 21:51:46.698414	\N
721	Grendel: Devil Quest	26190	\N	\N	\N	2015-04-06 21:51:46.703181	2015-04-06 21:51:46.703181	\N
722	The Amazon	26242	\N	\N	\N	2015-04-06 21:51:46.707943	2015-04-06 21:51:46.707943	\N
723	Turok, Son of Stone Archives	26287	\N	\N	\N	2015-04-06 21:51:46.719183	2015-04-06 21:51:46.719183	\N
724	Turok Son Of Stone	26288	\N	\N	\N	2015-04-06 21:51:46.722927	2015-04-06 21:51:46.722927	\N
725	Free Comic Book Day Aliens/Predator	26336	\N	\N	\N	2015-04-06 21:51:46.728033	2015-04-06 21:51:46.728033	\N
726	The Mask Strikes Back	26345	\N	\N	\N	2015-04-06 21:51:46.732612	2015-04-06 21:51:46.732612	\N
727	Free Comic Book Day And Star Wars: The Clone Wars -- Gauntlet Of Death	26395	\N	\N	\N	2015-04-06 21:51:46.736755	2015-04-06 21:51:46.736755	\N
728	Spyboy: The M.A.N.G.A. Affair	26401	\N	\N	\N	2015-04-06 21:51:46.740715	2015-04-06 21:51:46.740715	\N
729	Spyboy Special	26430	\N	\N	\N	2015-04-06 21:51:46.744564	2015-04-06 21:51:46.744564	\N
730	Star Wars: Vader's Quest	26477	\N	\N	\N	2015-04-06 21:51:46.748097	2015-04-06 21:51:46.748097	\N
731	Aliens	26519	\N	\N	\N	2015-04-06 21:51:46.752685	2015-04-06 21:51:46.752685	\N
732	Rapture	26520	\N	\N	\N	2015-04-06 21:51:46.756802	2015-04-06 21:51:46.756802	\N
733	Werewolves on the Moon: Versus Vampires	26609	\N	\N	\N	2015-04-06 21:51:46.76095	2015-04-06 21:51:46.76095	\N
734	Buffy the Vampire Slayer: Tales of the Vampires	26610	\N	\N	\N	2015-04-06 21:51:46.766591	2015-04-06 21:51:46.766591	\N
735	The Mask: The Hunt For Green October	26639	\N	\N	\N	2015-04-06 21:51:46.77071	2015-04-06 21:51:46.77071	\N
736	The Mask: Toys In The Attic	26679	\N	\N	\N	2015-04-06 21:51:46.775191	2015-04-06 21:51:46.775191	\N
737	The Mask: Southern Discomfort	26680	\N	\N	\N	2015-04-06 21:51:46.780142	2015-04-06 21:51:46.780142	\N
738	Hellboy Animated: The Yearning	26688	\N	\N	\N	2015-04-06 21:51:46.785127	2015-04-06 21:51:46.785127	\N
739	Hellboy: The Golden Army	26689	\N	\N	\N	2015-04-06 21:51:46.789773	2015-04-06 21:51:46.789773	\N
740	Hellboy Animated: Phantom Limbs	26690	\N	\N	\N	2015-04-06 21:51:46.793925	2015-04-06 21:51:46.793925	\N
741	Hellboy Animated: The Judgment Bell	26691	\N	\N	\N	2015-04-06 21:51:46.798351	2015-04-06 21:51:46.798351	\N
742	Hellboy: The Corpse And The Iron Shoes	26692	\N	\N	\N	2015-04-06 21:51:46.802564	2015-04-06 21:51:46.802564	\N
743	The Mask: World Tour	26697	\N	\N	\N	2015-04-06 21:51:46.806757	2015-04-06 21:51:46.806757	\N
744	RoboCop: Prime Suspect	26786	\N	\N	\N	2015-04-06 21:51:46.811443	2015-04-06 21:51:46.811443	\N
745	RoboCop 3	26796	\N	\N	\N	2015-04-06 21:51:46.815522	2015-04-06 21:51:46.815522	\N
746	RoboCop: Mortal Coils	26799	\N	\N	\N	2015-04-06 21:51:46.819473	2015-04-06 21:51:46.819473	\N
747	Lobster Johnson: The Prayer of Neferu	26801	\N	\N	\N	2015-04-06 21:51:46.823925	2015-04-06 21:51:46.823925	\N
748	Indiana Jones Adventures	26811	\N	\N	\N	2015-04-06 21:51:46.829108	2015-04-06 21:51:46.829108	\N
749	The Messengers	26826	\N	\N	\N	2015-04-06 21:51:46.833194	2015-04-06 21:51:46.833194	\N
750	Dark Horse Book of Monsters	26827	\N	\N	\N	2015-04-06 21:51:46.83706	2015-04-06 21:51:46.83706	\N
751	Guff!	26853	\N	\N	\N	2015-04-06 21:51:46.841303	2015-04-06 21:51:46.841303	\N
752	Predator	26894	\N	\N	\N	2015-04-06 21:51:46.845227	2015-04-06 21:51:46.845227	\N
753	Sir Edward Grey, Witchfinder: In the Service of Angels	26959	\N	\N	\N	2015-04-06 21:51:46.849502	2015-04-06 21:51:46.849502	\N
754	Star Wars: Invasion	26982	\N	\N	\N	2015-04-06 21:51:46.852841	2015-04-06 21:51:46.852841	\N
755	B.P.R.D.: 1947	27001	\N	\N	\N	2015-04-06 21:51:46.856865	2015-04-06 21:51:46.856865	\N
756	Pixu: The Mark of Evil	27009	\N	\N	\N	2015-04-06 21:51:46.861123	2015-04-06 21:51:46.861123	\N
757	Sinfest	27011	\N	\N	\N	2015-04-06 21:51:46.865441	2015-04-06 21:51:46.865441	\N
758	Creepy	27067	\N	\N	\N	2015-04-06 21:51:46.870561	2015-04-06 21:51:46.870561	\N
759	Star Wars: The Clone Wars - The Wind Raiders of Taloraan	27123	\N	\N	\N	2015-04-06 21:51:46.873703	2015-04-06 21:51:46.873703	\N
760	Dethklok Versus The Goon	27127	\N	\N	\N	2015-04-06 21:51:46.879419	2015-04-06 21:51:46.879419	\N
761	Citizen Rex	27191	\N	\N	\N	2015-04-06 21:51:46.884489	2015-04-06 21:51:46.884489	\N
762	Star Wars: Shadows of the Empire: Evolution	27193	\N	\N	\N	2015-04-06 21:51:46.889009	2015-04-06 21:51:46.889009	\N
763	Star Wars: The Jabba Tape	27200	\N	\N	\N	2015-04-06 21:51:46.892721	2015-04-06 21:51:46.892721	\N
764	Star Wars Adventures: Princess Leia and the Royal Ransom	27211	\N	\N	\N	2015-04-06 21:51:46.896963	2015-04-06 21:51:46.896963	\N
765	Star Wars: X-Wing: Rogue Leader	27223	\N	\N	\N	2015-04-06 21:51:46.901034	2015-04-06 21:51:46.901034	\N
766	Star Wars: Heir to the Empire	27224	\N	\N	\N	2015-04-06 21:51:46.904906	2015-04-06 21:51:46.904906	\N
767	Star Wars: Jabba The Hutt: The Art Of The Deal	27225	\N	\N	\N	2015-04-06 21:51:46.909828	2015-04-06 21:51:46.909828	\N
768	Star Wars: Jabba The Hutt: The Dynasty Trap	27226	\N	\N	\N	2015-04-06 21:51:46.918696	2015-04-06 21:51:46.918696	\N
769	Star Wars: Jedi - Aayla Secura	27227	\N	\N	\N	2015-04-06 21:51:46.921738	2015-04-06 21:51:46.921738	\N
770	Star Wars - The Protocol Offensive	27228	\N	\N	\N	2015-04-06 21:51:46.927765	2015-04-06 21:51:46.927765	\N
771	Star Wars Visionaries	27231	\N	\N	\N	2015-04-06 21:51:46.931944	2015-04-06 21:51:46.931944	\N
772	Unbound Saga	27237	\N	\N	\N	2015-04-06 21:51:46.935616	2015-04-06 21:51:46.935616	\N
773	Star Wars: Jedi - Shaak Ti	27252	\N	\N	\N	2015-04-06 21:51:46.939893	2015-04-06 21:51:46.939893	\N
774	Star Wars: Jedi - Count Dooku	27253	\N	\N	\N	2015-04-06 21:51:46.944177	2015-04-06 21:51:46.944177	\N
775	Star Wars: Dark Force Rising	27254	\N	\N	\N	2015-04-06 21:51:46.947971	2015-04-06 21:51:46.947971	\N
776	Solomon Kane: The Castle of the Devil	27272	\N	\N	\N	2015-04-06 21:51:46.951511	2015-04-06 21:51:46.951511	\N
777	The Saga of Solomon Kane	27273	\N	\N	\N	2015-04-06 21:51:46.955568	2015-04-06 21:51:46.955568	\N
778	Star Wars: Dark Times: Blue Harvest	27274	\N	\N	\N	2015-04-06 21:51:46.960157	2015-04-06 21:51:46.960157	\N
779	Star Wars: Jedi - Yoda	27284	\N	\N	\N	2015-04-06 21:51:46.96914	2015-04-06 21:51:46.96914	\N
780	Star Wars: Shadow Stalker	27285	\N	\N	\N	2015-04-06 21:51:46.972689	2015-04-06 21:51:46.972689	\N
781	Star Wars: Infinities - A New Hope	27289	\N	\N	\N	2015-04-06 21:51:46.977821	2015-04-06 21:51:46.977821	\N
782	Buffy the Vampire Slayer: The Dust Waltz	27295	\N	\N	\N	2015-04-06 21:51:46.982109	2015-04-06 21:51:46.982109	\N
783	Star Wars: Infinities - Return of the Jedi	27302	\N	\N	\N	2015-04-06 21:51:46.986491	2015-04-06 21:51:46.986491	\N
784	Star Wars: Infinities - A New Hope	27303	\N	\N	\N	2015-04-06 21:51:46.991105	2015-04-06 21:51:46.991105	\N
785	Star Wars: Infinities - Return of the Jedi	27304	\N	\N	\N	2015-04-06 21:51:46.994925	2015-04-06 21:51:46.994925	\N
786	Star Wars: Jedi vs. Sith	27323	\N	\N	\N	2015-04-06 21:51:46.998519	2015-04-06 21:51:46.998519	\N
787	Eden:  It's an Endless World!	27357	\N	\N	\N	2015-04-06 21:51:47.00301	2015-04-06 21:51:47.00301	\N
788	Star Wars: The Bounty Hunters - Aurra Sing	27373	\N	\N	\N	2015-04-06 21:51:47.007621	2015-04-06 21:51:47.007621	\N
789	Eerie Archives	27380	\N	\N	\N	2015-04-06 21:51:47.012339	2015-04-06 21:51:47.012339	\N
790	Marquis: Inferno	27382	\N	\N	\N	2015-04-06 21:51:47.019018	2015-04-06 21:51:47.019018	\N
791	Vampire Dance	27383	\N	\N	\N	2015-04-06 21:51:47.022277	2015-04-06 21:51:47.022277	\N
792	Star Wars: Knights of the Old Republic Handbook	27590	\N	\N	\N	2015-04-06 21:51:47.028031	2015-04-06 21:51:47.028031	\N
793	Beasts of Burden	27947	\N	\N	\N	2015-04-06 21:51:47.032253	2015-04-06 21:51:47.032253	\N
794	Predator: Bad Blood	27987	\N	\N	\N	2015-04-06 21:51:47.036734	2015-04-06 21:51:47.036734	\N
795	San Diego Comic Con Comics	27988	\N	\N	\N	2015-04-06 21:51:47.041328	2015-04-06 21:51:47.041328	\N
796	Planet of the Apes	27990	\N	\N	\N	2015-04-06 21:51:47.045295	2015-04-06 21:51:47.045295	\N
797	Syn	28053	\N	\N	\N	2015-04-06 21:51:47.049147	2015-04-06 21:51:47.049147	\N
798	Tales of the Vampires	28183	\N	\N	\N	2015-04-06 21:51:47.052815	2015-04-06 21:51:47.052815	\N
799	Buffy the Vampire Slayer Season Eight: Predators and Prey	28231	\N	\N	\N	2015-04-06 21:51:47.056595	2015-04-06 21:51:47.056595	\N
800	Umbrella Academy	28232	\N	\N	\N	2015-04-06 21:51:47.060555	2015-04-06 21:51:47.060555	\N
801	Umbrella Academy: Dallas	28233	\N	\N	\N	2015-04-06 21:51:47.069867	2015-04-06 21:51:47.069867	\N
802	Star Wars: Tales of the Jedi - The Sith War	28239	\N	\N	\N	2015-04-06 21:51:47.073595	2015-04-06 21:51:47.073595	\N
803	Buffy the Vampire Slayer: Tales of the Slayers	28241	\N	\N	\N	2015-04-06 21:51:47.079267	2015-04-06 21:51:47.079267	\N
804	Star Wars: Tales of the Jedi - Redemption	28242	\N	\N	\N	2015-04-06 21:51:47.083315	2015-04-06 21:51:47.083315	\N
805	Star Wars: Tales of the Jedi	28243	\N	\N	\N	2015-04-06 21:51:47.087189	2015-04-06 21:51:47.087189	\N
806	Star Wars: Tales of the Jedi - The Fall of the Sith Empire	28244	\N	\N	\N	2015-04-06 21:51:47.091922	2015-04-06 21:51:47.091922	\N
807	Star Wars: Empire's End	28254	\N	\N	\N	2015-04-06 21:51:47.096495	2015-04-06 21:51:47.096495	\N
808	Star Wars/Conan - Free Comic Book Day 2006 Special	28258	\N	\N	\N	2015-04-06 21:51:47.100209	2015-04-06 21:51:47.100209	\N
809	Star Wars: Union	28286	\N	\N	\N	2015-04-06 21:51:47.104292	2015-04-06 21:51:47.104292	\N
810	Star Wars: Dark Force Rising	28303	\N	\N	\N	2015-04-06 21:51:47.10877	2015-04-06 21:51:47.10877	\N
811	Star Wars: Crimson Empire II - Council Of Blood	28324	\N	\N	\N	2015-04-06 21:51:47.113283	2015-04-06 21:51:47.113283	\N
812	Star Wars: The Last Command	28350	\N	\N	\N	2015-04-06 21:51:47.117769	2015-04-06 21:51:47.117769	\N
813	Star Wars: 30th Anniversary Collection	28353	\N	\N	\N	2015-04-06 21:51:47.121701	2015-04-06 21:51:47.121701	\N
814	Star Wars: Boba Fett: Man With a Mission	28359	\N	\N	\N	2015-04-06 21:51:47.127008	2015-04-06 21:51:47.127008	\N
815	Star Wars: Episode I: Qui-Gon Jinn	28362	\N	\N	\N	2015-04-06 21:51:47.131276	2015-04-06 21:51:47.131276	\N
816	Star Wars: Episode I Obi-Wan Kenobi	28363	\N	\N	\N	2015-04-06 21:51:47.135288	2015-04-06 21:51:47.135288	\N
817	Star Wars: Episode I: Queen Amidala	28370	\N	\N	\N	2015-04-06 21:51:47.139995	2015-04-06 21:51:47.139995	\N
818	Monsters, Inc.	28379	\N	\N	\N	2015-04-06 21:51:47.144319	2015-04-06 21:51:47.144319	\N
819	Free Comic Book Day: Star Wars	28385	\N	\N	\N	2015-04-06 21:51:47.148269	2015-04-06 21:51:47.148269	\N
820	Star Wars Hasbro/Toys "R" Us Exclusive	28386	\N	\N	\N	2015-04-06 21:51:47.152728	2015-04-06 21:51:47.152728	\N
821	Star Wars: Special	28388	\N	\N	\N	2015-04-06 21:51:47.156467	2015-04-06 21:51:47.156467	\N
822	Star Wars #0 AnotherUniverse.com Special Edition	28390	\N	\N	\N	2015-04-06 21:51:47.160702	2015-04-06 21:51:47.160702	\N
823	Manga Star Wars: The Empire Strikes Back	28391	\N	\N	\N	2015-04-06 21:51:47.164007	2015-04-06 21:51:47.164007	\N
824	Manga Star Wars: Return of the Jedi	28392	\N	\N	\N	2015-04-06 21:51:47.167885	2015-04-06 21:51:47.167885	\N
825	Manga Star Wars: The Phantom Menace	28394	\N	\N	\N	2015-04-06 21:51:47.172692	2015-04-06 21:51:47.172692	\N
826	Star Wars: Droids: Special	28408	\N	\N	\N	2015-04-06 21:51:47.178315	2015-04-06 21:51:47.178315	\N
827	Star Wars: The Bounty Hunters - Scoundrel's Wages	28409	\N	\N	\N	2015-04-06 21:51:47.182223	2015-04-06 21:51:47.182223	\N
828	Dark Horse Book of Witchcraft	28424	\N	\N	\N	2015-04-06 21:51:47.186398	2015-04-06 21:51:47.186398	\N
829	Star Wars: Jedi Council - Acts of War	28493	\N	\N	\N	2015-04-06 21:51:47.19067	2015-04-06 21:51:47.19067	\N
830	Star Wars: The Bounty Hunters - Kenix Kil	28497	\N	\N	\N	2015-04-06 21:51:47.195157	2015-04-06 21:51:47.195157	\N
831	Star Wars: Shadows of the Empire	28502	\N	\N	\N	2015-04-06 21:51:47.198842	2015-04-06 21:51:47.198842	\N
832	Star Wars Halloween Special	28510	\N	\N	\N	2015-04-06 21:51:47.20301	2015-04-06 21:51:47.20301	\N
833	Prototype 2	28741	\N	\N	\N	2015-04-06 21:51:47.207355	2015-04-06 21:51:47.207355	\N
834	Star Wars: A New Hope	28806	\N	\N	\N	2015-04-06 21:51:47.211703	2015-04-06 21:51:47.211703	\N
835	Star Wars: A New Hope - The Special Edition	28808	\N	\N	\N	2015-04-06 21:51:47.219487	2015-04-06 21:51:47.219487	\N
836	Sugarshock	28811	\N	\N	\N	2015-04-06 21:51:47.223529	2015-04-06 21:51:47.223529	\N
837	Star Wars	28812	\N	\N	\N	2015-04-06 21:51:47.228957	2015-04-06 21:51:47.228957	\N
838	Star Wars: The Empire Strikes Back	28818	\N	\N	\N	2015-04-06 21:51:47.233022	2015-04-06 21:51:47.233022	\N
839	Buffy the Vampire Slayer Season Eight: The Long Way Home	28824	\N	\N	\N	2015-04-06 21:51:47.237077	2015-04-06 21:51:47.237077	\N
840	Buffy the Vampire Slayer Season Eight: No Future for You	28825	\N	\N	\N	2015-04-06 21:51:47.241081	2015-04-06 21:51:47.241081	\N
841	Buffy the Vampire Slayer Season Eight: Wolves at the Gate	28826	\N	\N	\N	2015-04-06 21:51:47.245282	2015-04-06 21:51:47.245282	\N
842	Buffy the Vampire Slayer Season Eight: Time of Your Life	28827	\N	\N	\N	2015-04-06 21:51:47.249324	2015-04-06 21:51:47.249324	\N
843	Hermes Vs. The Eyeball Kid	29036	\N	\N	\N	2015-04-06 21:51:47.253207	2015-04-06 21:51:47.253207	\N
844	Abe Sapien: The Haunted Boy	29118	\N	\N	\N	2015-04-06 21:51:47.256737	2015-04-06 21:51:47.256737	\N
845	Sergio Aragonés' Groo: The Hogs of Horder	29121	\N	\N	\N	2015-04-06 21:51:47.261272	2015-04-06 21:51:47.261272	\N
846	Almuric	29164	\N	\N	\N	2015-04-06 21:51:47.266589	2015-04-06 21:51:47.266589	\N
847	Dr. Grordbort Presents: Victory	29247	\N	\N	\N	2015-04-06 21:51:47.271008	2015-04-06 21:51:47.271008	\N
848	Age of Reptiles: The Journey	29354	\N	\N	\N	2015-04-06 21:51:47.275746	2015-04-06 21:51:47.275746	\N
849	Star Wars: The Clone Wars: The Holocron Heist	29356	\N	\N	\N	2015-04-06 21:51:47.281609	2015-04-06 21:51:47.281609	\N
850	Basil Wolverton In Space	29407	\N	\N	\N	2015-04-06 21:51:47.285965	2015-04-06 21:51:47.285965	\N
851	Noir	29467	\N	\N	\N	2015-04-06 21:51:47.290246	2015-04-06 21:51:47.290246	\N
852	Starship Troopers: Insect Touch	29502	\N	\N	\N	2015-04-06 21:51:47.29419	2015-04-06 21:51:47.29419	\N
853	Dr. Horrible	29517	\N	\N	\N	2015-04-06 21:51:47.298479	2015-04-06 21:51:47.298479	\N
854	B.P.R.D.: Hell On Earth - Russia	29625	\N	\N	\N	2015-04-06 21:51:47.302961	2015-04-06 21:51:47.302961	\N
855	Club 9	29641	\N	\N	\N	2015-04-06 21:51:47.30716	2015-04-06 21:51:47.30716	\N
856	Star Wars: Purge - Seconds to Die	29669	\N	\N	\N	2015-04-06 21:51:47.311577	2015-04-06 21:51:47.311577	\N
857	Starship Troopers	29699	\N	\N	\N	2015-04-06 21:51:47.315413	2015-04-06 21:51:47.315413	\N
858	Starship Troopers: Brute Creations	29700	\N	\N	\N	2015-04-06 21:51:47.320909	2015-04-06 21:51:47.320909	\N
859	Dead To Rights	29759	\N	\N	\N	2015-04-06 21:51:47.325797	2015-04-06 21:51:47.325797	\N
860	Alien vs. Predator: Civilized Beasts	29820	\N	\N	\N	2015-04-06 21:51:47.330708	2015-04-06 21:51:47.330708	\N
861	Deadlocke	29844	\N	\N	\N	2015-04-06 21:51:47.335086	2015-04-06 21:51:47.335086	\N
862	The American	29871	\N	\N	\N	2015-04-06 21:51:47.339517	2015-04-06 21:51:47.339517	\N
863	X Omnibus	29922	\N	\N	\N	2015-04-06 21:51:47.34414	2015-04-06 21:51:47.34414	\N
864	RoboCop versus The Terminator	29963	\N	\N	\N	2015-04-06 21:51:47.348218	2015-04-06 21:51:47.348218	\N
865	Moebius: Arzach	30006	\N	\N	\N	2015-04-06 21:51:47.352674	2015-04-06 21:51:47.352674	\N
866	Al Capp's Li'l Abner: The Frazetta Years	30059	\N	\N	\N	2015-04-06 21:51:47.35676	2015-04-06 21:51:47.35676	\N
867	Predator: Nemesis	30157	\N	\N	\N	2015-04-06 21:51:47.361173	2015-04-06 21:51:47.361173	\N
868	Empowered Special	30237	\N	\N	\N	2015-04-06 21:51:47.365181	2015-04-06 21:51:47.365181	\N
869	Predator: Race War	30399	\N	\N	\N	2015-04-06 21:51:47.369514	2015-04-06 21:51:47.369514	\N
870	Predator	30400	\N	\N	\N	2015-04-06 21:51:47.373638	2015-04-06 21:51:47.373638	\N
871	Predator 2	30401	\N	\N	\N	2015-04-06 21:51:47.379504	2015-04-06 21:51:47.379504	\N
872	Buffy/Angel	30526	\N	\N	\N	2015-04-06 21:51:47.383977	2015-04-06 21:51:47.383977	\N
873	Art of Emily the Strange	30547	\N	\N	\N	2015-04-06 21:51:47.388377	2015-04-06 21:51:47.388377	\N
874	Coffin: The Art of Vampire Hunter D	30636	\N	\N	\N	2015-04-06 21:51:47.392808	2015-04-06 21:51:47.392808	\N
875	Yoshitaka Amano: The Collected Art of Vampire Hunter D	30637	\N	\N	\N	2015-04-06 21:51:47.396848	2015-04-06 21:51:47.396848	\N
876	Universal Monsters: Cavalcade of Horror	30665	\N	\N	\N	2015-04-06 21:51:47.401841	2015-04-06 21:51:47.401841	\N
877	Buffy the Vampire Slayer: Willow	30699	\N	\N	\N	2015-04-06 21:51:47.406571	2015-04-06 21:51:47.406571	\N
878	Hellboy: The Bride of Hell	30700	\N	\N	\N	2015-04-06 21:51:47.41226	2015-04-06 21:51:47.41226	\N
879	Bernie Wrightson’s Frankenstein	30736	\N	\N	\N	2015-04-06 21:51:47.419607	2015-04-06 21:51:47.419607	\N
880	Hellboy Animated: The Menagerie	30761	\N	\N	\N	2015-04-06 21:51:47.423483	2015-04-06 21:51:47.423483	\N
881	Hellboy: They That Go Down to the Sea in Ships	30762	\N	\N	\N	2015-04-06 21:51:47.429051	2015-04-06 21:51:47.429051	\N
882	Hellboy: Odder Jobs	30764	\N	\N	\N	2015-04-06 21:51:47.433637	2015-04-06 21:51:47.433637	\N
883	Hellboy: The Corpse	30765	\N	\N	\N	2015-04-06 21:51:47.437993	2015-04-06 21:51:47.437993	\N
884	Hellboy: The Bride of Hell and Others	30787	\N	\N	\N	2015-04-06 21:51:47.442949	2015-04-06 21:51:47.442949	\N
885	Hellboy: Odd Jobs	30788	\N	\N	\N	2015-04-06 21:51:47.447308	2015-04-06 21:51:47.447308	\N
886	Usagi Yojimbo: Yokai	30826	\N	\N	\N	2015-04-06 21:51:47.451508	2015-04-06 21:51:47.451508	\N
887	The Mask / Marshal Law	30888	\N	\N	\N	2015-04-06 21:51:47.455275	2015-04-06 21:51:47.455275	\N
888	B.P.R.D.: King of Fear	30908	\N	\N	\N	2015-04-06 21:51:47.458845	2015-04-06 21:51:47.458845	\N
889	Mass Effect: Redemption	30921	\N	\N	\N	2015-04-06 21:51:47.462964	2015-04-06 21:51:47.462964	\N
890	Conan: The Weight of the Crown	31036	\N	\N	\N	2015-04-06 21:51:47.469737	2015-04-06 21:51:47.469737	\N
891	Aliens vs. Predator: Three World War	31059	\N	\N	\N	2015-04-06 21:51:47.473431	2015-04-06 21:51:47.473431	\N
892	Solomon Kane: Death's Black Riders	31155	\N	\N	\N	2015-04-06 21:51:47.478618	2015-04-06 21:51:47.478618	\N
893	The Last Temptation	31191	\N	\N	\N	2015-04-06 21:51:47.4827	2015-04-06 21:51:47.4827	\N
894	Hellboy: The Right Hand of Doom	31203	\N	\N	\N	2015-04-06 21:51:47.486699	2015-04-06 21:51:47.486699	\N
895	Hellboy Premiere Edition	31204	\N	\N	\N	2015-04-06 21:51:47.490653	2015-04-06 21:51:47.490653	\N
896	Penny Arcade 1x25¢ Edition	31276	\N	\N	\N	2015-04-06 21:51:47.494387	2015-04-06 21:51:47.494387	\N
897	Love Me Tenderloin: A Cal McDonald Mystery	31324	\N	\N	\N	2015-04-06 21:51:47.497728	2015-04-06 21:51:47.497728	\N
898	Devil	31605	\N	\N	\N	2015-04-06 21:51:47.501232	2015-04-06 21:51:47.501232	\N
899	Star Wars Omnibus: Rise of the Sith	31654	\N	\N	\N	2015-04-06 21:51:47.504963	2015-04-06 21:51:47.504963	\N
900	Star Wars Omnibus: Droids	31668	\N	\N	\N	2015-04-06 21:51:47.509156	2015-04-06 21:51:47.509156	\N
901	Star Wars Omnibus: Early Victories	31701	\N	\N	\N	2015-04-06 21:51:47.519598	2015-04-06 21:51:47.519598	\N
902	Star Wars Omnibus: Emissaries and Assassins	31711	\N	\N	\N	2015-04-06 21:51:47.525049	2015-04-06 21:51:47.525049	\N
903	Star Wars Omnibus: Menace Revealed	31712	\N	\N	\N	2015-04-06 21:51:47.529877	2015-04-06 21:51:47.529877	\N
904	Star Wars Omnibus: Shadows of the Empire	31713	\N	\N	\N	2015-04-06 21:51:47.533153	2015-04-06 21:51:47.533153	\N
905	Don Martin's Droll Book	31810	\N	\N	\N	2015-04-06 21:51:47.537242	2015-04-06 21:51:47.537242	\N
906	Casper the Friendly Ghost 60th Anniversary Special	31846	\N	\N	\N	2015-04-06 21:51:47.54172	2015-04-06 21:51:47.54172	\N
907	Megatokyo	31855	\N	\N	\N	2015-04-06 21:51:47.546858	2015-04-06 21:51:47.546858	\N
908	Metropolis	31885	\N	\N	\N	2015-04-06 21:51:47.551049	2015-04-06 21:51:47.551049	\N
909	Lost World	31886	\N	\N	\N	2015-04-06 21:51:47.555725	2015-04-06 21:51:47.555725	\N
910	Astro Boy	31887	\N	\N	\N	2015-04-06 21:51:47.560228	2015-04-06 21:51:47.560228	\N
911	Star Wars Adventures: Luke Skywalker And The Treasure Of The Dragonsnakes	31922	\N	\N	\N	2015-04-06 21:51:47.564261	2015-04-06 21:51:47.564261	\N
912	Predator: Primal	31924	\N	\N	\N	2015-04-06 21:51:47.568681	2015-04-06 21:51:47.568681	\N
913	Predator: Dark River	31925	\N	\N	\N	2015-04-06 21:51:47.572553	2015-04-06 21:51:47.572553	\N
914	Predator: Kindred	31926	\N	\N	\N	2015-04-06 21:51:47.576948	2015-04-06 21:51:47.576948	\N
915	Predator: Homeworld	31933	\N	\N	\N	2015-04-06 21:51:47.585692	2015-04-06 21:51:47.585692	\N
916	Predator: Strange Roux	31934	\N	\N	\N	2015-04-06 21:51:47.58943	2015-04-06 21:51:47.58943	\N
917	Wondermark: Dapper Caps & Pedal-Copters	31972	\N	\N	\N	2015-04-06 21:51:47.595296	2015-04-06 21:51:47.595296	\N
918	Star Wars: Droids - The Kalarba Adventures	32072	\N	\N	\N	2015-04-06 21:51:47.599633	2015-04-06 21:51:47.599633	\N
919	Star Wars: Splinter of the Mind's Eye	32091	\N	\N	\N	2015-04-06 21:51:47.603926	2015-04-06 21:51:47.603926	\N
920	Predator: Invaders from the 4th Dimension	32145	\N	\N	\N	2015-04-06 21:51:47.608178	2015-04-06 21:51:47.608178	\N
921	Predator: Jungle Tales	32146	\N	\N	\N	2015-04-06 21:51:47.611993	2015-04-06 21:51:47.611993	\N
922	Predator: Hell Come a Walkin'	32147	\N	\N	\N	2015-04-06 21:51:47.616347	2015-04-06 21:51:47.616347	\N
923	Predator: Xenogenesis	32148	\N	\N	\N	2015-04-06 21:51:47.620154	2015-04-06 21:51:47.620154	\N
924	The Guild	32171	\N	\N	\N	2015-04-06 21:51:47.625324	2015-04-06 21:51:47.625324	\N
925	Samurai: Heaven & Earth	32183	\N	\N	\N	2015-04-06 21:51:47.633903	2015-04-06 21:51:47.633903	\N
926	The Terminator: 2029	32291	\N	\N	\N	2015-04-06 21:51:47.636929	2015-04-06 21:51:47.636929	\N
927	Witchfinder: In the Service of Angels	32436	\N	\N	\N	2015-04-06 21:51:47.640573	2015-04-06 21:51:47.640573	\N
928	Star Wars: Purge - The Hidden Blade	32447	\N	\N	\N	2015-04-06 21:51:47.6462	2015-04-06 21:51:47.6462	\N
929	Star Wars: Jedi Academy - Leviathan	32520	\N	\N	\N	2015-04-06 21:51:47.649995	2015-04-06 21:51:47.649995	\N
930	Star Wars: Jedi Quest	32521	\N	\N	\N	2015-04-06 21:51:47.654561	2015-04-06 21:51:47.654561	\N
931	Indiana Jones and the Spear of Destiny	32528	\N	\N	\N	2015-04-06 21:51:47.65932	2015-04-06 21:51:47.65932	\N
932	Indiana Jones and the Iron Phoenix	32529	\N	\N	\N	2015-04-06 21:51:47.662853	2015-04-06 21:51:47.662853	\N
933	Indiana Jones and the Arms of Gold	32530	\N	\N	\N	2015-04-06 21:51:47.667263	2015-04-06 21:51:47.667263	\N
934	Indiana Jones: Thunder in the Orient	32531	\N	\N	\N	2015-04-06 21:51:47.671384	2015-04-06 21:51:47.671384	\N
935	Felix the Cat's Greatest Hits	32588	\N	\N	\N	2015-04-06 21:51:47.675023	2015-04-06 21:51:47.675023	\N
936	Hellcyon	32592	\N	\N	\N	2015-04-06 21:51:47.679826	2015-04-06 21:51:47.679826	\N
937	Tales of the Fear Agent	32683	\N	\N	\N	2015-04-06 21:51:47.686552	2015-04-06 21:51:47.686552	\N
938	Lone Wolf 2100	32692	\N	\N	\N	2015-04-06 21:51:47.689826	2015-04-06 21:51:47.689826	\N
939	American Splendor: Windfall	32727	\N	\N	\N	2015-04-06 21:51:47.69479	2015-04-06 21:51:47.69479	\N
940	Rapture	32831	\N	\N	\N	2015-04-06 21:51:47.698835	2015-04-06 21:51:47.698835	\N
941	Predator: Prey to the Heavens	32832	\N	\N	\N	2015-04-06 21:51:47.702902	2015-04-06 21:51:47.702902	\N
942	Gigantic	32833	\N	\N	\N	2015-04-06 21:51:47.707564	2015-04-06 21:51:47.707564	\N
943	Usagi Yojimbo Color Special	32868	\N	\N	\N	2015-04-06 21:51:47.711681	2015-04-06 21:51:47.711681	\N
944	Fused	32894	\N	\N	\N	2015-04-06 21:51:47.715619	2015-04-06 21:51:47.715619	\N
945	Free Comic Book Day: Doctor Solar, Man of the Atom / Magnus, Robot Fighter	32907	\N	\N	\N	2015-04-06 21:51:47.719677	2015-04-06 21:51:47.719677	\N
946	G.I. Joe	32919	\N	\N	\N	2015-04-06 21:51:47.723852	2015-04-06 21:51:47.723852	\N
947	B.P.R.D.: Hollow Earth and Other Stories	32946	\N	\N	\N	2015-04-06 21:51:47.728021	2015-04-06 21:51:47.728021	\N
948	The Book Of Grickle	33035	\N	\N	\N	2015-04-06 21:51:47.73571	2015-04-06 21:51:47.73571	\N
949	Hellboy in Mexico	33038	\N	\N	\N	2015-04-06 21:51:47.739146	2015-04-06 21:51:47.739146	\N
950	Harvey Comics Classics	33083	\N	\N	\N	2015-04-06 21:51:47.745416	2015-04-06 21:51:47.745416	\N
951	The Chronicles Of Kull	33124	\N	\N	\N	2015-04-06 21:51:47.749719	2015-04-06 21:51:47.749719	\N
952	The Chronicles Of Solomon Kane	33180	\N	\N	\N	2015-04-06 21:51:47.753714	2015-04-06 21:51:47.753714	\N
953	American Splendor Special: A Step out of the Nest	33218	\N	\N	\N	2015-04-06 21:51:47.758243	2015-04-06 21:51:47.758243	\N
954	Hellboy: The Storm and The Fury	33293	\N	\N	\N	2015-04-06 21:51:47.762021	2015-04-06 21:51:47.762021	\N
955	Nexus Meets Madman	33374	\N	\N	\N	2015-04-06 21:51:47.765655	2015-04-06 21:51:47.765655	\N
956	Serenity: Float Out	33508	\N	\N	\N	2015-04-06 21:51:47.770136	2015-04-06 21:51:47.770136	\N
957	Star Wars: Invasion - Rescues	33551	\N	\N	\N	2015-04-06 21:51:47.774136	2015-04-06 21:51:47.774136	\N
958	Conan: Black Colossus	33572	\N	\N	\N	2015-04-06 21:51:47.778264	2015-04-06 21:51:47.778264	\N
959	Conan: Cimmeria	33573	\N	\N	\N	2015-04-06 21:51:47.783058	2015-04-06 21:51:47.783058	\N
960	Conan: The Hand of Nergal	33579	\N	\N	\N	2015-04-06 21:51:47.787141	2015-04-06 21:51:47.787141	\N
961	Conan: Rogues in the House and Other Stories	33580	\N	\N	\N	2015-04-06 21:51:47.791262	2015-04-06 21:51:47.791262	\N
962	Conan: The Hall of the Dead and Other Stories	33581	\N	\N	\N	2015-04-06 21:51:47.796925	2015-04-06 21:51:47.796925	\N
963	The Shadow: Hell's Heat Wave	33603	\N	\N	\N	2015-04-06 21:51:47.801872	2015-04-06 21:51:47.801872	\N
964	Blacksad	33631	\N	\N	\N	2015-04-06 21:51:47.806021	2015-04-06 21:51:47.806021	\N
965	Buzzard	33632	\N	\N	\N	2015-04-06 21:51:47.810042	2015-04-06 21:51:47.810042	\N
966	Hellboy: Seed of Destruction	33634	\N	\N	\N	2015-04-06 21:51:47.814358	2015-04-06 21:51:47.814358	\N
967	Hellboy: Wake the Devil	33635	\N	\N	\N	2015-04-06 21:51:47.81841	2015-04-06 21:51:47.81841	\N
968	Hellboy: The Chained Coffin and Others	33636	\N	\N	\N	2015-04-06 21:51:47.822506	2015-04-06 21:51:47.822506	\N
969	Hellboy: Strange Places	33637	\N	\N	\N	2015-04-06 21:51:47.828199	2015-04-06 21:51:47.828199	\N
970	Hellboy: Conqueror Worm	33638	\N	\N	\N	2015-04-06 21:51:47.836179	2015-04-06 21:51:47.836179	\N
971	Hellboy: The Troll Witch and Others	33639	\N	\N	\N	2015-04-06 21:51:47.841139	2015-04-06 21:51:47.841139	\N
972	Hellboy: Darkness Calls	33640	\N	\N	\N	2015-04-06 21:51:47.846368	2015-04-06 21:51:47.846368	\N
973	Hellboy: The Wild Hunt	33641	\N	\N	\N	2015-04-06 21:51:47.850799	2015-04-06 21:51:47.850799	\N
974	Hellboy: The Crooked Man and Others	33642	\N	\N	\N	2015-04-06 21:51:47.854907	2015-04-06 21:51:47.854907	\N
975	Predators	33645	\N	\N	\N	2015-04-06 21:51:47.858793	2015-04-06 21:51:47.858793	\N
976	Hellboy: Oddest Jobs	33687	\N	\N	\N	2015-04-06 21:51:47.86244	2015-04-06 21:51:47.86244	\N
977	Tank Girl 2	33688	\N	\N	\N	2015-04-06 21:51:47.866923	2015-04-06 21:51:47.866923	\N
978	Rio At Bay	33748	\N	\N	\N	2015-04-06 21:51:47.871057	2015-04-06 21:51:47.871057	\N
979	Conan: The Spear and Other Stories	33784	\N	\N	\N	2015-04-06 21:51:47.875536	2015-04-06 21:51:47.875536	\N
980	Star Wars: Heir to the Empire	33805	\N	\N	\N	2015-04-06 21:51:47.881181	2015-04-06 21:51:47.881181	\N
981	Abe Sapien: The Abyssal Plain	33998	\N	\N	\N	2015-04-06 21:51:47.887365	2015-04-06 21:51:47.887365	\N
982	Beasts of Burden: Neighborhood Watch	34008	\N	\N	\N	2015-04-06 21:51:47.891542	2015-04-06 21:51:47.891542	\N
983	Comics' Greatest World: Arcadia	34222	\N	\N	\N	2015-04-06 21:51:47.89679	2015-04-06 21:51:47.89679	\N
984	Comics' Greatest World: Steel Harbor	34223	\N	\N	\N	2015-04-06 21:51:47.900875	2015-04-06 21:51:47.900875	\N
985	Comics' Greatest World: Vortex	34224	\N	\N	\N	2015-04-06 21:51:47.904832	2015-04-06 21:51:47.904832	\N
986	Comics' Greatest World: Golden City	34225	\N	\N	\N	2015-04-06 21:51:47.908733	2015-04-06 21:51:47.908733	\N
987	Martin Mystery	34250	\N	\N	\N	2015-04-06 21:51:47.912395	2015-04-06 21:51:47.912395	\N
988	Hellboy: The Storm	34252	\N	\N	\N	2015-04-06 21:51:47.916569	2015-04-06 21:51:47.916569	\N
989	Star Wars: The Old Republic	34285	\N	\N	\N	2015-04-06 21:51:47.920526	2015-04-06 21:51:47.920526	\N
990	Star Wars: Dark Empire Preview	34395	\N	\N	\N	2015-04-06 21:51:47.924929	2015-04-06 21:51:47.924929	\N
991	Doctor Solar, Man of the Atom	34401	\N	\N	\N	2015-04-06 21:51:47.929277	2015-04-06 21:51:47.929277	\N
992	Brody's Ghost	34416	\N	\N	\N	2015-04-06 21:51:47.936761	2015-04-06 21:51:47.936761	\N
993	Perhapanauts: Second Chances	34428	\N	\N	\N	2015-04-06 21:51:47.940472	2015-04-06 21:51:47.940472	\N
994	The Perhapanauts	34429	\N	\N	\N	2015-04-06 21:51:47.945878	2015-04-06 21:51:47.945878	\N
995	Shinobi	34430	\N	\N	\N	2015-04-06 21:51:47.950183	2015-04-06 21:51:47.950183	\N
996	Star Wars: The Clone Wars - The Colossus of Destiny	34439	\N	\N	\N	2015-04-06 21:51:47.954507	2015-04-06 21:51:47.954507	\N
997	Predators Film Adaptation	34440	\N	\N	\N	2015-04-06 21:51:47.958908	2015-04-06 21:51:47.958908	\N
998	Predators: Preserve The Game	34442	\N	\N	\N	2015-04-06 21:51:47.963085	2015-04-06 21:51:47.963085	\N
999	Don't Hold Your Breath: Nothing New from Brian Ewing	34458	\N	\N	\N	2015-04-06 21:51:47.966984	2015-04-06 21:51:47.966984	\N
1000	Star Wars: The Clone Wars - In Service of the Republic	34522	\N	\N	\N	2015-04-06 21:51:47.970545	2015-04-06 21:51:47.970545	\N
1001	Batman / Tarzan: Claws Of The Cat-Woman	34625	\N	\N	\N	2015-04-06 21:51:47.974319	2015-04-06 21:51:47.974319	\N
1002	Frank Miller's Sin City	34631	\N	\N	\N	2015-04-06 21:51:47.978242	2015-04-06 21:51:47.978242	\N
1003	Star Wars: Vector	34681	\N	\N	\N	2015-04-06 21:51:47.987521	2015-04-06 21:51:47.987521	\N
1004	Fallout: New Vegas - All Roads	34691	\N	\N	\N	2015-04-06 21:51:47.99294	2015-04-06 21:51:47.99294	\N
1005	Chosen	34705	\N	\N	\N	2015-04-06 21:51:47.99705	2015-04-06 21:51:47.99705	\N
1006	Magnus Robot Fighter	34719	\N	\N	\N	2015-04-06 21:51:48.000937	2015-04-06 21:51:48.000937	\N
1007	Baltimore: The Plague Ships	34735	\N	\N	\N	2015-04-06 21:51:48.005346	2015-04-06 21:51:48.005346	\N
1008	Star Wars Adventures: The Will Of Darth Vader	34829	\N	\N	\N	2015-04-06 21:51:48.009904	2015-04-06 21:51:48.009904	\N
1009	B.P.R.D.: Hell on Earth - New World	34855	\N	\N	\N	2015-04-06 21:51:48.01353	2015-04-06 21:51:48.01353	\N
1010	G.I. Joe	34886	\N	\N	\N	2015-04-06 21:51:48.017085	2015-04-06 21:51:48.017085	\N
1011	Magic: The Gathering: Gerrard's Quest	34897	\N	\N	\N	2015-04-06 21:51:48.021621	2015-04-06 21:51:48.021621	\N
1012	Star Wars: Mara Jade - By the Emperor's Hand	34942	\N	\N	\N	2015-04-06 21:51:48.026295	2015-04-06 21:51:48.026295	\N
1013	Buffy the Vampire Slayer: Riley	34953	\N	\N	\N	2015-04-06 21:51:48.030737	2015-04-06 21:51:48.030737	\N
1014	Frank Miller's Sin City: One for One	34972	\N	\N	\N	2015-04-06 21:51:48.036002	2015-04-06 21:51:48.036002	\N
1015	Hellboy: One for One	34973	\N	\N	\N	2015-04-06 21:51:48.039651	2015-04-06 21:51:48.039651	\N
1016	Usagi Yojimbo: One for One	34974	\N	\N	\N	2015-04-06 21:51:48.045381	2015-04-06 21:51:48.045381	\N
1017	Conan: Throne Of Aquilonia	35005	\N	\N	\N	2015-04-06 21:51:48.050652	2015-04-06 21:51:48.050652	\N
1018	Star Wars Adventures: Han Solo and the Hollow Moon of Khorya	35008	\N	\N	\N	2015-04-06 21:51:48.054851	2015-04-06 21:51:48.054851	\N
1019	Alien vs Predator: Whoever Wins... We Lose	35024	\N	\N	\N	2015-04-06 21:51:48.06014	2015-04-06 21:51:48.06014	\N
1020	Grendel: God and the Devil	35030	\N	\N	\N	2015-04-06 21:51:48.063875	2015-04-06 21:51:48.063875	\N
1021	Star Wars: Blood Ties	35114	\N	\N	\N	2015-04-06 21:51:48.067989	2015-04-06 21:51:48.067989	\N
1022	Boris Karloff Tales of Mystery Archives	35203	\N	\N	\N	2015-04-06 21:51:48.072356	2015-04-06 21:51:48.072356	\N
1023	Serenity: The Shepherd’s Tale	35227	\N	\N	\N	2015-04-06 21:51:48.076352	2015-04-06 21:51:48.076352	\N
1024	Star Wars: Knight Errant	35256	\N	\N	\N	2015-04-06 21:51:48.083123	2015-04-06 21:51:48.083123	\N
1025	Batman/Grendel	35257	\N	\N	\N	2015-04-06 21:51:48.086964	2015-04-06 21:51:48.086964	\N
1026	Mighty Samson Archives	35266	\N	\N	\N	2015-04-06 21:51:48.090316	2015-04-06 21:51:48.090316	\N
1027	Groo: One For One	35267	\N	\N	\N	2015-04-06 21:51:48.095748	2015-04-06 21:51:48.095748	\N
1028	Amazing Screw-On Head and Other Curious Objects	35270	\N	\N	\N	2015-04-06 21:51:48.09969	2015-04-06 21:51:48.09969	\N
1029	Star Wars Legacy: One for One	35337	\N	\N	\N	2015-04-06 21:51:48.103689	2015-04-06 21:51:48.103689	\N
1030	Grendel Tales: Devil's Hammer	35358	\N	\N	\N	2015-04-06 21:51:48.107855	2015-04-06 21:51:48.107855	\N
1031	M.A.R.S. Patrol Total War	35430	\N	\N	\N	2015-04-06 21:51:48.112441	2015-04-06 21:51:48.112441	\N
1032	Billy the Kid's Old Timey Oddities and the Ghastly Fiend of London	35464	\N	\N	\N	2015-04-06 21:51:48.116619	2015-04-06 21:51:48.116619	\N
1033	Magnus, Robot Fighter: One for One	35465	\N	\N	\N	2015-04-06 21:51:48.120799	2015-04-06 21:51:48.120799	\N
1034	Buffy the Vampire Slayer: One for One	35466	\N	\N	\N	2015-04-06 21:51:48.125713	2015-04-06 21:51:48.125713	\N
1035	Umbrella Academy: Apocalypse: One for One	35516	\N	\N	\N	2015-04-06 21:51:48.130277	2015-04-06 21:51:48.130277	\N
1036	Serenity: Those Left Behind: One for One	35517	\N	\N	\N	2015-04-06 21:51:48.13661	2015-04-06 21:51:48.13661	\N
1037	James Bond 007: Shattered Helix	35550	\N	\N	\N	2015-04-06 21:51:48.140431	2015-04-06 21:51:48.140431	\N
1038	Doctor Solar, Man of the Atom Archive	35644	\N	\N	\N	2015-04-06 21:51:48.14599	2015-04-06 21:51:48.14599	\N
1039	Sin City: Booze, Broads, & Bullets	35682	\N	\N	\N	2015-04-06 21:51:48.15109	2015-04-06 21:51:48.15109	\N
1040	Terminator: 1984	35691	\N	\N	\N	2015-04-06 21:51:48.154862	2015-04-06 21:51:48.154862	\N
1041	Out For Blood	35770	\N	\N	\N	2015-04-06 21:51:48.158936	2015-04-06 21:51:48.158936	\N
1042	Clover Omnibus	35777	\N	\N	\N	2015-04-06 21:51:48.162505	2015-04-06 21:51:48.162505	\N
1043	Dethklok	35825	\N	\N	\N	2015-04-06 21:51:48.166604	2015-04-06 21:51:48.166604	\N
1044	Madman Boogaloo! Starring Nexus & The Jam	35832	\N	\N	\N	2015-04-06 21:51:48.170876	2015-04-06 21:51:48.170876	\N
1045	Turok, Son of Stone	36039	\N	\N	\N	2015-04-06 21:51:48.175397	2015-04-06 21:51:48.175397	\N
1046	Dollhouse: Epitaphs	36059	\N	\N	\N	2015-04-06 21:51:48.1854	2015-04-06 21:51:48.1854	\N
1047	Star Wars: The Force Unleashed II	36069	\N	\N	\N	2015-04-06 21:51:48.188512	2015-04-06 21:51:48.188512	\N
1048	Conan: The Newspaper Strips	36291	\N	\N	\N	2015-04-06 21:51:48.194055	2015-04-06 21:51:48.194055	\N
1049	Hellboy/Beasts of Burden: Sacrifice	36352	\N	\N	\N	2015-04-06 21:51:48.198146	2015-04-06 21:51:48.198146	\N
1050	Revelations	36442	\N	\N	\N	2015-04-06 21:51:48.202649	2015-04-06 21:51:48.202649	\N
1051	B.P.R.D.: King of Fear	36454	\N	\N	\N	2015-04-06 21:51:48.206718	2015-04-06 21:51:48.206718	\N
1052	Raindogs	36504	\N	\N	\N	2015-04-06 21:51:48.2108	2015-04-06 21:51:48.2108	\N
1053	Dr. Horrible and Other Horrible Stories	36506	\N	\N	\N	2015-04-06 21:51:48.214634	2015-04-06 21:51:48.214634	\N
1054	Sergio Aragonés' Groo And Rufferto	36520	\N	\N	\N	2015-04-06 21:51:48.218437	2015-04-06 21:51:48.218437	\N
1055	Angel	36748	\N	\N	\N	2015-04-06 21:51:48.223188	2015-04-06 21:51:48.223188	\N
1056	Hellboy: Double Feature of Evil	36806	\N	\N	\N	2015-04-06 21:51:48.228051	2015-04-06 21:51:48.228051	\N
1057	Ghost Stories	36827	\N	\N	\N	2015-04-06 21:51:48.233162	2015-04-06 21:51:48.233162	\N
1058	Insomnia Café	36829	\N	\N	\N	2015-04-06 21:51:48.237046	2015-04-06 21:51:48.237046	\N
1059	Wednesday Conspiracy	36831	\N	\N	\N	2015-04-06 21:51:48.240493	2015-04-06 21:51:48.240493	\N
1060	Monkeyman & O'Brien Special	36834	\N	\N	\N	2015-04-06 21:51:48.245561	2015-04-06 21:51:48.245561	\N
1061	The Ring of the Nibelung: Gotterdammerung (Book Four)	36836	\N	\N	\N	2015-04-06 21:51:48.250335	2015-04-06 21:51:48.250335	\N
1062	Kull: The Hate Witch	36928	\N	\N	\N	2015-04-06 21:51:48.253927	2015-04-06 21:51:48.253927	\N
1063	The Moth Special	36932	\N	\N	\N	2015-04-06 21:51:48.258358	2015-04-06 21:51:48.258358	\N
1064	Star Wars: Return of the Jedi	36999	\N	\N	\N	2015-04-06 21:51:48.26209	2015-04-06 21:51:48.26209	\N
1065	Tank Girl	37019	\N	\N	\N	2015-04-06 21:51:48.266004	2015-04-06 21:51:48.266004	\N
1066	Judge Dredd versus Aliens: Incubus	37039	\N	\N	\N	2015-04-06 21:51:48.270445	2015-04-06 21:51:48.270445	\N
1067	Let Me In: Crossroads	37072	\N	\N	\N	2015-04-06 21:51:48.274701	2015-04-06 21:51:48.274701	\N
1068	Conan: One For One	37140	\N	\N	\N	2015-04-06 21:51:48.278788	2015-04-06 21:51:48.278788	\N
1069	The Nevermen	37173	\N	\N	\N	2015-04-06 21:51:48.287104	2015-04-06 21:51:48.287104	\N
1070	Hard Boiled	37305	\N	\N	\N	2015-04-06 21:51:48.291659	2015-04-06 21:51:48.291659	\N
1071	Star Wars Omnibus: Quinlan Vos: Jedi in Darkness	37306	\N	\N	\N	2015-04-06 21:51:48.296636	2015-04-06 21:51:48.296636	\N
1072	Fort: Prophet of the Unexplained	37357	\N	\N	\N	2015-04-06 21:51:48.30079	2015-04-06 21:51:48.30079	\N
1073	Flash Gordon Comic Book Archives	37374	\N	\N	\N	2015-04-06 21:51:48.305808	2015-04-06 21:51:48.305808	\N
1074	The Occultist	37481	\N	\N	\N	2015-04-06 21:51:48.310183	2015-04-06 21:51:48.310183	\N
1075	Conan: Road of Kings	37497	\N	\N	\N	2015-04-06 21:51:48.314429	2015-04-06 21:51:48.314429	\N
1076	Star Wars: Legacy - War	37504	\N	\N	\N	2015-04-06 21:51:48.318798	2015-04-06 21:51:48.318798	\N
1077	Mighty Samson	37506	\N	\N	\N	2015-04-06 21:51:48.322973	2015-04-06 21:51:48.322973	\N
1078	Harlan Ellison's Dream Corridor	37552	\N	\N	\N	2015-04-06 21:51:48.327479	2015-04-06 21:51:48.327479	\N
1079	Star Wars Omnibus: A Long Time Ago....	37631	\N	\N	\N	2015-04-06 21:51:48.331946	2015-04-06 21:51:48.331946	\N
1080	Axe Cop	37840	\N	\N	\N	2015-04-06 21:51:48.335585	2015-04-06 21:51:48.335585	\N
1081	The Guild: Vork	37841	\N	\N	\N	2015-04-06 21:51:48.339482	2015-04-06 21:51:48.339482	\N
1082	Hellboy: The Sleeping and the Dead	37842	\N	\N	\N	2015-04-06 21:51:48.344753	2015-04-06 21:51:48.344753	\N
1083	Robert E. Howard's Savage Sword	37846	\N	\N	\N	2015-04-06 21:51:48.348523	2015-04-06 21:51:48.348523	\N
1084	Sinfest: Viva la Resistance	37847	\N	\N	\N	2015-04-06 21:51:48.353409	2015-04-06 21:51:48.353409	\N
1085	Star Wars Legacy	37972	\N	\N	\N	2015-04-06 21:51:48.357716	2015-04-06 21:51:48.357716	\N
1086	B.P.R.D.: Hell on Earth - Gods	38230	\N	\N	\N	2015-04-06 21:51:48.36184	2015-04-06 21:51:48.36184	\N
1087	Tarzan and the Jewels of Opar	38310	\N	\N	\N	2015-04-06 21:51:48.366424	2015-04-06 21:51:48.366424	\N
1088	Mezz: Galactic Tour 2494	38311	\N	\N	\N	2015-04-06 21:51:48.377055	2015-04-06 21:51:48.377055	\N
1089	Mac Raboy's Flash Gordon	38472	\N	\N	\N	2015-04-06 21:51:48.384829	2015-04-06 21:51:48.384829	\N
1090	Mass Effect: Evolution	38473	\N	\N	\N	2015-04-06 21:51:48.388164	2015-04-06 21:51:48.388164	\N
1091	King Kong	38545	\N	\N	\N	2015-04-06 21:51:48.39463	2015-04-06 21:51:48.39463	\N
1092	Star Wars: Darth Vader and the Lost Command	38624	\N	\N	\N	2015-04-06 21:51:48.398868	2015-04-06 21:51:48.398868	\N
1093	Dark Horse Presents: Fifth Anniversary Special	38627	\N	\N	\N	2015-04-06 21:51:48.402624	2015-04-06 21:51:48.402624	\N
1094	Revelations	38661	\N	\N	\N	2015-04-06 21:51:48.406446	2015-04-06 21:51:48.406446	\N
1095	Mecha	38662	\N	\N	\N	2015-04-06 21:51:48.411935	2015-04-06 21:51:48.411935	\N
1096	Mecha Special	38663	\N	\N	\N	2015-04-06 21:51:48.417035	2015-04-06 21:51:48.417035	\N
1097	Motorhead Special	38680	\N	\N	\N	2015-04-06 21:51:48.420816	2015-04-06 21:51:48.420816	\N
1098	Buffy the Vampire Slayer: Tales	38691	\N	\N	\N	2015-04-06 21:51:48.425026	2015-04-06 21:51:48.425026	\N
1099	The Secret	38697	\N	\N	\N	2015-04-06 21:51:48.429671	2015-04-06 21:51:48.429671	\N
1100	End League Volume 1: Ballad Of Big Nothing	38722	\N	\N	\N	2015-04-06 21:51:48.43437	2015-04-06 21:51:48.43437	\N
1101	End League Volume 2: Weathered Statues	38723	\N	\N	\N	2015-04-06 21:51:48.438426	2015-04-06 21:51:48.438426	\N
1102	Sir Edward Grey, Witchfinder: Lost and Gone Forever	38774	\N	\N	\N	2015-04-06 21:51:48.442928	2015-04-06 21:51:48.442928	\N
1103	Mesmo Delivery	38823	\N	\N	\N	2015-04-06 21:51:48.447191	2015-04-06 21:51:48.447191	\N
1104	Star Wars: The Clone Wars - Deadly Hands of Shon-Ju	38862	\N	\N	\N	2015-04-06 21:51:48.452112	2015-04-06 21:51:48.452112	\N
1105	Aliens vs. Predator: Sand Trap	38867	\N	\N	\N	2015-04-06 21:51:48.4563	2015-04-06 21:51:48.4563	\N
1106	Aliens vs. Predator: Deadspace	38868	\N	\N	\N	2015-04-06 21:51:48.460345	2015-04-06 21:51:48.460345	\N
1107	Grendel Omnibus	38965	\N	\N	\N	2015-04-06 21:51:48.464276	2015-04-06 21:51:48.464276	\N
1108	The Goon: Rough Stuff	38990	\N	\N	\N	2015-04-06 21:51:48.468767	2015-04-06 21:51:48.468767	\N
1109	The Goon 25¢ Edition	38996	\N	\N	\N	2015-04-06 21:51:48.472602	2015-04-06 21:51:48.472602	\N
1110	Classic Star Wars: Han Solo at Stars' End	39053	\N	\N	\N	2015-04-06 21:51:48.477094	2015-04-06 21:51:48.477094	\N
1111	Ghost Omnibus	39057	\N	\N	\N	2015-04-06 21:51:48.484799	2015-04-06 21:51:48.484799	\N
1112	King Conan: The Scarlet Citadel	39124	\N	\N	\N	2015-04-06 21:51:48.488096	2015-04-06 21:51:48.488096	\N
1113	Edgar Rice Burroughs' Tarzan The Joe Kubert Years	39125	\N	\N	\N	2015-04-06 21:51:48.492823	2015-04-06 21:51:48.492823	\N
1114	Star Wars: X-Wing Rogue Squadron - The Warrior Princess	39157	\N	\N	\N	2015-04-06 21:51:48.497378	2015-04-06 21:51:48.497378	\N
1115	Axe Cop: Bad Guy Earth	39221	\N	\N	\N	2015-04-06 21:51:48.501508	2015-04-06 21:51:48.501508	\N
1116	The Umbrella Academy: Apocalypse Suite	39313	\N	\N	\N	2015-04-06 21:51:48.505016	2015-04-06 21:51:48.505016	\N
1117	R.I.P.D.	39331	\N	\N	\N	2015-04-06 21:51:48.509398	2015-04-06 21:51:48.509398	\N
1118	Solo	39343	\N	\N	\N	2015-04-06 21:51:48.512987	2015-04-06 21:51:48.512987	\N
1119	The Dirty Pair: Start the Violence	39344	\N	\N	\N	2015-04-06 21:51:48.51706	2015-04-06 21:51:48.51706	\N
1120	Spyboy Final Exam	39358	\N	\N	\N	2015-04-06 21:51:48.520892	2015-04-06 21:51:48.520892	\N
1121	Your Highness: Knight and Dazed	39365	\N	\N	\N	2015-04-06 21:51:48.524323	2015-04-06 21:51:48.524323	\N
1122	Dylan Dog: Zed	39393	\N	\N	\N	2015-04-06 21:51:48.528926	2015-04-06 21:51:48.528926	\N
1123	Oni	39397	\N	\N	\N	2015-04-06 21:51:48.537307	2015-04-06 21:51:48.537307	\N
1124	Comics' Greatest World: Sourcebook	39413	\N	\N	\N	2015-04-06 21:51:48.541004	2015-04-06 21:51:48.541004	\N
1125	Ripley's Believe it or Not!	39451	\N	\N	\N	2015-04-06 21:51:48.546448	2015-04-06 21:51:48.546448	\N
1126	Motel Art Improvement Service	39485	\N	\N	\N	2015-04-06 21:51:48.550574	2015-04-06 21:51:48.550574	\N
1127	The Guild: Tink	39494	\N	\N	\N	2015-04-06 21:51:48.55536	2015-04-06 21:51:48.55536	\N
1128	Serenity: Those Left Behind	39605	\N	\N	\N	2015-04-06 21:51:48.559919	2015-04-06 21:51:48.559919	\N
1129	Serenity: Better Days	39606	\N	\N	\N	2015-04-06 21:51:48.563771	2015-04-06 21:51:48.563771	\N
1130	Cut	39607	\N	\N	\N	2015-04-06 21:51:48.568159	2015-04-06 21:51:48.568159	\N
1131	B.P.R.D.: The Dead Remembered	39627	\N	\N	\N	2015-04-06 21:51:48.572027	2015-04-06 21:51:48.572027	\N
1132	Solomon Kane: Red Shadows	39628	\N	\N	\N	2015-04-06 21:51:48.577156	2015-04-06 21:51:48.577156	\N
1133	B.P.R.D.: Hell on Earth - Seattle	39638	\N	\N	\N	2015-04-06 21:51:48.581782	2015-04-06 21:51:48.581782	\N
1134	Aliens: Labyrinth	39678	\N	\N	\N	2015-04-06 21:51:48.586247	2015-04-06 21:51:48.586247	\N
1135	Hellboy: Buster Oakley Gets His Wish	39794	\N	\N	\N	2015-04-06 21:51:48.59043	2015-04-06 21:51:48.59043	\N
1136	Edgar Rice Burroughs' John Carter of Mars: Warlord of Mars	39795	\N	\N	\N	2015-04-06 21:51:48.596109	2015-04-06 21:51:48.596109	\N
1137	Vampire Boy	39796	\N	\N	\N	2015-04-06 21:51:48.60007	2015-04-06 21:51:48.60007	\N
1138	The Shadow & the Mysterious 3	39854	\N	\N	\N	2015-04-06 21:51:48.604371	2015-04-06 21:51:48.604371	\N
1139	Dark Horse Presents	39855	\N	\N	\N	2015-04-06 21:51:48.609081	2015-04-06 21:51:48.609081	\N
1140	The Guild: Clara	39858	\N	\N	\N	2015-04-06 21:51:48.612745	2015-04-06 21:51:48.612745	\N
1141	Finder: Voice	39875	\N	\N	\N	2015-04-06 21:51:48.617019	2015-04-06 21:51:48.617019	\N
1142	The Outlaw Prince	39885	\N	\N	\N	2015-04-06 21:51:48.620662	2015-04-06 21:51:48.620662	\N
1143	The Nevermen: Streets of Blood	39895	\N	\N	\N	2015-04-06 21:51:48.624356	2015-04-06 21:51:48.624356	\N
1144	The Strange Case of Mr. Hyde	39900	\N	\N	\N	2015-04-06 21:51:48.628452	2015-04-06 21:51:48.628452	\N
1145	Pathfinder	39910	\N	\N	\N	2015-04-06 21:51:48.632406	2015-04-06 21:51:48.632406	\N
1146	The Goon: Nothin' But Misery	39943	\N	\N	\N	2015-04-06 21:51:48.637308	2015-04-06 21:51:48.637308	\N
1147	The Goon: My Murderous Childhood (and other Grievous Yarns)	39945	\N	\N	\N	2015-04-06 21:51:48.642545	2015-04-06 21:51:48.642545	\N
1148	The Goon: Heaps of Ruination!	39956	\N	\N	\N	2015-04-06 21:51:48.647238	2015-04-06 21:51:48.647238	\N
1149	Star Wars: The Old Republic	39990	\N	\N	\N	2015-04-06 21:51:48.652266	2015-04-06 21:51:48.652266	\N
1150	Beasts of Burden: Animal Rites	39995	\N	\N	\N	2015-04-06 21:51:48.65688	2015-04-06 21:51:48.65688	\N
1151	Star Wars Omnibus: Boba Fett	40017	\N	\N	\N	2015-04-06 21:51:48.660748	2015-04-06 21:51:48.660748	\N
1152	Free Comic Book Day: Baltimore/Criminal Macabre	40019	\N	\N	\N	2015-04-06 21:51:48.664819	2015-04-06 21:51:48.664819	\N
1153	Free Comic Book Day and Star Wars: The Clone Wars / Free Comic Book Day and Nickelodeon Avatar: The Last Airbender	40052	\N	\N	\N	2015-04-06 21:51:48.668546	2015-04-06 21:51:48.668546	\N
1154	Hellboy: Being Human	40082	\N	\N	\N	2015-04-06 21:51:48.673468	2015-04-06 21:51:48.673468	\N
1155	Femina & Fauna: The Art Of Camilla D'Errico	40154	\N	\N	\N	2015-04-06 21:51:48.678288	2015-04-06 21:51:48.678288	\N
1156	Gear School	40191	\N	\N	\N	2015-04-06 21:51:48.682252	2015-04-06 21:51:48.682252	\N
1157	Harlan Ellison's Dream Corridor Special	40205	\N	\N	\N	2015-04-06 21:51:48.685957	2015-04-06 21:51:48.685957	\N
1158	Star Wars: Jedi - The Dark Side	40212	\N	\N	\N	2015-04-06 21:51:48.691625	2015-04-06 21:51:48.691625	\N
1159	Harlan Ellison's Dream Corridor Quarterly	40222	\N	\N	\N	2015-04-06 21:51:48.697271	2015-04-06 21:51:48.697271	\N
1160	Dames, Dolls & Gun Molls	40394	\N	\N	\N	2015-04-06 21:51:48.701535	2015-04-06 21:51:48.701535	\N
1161	Edgar Rice Burroughs' Tarzan: The Jesse Marsh Years	40403	\N	\N	\N	2015-04-06 21:51:48.705211	2015-04-06 21:51:48.705211	\N
1162	MySpace Dark Horse Presents	40417	\N	\N	\N	2015-04-06 21:51:48.709444	2015-04-06 21:51:48.709444	\N
1163	Star Wars: Splinter of the Mind's Eye	40419	\N	\N	\N	2015-04-06 21:51:48.713507	2015-04-06 21:51:48.713507	\N
1164	Star Wars: Tales of the Jedi - Dark Lords of the Sith	40420	\N	\N	\N	2015-04-06 21:51:48.717566	2015-04-06 21:51:48.717566	\N
1165	Star Wars: Vader's Quest	40421	\N	\N	\N	2015-04-06 21:51:48.722111	2015-04-06 21:51:48.722111	\N
1166	Star Wars: Crimson Empire	40422	\N	\N	\N	2015-04-06 21:51:48.726532	2015-04-06 21:51:48.726532	\N
1167	Hellboy: The Fury	40436	\N	\N	\N	2015-04-06 21:51:48.731332	2015-04-06 21:51:48.731332	\N
1168	Akira	40465	\N	\N	\N	2015-04-06 21:51:48.73585	2015-04-06 21:51:48.73585	\N
1169	365 Samurai and a Few Bowls of Rice	40466	\N	\N	\N	2015-04-06 21:51:48.740844	2015-04-06 21:51:48.740844	\N
1170	Star Wars: Shadows of the Empire: Evolution	40507	\N	\N	\N	2015-04-06 21:51:48.746824	2015-04-06 21:51:48.746824	\N
1171	Buffy the Vampire Slayer Season Eight: Last Gleaming	40515	\N	\N	\N	2015-04-06 21:51:48.751839	2015-04-06 21:51:48.751839	\N
1172	Star Wars: The Old Republic - The Lost Suns	40525	\N	\N	\N	2015-04-06 21:51:48.756511	2015-04-06 21:51:48.756511	\N
1173	Star Wars: The Hunt for Aurra Sing	40549	\N	\N	\N	2015-04-06 21:51:48.760401	2015-04-06 21:51:48.760401	\N
1174	Star Wars: Outlander	40550	\N	\N	\N	2015-04-06 21:51:48.764085	2015-04-06 21:51:48.764085	\N
1175	Star Wars: Twilight	40551	\N	\N	\N	2015-04-06 21:51:48.768226	2015-04-06 21:51:48.768226	\N
1176	Star Wars: Prelude to Rebellion	40552	\N	\N	\N	2015-04-06 21:51:48.772512	2015-04-06 21:51:48.772512	\N
1177	Star Wars: Emissaries to Malastare	40553	\N	\N	\N	2015-04-06 21:51:48.776541	2015-04-06 21:51:48.776541	\N
1178	Star Wars: Darkness	40554	\N	\N	\N	2015-04-06 21:51:48.786446	2015-04-06 21:51:48.786446	\N
1179	Star Wars: The Stark Hyperspace War	40555	\N	\N	\N	2015-04-06 21:51:48.789732	2015-04-06 21:51:48.789732	\N
1180	Star Wars: Rite of Passage	40558	\N	\N	\N	2015-04-06 21:51:48.794952	2015-04-06 21:51:48.794952	\N
1181	Star Wars: Honor and Duty	40559	\N	\N	\N	2015-04-06 21:51:48.799346	2015-04-06 21:51:48.799346	\N
1182	ZombieWorld: Champion of the Worms	40587	\N	\N	\N	2015-04-06 21:51:48.80365	2015-04-06 21:51:48.80365	\N
1183	ZombieWorld: Winter's Dregs and Other Stories	40588	\N	\N	\N	2015-04-06 21:51:48.808423	2015-04-06 21:51:48.808423	\N
1184	Zero Killer	40589	\N	\N	\N	2015-04-06 21:51:48.812367	2015-04-06 21:51:48.812367	\N
1185	Conan: Island of No Return	40710	\N	\N	\N	2015-04-06 21:51:48.815978	2015-04-06 21:51:48.815978	\N
1186	Star Wars Adventures: Boba Fett and the Ship of Fear	40729	\N	\N	\N	2015-04-06 21:51:48.820075	2015-04-06 21:51:48.820075	\N
1187	Star Wars: Union	40804	\N	\N	\N	2015-04-06 21:51:48.824079	2015-04-06 21:51:48.824079	\N
1188	Indiana Jones and the Fate of Atlantis	40829	\N	\N	\N	2015-04-06 21:51:48.828692	2015-04-06 21:51:48.828692	\N
1189	Indiana Jones and the Kingdom of the Crystal Skull	40830	\N	\N	\N	2015-04-06 21:51:48.836984	2015-04-06 21:51:48.836984	\N
1190	Indiana Jones and the Shrine of the Sea Devil	40831	\N	\N	\N	2015-04-06 21:51:48.841598	2015-04-06 21:51:48.841598	\N
1191	Indiana Jones and the Tomb of the Gods	40832	\N	\N	\N	2015-04-06 21:51:48.846679	2015-04-06 21:51:48.846679	\N
1192	Indiana Jones Omnibus: The Further Adventures	40833	\N	\N	\N	2015-04-06 21:51:48.850961	2015-04-06 21:51:48.850961	\N
1193	Buffy the Vampire Slayer Season Eight: Retreat	40843	\N	\N	\N	2015-04-06 21:51:48.855244	2015-04-06 21:51:48.855244	\N
1194	Buffy the Vampire Slayer Season Eight: Twilight	40844	\N	\N	\N	2015-04-06 21:51:48.859534	2015-04-06 21:51:48.859534	\N
1195	Rage	40905	\N	\N	\N	2015-04-06 21:51:48.863764	2015-04-06 21:51:48.863764	\N
1196	Star Wars: Darth Maul	40918	\N	\N	\N	2015-04-06 21:51:48.86834	2015-04-06 21:51:48.86834	\N
1197	The Guild: Bladezz	40935	\N	\N	\N	2015-04-06 21:51:48.872086	2015-04-06 21:51:48.872086	\N
1198	Ju-On: Video Side	41058	\N	\N	\N	2015-04-06 21:51:48.877252	2015-04-06 21:51:48.877252	\N
1199	Ju-On 2	41060	\N	\N	\N	2015-04-06 21:51:48.885689	2015-04-06 21:51:48.885689	\N
1200	Star Wars: Shadows of the Empire - Kenner Special	41200	\N	\N	\N	2015-04-06 21:51:48.889291	2015-04-06 21:51:48.889291	\N
1201	Star Wars: Invasion - Revelations	41279	\N	\N	\N	2015-04-06 21:51:48.894578	2015-04-06 21:51:48.894578	\N
1202	B.P.R.D.: Casualties	41291	\N	\N	\N	2015-04-06 21:51:48.898887	2015-04-06 21:51:48.898887	\N
1203	B.P.R.D.: Hell on Earth - Monsters	41292	\N	\N	\N	2015-04-06 21:51:48.902966	2015-04-06 21:51:48.902966	\N
1204	Genetic Grunge	41407	\N	\N	\N	2015-04-06 21:51:48.907681	2015-04-06 21:51:48.907681	\N
1205	Timecop	41419	\N	\N	\N	2015-04-06 21:51:48.911849	2015-04-06 21:51:48.911849	\N
1206	The Mask: Official Movie Adaptation	41422	\N	\N	\N	2015-04-06 21:51:48.915693	2015-04-06 21:51:48.915693	\N
1207	Mystery Men: Movie Adaptation	41423	\N	\N	\N	2015-04-06 21:51:48.919584	2015-04-06 21:51:48.919584	\N
1208	Star Kid	41425	\N	\N	\N	2015-04-06 21:51:48.92351	2015-04-06 21:51:48.92351	\N
1209	Planet of the Apes: Movie Adaptation	41427	\N	\N	\N	2015-04-06 21:51:48.927785	2015-04-06 21:51:48.927785	\N
1210	Starship Troopers	41440	\N	\N	\N	2015-04-06 21:51:48.937067	2015-04-06 21:51:48.937067	\N
1211	Conan the Barbarian: The Mask of Acheron	41470	\N	\N	\N	2015-04-06 21:51:48.941645	2015-04-06 21:51:48.941645	\N
1212	Iron Empires: Sheva's War	41475	\N	\N	\N	2015-04-06 21:51:48.946833	2015-04-06 21:51:48.946833	\N
1213	Insane	41482	\N	\N	\N	2015-04-06 21:51:48.950818	2015-04-06 21:51:48.950818	\N
1214	Star Wars	41493	\N	\N	\N	2015-04-06 21:51:48.95442	2015-04-06 21:51:48.95442	\N
1215	Last Day in Vietnam	41526	\N	\N	\N	2015-04-06 21:51:48.958915	2015-04-06 21:51:48.958915	\N
1216	Criminal Macabre/The Goon: When Freaks Collide	41528	\N	\N	\N	2015-04-06 21:51:48.962678	2015-04-06 21:51:48.962678	\N
1217	Edgar Rice Burroughs' Tarzan/Carson of Venus	41556	\N	\N	\N	2015-04-06 21:51:48.966426	2015-04-06 21:51:48.966426	\N
1218	Kult	41756	\N	\N	\N	2015-04-06 21:51:48.970899	2015-04-06 21:51:48.970899	\N
1219	Planet of the Apes	41848	\N	\N	\N	2015-04-06 21:51:48.975451	2015-04-06 21:51:48.975451	\N
1220	Star Wars: Empire	41849	\N	\N	\N	2015-04-06 21:51:48.984988	2015-04-06 21:51:48.984988	\N
1221	Star Wars: Dark Times - Out of the Wilderness	41881	\N	\N	\N	2015-04-06 21:51:48.988454	2015-04-06 21:51:48.988454	\N
1222	Baltimore: The Curse Bells	41930	\N	\N	\N	2015-04-06 21:51:48.992894	2015-04-06 21:51:48.992894	\N
1223	Manga Mania	42044	\N	\N	\N	2015-04-06 21:51:48.998157	2015-04-06 21:51:48.998157	\N
1224	Aliens Mini-Comic	42090	\N	\N	\N	2015-04-06 21:51:49.002986	2015-04-06 21:51:49.002986	\N
1225	Star Wars: Knight Errant: Deluge	42222	\N	\N	\N	2015-04-06 21:51:49.007265	2015-04-06 21:51:49.007265	\N
1226	Hammer of God: Butch	42389	\N	\N	\N	2015-04-06 21:51:49.011084	2015-04-06 21:51:49.011084	\N
1227	Aliens: Countdown	42443	\N	\N	\N	2015-04-06 21:51:49.014946	2015-04-06 21:51:49.014946	\N
1228	Aliens/Predator: Panel to Panel	42444	\N	\N	\N	2015-04-06 21:51:49.018773	2015-04-06 21:51:49.018773	\N
1229	Aliens vs. Predator Annual	42445	\N	\N	\N	2015-04-06 21:51:49.022503	2015-04-06 21:51:49.022503	\N
1230	Alien vs. Predator: Thrill of the Hunt	42446	\N	\N	\N	2015-04-06 21:51:49.026421	2015-04-06 21:51:49.026421	\N
1231	Hot Stuff Halloween Special 2010	42455	\N	\N	\N	2015-04-06 21:51:49.031187	2015-04-06 21:51:49.031187	\N
1232	Angel & Faith	42521	\N	\N	\N	2015-04-06 21:51:49.038723	2015-04-06 21:51:49.038723	\N
1233	Star Wars: Boba Fett - Death, Lies, & Treachery	42572	\N	\N	\N	2015-04-06 21:51:49.044735	2015-04-06 21:51:49.044735	\N
1234	Star Wars: The Clone Wars - The Starcrusher Trap	42592	\N	\N	\N	2015-04-06 21:51:49.049363	2015-04-06 21:51:49.049363	\N
1235	Dylan Dog Case Files	42800	\N	\N	\N	2015-04-06 21:51:49.05334	2015-04-06 21:51:49.05334	\N
1236	Mind MGMT: The Manager	42801	\N	\N	\N	2015-04-06 21:51:49.057708	2015-04-06 21:51:49.057708	\N
1237	Buffy the Vampire Slayer Season Nine	42820	\N	\N	\N	2015-04-06 21:51:49.061475	2015-04-06 21:51:49.061475	\N
1238	Complete Major Bummer Super Slacktacular	42832	\N	\N	\N	2015-04-06 21:51:49.065532	2015-04-06 21:51:49.065532	\N
1239	Creepy Archives	42915	\N	\N	\N	2015-04-06 21:51:49.069479	2015-04-06 21:51:49.069479	\N
1240	Mass Effect: Conviction	42923	\N	\N	\N	2015-04-06 21:51:49.073862	2015-04-06 21:51:49.073862	\N
1241	Buffy the Vampire Slayer Season Nine: Magical Mystery Tour Featuring the Beetles	42924	\N	\N	\N	2015-04-06 21:51:49.078259	2015-04-06 21:51:49.078259	\N
1242	Star Wars Adventures: Chewbacca and the Slavers of the Shadowlands	42926	\N	\N	\N	2015-04-06 21:51:49.086232	2015-04-06 21:51:49.086232	\N
1243	Criminal Macabre: No Peace For Dead Men	42946	\N	\N	\N	2015-04-06 21:51:49.08989	2015-04-06 21:51:49.08989	\N
1244	B.P.R.D.: Hell on Earth - Russia	42954	\N	\N	\N	2015-04-06 21:51:49.095044	2015-04-06 21:51:49.095044	\N
1245	Dragon Age: Those Who Speak	42968	\N	\N	\N	2015-04-06 21:51:49.099259	2015-04-06 21:51:49.099259	\N
1246	Evelyn Evelyn	42971	\N	\N	\N	2015-04-06 21:51:49.103277	2015-04-06 21:51:49.103277	\N
1247	The Thing: The Northman Nightmare	42988	\N	\N	\N	2015-04-06 21:51:49.107328	2015-04-06 21:51:49.107328	\N
1248	Abe Sapien: The Devil Does Not Jest	43030	\N	\N	\N	2015-04-06 21:51:49.111389	2015-04-06 21:51:49.111389	\N
1249	John Byrne's Next Men	43056	\N	\N	\N	2015-04-06 21:51:49.115985	2015-04-06 21:51:49.115985	\N
1250	Art of Usagi Yojimbo	43064	\N	\N	\N	2015-04-06 21:51:49.119995	2015-04-06 21:51:49.119995	\N
1251	The Art of Hellboy	43078	\N	\N	\N	2015-04-06 21:51:49.124701	2015-04-06 21:51:49.124701	\N
1252	Adventures of the Mask Omnibus	43079	\N	\N	\N	2015-04-06 21:51:49.129205	2015-04-06 21:51:49.129205	\N
1253	Age of Reptiles Omnibus	43080	\N	\N	\N	2015-04-06 21:51:49.132579	2015-04-06 21:51:49.132579	\N
1254	Alien Legion Omnibus	43081	\N	\N	\N	2015-04-06 21:51:49.136489	2015-04-06 21:51:49.136489	\N
1255	Aliens vs. Predator	43082	\N	\N	\N	2015-04-06 21:51:49.14171	2015-04-06 21:51:49.14171	\N
1256	Aliens vs. Predator: Eternal	43083	\N	\N	\N	2015-04-06 21:51:49.146641	2015-04-06 21:51:49.146641	\N
1257	Aliens vs. Predator: Three World War	43084	\N	\N	\N	2015-04-06 21:51:49.151285	2015-04-06 21:51:49.151285	\N
1258	Aliens: More Than Human	43085	\N	\N	\N	2015-04-06 21:51:49.154989	2015-04-06 21:51:49.154989	\N
1259	Aliens/Predator: Deadliest Of The Species	43086	\N	\N	\N	2015-04-06 21:51:49.159266	2015-04-06 21:51:49.159266	\N
1260	Aliens/Predator: War	43087	\N	\N	\N	2015-04-06 21:51:49.163096	2015-04-06 21:51:49.163096	\N
1261	Caravan Kidd	43088	\N	\N	\N	2015-04-06 21:51:49.167468	2015-04-06 21:51:49.167468	\N
1262	Cardcaptor Sakura Omnibus	43089	\N	\N	\N	2015-04-06 21:51:49.171149	2015-04-06 21:51:49.171149	\N
1263	Gunsmith Cats	43103	\N	\N	\N	2015-04-06 21:51:49.176568	2015-04-06 21:51:49.176568	\N
1264	Myst: Book of the Black Ships	43128	\N	\N	\N	2015-04-06 21:51:49.185348	2015-04-06 21:51:49.185348	\N
1265	Give Me Liberty	43156	\N	\N	\N	2015-04-06 21:51:49.188628	2015-04-06 21:51:49.188628	\N
1266	It Rhymes with Lust	43205	\N	\N	\N	2015-04-06 21:51:49.19368	2015-04-06 21:51:49.19368	\N
1267	Baltimore: The Plague Ships	43217	\N	\N	\N	2015-04-06 21:51:49.198009	2015-04-06 21:51:49.198009	\N
1268	Falling Skies	43225	\N	\N	\N	2015-04-06 21:51:49.202105	2015-04-06 21:51:49.202105	\N
1269	Nexus Archives	43230	\N	\N	\N	2015-04-06 21:51:49.205417	2015-04-06 21:51:49.205417	\N
1270	Usagi Yojimbo Volume 8: Shades Of Death	43231	\N	\N	\N	2015-04-06 21:51:49.209763	2015-04-06 21:51:49.209763	\N
1271	Usagi Yojimbo: Daisho	43232	\N	\N	\N	2015-04-06 21:51:49.214187	2015-04-06 21:51:49.214187	\N
1272	Usagi Yojimbo Volume 10: The Brink Of Life And Death	43233	\N	\N	\N	2015-04-06 21:51:49.218147	2015-04-06 21:51:49.218147	\N
1273	Usagi Yojimbo Volume 11: Seasons	43234	\N	\N	\N	2015-04-06 21:51:49.222961	2015-04-06 21:51:49.222961	\N
1274	Usagi Yojimbo: Grasscutter	43235	\N	\N	\N	2015-04-06 21:51:49.231545	2015-04-06 21:51:49.231545	\N
1275	Usagi Yojimbo: Grey Shadows	43236	\N	\N	\N	2015-04-06 21:51:49.236788	2015-04-06 21:51:49.236788	\N
1276	Usagi Yojimbo Volume 14: Demon Mask	43237	\N	\N	\N	2015-04-06 21:51:49.240547	2015-04-06 21:51:49.240547	\N
1277	Usagi Yojimbo: Grasscutter II -- Journey To Atsuta Shrine	43238	\N	\N	\N	2015-04-06 21:51:49.246125	2015-04-06 21:51:49.246125	\N
1278	Usagi Yojimbo: The Shrouded Moon	43239	\N	\N	\N	2015-04-06 21:51:49.250874	2015-04-06 21:51:49.250874	\N
1279	Usagi Yojimbo Volume 17: Duel At Kitanoji	43240	\N	\N	\N	2015-04-06 21:51:49.254336	2015-04-06 21:51:49.254336	\N
1280	Usagi Yojimbo: Travels With Jotaro	43241	\N	\N	\N	2015-04-06 21:51:49.258896	2015-04-06 21:51:49.258896	\N
1281	Usagi Yojimbo Volume 19: Fathers And Sons	43242	\N	\N	\N	2015-04-06 21:51:49.263252	2015-04-06 21:51:49.263252	\N
1282	Usagi Yojimbo Volume 20: Glimpses Of Death	43243	\N	\N	\N	2015-04-06 21:51:49.266982	2015-04-06 21:51:49.266982	\N
1283	Usagi Yojimbo Volume 21: The Mother Of Mountains	43244	\N	\N	\N	2015-04-06 21:51:49.270595	2015-04-06 21:51:49.270595	\N
1284	Usagi Yojimbo Volume 22: Tomoe’s Story	43245	\N	\N	\N	2015-04-06 21:51:49.274505	2015-04-06 21:51:49.274505	\N
1285	Usagi Yojimbo Volume 23: Bridge Of Tears	43246	\N	\N	\N	2015-04-06 21:51:49.278302	2015-04-06 21:51:49.278302	\N
1286	Usagi Yojimbo Volume 24: Return Of The Black Soul	43247	\N	\N	\N	2015-04-06 21:51:49.287465	2015-04-06 21:51:49.287465	\N
1287	Usagi Yojimbo Volume 25: Fox Hunt	43248	\N	\N	\N	2015-04-06 21:51:49.292821	2015-04-06 21:51:49.292821	\N
1288	Orchid	43250	\N	\N	\N	2015-04-06 21:51:49.297697	2015-04-06 21:51:49.297697	\N
1289	Kull: The Cat and the Skull	43306	\N	\N	\N	2015-04-06 21:51:49.301497	2015-04-06 21:51:49.301497	\N
1290	Mass Effect: Invasion	43391	\N	\N	\N	2015-04-06 21:51:49.305176	2015-04-06 21:51:49.305176	\N
1291	Little and Large	43392	\N	\N	\N	2015-04-06 21:51:49.309132	2015-04-06 21:51:49.309132	\N
1292	That Darn Yarn	43393	\N	\N	\N	2015-04-06 21:51:49.313144	2015-04-06 21:51:49.313144	\N
1293	Mass Effect Incursion / Inquisition	43398	\N	\N	\N	2015-04-06 21:51:49.316832	2015-04-06 21:51:49.316832	\N
1294	Tempus Fugitive	43422	\N	\N	\N	2015-04-06 21:51:49.320473	2015-04-06 21:51:49.320473	\N
1295	The Manara Library	43591	\N	\N	\N	2015-04-06 21:51:49.324806	2015-04-06 21:51:49.324806	\N
1296	Dungeon Siege III	43595	\N	\N	\N	2015-04-06 21:51:49.329603	2015-04-06 21:51:49.329603	\N
1297	Star Wars: Crimson Empire III - Empire Lost	43600	\N	\N	\N	2015-04-06 21:51:49.337065	2015-04-06 21:51:49.337065	\N
1298	Scary Godmother Halloween Ashcan	43602	\N	\N	\N	2015-04-06 21:51:49.3411	2015-04-06 21:51:49.3411	\N
1299	Scary Godmother	43617	\N	\N	\N	2015-04-06 21:51:49.346753	2015-04-06 21:51:49.346753	\N
1300	Scary Godmother: Comic-Book Stories	43619	\N	\N	\N	2015-04-06 21:51:49.350928	2015-04-06 21:51:49.350928	\N
1301	Casper And Little Lulu Haloween Special 2009	43623	\N	\N	\N	2015-04-06 21:51:49.354844	2015-04-06 21:51:49.354844	\N
1302	Star Wars: The Clone Wars - The Sith Hunters	43768	\N	\N	\N	2015-04-06 21:51:49.358734	2015-04-06 21:51:49.358734	\N
1303	Joker/Mask	43824	\N	\N	\N	2015-04-06 21:51:49.362583	2015-04-06 21:51:49.362583	\N
1304	The Mask: Virtual Surreality	43825	\N	\N	\N	2015-04-06 21:51:49.366612	2015-04-06 21:51:49.366612	\N
1305	Space Usagi	43828	\N	\N	\N	2015-04-06 21:51:49.370605	2015-04-06 21:51:49.370605	\N
1306	Star Wars: The Thrawn Trilogy	43861	\N	\N	\N	2015-04-06 21:51:49.375331	2015-04-06 21:51:49.375331	\N
1307	The Adventures Of Dr. McNinja: Night Powers	43865	\N	\N	\N	2015-04-06 21:51:49.380192	2015-04-06 21:51:49.380192	\N
1308	Concrete: The Complete Short Stories	43925	\N	\N	\N	2015-04-06 21:51:49.385322	2015-04-06 21:51:49.385322	\N
1309	House of Night	43933	\N	\N	\N	2015-04-06 21:51:49.389285	2015-04-06 21:51:49.389285	\N
1310	Mighty Samson: Judgment	43950	\N	\N	\N	2015-04-06 21:51:49.394852	2015-04-06 21:51:49.394852	\N
1311	The Occultist	43975	\N	\N	\N	2015-04-06 21:51:49.400099	2015-04-06 21:51:49.400099	\N
1312	Star Wars: Dark Empire Trilogy	43977	\N	\N	\N	2015-04-06 21:51:49.404717	2015-04-06 21:51:49.404717	\N
1313	Casper the Friendly Ghost and Little Lulu Halloween Special 2009	44098	\N	\N	\N	2015-04-06 21:51:49.40961	2015-04-06 21:51:49.40961	\N
1314	Stan Shaw's Beauty and the Beast	44109	\N	\N	\N	2015-04-06 21:51:49.413653	2015-04-06 21:51:49.413653	\N
1315	Badlands	44112	\N	\N	\N	2015-04-06 21:51:49.417177	2015-04-06 21:51:49.417177	\N
1316	Space Family Robinson Archives	44135	\N	\N	\N	2015-04-06 21:51:49.421496	2015-04-06 21:51:49.421496	\N
1317	Brothers of the Spears	44136	\N	\N	\N	2015-04-06 21:51:49.425948	2015-04-06 21:51:49.425948	\N
1318	Archie Archives	44137	\N	\N	\N	2015-04-06 21:51:49.432046	2015-04-06 21:51:49.432046	\N
1319	Barry Windsor Smith Archives	44138	\N	\N	\N	2015-04-06 21:51:49.43618	2015-04-06 21:51:49.43618	\N
1320	Star Wars: Jedi Academy - Leviathan	44162	\N	\N	\N	2015-04-06 21:51:49.439598	2015-04-06 21:51:49.439598	\N
1321	Star Wars: Episode I Adventures	44163	\N	\N	\N	2015-04-06 21:51:49.445951	2015-04-06 21:51:49.445951	\N
1322	Star Wars: X-Wing Rogue Squadron - Requiem for a Rogue	44165	\N	\N	\N	2015-04-06 21:51:49.449856	2015-04-06 21:51:49.449856	\N
1323	Star Wars: Chewbacca	44219	\N	\N	\N	2015-04-06 21:51:49.454601	2015-04-06 21:51:49.454601	\N
1324	Little Lulu: A Handy Kid	44240	\N	\N	\N	2015-04-06 21:51:49.459053	2015-04-06 21:51:49.459053	\N
1325	Little Lulu: All Dressed Up	44256	\N	\N	\N	2015-04-06 21:51:49.463904	2015-04-06 21:51:49.463904	\N
1326	Little Lulu: April Fools	44270	\N	\N	\N	2015-04-06 21:51:49.467674	2015-04-06 21:51:49.467674	\N
1327	Mass Effect: Redemption	44277	\N	\N	\N	2015-04-06 21:51:49.471593	2015-04-06 21:51:49.471593	\N
1328	Little Lulu's Pal Tubby	44300	\N	\N	\N	2015-04-06 21:51:49.476171	2015-04-06 21:51:49.476171	\N
1329	Buffy the Vampire Slayer: The Remaining Sunlight	44315	\N	\N	\N	2015-04-06 21:51:49.484846	2015-04-06 21:51:49.484846	\N
1330	Go Boy 7	44316	\N	\N	\N	2015-04-06 21:51:49.487954	2015-04-06 21:51:49.487954	\N
1331	Star Wars: Agent of the Empire - Iron Eclipse	44318	\N	\N	\N	2015-04-06 21:51:49.494175	2015-04-06 21:51:49.494175	\N
1332	Little Lulu: In the Doghouse	44343	\N	\N	\N	2015-04-06 21:51:49.498428	2015-04-06 21:51:49.498428	\N
1333	Conan the Barbarian	44351	\N	\N	\N	2015-04-06 21:51:49.502151	2015-04-06 21:51:49.502151	\N
1334	Little Lulu: Late for School	44358	\N	\N	\N	2015-04-06 21:51:49.506084	2015-04-06 21:51:49.506084	\N
1335	Little Lulu: Leave It to Lulu	44365	\N	\N	\N	2015-04-06 21:51:49.510131	2015-04-06 21:51:49.510131	\N
1336	Little Lulu: Letters to Santa	44371	\N	\N	\N	2015-04-06 21:51:49.514387	2015-04-06 21:51:49.514387	\N
1337	Little Lulu: Lucky Lulu	44379	\N	\N	\N	2015-04-06 21:51:49.518096	2015-04-06 21:51:49.518096	\N
1338	Little Lulu: Lulu Goes Shopping	44384	\N	\N	\N	2015-04-06 21:51:49.522954	2015-04-06 21:51:49.522954	\N
1339	Little Lulu: Lulu Takes A Trip	44394	\N	\N	\N	2015-04-06 21:51:49.526908	2015-04-06 21:51:49.526908	\N
1340	Made with 90% Recycled Art	44434	\N	\N	\N	2015-04-06 21:51:49.535881	2015-04-06 21:51:49.535881	\N
1341	Little Lulu: Lulu's Umbrella Service	44470	\N	\N	\N	2015-04-06 21:51:49.539364	2015-04-06 21:51:49.539364	\N
1342	Little Lulu: Miss Feeny's Folly and Other Stories	44471	\N	\N	\N	2015-04-06 21:51:49.545324	2015-04-06 21:51:49.545324	\N
1343	Little Lulu: My Dinner With Lulu	44487	\N	\N	\N	2015-04-06 21:51:49.549807	2015-04-06 21:51:49.549807	\N
1344	Little Lulu: Queen Lulu	44498	\N	\N	\N	2015-04-06 21:51:49.554203	2015-04-06 21:51:49.554203	\N
1345	The Strain	44528	\N	\N	\N	2015-04-06 21:51:49.558837	2015-04-06 21:51:49.558837	\N
1346	Little Lulu: Sunday Afternoon	44529	\N	\N	\N	2015-04-06 21:51:49.563367	2015-04-06 21:51:49.563367	\N
1347	Little Lulu: The Alamo and Other Stories	44532	\N	\N	\N	2015-04-06 21:51:49.567443	2015-04-06 21:51:49.567443	\N
1348	Little Lulu: The Bawlplayers and Other Stories	44558	\N	\N	\N	2015-04-06 21:51:49.571167	2015-04-06 21:51:49.571167	\N
1349	Little Lulu: The Big Dipper Club and Other Stories	44559	\N	\N	\N	2015-04-06 21:51:49.576405	2015-04-06 21:51:49.576405	\N
1350	Little Lulu: The Bogey Snowman and Other Stories	44576	\N	\N	\N	2015-04-06 21:51:49.580922	2015-04-06 21:51:49.580922	\N
1351	Little Lulu: The Burglar-Proof Clubhouse and Other Stories	44588	\N	\N	\N	2015-04-06 21:51:49.587255	2015-04-06 21:51:49.587255	\N
1352	Aliens: Fast Track to Heaven	44604	\N	\N	\N	2015-04-06 21:51:49.591616	2015-04-06 21:51:49.591616	\N
1353	Little Lulu: The Expert	44606	\N	\N	\N	2015-04-06 21:51:49.597045	2015-04-06 21:51:49.597045	\N
1354	Little Lulu: The Explorers	44624	\N	\N	\N	2015-04-06 21:51:49.601042	2015-04-06 21:51:49.601042	\N
1355	Little Lulu: The Feud and Other Stories	44631	\N	\N	\N	2015-04-06 21:51:49.60491	2015-04-06 21:51:49.60491	\N
1356	Little Lulu: The Space Dolly and Other Stories	44633	\N	\N	\N	2015-04-06 21:51:49.609481	2015-04-06 21:51:49.609481	\N
1357	Little Lulu: The Valentine	44643	\N	\N	\N	2015-04-06 21:51:49.613641	2015-04-06 21:51:49.613641	\N
1358	Little Lulu: Too Much Fun	44658	\N	\N	\N	2015-04-06 21:51:49.617425	2015-04-06 21:51:49.617425	\N
1359	The Immortal: Demon in the Blood	44695	\N	\N	\N	2015-04-06 21:51:49.620775	2015-04-06 21:51:49.620775	\N
1360	Jingle Belle: The Fight Before Christmas	44708	\N	\N	\N	2015-04-06 21:51:49.62463	2015-04-06 21:51:49.62463	\N
1361	The Rocketeer: Cliff's New York Adventure	44709	\N	\N	\N	2015-04-06 21:51:49.629498	2015-04-06 21:51:49.629498	\N
1362	Cannon God Exaxxion	44737	\N	\N	\N	2015-04-06 21:51:49.636918	2015-04-06 21:51:49.636918	\N
1363	Star Wars: A Long Time Ago...	44738	\N	\N	\N	2015-04-06 21:51:49.64057	2015-04-06 21:51:49.64057	\N
1364	Chobits Omnibus	44739	\N	\N	\N	2015-04-06 21:51:49.646488	2015-04-06 21:51:49.646488	\N
1365	Gunsmith Cats	44740	\N	\N	\N	2015-04-06 21:51:49.650935	2015-04-06 21:51:49.650935	\N
1366	Angel Omnibus	44744	\N	\N	\N	2015-04-06 21:51:49.655019	2015-04-06 21:51:49.655019	\N
1367	Apocalypse Nerd	44745	\N	\N	\N	2015-04-06 21:51:49.659004	2015-04-06 21:51:49.659004	\N
1368	Appleseed Databook	44746	\N	\N	\N	2015-04-06 21:51:49.663178	2015-04-06 21:51:49.663178	\N
1369	Appleseed Hypernotes	44747	\N	\N	\N	2015-04-06 21:51:49.666837	2015-04-06 21:51:49.666837	\N
1370	Barb Wire Omnibus	44748	\N	\N	\N	2015-04-06 21:51:49.670625	2015-04-06 21:51:49.670625	\N
1371	Barb Wire	44750	\N	\N	\N	2015-04-06 21:51:49.675232	2015-04-06 21:51:49.675232	\N
1372	Body Bags: Father's Day	44751	\N	\N	\N	2015-04-06 21:51:49.679668	2015-04-06 21:51:49.679668	\N
1373	Bubblegum Crisis: Grand Mal	44752	\N	\N	\N	2015-04-06 21:51:49.687033	2015-04-06 21:51:49.687033	\N
1374	Conan and the Midnight God	44754	\N	\N	\N	2015-04-06 21:51:49.692038	2015-04-06 21:51:49.692038	\N
1375	Conan: Born On The Battlefield	44757	\N	\N	\N	2015-04-06 21:51:49.697411	2015-04-06 21:51:49.697411	\N
1376	Conan: Iron Shadows In The Moon	44758	\N	\N	\N	2015-04-06 21:51:49.701455	2015-04-06 21:51:49.701455	\N
1377	Conan: Free Companions	44759	\N	\N	\N	2015-04-06 21:51:49.705521	2015-04-06 21:51:49.705521	\N
1378	Conan: Book Of Thoth	44760	\N	\N	\N	2015-04-06 21:51:49.710979	2015-04-06 21:51:49.710979	\N
1379	Milk and Cheese Dairy Products Gone Bad	44761	\N	\N	\N	2015-04-06 21:51:49.715192	2015-04-06 21:51:49.715192	\N
1380	Dark Horse Extra	44767	\N	\N	\N	2015-04-06 21:51:49.71941	2015-04-06 21:51:49.71941	\N
1381	Outlanders	44810	\N	\N	\N	2015-04-06 21:51:49.723334	2015-04-06 21:51:49.723334	\N
1382	Hellboy: Masks and Monsters	44823	\N	\N	\N	2015-04-06 21:51:49.72797	2015-04-06 21:51:49.72797	\N
1383	Abe Sapien: The Drowning	44829	\N	\N	\N	2015-04-06 21:51:49.737712	2015-04-06 21:51:49.737712	\N
1384	Outlanders Special	44845	\N	\N	\N	2015-04-06 21:51:49.741374	2015-04-06 21:51:49.741374	\N
1385	Outlanders Epilogue	44846	\N	\N	\N	2015-04-06 21:51:49.746943	2015-04-06 21:51:49.746943	\N
1386	Star Wars: Tales of the Jedi - Redemption	44903	\N	\N	\N	2015-04-06 21:51:49.751311	2015-04-06 21:51:49.751311	\N
1387	Star Wars: Tales of the Jedi - The Sith War	44904	\N	\N	\N	2015-04-06 21:51:49.756251	2015-04-06 21:51:49.756251	\N
1388	Star Wars: Tales of the Jedi - The Freedon Nadd Uprising	44905	\N	\N	\N	2015-04-06 21:51:49.760688	2015-04-06 21:51:49.760688	\N
1389	Star Wars: Tales of the Jedi - The Fall of the Sith Empire	44907	\N	\N	\N	2015-04-06 21:51:49.764722	2015-04-06 21:51:49.764722	\N
1390	Star Wars: Tales of the Jedi - The Golden Age of the Sith	44908	\N	\N	\N	2015-04-06 21:51:49.768242	2015-04-06 21:51:49.768242	\N
1391	Green River Killer: A True Detective Story	44909	\N	\N	\N	2015-04-06 21:51:49.772339	2015-04-06 21:51:49.772339	\N
1392	Terminator: 2029-1984	44924	\N	\N	\N	2015-04-06 21:51:49.776284	2015-04-06 21:51:49.776284	\N
1393	Classic Star Wars - The Early Adventures	44969	\N	\N	\N	2015-04-06 21:51:49.780938	2015-04-06 21:51:49.780938	\N
1394	Martha Washington Goes to War	44980	\N	\N	\N	2015-04-06 21:51:49.785565	2015-04-06 21:51:49.785565	\N
1395	Martha Washington Saves the World	44983	\N	\N	\N	2015-04-06 21:51:49.789282	2015-04-06 21:51:49.789282	\N
1396	Heart of Empire: The Legacy of Luther Arkwright	44987	\N	\N	\N	2015-04-06 21:51:49.794792	2015-04-06 21:51:49.794792	\N
1397	Nickelodeon Avatar: The Last Airbender - The Promise	45001	\N	\N	\N	2015-04-06 21:51:49.798987	2015-04-06 21:51:49.798987	\N
1398	Star Wars: Dark Empire II	45008	\N	\N	\N	2015-04-06 21:51:49.802955	2015-04-06 21:51:49.802955	\N
1399	Star Wars: Dark Empire	45009	\N	\N	\N	2015-04-06 21:51:49.808071	2015-04-06 21:51:49.808071	\N
1400	Too Much Coffee Man's Parade of Tirade	45014	\N	\N	\N	2015-04-06 21:51:49.812147	2015-04-06 21:51:49.812147	\N
1401	Star Wars: Droids - Season of Revolt	45022	\N	\N	\N	2015-04-06 21:51:49.816481	2015-04-06 21:51:49.816481	\N
1402	Star Wars: Droids - Rebellion	45023	\N	\N	\N	2015-04-06 21:51:49.820379	2015-04-06 21:51:49.820379	\N
1403	Star Wars: Underworld - The Yavin Vassilika	45024	\N	\N	\N	2015-04-06 21:51:49.825546	2015-04-06 21:51:49.825546	\N
1404	Too Much Coffee Man : How to Be Happy	45043	\N	\N	\N	2015-04-06 21:51:49.830434	2015-04-06 21:51:49.830434	\N
1405	Star Wars: Jedi Council - Acts of War	45054	\N	\N	\N	2015-04-06 21:51:49.837499	2015-04-06 21:51:49.837499	\N
1406	The Guild: Zaboo	45097	\N	\N	\N	2015-04-06 21:51:49.842009	2015-04-06 21:51:49.842009	\N
1407	Witchfinder: Lost And Gone Forever	45124	\N	\N	\N	2015-04-06 21:51:49.847008	2015-04-06 21:51:49.847008	\N
1408	Star Wars: Legacy - War	45126	\N	\N	\N	2015-04-06 21:51:49.852061	2015-04-06 21:51:49.852061	\N
1409	B.P.R.D.: Hell on Earth - Gods and Monsters	45129	\N	\N	\N	2015-04-06 21:51:49.857011	2015-04-06 21:51:49.857011	\N
1410	Dark Matter	45131	\N	\N	\N	2015-04-06 21:51:49.860856	2015-04-06 21:51:49.860856	\N
1411	Lobster Johnson: The Burning Hand	45133	\N	\N	\N	2015-04-06 21:51:49.864904	2015-04-06 21:51:49.864904	\N
1412	Brody's Ghost: The Midnight Train and Other Tales	45151	\N	\N	\N	2015-04-06 21:51:49.869433	2015-04-06 21:51:49.869433	\N
1413	Star Wars: Knights of the Old Republic - War	45153	\N	\N	\N	2015-04-06 21:51:49.873717	2015-04-06 21:51:49.873717	\N
1414	Star Wars: Knights of the Old Republic: Commencement	45204	\N	\N	\N	2015-04-06 21:51:49.87806	2015-04-06 21:51:49.87806	\N
1415	Scarlet Traces: The Great Game	45216	\N	\N	\N	2015-04-06 21:51:49.886115	2015-04-06 21:51:49.886115	\N
1416	Star Wars: Knights of the Old Republic: Flashpoint	45217	\N	\N	\N	2015-04-06 21:51:49.889889	2015-04-06 21:51:49.889889	\N
1417	The Goon: Calamity of Conscience	45267	\N	\N	\N	2015-04-06 21:51:49.895992	2015-04-06 21:51:49.895992	\N
1418	The Goon: Wicked Inclinations	45268	\N	\N	\N	2015-04-06 21:51:49.900169	2015-04-06 21:51:49.900169	\N
1419	Star Wars: The Clone Wars - Strange Allies	45283	\N	\N	\N	2015-04-06 21:51:49.904011	2015-04-06 21:51:49.904011	\N
1420	The Goon: Virtue and the Grim Consequences Thereof	45334	\N	\N	\N	2015-04-06 21:51:49.908592	2015-04-06 21:51:49.908592	\N
1421	King Conan: The Phoenix on the Sword	45383	\N	\N	\N	2015-04-06 21:51:49.912878	2015-04-06 21:51:49.912878	\N
1422	Grandville	45516	\N	\N	\N	2015-04-06 21:51:49.917278	2015-04-06 21:51:49.917278	\N
1423	Grandville Mon Amour	45517	\N	\N	\N	2015-04-06 21:51:49.921877	2015-04-06 21:51:49.921877	\N
1424	Hellboy: Seed of Destruction and Wake the Devil	45519	\N	\N	\N	2015-04-06 21:51:49.92563	2015-04-06 21:51:49.92563	\N
1425	Hellboy: The Chained Coffin and The Right Hand of Doom	45521	\N	\N	\N	2015-04-06 21:51:49.930486	2015-04-06 21:51:49.930486	\N
1426	Hellboy: Conqueror Worm and Strange Places	45522	\N	\N	\N	2015-04-06 21:51:49.937297	2015-04-06 21:51:49.937297	\N
1427	Hellboy: The Crooked Man and The Troll Witch	45523	\N	\N	\N	2015-04-06 21:51:49.941741	2015-04-06 21:51:49.941741	\N
1428	The Strange Case of Mr. Hyde	45564	\N	\N	\N	2015-04-06 21:51:49.946955	2015-04-06 21:51:49.946955	\N
1429	Star Wars: Dawn of the Jedi - Force Storm	45577	\N	\N	\N	2015-04-06 21:51:49.951193	2015-04-06 21:51:49.951193	\N
1430	Star Wars: Knights of the Old Republic: Days of Fear, Nights of Anger	45632	\N	\N	\N	2015-04-06 21:51:49.954642	2015-04-06 21:51:49.954642	\N
1431	The Mask: The Collection	45670	\N	\N	\N	2015-04-06 21:51:49.959485	2015-04-06 21:51:49.959485	\N
1432	Little Lulu Color Special	45688	\N	\N	\N	2015-04-06 21:51:49.963811	2015-04-06 21:51:49.963811	\N
1433	Conan: Road of Kings	45712	\N	\N	\N	2015-04-06 21:51:49.968342	2015-04-06 21:51:49.968342	\N
1434	The Art of the Mass Effect Universe	45797	\N	\N	\N	2015-04-06 21:51:49.972686	2015-04-06 21:51:49.972686	\N
1435	Murky World	45800	\N	\N	\N	2015-04-06 21:51:49.984797	2015-04-06 21:51:49.984797	\N
1436	Groo: Death & Taxes	45816	\N	\N	\N	2015-04-06 21:51:49.988106	2015-04-06 21:51:49.988106	\N
1437	Dragon Age: The Silent Grove	45861	\N	\N	\N	2015-04-06 21:51:49.992381	2015-04-06 21:51:49.992381	\N
1438	B.P.R.D.: Hell on Earth - The Long Death	45868	\N	\N	\N	2015-04-06 21:51:49.997627	2015-04-06 21:51:49.997627	\N
1439	King Conan: The Scarlet Citadel	45890	\N	\N	\N	2015-04-06 21:51:50.001749	2015-04-06 21:51:50.001749	\N
1440	SpyBoy: The Deadly Gourmet Affair	45932	\N	\N	\N	2015-04-06 21:51:50.006371	2015-04-06 21:51:50.006371	\N
1441	SpyBoy: Trial and Terror	45933	\N	\N	\N	2015-04-06 21:51:50.010883	2015-04-06 21:51:50.010883	\N
1442	SpyBoy: Bet Your Life	45934	\N	\N	\N	2015-04-06 21:51:50.015894	2015-04-06 21:51:50.015894	\N
1443	SpyBoy: Undercover, Underwear!	45935	\N	\N	\N	2015-04-06 21:51:50.020144	2015-04-06 21:51:50.020144	\N
1444	SpyBoy: Spy-School Confidential	45936	\N	\N	\N	2015-04-06 21:51:50.025446	2015-04-06 21:51:50.025446	\N
1445	The Goon: Those that is Damned	46028	\N	\N	\N	2015-04-06 21:51:50.030027	2015-04-06 21:51:50.030027	\N
1446	The Goon: A Place of Heartache and Grief	46029	\N	\N	\N	2015-04-06 21:51:50.034133	2015-04-06 21:51:50.034133	\N
1447	The Goon: Death's Greedy Comeuppance	46031	\N	\N	\N	2015-04-06 21:51:50.039433	2015-04-06 21:51:50.039433	\N
1448	Prototype 2	46047	\N	\N	\N	2015-04-06 21:51:50.044569	2015-04-06 21:51:50.044569	\N
1449	Dragon Age: The Silent Grove	46048	\N	\N	\N	2015-04-06 21:51:50.049385	2015-04-06 21:51:50.049385	\N
1450	Hellboy: House of the Living Dead	46049	\N	\N	\N	2015-04-06 21:51:50.053506	2015-04-06 21:51:50.053506	\N
1451	Afrika	46059	\N	\N	\N	2015-04-06 21:51:50.058383	2015-04-06 21:51:50.058383	\N
1452	Best of Dark Horse Presents	46136	\N	\N	\N	2015-04-06 21:51:50.062281	2015-04-06 21:51:50.062281	\N
1453	You Deserved It	46141	\N	\N	\N	2015-04-06 21:51:50.066022	2015-04-06 21:51:50.066022	\N
1454	Empowered Deluxe Edition	46210	\N	\N	\N	2015-04-06 21:51:50.069703	2015-04-06 21:51:50.069703	\N
1455	Lux & Alby Sign On And Save The Universe	46254	\N	\N	\N	2015-04-06 21:51:50.074207	2015-04-06 21:51:50.074207	\N
1456	Compleat Terminal City	46331	\N	\N	\N	2015-04-06 21:51:50.078414	2015-04-06 21:51:50.078414	\N
1457	The Complete Concrete	46435	\N	\N	\N	2015-04-06 21:51:50.086548	2015-04-06 21:51:50.086548	\N
1458	The Luck in the Head	46520	\N	\N	\N	2015-04-06 21:51:50.091091	2015-04-06 21:51:50.091091	\N
1459	The Complete K Chronicles	46521	\N	\N	\N	2015-04-06 21:51:50.096084	2015-04-06 21:51:50.096084	\N
1460	Crime Does Not Pay Archives	46578	\N	\N	\N	2015-04-06 21:51:50.099835	2015-04-06 21:51:50.099835	\N
1461	Lonely Heart: The Art of Tara McPherson	46580	\N	\N	\N	2015-04-06 21:51:50.109169	2015-04-06 21:51:50.109169	\N
1462	Lost Constellations: The Art of Tara McPherson	46581	\N	\N	\N	2015-04-06 21:51:50.113543	2015-04-06 21:51:50.113543	\N
1463	Bunny in the Moon: The Art of Tara McPherson	46582	\N	\N	\N	2015-04-06 21:51:50.117764	2015-04-06 21:51:50.117764	\N
1464	Conan: The Blood-Stained Crown And Other Stories	46614	\N	\N	\N	2015-04-06 21:51:50.121633	2015-04-06 21:51:50.121633	\N
1465	Criminal Macabre Omnibus	46615	\N	\N	\N	2015-04-06 21:51:50.125878	2015-04-06 21:51:50.125878	\N
1466	Criminal Macabre: Cell Block 666	46617	\N	\N	\N	2015-04-06 21:51:50.134441	2015-04-06 21:51:50.134441	\N
1467	Criminal Macabre: My Demon Baby	46618	\N	\N	\N	2015-04-06 21:51:50.137787	2015-04-06 21:51:50.137787	\N
1468	Criminal Macabre: Two Red Eyes	46619	\N	\N	\N	2015-04-06 21:51:50.141856	2015-04-06 21:51:50.141856	\N
1469	Dean Motter’s Mister X: The Brides Of Mister X And Other Stories	46620	\N	\N	\N	2015-04-06 21:51:50.146568	2015-04-06 21:51:50.146568	\N
1470	Devil	46621	\N	\N	\N	2015-04-06 21:51:50.150518	2015-04-06 21:51:50.150518	\N
1471	Dominion: Conflict 1 - No More Noise	46622	\N	\N	\N	2015-04-06 21:51:50.15439	2015-04-06 21:51:50.15439	\N
1472	Drakuun: Rise Of The Dragon Princess	46625	\N	\N	\N	2015-04-06 21:51:50.158492	2015-04-06 21:51:50.158492	\N
1473	Drakuun: The Revenge Of Gustav	46627	\N	\N	\N	2015-04-06 21:51:50.162552	2015-04-06 21:51:50.162552	\N
1474	Drakuun: Shadow Of The Warlock	46630	\N	\N	\N	2015-04-06 21:51:50.166467	2015-04-06 21:51:50.166467	\N
1475	Edgar Rice Burroughs' Tarzan Of The Apes	46632	\N	\N	\N	2015-04-06 21:51:50.170379	2015-04-06 21:51:50.170379	\N
1476	Edgar Rice Burroughs' Tarzan The Untamed	46633	\N	\N	\N	2015-04-06 21:51:50.174859	2015-04-06 21:51:50.174859	\N
1477	Edgar Rice Burroughs' Tarzan: Le Monstre	46635	\N	\N	\N	2015-04-06 21:51:50.179628	2015-04-06 21:51:50.179628	\N
1478	Electropolis	46638	\N	\N	\N	2015-04-06 21:51:50.184337	2015-04-06 21:51:50.184337	\N
1479	Fear Agent: Re-Ignition	46639	\N	\N	\N	2015-04-06 21:51:50.188409	2015-04-06 21:51:50.188409	\N
1480	Fear Agent: My War	46640	\N	\N	\N	2015-04-06 21:51:50.194517	2015-04-06 21:51:50.194517	\N
1481	Fear Agent: The Last Goodbye	46641	\N	\N	\N	2015-04-06 21:51:50.19886	2015-04-06 21:51:50.19886	\N
1482	Fear Agent: Hatchet Job	46642	\N	\N	\N	2015-04-06 21:51:50.202894	2015-04-06 21:51:50.202894	\N
1483	Fear Agent: I Against I	46643	\N	\N	\N	2015-04-06 21:51:50.207398	2015-04-06 21:51:50.207398	\N
1484	Godzilla: Age Of Monsters	46644	\N	\N	\N	2015-04-06 21:51:50.211738	2015-04-06 21:51:50.211738	\N
1485	Godzilla: Past, Present, And Future	46645	\N	\N	\N	2015-04-06 21:51:50.215276	2015-04-06 21:51:50.215276	\N
1486	Monstermen and Other Scary Stories	46677	\N	\N	\N	2015-04-06 21:51:50.219686	2015-04-06 21:51:50.219686	\N
1487	Sin City: Hell and Back	46713	\N	\N	\N	2015-04-06 21:51:50.223633	2015-04-06 21:51:50.223633	\N
1488	Star Wars: Lost Tribe of the Sith - Spiral	46744	\N	\N	\N	2015-04-06 21:51:50.228125	2015-04-06 21:51:50.228125	\N
1489	B.P.R.D.: Plague of Frogs	46819	\N	\N	\N	2015-04-06 21:51:50.232526	2015-04-06 21:51:50.232526	\N
1490	Eerie Presents: Hunter	46820	\N	\N	\N	2015-04-06 21:51:50.238587	2015-04-06 21:51:50.238587	\N
1491	Star Wars Omnibus: The Other Sons of Tatooine	46821	\N	\N	\N	2015-04-06 21:51:50.243815	2015-04-06 21:51:50.243815	\N
1492	Ragemoor	46822	\N	\N	\N	2015-04-06 21:51:50.248353	2015-04-06 21:51:50.248353	\N
1493	Grendel Archives	46956	\N	\N	\N	2015-04-06 21:51:50.253331	2015-04-06 21:51:50.253331	\N
1494	Grendel Tales: Devils And Deaths	46959	\N	\N	\N	2015-04-06 21:51:50.257359	2015-04-06 21:51:50.257359	\N
1495	Grendel Tales: Four Devils, One Hell	46964	\N	\N	\N	2015-04-06 21:51:50.26092	2015-04-06 21:51:50.26092	\N
1496	Grendel Tales: The Devil In Our Midst	46968	\N	\N	\N	2015-04-06 21:51:50.265362	2015-04-06 21:51:50.265362	\N
1497	Grendel: Behold The Devil	46973	\N	\N	\N	2015-04-06 21:51:50.269037	2015-04-06 21:51:50.269037	\N
1498	Grendel: Devil By The Deed	46977	\N	\N	\N	2015-04-06 21:51:50.273681	2015-04-06 21:51:50.273681	\N
1499	Grendel: Devil Child	46979	\N	\N	\N	2015-04-06 21:51:50.278079	2015-04-06 21:51:50.278079	\N
1500	Grendel: Devil Tales	46980	\N	\N	\N	2015-04-06 21:51:50.286503	2015-04-06 21:51:50.286503	\N
1501	Grendel: Devil's Reign	46982	\N	\N	\N	2015-04-06 21:51:50.290444	2015-04-06 21:51:50.290444	\N
1502	Grendel: God And The Devil	46986	\N	\N	\N	2015-04-06 21:51:50.296162	2015-04-06 21:51:50.296162	\N
1503	Grendel: Warchild	46987	\N	\N	\N	2015-04-06 21:51:50.300673	2015-04-06 21:51:50.300673	\N
1504	Groo: Nursery	46991	\N	\N	\N	2015-04-06 21:51:50.304688	2015-04-06 21:51:50.304688	\N
1505	Groo: Hell On Earth	46994	\N	\N	\N	2015-04-06 21:51:50.309426	2015-04-06 21:51:50.309426	\N
1506	Groo: The Hogs Of Horder	46995	\N	\N	\N	2015-04-06 21:51:50.313713	2015-04-06 21:51:50.313713	\N
1507	Axe Cop: Bad Guy Earth	47019	\N	\N	\N	2015-04-06 21:51:50.318212	2015-04-06 21:51:50.318212	\N
1508	Fluffy	47088	\N	\N	\N	2015-04-06 21:51:50.322112	2015-04-06 21:51:50.322112	\N
1509	B.P.R.D.: Hell on Earth - The Pickens County Horror	47103	\N	\N	\N	2015-04-06 21:51:50.326537	2015-04-06 21:51:50.326537	\N
1510	Star Wars: Knights of the Old Republic: Daze of Hate, Knights of Suffering	47294	\N	\N	\N	2015-04-06 21:51:50.335368	2015-04-06 21:51:50.335368	\N
1511	Jeremiah Omnibus	47545	\N	\N	\N	2015-04-06 21:51:50.338511	2015-04-06 21:51:50.338511	\N
1512	Criminal Macabre: Die, Die, My Darling!	47548	\N	\N	\N	2015-04-06 21:51:50.342803	2015-04-06 21:51:50.342803	\N
1513	Otto Porfiri	47578	\N	\N	\N	2015-04-06 21:51:50.347545	2015-04-06 21:51:50.347545	\N
1514	Alabaster: Wolves	47781	\N	\N	\N	2015-04-06 21:51:50.351552	2015-04-06 21:51:50.351552	\N
1515	Dollhouse: Epitaphs	47808	\N	\N	\N	2015-04-06 21:51:50.355508	2015-04-06 21:51:50.355508	\N
1516	Little Red Riding Hood	47917	\N	\N	\N	2015-04-06 21:51:50.359651	2015-04-06 21:51:50.359651	\N
1517	Tale of One Bad Rat	47959	\N	\N	\N	2015-04-06 21:51:50.363633	2015-04-06 21:51:50.363633	\N
1518	Hammer Of God: Pentathalon	48027	\N	\N	\N	2015-04-06 21:51:50.368052	2015-04-06 21:51:50.368052	\N
1519	Hellgate: London	48028	\N	\N	\N	2015-04-06 21:51:50.372112	2015-04-06 21:51:50.372112	\N
1520	James Bond 007: Serpent's Tooth	48029	\N	\N	\N	2015-04-06 21:51:50.37635	2015-04-06 21:51:50.37635	\N
1521	Kelley Jones' The Hammer: One Big Lie	48030	\N	\N	\N	2015-04-06 21:51:50.381331	2015-04-06 21:51:50.381331	\N
1522	Kull: The Shadow Kingdom	48031	\N	\N	\N	2015-04-06 21:51:50.38758	2015-04-06 21:51:50.38758	\N
1523	Kull: The Hate Witch	48032	\N	\N	\N	2015-04-06 21:51:50.392137	2015-04-06 21:51:50.392137	\N
1524	Let Me In: Crossroads	48033	\N	\N	\N	2015-04-06 21:51:50.397029	2015-04-06 21:51:50.397029	\N
1525	Living With The Dead	48034	\N	\N	\N	2015-04-06 21:51:50.400966	2015-04-06 21:51:50.400966	\N
1526	Lobster Johnson: The Iron Prometheus	48036	\N	\N	\N	2015-04-06 21:51:50.404643	2015-04-06 21:51:50.404643	\N
1527	Lost In Space	48037	\N	\N	\N	2015-04-06 21:51:50.409311	2015-04-06 21:51:50.409311	\N
1528	Magnus, Robot Fighter	48038	\N	\N	\N	2015-04-06 21:51:50.413781	2015-04-06 21:51:50.413781	\N
1529	Mister X Archives	48039	\N	\N	\N	2015-04-06 21:51:50.418344	2015-04-06 21:51:50.418344	\N
1530	Mister X: Condemned	48040	\N	\N	\N	2015-04-06 21:51:50.42205	2015-04-06 21:51:50.42205	\N
1531	Monkeyman and O'Brien	48041	\N	\N	\N	2015-04-06 21:51:50.426129	2015-04-06 21:51:50.426129	\N
1532	Nexus: Alien Justice	48045	\N	\N	\N	2015-04-06 21:51:50.43109	2015-04-06 21:51:50.43109	\N
1533	Nexus: One	48046	\N	\N	\N	2015-04-06 21:51:50.437332	2015-04-06 21:51:50.437332	\N
1534	Nexus: Two	48047	\N	\N	\N	2015-04-06 21:51:50.44134	2015-04-06 21:51:50.44134	\N
1535	Perhapanauts: Second Chances	48050	\N	\N	\N	2015-04-06 21:51:50.446519	2015-04-06 21:51:50.446519	\N
1536	Predator: Big Game	48051	\N	\N	\N	2015-04-06 21:51:50.450796	2015-04-06 21:51:50.450796	\N
1537	Predator: Cold War	48053	\N	\N	\N	2015-04-06 21:51:50.454641	2015-04-06 21:51:50.454641	\N
1538	Predator: Concrete Jungle	48055	\N	\N	\N	2015-04-06 21:51:50.459308	2015-04-06 21:51:50.459308	\N
1539	Predator: Kindred	48057	\N	\N	\N	2015-04-06 21:51:50.463628	2015-04-06 21:51:50.463628	\N
1540	Predators	48058	\N	\N	\N	2015-04-06 21:51:50.468285	2015-04-06 21:51:50.468285	\N
1541	Hellcyon	48065	\N	\N	\N	2015-04-06 21:51:50.4725	2015-04-06 21:51:50.4725	\N
1542	3 Story: Secret Files of the Giant Man	48117	\N	\N	\N	2015-04-06 21:51:50.476977	2015-04-06 21:51:50.476977	\N
1543	Falling Skies: The Battle of Fitchburg	48120	\N	\N	\N	2015-04-06 21:51:50.485411	2015-04-06 21:51:50.485411	\N
1544	Reset	48121	\N	\N	\N	2015-04-06 21:51:50.489123	2015-04-06 21:51:50.489123	\N
1545	Resident Alien	48122	\N	\N	\N	2015-04-06 21:51:50.494965	2015-04-06 21:51:50.494965	\N
1546	Abe Sapien: The Devil Does Not Jest And Other Stories	48123	\N	\N	\N	2015-04-06 21:51:50.499728	2015-04-06 21:51:50.499728	\N
1547	Fear Agent: Out of Step	48125	\N	\N	\N	2015-04-06 21:51:50.503454	2015-04-06 21:51:50.503454	\N
1548	Complete Madman	48188	\N	\N	\N	2015-04-06 21:51:50.507728	2015-04-06 21:51:50.507728	\N
1549	Star Wars: Knights of the Old Republic: Vindication	48223	\N	\N	\N	2015-04-06 21:51:50.51168	2015-04-06 21:51:50.51168	\N
1550	Cyberantics	48229	\N	\N	\N	2015-04-06 21:51:50.515946	2015-04-06 21:51:50.515946	\N
1551	Aliens Magazine	48230	\N	\N	\N	2015-04-06 21:51:50.520006	2015-04-06 21:51:50.520006	\N
1552	The Guild	48264	\N	\N	\N	2015-04-06 21:51:50.523817	2015-04-06 21:51:50.523817	\N
1553	H. G. Wells' The War of the Worlds	48294	\N	\N	\N	2015-04-06 21:51:50.528073	2015-04-06 21:51:50.528073	\N
1554	Scarlet Traces	48295	\N	\N	\N	2015-04-06 21:51:50.536794	2015-04-06 21:51:50.536794	\N
1555	Scarlet Traces: The Great Game	48296	\N	\N	\N	2015-04-06 21:51:50.540405	2015-04-06 21:51:50.540405	\N
1556	B.P.R.D.: Hell on Earth - The Transformation of J.H. O'Donnell	48307	\N	\N	\N	2015-04-06 21:51:50.546193	2015-04-06 21:51:50.546193	\N
1557	B.P.R.D.: Hell on Earth - The Devil's Engine	48311	\N	\N	\N	2015-04-06 21:51:50.550155	2015-04-06 21:51:50.550155	\N
1558	Star Wars: Invasion	48315	\N	\N	\N	2015-04-06 21:51:50.554626	2015-04-06 21:51:50.554626	\N
1559	Star Wars: Blood Ties - Boba Fett is Dead	48344	\N	\N	\N	2015-04-06 21:51:50.55904	2015-04-06 21:51:50.55904	\N
1560	Mass Effect: Homeworlds	48345	\N	\N	\N	2015-04-06 21:51:50.563055	2015-04-06 21:51:50.563055	\N
1561	The Black Pearl	48357	\N	\N	\N	2015-04-06 21:51:50.566804	2015-04-06 21:51:50.566804	\N
1562	Skeleton Key Color Special	48551	\N	\N	\N	2015-04-06 21:51:50.570309	2015-04-06 21:51:50.570309	\N
1563	Red Rocket 7	48562	\N	\N	\N	2015-04-06 21:51:50.574314	2015-04-06 21:51:50.574314	\N
1564	Rex Mundi: The Guardian of the Temple	48564	\N	\N	\N	2015-04-06 21:51:50.578972	2015-04-06 21:51:50.578972	\N
1565	Rex Mundi: The River Underground	48565	\N	\N	\N	2015-04-06 21:51:50.58347	2015-04-06 21:51:50.58347	\N
1566	Rex Mundi: The Lost Kings	48567	\N	\N	\N	2015-04-06 21:51:50.588537	2015-04-06 21:51:50.588537	\N
1567	Rex Mundi: Crown and Sword	48568	\N	\N	\N	2015-04-06 21:51:50.593863	2015-04-06 21:51:50.593863	\N
1568	Rex Mundi: The Valley at the End of the World	48569	\N	\N	\N	2015-04-06 21:51:50.59844	2015-04-06 21:51:50.59844	\N
1569	Rex Mundi: Gate of God	48570	\N	\N	\N	2015-04-06 21:51:50.602709	2015-04-06 21:51:50.602709	\N
1570	Rio At Bay	48571	\N	\N	\N	2015-04-06 21:51:50.607071	2015-04-06 21:51:50.607071	\N
1571	Roachmill: Framed	48572	\N	\N	\N	2015-04-06 21:51:50.611288	2015-04-06 21:51:50.611288	\N
1572	Roachmill: The Greatest Stories Ever Told	48573	\N	\N	\N	2015-04-06 21:51:50.615139	2015-04-06 21:51:50.615139	\N
1573	RoboCop: Prime Suspect	48574	\N	\N	\N	2015-04-06 21:51:50.619019	2015-04-06 21:51:50.619019	\N
1574	Sergio Aragonés' Groo: The Most Intelligent Man In The World	48575	\N	\N	\N	2015-04-06 21:51:50.623188	2015-04-06 21:51:50.623188	\N
1575	Sock Monkey: The Inches Incident	48576	\N	\N	\N	2015-04-06 21:51:50.628113	2015-04-06 21:51:50.628113	\N
1576	Solomon Kane: Death’s Black Riders	48577	\N	\N	\N	2015-04-06 21:51:50.633947	2015-04-06 21:51:50.633947	\N
1577	Speak Of The Devil	48580	\N	\N	\N	2015-04-06 21:51:50.638471	2015-04-06 21:51:50.638471	\N
1578	Species: Human Race	48581	\N	\N	\N	2015-04-06 21:51:50.64445	2015-04-06 21:51:50.64445	\N
1579	Spyboy Motorola Special	48583	\N	\N	\N	2015-04-06 21:51:50.649162	2015-04-06 21:51:50.649162	\N
1772	Willow	53717	\N	\N	\N	2015-04-06 21:51:51.55206	2015-04-06 21:51:51.55206	\N
1580	Star Wars Omnibus: At War With The Empire	48585	\N	\N	\N	2015-04-06 21:51:50.654003	2015-04-06 21:51:50.654003	\N
1581	Star Wars Omnibus: The Complete Saga - Episodes I Through VI	48586	\N	\N	\N	2015-04-06 21:51:50.658556	2015-04-06 21:51:50.658556	\N
1582	Tales of the Fear Agent	48589	\N	\N	\N	2015-04-06 21:51:50.66272	2015-04-06 21:51:50.66272	\N
1583	Tank Girl	48590	\N	\N	\N	2015-04-06 21:51:50.666631	2015-04-06 21:51:50.666631	\N
1584	Tarzan in The Land that Time Forgot and The Pool of Time	48592	\N	\N	\N	2015-04-06 21:51:50.670375	2015-04-06 21:51:50.670375	\N
1585	Serenity / Free Comic Book Day: Star Wars	48695	\N	\N	\N	2015-04-06 21:51:50.674325	2015-04-06 21:51:50.674325	\N
1586	Falling Skies	48711	\N	\N	\N	2015-04-06 21:51:50.678666	2015-04-06 21:51:50.678666	\N
1587	Manara Erotica	48749	\N	\N	\N	2015-04-06 21:51:50.686208	2015-04-06 21:51:50.686208	\N
1588	Tarzan vs Predator: At the Earth's Core	48786	\N	\N	\N	2015-04-06 21:51:50.689399	2015-04-06 21:51:50.689399	\N
1589	The Chronicles of King Conan	48787	\N	\N	\N	2015-04-06 21:51:50.695902	2015-04-06 21:51:50.695902	\N
1590	The Cleaners: Absent Bodies	48788	\N	\N	\N	2015-04-06 21:51:50.699929	2015-04-06 21:51:50.699929	\N
1591	The Groo Houndbook	48789	\N	\N	\N	2015-04-06 21:51:50.703634	2015-04-06 21:51:50.703634	\N
1592	The Groo: Inferno	48790	\N	\N	\N	2015-04-06 21:51:50.708018	2015-04-06 21:51:50.708018	\N
1593	The Helm	48791	\N	\N	\N	2015-04-06 21:51:50.71177	2015-04-06 21:51:50.71177	\N
1594	The Mark In America	48807	\N	\N	\N	2015-04-06 21:51:50.715658	2015-04-06 21:51:50.715658	\N
1595	The Mask Returns	48808	\N	\N	\N	2015-04-06 21:51:50.719707	2015-04-06 21:51:50.719707	\N
1596	The Mask Strikes Back	48809	\N	\N	\N	2015-04-06 21:51:50.724009	2015-04-06 21:51:50.724009	\N
1597	The Perhapanauts: First Blood	48810	\N	\N	\N	2015-04-06 21:51:50.728974	2015-04-06 21:51:50.728974	\N
1598	The Savage Sword Of Kull	48811	\N	\N	\N	2015-04-06 21:51:50.736003	2015-04-06 21:51:50.736003	\N
1599	The Scream	48812	\N	\N	\N	2015-04-06 21:51:50.739411	2015-04-06 21:51:50.739411	\N
1600	The Secret	48813	\N	\N	\N	2015-04-06 21:51:50.744876	2015-04-06 21:51:50.744876	\N
1601	The Shadow: In The Coils Of Leviathan	48814	\N	\N	\N	2015-04-06 21:51:50.749004	2015-04-06 21:51:50.749004	\N
1602	The Terminator: Endgame	48815	\N	\N	\N	2015-04-06 21:51:50.752958	2015-04-06 21:51:50.752958	\N
1603	The Terminator: Secondary Objectives	48816	\N	\N	\N	2015-04-06 21:51:50.757863	2015-04-06 21:51:50.757863	\N
1604	The Terminator: Tempest	48817	\N	\N	\N	2015-04-06 21:51:50.761905	2015-04-06 21:51:50.761905	\N
1605	Thing From Another World And Climate Of Fear	48818	\N	\N	\N	2015-04-06 21:51:50.76592	2015-04-06 21:51:50.76592	\N
1606	The Trekker Collection	48819	\N	\N	\N	2015-04-06 21:51:50.769431	2015-04-06 21:51:50.769431	\N
1607	The World Below	48820	\N	\N	\N	2015-04-06 21:51:50.773817	2015-04-06 21:51:50.773817	\N
1608	Too Much Coffee Man Omnibus	48821	\N	\N	\N	2015-04-06 21:51:50.777983	2015-04-06 21:51:50.777983	\N
1609	Triple X	48822	\N	\N	\N	2015-04-06 21:51:50.78358	2015-04-06 21:51:50.78358	\N
1610	You're Under Arrest: Lights And Siren!	48823	\N	\N	\N	2015-04-06 21:51:50.787801	2015-04-06 21:51:50.787801	\N
1611	You're Under Arrest: The Wild Ones	48824	\N	\N	\N	2015-04-06 21:51:50.792853	2015-04-06 21:51:50.792853	\N
1612	Turok, Son Of Stone: Aztlan	48825	\N	\N	\N	2015-04-06 21:51:50.797745	2015-04-06 21:51:50.797745	\N
1613	B.P.R.D.: Being Human	48826	\N	\N	\N	2015-04-06 21:51:50.802498	2015-04-06 21:51:50.802498	\N
1614	Brain Boy Archives	48827	\N	\N	\N	2015-04-06 21:51:50.806827	2015-04-06 21:51:50.806827	\N
1615	Valve Presents: The Sacrifice And Other Steam-Powered Stories	48828	\N	\N	\N	2015-04-06 21:51:50.81128	2015-04-06 21:51:50.81128	\N
1616	Star Wars: Darth Vader and the Lost Command	48829	\N	\N	\N	2015-04-06 21:51:50.815327	2015-04-06 21:51:50.815327	\N
1617	Little Lulu: The Treasure Map And Other Stories	48830	\N	\N	\N	2015-04-06 21:51:50.819313	2015-04-06 21:51:50.819313	\N
1618	Little Lulu: The Prize Winner and Other Stories	48831	\N	\N	\N	2015-04-06 21:51:50.824016	2015-04-06 21:51:50.824016	\N
1619	Little Lulu: The Cranky Giant and Other Stories	48832	\N	\N	\N	2015-04-06 21:51:50.828692	2015-04-06 21:51:50.828692	\N
1620	Samurai: Heaven & Earth	48845	\N	\N	\N	2015-04-06 21:51:50.833461	2015-04-06 21:51:50.833461	\N
1621	Free Comic Book Day and Buffy the Vampire Slayer Season 9 / The Guild: Beach'd	48851	\N	\N	\N	2015-04-06 21:51:50.837551	2015-04-06 21:51:50.837551	\N
1622	Jingle Belle	48927	\N	\N	\N	2015-04-06 21:51:50.841349	2015-04-06 21:51:50.841349	\N
1623	Completely Pip and Norton	48932	\N	\N	\N	2015-04-06 21:51:50.846693	2015-04-06 21:51:50.846693	\N
1624	Kult	48995	\N	\N	\N	2015-04-06 21:51:50.850704	2015-04-06 21:51:50.850704	\N
1625	Larry Marder’s Beanworld: Wahoolazuma!	48996	\N	\N	\N	2015-04-06 21:51:50.854878	2015-04-06 21:51:50.854878	\N
1626	Larry Marder's Beanworld: A Gift Comes!	48997	\N	\N	\N	2015-04-06 21:51:50.859517	2015-04-06 21:51:50.859517	\N
1627	Larry Marder's Beanworld: Remember Here When You Are There!	48998	\N	\N	\N	2015-04-06 21:51:50.863998	2015-04-06 21:51:50.863998	\N
1628	Doctor Solar, Man Of The Atom	48999	\N	\N	\N	2015-04-06 21:51:50.867892	2015-04-06 21:51:50.867892	\N
1629	MIND MGMT: Secret Files	49000	\N	\N	\N	2015-04-06 21:51:50.872425	2015-04-06 21:51:50.872425	\N
1630	Lone Wolf 2100: The Red File	49027	\N	\N	\N	2015-04-06 21:51:50.876049	2015-04-06 21:51:50.876049	\N
1631	Lone Wolf 2100: Shadows On Saplings	49028	\N	\N	\N	2015-04-06 21:51:50.880902	2015-04-06 21:51:50.880902	\N
1632	Lone Wolf 2100: The Language Of Chaos	49029	\N	\N	\N	2015-04-06 21:51:50.887401	2015-04-06 21:51:50.887401	\N
1633	Lone Wolf 2100: Pattern Storm	49030	\N	\N	\N	2015-04-06 21:51:50.893272	2015-04-06 21:51:50.893272	\N
1634	Reveal!	49031	\N	\N	\N	2015-04-06 21:51:50.898034	2015-04-06 21:51:50.898034	\N
1635	Conan And The Daughters Of Midora And Other Stories	49076	\N	\N	\N	2015-04-06 21:51:50.901949	2015-04-06 21:51:50.901949	\N
1636	B.P.R.D.: War on Frogs	49111	\N	\N	\N	2015-04-06 21:51:50.905687	2015-04-06 21:51:50.905687	\N
1637	Shadow Star: Starlight	49134	\N	\N	\N	2015-04-06 21:51:50.910026	2015-04-06 21:51:50.910026	\N
1638	Shadow Star: Darkness Visible	49135	\N	\N	\N	2015-04-06 21:51:50.914812	2015-04-06 21:51:50.914812	\N
1639	Shadow Star: Shadows Of The Past	49136	\N	\N	\N	2015-04-06 21:51:50.919489	2015-04-06 21:51:50.919489	\N
1640	Shadow Star: Nothing But The Truth	49137	\N	\N	\N	2015-04-06 21:51:50.924135	2015-04-06 21:51:50.924135	\N
1641	Shadow Star: A Flower's Fragrance	49138	\N	\N	\N	2015-04-06 21:51:50.929029	2015-04-06 21:51:50.929029	\N
1642	Shadow Star: What Can I Do For You Now?	49139	\N	\N	\N	2015-04-06 21:51:50.93599	2015-04-06 21:51:50.93599	\N
1643	Shadow Star: Victim's Eyes, Assailant's Hands	49140	\N	\N	\N	2015-04-06 21:51:50.939255	2015-04-06 21:51:50.939255	\N
1644	Star Wars: Tales	49163	\N	\N	\N	2015-04-06 21:51:50.944397	2015-04-06 21:51:50.944397	\N
1645	Buffy The Vampire Slayer Season 8 Library Edition	49188	\N	\N	\N	2015-04-06 21:51:50.948828	2015-04-06 21:51:50.948828	\N
1646	The Guild: Fawkes	49189	\N	\N	\N	2015-04-06 21:51:50.952901	2015-04-06 21:51:50.952901	\N
1647	Mind MGMT	49191	\N	\N	\N	2015-04-06 21:51:50.963491	2015-04-06 21:51:50.963491	\N
1648	Star Wars: Darth Vader and the Ghost Prison	49192	\N	\N	\N	2015-04-06 21:51:50.968502	2015-04-06 21:51:50.968502	\N
1649	Adventures Into the Unknown: Archives	49231	\N	\N	\N	2015-04-06 21:51:50.973357	2015-04-06 21:51:50.973357	\N
1650	The Incredible Adventures of Dog Mendonca and Pizzaboy	49232	\N	\N	\N	2015-04-06 21:51:50.977591	2015-04-06 21:51:50.977591	\N
1651	Channel Zero: The Complete Collection	49350	\N	\N	\N	2015-04-06 21:51:50.984597	2015-04-06 21:51:50.984597	\N
1652	Star Wars: Knight Errant	49388	\N	\N	\N	2015-04-06 21:51:50.98836	2015-04-06 21:51:50.98836	\N
1653	Hellboy: Darkness Calls and The Wild Hunt	49433	\N	\N	\N	2015-04-06 21:51:50.992687	2015-04-06 21:51:50.992687	\N
1654	Criminal Macabre: The Cal McDonald Casebook	49445	\N	\N	\N	2015-04-06 21:51:50.998315	2015-04-06 21:51:50.998315	\N
1655	Nickelodeon Avatar: The Last Airbender - The Lost Adventures	49506	\N	\N	\N	2015-04-06 21:51:51.002867	2015-04-06 21:51:51.002867	\N
1656	Facts in the Case of the Departure of Miss Finch	49657	\N	\N	\N	2015-04-06 21:51:51.006898	2015-04-06 21:51:51.006898	\N
1657	Dark Horse Manga Month Flip Book	49663	\N	\N	\N	2015-04-06 21:51:51.011179	2015-04-06 21:51:51.011179	\N
1658	The Massive	49666	\N	\N	\N	2015-04-06 21:51:51.015191	2015-04-06 21:51:51.015191	\N
1659	Dark Horse New Recruits	49682	\N	\N	\N	2015-04-06 21:51:51.019079	2015-04-06 21:51:51.019079	\N
1660	Star Wars: Knight Errant: Escape	49690	\N	\N	\N	2015-04-06 21:51:51.022848	2015-04-06 21:51:51.022848	\N
1661	Atlantis: The Lost Empire	49808	\N	\N	\N	2015-04-06 21:51:51.026765	2015-04-06 21:51:51.026765	\N
1662	Baltimore: Dr. Leskovar's Remedy	49853	\N	\N	\N	2015-04-06 21:51:51.034887	2015-04-06 21:51:51.034887	\N
1663	Angel & Faith: Live Through This	49932	\N	\N	\N	2015-04-06 21:51:51.038177	2015-04-06 21:51:51.038177	\N
1664	Baltimore: The Curse Bells	49935	\N	\N	\N	2015-04-06 21:51:51.043049	2015-04-06 21:51:51.043049	\N
1665	Star Wars Omnibus: Droids and Ewoks	49936	\N	\N	\N	2015-04-06 21:51:51.047783	2015-04-06 21:51:51.047783	\N
1666	Silver Streak Archives Featuring The Original Daredevil	49938	\N	\N	\N	2015-04-06 21:51:51.052127	2015-04-06 21:51:51.052127	\N
1667	B.P.R.D.: Hell on Earth - Exorcism	49939	\N	\N	\N	2015-04-06 21:51:51.057072	2015-04-06 21:51:51.057072	\N
1668	Usagi Yojimbo Volume 26: Traitors of the Earth	49940	\N	\N	\N	2015-04-06 21:51:51.061586	2015-04-06 21:51:51.061586	\N
1669	The Goon: The Deformed of Body And Devious of Mind	49941	\N	\N	\N	2015-04-06 21:51:51.066285	2015-04-06 21:51:51.066285	\N
1670	The Guild: Knights of Good	49942	\N	\N	\N	2015-04-06 21:51:51.070843	2015-04-06 21:51:51.070843	\N
1671	House of Night	49944	\N	\N	\N	2015-04-06 21:51:51.074721	2015-04-06 21:51:51.074721	\N
1672	Tales of the Beanworld	49946	\N	\N	\N	2015-04-06 21:51:51.079185	2015-04-06 21:51:51.079185	\N
1673	Fatima: The Blood Spinners	49947	\N	\N	\N	2015-04-06 21:51:51.083358	2015-04-06 21:51:51.083358	\N
1674	B.P.R.D.: Plague of Frogs	50058	\N	\N	\N	2015-04-06 21:51:51.089615	2015-04-06 21:51:51.089615	\N
1675	B.P.R.D.: The Soul of Venice and Other Stories	50079	\N	\N	\N	2015-04-06 21:51:51.095387	2015-04-06 21:51:51.095387	\N
1676	Buffy The Vampire Slayer Season Nine: Freefall	50155	\N	\N	\N	2015-04-06 21:51:51.099995	2015-04-06 21:51:51.099995	\N
1677	Freaks Of The Heartland	50156	\N	\N	\N	2015-04-06 21:51:51.105046	2015-04-06 21:51:51.105046	\N
1678	Mike Norton's Battlepug	50157	\N	\N	\N	2015-04-06 21:51:51.109207	2015-04-06 21:51:51.109207	\N
1679	Eerie	50192	\N	\N	\N	2015-04-06 21:51:51.112933	2015-04-06 21:51:51.112933	\N
1680	Darksiders II	50285	\N	\N	\N	2015-04-06 21:51:51.11739	2015-04-06 21:51:51.11739	\N
1681	Dead Memory	50325	\N	\N	\N	2015-04-06 21:51:51.121349	2015-04-06 21:51:51.121349	\N
1682	Hellboy: The Nature of the Beast and Others	50333	\N	\N	\N	2015-04-06 21:51:51.125953	2015-04-06 21:51:51.125953	\N
1683	Blacksad: Silent Hell	50368	\N	\N	\N	2015-04-06 21:51:51.135773	2015-04-06 21:51:51.135773	\N
1684	Orchid	50369	\N	\N	\N	2015-04-06 21:51:51.139677	2015-04-06 21:51:51.139677	\N
1685	Rascals in Paradise	50387	\N	\N	\N	2015-04-06 21:51:51.145396	2015-04-06 21:51:51.145396	\N
1686	The Goon Noir	50456	\N	\N	\N	2015-04-06 21:51:51.149727	2015-04-06 21:51:51.149727	\N
1687	The Goon: Fancy Pants Edition	50457	\N	\N	\N	2015-04-06 21:51:51.153716	2015-04-06 21:51:51.153716	\N
1688	Dead Memory	50544	\N	\N	\N	2015-04-06 21:51:51.158331	2015-04-06 21:51:51.158331	\N
1689	B.P.R.D.: The Black Goddess	50548	\N	\N	\N	2015-04-06 21:51:51.161955	2015-04-06 21:51:51.161955	\N
1690	B.P.R.D.: Killing Ground	50549	\N	\N	\N	2015-04-06 21:51:51.166208	2015-04-06 21:51:51.166208	\N
1691	B.P.R.D.: Garden of Souls	50550	\N	\N	\N	2015-04-06 21:51:51.170009	2015-04-06 21:51:51.170009	\N
1692	B.P.R.D.: The Universal Machine	50551	\N	\N	\N	2015-04-06 21:51:51.174517	2015-04-06 21:51:51.174517	\N
1693	B.P.R.D.: The Black Flame	50552	\N	\N	\N	2015-04-06 21:51:51.184016	2015-04-06 21:51:51.184016	\N
1694	B.P.R.D.: 1946	50553	\N	\N	\N	2015-04-06 21:51:51.187329	2015-04-06 21:51:51.187329	\N
1695	B.P.R.D.: The Warning	50555	\N	\N	\N	2015-04-06 21:51:51.190819	2015-04-06 21:51:51.190819	\N
1696	B.P.R.D.: 1947	50558	\N	\N	\N	2015-04-06 21:51:51.196724	2015-04-06 21:51:51.196724	\N
1697	What's Michael?: The Ideal Cat	50566	\N	\N	\N	2015-04-06 21:51:51.200762	2015-04-06 21:51:51.200762	\N
1698	Concrete: Three Uneasy Pieces	50580	\N	\N	\N	2015-04-06 21:51:51.205469	2015-04-06 21:51:51.205469	\N
1699	Kull: The Cat And The Skull	50757	\N	\N	\N	2015-04-06 21:51:51.209389	2015-04-06 21:51:51.209389	\N
1700	Axe Cop: President of the World	50758	\N	\N	\N	2015-04-06 21:51:51.213589	2015-04-06 21:51:51.213589	\N
1701	Star Wars: Darth Maul - Death Sentence	50759	\N	\N	\N	2015-04-06 21:51:51.218175	2015-04-06 21:51:51.218175	\N
1702	Green Lantern vs. Aliens	50801	\N	\N	\N	2015-04-06 21:51:51.222945	2015-04-06 21:51:51.222945	\N
1703	Star Wars: X-Wing Rogue Squadron special	50911	\N	\N	\N	2015-04-06 21:51:51.227485	2015-04-06 21:51:51.227485	\N
1704	Dagar the Invincible	51043	\N	\N	\N	2015-04-06 21:51:51.235757	2015-04-06 21:51:51.235757	\N
1705	Billi 99	51045	\N	\N	\N	2015-04-06 21:51:51.239433	2015-04-06 21:51:51.239433	\N
1706	Blood Ties	51076	\N	\N	\N	2015-04-06 21:51:51.244472	2015-04-06 21:51:51.244472	\N
1707	Total Carnage	51102	\N	\N	\N	2015-04-06 21:51:51.24945	2015-04-06 21:51:51.24945	\N
1708	The Creep	51117	\N	\N	\N	2015-04-06 21:51:51.253753	2015-04-06 21:51:51.253753	\N
1709	The Dirty Pair: Fatal But Not Serious	51143	\N	\N	\N	2015-04-06 21:51:51.258216	2015-04-06 21:51:51.258216	\N
1710	The Dirty Pair: Run from the Future	51144	\N	\N	\N	2015-04-06 21:51:51.262091	2015-04-06 21:51:51.262091	\N
1711	The Hammer: Uncle Alex	51270	\N	\N	\N	2015-04-06 21:51:51.265834	2015-04-06 21:51:51.265834	\N
1712	Star Wars: Darth Vader and the Ghost Prison	51320	\N	\N	\N	2015-04-06 21:51:51.269833	2015-04-06 21:51:51.269833	\N
1713	Spike	51382	\N	\N	\N	2015-04-06 21:51:51.275172	2015-04-06 21:51:51.275172	\N
1714	Occult Files of Doctor Spektor Archives	51448	\N	\N	\N	2015-04-06 21:51:51.280423	2015-04-06 21:51:51.280423	\N
1715	Harvey Comics Treasury	51460	\N	\N	\N	2015-04-06 21:51:51.287273	2015-04-06 21:51:51.287273	\N
1716	Outer Orbit	51502	\N	\N	\N	2015-04-06 21:51:51.292029	2015-04-06 21:51:51.292029	\N
1717	Dollhouse Epitaphs	51604	\N	\N	\N	2015-04-06 21:51:51.29752	2015-04-06 21:51:51.29752	\N
1718	Dayan's Birthday	51611	\N	\N	\N	2015-04-06 21:51:51.301709	2015-04-06 21:51:51.301709	\N
1719	Star Wars Omnibus: Clone Wars	51619	\N	\N	\N	2015-04-06 21:51:51.306411	2015-04-06 21:51:51.306411	\N
1720	Riven	51620	\N	\N	\N	2015-04-06 21:51:51.310511	2015-04-06 21:51:51.310511	\N
1721	Rex Mundi Omnibus	51621	\N	\N	\N	2015-04-06 21:51:51.31466	2015-04-06 21:51:51.31466	\N
1722	B.P.R.D.: Hell on Earth - The Return of the Master	51622	\N	\N	\N	2015-04-06 21:51:51.318588	2015-04-06 21:51:51.318588	\N
1723	Deadface: Immortality Isn't Forever	51890	\N	\N	\N	2015-04-06 21:51:51.323553	2015-04-06 21:51:51.323553	\N
1724	Lobster Johnson: Caput Mortuum	52030	\N	\N	\N	2015-04-06 21:51:51.328203	2015-04-06 21:51:51.328203	\N
1725	Bucko	52050	\N	\N	\N	2015-04-06 21:51:51.336316	2015-04-06 21:51:51.336316	\N
1726	Star Wars: Crimson Empire III - Empire Lost	52051	\N	\N	\N	2015-04-06 21:51:51.340626	2015-04-06 21:51:51.340626	\N
1727	Star Wars: The Crimson Empire Saga	52052	\N	\N	\N	2015-04-06 21:51:51.346364	2015-04-06 21:51:51.346364	\N
1728	Cross	52195	\N	\N	\N	2015-04-06 21:51:51.350318	2015-04-06 21:51:51.350318	\N
1729	Gary Gianni's The MonsterMen	52196	\N	\N	\N	2015-04-06 21:51:51.355057	2015-04-06 21:51:51.355057	\N
1730	Hell	52198	\N	\N	\N	2015-04-06 21:51:51.359792	2015-04-06 21:51:51.359792	\N
1731	Ryan Woodward's The Invincible Ed	52205	\N	\N	\N	2015-04-06 21:51:51.363505	2015-04-06 21:51:51.363505	\N
1732	KISS	52206	\N	\N	\N	2015-04-06 21:51:51.367854	2015-04-06 21:51:51.367854	\N
1733	The Legend of Mother Sarah	52207	\N	\N	\N	2015-04-06 21:51:51.372006	2015-04-06 21:51:51.372006	\N
1734	The Legend of Mother Sarah: Tunnel Town	52208	\N	\N	\N	2015-04-06 21:51:51.376477	2015-04-06 21:51:51.376477	\N
1735	Outlaw 7	52209	\N	\N	\N	2015-04-06 21:51:51.381344	2015-04-06 21:51:51.381344	\N
1736	Planet of the Apes: The Human War	52210	\N	\N	\N	2015-04-06 21:51:51.386248	2015-04-06 21:51:51.386248	\N
1737	Lone	52211	\N	\N	\N	2015-04-06 21:51:51.390587	2015-04-06 21:51:51.390587	\N
1738	Pubo	52212	\N	\N	\N	2015-04-06 21:51:51.396134	2015-04-06 21:51:51.396134	\N
1739	Conan and the Jewels of Gwahlur	52322	\N	\N	\N	2015-04-06 21:51:51.401221	2015-04-06 21:51:51.401221	\N
1740	EC Archives: Two-Fisted Tales	52351	\N	\N	\N	2015-04-06 21:51:51.405129	2015-04-06 21:51:51.405129	\N
1741	Evil Dead	52513	\N	\N	\N	2015-04-06 21:51:51.409452	2015-04-06 21:51:51.409452	\N
1742	A Christmas Carol: The Night That Changed The Life Of Eliza Scrooge	52619	\N	\N	\N	2015-04-06 21:51:51.41346	2015-04-06 21:51:51.41346	\N
1743	Axe Cop Mini Comic	52657	\N	\N	\N	2015-04-06 21:51:51.417509	2015-04-06 21:51:51.417509	\N
1744	Dark Matter	52706	\N	\N	\N	2015-04-06 21:51:51.421503	2015-04-06 21:51:51.421503	\N
1745	Finder: Talisman	52707	\N	\N	\N	2015-04-06 21:51:51.426328	2015-04-06 21:51:51.426328	\N
1746	The Immortal: Demon In The Blood	52708	\N	\N	\N	2015-04-06 21:51:51.430989	2015-04-06 21:51:51.430989	\N
1747	Hellboy: The Vampire of Prague and Dr. Carp's Experiment	52749	\N	\N	\N	2015-04-06 21:51:51.435349	2015-04-06 21:51:51.435349	\N
1748	Once Upon A Time Machine	52838	\N	\N	\N	2015-04-06 21:51:51.438724	2015-04-06 21:51:51.438724	\N
1749	B.P.R.D.: 1948	53098	\N	\N	\N	2015-04-06 21:51:51.443254	2015-04-06 21:51:51.443254	\N
1750	Billy The Kid’s Old Timey Oddities And The Orm Of Loch Ness	53099	\N	\N	\N	2015-04-06 21:51:51.447842	2015-04-06 21:51:51.447842	\N
1751	Ex Sanguine	53100	\N	\N	\N	2015-04-06 21:51:51.451566	2015-04-06 21:51:51.451566	\N
1752	Star Wars: Agent of the Empire - Hard Targets	53101	\N	\N	\N	2015-04-06 21:51:51.455613	2015-04-06 21:51:51.455613	\N
1753	The Darkness Behind	53125	\N	\N	\N	2015-04-06 21:51:51.459657	2015-04-06 21:51:51.459657	\N
1754	The Massive	53171	\N	\N	\N	2015-04-06 21:51:51.463925	2015-04-06 21:51:51.463925	\N
1755	The Devil's Footprints	53240	\N	\N	\N	2015-04-06 21:51:51.46868	2015-04-06 21:51:51.46868	\N
1756	The Dirty Pair: Biohazards	53279	\N	\N	\N	2015-04-06 21:51:51.473609	2015-04-06 21:51:51.473609	\N
1757	Hellhounds: Panzer Cops	53296	\N	\N	\N	2015-04-06 21:51:51.478528	2015-04-06 21:51:51.478528	\N
1758	The Shaolin Cowboy Adventure Magazine	53334	\N	\N	\N	2015-04-06 21:51:51.486352	2015-04-06 21:51:51.486352	\N
1759	Star Wars: Agent Of The Empire - Iron Eclipse	53335	\N	\N	\N	2015-04-06 21:51:51.490125	2015-04-06 21:51:51.490125	\N
1760	Star Wars: Dark Times	53336	\N	\N	\N	2015-04-06 21:51:51.495813	2015-04-06 21:51:51.495813	\N
1761	Star Wars: Knights Of The Old Republic - War	53337	\N	\N	\N	2015-04-06 21:51:51.499991	2015-04-06 21:51:51.499991	\N
1762	The Untold Tales Of Dog Mendonca & Pizzaboy	53338	\N	\N	\N	2015-04-06 21:51:51.503709	2015-04-06 21:51:51.503709	\N
1763	Star Wars: Knights of the Old Republic: Dueling Ambitions	53551	\N	\N	\N	2015-04-06 21:51:51.508195	2015-04-06 21:51:51.508195	\N
1764	Star Wars: Knights of the Old Republic: Destroyer	53553	\N	\N	\N	2015-04-06 21:51:51.511907	2015-04-06 21:51:51.511907	\N
1765	Star Wars: Knights of the Old Republic: Demon	53554	\N	\N	\N	2015-04-06 21:51:51.516466	2015-04-06 21:51:51.516466	\N
1766	Star Wars: General Grievous	53596	\N	\N	\N	2015-04-06 21:51:51.520145	2015-04-06 21:51:51.520145	\N
1767	Dark Horse Horror Sampler	53597	\N	\N	\N	2015-04-06 21:51:51.524369	2015-04-06 21:51:51.524369	\N
1768	Star Wars: Blood Ties - Jango  and Boba Fett	53598	\N	\N	\N	2015-04-06 21:51:51.529042	2015-04-06 21:51:51.529042	\N
1769	Conan: The Phantoms of the Black Coast	53601	\N	\N	\N	2015-04-06 21:51:51.537857	2015-04-06 21:51:51.537857	\N
1770	The Scorpion King	53637	\N	\N	\N	2015-04-06 21:51:51.542274	2015-04-06 21:51:51.542274	\N
1771	47 Ronin	53716	\N	\N	\N	2015-04-06 21:51:51.547049	2015-04-06 21:51:51.547049	\N
1773	Colder	53718	\N	\N	\N	2015-04-06 21:51:51.555762	2015-04-06 21:51:51.555762	\N
1774	Criminal Macabre: They Fight By Night	53719	\N	\N	\N	2015-04-06 21:51:51.559798	2015-04-06 21:51:51.559798	\N
1775	Mass Effect: Homeworlds	53720	\N	\N	\N	2015-04-06 21:51:51.563598	2015-04-06 21:51:51.563598	\N
1776	Ragemoor	53721	\N	\N	\N	2015-04-06 21:51:51.568121	2015-04-06 21:51:51.568121	\N
1777	Mass Effect: Blasto: Eternity is Forever	53832	\N	\N	\N	2015-04-06 21:51:51.571988	2015-04-06 21:51:51.571988	\N
1778	Tarzan: The Once And Future Tarzan	53924	\N	\N	\N	2015-04-06 21:51:51.576298	2015-04-06 21:51:51.576298	\N
1779	Lobster Johnson: The Burning Hand	53925	\N	\N	\N	2015-04-06 21:51:51.581125	2015-04-06 21:51:51.581125	\N
1780	The Strain	53926	\N	\N	\N	2015-04-06 21:51:51.586119	2015-04-06 21:51:51.586119	\N
1781	Max Overload	53974	\N	\N	\N	2015-04-06 21:51:51.591709	2015-04-06 21:51:51.591709	\N
1782	Angel & Faith: Daddy Issues	54120	\N	\N	\N	2015-04-06 21:51:51.597212	2015-04-06 21:51:51.597212	\N
1783	Baltimore: The Play	54121	\N	\N	\N	2015-04-06 21:51:51.602055	2015-04-06 21:51:51.602055	\N
1784	Edgar Allan Poe’s The Conqueror Worm	54122	\N	\N	\N	2015-04-06 21:51:51.606322	2015-04-06 21:51:51.606322	\N
1785	Marked Man	54123	\N	\N	\N	2015-04-06 21:51:51.610771	2015-04-06 21:51:51.610771	\N
1786	Nexus Omnibus	54124	\N	\N	\N	2015-04-06 21:51:51.614987	2015-04-06 21:51:51.614987	\N
1787	Number 13	54125	\N	\N	\N	2015-04-06 21:51:51.619213	2015-04-06 21:51:51.619213	\N
1788	Aliens: Rogue	54238	\N	\N	\N	2015-04-06 21:51:51.623145	2015-04-06 21:51:51.623145	\N
1789	Husbands	54299	\N	\N	\N	2015-04-06 21:51:51.627601	2015-04-06 21:51:51.627601	\N
1790	Forbidden Worlds Archives	54307	\N	\N	\N	2015-04-06 21:51:51.632637	2015-04-06 21:51:51.632637	\N
1791	R.I.P.D.: City of the Damned	54308	\N	\N	\N	2015-04-06 21:51:51.637869	2015-04-06 21:51:51.637869	\N
1792	Star Wars: Dawn Of The Jedi - The Prisoner Of Bogan	54309	\N	\N	\N	2015-04-06 21:51:51.642548	2015-04-06 21:51:51.642548	\N
1793	B.P.R.D.: Hell on Earth - The Devil's Engine & The Long Death	54459	\N	\N	\N	2015-04-06 21:51:51.647377	2015-04-06 21:51:51.647377	\N
1794	Buffy The Vampire Slayer Season Nine: On Your Own	54460	\N	\N	\N	2015-04-06 21:51:51.651265	2015-04-06 21:51:51.651265	\N
1795	Hellboy in Hell	54461	\N	\N	\N	2015-04-06 21:51:51.65539	2015-04-06 21:51:51.65539	\N
1796	House of Fun	54462	\N	\N	\N	2015-04-06 21:51:51.659469	2015-04-06 21:51:51.659469	\N
1797	Star Wars: Purge - The Tyrant’s Fist	54463	\N	\N	\N	2015-04-06 21:51:51.663726	2015-04-06 21:51:51.663726	\N
1798	Buddy Cops	54532	\N	\N	\N	2015-04-06 21:51:51.667999	2015-04-06 21:51:51.667999	\N
1799	Frank Miller's Sin City: A Dame to Kill For	54639	\N	\N	\N	2015-04-06 21:51:51.671692	2015-04-06 21:51:51.671692	\N
1800	Frank Miller's Sin City: The Big Fat Kill	54640	\N	\N	\N	2015-04-06 21:51:51.677005	2015-04-06 21:51:51.677005	\N
1801	The Adventures Of Dr. McNinja: Time Fist	54652	\N	\N	\N	2015-04-06 21:51:51.685906	2015-04-06 21:51:51.685906	\N
1802	Criminal Macabre: Final Night - The 30 Days of Night Crossover	54653	\N	\N	\N	2015-04-06 21:51:51.689289	2015-04-06 21:51:51.689289	\N
1803	Fear Agent Library	54654	\N	\N	\N	2015-04-06 21:51:51.694673	2015-04-06 21:51:51.694673	\N
1804	Grandville Bête Noire	54655	\N	\N	\N	2015-04-06 21:51:51.699331	2015-04-06 21:51:51.699331	\N
1805	Star Wars: Dawn Of The Jedi - Force Storm	54656	\N	\N	\N	2015-04-06 21:51:51.703323	2015-04-06 21:51:51.703323	\N
1806	Tarzan: The Russ Manning Years	54657	\N	\N	\N	2015-04-06 21:51:51.708218	2015-04-06 21:51:51.708218	\N
1807	To Hell You Ride	54658	\N	\N	\N	2015-04-06 21:51:51.712392	2015-04-06 21:51:51.712392	\N
1808	Sledgehammer 44	54694	\N	\N	\N	2015-04-06 21:51:51.716438	2015-04-06 21:51:51.716438	\N
1809	Aliens: Stronghold	54718	\N	\N	\N	2015-04-06 21:51:51.720793	2015-04-06 21:51:51.720793	\N
1810	Tokyo Babylon	54830	\N	\N	\N	2015-04-06 21:51:51.724999	2015-04-06 21:51:51.724999	\N
1811	The Black Beetle	54853	\N	\N	\N	2015-04-06 21:51:51.729836	2015-04-06 21:51:51.729836	\N
1812	Darksiders II: Death’s Door	54854	\N	\N	\N	2015-04-06 21:51:51.736834	2015-04-06 21:51:51.736834	\N
1813	Rotten Apple	54855	\N	\N	\N	2015-04-06 21:51:51.740539	2015-04-06 21:51:51.740539	\N
1814	Star Slammers Special	55010	\N	\N	\N	2015-04-06 21:51:51.746049	2015-04-06 21:51:51.746049	\N
1815	Exile to Babylon	55050	\N	\N	\N	2015-04-06 21:51:51.750663	2015-04-06 21:51:51.750663	\N
1816	Eerie Presents El Cid	55062	\N	\N	\N	2015-04-06 21:51:51.754875	2015-04-06 21:51:51.754875	\N
1817	The Deep Sea Preview	55354	\N	\N	\N	2015-04-06 21:51:51.759307	2015-04-06 21:51:51.759307	\N
1818	Grendel: The Devil Inside	55366	\N	\N	\N	2015-04-06 21:51:51.763566	2015-04-06 21:51:51.763566	\N
1819	Predator: Race War	55457	\N	\N	\N	2015-04-06 21:51:51.767575	2015-04-06 21:51:51.767575	\N
1820	Star Wars	55553	\N	\N	\N	2015-04-06 21:51:51.771558	2015-04-06 21:51:51.771558	\N
1821	B.P.R.D.: Hell on Earth - The Abyss of Time	55555	\N	\N	\N	2015-04-06 21:51:51.775801	2015-04-06 21:51:51.775801	\N
1822	Cherubs!	55556	\N	\N	\N	2015-04-06 21:51:51.78042	2015-04-06 21:51:51.78042	\N
1823	Creepy Comics	55557	\N	\N	\N	2015-04-06 21:51:51.787443	2015-04-06 21:51:51.787443	\N
1824	Reset	55558	\N	\N	\N	2015-04-06 21:51:51.792361	2015-04-06 21:51:51.792361	\N
1825	Robert E. Howard’s Savage Sword	55559	\N	\N	\N	2015-04-06 21:51:51.797794	2015-04-06 21:51:51.797794	\N
1826	Conan: Queen of the Black Coast	55560	\N	\N	\N	2015-04-06 21:51:51.802223	2015-04-06 21:51:51.802223	\N
1827	Godzilla	55609	\N	\N	\N	2015-04-06 21:51:51.807306	2015-04-06 21:51:51.807306	\N
1828	The Nevermen	55692	\N	\N	\N	2015-04-06 21:51:51.812031	2015-04-06 21:51:51.812031	\N
1829	1 For $1: Mind MGMT	55792	\N	\N	\N	2015-04-06 21:51:51.816361	2015-04-06 21:51:51.816361	\N
1830	The Art of Alice: Madness Returns	55986	\N	\N	\N	2015-04-06 21:51:51.819953	2015-04-06 21:51:51.819953	\N
1831	The Art of Matt Wagner's Grendel	55991	\N	\N	\N	2015-04-06 21:51:51.824462	2015-04-06 21:51:51.824462	\N
1832	The New Frontier	56042	\N	\N	\N	2015-04-06 21:51:51.828687	2015-04-06 21:51:51.828687	\N
1833	The Answer!	56113	\N	\N	\N	2015-04-06 21:51:51.83895	2015-04-06 21:51:51.83895	\N
1834	Buffyverse Sampler	56114	\N	\N	\N	2015-04-06 21:51:51.845105	2015-04-06 21:51:51.845105	\N
1835	Deva Zan	56115	\N	\N	\N	2015-04-06 21:51:51.849897	2015-04-06 21:51:51.849897	\N
1836	Star Wars: Blood Ties: Boba Fett Is Dead	56116	\N	\N	\N	2015-04-06 21:51:51.854394	2015-04-06 21:51:51.854394	\N
1837	Buffy the Vampire Slayer Classic	56135	\N	\N	\N	2015-04-06 21:51:51.858425	2015-04-06 21:51:51.858425	\N
1838	Fort: Prophet of the Unexplained	56157	\N	\N	\N	2015-04-06 21:51:51.862373	2015-04-06 21:51:51.862373	\N
1839	Oddly Compelling Art of Denis Kitchen	56365	\N	\N	\N	2015-04-06 21:51:51.865774	2015-04-06 21:51:51.865774	\N
1840	Dragon Age: Those Who Speak	56394	\N	\N	\N	2015-04-06 21:51:51.870266	2015-04-06 21:51:51.870266	\N
1841	Emily and the Strangers	56395	\N	\N	\N	2015-04-06 21:51:51.874534	2015-04-06 21:51:51.874534	\N
1842	The Legend of Zelda: Hyrule Historia	56396	\N	\N	\N	2015-04-06 21:51:51.878968	2015-04-06 21:51:51.878968	\N
1843	Star Wars Omnibus: Infinities	56397	\N	\N	\N	2015-04-06 21:51:51.886643	2015-04-06 21:51:51.886643	\N
1844	Age of Reptiles: The Hunt	56491	\N	\N	\N	2015-04-06 21:51:51.890542	2015-04-06 21:51:51.890542	\N
1845	Age of Reptiles: Tribal Warfare	56492	\N	\N	\N	2015-04-06 21:51:51.896391	2015-04-06 21:51:51.896391	\N
1846	Aliens: Hive	56493	\N	\N	\N	2015-04-06 21:51:51.901768	2015-04-06 21:51:51.901768	\N
1847	Nextworld	56531	\N	\N	\N	2015-04-06 21:51:51.905726	2015-04-06 21:51:51.905726	\N
1848	Drawing Down the Moon - The Art of Charles Vess	56615	\N	\N	\N	2015-04-06 21:51:51.910293	2015-04-06 21:51:51.910293	\N
1849	The Thing (From Another World)	56625	\N	\N	\N	2015-04-06 21:51:51.914081	2015-04-06 21:51:51.914081	\N
1850	Dark Horse Insider	56627	\N	\N	\N	2015-04-06 21:51:51.917967	2015-04-06 21:51:51.917967	\N
1851	Star Wars: The Clone Wars - Defenders of the Lost Temple	56637	\N	\N	\N	2015-04-06 21:51:51.92207	2015-04-06 21:51:51.92207	\N
1852	Sergio Aragonés Louder than Words	56642	\N	\N	\N	2015-04-06 21:51:51.926316	2015-04-06 21:51:51.926316	\N
1853	Sergio Aragonés Boogeyman	56643	\N	\N	\N	2015-04-06 21:51:51.934238	2015-04-06 21:51:51.934238	\N
1854	Basil Wolverton's Planet of Terror	56827	\N	\N	\N	2015-04-06 21:51:51.938544	2015-04-06 21:51:51.938544	\N
1855	The Fog	56832	\N	\N	\N	2015-04-06 21:51:51.94385	2015-04-06 21:51:51.94385	\N
1856	Alice in Wonderland	56873	\N	\N	\N	2015-04-06 21:51:51.948017	2015-04-06 21:51:51.948017	\N
1857	King Conan: The Phoenix on the Sword	56874	\N	\N	\N	2015-04-06 21:51:51.952386	2015-04-06 21:51:51.952386	\N
1858	Star Wars: Dark Times - Fire Carrier	56875	\N	\N	\N	2015-04-06 21:51:51.956845	2015-04-06 21:51:51.956845	\N
1859	Dark Horse Super Sampler	57001	\N	\N	\N	2015-04-06 21:51:51.960561	2015-04-06 21:51:51.960561	\N
1860	Mass Effect: Evolution	57040	\N	\N	\N	2015-04-06 21:51:51.964275	2015-04-06 21:51:51.964275	\N
1861	Mass Effect: Invasion	57041	\N	\N	\N	2015-04-06 21:51:51.969089	2015-04-06 21:51:51.969089	\N
1862	Alabaster: Wolves	57173	\N	\N	\N	2015-04-06 21:51:51.973474	2015-04-06 21:51:51.973474	\N
1863	The Curse of Dracula	57174	\N	\N	\N	2015-04-06 21:51:51.978581	2015-04-06 21:51:51.978581	\N
1864	Hiroaki Samura's Emerald and Other Stories	57175	\N	\N	\N	2015-04-06 21:51:51.982744	2015-04-06 21:51:51.982744	\N
1865	The Hound Of The Baskervilles	57176	\N	\N	\N	2015-04-06 21:51:51.988818	2015-04-06 21:51:51.988818	\N
1866	The Adventures Of Superhero Girl	57282	\N	\N	\N	2015-04-06 21:51:51.994801	2015-04-06 21:51:51.994801	\N
1867	Aliens: Theory of Alien Propagation/The Alien	57343	\N	\N	\N	2015-04-06 21:51:51.999729	2015-04-06 21:51:51.999729	\N
1868	Creepy Presents Richard Corben	57353	\N	\N	\N	2015-04-06 21:51:52.004277	2015-04-06 21:51:52.004277	\N
1869	Star Wars: The Constancia Affair - Kenner Special	57358	\N	\N	\N	2015-04-06 21:51:52.009059	2015-04-06 21:51:52.009059	\N
1870	Chimichanga	57393	\N	\N	\N	2015-04-06 21:51:52.013682	2015-04-06 21:51:52.013682	\N
1871	X	57406	\N	\N	\N	2015-04-06 21:51:52.017845	2015-04-06 21:51:52.017845	\N
1872	Star Wars: Dark Empire II	57483	\N	\N	\N	2015-04-06 21:51:52.02123	2015-04-06 21:51:52.02123	\N
1873	Avatar: The Last Airbender - The Promise Library Edition	57529	\N	\N	\N	2015-04-06 21:51:52.025114	2015-04-06 21:51:52.025114	\N
1874	Baltimore: The Widow and the Tank	57530	\N	\N	\N	2015-04-06 21:51:52.029326	2015-04-06 21:51:52.029326	\N
1875	The Goon: Them That Raised Us Lament	57531	\N	\N	\N	2015-04-06 21:51:52.037522	2015-04-06 21:51:52.037522	\N
1876	HelmetGirls: The Art of Camilla d’Errico	57534	\N	\N	\N	2015-04-06 21:51:52.042061	2015-04-06 21:51:52.042061	\N
1877	Neon Genesis Evangelion: Comic Tribute	57536	\N	\N	\N	2015-04-06 21:51:52.046948	2015-04-06 21:51:52.046948	\N
1878	Resident Alien: Welcome to Earth	57537	\N	\N	\N	2015-04-06 21:51:52.051006	2015-04-06 21:51:52.051006	\N
1879	Amala's Blade	57957	\N	\N	\N	2015-04-06 21:51:52.055156	2015-04-06 21:51:52.055156	\N
1880	Planet of Beer	57998	\N	\N	\N	2015-04-06 21:51:52.059815	2015-04-06 21:51:52.059815	\N
1881	2 Past Midnight	58054	\N	\N	\N	2015-04-06 21:51:52.063947	2015-04-06 21:51:52.063947	\N
1882	Hellboy Christmas Underground	58277	\N	\N	\N	2015-04-06 21:51:52.067846	2015-04-06 21:51:52.067846	\N
1883	The Goon: One for One	58278	\N	\N	\N	2015-04-06 21:51:52.072598	2015-04-06 21:51:52.072598	\N
1884	Blood-C	58430	\N	\N	\N	2015-04-06 21:51:52.077193	2015-04-06 21:51:52.077193	\N
1885	Tomb Raider: The Beginning	58480	\N	\N	\N	2015-04-06 21:51:52.085889	2015-04-06 21:51:52.085889	\N
1886	Sergio Aragonés Groo: Death and Taxes	58511	\N	\N	\N	2015-04-06 21:51:52.089257	2015-04-06 21:51:52.089257	\N
1887	Star Wars: Rebellion - Small Victories	58516	\N	\N	\N	2015-04-06 21:51:52.095057	2015-04-06 21:51:52.095057	\N
1888	Star Wars: Rebellion - My Brother, My Enemy	58517	\N	\N	\N	2015-04-06 21:51:52.099225	2015-04-06 21:51:52.099225	\N
1889	Star Wars: Rebellion - The Ahakista Gambit	58519	\N	\N	\N	2015-04-06 21:51:52.103143	2015-04-06 21:51:52.103143	\N
1890	Crush	58674	\N	\N	\N	2015-04-06 21:51:52.107168	2015-04-06 21:51:52.107168	\N
1891	Outer Orbit	58691	\N	\N	\N	2015-04-06 21:51:52.111133	2015-04-06 21:51:52.111133	\N
1892	Buffy the Vampire Slayer: Uninvited Guests	58908	\N	\N	\N	2015-04-06 21:51:52.115176	2015-04-06 21:51:52.115176	\N
1893	House of Gold & Bones	58938	\N	\N	\N	2015-04-06 21:51:52.119421	2015-04-06 21:51:52.119421	\N
1894	De: Tales	58971	\N	\N	\N	2015-04-06 21:51:52.123576	2015-04-06 21:51:52.123576	\N
1895	The Dirty Pair: A Plague of Angels	58980	\N	\N	\N	2015-04-06 21:51:52.127576	2015-04-06 21:51:52.127576	\N
1896	The Dirty Pair: Sim Hell	58981	\N	\N	\N	2015-04-06 21:51:52.136398	2015-04-06 21:51:52.136398	\N
1897	Adventures of the Mask Toys R Us Special Edition	59118	\N	\N	\N	2015-04-06 21:51:52.140112	2015-04-06 21:51:52.140112	\N
1898	American Splendor: ComicCon Comics	59148	\N	\N	\N	2015-04-06 21:51:52.145709	2015-04-06 21:51:52.145709	\N
1899	American Splendor: Music Comics	59151	\N	\N	\N	2015-04-06 21:51:52.150084	2015-04-06 21:51:52.150084	\N
1900	American Splendor: Odds and Ends	59152	\N	\N	\N	2015-04-06 21:51:52.15431	2015-04-06 21:51:52.15431	\N
1901	Nickelodeon Avatar: The Last Airbender - The Search	59182	\N	\N	\N	2015-04-06 21:51:52.158833	2015-04-06 21:51:52.158833	\N
1902	B.P.R.D.: Hell On Earth - A Cold Day In Hell	59183	\N	\N	\N	2015-04-06 21:51:52.162722	2015-04-06 21:51:52.162722	\N
1903	The Massive: Black Pacific	59184	\N	\N	\N	2015-04-06 21:51:52.167139	2015-04-06 21:51:52.167139	\N
1904	Star Wars: Legacy	59185	\N	\N	\N	2015-04-06 21:51:52.171393	2015-04-06 21:51:52.171393	\N
1905	The Unauthorized Tarzan	59186	\N	\N	\N	2015-04-06 21:51:52.176614	2015-04-06 21:51:52.176614	\N
1906	Wild Rover and The Sacrifice	59187	\N	\N	\N	2015-04-06 21:51:52.181378	2015-04-06 21:51:52.181378	\N
1907	The Last of Us Preview	59303	\N	\N	\N	2015-04-06 21:51:52.18708	2015-04-06 21:51:52.18708	\N
1908	The Art of BioShock Infinite	59359	\N	\N	\N	2015-04-06 21:51:52.191504	2015-04-06 21:51:52.191504	\N
1909	B.P.R.D.: Vampire	59360	\N	\N	\N	2015-04-06 21:51:52.197644	2015-04-06 21:51:52.197644	\N
1910	Dragon Age: Until We Sleep	59361	\N	\N	\N	2015-04-06 21:51:52.201813	2015-04-06 21:51:52.201813	\N
1911	Husbands	59362	\N	\N	\N	2015-04-06 21:51:52.205673	2015-04-06 21:51:52.205673	\N
1912	Mister X: Hard Candy	59363	\N	\N	\N	2015-04-06 21:51:52.209994	2015-04-06 21:51:52.209994	\N
1913	Metro: Last Light - The Gospel According to Artyom	59392	\N	\N	\N	2015-04-06 21:51:52.213857	2015-04-06 21:51:52.213857	\N
1914	Aliens vs. Predator: The Web	59399	\N	\N	\N	2015-04-06 21:51:52.21827	2015-04-06 21:51:52.21827	\N
1915	Aliens: Apocalypse - The Destroying Angels	59445	\N	\N	\N	2015-04-06 21:51:52.222625	2015-04-06 21:51:52.222625	\N
1916	Mass Effect: Invasion Collector's Edition	59446	\N	\N	\N	2015-04-06 21:51:52.227351	2015-04-06 21:51:52.227351	\N
1917	Eddy Current	59495	\N	\N	\N	2015-04-06 21:51:52.234348	2015-04-06 21:51:52.234348	\N
1918	1 For $1: The Massive	59506	\N	\N	\N	2015-04-06 21:51:52.238958	2015-04-06 21:51:52.238958	\N
1919	Abe Sapien	59507	\N	\N	\N	2015-04-06 21:51:52.244846	2015-04-06 21:51:52.244846	\N
1920	Snow Angel	59508	\N	\N	\N	2015-04-06 21:51:52.249439	2015-04-06 21:51:52.249439	\N
1921	The Last of Us: American Dreams	59521	\N	\N	\N	2015-04-06 21:51:52.25392	2015-04-06 21:51:52.25392	\N
1922	Sergio Aragonés Boogeyman	59878	\N	\N	\N	2015-04-06 21:51:52.258	2015-04-06 21:51:52.258	\N
1923	Sergio Aragonés Louder Than Words	59879	\N	\N	\N	2015-04-06 21:51:52.262121	2015-04-06 21:51:52.262121	\N
1924	The Legend of Mother Sarah: City of the Angels	59915	\N	\N	\N	2015-04-06 21:51:52.266231	2015-04-06 21:51:52.266231	\N
1925	Aliens: Inhuman Condition	59996	\N	\N	\N	2015-04-06 21:51:52.270479	2015-04-06 21:51:52.270479	\N
1926	Angel & Faith: Family Reunion	59998	\N	\N	\N	2015-04-06 21:51:52.275546	2015-04-06 21:51:52.275546	\N
1927	Dragon Age: The World of Thedas	59999	\N	\N	\N	2015-04-06 21:51:52.280326	2015-04-06 21:51:52.280326	\N
1928	House of Gold & Bones	60000	\N	\N	\N	2015-04-06 21:51:52.287998	2015-04-06 21:51:52.287998	\N
1929	Star Wars: Darth Vader And The Ninth Assassin	60001	\N	\N	\N	2015-04-06 21:51:52.292173	2015-04-06 21:51:52.292173	\N
1930	Isolation and Illusion	60032	\N	\N	\N	2015-04-06 21:51:52.297297	2015-04-06 21:51:52.297297	\N
1931	Eno and Plum	60193	\N	\N	\N	2015-04-06 21:51:52.301611	2015-04-06 21:51:52.301611	\N
1932	The Creep	60290	\N	\N	\N	2015-04-06 21:51:52.305414	2015-04-06 21:51:52.305414	\N
1933	Ningen's Nightmares	60291	\N	\N	\N	2015-04-06 21:51:52.310051	2015-04-06 21:51:52.310051	\N
1934	Classic Usagi Yojimbo	60527	\N	\N	\N	2015-04-06 21:51:52.31424	2015-04-06 21:51:52.31424	\N
1935	Korak, Son Of Tarzan Archives	60538	\N	\N	\N	2015-04-06 21:51:52.31822	2015-04-06 21:51:52.31822	\N
1936	The Victories	60539	\N	\N	\N	2015-04-06 21:51:52.32208	2015-04-06 21:51:52.32208	\N
1937	Mister X: Eviction	60540	\N	\N	\N	2015-04-06 21:51:52.326019	2015-04-06 21:51:52.326019	\N
1938	Sergio Aragonés Groo and Rufferto	60588	\N	\N	\N	2015-04-06 21:51:52.330835	2015-04-06 21:51:52.330835	\N
1939	Predator: Hell Come a Walkin'/1718	60589	\N	\N	\N	2015-04-06 21:51:52.337609	2015-04-06 21:51:52.337609	\N
1940	Aliens: Horror Show	60590	\N	\N	\N	2015-04-06 21:51:52.342338	2015-04-06 21:51:52.342338	\N
1941	Damn Nation	60591	\N	\N	\N	2015-04-06 21:51:52.347307	2015-04-06 21:51:52.347307	\N
1942	Free Comic Book Day: Star Wars and Captain Midnight / Avatar - The Last Airbender	60781	\N	\N	\N	2015-04-06 21:51:52.351615	2015-04-06 21:51:52.351615	\N
1943	Free Comic Book Day: R.I.P.D. and the True Lives of the Fabulous Killjoys	60794	\N	\N	\N	2015-04-06 21:51:52.35643	2015-04-06 21:51:52.35643	\N
1944	Predator: Blood Feud	60821	\N	\N	\N	2015-04-06 21:51:52.360996	2015-04-06 21:51:52.360996	\N
1945	Buffy The Vampire Slayer Season Nine: Guarded	60911	\N	\N	\N	2015-04-06 21:51:52.364928	2015-04-06 21:51:52.364928	\N
1946	Criminal Macabre: No Peace For Dead Men	60912	\N	\N	\N	2015-04-06 21:51:52.368729	2015-04-06 21:51:52.368729	\N
1947	Freaks' Amour	60913	\N	\N	\N	2015-04-06 21:51:52.37261	2015-04-06 21:51:52.37261	\N
1948	PROTOtykes Holiday Special	61117	\N	\N	\N	2015-04-06 21:51:52.377364	2015-04-06 21:51:52.377364	\N
1949	Primal: From the Cradle to the Grave	61121	\N	\N	\N	2015-04-06 21:51:52.386366	2015-04-06 21:51:52.386366	\N
1950	Primal	61122	\N	\N	\N	2015-04-06 21:51:52.389628	2015-04-06 21:51:52.389628	\N
1951	B.P.R.D. Hell On Earth	61307	\N	\N	\N	2015-04-06 21:51:52.395364	2015-04-06 21:51:52.395364	\N
1952	Dragon Resurrection	61308	\N	\N	\N	2015-04-06 21:51:52.39957	2015-04-06 21:51:52.39957	\N
1953	Dream Thief	61309	\N	\N	\N	2015-04-06 21:51:52.40403	2015-04-06 21:51:52.40403	\N
1954	Edgar Allan Poe’s The Fall of the House of Usher	61310	\N	\N	\N	2015-04-06 21:51:52.408954	2015-04-06 21:51:52.408954	\N
1955	Exile To Babylon	61311	\N	\N	\N	2015-04-06 21:51:52.413642	2015-04-06 21:51:52.413642	\N
1956	Mass Effect Library Edition	61312	\N	\N	\N	2015-04-06 21:51:52.418097	2015-04-06 21:51:52.418097	\N
1957	R.I.P.D.: City Of The Damned	61313	\N	\N	\N	2015-04-06 21:51:52.422251	2015-04-06 21:51:52.422251	\N
1958	Star Wars: Darth Maul - Death Sentence	61314	\N	\N	\N	2015-04-06 21:51:52.427142	2015-04-06 21:51:52.427142	\N
1959	Pop Gun War	61347	\N	\N	\N	2015-04-06 21:51:52.436122	2015-04-06 21:51:52.436122	\N
1960	The Perry Bible Fellowship: The Trial of Colonel Sweeto and Other Stories	61362	\N	\N	\N	2015-04-06 21:51:52.439701	2015-04-06 21:51:52.439701	\N
1961	Rocket Comics Ignite	61505	\N	\N	\N	2015-04-06 21:51:52.445086	2015-04-06 21:51:52.445086	\N
1962	Ring of Roses	61623	\N	\N	\N	2015-04-06 21:51:52.449327	2015-04-06 21:51:52.449327	\N
1963	Akaneiro	61812	\N	\N	\N	2015-04-06 21:51:52.453059	2015-04-06 21:51:52.453059	\N
1964	The Deep Sea	61813	\N	\N	\N	2015-04-06 21:51:52.457406	2015-04-06 21:51:52.457406	\N
1965	Lobster Johnson: Satan Smells A Rat	61814	\N	\N	\N	2015-04-06 21:51:52.461312	2015-04-06 21:51:52.461312	\N
1966	Lone Wolf & Cub Omnibus	61815	\N	\N	\N	2015-04-06 21:51:52.465494	2015-04-06 21:51:52.465494	\N
1967	Martha Washington Saves the World	61895	\N	\N	\N	2015-04-06 21:51:52.470299	2015-04-06 21:51:52.470299	\N
1968	Concrete Hero Special	62156	\N	\N	\N	2015-04-06 21:51:52.474924	2015-04-06 21:51:52.474924	\N
1969	Star Wars May The 4th Digital Preview	62243	\N	\N	\N	2015-04-06 21:51:52.479803	2015-04-06 21:51:52.479803	\N
1970	Chickenhare: The House of Klaus	62250	\N	\N	\N	2015-04-06 21:51:52.485433	2015-04-06 21:51:52.485433	\N
1971	Chickenhare: Fire in the Hole	62251	\N	\N	\N	2015-04-06 21:51:52.489069	2015-04-06 21:51:52.489069	\N
1972	Dungeon Siege: The Battle For  Aranna	62329	\N	\N	\N	2015-04-06 21:51:52.49615	2015-04-06 21:51:52.49615	\N
1973	King Conan: The Hour of the Dragon	62378	\N	\N	\N	2015-04-06 21:51:52.500853	2015-04-06 21:51:52.500853	\N
1974	Star Wars Omnibus: Wild Space	62379	\N	\N	\N	2015-04-06 21:51:52.504856	2015-04-06 21:51:52.504856	\N
1975	Fused Canned Heat	62578	\N	\N	\N	2015-04-06 21:51:52.50941	2015-04-06 21:51:52.50941	\N
1976	The Art of Sin City	62596	\N	\N	\N	2015-04-06 21:51:52.513451	2015-04-06 21:51:52.513451	\N
1977	Frank Miller's Sin City: That Yellow Bastard	62597	\N	\N	\N	2015-04-06 21:51:52.518178	2015-04-06 21:51:52.518178	\N
1978	Frank Miller's Sin City: Hell and Back	62598	\N	\N	\N	2015-04-06 21:51:52.523216	2015-04-06 21:51:52.523216	\N
1979	Frank Miller's Sin City: Family Values	62599	\N	\N	\N	2015-04-06 21:51:52.528402	2015-04-06 21:51:52.528402	\N
1980	Sergio Aragonés The Groo Kingdom	62604	\N	\N	\N	2015-04-06 21:51:52.533691	2015-04-06 21:51:52.533691	\N
1981	Serenity: Downtime and The Other Half	62773	\N	\N	\N	2015-04-06 21:51:52.539355	2015-04-06 21:51:52.539355	\N
1982	Buffy The Vampire Slayer: Spike - A Dark Place	62867	\N	\N	\N	2015-04-06 21:51:52.545171	2015-04-06 21:51:52.545171	\N
1983	Everybody Gets It Wrong! And Other Stories: David Chelsea's 24-Hour Comics	62868	\N	\N	\N	2015-04-06 21:51:52.549539	2015-04-06 21:51:52.549539	\N
1984	Hellboy: The Storm and the Fury & The Bride of Hell	62869	\N	\N	\N	2015-04-06 21:51:52.5539	2015-04-06 21:51:52.5539	\N
1985	Misty Circus	62870	\N	\N	\N	2015-04-06 21:51:52.558621	2015-04-06 21:51:52.558621	\N
1986	Star Wars: Legacy	62871	\N	\N	\N	2015-04-06 21:51:52.563286	2015-04-06 21:51:52.563286	\N
1987	Sergio Aragonés' Groo: Mightier Than the Sword	62901	\N	\N	\N	2015-04-06 21:51:52.566996	2015-04-06 21:51:52.566996	\N
1988	Will Eisner's Hawks of the Seas	62938	\N	\N	\N	2015-04-06 21:51:52.571216	2015-04-06 21:51:52.571216	\N
1989	The Mighty Skullboy Army	63092	\N	\N	\N	2015-04-06 21:51:52.57561	2015-04-06 21:51:52.57561	\N
1990	Supersized: Strange Tales from a Fast-Food Culture	63093	\N	\N	\N	2015-04-06 21:51:52.58033	2015-04-06 21:51:52.58033	\N
1991	Predator vs. Judge Dredd	63160	\N	\N	\N	2015-04-06 21:51:52.587339	2015-04-06 21:51:52.587339	\N
1992	Ghost/Hellboy Special	63180	\N	\N	\N	2015-04-06 21:51:52.591755	2015-04-06 21:51:52.591755	\N
1993	Jeremiah: Gun in the Water	63190	\N	\N	\N	2015-04-06 21:51:52.596875	2015-04-06 21:51:52.596875	\N
1994	The Courageous Princess	63198	\N	\N	\N	2015-04-06 21:51:52.600701	2015-04-06 21:51:52.600701	\N
1995	Crime Does Not Pay Presents Phil Stanford's City of Roses	63203	\N	\N	\N	2015-04-06 21:51:52.604444	2015-04-06 21:51:52.604444	\N
1996	The Perry Bible Fellowship Almanack	63259	\N	\N	\N	2015-04-06 21:51:52.609105	2015-04-06 21:51:52.609105	\N
1997	Breath of Bones: A Tale of the Golem	63284	\N	\N	\N	2015-04-06 21:51:52.613906	2015-04-06 21:51:52.613906	\N
1998	Lone Wolf 2100 Omnibus	63285	\N	\N	\N	2015-04-06 21:51:52.618281	2015-04-06 21:51:52.618281	\N
1999	The Victories: Touched	63287	\N	\N	\N	2015-04-06 21:51:52.622082	2015-04-06 21:51:52.622082	\N
2000	The True Lives of the Fabulous Killjoys	63288	\N	\N	\N	2015-04-06 21:51:52.626127	2015-04-06 21:51:52.626127	\N
2001	The Goon: Nothin' But Misery	63454	\N	\N	\N	2015-04-06 21:51:52.633334	2015-04-06 21:51:52.633334	\N
2002	The Horror of Collier County	63468	\N	\N	\N	2015-04-06 21:51:52.63726	2015-04-06 21:51:52.63726	\N
2003	Kickback	63489	\N	\N	\N	2015-04-06 21:51:52.641725	2015-04-06 21:51:52.641725	\N
2004	King Kong: The 8th Wonder of the World	63492	\N	\N	\N	2015-04-06 21:51:52.647913	2015-04-06 21:51:52.647913	\N
2005	Jack Hightower	63654	\N	\N	\N	2015-04-06 21:51:52.652156	2015-04-06 21:51:52.652156	\N
2006	The Art of the Last of Us	63706	\N	\N	\N	2015-04-06 21:51:52.65665	2015-04-06 21:51:52.65665	\N
2007	Baltimore: The Inquisitor	63707	\N	\N	\N	2015-04-06 21:51:52.660893	2015-04-06 21:51:52.660893	\N
2008	Bloodhound: Brass Knuckle Psychology	63708	\N	\N	\N	2015-04-06 21:51:52.664716	2015-04-06 21:51:52.664716	\N
2009	Captain Midnight	63709	\N	\N	\N	2015-04-06 21:51:52.669314	2015-04-06 21:51:52.669314	\N
2010	Domovoi	63710	\N	\N	\N	2015-04-06 21:51:52.674087	2015-04-06 21:51:52.674087	\N
2011	Star Wars: The Clone Wars - The Smuggler's Code	63711	\N	\N	\N	2015-04-06 21:51:52.678814	2015-04-06 21:51:52.678814	\N
2012	Star Wars: Lost Tribe of the Sith - Spiral	63713	\N	\N	\N	2015-04-06 21:51:52.686289	2015-04-06 21:51:52.686289	\N
2013	Star Wars: The Clone Wars - The Enemy Within	63877	\N	\N	\N	2015-04-06 21:51:52.69264	2015-04-06 21:51:52.69264	\N
2014	Scatterbrain	63961	\N	\N	\N	2015-04-06 21:51:52.698353	2015-04-06 21:51:52.698353	\N
2015	Scrambled Ink	63985	\N	\N	\N	2015-04-06 21:51:52.702611	2015-04-06 21:51:52.702611	\N
2016	Shi: Ju-Nen	64043	\N	\N	\N	2015-04-06 21:51:52.708435	2015-04-06 21:51:52.708435	\N
2017	Sin City: A Dame To Kill For	64062	\N	\N	\N	2015-04-06 21:51:52.713588	2015-04-06 21:51:52.713588	\N
2018	B.P.R.D.: Hell on Earth - New World	64095	\N	\N	\N	2015-04-06 21:51:52.717256	2015-04-06 21:51:52.717256	\N
2019	B.P.R.D.: The Dead	64103	\N	\N	\N	2015-04-06 21:51:52.727085	2015-04-06 21:51:52.727085	\N
2020	Star Wars: Dark Empire I	64160	\N	\N	\N	2015-04-06 21:51:52.735354	2015-04-06 21:51:52.735354	\N
2021	Spirit of Wonder	64166	\N	\N	\N	2015-04-06 21:51:52.740285	2015-04-06 21:51:52.740285	\N
2022	Star Wars: The Films And The Galaxy Beyond	64184	\N	\N	\N	2015-04-06 21:51:52.746568	2015-04-06 21:51:52.746568	\N
2023	Star Wars: Panel to Panel	64189	\N	\N	\N	2015-04-06 21:51:52.750645	2015-04-06 21:51:52.750645	\N
2024	Star Wars: The Old Republic Threat of Peace	64192	\N	\N	\N	2015-04-06 21:51:52.755293	2015-04-06 21:51:52.755293	\N
2025	Star Wars X-Wing Rogue Squadron: The Phantom Affair	64193	\N	\N	\N	2015-04-06 21:51:52.760027	2015-04-06 21:51:52.760027	\N
2026	Star Wars X-Wing Rogue Squadron: Battleground Tatooine	64194	\N	\N	\N	2015-04-06 21:51:52.763934	2015-04-06 21:51:52.763934	\N
2027	Star Wars X-Wing Rogue Squadron: In the Empire's Service	64195	\N	\N	\N	2015-04-06 21:51:52.767962	2015-04-06 21:51:52.767962	\N
2028	Star Wars X-Wing Rogue Squadron: Blood and Honor	64196	\N	\N	\N	2015-04-06 21:51:52.771781	2015-04-06 21:51:52.771781	\N
2029	Star Wars X-Wing Rogue Squadron: Masquerade	64197	\N	\N	\N	2015-04-06 21:51:52.775399	2015-04-06 21:51:52.775399	\N
2030	Star Wars X-Wing Rogue Squadron: Mandatory Retirement	64198	\N	\N	\N	2015-04-06 21:51:52.77997	2015-04-06 21:51:52.77997	\N
2031	Aliens: Survival	64202	\N	\N	\N	2015-04-06 21:51:52.788044	2015-04-06 21:51:52.788044	\N
2032	Nothing Nice to Say	64223	\N	\N	\N	2015-04-06 21:51:52.792881	2015-04-06 21:51:52.792881	\N
2033	The Original Daredevil Archives	64238	\N	\N	\N	2015-04-06 21:51:52.79853	2015-04-06 21:51:52.79853	\N
2034	Usagi Yojimbo: A Town Called Hell	64239	\N	\N	\N	2015-04-06 21:51:52.80341	2015-04-06 21:51:52.80341	\N
2035	Trigun Anime Manga: Wolfwood	64602	\N	\N	\N	2015-04-06 21:51:52.808277	2015-04-06 21:51:52.808277	\N
2036	Axe Cop: President of the World	64679	\N	\N	\N	2015-04-06 21:51:52.812251	2015-04-06 21:51:52.812251	\N
2037	Billy The Kid’s Old Timey Oddities And The Orm Of Loch Ness	64680	\N	\N	\N	2015-04-06 21:51:52.816427	2015-04-06 21:51:52.816427	\N
2038	Catalyst Comix	64681	\N	\N	\N	2015-04-06 21:51:52.820285	2015-04-06 21:51:52.820285	\N
2039	Magnus, Robot Fighter Archives	65033	\N	\N	\N	2015-04-06 21:51:52.824265	2015-04-06 21:51:52.824265	\N
2040	Star Wars: Purge	65062	\N	\N	\N	2015-04-06 21:51:52.828936	2015-04-06 21:51:52.828936	\N
2041	The Sky: The Art of Final Fantasy	65196	\N	\N	\N	2015-04-06 21:51:52.836705	2015-04-06 21:51:52.836705	\N
2042	Aliens: Genocide	65239	\N	\N	\N	2015-04-06 21:51:52.840698	2015-04-06 21:51:52.840698	\N
2043	Aliens: Female War	65260	\N	\N	\N	2015-04-06 21:51:52.846565	2015-04-06 21:51:52.846565	\N
2044	Aliens: Genocide	65261	\N	\N	\N	2015-04-06 21:51:52.850464	2015-04-06 21:51:52.850464	\N
2045	Aliens: Harvest	65262	\N	\N	\N	2015-04-06 21:51:52.85465	2015-04-06 21:51:52.85465	\N
2046	Aliens: Labyrinth	65263	\N	\N	\N	2015-04-06 21:51:52.859313	2015-04-06 21:51:52.859313	\N
2047	Aliens: Music of the Spears	65264	\N	\N	\N	2015-04-06 21:51:52.863009	2015-04-06 21:51:52.863009	\N
2048	Aliens: Nightmare Asylum	65265	\N	\N	\N	2015-04-06 21:51:52.867298	2015-04-06 21:51:52.867298	\N
2049	Aliens: Rogue	65266	\N	\N	\N	2015-04-06 21:51:52.871106	2015-04-06 21:51:52.871106	\N
2050	Aliens: Sacrifice	65267	\N	\N	\N	2015-04-06 21:51:52.87577	2015-04-06 21:51:52.87577	\N
2051	Aliens: Salvation	65268	\N	\N	\N	2015-04-06 21:51:52.880671	2015-04-06 21:51:52.880671	\N
2052	Aliens vs. Predator: Aliens vs. Predator/Blood Time	65269	\N	\N	\N	2015-04-06 21:51:52.886866	2015-04-06 21:51:52.886866	\N
2053	Aliens vs. Predator: Booty	65270	\N	\N	\N	2015-04-06 21:51:52.890736	2015-04-06 21:51:52.890736	\N
2054	Aliens vs. Predator: Duel	65271	\N	\N	\N	2015-04-06 21:51:52.896993	2015-04-06 21:51:52.896993	\N
2055	Aliens vs. Predator: Eternal/Old Secrets	65272	\N	\N	\N	2015-04-06 21:51:52.90191	2015-04-06 21:51:52.90191	\N
2056	Aliens vs. Predator: War	65273	\N	\N	\N	2015-04-06 21:51:52.906118	2015-04-06 21:51:52.906118	\N
2057	Appleseed	65278	\N	\N	\N	2015-04-06 21:51:52.910906	2015-04-06 21:51:52.910906	\N
2058	Blessed Thistle	65338	\N	\N	\N	2015-04-06 21:51:52.915395	2015-04-06 21:51:52.915395	\N
2059	The Adventures of Dr. McNinja Omnibus	65369	\N	\N	\N	2015-04-06 21:51:52.91946	2015-04-06 21:51:52.91946	\N
2060	Blood Brothers	65371	\N	\N	\N	2015-04-06 21:51:52.924012	2015-04-06 21:51:52.924012	\N
2061	Conan: The Death	65372	\N	\N	\N	2015-04-06 21:51:52.92918	2015-04-06 21:51:52.92918	\N
2062	The Legend of Korra: The Art of The Animated Series	65373	\N	\N	\N	2015-04-06 21:51:52.934128	2015-04-06 21:51:52.934128	\N
2063	Star Wars: Dark Times - A Spark Remains	65374	\N	\N	\N	2015-04-06 21:51:52.937896	2015-04-06 21:51:52.937896	\N
2064	The Strain: The Fall	65375	\N	\N	\N	2015-04-06 21:51:52.943338	2015-04-06 21:51:52.943338	\N
2065	Frank Miller's Sin City: The Hard Goodbye	65481	\N	\N	\N	2015-04-06 21:51:52.94842	2015-04-06 21:51:52.94842	\N
2066	Frank Miller's Sin City: Booze, Broads, and Bullets	65482	\N	\N	\N	2015-04-06 21:51:52.952813	2015-04-06 21:51:52.952813	\N
2067	Ancient Joe: el bizarron	65537	\N	\N	\N	2015-04-06 21:51:52.957507	2015-04-06 21:51:52.957507	\N
2068	Fierce	65566	\N	\N	\N	2015-04-06 21:51:52.962109	2015-04-06 21:51:52.962109	\N
2069	Go Boy 7: The Human Factor!	65584	\N	\N	\N	2015-04-06 21:51:52.966705	2015-04-06 21:51:52.966705	\N
2070	Halo: Initiation Preview	65585	\N	\N	\N	2015-04-06 21:51:52.971357	2015-04-06 21:51:52.971357	\N
2071	The Finder Library	65590	\N	\N	\N	2015-04-06 21:51:52.975753	2015-04-06 21:51:52.975753	\N
2072	Go Boy 7: Ready Set Go!	65595	\N	\N	\N	2015-04-06 21:51:52.980028	2015-04-06 21:51:52.980028	\N
2073	Creepy Presents Steve Ditko	65618	\N	\N	\N	2015-04-06 21:51:52.984923	2015-04-06 21:51:52.984923	\N
2074	Gamma	65619	\N	\N	\N	2015-04-06 21:51:52.988685	2015-04-06 21:51:52.988685	\N
2075	Lobster Johnson: A Scent of Lotus	65620	\N	\N	\N	2015-04-06 21:51:52.993749	2015-04-06 21:51:52.993749	\N
2076	Mass Effect: Foundation	65621	\N	\N	\N	2015-04-06 21:51:52.999084	2015-04-06 21:51:52.999084	\N
2077	Star Wars: Agent of the Empire - Hard Targets	65622	\N	\N	\N	2015-04-06 21:51:53.003674	2015-04-06 21:51:53.003674	\N
2078	Star Wars: Dawn Of The Jedi - The Prisoner Of Bogan	65623	\N	\N	\N	2015-04-06 21:51:53.008217	2015-04-06 21:51:53.008217	\N
2079	Plants vs. Zombies: Lawnmageddon	65722	\N	\N	\N	2015-04-06 21:51:53.012366	2015-04-06 21:51:53.012366	\N
2080	Sabertooth Swordsman	65780	\N	\N	\N	2015-04-06 21:51:53.016237	2015-04-06 21:51:53.016237	\N
2081	Sergio Aragonés' Groo: Mightier Than the Sword	65798	\N	\N	\N	2015-04-06 21:51:53.020314	2015-04-06 21:51:53.020314	\N
2082	Blackjacked and Pistol-Whipped: A Crime Does Not Pay Primer	65816	\N	\N	\N	2015-04-06 21:51:53.024073	2015-04-06 21:51:53.024073	\N
2083	What's Michael?: Off The Deep End	65828	\N	\N	\N	2015-04-06 21:51:53.028269	2015-04-06 21:51:53.028269	\N
2084	What's Michael?: Michael's Mambo	65829	\N	\N	\N	2015-04-06 21:51:53.035683	2015-04-06 21:51:53.035683	\N
2085	What's Michael?: Michael's Favorite Spot	65830	\N	\N	\N	2015-04-06 21:51:53.041249	2015-04-06 21:51:53.041249	\N
2086	What's Michael?: A Hard Day's Life	65831	\N	\N	\N	2015-04-06 21:51:53.046443	2015-04-06 21:51:53.046443	\N
2087	What's Michael?: Fat Cat in the City	65832	\N	\N	\N	2015-04-06 21:51:53.051126	2015-04-06 21:51:53.051126	\N
2088	What's Michael?: Show Time	65833	\N	\N	\N	2015-04-06 21:51:53.055307	2015-04-06 21:51:53.055307	\N
2089	What's Michael?: Sleepless Nights	65834	\N	\N	\N	2015-04-06 21:51:53.060163	2015-04-06 21:51:53.060163	\N
2090	What's Michael?: Planet of the Cats	65835	\N	\N	\N	2015-04-06 21:51:53.064048	2015-04-06 21:51:53.064048	\N
2091	What's Michael?: Michael's Album	65836	\N	\N	\N	2015-04-06 21:51:53.06904	2015-04-06 21:51:53.06904	\N
2092	What's Michael?: Living Together	65837	\N	\N	\N	2015-04-06 21:51:53.073118	2015-04-06 21:51:53.073118	\N
2093	Predator: Bad Blood	65878	\N	\N	\N	2015-04-06 21:51:53.07818	2015-04-06 21:51:53.07818	\N
2094	Predator: Blood on Two/Witch Mesa	65881	\N	\N	\N	2015-04-06 21:51:53.085848	2015-04-06 21:51:53.085848	\N
2095	Predator: Dark River	65882	\N	\N	\N	2015-04-06 21:51:53.089278	2015-04-06 21:51:53.089278	\N
2096	Predator: Hunted City	65883	\N	\N	\N	2015-04-06 21:51:53.093946	2015-04-06 21:51:53.093946	\N
2097	Predator: Rite of Passage/Pride at Nghasa	65884	\N	\N	\N	2015-04-06 21:51:53.098716	2015-04-06 21:51:53.098716	\N
2098	Troublemaker	65899	\N	\N	\N	2015-04-06 21:51:53.1039	2015-04-06 21:51:53.1039	\N
2099	Edgar Rice Burroughs' Tarzan: The Sunday Comics	65916	\N	\N	\N	2015-04-06 21:51:53.108508	2015-04-06 21:51:53.108508	\N
2100	Ghost: In The Smoke And Din	65917	\N	\N	\N	2015-04-06 21:51:53.112626	2015-04-06 21:51:53.112626	\N
2101	Star Wars: Another Universe.com Exclusive	66015	\N	\N	\N	2015-04-06 21:51:53.116387	2015-04-06 21:51:53.116387	\N
2102	Trekker Omnibus	66060	\N	\N	\N	2015-04-06 21:51:53.120427	2015-04-06 21:51:53.120427	\N
2103	Aliens: Alchemy	66155	\N	\N	\N	2015-04-06 21:51:53.124922	2015-04-06 21:51:53.124922	\N
2104	Aliens: Alien	66160	\N	\N	\N	2015-04-06 21:51:53.129902	2015-04-06 21:51:53.129902	\N
2105	Aliens: Frenzy	66162	\N	\N	\N	2015-04-06 21:51:53.137714	2015-04-06 21:51:53.137714	\N
2106	Aliens: Havoc	66163	\N	\N	\N	2015-04-06 21:51:53.14277	2015-04-06 21:51:53.14277	\N
2107	Aliens: Incubation/Lucky/Taste	66164	\N	\N	\N	2015-04-06 21:51:53.147761	2015-04-06 21:51:53.147761	\N
2108	Aliens: Reapers/Cargo	66165	\N	\N	\N	2015-04-06 21:51:53.152097	2015-04-06 21:51:53.152097	\N
2109	Aliens Portfolio	66166	\N	\N	\N	2015-04-06 21:51:53.156318	2015-04-06 21:51:53.156318	\N
2110	Aliens vs. Predator: Hell-Bent/Pursuit/Lefty's Revenge/Chained to Life & Death	66167	\N	\N	\N	2015-04-06 21:51:53.160518	2015-04-06 21:51:53.160518	\N
2111	Aliens vs. Predator: Xenogenesis	66168	\N	\N	\N	2015-04-06 21:51:53.164071	2015-04-06 21:51:53.164071	\N
2112	Freak Show	66297	\N	\N	\N	2015-04-06 21:51:53.168303	2015-04-06 21:51:53.168303	\N
2113	Ex-Sanguine	66314	\N	\N	\N	2015-04-06 21:51:53.173566	2015-04-06 21:51:53.173566	\N
2114	Halo: Initiation	66315	\N	\N	\N	2015-04-06 21:51:53.178355	2015-04-06 21:51:53.178355	\N
2115	Resident Alien: The Suicide Blonde	66316	\N	\N	\N	2015-04-06 21:51:53.185933	2015-04-06 21:51:53.185933	\N
2116	B.P.R.D. Hell On Earth: The Return of the Master	66317	\N	\N	\N	2015-04-06 21:51:53.189441	2015-04-06 21:51:53.189441	\N
2117	HeartBreakers Ashcan	66354	\N	\N	\N	2015-04-06 21:51:53.194089	2015-04-06 21:51:53.194089	\N
2118	Predator: Hell and Hot Water	66424	\N	\N	\N	2015-04-06 21:51:53.198941	2015-04-06 21:51:53.198941	\N
2119	Predator: Homeworld	66425	\N	\N	\N	2015-04-06 21:51:53.203037	2015-04-06 21:51:53.203037	\N
2120	Predator: Nemesis	66426	\N	\N	\N	2015-04-06 21:51:53.207242	2015-04-06 21:51:53.207242	\N
2121	Predator: No Beast So Fierce/Bump in Night/Demon's Gold	66428	\N	\N	\N	2015-04-06 21:51:53.211337	2015-04-06 21:51:53.211337	\N
2122	Predator: Primal	66429	\N	\N	\N	2015-04-06 21:51:53.215082	2015-04-06 21:51:53.215082	\N
2123	Predator: Xenogenesis	66430	\N	\N	\N	2015-04-06 21:51:53.218869	2015-04-06 21:51:53.218869	\N
2124	Buffy the Vampire Slayer: Willow - Wonderland	66566	\N	\N	\N	2015-04-06 21:51:53.223437	2015-04-06 21:51:53.223437	\N
2125	Dragon Age: Until We Sleep	66567	\N	\N	\N	2015-04-06 21:51:53.228054	2015-04-06 21:51:53.228054	\N
2126	Sacrifice	66568	\N	\N	\N	2015-04-06 21:51:53.234417	2015-04-06 21:51:53.234417	\N
2127	Star Wars Omnibus: Knights of the Old Republic	66569	\N	\N	\N	2015-04-06 21:51:53.239008	2015-04-06 21:51:53.239008	\N
2128	Itty Bitty Hellboy	66787	\N	\N	\N	2015-04-06 21:51:53.244026	2015-04-06 21:51:53.244026	\N
2129	Number 13	66788	\N	\N	\N	2015-04-06 21:51:53.249057	2015-04-06 21:51:53.249057	\N
2130	Station To Station	66789	\N	\N	\N	2015-04-06 21:51:53.25385	2015-04-06 21:51:53.25385	\N
2131	Aliens: Border Lines/Seconds/Elder Gods/Once in a Lifetime	66838	\N	\N	\N	2015-04-06 21:51:53.25803	2015-04-06 21:51:53.25803	\N
2132	Aliens: Crusade	66839	\N	\N	\N	2015-04-06 21:51:53.262134	2015-04-06 21:51:53.262134	\N
2133	Aliens: Headhunter/Tourist Season	66840	\N	\N	\N	2015-04-06 21:51:53.265932	2015-04-06 21:51:53.265932	\N
2134	Aliens: Xenogenesis	66841	\N	\N	\N	2015-04-06 21:51:53.269974	2015-04-06 21:51:53.269974	\N
2135	The Guide To The Aliens Universe	66948	\N	\N	\N	2015-04-06 21:51:53.274255	2015-04-06 21:51:53.274255	\N
2136	Baltimore: The Infernal Train	67022	\N	\N	\N	2015-04-06 21:51:53.278834	2015-04-06 21:51:53.278834	\N
2137	The Star Wars	67024	\N	\N	\N	2015-04-06 21:51:53.286803	2015-04-06 21:51:53.286803	\N
2138	The Life and Times of Martha Washington in the Twenty-First Century	67173	\N	\N	\N	2015-04-06 21:51:53.290625	2015-04-06 21:51:53.290625	\N
2139	B.P.R.D.: 1948	67218	\N	\N	\N	2015-04-06 21:51:53.296297	2015-04-06 21:51:53.296297	\N
2140	Brain Boy	67220	\N	\N	\N	2015-04-06 21:51:53.300897	2015-04-06 21:51:53.300897	\N
2141	The Halloween Legion: The Great Goblin Invasion	67221	\N	\N	\N	2015-04-06 21:51:53.30516	2015-04-06 21:51:53.30516	\N
2142	The Best of Milligan & Mccarthy	67256	\N	\N	\N	2015-04-06 21:51:53.309794	2015-04-06 21:51:53.309794	\N
2143	Iguana	67424	\N	\N	\N	2015-04-06 21:51:53.313767	2015-04-06 21:51:53.313767	\N
2144	Angel & Faith: Death And Consequences	67437	\N	\N	\N	2015-04-06 21:51:53.317893	2015-04-06 21:51:53.317893	\N
2145	Buzzkill	67438	\N	\N	\N	2015-04-06 21:51:53.321711	2015-04-06 21:51:53.321711	\N
2146	Conan: The Phenomenon	67439	\N	\N	\N	2015-04-06 21:51:53.325514	2015-04-06 21:51:53.325514	\N
2147	Kiss Me, Satan!	67440	\N	\N	\N	2015-04-06 21:51:53.329896	2015-04-06 21:51:53.329896	\N
2148	Smoke/Ashes	67441	\N	\N	\N	2015-04-06 21:51:53.334066	2015-04-06 21:51:53.334066	\N
2149	Star Wars: In the Shadow of Yavin	67442	\N	\N	\N	2015-04-06 21:51:53.33896	2015-04-06 21:51:53.33896	\N
2150	Star Wars: Dark Times - Fire Carrier	67443	\N	\N	\N	2015-04-06 21:51:53.344118	2015-04-06 21:51:53.344118	\N
2151	Citizen Rex	67644	\N	\N	\N	2015-04-06 21:51:53.349045	2015-04-06 21:51:53.349045	\N
2152	The Ninth Gland	67645	\N	\N	\N	2015-04-06 21:51:53.353574	2015-04-06 21:51:53.353574	\N
2153	The Mask: Summer Vacation	67651	\N	\N	\N	2015-04-06 21:51:53.357843	2015-04-06 21:51:53.357843	\N
2154	The Secret of the Salamander	67652	\N	\N	\N	2015-04-06 21:51:53.362204	2015-04-06 21:51:53.362204	\N
2155	The Art of Akaneiro	67691	\N	\N	\N	2015-04-06 21:51:53.366479	2015-04-06 21:51:53.366479	\N
2156	Criminal Macabre: Final Night - The 30 Days of Night Crossover	67692	\N	\N	\N	2015-04-06 21:51:53.370308	2015-04-06 21:51:53.370308	\N
2157	Criminal Macabre: The Eyes of Frankenstein	67693	\N	\N	\N	2015-04-06 21:51:53.374464	2015-04-06 21:51:53.374464	\N
2158	Sin Titulo	67694	\N	\N	\N	2015-04-06 21:51:53.379121	2015-04-06 21:51:53.379121	\N
2159	1 For $1: Star Wars	67909	\N	\N	\N	2015-04-06 21:51:53.387206	2015-04-06 21:51:53.387206	\N
2160	Grindhouse: Doors Open At Midnight	67910	\N	\N	\N	2015-04-06 21:51:53.391575	2015-04-06 21:51:53.391575	\N
2161	The Occultist	67911	\N	\N	\N	2015-04-06 21:51:53.39752	2015-04-06 21:51:53.39752	\N
2162	Hipira	67970	\N	\N	\N	2015-04-06 21:51:53.402175	2015-04-06 21:51:53.402175	\N
2163	Buffy the Vampire Slayer Season Nine: Welcome to the Team	68115	\N	\N	\N	2015-04-06 21:51:53.406855	2015-04-06 21:51:53.406855	\N
2164	Colder	68116	\N	\N	\N	2015-04-06 21:51:53.412006	2015-04-06 21:51:53.412006	\N
2165	Elfquest Special: The Final Quest	68117	\N	\N	\N	2015-04-06 21:51:53.415884	2015-04-06 21:51:53.415884	\N
2166	Mind Mgmt: The Futurist	68118	\N	\N	\N	2015-04-06 21:51:53.419723	2015-04-06 21:51:53.419723	\N
2167	The Shaolin Cowboy	68119	\N	\N	\N	2015-04-06 21:51:53.423649	2015-04-06 21:51:53.423649	\N
2168	Star Wars: Ewoks - Shadows of Endor	68120	\N	\N	\N	2015-04-06 21:51:53.427825	2015-04-06 21:51:53.427825	\N
2169	Trigun Omnibus	68121	\N	\N	\N	2015-04-06 21:51:53.436212	2015-04-06 21:51:53.436212	\N
2170	UXB	68122	\N	\N	\N	2015-04-06 21:51:53.440122	2015-04-06 21:51:53.440122	\N
2171	Pete Von Sholly's Extremely Weird Stories	68199	\N	\N	\N	2015-04-06 21:51:53.445824	2015-04-06 21:51:53.445824	\N
2172	American Splendor: On The Job	68270	\N	\N	\N	2015-04-06 21:51:53.450671	2015-04-06 21:51:53.450671	\N
2173	Haunted Man	68274	\N	\N	\N	2015-04-06 21:51:53.454175	2015-04-06 21:51:53.454175	\N
2174	The Black Beetle: No Way Out	68312	\N	\N	\N	2015-04-06 21:51:53.458181	2015-04-06 21:51:53.458181	\N
2175	Bloodhound: Crowbar Medicine	68313	\N	\N	\N	2015-04-06 21:51:53.462232	2015-04-06 21:51:53.462232	\N
2176	S.H.O.O.T. First	68314	\N	\N	\N	2015-04-06 21:51:53.466319	2015-04-06 21:51:53.466319	\N
2177	American Splendor: Transatlantic Comics	68470	\N	\N	\N	2015-04-06 21:51:53.47054	2015-04-06 21:51:53.47054	\N
2178	The Answer!	68515	\N	\N	\N	2015-04-06 21:51:53.474969	2015-04-06 21:51:53.474969	\N
2179	Conan and the People of the Black Circle	68516	\N	\N	\N	2015-04-06 21:51:53.479938	2015-04-06 21:51:53.479938	\N
2180	Hellboy: The Midnight Circus	68517	\N	\N	\N	2015-04-06 21:51:53.486236	2015-04-06 21:51:53.486236	\N
2181	1 For $1: Baltimore: The Plague Ships	68710	\N	\N	\N	2015-04-06 21:51:53.489717	2015-04-06 21:51:53.489717	\N
2182	Astounding Villain House	68711	\N	\N	\N	2015-04-06 21:51:53.49551	2015-04-06 21:51:53.49551	\N
2183	Bad Houses	68712	\N	\N	\N	2015-04-06 21:51:53.500495	2015-04-06 21:51:53.500495	\N
2184	EC Archives: Tales From the Crypt	68713	\N	\N	\N	2015-04-06 21:51:53.504564	2015-04-06 21:51:53.504564	\N
2185	Edgar Allan Poe's The Raven and the Red Death	68714	\N	\N	\N	2015-04-06 21:51:53.508793	2015-04-06 21:51:53.508793	\N
2186	The Last of Us: American Dreams	68715	\N	\N	\N	2015-04-06 21:51:53.513045	2015-04-06 21:51:53.513045	\N
2187	Creepy Presents Bernie Wrightson	68843	\N	\N	\N	2015-04-06 21:51:53.517244	2015-04-06 21:51:53.517244	\N
2188	Plants vs. Zombies: Lawnmageddon	68914	\N	\N	\N	2015-04-06 21:51:53.521759	2015-04-06 21:51:53.521759	\N
2189	Kingdom of the Wicked	69055	\N	\N	\N	2015-04-06 21:51:53.527015	2015-04-06 21:51:53.527015	\N
2190	Tales of the Vampires	69064	\N	\N	\N	2015-04-06 21:51:53.537763	2015-04-06 21:51:53.537763	\N
2191	Akaneiro: The Path of Cloak and Wolf	69110	\N	\N	\N	2015-04-06 21:51:53.543191	2015-04-06 21:51:53.543191	\N
2192	Bandette: Presto!	69111	\N	\N	\N	2015-04-06 21:51:53.547766	2015-04-06 21:51:53.547766	\N
2193	Clown Fatale	69112	\N	\N	\N	2015-04-06 21:51:53.551655	2015-04-06 21:51:53.551655	\N
2194	Sabertooth Swordsman	69113	\N	\N	\N	2015-04-06 21:51:53.556948	2015-04-06 21:51:53.556948	\N
2195	The Colossal Conan	69114	\N	\N	\N	2015-04-06 21:51:53.561104	2015-04-06 21:51:53.561104	\N
2196	The Terminator: The Burning Earth	69115	\N	\N	\N	2015-04-06 21:51:53.565234	2015-04-06 21:51:53.565234	\N
2197	Help Is on the Way	69189	\N	\N	\N	2015-04-06 21:51:53.569212	2015-04-06 21:51:53.569212	\N
2198	1 For $1: Star Wars - Legacy	69336	\N	\N	\N	2015-04-06 21:51:53.573989	2015-04-06 21:51:53.573989	\N
2199	Baltimore: A Passing Stranger and Other Stories	69337	\N	\N	\N	2015-04-06 21:51:53.579012	2015-04-06 21:51:53.579012	\N
2200	The Fifth Beatle: The Brian Epstein Story	69338	\N	\N	\N	2015-04-06 21:51:53.583939	2015-04-06 21:51:53.583939	\N
2201	So... I Survived the Zombie Apocalypse and All I Got Was This Podcast	69339	\N	\N	\N	2015-04-06 21:51:53.588257	2015-04-06 21:51:53.588257	\N
2202	Star Wars: Darth Vader And The Ninth Assassin	69340	\N	\N	\N	2015-04-06 21:51:53.594485	2015-04-06 21:51:53.594485	\N
2203	Star Wars: Dawn of the Jedi - Force War	69341	\N	\N	\N	2015-04-06 21:51:53.599463	2015-04-06 21:51:53.599463	\N
2204	Star Wars : Legacy - Prisoner of the Floating World	69342	\N	\N	\N	2015-04-06 21:51:53.604033	2015-04-06 21:51:53.604033	\N
2205	Violent Cases	69343	\N	\N	\N	2015-04-06 21:51:53.613152	2015-04-06 21:51:53.613152	\N
2206	1 For $1: Abe Sapien	69553	\N	\N	\N	2015-04-06 21:51:53.617544	2015-04-06 21:51:53.617544	\N
2207	1 For $1: The Victories	69554	\N	\N	\N	2015-04-06 21:51:53.621619	2015-04-06 21:51:53.621619	\N
2208	B.P.R.D.: Vampire	69555	\N	\N	\N	2015-04-06 21:51:53.626095	2015-04-06 21:51:53.626095	\N
2209	The Best of Comix Book: When Marvel Went Underground	69556	\N	\N	\N	2015-04-06 21:51:53.636518	2015-04-06 21:51:53.636518	\N
2210	Captain Midnight Archives	69557	\N	\N	\N	2015-04-06 21:51:53.640054	2015-04-06 21:51:53.640054	\N
2211	House of Gold & Bones	69558	\N	\N	\N	2015-04-06 21:51:53.64601	2015-04-06 21:51:53.64601	\N
2212	Mister X: Eviction & Other Stories	69559	\N	\N	\N	2015-04-06 21:51:53.649916	2015-04-06 21:51:53.649916	\N
2213	Never Ending	69560	\N	\N	\N	2015-04-06 21:51:53.654776	2015-04-06 21:51:53.654776	\N
2214	Polar: Came From the Cold	69561	\N	\N	\N	2015-04-06 21:51:53.658874	2015-04-06 21:51:53.658874	\N
2215	Sledgehammer 44: Lightning War	69562	\N	\N	\N	2015-04-06 21:51:53.663328	2015-04-06 21:51:53.663328	\N
2216	Mandala	69633	\N	\N	\N	2015-04-06 21:51:53.667235	2015-04-06 21:51:53.667235	\N
2217	CBLDF Presents Manga: Introduction, Challenges, and Best Practices	69679	\N	\N	\N	2015-04-06 21:51:53.670771	2015-04-06 21:51:53.670771	\N
2218	Terminator Salvation: The Final Battle	69680	\N	\N	\N	2015-04-06 21:51:53.675184	2015-04-06 21:51:53.675184	\N
2219	To Hell You Ride	69681	\N	\N	\N	2015-04-06 21:51:53.679781	2015-04-06 21:51:53.679781	\N
2220	Juice Squeezers One Shot	69803	\N	\N	\N	2015-04-06 21:51:53.687526	2015-04-06 21:51:53.687526	\N
2221	Abe Sapien: Dark and Terrible and the New Race of Man	69860	\N	\N	\N	2015-04-06 21:51:53.691729	2015-04-06 21:51:53.691729	\N
2222	Halo: Escalation	69861	\N	\N	\N	2015-04-06 21:51:53.696691	2015-04-06 21:51:53.696691	\N
2223	Michael Avon Oeming’s The Victories: Transhuman	69862	\N	\N	\N	2015-04-06 21:51:53.701196	2015-04-06 21:51:53.701196	\N
2224	Ghost	70051	\N	\N	\N	2015-04-06 21:51:53.705287	2015-04-06 21:51:53.705287	\N
2225	The Massive: Subcontinental	70052	\N	\N	\N	2015-04-06 21:51:53.709678	2015-04-06 21:51:53.709678	\N
2226	Star Wars: Darth Vader and the Cry of Shadows	70053	\N	\N	\N	2015-04-06 21:51:53.713679	2015-04-06 21:51:53.713679	\N
2227	Hellboy: The Troll Witch and Others	70221	\N	\N	\N	2015-04-06 21:51:53.718146	2015-04-06 21:51:53.718146	\N
2228	Hellboy: The Chained Coffin and The Baba Yaga	70222	\N	\N	\N	2015-04-06 21:51:53.722038	2015-04-06 21:51:53.722038	\N
2229	1 For $1: Captain Midnight	70509	\N	\N	\N	2015-04-06 21:51:53.726145	2015-04-06 21:51:53.726145	\N
2230	1 For $1: Conan the Barbarian	70510	\N	\N	\N	2015-04-06 21:51:53.730987	2015-04-06 21:51:53.730987	\N
2231	1 For $1: X	70511	\N	\N	\N	2015-04-06 21:51:53.738903	2015-04-06 21:51:53.738903	\N
2232	Bad Blood	70512	\N	\N	\N	2015-04-06 21:51:53.745531	2015-04-06 21:51:53.745531	\N
2233	Baltimore: Chapel of Bones	70513	\N	\N	\N	2015-04-06 21:51:53.750076	2015-04-06 21:51:53.750076	\N
2234	Juice Squeezers	70514	\N	\N	\N	2015-04-06 21:51:53.754977	2015-04-06 21:51:53.754977	\N
2235	Pariah	70515	\N	\N	\N	2015-04-06 21:51:53.758862	2015-04-06 21:51:53.758862	\N
2236	Star Wars Omnibus: Dark Times	70516	\N	\N	\N	2015-04-06 21:51:53.763198	2015-04-06 21:51:53.763198	\N
2237	White Eurocka	70551	\N	\N	\N	2015-04-06 21:51:53.76723	2015-04-06 21:51:53.76723	\N
2238	Halo: Initiation	70694	\N	\N	\N	2015-04-06 21:51:53.771721	2015-04-06 21:51:53.771721	\N
2239	Star Wars Omnibus Adventures	70695	\N	\N	\N	2015-04-06 21:51:53.777455	2015-04-06 21:51:53.777455	\N
2240	Monsters! & Other Stories	70890	\N	\N	\N	2015-04-06 21:51:53.782699	2015-04-06 21:51:53.782699	\N
2241	Skyman	70891	\N	\N	\N	2015-04-06 21:51:53.788349	2015-04-06 21:51:53.788349	\N
2242	X: Big Bad	70892	\N	\N	\N	2015-04-06 21:51:53.793534	2015-04-06 21:51:53.793534	\N
2243	Amala's Blade: Spirits of Naamaron	71052	\N	\N	\N	2015-04-06 21:51:53.798971	2015-04-06 21:51:53.798971	\N
2244	B.P.R.D. Hell On Earth: A Cold Day In Hell	71055	\N	\N	\N	2015-04-06 21:51:53.803094	2015-04-06 21:51:53.803094	\N
2245	Conan: The Nightmare of the Shallows	71059	\N	\N	\N	2015-04-06 21:51:53.808248	2015-04-06 21:51:53.808248	\N
2246	Elfquest: The Final Quest	71060	\N	\N	\N	2015-04-06 21:51:53.813016	2015-04-06 21:51:53.813016	\N
2247	Blood Song: A Silent Ballad	71120	\N	\N	\N	2015-04-06 21:51:53.817043	2015-04-06 21:51:53.817043	\N
2248	Stray	71132	\N	\N	\N	2015-04-06 21:51:53.821041	2015-04-06 21:51:53.821041	\N
2249	Dotter of Her Father's Eyes	71140	\N	\N	\N	2015-04-06 21:51:53.825211	2015-04-06 21:51:53.825211	\N
2250	Yaiba: Ninja Gaiden Z	71290	\N	\N	\N	2015-04-06 21:51:53.829872	2015-04-06 21:51:53.829872	\N
2251	Star Wars: The Mixed-Up Droid	71296	\N	\N	\N	2015-04-06 21:51:53.83747	2015-04-06 21:51:53.83747	\N
2252	Star Wars: Droids	71297	\N	\N	\N	2015-04-06 21:51:53.842087	2015-04-06 21:51:53.842087	\N
2253	Fagin the Jew	71301	\N	\N	\N	2015-04-06 21:51:53.847365	2015-04-06 21:51:53.847365	\N
2254	Furious	71316	\N	\N	\N	2015-04-06 21:51:53.851488	2015-04-06 21:51:53.851488	\N
2255	Serenity: Leaves On the Wind	71317	\N	\N	\N	2015-04-06 21:51:53.855434	2015-04-06 21:51:53.855434	\N
2256	Classic Star Wars	71434	\N	\N	\N	2015-04-06 21:51:53.859778	2015-04-06 21:51:53.859778	\N
2257	Avatar: The Last Airbender - The Search Library Edition	71440	\N	\N	\N	2015-04-06 21:51:53.864361	2015-04-06 21:51:53.864361	\N
2258	Axe Cop: Axe Cop Gets Married and Other Stories	71441	\N	\N	\N	2015-04-06 21:51:53.868651	2015-04-06 21:51:53.868651	\N
2259	Captain Midnight: On the Run	71442	\N	\N	\N	2015-04-06 21:51:53.872499	2015-04-06 21:51:53.872499	\N
2260	Conan: The Phantoms of the Black Coast	71443	\N	\N	\N	2015-04-06 21:51:53.877164	2015-04-06 21:51:53.877164	\N
2261	The EC Archives: The Vault of Horror	71444	\N	\N	\N	2015-04-06 21:51:53.882199	2015-04-06 21:51:53.882199	\N
2262	Lobster Johnson: Get the Lobster	71445	\N	\N	\N	2015-04-06 21:51:53.888339	2015-04-06 21:51:53.888339	\N
2263	Sherlock Holmes and the Vampires of London	71446	\N	\N	\N	2015-04-06 21:51:53.893442	2015-04-06 21:51:53.893442	\N
2264	The Strain: The Fall	71447	\N	\N	\N	2015-04-06 21:51:53.898447	2015-04-06 21:51:53.898447	\N
2265	1 for $1: Mass Effect: Foundation	71448	\N	\N	\N	2015-04-06 21:51:53.902631	2015-04-06 21:51:53.902631	\N
2266	Mass Effect: Foundation	71456	\N	\N	\N	2015-04-06 21:51:53.906486	2015-04-06 21:51:53.906486	\N
2267	Heart of Empire: The Legacy of Luther Arkwright	71532	\N	\N	\N	2015-04-06 21:51:53.910586	2015-04-06 21:51:53.910586	\N
2268	Lobster Johnson: Satan Smells A Rat	71603	\N	\N	\N	2015-04-06 21:51:53.914405	2015-04-06 21:51:53.914405	\N
2269	The Terminator: Enemy of My Enemy	71793	\N	\N	\N	2015-04-06 21:51:53.918459	2015-04-06 21:51:53.918459	\N
2270	The White Suits	71794	\N	\N	\N	2015-04-06 21:51:53.922651	2015-04-06 21:51:53.922651	\N
2271	Special Limited Edition Arcadia Collection	71881	\N	\N	\N	2015-04-06 21:51:53.926998	2015-04-06 21:51:53.926998	\N
2272	Breath of Bones: A Tale of the Golem	71940	\N	\N	\N	2015-04-06 21:51:53.936301	2015-04-06 21:51:53.936301	\N
2273	King Conan: The Conqueror	71941	\N	\N	\N	2015-04-06 21:51:53.939936	2015-04-06 21:51:53.939936	\N
2274	Pariah	71942	\N	\N	\N	2015-04-06 21:51:53.945664	2015-04-06 21:51:53.945664	\N
2275	Tomb Raider	71943	\N	\N	\N	2015-04-06 21:51:53.950141	2015-04-06 21:51:53.950141	\N
2276	Vandroid	71944	\N	\N	\N	2015-04-06 21:51:53.954048	2015-04-06 21:51:53.954048	\N
2277	EVE: True Stories	71981	\N	\N	\N	2015-04-06 21:51:53.958794	2015-04-06 21:51:53.958794	\N
2278	Nickelodeon Avatar: The Last Airbender - The Rift	72117	\N	\N	\N	2015-04-06 21:51:53.963374	2015-04-06 21:51:53.963374	\N
2279	Buffy the Vampire Slayer Season Nine: The Core	72118	\N	\N	\N	2015-04-06 21:51:53.967583	2015-04-06 21:51:53.967583	\N
2280	Dream Thief	72119	\N	\N	\N	2015-04-06 21:51:53.971317	2015-04-06 21:51:53.971317	\N
2281	Eve: Source	72120	\N	\N	\N	2015-04-06 21:51:53.975866	2015-04-06 21:51:53.975866	\N
2282	Gasoline Alley: The Complete Sundays	72121	\N	\N	\N	2015-04-06 21:51:53.980748	2015-04-06 21:51:53.980748	\N
2283	Veil	72122	\N	\N	\N	2015-04-06 21:51:53.986953	2015-04-06 21:51:53.986953	\N
2284	47 Ronin	72265	\N	\N	\N	2015-04-06 21:51:53.990828	2015-04-06 21:51:53.990828	\N
2285	Beasts of Burden: Hunters & Gatherers	72266	\N	\N	\N	2015-04-06 21:51:53.995688	2015-04-06 21:51:53.995688	\N
2286	Nosferatu Wars	72267	\N	\N	\N	2015-04-06 21:51:54.000115	2015-04-06 21:51:54.000115	\N
2287	Aliens: Colonial Marines	72311	\N	\N	\N	2015-04-06 21:51:54.00518	2015-04-06 21:51:54.00518	\N
2288	Blood Brothers	72407	\N	\N	\N	2015-04-06 21:51:54.0104	2015-04-06 21:51:54.0104	\N
2289	Buffy the Vampire Slayer Season 10	72408	\N	\N	\N	2015-04-06 21:51:54.014512	2015-04-06 21:51:54.014512	\N
2290	Hellboy: The First 20 Years	72409	\N	\N	\N	2015-04-06 21:51:54.018099	2015-04-06 21:51:54.018099	\N
2291	The Witcher	72410	\N	\N	\N	2015-04-06 21:51:54.022771	2015-04-06 21:51:54.022771	\N
2292	1 For $1: B.P.R.D. Hell On Earth	72576	\N	\N	\N	2015-04-06 21:51:54.027522	2015-04-06 21:51:54.027522	\N
2293	Blackout	72577	\N	\N	\N	2015-04-06 21:51:54.032756	2015-04-06 21:51:54.032756	\N
2294	Itty Bitty Hellboy: Halloween ComicFest	72714	\N	\N	\N	2015-04-06 21:51:54.039457	2015-04-06 21:51:54.039457	\N
2295	1 for $1: Itty Bitty Hellboy	72778	\N	\N	\N	2015-04-06 21:51:54.044663	2015-04-06 21:51:54.044663	\N
2296	Angel & Faith Season 10	72779	\N	\N	\N	2015-04-06 21:51:54.048999	2015-04-06 21:51:54.048999	\N
2297	Buzzkill	72780	\N	\N	\N	2015-04-06 21:51:54.052734	2015-04-06 21:51:54.052734	\N
2298	Edgar Allan Poe's The Premature Burial	72781	\N	\N	\N	2015-04-06 21:51:54.056943	2015-04-06 21:51:54.056943	\N
2299	Fatima: The Blood Spinners	72782	\N	\N	\N	2015-04-06 21:51:54.061171	2015-04-06 21:51:54.061171	\N
2300	Megatokyo Omnibus	72927	\N	\N	\N	2015-04-06 21:51:54.064778	2015-04-06 21:51:54.064778	\N
2301	Light Brigade	72976	\N	\N	\N	2015-04-06 21:51:54.069119	2015-04-06 21:51:54.069119	\N
2302	The Adventures of Nilson Groundthumper and Hermy	73027	\N	\N	\N	2015-04-06 21:51:54.072953	2015-04-06 21:51:54.072953	\N
2303	Hard Looks: Adapted Stories	73028	\N	\N	\N	2015-04-06 21:51:54.077911	2015-04-06 21:51:54.077911	\N
2304	Heart Transplant	73032	\N	\N	\N	2015-04-06 21:51:54.086822	2015-04-06 21:51:54.086822	\N
2305	Conan: The God In the Bowl and Other Stories	73034	\N	\N	\N	2015-04-06 21:51:54.0911	2015-04-06 21:51:54.0911	\N
2306	Conan: The Frost Giant's Daughter and Other Stories	73035	\N	\N	\N	2015-04-06 21:51:54.096504	2015-04-06 21:51:54.096504	\N
2307	Conan: The Tower of The Elephant and Other Stories	73036	\N	\N	\N	2015-04-06 21:51:54.10071	2015-04-06 21:51:54.10071	\N
2308	Star Wars: Legacy - Extremes	73037	\N	\N	\N	2015-04-06 21:51:54.104953	2015-04-06 21:51:54.104953	\N
2309	Star Wars: Legacy - Storms	73038	\N	\N	\N	2015-04-06 21:51:54.109071	2015-04-06 21:51:54.109071	\N
2310	Star Wars: Legacy - Tatooine	73039	\N	\N	\N	2015-04-06 21:51:54.112948	2015-04-06 21:51:54.112948	\N
2311	Star Wars: Legacy - Monster	73040	\N	\N	\N	2015-04-06 21:51:54.116674	2015-04-06 21:51:54.116674	\N
2312	Emily the Strange: The 13th Hour	73041	\N	\N	\N	2015-04-06 21:51:54.120666	2015-04-06 21:51:54.120666	\N
2313	Star Wars: Jedi - The Dark Side	73042	\N	\N	\N	2015-04-06 21:51:54.124825	2015-04-06 21:51:54.124825	\N
2314	Star Wars: The Clone Wars - Slaves of the Republic	73043	\N	\N	\N	2015-04-06 21:51:54.129724	2015-04-06 21:51:54.129724	\N
2315	Star Wars: The Clone Wars - Hero of the Confederacy	73044	\N	\N	\N	2015-04-06 21:51:54.137219	2015-04-06 21:51:54.137219	\N
2316	Concrete: Depths	73045	\N	\N	\N	2015-04-06 21:51:54.142271	2015-04-06 21:51:54.142271	\N
2317	Avatar: The Last Airbender - The Art of the Animated Series	73046	\N	\N	\N	2015-04-06 21:51:54.147857	2015-04-06 21:51:54.147857	\N
2318	The Occultist	73047	\N	\N	\N	2015-04-06 21:51:54.151988	2015-04-06 21:51:54.151988	\N
2319	The Last Dragon	73048	\N	\N	\N	2015-04-06 21:51:54.156294	2015-04-06 21:51:54.156294	\N
2320	Billy the Kid's Old-Timey Oddities	73049	\N	\N	\N	2015-04-06 21:51:54.160679	2015-04-06 21:51:54.160679	\N
2321	Emily the Strange	73052	\N	\N	\N	2015-04-06 21:51:54.165394	2015-04-06 21:51:54.165394	\N
2322	1 For $1: Emily and the Strangers	73092	\N	\N	\N	2015-04-06 21:51:54.170415	2015-04-06 21:51:54.170415	\N
2323	B.P.R.D. Hell On Earth: Lake of Fire	73093	\N	\N	\N	2015-04-06 21:51:54.17479	2015-04-06 21:51:54.17479	\N
2324	Brain Boy: Psy vs. Psy	73094	\N	\N	\N	2015-04-06 21:51:54.179178	2015-04-06 21:51:54.179178	\N
2325	Itty Bitty Hellboy	73095	\N	\N	\N	2015-04-06 21:51:54.185557	2015-04-06 21:51:54.185557	\N
2326	Star Wars: From the Ruins of Alderaan	73096	\N	\N	\N	2015-04-06 21:51:54.18924	2015-04-06 21:51:54.18924	\N
2327	Trekker: The Train To Avalon Bay	73097	\N	\N	\N	2015-04-06 21:51:54.194495	2015-04-06 21:51:54.194495	\N
2328	Aliens: Apocalypse	73208	\N	\N	\N	2015-04-06 21:51:54.199804	2015-04-06 21:51:54.199804	\N
2329	Aliens: Renegade	73209	\N	\N	\N	2015-04-06 21:51:54.204119	2015-04-06 21:51:54.204119	\N
2330	Conan the Avenger	73235	\N	\N	\N	2015-04-06 21:51:54.208722	2015-04-06 21:51:54.208722	\N
2331	The Eltingville Club	73236	\N	\N	\N	2015-04-06 21:51:54.212938	2015-04-06 21:51:54.212938	\N
2332	Someplace Strange	73237	\N	\N	\N	2015-04-06 21:51:54.216608	2015-04-06 21:51:54.216608	\N
2333	The EC Archives: Weird Fantasy	73238	\N	\N	\N	2015-04-06 21:51:54.220781	2015-04-06 21:51:54.220781	\N
2334	Applegeeks	73349	\N	\N	\N	2015-04-06 21:51:54.224861	2015-04-06 21:51:54.224861	\N
2335	Space Pinchy	73386	\N	\N	\N	2015-04-06 21:51:54.229367	2015-04-06 21:51:54.229367	\N
2336	Alabaster: Grimmer Tales	73408	\N	\N	\N	2015-04-06 21:51:54.238509	2015-04-06 21:51:54.238509	\N
2337	The Atomic Legion	73409	\N	\N	\N	2015-04-06 21:51:54.245328	2015-04-06 21:51:54.245328	\N
2338	King Conan: The Hour of the Dragon	73410	\N	\N	\N	2015-04-06 21:51:54.249957	2015-04-06 21:51:54.249957	\N
2339	Star Wars: Dark Times - A Spark Remains	73411	\N	\N	\N	2015-04-06 21:51:54.254509	2015-04-06 21:51:54.254509	\N
2340	Star Wars: Rebel Heist	73412	\N	\N	\N	2015-04-06 21:51:54.258579	2015-04-06 21:51:54.258579	\N
2341	X: The Dogs of War	73413	\N	\N	\N	2015-04-06 21:51:54.262347	2015-04-06 21:51:54.262347	\N
2342	Star Wars: Empire's End	73527	\N	\N	\N	2015-04-06 21:51:54.266529	2015-04-06 21:51:54.266529	\N
2343	Dark Horse: Avatar/Hellboy/Juice Squeezers	73560	\N	\N	\N	2015-04-06 21:51:54.270402	2015-04-06 21:51:54.270402	\N
2344	Free Comic Book Day: Project Black Sky	73561	\N	\N	\N	2015-04-06 21:51:54.274305	2015-04-06 21:51:54.274305	\N
2345	Shrek	73621	\N	\N	\N	2015-04-06 21:51:54.278822	2015-04-06 21:51:54.278822	\N
2346	Alley Oop: The Complete Sundays	73667	\N	\N	\N	2015-04-06 21:51:54.284303	2015-04-06 21:51:54.284303	\N
2347	Conan and the People of the Black Circle	73668	\N	\N	\N	2015-04-06 21:51:54.289887	2015-04-06 21:51:54.289887	\N
2348	Emily and the Strangers: The Battle of the Bands	73669	\N	\N	\N	2015-04-06 21:51:54.296051	2015-04-06 21:51:54.296051	\N
2349	S.H.O.O.T. First: Angels and Infidels	73670	\N	\N	\N	2015-04-06 21:51:54.301432	2015-04-06 21:51:54.301432	\N
2350	The True Lives of the Fabulous Killjoys	73671	\N	\N	\N	2015-04-06 21:51:54.305772	2015-04-06 21:51:54.305772	\N
2351	Star Wars: Darth Maul - Son of Dathomir, May the 4th Special Digital Preview	73868	\N	\N	\N	2015-04-06 21:51:54.310388	2015-04-06 21:51:54.310388	\N
2352	The Art of Plants vs. Zombies	73883	\N	\N	\N	2015-04-06 21:51:54.314706	2015-04-06 21:51:54.314706	\N
2353	The Art of Wolfenstein: The New Order	73884	\N	\N	\N	2015-04-06 21:51:54.319222	2015-04-06 21:51:54.319222	\N
2354	Hellboy in Hell: The Descent	73886	\N	\N	\N	2015-04-06 21:51:54.324085	2015-04-06 21:51:54.324085	\N
2355	Jack Kraken	73887	\N	\N	\N	2015-04-06 21:51:54.328792	2015-04-06 21:51:54.328792	\N
2356	Mandala	73888	\N	\N	\N	2015-04-06 21:51:54.333761	2015-04-06 21:51:54.333761	\N
2357	#1 for $1: Dragon Age: The Silent Grove	74103	\N	\N	\N	2015-04-06 21:51:54.338772	2015-04-06 21:51:54.338772	\N
2358	Axe Cop: The American Choppers	74104	\N	\N	\N	2015-04-06 21:51:54.344202	2015-04-06 21:51:54.344202	\N
2359	Brain Boy: The Men From G.E.S.T.A.L.T.	74105	\N	\N	\N	2015-04-06 21:51:54.348741	2015-04-06 21:51:54.348741	\N
2360	Mind MGMT: The Home Maker	74106	\N	\N	\N	2015-04-06 21:51:54.353062	2015-04-06 21:51:54.353062	\N
2361	Star Wars: Darth Maul - Son of Dathomir	74107	\N	\N	\N	2015-04-06 21:51:54.357187	2015-04-06 21:51:54.357187	\N
2362	Star Wars: Legacy - Outcasts of the Broken Ring	74108	\N	\N	\N	2015-04-06 21:51:54.361397	2015-04-06 21:51:54.361397	\N
2363	Star Wars Tales: A Jedi's Weapon - Free Comic Book Day 2002	74215	\N	\N	\N	2015-04-06 21:51:54.365075	2015-04-06 21:51:54.365075	\N
2364	Captain Midnight: Brave Old World	74321	\N	\N	\N	2015-04-06 21:51:54.369566	2015-04-06 21:51:54.369566	\N
2365	Resident Alien: The Suicide Blonde	74322	\N	\N	\N	2015-04-06 21:51:54.374614	2015-04-06 21:51:54.374614	\N
2366	Sledgehammer 44	74323	\N	\N	\N	2015-04-06 21:51:54.379364	2015-04-06 21:51:54.379364	\N
2367	Dragon Age Library Edition	74512	\N	\N	\N	2015-04-06 21:51:54.38601	2015-04-06 21:51:54.38601	\N
2368	Toshiro	74513	\N	\N	\N	2015-04-06 21:51:54.38978	2015-04-06 21:51:54.38978	\N
2369	The Art of Remember Me	74564	\N	\N	\N	2015-04-06 21:51:54.394872	2015-04-06 21:51:54.394872	\N
2370	Baltimore: Chapel of Bones	74715	\N	\N	\N	2015-04-06 21:51:54.399198	2015-04-06 21:51:54.399198	\N
2371	Crime Does Not Pay Presents City of Roses	74716	\N	\N	\N	2015-04-06 21:51:54.403113	2015-04-06 21:51:54.403113	\N
2372	Edgar Allan Poe’s Morella and the Murders in the Rue Morgue	74717	\N	\N	\N	2015-04-06 21:51:54.407562	2015-04-06 21:51:54.407562	\N
2373	EVE: True Stories	74718	\N	\N	\N	2015-04-06 21:51:54.411598	2015-04-06 21:51:54.411598	\N
2374	Star Wars: Dawn of the Jedi - Force War	74720	\N	\N	\N	2015-04-06 21:51:54.415461	2015-04-06 21:51:54.415461	\N
2375	2 Past Midnight	74721	\N	\N	\N	2015-04-06 21:51:54.419075	2015-04-06 21:51:54.419075	\N
2376	The Victories: Posthuman	74722	\N	\N	\N	2015-04-06 21:51:54.423203	2015-04-06 21:51:54.423203	\N
2377	1 for $1: The Strain	74876	\N	\N	\N	2015-04-06 21:51:54.427636	2015-04-06 21:51:54.427636	\N
2378	Bloodhound: Crowbar Medicine	74877	\N	\N	\N	2015-04-06 21:51:54.434871	2015-04-06 21:51:54.434871	\N
2379	Clown Fatale	74878	\N	\N	\N	2015-04-06 21:51:54.438671	2015-04-06 21:51:54.438671	\N
2380	Criminal Macabre: The Eyes of Frankenstein	74879	\N	\N	\N	2015-04-06 21:51:54.443719	2015-04-06 21:51:54.443719	\N
2381	Eye of Newt	74880	\N	\N	\N	2015-04-06 21:51:54.448319	2015-04-06 21:51:54.448319	\N
2382	The Portent: Ashes	74881	\N	\N	\N	2015-04-06 21:51:54.452946	2015-04-06 21:51:54.452946	\N
2383	Sir Edward Grey, Witchfinder: The Mysteries of Unland	74882	\N	\N	\N	2015-04-06 21:51:54.457406	2015-04-06 21:51:54.457406	\N
2384	Grendel Calendar	75044	\N	\N	\N	2015-04-06 21:51:54.461588	2015-04-06 21:51:54.461588	\N
2385	Dream Thief: Escape	75128	\N	\N	\N	2015-04-06 21:51:54.465916	2015-04-06 21:51:54.465916	\N
2386	Frank Miller’s Big Damn Sin City	75130	\N	\N	\N	2015-04-06 21:51:54.470243	2015-04-06 21:51:54.470243	\N
2387	The Goon: One For the Road	75131	\N	\N	\N	2015-04-06 21:51:54.474839	2015-04-06 21:51:54.474839	\N
2388	The Massive: Longship	75132	\N	\N	\N	2015-04-06 21:51:54.479623	2015-04-06 21:51:54.479623	\N
2389	The Occultist: At Death’s Door	75133	\N	\N	\N	2015-04-06 21:51:54.485064	2015-04-06 21:51:54.485064	\N
2390	Tarzan: Burne Hogarth's Lord of the Jungle	75134	\N	\N	\N	2015-04-06 21:51:54.489107	2015-04-06 21:51:54.489107	\N
2391	Plants vs. Zombies: Timepocalypse	75314	\N	\N	\N	2015-04-06 21:51:54.499122	2015-04-06 21:51:54.499122	\N
2392	The Strain: The Silver Angel	75315	\N	\N	\N	2015-04-06 21:51:54.503907	2015-04-06 21:51:54.503907	\N
2393	1 For $1: Avatar: The Last Airbender - The Rift	75345	\N	\N	\N	2015-04-06 21:51:54.508406	2015-04-06 21:51:54.508406	\N
2394	Catalyst Comix	75346	\N	\N	\N	2015-04-06 21:51:54.513005	2015-04-06 21:51:54.513005	\N
2395	Grip: The Strange World of Men	75347	\N	\N	\N	2015-04-06 21:51:54.51672	2015-04-06 21:51:54.51672	\N
2396	Kiss Me, Satan!	75348	\N	\N	\N	2015-04-06 21:51:54.520901	2015-04-06 21:51:54.520901	\N
2397	Never Ending	75349	\N	\N	\N	2015-04-06 21:51:54.524823	2015-04-06 21:51:54.524823	\N
2398	RoboCop vs. the Terminator Gallery Edition	75350	\N	\N	\N	2015-04-06 21:51:54.529502	2015-04-06 21:51:54.529502	\N
2399	The Secret Files of Dr. Drew	75351	\N	\N	\N	2015-04-06 21:51:54.533662	2015-04-06 21:51:54.533662	\N
2400	Star Wars: Darth Vader and the Cry of Shadows	75352	\N	\N	\N	2015-04-06 21:51:54.538521	2015-04-06 21:51:54.538521	\N
2401	Usagi Yojimbo: Red Scorpion	75353	\N	\N	\N	2015-04-06 21:51:54.543702	2015-04-06 21:51:54.543702	\N
2402	Wizard of 4th Street	75396	\N	\N	\N	2015-04-06 21:51:54.548967	2015-04-06 21:51:54.548967	\N
2403	Abe Sapien: The Shape of Things To Come	75546	\N	\N	\N	2015-04-06 21:51:54.55296	2015-04-06 21:51:54.55296	\N
2404	The Strain	75547	\N	\N	\N	2015-04-06 21:51:54.557067	2015-04-06 21:51:54.557067	\N
2405	Usagi Yojimbo Color Special: The Artist	75548	\N	\N	\N	2015-04-06 21:51:54.561515	2015-04-06 21:51:54.561515	\N
2406	Big Damn Hard Boiled	75688	\N	\N	\N	2015-04-06 21:51:54.565721	2015-04-06 21:51:54.565721	\N
2407	Buffy the Vampire Slayer: Spike - Into the Light	75704	\N	\N	\N	2015-04-06 21:51:54.569514	2015-04-06 21:51:54.569514	\N
2408	Grindhouse: Doors Open At Midnight	75705	\N	\N	\N	2015-04-06 21:51:54.574398	2015-04-06 21:51:54.574398	\N
2409	Pictures That Tick	75706	\N	\N	\N	2015-04-06 21:51:54.579313	2015-04-06 21:51:54.579313	\N
2410	Dark Horse Does Vampires Right	75751	\N	\N	\N	2015-04-06 21:51:54.584395	2015-04-06 21:51:54.584395	\N
2411	Dragon Girl and Monkey King: The Art of Katsuya Terada	75865	\N	\N	\N	2015-04-06 21:51:54.589078	2015-04-06 21:51:54.589078	\N
2412	The Goon: Occasion of Revenge	75866	\N	\N	\N	2015-04-06 21:51:54.595167	2015-04-06 21:51:54.595167	\N
2413	The Sakai Project: Artists Celebrate Thirty Years of “Usagi Yojimbo”	75867	\N	\N	\N	2015-04-06 21:51:54.60002	2015-04-06 21:51:54.60002	\N
2414	The Star Wars	75868	\N	\N	\N	2015-04-06 21:51:54.604853	2015-04-06 21:51:54.604853	\N
2415	Groo vs. Conan	75890	\N	\N	\N	2015-04-06 21:51:54.610036	2015-04-06 21:51:54.610036	\N
2416	The Star Wars	75910	\N	\N	\N	2015-04-06 21:51:54.614731	2015-04-06 21:51:54.614731	\N
2417	Athena Voltaire and the Feathered Serpent	75999	\N	\N	\N	2015-04-06 21:51:54.618776	2015-04-06 21:51:54.618776	\N
2418	Baltimore: The Witch of Harju	76076	\N	\N	\N	2015-04-06 21:51:54.623213	2015-04-06 21:51:54.623213	\N
2419	Deep Gravity	76077	\N	\N	\N	2015-04-06 21:51:54.627448	2015-04-06 21:51:54.627448	\N
2420	The Complete ElfQuest	76253	\N	\N	\N	2015-04-06 21:51:54.637623	2015-04-06 21:51:54.637623	\N
2421	Juice Squeezers: The Great Bug Elevator	76254	\N	\N	\N	2015-04-06 21:51:54.641974	2015-04-06 21:51:54.641974	\N
2422	The Ring of the Nibelung	76255	\N	\N	\N	2015-04-06 21:51:54.647388	2015-04-06 21:51:54.647388	\N
2423	Skyman: The Right Stuff	76256	\N	\N	\N	2015-04-06 21:51:54.65208	2015-04-06 21:51:54.65208	\N
2424	Usagi Yojimbo: Senso	76257	\N	\N	\N	2015-04-06 21:51:54.656551	2015-04-06 21:51:54.656551	\N
2425	Hellboy 20th Anniversary Sampler	76379	\N	\N	\N	2015-04-06 21:51:54.660489	2015-04-06 21:51:54.660489	\N
2426	Dark Ages	76382	\N	\N	\N	2015-04-06 21:51:54.664394	2015-04-06 21:51:54.664394	\N
2427	The Guns of Shadow Valley	76383	\N	\N	\N	2015-04-06 21:51:54.668401	2015-04-06 21:51:54.668401	\N
2428	Star Wars : Legacy - Wanted: Ania Solo	76384	\N	\N	\N	2015-04-06 21:51:54.672589	2015-04-06 21:51:54.672589	\N
2429	Prometheus: Fire and Stone - SDCC 2014 Ashcan	76471	\N	\N	\N	2015-04-06 21:51:54.677643	2015-04-06 21:51:54.677643	\N
2430	A Second Chance At Sarah	76529	\N	\N	\N	2015-04-06 21:51:54.68688	2015-04-06 21:51:54.68688	\N
2431	Dark Horse Presents	76530	\N	\N	\N	2015-04-06 21:51:54.690683	2015-04-06 21:51:54.690683	\N
2432	The Strain: The Night Eternal	76531	\N	\N	\N	2015-04-06 21:51:54.696201	2015-04-06 21:51:54.696201	\N
2433	Without Warning!	76613	\N	\N	\N	2015-04-06 21:51:54.700649	2015-04-06 21:51:54.700649	\N
2434	Sundowners	76622	\N	\N	\N	2015-04-06 21:51:54.705301	2015-04-06 21:51:54.705301	\N
2435	Conan: The Song of Bêlit	76623	\N	\N	\N	2015-04-06 21:51:54.710564	2015-04-06 21:51:54.710564	\N
2436	POP	76624	\N	\N	\N	2015-04-06 21:51:54.714624	2015-04-06 21:51:54.714624	\N
2437	Unofficial Hatsune Mix	76625	\N	\N	\N	2015-04-06 21:51:54.718604	2015-04-06 21:51:54.718604	\N
2438	X: Siege	76626	\N	\N	\N	2015-04-06 21:51:54.72258	2015-04-06 21:51:54.72258	\N
2439	#1 for $1: Ghost	76723	\N	\N	\N	2015-04-06 21:51:54.726313	2015-04-06 21:51:54.726313	\N
2440	Aw Yeah Comics! And . . . Action!	76724	\N	\N	\N	2015-04-06 21:51:54.730862	2015-04-06 21:51:54.730862	\N
2441	Concrete Park: R-E-S-P-E-C-T	76725	\N	\N	\N	2015-04-06 21:51:54.740493	2015-04-06 21:51:54.740493	\N
2442	Finder: Third World	76726	\N	\N	\N	2015-04-06 21:51:54.75247	2015-04-06 21:51:54.75247	\N
2443	Furious: Fallen Star	76727	\N	\N	\N	2015-04-06 21:51:54.762445	2015-04-06 21:51:54.762445	\N
2444	Jaybird	76728	\N	\N	\N	2015-04-06 21:51:54.767742	2015-04-06 21:51:54.767742	\N
2445	Grendel vs. The Shadow	76771	\N	\N	\N	2015-04-06 21:51:54.772512	2015-04-06 21:51:54.772512	\N
2446	B.P.R.D. Hell On Earth: The Reign of the Black Flame	76853	\N	\N	\N	2015-04-06 21:51:54.777396	2015-04-06 21:51:54.777396	\N
2447	Prometheus: Fire and Stone	76855	\N	\N	\N	2015-04-06 21:51:54.78587	2015-04-06 21:51:54.78587	\N
2448	The Whedon Three Way	76856	\N	\N	\N	2015-04-06 21:51:54.789103	2015-04-06 21:51:54.789103	\N
2449	Alien: Isolation	76895	\N	\N	\N	2015-04-06 21:51:54.795267	2015-04-06 21:51:54.795267	\N
2450	The Authentic Accounts of Billy the Kid’s Old Timey Oddities Omnibus	76967	\N	\N	\N	2015-04-06 21:51:54.799919	2015-04-06 21:51:54.799919	\N
2451	The Complete Silencers	76968	\N	\N	\N	2015-04-06 21:51:54.804702	2015-04-06 21:51:54.804702	\N
2452	Criminal Macabre: The Third Child	76969	\N	\N	\N	2015-04-06 21:51:54.809606	2015-04-06 21:51:54.809606	\N
2453	Ghost: The White City Butcher	76970	\N	\N	\N	2015-04-06 21:51:54.813871	2015-04-06 21:51:54.813871	\N
2454	Leaving Megalopolis	76971	\N	\N	\N	2015-04-06 21:51:54.81793	2015-04-06 21:51:54.81793	\N
2455	Red Moon	76972	\N	\N	\N	2015-04-06 21:51:54.821801	2015-04-06 21:51:54.821801	\N
2456	War World!	77008	\N	\N	\N	2015-04-06 21:51:54.825823	2015-04-06 21:51:54.825823	\N
2457	Aliens: Fire and Stone	77100	\N	\N	\N	2015-04-06 21:51:54.830652	2015-04-06 21:51:54.830652	\N
2458	Captain Midnight: For A Better Tomorrow	77101	\N	\N	\N	2015-04-06 21:51:54.838329	2015-04-06 21:51:54.838329	\N
2459	Sally Heathcote, Suffragette	77102	\N	\N	\N	2015-04-06 21:51:54.843086	2015-04-06 21:51:54.843086	\N
2460	The Witcher: House of Glass	77103	\N	\N	\N	2015-04-06 21:51:54.848515	2015-04-06 21:51:54.848515	\N
2461	Ghost/Batgirl: The Resurrection Engine	77196	\N	\N	\N	2015-04-06 21:51:54.8526	2015-04-06 21:51:54.8526	\N
2462	The Art of Naughty Dog	77228	\N	\N	\N	2015-04-06 21:51:54.856903	2015-04-06 21:51:54.856903	\N
2463	The Art of the Book of Life	77229	\N	\N	\N	2015-04-06 21:51:54.861478	2015-04-06 21:51:54.861478	\N
2464	Concrete Park: You Send Me	77230	\N	\N	\N	2015-04-06 21:51:54.866166	2015-04-06 21:51:54.866166	\N
2465	Edgar Allan Poe’s Spirits of the Dead	77231	\N	\N	\N	2015-04-06 21:51:54.870693	2015-04-06 21:51:54.870693	\N
2466	Loverboys	77232	\N	\N	\N	2015-04-06 21:51:54.875696	2015-04-06 21:51:54.875696	\N
2467	Star Wars: Rebel Girl	77233	\N	\N	\N	2015-04-06 21:51:54.880387	2015-04-06 21:51:54.880387	\N
2468	Star Wars: Darth Maul - Son of Dathomir	77234	\N	\N	\N	2015-04-06 21:51:54.887954	2015-04-06 21:51:54.887954	\N
2469	1 For $1: Action Philosophers #1	77408	\N	\N	\N	2015-04-06 21:51:54.892459	2015-04-06 21:51:54.892459	\N
2470	Alien vs. Predator: Fire and Stone	77409	\N	\N	\N	2015-04-06 21:51:54.897541	2015-04-06 21:51:54.897541	\N
2471	Blacksad: Amarillo	77410	\N	\N	\N	2015-04-06 21:51:54.901783	2015-04-06 21:51:54.901783	\N
2472	ElfQuest: The Original Quest Gallery Edition	77411	\N	\N	\N	2015-04-06 21:51:54.906517	2015-04-06 21:51:54.906517	\N
2473	The Goon: For Want of Whiskey and Blood	77412	\N	\N	\N	2015-04-06 21:51:54.91097	2015-04-06 21:51:54.91097	\N
2474	Halo: Escalation	77413	\N	\N	\N	2015-04-06 21:51:54.915491	2015-04-06 21:51:54.915491	\N
2475	Misfits of Avalon: The Queen of Air and Delinquency	77414	\N	\N	\N	2015-04-06 21:51:54.919635	2015-04-06 21:51:54.919635	\N
2476	Predator vs. Judge Dredd vs. Aliens: Incubus and Other Stories	77415	\N	\N	\N	2015-04-06 21:51:54.924474	2015-04-06 21:51:54.924474	\N
2477	Star Wars: Rebel Heist	77416	\N	\N	\N	2015-04-06 21:51:54.929715	2015-04-06 21:51:54.929715	\N
2478	The Ghost Fleet Preview	77511	\N	\N	\N	2015-04-06 21:51:54.937297	2015-04-06 21:51:54.937297	\N
2479	Silke	77546	\N	\N	\N	2015-04-06 21:51:54.942187	2015-04-06 21:51:54.942187	\N
2480	Action Philosophers!	77556	\N	\N	\N	2015-04-06 21:51:54.947722	2015-04-06 21:51:54.947722	\N
2481	The Art of the Evil Within	77557	\N	\N	\N	2015-04-06 21:51:54.9523	2015-04-06 21:51:54.9523	\N
2482	Black Sky Sampler	77558	\N	\N	\N	2015-04-06 21:51:54.957516	2015-04-06 21:51:54.957516	\N
2483	Star Wars: A Shattered Hope	77559	\N	\N	\N	2015-04-06 21:51:54.961374	2015-04-06 21:51:54.961374	\N
2484	Star Wars: Legacy - Empire of One	77560	\N	\N	\N	2015-04-06 21:51:54.965614	2015-04-06 21:51:54.965614	\N
2485	Station 16	77561	\N	\N	\N	2015-04-06 21:51:54.969806	2015-04-06 21:51:54.969806	\N
2486	The Usagi Yojimbo Saga	77562	\N	\N	\N	2015-04-06 21:51:54.974605	2015-04-06 21:51:54.974605	\N
2487	Colder: The Bad Seed	77681	\N	\N	\N	2015-04-06 21:51:54.979648	2015-04-06 21:51:54.979648	\N
2488	Father’s Day	77682	\N	\N	\N	2015-04-06 21:51:54.984264	2015-04-06 21:51:54.984264	\N
2489	Predator: Fire and Stone	77683	\N	\N	\N	2015-04-06 21:51:54.989059	2015-04-06 21:51:54.989059	\N
2490	The Sky: The Art of Final Fantasy	77684	\N	\N	\N	2015-04-06 21:51:54.995015	2015-04-06 21:51:54.995015	\N
2491	Morphos the Shapechanger	77782	\N	\N	\N	2015-04-06 21:51:54.999442	2015-04-06 21:51:54.999442	\N
2492	Baltimore: The Wolf and the Apostle	77797	\N	\N	\N	2015-04-06 21:51:55.003568	2015-04-06 21:51:55.003568	\N
2493	Blackout: Into the Dark	77798	\N	\N	\N	2015-04-06 21:51:55.008177	2015-04-06 21:51:55.008177	\N
2494	Project Black Sky: Secret Files	77800	\N	\N	\N	2015-04-06 21:51:55.012418	2015-04-06 21:51:55.012418	\N
2495	Vachss: Underground	77801	\N	\N	\N	2015-04-06 21:51:55.016905	2015-04-06 21:51:55.016905	\N
2496	Plants vs. Zombies: Timepocalypse Halloween ComicFest Mini-Comic	77861	\N	\N	\N	2015-04-06 21:51:55.021487	2015-04-06 21:51:55.021487	\N
2497	Bob Powell's Complete Cave Girl	77926	\N	\N	\N	2015-04-06 21:51:55.026626	2015-04-06 21:51:55.026626	\N
2498	The Ghost Fleet	77927	\N	\N	\N	2015-04-06 21:51:55.030941	2015-04-06 21:51:55.030941	\N
2499	The New York Four	77928	\N	\N	\N	2015-04-06 21:51:55.035273	2015-04-06 21:51:55.035273	\N
2500	Popular Skullture: The Skull Motif in Pulps, Paperbacks, and Comics	77929	\N	\N	\N	2015-04-06 21:51:55.041083	2015-04-06 21:51:55.041083	\N
2501	Serenity: Leaves On the Wind	77930	\N	\N	\N	2015-04-06 21:51:55.047364	2015-04-06 21:51:55.047364	\N
2502	Star Wars: Dark Times Gallery Edition	77931	\N	\N	\N	2015-04-06 21:51:55.052448	2015-04-06 21:51:55.052448	\N
2503	Grandville Noël	77958	\N	\N	\N	2015-04-06 21:51:55.058029	2015-04-06 21:51:55.058029	\N
2504	Dead Island	77994	\N	\N	\N	2015-04-06 21:51:55.06245	2015-04-06 21:51:55.06245	\N
2505	Grindhouse: Drive In, Bleed Out	78034	\N	\N	\N	2015-04-06 21:51:55.066716	2015-04-06 21:51:55.066716	\N
2506	Itty Bitty Comics: The Mask	78035	\N	\N	\N	2015-04-06 21:51:55.070707	2015-04-06 21:51:55.070707	\N
2507	Resurrectionists	78036	\N	\N	\N	2015-04-06 21:51:55.075074	2015-04-06 21:51:55.075074	\N
2508	1 for $1: Axe Cop: Bad Guy Earth #1	78188	\N	\N	\N	2015-04-06 21:51:55.080477	2015-04-06 21:51:55.080477	\N
2509	The Art of Dragon Age: Inquisition	78189	\N	\N	\N	2015-04-06 21:51:55.087868	2015-04-06 21:51:55.087868	\N
2510	Buffy the Vampire Slayer Season 10: New Rules	78190	\N	\N	\N	2015-04-06 21:51:55.093207	2015-04-06 21:51:55.093207	\N
2511	Dishonored: The Dunwall Archives	78191	\N	\N	\N	2015-04-06 21:51:55.097852	2015-04-06 21:51:55.097852	\N
2512	MIND MGMT: The Magician	78192	\N	\N	\N	2015-04-06 21:51:55.101815	2015-04-06 21:51:55.101815	\N
2513	Tomb Raider: Season of the Witch	78193	\N	\N	\N	2015-04-06 21:51:55.106432	2015-04-06 21:51:55.106432	\N
2514	Axe Cop: The American Choppers	78339	\N	\N	\N	2015-04-06 21:51:55.110915	2015-04-06 21:51:55.110915	\N
2515	Bad Blood	78340	\N	\N	\N	2015-04-06 21:51:55.115546	2015-04-06 21:51:55.115546	\N
2516	Hellboy: Weird Tales	78341	\N	\N	\N	2015-04-06 21:51:55.119444	2015-04-06 21:51:55.119444	\N
2517	Satoshi Kon’s OPUS	78342	\N	\N	\N	2015-04-06 21:51:55.123598	2015-04-06 21:51:55.123598	\N
2518	Tales of An Imperfect Future	78343	\N	\N	\N	2015-04-06 21:51:55.127797	2015-04-06 21:51:55.127797	\N
2519	Terminator Salvation: The Final Battle	78344	\N	\N	\N	2015-04-06 21:51:55.134103	2015-04-06 21:51:55.134103	\N
2520	Vandroid	78345	\N	\N	\N	2015-04-06 21:51:55.138198	2015-04-06 21:51:55.138198	\N
2521	The White Suits	78346	\N	\N	\N	2015-04-06 21:51:55.143582	2015-04-06 21:51:55.143582	\N
2522	The Borgias	78388	\N	\N	\N	2015-04-06 21:51:55.148235	2015-04-06 21:51:55.148235	\N
2523	Arkwright Integral	78389	\N	\N	\N	2015-04-06 21:51:55.152204	2015-04-06 21:51:55.152204	\N
2524	Hellboy and the B.P.R.D.	78537	\N	\N	\N	2015-04-06 21:51:55.156795	2015-04-06 21:51:55.156795	\N
2525	The Mighty	78538	\N	\N	\N	2015-04-06 21:51:55.160871	2015-04-06 21:51:55.160871	\N
2526	Tiger Lung	78539	\N	\N	\N	2015-04-06 21:51:55.164653	2015-04-06 21:51:55.164653	\N
2527	Essential Kurtzman	78588	\N	\N	\N	2015-04-06 21:51:55.16878	2015-04-06 21:51:55.16878	\N
2528	Skyman	78684	\N	\N	\N	2015-04-06 21:51:55.173348	2015-04-06 21:51:55.173348	\N
2529	#1 for $1: Brain Boy	78868	\N	\N	\N	2015-04-06 21:51:55.178336	2015-04-06 21:51:55.178336	\N
2530	Angel & Faith Season 10: Where the River Meets the Sea	78869	\N	\N	\N	2015-04-06 21:51:55.186307	2015-04-06 21:51:55.186307	\N
2531	Athena Voltaire Compendium	78870	\N	\N	\N	2015-04-06 21:51:55.190071	2015-04-06 21:51:55.190071	\N
2532	Brain Boy: The Men From G.E.S.T.A.L.T.	78871	\N	\N	\N	2015-04-06 21:51:55.194792	2015-04-06 21:51:55.194792	\N
2533	Lobster Johnson: Get the Lobster	78872	\N	\N	\N	2015-04-06 21:51:55.199712	2015-04-06 21:51:55.199712	\N
2534	Trilogy USA	78916	\N	\N	\N	2015-04-06 21:51:55.203968	2015-04-06 21:51:55.203968	\N
2535	Dream Logic	78917	\N	\N	\N	2015-04-06 21:51:55.208094	2015-04-06 21:51:55.208094	\N
2536	Kabuki: Circle of Blood	79155	\N	\N	\N	2015-04-06 21:51:55.212506	2015-04-06 21:51:55.212506	\N
2537	The Massive: Sahara	79157	\N	\N	\N	2015-04-06 21:51:55.216999	2015-04-06 21:51:55.216999	\N
2538	X: Better Off Dead	79158	\N	\N	\N	2015-04-06 21:51:55.221114	2015-04-06 21:51:55.221114	\N
2539	It Ate Billy on Christmas	79164	\N	\N	\N	2015-04-06 21:51:55.225325	2015-04-06 21:51:55.225325	\N
2540	Mask: The Night Before Christmas	79184	\N	\N	\N	2015-04-06 21:51:55.230116	2015-04-06 21:51:55.230116	\N
2541	Drug & Drop	79260	\N	\N	\N	2015-04-06 21:51:55.237712	2015-04-06 21:51:55.237712	\N
2542	Lady Killer	79261	\N	\N	\N	2015-04-06 21:51:55.24155	2015-04-06 21:51:55.24155	\N
2543	Buffy The Vampire Slayer Season 9 Library Edition	79411	\N	\N	\N	2015-04-06 21:51:55.246975	2015-04-06 21:51:55.246975	\N
2544	Conan/Red Sonja	79412	\N	\N	\N	2015-04-06 21:51:55.25148	2015-04-06 21:51:55.25148	\N
2545	Plants vs. Zombies: Timepocalypse	79418	\N	\N	\N	2015-04-06 21:51:55.255434	2015-04-06 21:51:55.255434	\N
2546	Veil	79424	\N	\N	\N	2015-04-06 21:51:55.260359	2015-04-06 21:51:55.260359	\N
2547	The Moth	79534	\N	\N	\N	2015-04-06 21:51:55.26514	2015-04-06 21:51:55.26514	\N
2548	#1 for $1: Elfquest #1	79550	\N	\N	\N	2015-04-06 21:51:55.269005	2015-04-06 21:51:55.269005	\N
2549	Abe Sapien: Sacred Places	79551	\N	\N	\N	2015-04-06 21:51:55.273072	2015-04-06 21:51:55.273072	\N
2550	Dream Thief: Escape	79560	\N	\N	\N	2015-04-06 21:51:55.277196	2015-04-06 21:51:55.277196	\N
2551	Ghost: Against the Wilderness	79563	\N	\N	\N	2015-04-06 21:51:55.285984	2015-04-06 21:51:55.285984	\N
2552	King Conan: The Conqueror	79570	\N	\N	\N	2015-04-06 21:51:55.289622	2015-04-06 21:51:55.289622	\N
2553	The Victories: Metahuman	79577	\N	\N	\N	2015-04-06 21:51:55.295202	2015-04-06 21:51:55.295202	\N
2554	Groo: Friends and Foes	79582	\N	\N	\N	2015-04-06 21:51:55.299875	2015-04-06 21:51:55.299875	\N
2555	Fafhrd and the Gray Mouser	79646	\N	\N	\N	2015-04-06 21:51:55.304227	2015-04-06 21:51:55.304227	\N
2556	Captain Midnight: Crash and Burn	79706	\N	\N	\N	2015-04-06 21:51:55.309032	2015-04-06 21:51:55.309032	\N
2557	Eye of Newt	79741	\N	\N	\N	2015-04-06 21:51:55.313233	2015-04-06 21:51:55.313233	\N
2558	Rat God	79878	\N	\N	\N	2015-04-06 21:51:55.317808	2015-04-06 21:51:55.317808	\N
2559	The Goon: Once upon a Hard Time	79880	\N	\N	\N	2015-04-06 21:51:55.32218	2015-04-06 21:51:55.32218	\N
2560	SMITE	79936	\N	\N	\N	2015-04-06 21:51:55.326764	2015-04-06 21:51:55.326764	\N
2561	#1 for $1: Usagi Yojimbo	79978	\N	\N	\N	2015-04-06 21:51:55.331943	2015-04-06 21:51:55.331943	\N
2562	Nickelodeon Avatar: The Last Airbender - The Rift - Library Edition	79983	\N	\N	\N	2015-04-06 21:51:55.336843	2015-04-06 21:51:55.336843	\N
2563	Prometheus: Fire and Stone Omega	80008	\N	\N	\N	2015-04-06 21:51:55.342254	2015-04-06 21:51:55.342254	\N
2564	EI8HT	80110	\N	\N	\N	2015-04-06 21:51:55.347597	2015-04-06 21:51:55.347597	\N
2565	Matt Kindt Builds Characters Sampler	80167	\N	\N	\N	2015-04-06 21:51:55.351391	2015-04-06 21:51:55.351391	\N
2566	Seraphim: 266613336 Wings	80291	\N	\N	\N	2015-04-06 21:51:55.35564	2015-04-06 21:51:55.35564	\N
2567	Mister X: Razed	80327	\N	\N	\N	2015-04-06 21:51:55.360593	2015-04-06 21:51:55.360593	\N
2568	Conan: Shadows Over Kush	80444	\N	\N	\N	2015-04-06 21:51:55.365473	2015-04-06 21:51:55.365473	\N
2569	The Dead Rider: Crown of Souls	80445	\N	\N	\N	2015-04-06 21:51:55.369542	2015-04-06 21:51:55.369542	\N
2570	Emily and the Strangers: Breaking the Record	80446	\N	\N	\N	2015-04-06 21:51:55.37419	2015-04-06 21:51:55.37419	\N
2571	Neverboy	80447	\N	\N	\N	2015-04-06 21:51:55.379217	2015-04-06 21:51:55.379217	\N
2572	The Terminator: Enemy of My Enemy	80448	\N	\N	\N	2015-04-06 21:51:55.384792	2015-04-06 21:51:55.384792	\N
2573	The Shaolin Cowboy: Shemp Buffet	80481	\N	\N	\N	2015-04-06 21:51:55.388967	2015-04-06 21:51:55.388967	\N
2574	Otis Goes Hollywood	80511	\N	\N	\N	2015-04-06 21:51:55.394543	2015-04-06 21:51:55.394543	\N
2575	Brian Wood Builds Characters Sampler	80518	\N	\N	\N	2015-04-06 21:51:55.399515	2015-04-06 21:51:55.399515	\N
2576	Recess Pieces	80570	\N	\N	\N	2015-04-06 21:51:55.403691	2015-04-06 21:51:55.403691	\N
2577	Itty Bitty Comics: Grimmiss Island	80589	\N	\N	\N	2015-04-06 21:51:55.413726	2015-04-06 21:51:55.413726	\N
2578	Pillars Of Eternity Guidebook	80590	\N	\N	\N	2015-04-06 21:51:55.418242	2015-04-06 21:51:55.418242	\N
2579	Angel & Faith: Season 9 Library Edition	80727	\N	\N	\N	2015-04-06 21:51:55.422748	2015-04-06 21:51:55.422748	\N
2580	Baltimore: The Apostle And The Witch of Harju	80728	\N	\N	\N	2015-04-06 21:51:55.428086	2015-04-06 21:51:55.428086	\N
2581	B.P.R.D. Hell On Earth - The Devil's Wings	80729	\N	\N	\N	2015-04-06 21:51:55.434854	2015-04-06 21:51:55.434854	\N
2582	Buffy The Vampire Slayer: Panel To Panel: Seasons 8 & 9	80730	\N	\N	\N	2015-04-06 21:51:55.439024	2015-04-06 21:51:55.439024	\N
2583	The Courageous Princess: Beyond The Hundred Kingdoms	80731	\N	\N	\N	2015-04-06 21:51:55.443291	2015-04-06 21:51:55.443291	\N
2584	Deep Gravity	80732	\N	\N	\N	2015-04-06 21:51:55.448702	2015-04-06 21:51:55.448702	\N
2585	Frankenstein Underground	80733	\N	\N	\N	2015-04-06 21:51:55.453586	2015-04-06 21:51:55.453586	\N
2586	Shaper	80734	\N	\N	\N	2015-04-06 21:51:55.458512	2015-04-06 21:51:55.458512	\N
2587	Tex: The Lonesome Rider	80735	\N	\N	\N	2015-04-06 21:51:55.463022	2015-04-06 21:51:55.463022	\N
2588	Oink: Heaven's Butcher	80771	\N	\N	\N	2015-04-06 21:51:55.467586	2015-04-06 21:51:55.467586	\N
2589	Archie's Pal Jughead Archives	80889	\N	\N	\N	2015-04-06 21:51:55.472003	2015-04-06 21:51:55.472003	\N
2590	Reflections	80930	\N	\N	\N	2015-04-06 21:51:55.47651	2015-04-06 21:51:55.47651	\N
2591	Murder Book	80931	\N	\N	\N	2015-04-06 21:51:55.481413	2015-04-06 21:51:55.481413	\N
2592	Past Aways	80932	\N	\N	\N	2015-04-06 21:51:55.488499	2015-04-06 21:51:55.488499	\N
2593	Blade of the Immortal: Final Curtain	81072	\N	\N	\N	2015-04-06 21:51:55.493075	2015-04-06 21:51:55.493075	\N
2594	Dark Ages	81073	\N	\N	\N	2015-04-06 21:51:55.498124	2015-04-06 21:51:55.498124	\N
2595	Demo	81074	\N	\N	\N	2015-04-06 21:51:55.502486	2015-04-06 21:51:55.502486	\N
2596	ElfQuest: The Final Quest	81075	\N	\N	\N	2015-04-06 21:51:55.506967	2015-04-06 21:51:55.506967	\N
2597	EVE Universe: The Art of New Eden	81076	\N	\N	\N	2015-04-06 21:51:55.511204	2015-04-06 21:51:55.511204	\N
2598	Girlfiend	81077	\N	\N	\N	2015-04-06 21:51:55.514967	2015-04-06 21:51:55.514967	\N
40	RoboCop versus The Terminator	4875	<p style="">A 4 part series featuring Robocop as the forerunner to the Terminators he must stop.</p><h4>Collected Editions</h4><ul><li><a href="/robocop-versus-the-terminator/4050-29963/" data-ref-id="4050-29963">Robocop versus The Terminator</a></li><li><a href="/robocop-vs-the-terminator-gallery-edition/4050-75350/" data-ref-id="4050-75350">RoboCop vs. the Terminator Gallery Edition</a></li></ul>	http://static.comicvine.com/uploads/scale_small/3/38826/845219-0000000000000.jpg	http://static.comicvine.com/uploads/scale_small/3/38826/845219-0000000000000.jpg	2015-04-06 21:47:41.683707	2015-04-07 20:04:37.691525	1992
1	Michael Avon Oeming’s The Victories	2637	<p style="">"<em>Not long from now, all that will stand between you and evil are the Victories—six heroes sworn to protect us from crime, corruption, and the dark. As one member cracks down on the violence, he discovers himself touched by a painful past through the psychic powers of Link. Will this trauma cause him to self-destruct or continue the fight</em>?"</p><p style="">Collected in <a href="//www.comicvine.com/michael-avon-oeming-s-the-victories-touched/4050-63287/" data-ref-id="4050-63287">Michael Avon Oeming’s The Victories: Touched</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2531161-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2531161-01.jpg	2015-04-06 21:40:54.25414	2015-04-07 19:45:28.009882	2012
2599	Pop	81078	<p style="">Trade paperback collecting <a href="/p-o-p/4050-76624/" data-ref-id="4050-76624">Pop</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/4479770-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/4479770-01.jpg	2015-04-06 21:51:55.519522	2015-04-07 19:49:43.96287	2015
2600	The Witcher: Fox Children	81079	<p style="">Five issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/4479773-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/4479773-01.jpg	2015-04-06 21:51:55.523759	2015-04-07 19:49:44.445825	2015
2601	Groo vs. Conan	81116	<p style="">Collects <a href="/groo-vs-conan/4050-75890/" data-ref-id="4050-75890">Groo vs. Conan</a>.</p>	http://static.comicvine.com/uploads/scale_small/7/71975/4480020-9714885745-15636.jpg	http://static.comicvine.com/uploads/scale_small/7/71975/4480020-9714885745-15636.jpg	2015-04-06 21:51:55.528196	2015-04-07 19:49:44.745366	2015
2602	Empowered Unchained	81117	<p style="">Manga collecting <a href="/empowered-special/4050-30237/" data-ref-id="4050-30237">Empowered Special</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/4480066-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/4480066-01.jpg	2015-04-06 21:51:55.537264	2015-04-07 19:49:45.2717	2015
2603	The Goon: Occasion of Revenge	81118	<p style="">Trade paperback collecting <a href="/the-goon-occasion-of-revenge/4050-75866/" data-ref-id="4050-75866">The Goon: Occasion of Revenge</a>.</p>	http://static.comicvine.com/uploads/scale_small/7/71975/4480060-4103271959-26362.jpg	http://static.comicvine.com/uploads/scale_small/7/71975/4480060-4103271959-26362.jpg	2015-04-06 21:51:55.540814	2015-04-07 19:49:45.57544	2015
2	Dark Horse Presents	3739	<p style="">Dark Horse Presents is an anthology series, each issue collecting several new short stories.  Some stories are one shots while many span several issues.  DHP has been used to introduce new writers and characters, as well as telling short tales of existing characters.</p>	http://static.comicvine.com/uploads/scale_small/0/4/23625-3739-26340-1-dark-horse-presents.jpg	http://static.comicvine.com/uploads/scale_small/0/4/23625-3739-26340-1-dark-horse-presents.jpg	2015-04-06 21:40:54.267858	2015-04-07 20:04:24.37597	1986
3	Ghost	3774	<p style="">Volume 3.</p><p style="">Four-part mini-series starring <a href="/ghost/4005-25085/" data-ref-id="4005-25085">Ghost</a> written by Kelly Sue DeConnick and illustrated by Phil Noto. The #0 issue collects a story and prequel that was originally published in Dark Horse Comics' monthly anthology title <a href="//www.comicvine.com/dark-horse-presents/4050-39855/" data-ref-id="4050-39855">Dark Horse Presents</a> - DHP issues #13-15 (June-August 2012).</p><p style=""><em>Former journalist Vaughn Barnes has been reduced to moonlighting as cameraman for the shoddy paranormal-investigation cable TV show Phantom Finders. But when a curious device summons the specter of a beautiful, translucent woman, Vaughn is plunged into a mystery of criminal intrigue that spans two worlds! Kelly Sue DeConnick and Phil Noto launch their exciting new take on one of Dark Horse's most popular characters ever!</em></p><p style="">Collected in <a href="//www.comicvine.com/ghost-in-the-smoke-and-din/4050-65917/" data-ref-id="4050-65917">Ghost: In The Smoke And Din</a>.</p>	http://static.comicvine.com/uploads/scale_small/8/83676/2663325-22_498.jpg	http://static.comicvine.com/uploads/scale_small/8/83676/2663325-22_498.jpg	2015-04-06 21:40:54.278187	2015-04-07 20:04:24.743979	2012
4	The American	3918	<p style="">Black and white series.</p>	http://static.comicvine.com/uploads/scale_small/0/4/25548-3918-28396-1-american-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/25548-3918-28396-1-american-the.jpg	2015-04-06 21:40:54.283765	2015-04-07 20:04:25.199529	1987
5	Concrete	3919	<p style="">Paul Chadwick's Concrete won the 1987 and 1988 <a data-ref-id="4015-52148" href="/eisner-awards/4015-52148/" slug="eisner-awards">Eisner Awards</a> for Best Black and White Series.</p>	http://static.comicvine.com/uploads/scale_small/0/4/25134-3919-27947-1-concrete.jpg	http://static.comicvine.com/uploads/scale_small/0/4/25134-3919-27947-1-concrete.jpg	2015-04-06 21:40:54.288255	2015-04-07 20:04:25.547454	1987
7	Aliens	4132	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-21126" href="/aliens-outbreak/4050-21126/" slug="aliens-outbreak">Aliens: Outbreak</a></li><li><a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a></li></ul>	http://static.comicvine.com/uploads/scale_small/8/84205/4262143-aliens1nm92m112.jpg	http://static.comicvine.com/uploads/scale_small/8/84205/4262143-aliens1nm92m112.jpg	2015-04-06 21:40:54.298539	2015-04-07 20:04:26.160943	1988
8	Doc Stearn...Mr Monster	4134	\N	http://static.comicvine.com/uploads/scale_small/0/4/26289-4134-29196-1-doc-stearn--mr-mons.jpg	http://static.comicvine.com/uploads/scale_small/0/4/26289-4134-29196-1-doc-stearn--mr-mons.jpg	2015-04-06 21:40:54.302957	2015-04-07 20:04:26.488387	1988
9	Flaming Carrot Comics	4135	<a data-ref-id="4005-24092" href="/flaming-carrot/4005-24092/">Flaming Carrot</a>, a magnificent creation of the legendary man known as <a data-ref-id="4040-24091" href="/bob-burden/4040-24091/">Bob Burden</a> is best renown for his solo series, <a data-ref-id="4050-3383" href="/flaming-carrot-comics/4050-3383/">Flaming Carrot Comics</a> which was first published by Aardvark-Vanaheim. Of course like all good things, things wouldn't last and after a five issue run the title was given to Renegade (<a data-ref-id="4050-3579" href="/flaming-carrot-comics/4050-3579/">Flaming Carrot Comics</a>) and despite that previous insinuation at the beginning of this sentence the series was as good as ever, continuing all the way up until the seventeenth issue. Finally it made it's final transition of publishers unto Dark Horse (<a data-ref-id="4050-4135" href="/flaming-carrot-comics/4050-4135/">Flaming Carrot Comics</a>) where it remained until its thirty-first issue. The series was partially collected by Dark Horse (<a data-ref-id="4050-6059" href="/flaming-carrot-comics-collected-album/4050-6059/">Flaming Carrot Comics Collected Album</a>) and spawned an annual (<a data-ref-id="4050-23178" href="/flaming-carrot-comics-annual/4050-23178/">Flaming Carrot Comics Annual</a>) and later a special, <a data-ref-id="4050-20932" href="/flaming-carrot-comics-special/4050-20932/">Flaming Carrot Comics Special</a> by Image (under their Desperado imprint) who now have the rights of the comic.	http://static.comicvine.com/uploads/scale_small/0/4/26710-4135-29648-1-flaming-carrot-comic.jpg	http://static.comicvine.com/uploads/scale_small/0/4/26710-4135-29648-1-flaming-carrot-comic.jpg	2015-04-06 21:40:54.310364	2015-04-07 20:04:26.876241	1984
11	The Abyss	4294	<p style="">Adaptation of the James Cameron film, this was the first film he directed since Aliens...which Dark Horse had continued through a sequel comic miniseries that concluded the same year this comic was launched.</p>	http://static.comicvine.com/uploads/scale_small/0/4/27620-4294-30640-1-abyss-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/27620-4294-30640-1-abyss-the.jpg	2015-04-06 21:42:55.462395	2015-04-07 20:04:27.499478	1989
12	Aliens	4295	<p style="">Aliens: Book II</p><h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-21125" href="/aliens-nightmare-asylum/4050-21125/" slug="aliens-nightmare-asylum">Aliens: Nightmare Asylum</a></li><li><a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/28438-4295-31559-1-aliens.jpg	http://static.comicvine.com/uploads/scale_small/0/4/28438-4295-31559-1-aliens.jpg	2015-04-06 21:42:55.467041	2015-04-07 20:04:27.797413	1989
13	Cheval Noir	4297	<p style="">Dark Horse anthology translating international comics for an American audience.</p>	http://static.comicvine.com/uploads/scale_small/0/4/28365-4297-31485-1-cheval-noir.jpg	http://static.comicvine.com/uploads/scale_small/0/4/28365-4297-31485-1-cheval-noir.jpg	2015-04-06 21:42:55.475653	2015-04-07 20:04:28.277019	1989
15	Spacehawk	4302	\N	http://static.comicvine.com/uploads/scale_small/0/4/28906-4302-32100-1-spacehawk.jpg	http://static.comicvine.com/uploads/scale_small/0/4/28906-4302-32100-1-spacehawk.jpg	2015-04-06 21:42:55.483844	2015-04-07 20:04:28.810297	1989
16	Aliens: Earth War	4462	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-21121" href="/aliens-female-war/4050-21121/" slug="aliens-female-war">Aliens: Female War</a></li><li><a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/29574-4462-32866-1-aliens-earth-war.jpg	http://static.comicvine.com/uploads/scale_small/0/4/29574-4462-32866-1-aliens-earth-war.jpg	2015-04-06 21:42:55.488526	2015-04-07 20:04:29.194248	1990
18	Give Me Liberty	4467	<p style="">Collected in <a data-ref-id="4050-43156" href="/give-me-liberty/4050-43156/" slug="give-me-liberty">Give Me Liberty</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/29493-4467-32783-1-give-me-liberty.jpg	http://static.comicvine.com/uploads/scale_small/0/4/29493-4467-32783-1-give-me-liberty.jpg	2015-04-06 21:42:55.497215	2015-04-07 20:04:29.769601	1990
41	Terminator: Endgame	4877	<p style="">Collected in <a data-ref-id="4050-48815" href="/the-terminator-endgame/4050-48815/" slug="the-terminator-endgame">The Terminator: Endgame</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/32371-4877-36104-1-terminator-endgame-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32371-4877-36104-1-terminator-endgame-.jpg	2015-04-06 21:47:41.691825	2015-04-07 20:04:37.996798	1992
162	Decapitator	11243	\N	http://static.comicvine.com/uploads/scale_small/0/4/65734-11243-98731-1-decapitator.jpg	http://static.comicvine.com/uploads/scale_small/0/4/65734-11243-98731-1-decapitator.jpg	2015-04-06 21:51:03.367998	2015-04-07 20:05:19.911307	1998
19	The Terminator	4469	<p style=""><i>When the first Terminator robot fails to accomplish its mission, a new squad of Terminators are "born" and sent back in time. They're followed by colonel Mary Randall and her troop of soldiers, all fighting to keep their future from ever happening. If one Terminator is hard to beat, what happens when you're up against three?</i></p><p style="">Collected in <a data-ref-id="4050-48817" href="/the-terminator-tempest/4050-48817/" slug="the-terminator-tempest">The Terminator: Tempest</a>.</p><p style=""><b>NOTE:</b> Indicia titled as "The Terminator"</p>	http://static.comicvine.com/uploads/scale_small/8/84205/4100937-terminator1nm92m091.jpg	http://static.comicvine.com/uploads/scale_small/8/84205/4100937-terminator1nm92m091.jpg	2015-04-06 21:42:55.500937	2015-04-07 20:04:30.219544	1990
20	Badlands	4634	<p style=""><i>Conrad "Connie" Bremen is an ex-con carrying the stench of a sordid, secret past. Connie just wants to get on with his life, but he's attracting the attention of all the wrong people: the Mob, the CIA, the FBI -- and the nymphomaniac daughter of a Texas millionaire. Everyone has plans for Connie, whether he likes it or not. And some of those plans include the murder of a president. True assassins are made, not born. For Connie Bremen the road to Dallas begins and ends here, in the Badlands.</i></p><p style="">Collected in <a data-ref-id="4050-44112" href="/badlands-tpb/4050-44112/" slug="badlands-tpb">Badlands</a> (1993). Also in <a data-ref-id="4050-48643" href="/badlands/4050-48643/" slug="badlands">Badlands</a> (2002, AIT/Planet Lar)</p>	http://static.comicvine.com/uploads/scale_small/0/4/30857-4634-34347-1-badlands.jpg	http://static.comicvine.com/uploads/scale_small/0/4/30857-4634-34347-1-badlands.jpg	2015-04-06 21:42:55.504921	2015-04-07 20:04:30.567116	1991
22	Indiana Jones and the Fate of Atlantis	4638	\N	http://static.comicvine.com/uploads/scale_small/0/4/30493-4638-33937-1-indiana-jones-and-th.jpg	http://static.comicvine.com/uploads/scale_small/0/4/30493-4638-33937-1-indiana-jones-and-th.jpg	2015-04-06 21:46:54.830928	2015-04-07 20:04:31.361156	1991
23	Ironhand of Almuric	4639	<p style="">Four issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3608492-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3608492-01.jpg	2015-04-06 21:46:54.835336	2015-04-07 20:04:31.658103	1991
24	Terminator: Secondary Objectives	4641	<p style="">A four-issue miniseries published by Dark Horse Comics.</p><p style="">Collected in <a data-ref-id="4050-48816" href="/the-terminator-secondary-objectives/4050-48816/" slug="the-terminator-secondary-objectives">The Terminator: Secondary Objectives</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/30869-4641-34360-1-terminator-secondar.jpg	http://static.comicvine.com/uploads/scale_small/0/4/30869-4641-34360-1-terminator-secondar.jpg	2015-04-06 21:46:54.839523	2015-04-07 20:04:32.059782	1991
26	Thing From Another World	4643	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/30276-4643-33680-1-thing-from-another-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/30276-4643-33680-1-thing-from-another-.jpg	2015-04-06 21:46:54.847283	2015-04-07 20:04:32.65581	1991
27	Venus Wars	4644	<p style="">English translation of the Japanese manga Vinasu Senki in standard comic form.</p>	http://static.comicvine.com/uploads/scale_small/0/4/30670-4644-34127-1-venus-wars-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/30670-4644-34127-1-venus-wars-the.jpg	2015-04-06 21:46:54.851326	2015-04-07 20:04:33.035071	1991
28	Alien³	4859	<p style="">The comic book adaptation of the <a href="//www.comicvine.com/alien-3/4025-549/" data-ref-id="4025-549">third <em>Alien</em> movie</a>.</p><p style="">This mini-series has only had one printing so far, not even having been reprinted for a trade paperback or otherwise.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/1985331-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/1985331-01.jpg	2015-04-06 21:46:54.85629	2015-04-07 20:04:33.333277	1992
29	Aliens: Hive	4860	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-21123" href="/aliens-harvest/4050-21123/" slug="aliens-harvest">Aliens: Harvest</a></li><li><a data-ref-id="4050-56493" href="/aliens-hive/4050-56493/" slug="aliens-hive">Aliens: Hive</a></li><li><a data-ref-id="4000-120334" href="/aliens-omnibus-volume-2/4000-120334/" slug="aliens-omnibus-volume-2">Aliens Omnibus volume 2</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/31707-4860-35314-1-aliens-hive.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31707-4860-35314-1-aliens-hive.jpg	2015-04-06 21:46:54.862715	2015-04-07 20:04:33.610082	1992
31	Dark Horse Comics	4864	\N	http://static.comicvine.com/uploads/scale_small/0/4/31574-4864-35159-1-dark-horse-comics.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31574-4864-35159-1-dark-horse-comics.jpg	2015-04-06 21:46:54.869265	2015-04-07 20:04:34.623092	1992
32	Deadface: Earth, Water, Air, and Fire	4865	\N	http://static.comicvine.com/uploads/scale_small/0/4/32156-4865-35855-1-deadface-earth-wat.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32156-4865-35855-1-deadface-earth-wat.jpg	2015-04-06 21:47:41.636305	2015-04-07 20:04:34.916908	1992
34	The Eyeball Kid	4867	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/31882-4867-35525-1-eyeball-kid-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/31882-4867-35525-1-eyeball-kid-the.jpg	2015-04-06 21:47:41.652746	2015-04-07 20:04:35.821501	1992
35	Grendel: War Child	4868	<p style="">War Child is a story about Grendel Prime, a cyborg created and trained by the Grendel Kahn, Orion Assante. Grendel Prime's purpose is to protect Assante's sole heir in the event of his death. Prime must protect 10 year old Jupiter Assante from zombies, mutants, rednecks, bikers, vampires, and worst of all his step-mother Laurel Kennedy Assante.</p><p style="">The War Child series was intended by Wagner to continue the Comico series <a data-ref-id="4050-3699" href="/grendel/4050-3699/" slug="grendel">Grendel</a> as issues 41-51, chronicling the rise of Jupiter Assante. Comico shutting down ended the series, which would eventually be published by Dark Horse in this volume.</p><p style="">Collected in <a data-ref-id="4000-323340" href="/grendel-warchild-tpbhc/4000-323340/" slug="grendel-warchild-tpbhc">Grendel: Warchild</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787591-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787591-01.jpg	2015-04-06 21:47:41.663124	2015-04-07 20:04:36.154897	1992
37	Herbie	4870	\N	http://static.comicvine.com/uploads/scale_small/0/4/45484-4870-52824-1-herbie.jpg	http://static.comicvine.com/uploads/scale_small/0/4/45484-4870-52824-1-herbie.jpg	2015-04-06 21:47:41.671359	2015-04-07 20:04:36.715607	1992
38	Nexus Alien Justice	4871	\N	http://static.comicvine.com/uploads/scale_small/0/4/32683-4871-36465-1-nexus-alien-justice.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32683-4871-36465-1-nexus-alien-justice.jpg	2015-04-06 21:47:41.675392	2015-04-07 20:04:37.005811	1992
39	Nexus The Liberator	4872	\N	http://static.comicvine.com/uploads/scale_small/1/11307/245657-4872-35980-2-nexus-the-liberator.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/245657-4872-35980-2-nexus-the-liberator.jpg	2015-04-06 21:47:41.679227	2015-04-07 20:04:37.317093	1992
128	The Hammer: The Outsider	6539	<p style="">Three issue mini-series.</p><p style="">Collected in <a href="/the-hammer-kelley-jones-complete-series/4050-78124/" data-ref-id="4050-78124">The Hammer: Kelley Jones' Complete Series</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/41427-6539-46763-1-hammer-the-outsider.jpg	http://static.comicvine.com/uploads/scale_small/0/4/41427-6539-46763-1-hammer-the-outsider.jpg	2015-04-06 21:51:03.205561	2015-04-07 20:05:07.248122	1999
43	Thing From Another World: Climate of Fear	4879	<p style="" data-right-indent="0" data-left-indent="0"><i>They found it frozen in the Antarctic: a shapeshifting alien killer capable of duplicating any being it comes into contact with. Released from its icy prison, The Thing went on a rampage of terror and destruction until one man, MacReady, thought he had destroyed it.</i></p><p style="" data-right-indent="0" data-left-indent="0"><i>He was wrong. He's free of the Antarctic at last, but so is The Thing. Now, in a South American military base, the nightmare begins again, and all humanity is in danger. But how can you kill a monster who could beanyone -- even MacReady?</i></p><p style="" data-right-indent="0" data-left-indent="0">Takes place after <a href="/thing-from-another-world/4050-4643/" data-ref-id="4050-4643">Thing From Another World.</a></p><p style="" data-right-indent="0" data-left-indent="0">Collected in <a href="/the-thing-from-another-world-and-climate-of-fear/4050-48818/" data-ref-id="4050-48818">The Thing From Another World And Climate Of Fear</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/32225-4879-35930-1-thing-from-another-w.jpg	http://static.comicvine.com/uploads/scale_small/0/4/32225-4879-35930-1-thing-from-another-w.jpg	2015-04-06 21:47:41.700151	2015-04-07 20:04:38.566935	1992
45	Concrete: Eclectica	5105	\N	http://static.comicvine.com/uploads/scale_small/0/4/33170-5105-37035-1-concrete-eclectica.jpg	http://static.comicvine.com/uploads/scale_small/0/4/33170-5105-37035-1-concrete-eclectica.jpg	2015-04-06 21:47:41.708601	2015-04-07 20:04:39.136043	1993
46	Concrete: Killer Smile	5106	\N	http://static.comicvine.com/uploads/scale_small/0/4/35185-5106-39306-1-concrete-killer-smi.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35185-5106-39306-1-concrete-killer-smi.jpg	2015-04-06 21:47:41.713085	2015-04-07 20:04:39.401452	1993
47	Grendel Tales: Four Devils, One Hell	5107	<p style="" data-right-indent="0" data-left-indent="0">The first of the <em>Grendel Tales</em> series of miniseries, following on the heels of <em><a href="/grendel-war-child/4050-4868/" data-ref-id="4050-4868">Grendel: War Child</a></em>.  The next <em>Grendel Tales</em> miniseries <a href="/grendel-tales-devils-hammer/4050-35358/" data-ref-id="4050-35358">Devil's Hammer.</a></p><p style="" data-right-indent="0" data-left-indent="0">Collected in <a href="/grendel-tales-four-devils-one-hell-tpb/4000-323277/" data-ref-id="4000-323277">G<em>rendel Tales: Four Devils, One Hell</em></a><em>.</em></p><p style="" data-right-indent="0" data-left-indent="0">The <em>Grendel Tales</em> series are notable for being written by people other than <a href="//www.comicvine.com/matt-wagner/4040-8310/" data-ref-id="4040-8310">Matt Wagner</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/33755-5107-37686-1-grendel-tales-four-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/33755-5107-37686-1-grendel-tales-four-.jpg	2015-04-06 21:47:41.716637	2015-04-07 20:04:39.718353	1993
49	The Shadow: In the Coils of Leviathan	5113	<p style="">Collected in <a data-ref-id="4050-48814" href="/the-shadow-in-the-coils-of-leviathan/4050-48814/" slug="the-shadow-in-the-coils-of-leviathan">The Shadow: In the Coils of Leviathan</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/33922-5113-37878-1-shadow-in-the-coils.jpg	http://static.comicvine.com/uploads/scale_small/0/4/33922-5113-37878-1-shadow-in-the-coils.jpg	2015-04-06 21:47:41.724779	2015-04-07 20:04:40.562993	1993
50	Sin City: A Dame to Kill For	5114	<p style="">A Dame To Kill For is the second story arc in Frank Miller's Sin City universe. It introduces us to the character of Dwight McCarthy, a man struggling to control a lot of pent-up rage and to figure out his place in Sin City. He impulsively gets involved again with his ex-wife Ava Lord who betrayed him. His obsession causes his life to quickly spiral out of control in this powerful tale of lust and revenge.<br/>The story makes use of the fully realized universe of Sin City and loops in Marv from <a data-ref-id="4050-21649" href="/sin-city-the-hard-goodbye/4050-21649/" slug="sin-city-the-hard-goodbye"> The Hard Goodbye</a> and the Girls from Old Town.</p>	http://static.comicvine.com/uploads/scale_small/0/4/34030-5114-38001-1-sin-city-a-dame-to-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34030-5114-38001-1-sin-city-a-dame-to-.jpg	2015-04-06 21:47:41.72874	2015-04-07 20:04:40.876332	1993
52	Atlas	5372	\N	http://static.comicvine.com/uploads/scale_small/0/4/34538-5372-38581-1-atlas.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34538-5372-38581-1-atlas.jpg	2015-04-06 21:49:36.36178	2015-04-07 20:04:41.585888	1994
53	Babe	5373	\N	http://static.comicvine.com/uploads/scale_small/0/4/35182-5373-39303-1-babe.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35182-5373-39303-1-babe.jpg	2015-04-06 21:49:36.375059	2015-04-07 20:04:41.847676	1994
54	Badger: Shattered Mirror	5374	\N	http://static.comicvine.com/uploads/scale_small/0/4/35290-5374-39414-1-badger-shattered-mi.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35290-5374-39414-1-badger-shattered-mi.jpg	2015-04-06 21:49:36.380198	2015-04-07 20:04:42.151431	1994
56	Classic Star Wars: A New Hope	5376	\N	http://static.comicvine.com/uploads/scale_small/0/4/35049-5376-39152-1-classic-star-wars-a.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35049-5376-39152-1-classic-star-wars-a.jpg	2015-04-06 21:49:36.389264	2015-04-07 20:04:42.841921	1994
57	Classic Star Wars: The Early Adventures	5377	\N	http://static.comicvine.com/uploads/scale_small/0/4/35312-5377-39442-1-classic-star-wars-t.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35312-5377-39442-1-classic-star-wars-t.jpg	2015-04-06 21:49:36.395028	2015-04-07 20:04:43.221588	1994
58	Classic Star Wars: The Empire Strikes Back	5378	\N	http://static.comicvine.com/uploads/scale_small/0/4/35313-5378-39443-1-classic-star-wars-t.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35313-5378-39443-1-classic-star-wars-t.jpg	2015-04-06 21:49:36.399192	2015-04-07 20:04:43.49919	1994
60	Danger Unlimited	5380	<p style=""> This series was admittedly written to satiate <a href="/john-byrne/4040-1770/" data-ref-id="4040-1770">John Byrne</a>'s desire to return to the <a href="/fantastic-four/4060-3804/" data-ref-id="4060-3804">Fantastic Four</a>. Byrne felt at the time that Marvel's First family had strayed far away from who they really were, so he created Danger Unlimited as part of the new creator controlled experiment "Legend Comics" to fill the void.</p><p style=""> </p><p style=""> Unfortunately , and due in part to the collapse of the speculation market in the mid 90's, sales were not what they were expected to be , and John Byrne decided it was not profitable enough to continue. All four issues have a back up story featuring the <a href="/captain-america/4005-1442/" data-ref-id="4005-1442">Captain America </a>like character "<a href="/torch-of-liberty/4005-59880/" data-ref-id="4005-59880">Torch Of Liberty</a>"</p>	http://static.comicvine.com/uploads/scale_small/0/4/34540-5380-38583-1-danger-unlimited.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34540-5380-38583-1-danger-unlimited.jpg	2015-04-06 21:49:36.404941	2015-04-07 20:04:44.227849	1994
61	Dark Horse Down Under	5381	\N	http://static.comicvine.com/uploads/scale_small/0/4/35051-5381-39154-1-dark-horse-down-unde.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35051-5381-39154-1-dark-horse-down-unde.jpg	2015-04-06 21:49:36.408161	2015-04-07 20:04:44.509935	1994
63	Grendel Tales: Devils and Deaths	5384	<p style="">Part of the Grendel Tales series of miniseries.  It comes after <a href="/grendel-tales-the-devil-in-our-midst/4050-5386/" data-ref-id="4050-5386">The Devil in Our Midst</a> and before <a href="/grendel-tales-homecoming/4050-5385/" data-ref-id="4050-5385">Homecoming</a>.</p><p style="">Collected in <a href="/grendel-tales-devils-and-deaths-tpb/4000-323262/" data-ref-id="4000-323262">Grendel Tales: Devils and Deaths</a>, along with its sequel, 1995's <a href="/grendel-tales-devils-choices-1/4000-127570/" data-ref-id="4000-127570">Grendel Tales: Devil's Choices</a>, this two issue story was written by <a href="/darko-macan/4040-46598/" data-ref-id="4040-46598">Darko Macan</a> and illustrated by the late Edvin Biuković.</p><p style="">Set in a future in which the ethos of the original <a href="//www.comicvine.com/grendel/4005-29748/" data-ref-id="4005-29748">Grendel</a> are used to guide a dystopian tribal society, the protagonist is <a href="/drago/4005-26068/" data-ref-id="4005-26068">Drago</a> of the Grendel Agram Clan. While on a patrol to find thieves responsible for stealing machine parts, Drago and three other warriors discover children in the aftermath of a Karanitani raid. They resolve to take the children back to their clan until the refugees all die mysteriously, contaminated by a biological/radioactive weapon identified only as "forbidden weapons." Drago is selected to return to the Agram clan and warn the half-blind Grendel-General Vlado that the Karanitani are using these weapons, while the others commit ritual suicide in order to have "warriors' deaths."</p><p style="">Meanwhile, a simple-minded creature created by the same radiation kills some of the Agram's livestock for food. When Petar, the Grendel assigned to shepherd the livestock, attacks the man-beast, it retaliates and smashes his head with a rock. The village mayor, Three-Teeth (later Two-Teeth, and still later Mayor No-Teeth), conscripts the Grendels to kill the monster.</p><p style="">Drago, having returned and warned of the Karanitani weapons, volunteers to deal with the monster and die an honorable death, rather than let his illness enfeeble him and kill him. Vlado reluctantly agrees, though he does not believe in Drago's success. The Grendel-General secretly plans for <a href="/zora/4005-26067/" data-ref-id="4005-26067">Zora</a>, his lieutenant, to follow Drago and kill the creature and put Drago out of his misery. Drago makes his farewells to his younger brother, <a href="//www.comicvine.com/goran/4005-26073/" data-ref-id="4005-26073">Goran</a>. Zora gives Drago a canteen that she claims belonged to her father as an apparent gesture of peace between the two warriors. However, it contains a transmitter to allow her to track the ailing Grendel.</p><p style="">The ending is heartbreaking, as death makes its rounds, leaving only sorrow in its wake. In the end, Goran takes up his brother's sword and the Agram have a new leader, their stories continued in the next series.</p><p style="">These two issues also feature a <a href="//www.comicvine.com/grendel-prime/4005-25136/" data-ref-id="4005-25136">Grendel-Prime</a> backup story, written and illustrated by <a href="//www.comicvine.com/matt-wagner/4040-8310/" data-ref-id="4040-8310">Matt Wagner</a>, the creator of Grendel.</p>	http://static.comicvine.com/uploads/scale_small/0/4/35532-5384-39678-1-grendel-tales-devil.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35532-5384-39678-1-grendel-tales-devil.jpg	2015-04-06 21:49:36.419431	2015-04-07 20:04:45.17218	1994
64	Grendel Tales: Homecoming	5385	<p style="">Part of the <em>Grendel Tales</em> series of miniseries.  It comes after <a href="/grendel-tales-devils-and-deaths/4050-5384/" data-ref-id="4050-5384">Devils and Deaths</a> and before <a href="/grendel-tales-devils-choices/4050-21217/" data-ref-id="4050-21217">Devil's Choices</a>.</p><p style="">Susan from <a href="/grendel-war-child/4050-4868/" data-ref-id="4050-4868">Grendel: Warchild</a> is coming home. The people aren't as she remembers them, and home is more brutal than ever. She is reunited with Avril, a beautiful face from her past. The two get in trouble with the local gangs, and Susan is forced to come to grips with her nature as a Grendel.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787637-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787637-01.jpg	2015-04-06 21:49:36.423251	2015-04-07 20:04:45.494358	1994
65	Grendel Tales: The Devil in Our Midst	5386	<p style="">Part of the Grendel Tales series of miniseries, it comes after <a href="/grendel-tales-devils-hammer/4050-35358/" data-ref-id="4050-35358">Devil's Hammer</a> and before <a href="/grendel-tales-devils-and-deaths/4050-5384/" data-ref-id="4050-5384">Devils and Deaths</a>.</p><p style="">Collected in <a href="/grendel-tales-the-devil-in-our-midst-tpb/4000-323287/" data-ref-id="4000-323287">Grendel Tales: The Devil In Our Midst</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/34890-5386-38968-1-grendel-tales-the-d.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34890-5386-38968-1-grendel-tales-the-d.jpg	2015-04-06 21:49:36.427967	2015-04-07 20:04:45.836531	1994
66	Hellboy: Seed of Destruction	5388	<p style="">First Hellboy-mini.</p><p style="">Next one: <a href="/hellboy-wake-the-devil/4050-5835/" data-ref-id="4050-5835">Wake the devil</a></p><p style="">Each issue contains 2 Stories:</p><p style="">-Seed of Destruction</p><p style="">featuring Hellboy</p><p style="">-Who are Monkeyman and O'Brien</p><p style="">featuring Monkeyman and O'Brien</p>	http://static.comicvine.com/uploads/scale_small/3/31666/2543443-cover.jpg	http://static.comicvine.com/uploads/scale_small/3/31666/2543443-cover.jpg	2015-04-06 21:49:36.432115	2015-04-07 20:04:46.190283	1994
68	Jonny Demon	5390	\N	http://static.comicvine.com/uploads/scale_small/0/4/34929-5390-39019-1-jonny-demon.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34929-5390-39019-1-jonny-demon.jpg	2015-04-06 21:49:36.4401	2015-04-07 20:04:46.740683	1994
69	Madman Comics	5391	<p style="">Originally published through <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics">Dark Horse Comics</a>.</p><p style=""><b>Collected Editions</b></p><p style="">By Dark Horse</p><ul><li><a data-ref-id="4000-364260" href="/complete-madman-volume-1/4000-364260/" slug="complete-madman-volume-1">Vol. 1: Crash Course for the Ravers!</a> (#1-5)</li><li><a data-ref-id="4000-332891" href="/complete-madman-volume-2/4000-332891/" slug="complete-madman-volume-2">Vol. 2</a> (#6-10)</li><li><a data-ref-id="4000-364261" href="/complete-madman-volume-3/4000-364261/" slug="complete-madman-volume-3">Vol. 3: The Exit of Dr. Boiffard</a> (#11-15)</li><li><a data-ref-id="4000-364262" href="/complete-madman-volume-4/4000-364262/" slug="complete-madman-volume-4">Vol. 4: Heaven and Hell</a> (#16-20)</li></ul><p style="">By <a data-ref-id="4010-513" href="/image/4010-513/" slug="image">Image</a></p><p style=""><a data-ref-id="4050-29781" href="/madman/4050-29781/" slug="madman">Madman</a></p><ul><li><a data-ref-id="4000-183261" href="/madman-vol-1/4000-183261/" slug="madman-vol-1">Vol. 1</a> (<a data-ref-id="4050-4923" href="/madman/4050-4923/" slug="madman">Madman</a> #1-3, <a data-ref-id="4050-36006" href="/madman-adventures/4050-36006/" slug="madman-adventures">Madman Adventures</a> #1-3)</li><li><a data-ref-id="4000-183363" href="/madman-vol-2/4000-183363/" slug="madman-vol-2">Vol. 2</a> (#1-11)</li><li><a data-ref-id="4000-183364" href="/madman-vol-3/4000-183364/" slug="madman-vol-3">Vol. 3</a> (#12-20 and <a data-ref-id="4050-44392" href="/madman-king-size-super-groovy-special/4050-44392/" slug="madman-king-size-super-groovy-special">Madman King-Size Super Groovy Special</a>)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/34802-5391-38877-1-madman-comics.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34802-5391-38877-1-madman-comics.jpg	2015-04-06 21:49:36.444473	2015-04-07 20:04:47.120514	1994
70	Martha Washington Goes to War	5392	\N	http://static.comicvine.com/uploads/scale_small/0/4/34930-5392-39020-1-martha-washington-go.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34930-5392-39020-1-martha-washington-go.jpg	2015-04-06 21:49:36.450739	2015-04-07 20:04:47.385147	1994
71	Shadow Empires: Faith Conquers	5393	\N	http://static.comicvine.com/uploads/scale_small/0/4/35418-5393-39554-1-shadow-empires-fait.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35418-5393-39554-1-shadow-empires-fait.jpg	2015-04-06 21:49:36.455315	2015-04-07 20:04:47.665534	1994
73	Sin City: The Big Fat Kill	5397	<p style="">This is Frank Miller's third installment of the Sin City epic.</p><p style="">The Big Fat Kill, is about a war between The Cops, Old Town and The Mob.</p><p style="">A off duty Cop (Jack Rafferty) gets chased into Old Town with his four friends, while he is there he attempts to pick up a off duty prostitute, she tells him that she works the day shift and that him and his mates should go down to a local strip joint he points his gun at her and tells her to get in the car.</p><p style="">Deadly little Miho takes "care" of them. when searching the bodies they find an "Atom Bomb" jackyboy was a COP.</p><p style="">Their is a truce between the Cops, The Mob and Old Town, The Girls can "enforce their own type of "law and Order' the Cops can get any girl for free, because the girls are armed and dangerous the mob have backed off.</p><p style="">"No Cop gets killed in old town, if they are not looking for what the girls were selling, they would send them packing, but they would send them alive. That was the rules, that was the truce"</p><p style="">Someone rats. Now it is a race to find the head of Lt. Jack Rafferty. it is up to Dwight McCarthy and the Girls from Old Town to get the Head before the Mob.<br/></p>	http://static.comicvine.com/uploads/scale_small/0/4/35715-5397-39882-1-sin-city-the-big-fa.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35715-5397-39882-1-sin-city-the-big-fa.jpg	2015-04-06 21:49:36.464207	2015-04-07 20:04:48.390258	1994
74	Star Wars: Dark Empire II	5398	<p style="">Follow-up to the hit first series of <a data-ref-id="4050-22516" href="/star-wars-dark-empire/4050-22516/" slug="star-wars-dark-empire">Dark Empire</a>. Post- <a data-ref-id="4050-3243" href="/star-wars-return-of-the-jedi/4050-3243/" slug="star-wars-return-of-the-jedi">Return of the Jedi</a> storyline.</p><p style="">Part of the trilogy of <a data-ref-id="4050-22516" href="/star-wars-dark-empire/4050-22516/" slug="star-wars-dark-empire">Dark Empire</a>, Dark Empire II, and <a data-ref-id="4050-28254" href="/star-wars-empires-end/4050-28254/" slug="star-wars-empires-end">Empire's End</a>.</p><p style="">Collected in <a data-ref-id="4050-45008" href="/star-wars-dark-empire-ii/4050-45008/" slug="star-wars-dark-empire-ii">Dark Empire II</a> and <a data-ref-id="4050-57483" href="/star-wars-dark-empire-ii/4050-57483/" slug="star-wars-dark-empire-ii">Dark Empire II</a> (alongside Empire's End).</p>	http://static.comicvine.com/uploads/scale_small/0/4/35836-5398-40015-1-star-wars-dark-empi.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35836-5398-40015-1-star-wars-dark-empi.jpg	2015-04-06 21:49:36.46861	2015-04-07 20:04:48.73413	1994
75	Star Wars: Droids	5399	<p style="">Star Wars: Droids, published by <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics"> Dark Horse Comics</a>, was a series of comics revolving around <a data-ref-id="4005-2594" href="/r2-d2/4005-2594/" slug="r2-d2"> R2-D2</a> and <a data-ref-id="4005-6335" href="/c-3po/4005-6335/" slug="c-3po"> C-3PO</a>, published from 1994 to 1997. The logo for Star Wars: Droids was designed by <a data-ref-id="4040-56009" href="/scott-tice/4040-56009/" slug="scott-tice"> Scott Tice</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/34804-5399-38879-1-star-wars-droids.jpg	http://static.comicvine.com/uploads/scale_small/0/4/34804-5399-38879-1-star-wars-droids.jpg	2015-04-06 21:49:36.472555	2015-04-07 20:04:49.16379	1994
77	Star Wars: Tales of the Jedi: The Freedon Nadd Uprising	5401	<p style="">Two issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/4404710-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/4404710-01.jpg	2015-04-06 21:49:36.480969	2015-04-07 20:04:50.083358	1994
78	Tale of One Bad Rat	5402	<p style="">Collected in <a data-ref-id="4050-47959" href="/tale-of-one-bad-rat/4050-47959/" slug="tale-of-one-bad-rat">Tale of One Bad Rat</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/35588-5402-39740-1-tale-of-one-bad-rat-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/35588-5402-39740-1-tale-of-one-bad-rat-.jpg	2015-04-06 21:49:36.485669	2015-04-07 20:04:50.370747	1994
80	Grendel Classics	5604	<p style="">This volume reprints issues 16-19 of the Comico's <a data-ref-id="4050-3699" href="/grendel/4050-3699/" slug="grendel">Grendel</a> series.</p><p style="">Collected in <a data-ref-id="4000-323327" href="/grendel-devil-tales-tpb/4000-323327/" slug="grendel-devil-tales-tpb">Grendel: Devil Tales</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/36800-5604-41147-1-grendel-classics.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36800-5604-41147-1-grendel-classics.jpg	2015-04-06 21:49:36.494583	2015-04-07 20:04:51.2099	1995
81	The Dirty Pair: Fatal But Not Serious	5608	<p style="">Collected in <a data-ref-id="4050-51143" href="/the-dirty-pair-fatal-but-not-serious/4050-51143/" slug="the-dirty-pair-fatal-but-not-serious"> The Dirty Pair: Fatal But Not Serious</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/36721-5608-41056-1-adam-warren-dirty-pa.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36721-5608-41056-1-adam-warren-dirty-pa.jpg	2015-04-06 21:49:36.499908	2015-04-07 20:04:51.53654	1995
83	Colors in Black	5611	\N	http://static.comicvine.com/uploads/scale_small/0/4/36289-5611-40532-1-colors-in-black.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36289-5611-40532-1-colors-in-black.jpg	2015-04-06 21:49:36.506849	2015-04-07 20:04:52.093558	1995
84	Grendel Tales: The Devil May Care	5614	<p style=""> Part of the <em>Grendel Tales</em> series of miniseries, it comes after <a href="/grendel-tales-devils-choices/4050-21217/" data-ref-id="4050-21217"><em>Devil's Choices</em></a> and before <a href="/grendel-tales-the-devils-apprentice/4050-21215/" data-ref-id="4050-21215"><em>Devil's Apprentice</em></a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787641-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787641-01.jpg	2015-04-06 21:49:36.511875	2015-04-07 20:04:52.538421	1995
85	Indiana Jones and the Sargasso Pirates	5617	\N	http://static.comicvine.com/uploads/scale_small/0/4/37263-5617-41722-1-indiana-jones-and-th.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37263-5617-41722-1-indiana-jones-and-th.jpg	2015-04-06 21:49:36.516607	2015-04-07 20:04:52.834552	1995
87	Star Wars: Droids	5624	<p style="">The second volume of Star Wars: Droids.</p>	http://static.comicvine.com/uploads/scale_small/0/4/36408-5624-40668-1-star-wars-droids.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36408-5624-40668-1-star-wars-droids.jpg	2015-04-06 21:49:36.524975	2015-04-07 20:04:53.405038	1995
88	Star Wars: X-Wing Rogue Squadron	5629	<p style="">This series stars the Rebel Alliance's most elite pilot team Rogue Squadron</p>	http://static.comicvine.com/uploads/scale_small/0/4/36724-5629-41059-1-star-wars-x-wing-ro.jpg	http://static.comicvine.com/uploads/scale_small/0/4/36724-5629-41059-1-star-wars-x-wing-ro.jpg	2015-04-06 21:49:36.528596	2015-04-07 20:04:53.873296	1995
89	Wolf & Red	5630	<span style=""><em>In 1942, Looney Tunes and Merrie Melodies animator Tex Avery moved over to MGM studios and created a world of characters that redefined animated insanity. Wolf, Red Hot Riding Hood, Screwball Squirrel, and Droopy oozed with more personality than any of their cookie-cutter contemporaries. Now, more than 50 years later, Dark Horse Comics is proud to bring Avery's multi-dimensional creations of madness to comic books!</em></span>	http://static.comicvine.com/uploads/scale_small/0/574/614313-97878_20070702005611_large.jpg	http://static.comicvine.com/uploads/scale_small/0/574/614313-97878_20070702005611_large.jpg	2015-04-06 21:49:36.53351	2015-04-07 20:04:54.153857	1995
91	Barry Windsor-Smith: Storyteller	5824	\N	http://static.comicvine.com/uploads/scale_small/0/4/38160-5824-42850-1-barry-windsor-smith-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38160-5824-42850-1-barry-windsor-smith-.jpg	2015-04-06 21:49:36.543029	2015-04-07 20:04:54.705786	1996
92	The Black Pearl	5826	<p style=""><i>The Black Pearl</i> is a five-issue comic book limited series published by <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics">Dark Horse Comics</a> in 1996, written by Eric Johnson and <a data-ref-id="4040-54284" href="/mark-hamill/4040-54284/" slug="mark-hamill">Mark Hamill</a>, illustrated by H. M. Baker, and inked by <a data-ref-id="4040-4105" href="/bruce-patterson/4040-4105/" slug="bruce-patterson">Bruce Patterson</a> and Dan Schaeffer. The story focuses on Luther Drake, a troubled man who becomes a costumed vigilante "hero" by accident and media pressure.</p><p style="">Hamill described the "crime thriller" series as a "five-part graphic novel", less about superheroes and more about sensationalism, tabloid journalism, and "all the things that thrillers come from." Originally written as a screenplay, Hamill has been promoting the idea of a film adaptation of <i>The Black Pearl</i>, with himself as the director, since before the first issue of the comic was published in September 1996.</p><p style="">Collected in <a data-ref-id="4050-48357" href="/the-black-pearl/4050-48357/" slug="the-black-pearl">The Black Pearl</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2516741-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2516741-01.jpg	2015-04-06 21:49:36.547896	2015-04-07 20:04:55.027781	1996
93	Concrete: Think Like a Mountain	5827	\N	http://static.comicvine.com/uploads/scale_small/0/4/37613-5827-42163-1-concrete-think-like.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37613-5827-42163-1-concrete-think-like.jpg	2015-04-06 21:49:36.551678	2015-04-07 20:04:55.311443	1996
95	Ghost/Hellboy Special	5830	\N	http://static.comicvine.com/uploads/scale_small/6/67663/2787163-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787163-01.jpg	2015-04-06 21:49:36.560857	2015-04-07 20:04:56.109042	1996
96	Girl Crazy	5831	\N	http://static.comicvine.com/uploads/scale_small/0/4/37770-5831-42351-1-girl-crazy.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37770-5831-42351-1-girl-crazy.jpg	2015-04-06 21:49:36.565885	2015-04-07 20:04:56.422771	1996
129	Madman / The Jam	6666	\N	http://static.comicvine.com/uploads/scale_small/0/4/41918-6666-47587-1-madman--the-jam.jpg	http://static.comicvine.com/uploads/scale_small/0/4/41918-6666-47587-1-madman--the-jam.jpg	2015-04-06 21:51:03.215658	2015-04-07 20:05:07.596024	1998
98	Hellboy: Wake the Devil	5835	<p style="">Previous series, <a href="/hellboy-seed-of-destruction/4050-5388/" data-ref-id="4050-5388">Seed of destruction</a>.</p><p style="">Next mini: <a href="/hellboy-almost-colossus/4050-6061/" data-ref-id="4050-6061">Almost colossus</a>.</p><p style="">In the second Hellboy-miniseries, BRD faces a vampire.</p><p style=""> </p>	http://static.comicvine.com/uploads/scale_small/0/4/37353-5835-41833-1-hellboy-wake-the-de.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37353-5835-41833-1-hellboy-wake-the-de.jpg	2015-04-06 21:49:36.574171	2015-04-07 20:04:57.051224	1996
99	Nexus God Con	5838	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/38732-5838-43530-1-nexus.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38732-5838-43530-1-nexus.jpg	2015-04-06 21:49:36.578549	2015-04-07 20:04:57.329819	1996
100	Sin City: That Yellow Bastard	5840	<p style="">Frank Miller changes the game in the fourth volume of his signature crime series, introducing the only truly heroic figure in Sin City's world of vice, Detective Hartigan. A highlight of the series, and the inspiration for one of the segments of the blockbuster Sin City film, That Yellow Bastard returns in a newly redesigned edition, with a brand-new cover by Miller - some of his first comics art in years! The worst thing to be in Basin City is an honest cop, but it's Hartigan's last day on the job, and he plans to go out with a bang. Little Nancy Callahan, age eleven, has been kidnapped by a psycho who likes to hear children scream, and Hartigan's going to find her no matter what it takes. Hell of a way to start retirement . . . With a new look generating more excitement than ever before, this third edition is the perfect way to attract a whole new generation of readers to Frank Miller's masterpiece!</p><p style="">John Hartigan is an old cop, one of the last uncorrupt in Basin City. This is his last mission before sweet retirement.</p><p style="">A rapist is on the loose, and it's up to Hartigan to save his latest victim, 11-year old Nancy Callahan.</p><p style="">This volume is collected in <a data-ref-id="4000-226723" href="/sin-city-that-yellow-bastard/4000-226723/" slug="sin-city-that-yellow-bastard">Sin City #4</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/37527-5840-42054-1-sin-city-that-yello.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37527-5840-42054-1-sin-city-that-yello.jpg	2015-04-06 21:49:36.583087	2015-04-07 20:04:57.640339	1996
102	Tarzan	5842	\N	http://static.comicvine.com/uploads/scale_small/0/4/37935-5842-42564-1-tarzan.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37935-5842-42564-1-tarzan.jpg	2015-04-06 21:51:03.078318	2015-04-07 20:04:58.31888	1996
103	Tarzan/John Carter: Warlords of Mars	5844	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/4/37439-5844-41946-1-tarzan--john-carter.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37439-5844-41946-1-tarzan--john-carter.jpg	2015-04-06 21:51:03.09072	2015-04-07 20:04:58.615925	1996
104	Usagi Yojimbo	5845	<p style="">Volume 3.</p><p style="">After <a href="/cerebus/4050-2930/" data-ref-id="4050-2930">Cerebus</a>, this is the longest-running English-language comic book by a single creative team.</p><h4>Collected Editions</h4><ul><li><a href="/usagi-yojimbo-volume-10-the-brink-of-life-and-death-the-brink-of-life-and-death/4000-295052/" data-ref-id="4000-295052">Usagi Yojimbo Volume 10: The Brink Of Life And Death</a> (#1-6)</li><li><a href="http://www.comicvine.com/the-usagi-yojimbo-saga-1-book-1/4000-468044/" data-ref-id="4000-468044">The Usagi Yojimbo Saga Book 1</a> (#1-6)</li><li><a href="/usagi-yojimbo-volume-11-seasons-/4000-295053/" data-ref-id="4000-295053">Usagi Yojimbo Volume 11: Seasons</a> (#7-12)</li><li><a href="http://www.comicvine.com/the-usagi-yojimbo-saga-2-book-2/4000-482665/" data-ref-id="4000-482665">The Usagi Yojimbo Saga Book 2</a> (#7-30)</li><li><a href="/usagi-yojimbo-volume-12-grasscutter-grasscutter/4000-295054/" data-ref-id="4000-295054">Usagi Yojimbo Volume 12: Grasscutter</a> (#13-22)</li><li><a href="/usagi-yojimbo-volume-13-grey-shadows-grey-shadows/4000-295055/" data-ref-id="4000-295055">Usagi Yojimbo Volume 13: Grey Shadows</a> (#23-30)</li><li><a href="/usagi-yojimbo-volume-14-demon-mask-demon-mask/4000-295056/" data-ref-id="4000-295056">Usagi Yojimbo Volume 14: Demon Mask</a> (#31-38)</li><li><a href="/usagi-yojimbo-volume-15-grasscutter-ii-journey-to-atsuta-shrine-grasscutter-ii-journey-to-atsuta-shrine/4000-295057/" data-ref-id="4000-295057">Usagi Yojimbo Volume 15: Grasscutter II -- Journey To Atsuta Shrine</a> (#39-45)</li><li><a href="/usagi-yojimbo-volume-16-the-shrouded-moon-the-shrouded-moon/4000-295058/" data-ref-id="4000-295058">Usagi Yojimbo Volume 16: The Shrouded Moon</a> (#46-52)</li><li><a href="/usagi-yojimbo-volume-17-duel-at-kitanoji-duel-at-kitanoji/4000-295059/" data-ref-id="4000-295059">Usagi Yojimbo Volume 17: Duel At Kitanoji</a> (#53-60)</li><li><a href="/usagi-yojimbo-volume-18-travels-with-jotaro-travels-with-jotaro/4000-295060/" data-ref-id="4000-295060">Usagi Yojimbo Volume 18: Travels With Jotaro</a> (#61-68)</li><li><a href="/usagi-yojimbo-volume-19-fathers-and-sons-fathers-and-sons/4000-295061/" data-ref-id="4000-295061">Usagi Yojimbo Volume 19: Fathers And Sons</a> (#69-75)</li><li><a href="/usagi-yojimbo-volume-20-glimpses-of-death-glimpses-of-death/4000-295062/" data-ref-id="4000-295062">Usagi Yojimbo Volume 20: Glimpses Of Death</a> (#76-82)</li><li><a href="/usagi-yojimbo-volume-21-the-mother-of-mountains-the-mother-of-mountains/4000-295063/" data-ref-id="4000-295063">Usagi Yojimbo Volume 21: The Mother Of Mountains</a> (#83-89)</li><li><a href="/usagi-yojimbo-volume-22-tomoes-story-tomoes-story/4000-295064/" data-ref-id="4000-295064">Usagi Yojimbo Volume 22: Tomoe’s Story</a> (#90-93)</li><li><a href="/usagi-yojimbo-volume-23-bridge-of-tears-bridge-of-tears/4000-295065/" data-ref-id="4000-295065">Usagi Yojimbo Volume 23: Bridge Of Tears</a> (#94-102)</li><li><a href="/usagi-yojimbo-volume-24-return-of-the-black-soul-return-of-the-black-soul/4000-295066/" data-ref-id="4000-295066">Usagi Yojimbo Volume 24: Return Of The Black Soul</a> (#103-109)</li><li><a href="/usagi-yojimbo-volume-25-fox-hunt-fox-hunt/4000-295067/" data-ref-id="4000-295067">Usagi Yojimbo Volume 25: Fox Hunt</a> (#110-116)</li><li><a href="/usagi-yojimbo-volume-26-traitors-of-the-earth-volume-26/4000-342884/" data-ref-id="4000-342884">Usagi Yojimbo Volume 26: Traitors of the Earth</a> (#117-123)</li><li><a href="//www.comicvine.com/usagi-yojimbo-a-town-called-hell/4050-64239/" data-ref-id="4050-64239">Usagi Yojimbo Volume 27: A Town Called Hell</a> (#124-131)</li><li><a href="/usagi-yojimbo-red-scorpion/4050-75353/" data-ref-id="4050-75353">Usagi Yojimbo Volume 28: Red Scorpion</a> (#132-138)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/37697-5845-42264-1-usagi-yojimbo.jpg	http://static.comicvine.com/uploads/scale_small/0/4/37697-5845-42264-1-usagi-yojimbo.jpg	2015-04-06 21:51:03.096066	2015-04-07 20:04:59.159369	1996
106	Concrete: Strange Armor	6057	\N	http://static.comicvine.com/uploads/scale_small/0/4/39429-6057-44365-1-concrete-strange-ar.jpg	http://static.comicvine.com/uploads/scale_small/0/4/39429-6057-44365-1-concrete-strange-ar.jpg	2015-04-06 21:51:03.105193	2015-04-07 20:04:59.726507	1997
107	Flaming Carrot Comics Collected Album	6059	<a data-ref-id="4005-24092" href="/flaming-carrot/4005-24092/" slug="flaming-carrot">Flaming Carrot</a>, a magnificent creation of the legendary man known as <a data-ref-id="4040-24091" href="/bob-burden/4040-24091/" slug="bob-burden">Bob Burden</a> is best renown for his solo series, <a data-ref-id="4050-3383" href="/flaming-carrot-comics/4050-3383/" slug="flaming-carrot-comics">Flaming Carrot Comics</a> which was first published by Aardvark-Vanaheim. Of course like all good things, things wouldn't last and after a five issue run the title was given to Renegade (<a data-ref-id="4050-3579" href="/flaming-carrot-comics/4050-3579/" slug="flaming-carrot-comics">Flaming Carrot Comics</a>) and despite that previous insinuation at the beginning of this sentence the series was as good as ever, continuing all the way up until the seventeenth issue. Finally it made it's final transition of publishers unto Dark Horse (<a data-ref-id="4050-4135" href="/flaming-carrot-comics/4050-4135/" slug="flaming-carrot-comics">Flaming Carrot Comics</a>) where it remained until its thirty-first issue. The series was partially collected by Dark Horse (<a data-ref-id="4050-6059" href="/flaming-carrot-comics-collected-album/4050-6059/" slug="flaming-carrot-comics-collected-album">Flaming Carrot Comics Collected Album</a>) and spawned an annual (<a data-ref-id="4050-23178" href="/flaming-carrot-comics-annual/4050-23178/" slug="flaming-carrot-comics-annual">Flaming Carrot Comics Annual</a>) and later a special, <a data-ref-id="4050-20932" href="/flaming-carrot-comics-special/4050-20932/" slug="flaming-carrot-comics-special">Flaming Carrot Comics Special</a> by Image (under their Desperado imprint) who now have the rights of the comic.	http://static.comicvine.com/uploads/scale_small/0/4/38996-6059-43841-1-flaming-carrot-comic.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38996-6059-43841-1-flaming-carrot-comic.jpg	2015-04-06 21:51:03.115373	2015-04-07 20:05:00.115269	1997
108	Hellboy: Almost Colossus	6061	<p style="">Previous series: <a href="//www.comicvine.com/hellboy-wake-the-devil/4050-5835/" data-ref-id="4050-5835">Wake the devil</a></p><p style="">features 2 stories in both issues:</p><p style="">-Almost Colossus</p><p style="">by Mike Mignola &amp; James Sinclair</p><p style="">-Autopsy in B-Flat</p><p style="">by Gary Gianni</p>	http://static.comicvine.com/uploads/scale_small/0/4/38979-6061-43820-1-hellboy-almost-colo.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38979-6061-43820-1-hellboy-almost-colo.jpg	2015-04-06 21:51:03.120377	2015-04-07 20:05:00.421883	1997
109	Nexus: Nightmare In Blue	6064	\N	http://static.comicvine.com/uploads/scale_small/0/4/38983-6064-43825-1-nexus-nightmare-in-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38983-6064-43825-1-nexus-nightmare-in-.jpg	2015-04-06 21:51:03.125336	2015-04-07 20:05:00.704036	1997
110	Predator: Hell & Hot Water	6065	<p style="">Written by Mark Schultz and drawn by Gene Colan This epic takes the Predator franchise to an entirely new setting , the deep blue sea !</p>	http://static.comicvine.com/uploads/scale_small/0/4/38813-6065-43627-1-predator-hell-amp-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38813-6065-43627-1-predator-hell-amp-.jpg	2015-04-06 21:51:03.128905	2015-04-07 20:05:01.104869	1997
131	Space Circus	6675	\N	http://static.comicvine.com/uploads/scale_small/0/4/41958-6675-47627-1-space-circus.jpg	http://static.comicvine.com/uploads/scale_small/0/4/41958-6675-47627-1-space-circus.jpg	2015-04-06 21:51:03.225937	2015-04-07 20:05:08.14912	2000
111	Star Wars: Crimson Empire	6067	<p style=""> Post-<a data-ref-id="4050-3243" href="/star-wars-return-of-the-jedi/4050-3243/" slug="star-wars-return-of-the-jedi">   Return of the Jedi</a> storyline that ties into several concepts that followed up on several ideas floated in <a data-ref-id="4015-44983" href="/star-wars-universe/4015-44983/" slug="star-wars-universe"> <i>Star Wars</i></a> novels of the earlty-to-mid 90s.  It even attempts to bring a connection forward from <a data-ref-id="4050-2914" href="/star-wars/4050-2914/" slug="star-wars">    Marvel's <i>Star Wars</i></a> run. <br/>Collected in: <a data-ref-id="4050-40422" href="/star-wars-crimson-empire/4050-40422/" slug="star-wars-crimson-empire"> Star Wars: Crimson Empire</a></p>	http://static.comicvine.com/uploads/scale_small/0/4/39430-6067-44366-1-star-wars-crimson-e.jpg	http://static.comicvine.com/uploads/scale_small/0/4/39430-6067-44366-1-star-wars-crimson-e.jpg	2015-04-06 21:51:03.132749	2015-04-07 20:05:01.450636	1997
113	Elric: Stormbringer	6101	\N	http://static.comicvine.com/uploads/scale_small/0/4/38567-6101-43338-1-elric-stormbringer.jpg	http://static.comicvine.com/uploads/scale_small/0/4/38567-6101-43338-1-elric-stormbringer.jpg	2015-04-06 21:51:03.140689	2015-04-07 20:05:02.179291	1997
114	Buffy the Vampire Slayer	6239	<i>Buffy Summers is not like other girls. She's been chosen to save the world from the vampire plague, and balancing saving the world with high school is no easy task. Presenting an all-new adventure of everyone's favorite slayer, written by Andi Watson, the creator of Skeleton Key, Joe Bennett, and Rick Ketcham, artist on Superman and Journey into Mystery.</i>	http://static.comicvine.com/uploads/scale_small/1/11307/244172-6239-45346-2-buffy-the-vampire-s.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244172-6239-45346-2-buffy-the-vampire-s.jpg	2015-04-06 21:51:03.144268	2015-04-07 20:05:02.634424	1998
115	Grendel: Black, White, and Red	6241	<p style="">Winner of 1999 <a href="/eisner-awards/4015-52148/" data-ref-id="4015-52148">Eisner Awards</a> for Best Anthology. Each issue was penned by <a href="/matt-wagner/4040-8310/" data-ref-id="4040-8310">Matt Wagner</a> with a variety of guest artists contributing.</p><h4><b>Collected Editions</b></h4><ul><li>Grendel: Black, White, and Red</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2787623-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787623-01.jpg	2015-04-06 21:51:03.14831	2015-04-07 20:05:02.968984	1998
117	Tarzan/Carson of Venus	6244	<p style=""><em>The insidious cult of the Loveking is spreading through Carson Napier's kingdom on the ocean world of Venus. If Carson can't break the Loveking's spell, the balance of power on Venus will be shattered and the woman Carson loves will be lost to him forever. But a jungle howl from a faraway world signals the arrival of a powerful ally, Tarzan, whom Carson will desperately need to avert disaster on his adopted planet!</em></p><p style="">Collected in <a data-ref-id="4050-41556" href="/edgar-rice-burroughs-tarzan-carson-of-venus/4050-41556/" slug="edgar-rice-burroughs-tarzan-carson-of-venus">Edgar Rice Burroughs' Tarzan / Carson of Venus</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/462/557516-trzcov1.jpg	http://static.comicvine.com/uploads/scale_small/0/462/557516-trzcov1.jpg	2015-04-06 21:51:03.158059	2015-04-07 20:05:03.609585	1998
118	Aliens: Apocalypse - The Destroying Angels	6366	\N	http://static.comicvine.com/uploads/scale_small/0/4/40487-6366-45622-1-aliens-apocalypse-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40487-6366-45622-1-aliens-apocalypse-.jpg	2015-04-06 21:51:03.162665	2015-04-07 20:05:03.856013	1999
119	Batman/Tarzan: Claws of The Cat-Woman	6367	<p style=""><b>NOTE:</b> Indicia titled as "Batman/Tarzan: Claws Of The Cat-Woman".</p>	http://static.comicvine.com/uploads/scale_small/0/4/40796-6367-46027-1-batman--tarzan-cla.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40796-6367-46027-1-batman--tarzan-cla.jpg	2015-04-06 21:51:03.166982	2015-04-07 20:05:04.181051	1999
120	Buffy the Vampire Slayer: Angel	6368	<p style="">Due to differences in indicia, the Wizard 1/2 issue of this series is indexed as <a data-ref-id="4050-30526" href="/buffyangel/4050-30526/" slug="buffyangel"> Buffy/Angel</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/3848/149069-6368-45851-2-buffy-the-vampire-s.JPG	http://static.comicvine.com/uploads/scale_small/0/3848/149069-6368-45851-2-buffy-the-vampire-s.JPG	2015-04-06 21:51:03.171579	2015-04-07 20:05:04.490889	1999
121	Grendel: Devil Child	6372	<p style="">The story of <a href="//www.comicvine.com/stacy-palumbo/4005-23028/" data-ref-id="4005-23028">Stacy Palumbo</a> after she kills <a href="//www.comicvine.com/hunter-rose/4005-31944/" data-ref-id="4005-31944">Hunter Rose</a> and goes off to live in a mental institution.</p><p style="">Collected in <a href="/grendel-devil-child-hc/4000-323326/" data-ref-id="4000-323326">Grendel: Devil Child</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787565-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787565-01.jpg	2015-04-06 21:51:03.176642	2015-04-07 20:05:04.827754	1999
122	Hellboy: Box Full of Evil	6373	<p style="" data-right-indent="0" data-left-indent="0">A two-issue miniseries featuring <a href="//www.comicvine.com/hellboy/4005-5466/" data-ref-id="4005-5466">Hellboy</a>, although each issue contained a self-contained back-up story.</p><h2>Collected Editions</h2><ul><li><a href="/hellboy-the-right-hand-of-doom/4050-31203/" data-ref-id="4050-31203">Hellboy: The Right Hand of Doom</a></li><li><a href="/bprd-hollow-earth-other-stories/4050-32946/" data-ref-id="4050-32946">B.P.R.D.: Hollow Earth &amp; Other Stories</a></li></ul><p style="" data-right-indent="0" data-left-indent="0">For the German version, see <a href="//www.comicvine.com/hellboy-behaltnis-des-bosen/4050-71128/" data-ref-id="4050-71128">Hellboy: Behältnis des Bösen</a></p><p style="" data-right-indent="0" data-left-indent="0">For the Spanish version, see <a href="/hellboy-caja-repleta-de-maldad/4050-49513/" data-ref-id="4050-49513">Hellboy: Caja Repleta de Maldad</a></p>	http://static.comicvine.com/uploads/scale_small/0/4/40766-6373-45988-1-hellboy-box-full-of.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40766-6373-45988-1-hellboy-box-full-of.jpg	2015-04-06 21:51:03.180395	2015-04-07 20:05:05.197936	1999
123	Hieroglyph	6374	<p style="">One of the few books to harness the sheer visual edge that comic books will always have over written fiction, Hieroglyph, much like Ricardo Delgado's previous project (Age of Reptiles), lets the art do the talking. A (human) space explorer lands on a strange planet which seems to comprise of giant bugs as its dominant life form. He pursues these beings in the name of science, falling deeper into the pitcher plant trap that forms the core of book one. The second book details his effort to both understand this mammoth insect colony and its confounding ritual as well as make a run for his life. The story is, of course, not very original, but Delgado's art work (he can draw more than Dinosaurs, yep) breathes incredible life within the confines of every panel, most of which span the entire page.</p>	http://static.comicvine.com/uploads/scale_small/0/4/40857-6374-46107-1-hieroglyph.jpg	http://static.comicvine.com/uploads/scale_small/0/4/40857-6374-46107-1-hieroglyph.jpg	2015-04-06 21:51:03.183921	2015-04-07 20:05:05.484144	1999
127	The Book of Night	6497	<br/>	http://static.comicvine.com/uploads/scale_small/0/462/377150-6497-129263-1-book-of-night-the.jpg	http://static.comicvine.com/uploads/scale_small/0/462/377150-6497-129263-1-book-of-night-the.jpg	2015-04-06 21:51:03.201483	2015-04-07 20:05:06.878152	1987
132	Angel	6695	<p style="">What is it with this Angel guy? Not only has the moody, square-jawed vampire got his own television show, but now he's getting the monthly comic-book treatment, courtesy of Christopher Golden (Buffy the Vampire Slayer:Angel), Christian Zanier (Buffy #12), and Andy Owens (Buffy #12). Having fled Sunnydale, and all the difficult emotional circumstances that go along with it, Angel has set up shop as a paranormal investigator in Los Angeles. With the help of Sunnydale's favorite prom queen, Cordelia Chase, and demon-spawn wiseacre Doyle, Angel has his work cut out for him! Get on the bandwagon now, so that you can say you were buying this dynamite book from the start!</p>	http://static.comicvine.com/uploads/scale_small/0/4/42095-6695-47765-1-angel.jpg	http://static.comicvine.com/uploads/scale_small/0/4/42095-6695-47765-1-angel.jpg	2015-04-06 21:51:03.229795	2015-04-07 20:05:08.499113	1999
133	Buffy the Vampire Slayer: The Origin	6710	<p style="">A few months into the <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics">   Dark Horse</a> comics run of <a data-ref-id="4005-20096" href="/buffy/4005-20096/" slug="buffy">  Buffy</a> comics, Buffy novelist Chris Golden proposed that Dark Horse do a faithful adaptation of <a data-ref-id="4040-40956" href="/joss-whedon/4040-40956/" slug="joss-whedon"> Joss Whedon</a>'s original <a data-ref-id="4025-324" href="/buffy-the-vampire-slayer/4025-324/" slug="buffy-the-vampire-slayer"> <i>Buffy the Vampire Slayer</i></a> screenplay. The result was  <i>Buffy the Vampire Slayer: The Origin.</i></p>	http://static.comicvine.com/uploads/scale_small/0/4/42186-6710-47861-1-buffy-the-vampire-sl.jpg	http://static.comicvine.com/uploads/scale_small/0/4/42186-6710-47861-1-buffy-the-vampire-sl.jpg	2015-04-06 21:51:03.234173	2015-04-07 20:05:08.807349	1999
134	300	6811	<p style="">300 is Frank Miller's famous retelling story of the battle of Thermopylae. King Leonidas leads a Spartan army of only 300 men into battle against the army of Xerxes I of Persia, a force outnumbering them by thousands to one. The Spartans maintain a stand-still, holding off Xerxes' forces for two full days at a narrow pass known as the Hot Gates before the deformed and treacherous Ephialtes betrays the Spartans to Xerxes. This betrayal leads to the outflanking of the remaining Spartan soldiers, and their inevitable deaths on the third day. The tale ends a year later at the battle of Plataea where a now-united Greek army prepares for the final battle against Xerxes.</p><p style="">This volume would also serve as the inspiration for the 2007 film adaptation (also called 300) directed by Zach Snyder and produced by Frank Miller.</p><p style="">This volume and the resulting movie have been the source of some controversy since their respective releases. Both the comics and the movie have been heavily criticized for their polarizing depiction of the various cultures that make up the Persian army, as well as the various historical inaccuracies. Others have cited how close many of the details of the books were to historical accounts, and that the book was meant for entertainment, not political commentary.</p><ul><li>Issues #1-5 are collected in <a data-ref-id="4050-22632" href="/300/4050-22632/" slug="300">300</a> TPB/Hardcover</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/42666-6811-48790-1-300.jpg	http://static.comicvine.com/uploads/scale_small/0/4/42666-6811-48790-1-300.jpg	2015-04-06 21:51:03.23915	2015-04-07 20:05:09.231119	1998
136	Star Wars: Mara Jade - By the Emperor's Hand	6935	<p style="">Star Wars: Mara Jade - By the Emperor's Hand is a 6-issue limited series published by <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics">Dark Horse Comics</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/43075-6935-49233-1-star-wars-mara-jade.jpg	http://static.comicvine.com/uploads/scale_small/0/4/43075-6935-49233-1-star-wars-mara-jade.jpg	2015-04-06 21:51:03.24671	2015-04-07 20:05:09.867655	1998
137	The Mark	6936	<br/>	http://static.comicvine.com/uploads/scale_small/0/4/43081-6936-49239-1-mark-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/43081-6936-49239-1-mark-the.jpg	2015-04-06 21:51:03.250436	2015-04-07 20:05:10.186271	1987
138	Starstruck	6959	\N	http://static.comicvine.com/uploads/scale_small/0/4/43202-6959-49369-1-starstruck.jpg	http://static.comicvine.com/uploads/scale_small/0/4/43202-6959-49369-1-starstruck.jpg	2015-04-06 21:51:03.254508	2015-04-07 20:05:10.457731	1990
139	Army of Darkness	6977	<p style="">3 part comic adaption of the movie Army of Darkness featuring Bruce Campbell as Ashly J Williams. Written by Sam Raimi and Ted Raimi.</p>	http://static.comicvine.com/uploads/scale_small/0/4/43238-6977-49419-1-army-of-darkness.jpg	http://static.comicvine.com/uploads/scale_small/0/4/43238-6977-49419-1-army-of-darkness.jpg	2015-04-06 21:51:03.263425	2015-04-07 20:05:10.77186	1992
141	Fray	7077	<p style="">Hundreds of years in the future, Manhattan has become a deadly slum, run  by mutant crime-lords and disinterested cops. Stuck in the middle is a  young girl who thought she had no future, but learns she has a great  destiny. In a world so poisoned that it doesn't notice the monsters on  its streets, how can a street kid like Fray unite a fallen city against a  demonic plot to consume mankind? Joss Whedon, the celebrated creator of  <i>Buffy the Vampire Slayer</i>, brings his vision to the future in  this unique tale. As inventive in the comics medium as in that of  television or film, Whedon spins a complex tale of a skilled thief  coming of age without the help of friends or family, guided only by a  demonic Watcher. <br/>  </p><h3>Collected Trades</h3><a href="../../fray-future-slayer/49-18751/" rel="nofollow">Fray: Future Slayer</a> (1-8)	http://static.comicvine.com/uploads/scale_small/0/4/43389-7077-50749-1-fray.jpg	http://static.comicvine.com/uploads/scale_small/0/4/43389-7077-50749-1-fray.jpg	2015-04-06 21:51:03.273043	2015-04-07 20:05:11.486379	2001
142	Cud Comics	7152	\N	http://static.comicvine.com/uploads/scale_small/0/462/486781-cud1.jpg	http://static.comicvine.com/uploads/scale_small/0/462/486781-cud1.jpg	2015-04-06 21:51:03.277075	2015-04-07 20:05:11.815396	1995
143	Gunsmith Cats: Mister V	7213	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307871" href="/gunsmith-cats-mister-v/4000-307871/" slug="gunsmith-cats-mister-v">Gunsmith Cats volume 8: Mister V</a> (#1-7)</li><li><a data-ref-id="4000-307872" href="/gunsmith-cats-mistys-run/4000-307872/" slug="gunsmith-cats-mistys-run">Gunsmith Cats volume 9: Misty's Run</a> (#8-11)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/44272-7213-51419-1-gunsmith-cats-miste.jpg	http://static.comicvine.com/uploads/scale_small/0/4/44272-7213-51419-1-gunsmith-cats-miste.jpg	2015-04-06 21:51:03.281172	2015-04-07 20:05:12.17293	2000
144	The Hammer	7287	<p style="">Four issue mini-series.</p><h4>Collected Editions</h4><ul><li><a href="/kelley-jones-the-hammer-one-big-lie/4050-48030/" data-ref-id="4050-48030">Kelley Jones' The Hammer: One Big Lie</a></li><li><a href="/the-hammer-kelley-jones-complete-series/4050-78124/" data-ref-id="4050-78124">The Hammer: Kelley Jones' Complete Series</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/44756-7287-51804-1-hammer-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/44756-7287-51804-1-hammer-the.jpg	2015-04-06 21:51:03.285035	2015-04-07 20:05:12.588923	1997
145	Emily the Strange: The 13th Hour	7392	<p style="">The third Emily the Strange series.</p><p style="">Collected in <a href="/emily-the-strange-the-13th-hour/4050-73041/" data-ref-id="4050-73041">Emily the Strange: The 13th Hour</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/9116/886931-1.jpg	http://static.comicvine.com/uploads/scale_small/0/9116/886931-1.jpg	2015-04-06 21:51:03.288983	2015-04-07 20:05:12.973985	2009
147	Gunsmith Cats: Bad Trip	7407	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307868" href="/gunsmith-cats-bad-trip/4000-307868/" slug="gunsmith-cats-bad-trip">Gunsmith Cats volume 5: Bad Trip</a> (#1-6)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/45172-7407-52309-1-gunsmith-cats-bad-t.jpg	http://static.comicvine.com/uploads/scale_small/0/4/45172-7407-52309-1-gunsmith-cats-bad-t.jpg	2015-04-06 21:51:03.298413	2015-04-07 20:05:13.883358	1998
148	Gunsmith Cats: Bean Bandit	7408	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307869" href="/gunsmith-cats-bean-bandit/4000-307869/" slug="gunsmith-cats-bean-bandit">Gunsmith Cats volume 6: Bean Bandit</a> (#1-9)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/45178-7408-52315-1-gunsmith-cats-bean-.jpg	http://static.comicvine.com/uploads/scale_small/0/4/45178-7408-52315-1-gunsmith-cats-bean-.jpg	2015-04-06 21:51:03.302884	2015-04-07 20:05:14.172818	1999
149	Gunsmith Cats: Goldie Vs. Misty	7409	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307867" href="/gunsmith-cats-goldie-versus-misty/4000-307867/" slug="gunsmith-cats-goldie-versus-misty">Gunsmith Cats volume 4: Goldie vs Misty</a> (#1-7)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/1867/703172-gsciv1.jpg	http://static.comicvine.com/uploads/scale_small/0/1867/703172-gsciv1.jpg	2015-04-06 21:51:03.307209	2015-04-07 20:05:14.759205	1997
151	Gunsmith Cats: Shades of Gray	9257	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307866" href="/gunsmith-cats-the-return-of-gray/4000-307866/" slug="gunsmith-cats-the-return-of-gray">Gunsmith Cats volume 3: The Return of Gray</a> (#1-5)</li></ul>	http://static.comicvine.com/uploads/scale_small/4/43144/872942-gunsmithcats_1997_05_shadesofgray01.jpg	http://static.comicvine.com/uploads/scale_small/4/43144/872942-gunsmithcats_1997_05_shadesofgray01.jpg	2015-04-06 21:51:03.316727	2015-04-07 20:05:15.390994	1997
152	Gunsmith Cats: The Return of Gray	9285	<h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-307865" href="/gunsmith-cats-misfire/4000-307865/" slug="gunsmith-cats-misfire">Gunsmith Cats volume 2: Misfire</a> (#1-3)</li><li><a data-ref-id="4000-307866" href="/gunsmith-cats-the-return-of-gray/4000-307866/" slug="gunsmith-cats-the-return-of-gray">Gunsmith Cats volume 3: The Return of Gray</a> (#4-7)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/72609-9285-73471-1-gunsmith-cats-the-r.jpg	http://static.comicvine.com/uploads/scale_small/0/4/72609-9285-73471-1-gunsmith-cats-the-r.jpg	2015-04-06 21:51:03.322652	2015-04-07 20:05:15.697927	1996
154	Accident Man	9356	\N	http://static.comicvine.com/uploads/scale_small/0/1812/108416-9356-108506-1-accident-man.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/108416-9356-108506-1-accident-man.jpg	2015-04-06 21:51:03.330526	2015-04-07 20:05:16.327302	1993
155	Green Lantern vs. Aliens	9506	<p style="">This volume is co-published by Dark Horse Comics and DC Comics.</p><p style="">Collected in <a data-ref-id="4050-50801" href="/green-lantern-vs-aliens/4050-50801/" slug="green-lantern-vs-aliens">Green Lantern vs. Aliens</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787535-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787535-01.jpg	2015-04-06 21:51:03.334461	2015-04-07 20:05:16.712495	2000
156	Conan	10612	<h4>Trade Paperback Collections</h4><ul><li><a href="/conan-the-frost-giants-daughter-and-other-stories/4050-73035/" data-ref-id="4050-73035">Conan: The Frost Giant's Daughter and Other Stories</a> (#0-6 and pages from #7)</li><li><a href="/conan-the-god-in-the-bowl-and-other-stories/4050-73034/" data-ref-id="4050-73034">Conan: The God In the Bowl and Other Stories</a> (#7 &amp; 9-14)</li><li><a href="/conan-born-on-the-battlefield/4050-44757/" data-ref-id="4050-44757">Conan: Born On The Battlefield</a> (#8, 15, 23, 32, 45, 46)</li><li><a href="/conan-the-tower-of-the-elephant-and-other-stories/4050-73036/" data-ref-id="4050-73036">Conan: The Tower of The Elephant and Other Stories</a> (#0, 16-17 &amp; 19-22)</li><li><a href="/conan-the-blood-stained-crown-and-other-stories-the-blood-stained-crown-and-other-stories/4000-321766/" data-ref-id="4000-321766">Conan: The Blood-Stained Crown And Other Stories</a> (#18, 26-28, 39)</li><li><a href="/conan-the-hall-of-the-dead-and-other-stories/4050-33581/" data-ref-id="4050-33581">Conan: The Hall of the Dead and Other Stories</a> (#24-25, 29-31, 33-34)</li><li><a href="/conan-the-spear-and-other-stories/4050-33784/" data-ref-id="4050-33784">Conan: The Spear and Other Stories</a> (#35-36, 40)</li><li><a href="/conan-rogues-in-the-house-and-other-stories/4050-33580/" data-ref-id="4050-33580">Conan: Rogues in the House and Other Stories</a> (#37-38, 41-44)</li><li><a href="/conan-the-hand-of-nergal/4050-33579/" data-ref-id="4050-33579">Conan: The Hand of Nergal</a> (#47-50)</li></ul><h4>Hardcover Collections</h4><ul><li><a href="//www.comicvine.com/the-colossal-conan/4050-69114/" data-ref-id="4050-69114">The Colossal Conan</a> (#0-50)</li></ul>	http://static.comicvine.com/uploads/scale_small/11/118064/3839363-conan-1-jml.jpg	http://static.comicvine.com/uploads/scale_small/11/118064/3839363-conan-1-jml.jpg	2015-04-06 21:51:03.338758	2015-04-07 20:05:17.237831	2003
157	The Moth	10822	<p style="">Four issue mini-series.</p><p style="">Collected in <a href="http://www.comicvine.com/the-moth/4050-79534/" data-ref-id="4050-79534">The Moth</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/59316-10822-92311-1-moth-the.jpg	http://static.comicvine.com/uploads/scale_small/0/4/59316-10822-92311-1-moth-the.jpg	2015-04-06 21:51:03.34294	2015-04-07 20:05:17.533222	2004
159	Concrete: The Human Dilemma	11056	<p style=""><i>Speechwriter Ron Lithgow's mind was suddenly removed from his body and placed into that of an immense extraterrestrial one with a rocklike shell for skin. Now, seventeen years after his comics debut with then-fledgling publisher Dark Horse, Lithgow enters into another contemplative conundrum.</i></p>	http://static.comicvine.com/uploads/scale_small/0/4/63732-11056-96728-1-concrete-the-human.jpg	http://static.comicvine.com/uploads/scale_small/0/4/63732-11056-96728-1-concrete-the-human.jpg	2015-04-06 21:51:03.351251	2015-04-07 20:05:18.266662	2004
160	Star Wars Tales	11119	<p style="">This series chronicles various stories from the Star Wars universe. It is based on the premise that what you are reading are actually comic versions of holo rentals found in Peeja Mobet's Holo Emporium. As the comics are supposed to be 'movie rentals' the proprietor claims that they may or may not be historically accurate.</p><p style="">They are not canon.</p><h2>Collected Editions</h2><ul><li><a data-ref-id="4000-336666" href="/star-wars-tales-vol-1/4000-336666/" slug="star-wars-tales-vol-1">Volume 1</a> (#1-4)</li><li><a data-ref-id="4000-336667" href="/star-wars-tales-vol-2/4000-336667/" slug="star-wars-tales-vol-2">Volume 2</a> (#5-8)</li><li><a data-ref-id="4000-336668" href="/star-wars-tales-vol-3/4000-336668/" slug="star-wars-tales-vol-3">Volume 3</a> (#9-12)</li><li><a data-ref-id="4000-336669" href="/star-wars-tales-vol-4/4000-336669/" slug="star-wars-tales-vol-4">Volume 4</a> (#13-16)</li><li><a data-ref-id="4000-336670" href="/star-wars-tales-vol-5/4000-336670/" slug="star-wars-tales-vol-5">Volume 5</a> (#17-20)</li><li><a data-ref-id="4000-336672" href="/star-wars-tales-vol-6/4000-336672/" slug="star-wars-tales-vol-6">Volume 6</a> (#21-24)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/64447-11119-97444-1-star-wars-tales.jpg	http://static.comicvine.com/uploads/scale_small/0/4/64447-11119-97444-1-star-wars-tales.jpg	2015-04-06 21:51:03.355789	2015-04-07 20:05:19.127495	1999
163	Hellboy: Weird Tales	11244	<p style="">Eight issue series.</p><h4>Collected Editions</h4><ul><li><a href="/hellboy-weird-tales/4050-78341/" data-ref-id="4050-78341">Hellboy: Weird Tales</a> (#1-8)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2185362-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2185362-01.jpg	2015-04-06 21:51:03.374056	2015-04-07 20:05:20.277953	2003
164	Star Wars	11246	<p style="">Dark Horse's first ongoing Star Wars title. The title changed to <a href="/star-wars-republic/4050-20215/" data-ref-id="4050-20215">Star Wars: Republic</a> beginning with issue #46.</p><h2>Collected Editions</h2><h3>Trade Paperbacks</h3><ul><li><a href="/star-wars-prelude-to-rebellion/4050-40552/" data-ref-id="4050-40552">Prelude to Rebellion</a> (#1-6)</li><li><a href="/star-wars-outlander/4050-40550/" data-ref-id="4050-40550">Outlander</a> (#7-12)</li><li><a href="/star-wars-emissaries-to-malastare/4050-40553/" data-ref-id="4050-40553">Emissaries to Malastare</a> (#13-18)</li><li><a href="/star-wars-twilight/4050-40551/" data-ref-id="4050-40551">Twilight</a> (#19-22)</li><li><a href="/star-wars-the-hunt-for-aurra-sing/4050-40549/" data-ref-id="4050-40549">The Hunt for Aurra Sing</a> (#28-31)</li><li><a href="/star-wars-darkness/4050-40554/" data-ref-id="4050-40554">Darkness</a> (#32-35)</li><li><a href="/star-wars-the-stark-hyperspace-war/4050-40555/" data-ref-id="4050-40555">The Stark Hyperspace War</a> (#36-39)</li><li><a href="/star-wars-rite-of-passage/4050-40558/" data-ref-id="4050-40558">Rite of Passage</a> (#42-45)</li></ul><h3>Omnibuses</h3><ul><li><a href="/star-wars-omnibus-rise-of-the-sith/4050-31654/" data-ref-id="4050-31654">Rise of the Sith</a> (#1-6)</li><li><a href="/star-wars-omnibus-emissaries-and-assassins/4050-31711/" data-ref-id="4050-31711">Emissaries and Assassins</a> (#7-18)</li><li><a href="/star-wars-omnibus-quinlan-vos-jedi-in-darkness/4050-37306/" data-ref-id="4050-37306">Quinlan Vos: Jedi in Darkness</a> (#19-26, 36-45)</li><li><a href="/star-wars-omnibus-menace-revealed/4050-31712/" data-ref-id="4050-31712">Menace Revealed</a> (27-31)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/4/65745-11246-98742-1-star-wars.jpg	http://static.comicvine.com/uploads/scale_small/0/4/65745-11246-98742-1-star-wars.jpg	2015-04-06 21:51:03.37831	2015-04-07 20:05:20.784663	1998
165	Samurai Executioner	11924	<p style=""><i>'Punished is not the man himself but the evil that resides within him.'</i></p><p style="">Set in Edo period Japan this lyrical and often poignant series follows the life of Yamada Asaemon, the Shogun's sword tester and executioner. A master swordsman and devout buddhist, with every one of Yamada's executions comes a tale of morality and human tragedy in a violent time. Written and drawn by <a data-ref-id="4040-43005" href="/kazuo-koike/4040-43005/" slug="kazuo-koike">Kazuo Koike</a> and <a data-ref-id="4040-1931" href="/goseki-kojima/4040-1931/" slug="goseki-kojima">Goseki Kojima</a>, the legendary duo behind <a data-ref-id="4050-9319" href="/lone-wolf-and-cub/4050-9319/" slug="lone-wolf-and-cub">LONE WOLF AND CUB</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4/71282-11924-104280-1-samurai-executioner.jpg	http://static.comicvine.com/uploads/scale_small/0/4/71282-11924-104280-1-samurai-executioner.jpg	2015-04-06 21:51:03.382365	2015-04-07 20:05:21.097722	2004
167	Serenity	18135	<p style="">Serenity: Those Left Behind, bridges the gap between the Firefly TV series and it's feature film successor, Serenity. In the film Serenity, two of the main characters of Firefly had left the ship (Serenity). The mini-series subtitle, "Those Left Behind", is titled that way because the mini-series explains why those characters are no longer aboard the ship (specifically in issue # 3).</p><p style="">Collected in <a data-ref-id="4050-39605" href="/serenity-those-left-behind/4050-39605/">Serenity: Those Left Behind</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/1756/88873-18135-106240-1-serenity.jpg	http://static.comicvine.com/uploads/scale_small/0/1756/88873-18135-106240-1-serenity.jpg	2015-04-06 21:51:03.391426	2015-04-07 20:05:21.736982	2005
168	Red Rocket 7	18196	<h4>Collected Editions</h4><ul><li><a data-ref-id="4050-48562" href="/red-rocket-7/4050-48562/" slug="red-rocket-7">Red Rocket 7 TPB</a></li><li><a data-ref-id="4050-48561" href="/red-rocket-7/4050-48561/" slug="red-rocket-7">Red Rocket 7 Limited Edition HC</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/978/92352-18196-106572-1-red-rocket-7.jpg	http://static.comicvine.com/uploads/scale_small/0/978/92352-18196-106572-1-red-rocket-7.jpg	2015-04-06 21:51:03.395608	2015-04-07 20:05:22.092778	1997
169	Buffy the Vampire Slayer Season Eight	18201	<p style="">This is Season Eight of Joss Whedon's Buffy the Vampire Slayer. It is the canonical continuation of the adventures of <a data-ref-id="4005-20096" href="/buffy/4005-20096/" slug="buffy">Buffy Summers</a> and her friends after the end of the television show.</p><p style="">Please note that while many issues refer to themselves as simply "Buffy the Vampire Slayer" on the indicia they are still part of the the "Buffy the Vampire Slayer Season Eight" volume.</p><h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-28824" href="/buffy-the-vampire-slayer-season-eight-the-long-way-home/4050-28824/" slug="buffy-the-vampire-slayer-season-eight-the-long-way-home">The Long Way Home</a> (#1-5)</li><li><a data-ref-id="4050-28825" href="/buffy-the-vampire-slayer-season-eight-no-future-for-you/4050-28825/" slug="buffy-the-vampire-slayer-season-eight-no-future-for-you">No Future for You</a> (#6-10)</li><li><a data-ref-id="4050-28826" href="/buffy-the-vampire-slayer-season-eight-wolves-at-the-gate/4050-28826/" slug="buffy-the-vampire-slayer-season-eight-wolves-at-the-gate">Wolves at the Gate</a> (#11-15)</li><li><a data-ref-id="4050-28827" href="/buffy-the-vampire-slayer-season-eight-time-of-your-life/4050-28827/" slug="buffy-the-vampire-slayer-season-eight-time-of-your-life">Time of Your Life</a> (#16-20)</li><li><a data-ref-id="4050-28231" href="/buffy-the-vampire-slayer-season-eight-predators-and-prey/4050-28231/" slug="buffy-the-vampire-slayer-season-eight-predators-and-prey">Predators and Prey</a> (#21-25)</li><li><a data-ref-id="4050-40843" href="/buffy-the-vampire-slayer-season-eight-retreat/4050-40843/" slug="buffy-the-vampire-slayer-season-eight-retreat">Retreat</a> (#26-30)</li><li><a data-ref-id="4050-40844" href="/buffy-the-vampire-slayer-season-eight-twilight/4050-40844/" slug="buffy-the-vampire-slayer-season-eight-twilight">Twilight</a> (#31-35)</li><li><a data-ref-id="4050-40515" href="/buffy-the-vampire-slayer-season-eight-last-gleaming/4050-40515/" slug="buffy-the-vampire-slayer-season-eight-last-gleaming">Last Gleaming</a> (#36-40)</li></ul><h4>Hardcover Collections</h4><ul><li><a data-ref-id="4000-336719" href="/buffy-the-vampire-slayer-season-8-library-edition-hc/4000-336719/" slug="buffy-the-vampire-slayer-season-8-library-edition-hc">Buffy The Vampire Slayer Season 8 Library Edition vol. 1</a> (#1-10)</li><li><a data-ref-id="4000-356741" href="/buffy-the-vampire-slayer-season-8-library-edition-volume-2/4000-356741/" slug="buffy-the-vampire-slayer-season-8-library-edition-volume-2">Buffy The Vampire Slayer Season 8 Library Edition vol. 2</a> (#11-20)</li><li><a data-ref-id="4000-372387" href="/buffy-the-vampire-slayer-season-8-library-edition-volume-3/4000-372387/" slug="buffy-the-vampire-slayer-season-8-library-edition-volume-3">Buffy The Vampire Slayer Season 8 Library Edition vol. 3</a> (#21-30)</li><li><a data-ref-id="4000-392333" href="/buffy-the-vampire-slayer-season-8-library-edition-volume-4/4000-392333/" slug="buffy-the-vampire-slayer-season-8-library-edition-volume-4">Buffy The Vampire Slayer Season 8 Library Edition vol. 4</a> (#31-40)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/1756/92991-18201-106603-2-buffy-the-vampire-sl.jpg	http://static.comicvine.com/uploads/scale_small/0/1756/92991-18201-106603-2-buffy-the-vampire-sl.jpg	2015-04-06 21:51:03.399737	2015-04-07 20:05:22.650511	2007
171	B.P.R.D.: Garden of Souls	18268	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #29-33, following <a href="/bprd-the-universal-machine/4050-18435/" data-ref-id="4050-18435">B.P.R.D.: The Universal Machine</a> and preceding <a href="/bprd-killing-ground/4050-19002/" data-ref-id="4050-19002">B.P.R.D.: Killing Ground</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-garden-of-souls/4050-50550/" data-ref-id="4050-50550">B.P.R.D.: Garden of Souls</a> TPB</li><li><a href="/bprd-plague-of-frogs-3-vol-3/4000-322762/" data-ref-id="4000-322762">B.P.R.D.: Plague of Frogs #3 - Vol. 3</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170317-garden_of_souls_01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170317-garden_of_souls_01.jpg	2015-04-06 21:51:03.408301	2015-04-07 20:05:23.319515	2007
172	Hellboy: The Island	18271	<p style="">After more than two years at the bottom of the sea, Hellboy washes up on an island full of sunken ships.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2185323-01_cropped.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2185323-01_cropped.jpg	2015-04-06 21:51:03.416432	2015-04-07 20:05:23.625681	2005
173	Hellboy: The Wolves of Saint August	18274	<p style="">Reprints <a data-ref-id="4050-3739" href="/dark-horse-presents/4050-3739/" slug="dark-horse-presents">Dark Horse Presents</a> #88-91 with added colors and 8 additional pages.</p>	http://static.comicvine.com/uploads/scale_small/0/787/99344-18274-107010-1-hellboy-the-wolves.jpg	http://static.comicvine.com/uploads/scale_small/0/787/99344-18274-107010-1-hellboy-the-wolves.jpg	2015-04-06 21:51:03.421848	2015-04-07 20:05:23.934101	1995
174	Abe Sapien: Drums of the Dead	18275	<p style="">A solo adventure of <a href="/abe-sapien/4005-25795/" data-ref-id="4005-25795">Abe Sapien</a>, plus a <a href="/hellboy/4005-5466/" data-ref-id="4005-5466">Hellboy</a> story.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-hollow-earth-and-other-stories/4050-32946/" data-ref-id="4050-32946">B.P.R.D.: Hollow Earth and Other Stories</a></li></ul>	http://static.comicvine.com/uploads/scale_small/3/31666/2541658-cover.jpg	http://static.comicvine.com/uploads/scale_small/3/31666/2541658-cover.jpg	2015-04-06 21:51:03.425969	2015-04-07 20:05:24.285229	1998
175	B.P.R.D.: The Soul of Venice	18283	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, this one-shot would be #4, following <a href="/bprd-hollow-earth/4050-18285/" data-ref-id="4050-18285"> B.P.R.D.: Hollow Earth</a> and preceding <a href="/bprd-dark-waters/4050-18288/" data-ref-id="4050-18288"> B.P.R.D.: Dark Waters</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-the-soul-of-venice-and-other-stories/4050-50079/" data-ref-id="4050-50079">B.P.R.D.: The Soul of Venice and Other Stories</a> TPB</li><li><a href="/bprd-plague-of-frogs-1-vol-1/4000-322760/" data-ref-id="4000-322760">B.P.R.D.: Plague of Frogs #1 - Vol. 1</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170382-the_soul_of_venice.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170382-the_soul_of_venice.jpg	2015-04-06 21:51:03.429765	2015-04-07 20:05:24.683454	2003
177	B.P.R.D.: Hollow Earth	18285	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the three issues of this miniseries would be #1-3, preceding <a href="/bprd-the-soul-of-venice/4050-18283/" data-ref-id="4050-18283">B.P.R.D.: The Soul of Venice</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-hollow-earth-and-other-stories/4050-32946/" data-ref-id="4050-32946">B.P.R.D.: Hollow Earth and Other Stories</a> TPB</li><li><a href="/bprd-plague-of-frogs-1-vol-1/4000-322760/" data-ref-id="4000-322760">B.P.R.D.: Plague of Frogs #1 - Vol. 1</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/0/787/99417-18285-107029-1-b-p-r-d--hollow-ear.jpg	http://static.comicvine.com/uploads/scale_small/0/787/99417-18285-107029-1-b-p-r-d--hollow-ear.jpg	2015-04-06 21:51:03.439236	2015-04-07 20:05:25.925575	2002
178	B.P.R.D.: There's Something Under My Bed	18286	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, this one-shot would be #7, following <a data-ref-id="4050-18287" href="/bprd-night-train/4050-18287/" slug="bprd-night-train"> B.P.R.D.: Night Train</a> and preceding <a data-ref-id="4050-18294" href="/bprd-plague-of-frogs/4050-18294/" slug="bprd-plague-of-frogs"> B.P.R.D.: Plague of Frogs</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2170380-there_s_something_under_my_bed.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170380-there_s_something_under_my_bed.jpg	2015-04-06 21:51:03.443814	2015-04-07 20:05:26.291342	2003
179	B.P.R.D.: Night Train	18287	<p style=""> </p><p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, this one-shot would be #6, following <a data-ref-id="4050-18288" href="/bprd-dark-waters/4050-18288/" slug="bprd-dark-waters"> B.P.R.D.: Dark Waters</a> and preceding <a data-ref-id="4050-18286" href="/bprd-theres-something-under-my-bed/4050-18286/" slug="bprd-theres-something-under-my-bed"> B.P.R.D.: There's Something Under My Bed</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2170341-night_train.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170341-night_train.jpg	2015-04-06 21:51:03.447215	2015-04-07 20:05:26.580341	2003
180	B.P.R.D.: Dark Waters	18288	<p style=""> </p><p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, this one-shot would be #5, following <a data-ref-id="4050-18283" href="/bprd-the-soul-of-venice/4050-18283/" slug="bprd-the-soul-of-venice">B.P.R.D.: The Soul of Venice</a> and preceding <a data-ref-id="4050-18287" href="/bprd-night-train/4050-18287/" slug="bprd-night-train">B.P.R.D.: Night Train</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2170316-dark_waters.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170316-dark_waters.jpg	2015-04-06 21:51:03.451168	2015-04-07 20:05:26.882039	2003
181	B.P.R.D.: Plague of Frogs	18294	<p style="">The first B.P.R.D. story solely written by <a href="/mike-mignola/4040-1672/" data-ref-id="4040-1672">Mike Mignola</a>.</p><p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #8-12, following <a href="/bprd-theres-something-under-my-bed/4050-18286/" data-ref-id="4050-18286"> B.P.R.D.: There's Something Under My Bed</a> and preceding <a href="/bprd-the-dead/4050-18309/" data-ref-id="4050-18309"> B.P.R.D.: The Dead</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-plague-of-frogs/4050-50058/" data-ref-id="4050-50058">B.P.R.D.: Plague of Frogs</a> TPB</li><li><a href="/bprd-plague-of-frogs-1-vol-1/4000-322760/" data-ref-id="4000-322760">B.P.R.D.: Plague of Frogs Vol. 1</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170355-plague_of_frogs_1.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170355-plague_of_frogs_1.jpg	2015-04-06 21:51:03.455348	2015-04-07 20:05:27.253731	2004
182	B.P.R.D.: The Dead	18309	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #13-17, following <a href="/bprd-plague-of-frogs/4050-18294/" data-ref-id="4050-18294"> B.P.R.D.: Plague of Frogs</a> and preceding <a href="/bprd-the-black-flame/4050-18381/" data-ref-id="4050-18381"> B.P.R.D.: The Black Flame</a>.</p><h2>Collected Editions</h2><ul><li><a href="//www.comicvine.com/b-p-r-d-the-dead/4050-64103/" data-ref-id="4050-64103">B.P.R.D.: The Dead</a> TPB</li><li><a href="//www.comicvine.com/bprd-plague-of-frogs-2-vol-2/4000-322761/" data-ref-id="4000-322761">B.P.R.D.: Plague of Frogs #2 - Vol. 2</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170371-the_dead_1.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170371-the_dead_1.jpg	2015-04-06 21:51:03.458871	2015-04-07 20:05:27.5778	2004
184	Chosen	18350	<p style="">A mini-series about the second coming of Jesus Christ as a boy in the 1980s. <br/>Collected as <a data-ref-id="4050-34705" href="/chosen/4050-34705/" slug="chosen"> Chosen</a> (2005) by Dark Horse Comics and then again renamed as American Jesus: Volume 1. CHOSEN  (2009)</p><figure data-align="left" data-embed-type="image" data-img-src="http://static.comicvine.com/uploads/original/6/62444/1322399-4163cmibxvl.jpg" data-ref-id="1300-1322399" data-resize-url="" data-resized="" data-size="medium" data-ratio="1.5384615384615" data-width="325" style="width: 325px"><a class="fluid-height" style="padding-bottom:153.8%" href="http://static.comicvine.com/uploads/original/6/62444/1322399-4163cmibxvl.jpg" data-ref-id="1300-1322399"><img src="http://static.comicvine.com/uploads/original/6/62444/1322399-4163cmibxvl.jpg"></a></figure> <p style=""><br/><br/> <br/> <br/> <br/> <br/> <br/>  <br/></p>	http://static.comicvine.com/uploads/scale_small/6/67663/2755628-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2755628-01.jpg	2015-04-06 21:51:03.466175	2015-04-07 20:05:28.279543	2003
185	Body Bags	18363	\N	http://static.comicvine.com/uploads/scale_small/0/1812/102290-18363-107646-1-body-bags.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/102290-18363-107646-1-body-bags.jpg	2015-04-06 21:51:03.472607	2015-04-07 20:05:28.543079	1996
186	B.P.R.D.: The Black Flame	18381	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the six issues of this miniseries would be #18-23, following <a href="/bprd-the-dead/4050-18309/" data-ref-id="4050-18309">B.P.R.D.: The Dead</a> and preceding <a href="/bprd-the-universal-machine/4050-18435/" data-ref-id="4050-18435">B.P.R.D.: The Universal Machine</a>.</p><h4>Collected Editions</h4><ul><li><a href="/bprd-the-black-flame/4050-50552/" data-ref-id="4050-50552">B.P.R.D.: The Black Flame</a> TPB</li><li><a href="//www.comicvine.com/bprd-plague-of-frogs-2-vol-2/4000-322761/" data-ref-id="4000-322761">B.P.R.D.: Plague of Frogs #2 - Vol. 2</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170363-the_black_flame_01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170363-the_black_flame_01.jpg	2015-04-06 21:51:03.47622	2015-04-07 20:05:28.889703	2005
187	Hellboy: Conqueror Worm	18423	<p style="">The B.P.R.D. sends Hellboy on a mission, that will be his last. At the end of world war II Lobster Johnson attacked Hitlers crewed spaceflight program. He can't avoid that the nazis launched a spaceship with an human on board.</p><p style="">60 years later, Hellboy and Roger are going to catch the returning space-capsule and his passenger... the conquer worm!</p>	http://static.comicvine.com/uploads/scale_small/0/787/105116-18423-108035-1-hellboy-conqueror-w.jpg	http://static.comicvine.com/uploads/scale_small/0/787/105116-18423-108035-1-hellboy-conqueror-w.jpg	2015-04-06 21:51:03.479688	2015-04-07 20:05:29.304752	2001
188	B.P.R.D.: The Universal Machine	18435	<p style="">"The Universal Machine" deals with the ramifications of Roger's death as Kate tries to get a book that might save him. Also features the introduction of <a href="/andrew-devon/4005-43102/" data-ref-id="4005-43102">Andrew Devon</a>.</p><p style="">Written by <a href="/mike-mignola/4040-1672/" data-ref-id="4040-1672">Mike Mignola</a> and <a href="/john-arcudi/4040-42597/" data-ref-id="4040-42597">John Arcudi</a>, illustrated by <a href="/guy-davis/4040-7048/" data-ref-id="4040-7048">Guy Davis</a> (and Mignola in an uncredited epilogue).</p><p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #24-28, following <a href="/bprd-the-black-flame/4050-18381/" data-ref-id="4050-18381">B.P.R.D.: The Black Flame</a> and preceding <a href="/bprd-garden-of-souls/4050-18268/" data-ref-id="4050-18268">B.P.R.D.: Garden of Souls</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-the-universal-machine/4050-50551/" data-ref-id="4050-50551">B.P.R.D.: The Universal Machine</a> TPB</li><li><a href="/bprd-plague-of-frogs-3-vol-3/4000-322762/" data-ref-id="4000-322762">B.P.R.D.: Plague of Frogs #3 - Vol. 3</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170384-the_universal_machine_01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170384-the_universal_machine_01.jpg	2015-04-06 21:51:03.483199	2015-04-07 20:05:29.818575	2006
190	Hellboy: The Third Wish	18479	<p style="">Hellboy leaves behind the familiar strangeness of the B.P.R.D. for even stranger places.</p><p style="">Collected in <a href="/hellboy-strange-places/4050-33637/" data-ref-id="4050-33637">Hellboy: Strange Places</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2185328-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2185328-01.jpg	2015-04-06 21:51:03.491218	2015-04-07 20:05:30.498846	2002
192	Predator: The Bloody Sands of Time	18492	\N	http://static.comicvine.com/uploads/scale_small/0/229/109731-18492-108585-1-predator-the-bloody.jpg	http://static.comicvine.com/uploads/scale_small/0/229/109731-18492-108585-1-predator-the-bloody.jpg	2015-04-06 21:51:03.498909	2015-04-07 20:05:31.060265	1992
193	Who Wants to be a Superhero?	18513	<p style="">One of the prizes of the Sci-Fi Channel show is that the winner gets his/her own comic book for their original character. This series is beginning with a preview of Feedback, the winner of Season 1.</p>	http://static.comicvine.com/uploads/scale_small/0/934/146577-18513-111336-1-who-wants-to-be-a-su.jpg	http://static.comicvine.com/uploads/scale_small/0/934/146577-18513-111336-1-who-wants-to-be-a-su.jpg	2015-04-06 21:51:03.502222	2015-04-07 20:05:31.402972	2007
194	Hellboy: Darkness Calls	18536	<p style="">The long-awaited follow-up to 2005's The Island.  Six issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2185251-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2185251-01.jpg	2015-04-06 21:51:03.506881	2015-04-07 20:05:31.800429	2007
195	Star Wars: Legacy	18575	<p style="">Set approximately 137 years after the Battle of Yavin. This series features a new Skywalker, Cade Skywalker. He has forsaken the Jedi Order to live among pirates. He does not differentiate between the light and dark side of the Force.</p><p style="">Other events are also taking place. A new Sith Order has emerged under the leadership of a Darth Krayt. The order has overthrown the Jedi and the Empire, establishing itself as the dominant ruler.</p><p style="">Continued in Volume 2 - <a href="//www.comicvine.com/star-wars-legacy/4050-59185/" data-ref-id="4050-59185">Star Wars: Legacy</a></p><h4>Collected Editions</h4><ul><li><a href="http://www.comicvine.com/star-wars-legacy-1-book-1/4000-408979/" data-ref-id="4000-408979">Star Wars: Legacy Book 1</a> (#1-?)</li><li><a href="http://www.comicvine.com/star-wars-legacy-2-book-2/4000-425017/" data-ref-id="4000-425017">Star Wars: Legacy Book 2</a> (#?)</li><li><a href="http://www.comicvine.com/star-wars-legacy-3-book-3/4000-444508/" data-ref-id="4000-444508">Star Wars: Legacy Book 3</a> (#?)</li><li><a href="/star-wars-legacy-storms/4050-73038/" data-ref-id="4050-73038">Star Wars: Legacy - Storms</a> (#32-36)</li><li><a href="/star-wars-legacy-tatooine/4050-73039/" data-ref-id="4050-73039">Star Wars: Legacy - Tatooine</a> (#37-41)</li><li><a href="/star-wars-legacy-monster/4050-73040/" data-ref-id="4050-73040">Star Wars: Legacy - Monster</a> (#42-46)</li><li><a href="/star-wars-legacy-extremes/4050-73037/" data-ref-id="4050-73037">Star Wars: Legacy - Extremes</a> (#47-50)</li></ul>	http://static.comicvine.com/uploads/scale_small/11/119711/3001986-1.jpg	http://static.comicvine.com/uploads/scale_small/11/119711/3001986-1.jpg	2015-04-06 21:51:03.5145	2015-04-07 20:05:32.38184	2006
196	Satan's Sodomy Baby	18620	<p style="">Overview</p><p style="">Eric Powell presents the single most offensive, controversial, and flat-out loathsome comic ever published by Dark Horse. Powell pulls no punches in his outrageous shots at major religions, political pundits, sexual practices, liberals, conservatives, rural life, and even the Prince of Darkness himself. No one is safe! The contents of this issue will never be collected, so this is your only chance to see them in all their filthy and despicable glory.</p><h2>WARNING: This is NOT an all-ages book.</h2><p style="">Never to be collected!</p><p style=""><a data-ref-id="4040-44213" href="/eric-powell/4040-44213/" slug="eric-powell">Eric Powell</a>, creator/writer/illustrator of <a data-ref-id="4050-18632" href="/the-goon/4050-18632/" slug="the-goon">The Goon</a>, manufactured controversy over this special issue using the [made-up] conservative, Bible-thumper, Margaret Snodgrass. Mrs. Snodgrass caused delay of the story (originally to be published as The Goon #18).</p><p style="">In September 2010 on Twitter, Mr. Powell confirmed that a sequel to Satan's Sodomy Baby was indeed in the works. It will be officially called SSB2 to avoid the same issues with the title of the first story.</p><figure data-align="right" data-embed-type="image" data-img-src="http://static.comicvine.com/uploads/original/7/74448/1393174-ssb2.jpg" data-ref-id="1300-1393174" data-resize-url="" data-resized="" data-size="medium" data-ratio="1.5550755939525" data-width="463" style="width: 463px"><a class="fluid-height" style="padding-bottom:155.5%" href="http://static.comicvine.com/uploads/original/7/74448/1393174-ssb2.jpg" data-ref-id="1300-1393174"><img src="http://static.comicvine.com/uploads/original/7/74448/1393174-ssb2.jpg"></a></figure>	http://static.comicvine.com/uploads/scale_small/0/40/126190-18620-109833-1-satan-s-sodomy-baby.png	http://static.comicvine.com/uploads/scale_small/0/40/126190-18620-109833-1-satan-s-sodomy-baby.png	2015-04-06 21:51:03.517845	2015-04-07 20:05:32.68674	2007
198	Duckman	18666	<p style="">The adventures of everyone's favorite private dick / family man four years before the cartoon debuted.</p>	http://static.comicvine.com/uploads/scale_small/0/3125/130987-18666-110255-1-duckman.jpg	http://static.comicvine.com/uploads/scale_small/0/3125/130987-18666-110255-1-duckman.jpg	2015-04-06 21:51:03.526471	2015-04-07 20:05:33.60061	1990
199	Rex Mundi	18736	<p style="">Continued from <a href="http://www.comicvine.com/rex-mundi/4050-11277/" data-ref-id="4050-11277">Rex Mundi Vol. 1</a> (2002-2006), published by Image.</p><h4>Trade Paperback Collections</h4><ul><li><a href="/rex-mundi-crown-and-sword-volume-4/4000-334358/" data-ref-id="4000-334358">Rex Mundi: Crown And Sword</a> (#18 from Image, #1-5 from Dark Hose)</li><li><a href="/rex-mundi-the-valley-at-the-end-of-the-world-volume-5/4000-334360/" data-ref-id="4000-334360">Rex Mundi: The Valley At The End Of The World</a> (#6-12)</li><li><a href="/rex-mundi-gate-of-god-volume-6/4000-334361/" data-ref-id="4000-334361">Rex Mundi: Gate Of God</a> (#13-19)</li></ul><h4>Omnibus Editions</h4><ul><li><p style=""><a href="http://www.comicvine.com/rex-mundi-omnibus/4050-51621/">Rex Mundi Omnibus</a> <a href="http://www.comicvine.com/rex-mundi-omnibus-2-volume-2/4000-384946/">#2</a> (#18 from Image, #1-19 from Dark Horse)</p></li></ul><p style=""> </p>	http://static.comicvine.com/uploads/scale_small/2/26462/529033-rexmundi1.jpg	http://static.comicvine.com/uploads/scale_small/2/26462/529033-rexmundi1.jpg	2015-04-06 21:51:03.530296	2015-04-07 20:05:34.010241	2006
200	Motorhead	18750	<p style="">The continuing adventures of Motorhead from Steel Harbor. Motorhead has another psyche and powers locked into mind.</p>	http://static.comicvine.com/uploads/scale_small/0/1867/138106-18750-110860-1-motorhead.gif	http://static.comicvine.com/uploads/scale_small/0/1867/138106-18750-110860-1-motorhead.gif	2015-04-06 21:51:03.533771	2015-04-07 20:05:34.419514	1995
202	Machine	18752	<p style="">From the pages of Barb Wire comes Avram Roman, the Machine. A tale of mistaken identity and retribution in Steel Harbor.</p>	http://static.comicvine.com/uploads/scale_small/0/1867/138109-18752-110862-1-machine.gif	http://static.comicvine.com/uploads/scale_small/0/1867/138109-18752-110862-1-machine.gif	2015-04-06 21:51:03.541876	2015-04-07 20:05:35.072332	1994
203	Barb Wire	18756	<p style="">Steel Harbor, the industrial metropolis of Comics' Greatest World, was torn apart by widespread riots among superpowered gang members.</p><p style="">Barb Wire, armed with her arsenal and an attitude, is willing to right any wrong...for a price.</p>	http://static.comicvine.com/uploads/scale_small/0/1867/138113-18756-110875-1-barb-wire.gif	http://static.comicvine.com/uploads/scale_small/0/1867/138113-18756-110875-1-barb-wire.gif	2015-04-06 21:51:03.545496	2015-04-07 20:05:35.443914	1994
204	King Tiger & Motorhead	18757	<p style="">King Tiger and Motorhead go to New Orleans for some fun, but end up on the hunt for a murderer in a two issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/0/9541/1297341-arcadia_3.jpg	http://static.comicvine.com/uploads/scale_small/0/9541/1297341-arcadia_3.jpg	2015-04-06 21:51:03.54932	2015-04-07 20:05:35.752	1996
205	Fear Agent: The Last Goodbye	18791	<p style="">The Earth is caught up in a war between three alien races.</p><p style="">These issues counted as issues #12-15 in the <a href="../../fear-agent/49-20725/" rel="nofollow">Fear Agent</a> volume.</p><p style="">Collected in <a data-ref-id="4000-321814" href="/fear-agent-the-last-goodbye-vol-3/4000-321814/" slug="fear-agent-the-last-goodbye-vol-3">Fear Agent: The Last Goodbye</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2658381-12.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2658381-12.jpg	2015-04-06 21:51:03.553249	2015-04-07 20:05:36.162511	2007
206	Star Wars: Rebellion	18864	<p style="">A series of comics set during the <a data-ref-id="4045-55920" href="/galactic-civil-war/4045-55920/" slug="galactic-civil-war">Galactic Civil War</a>.</p><h2>Collected Editions</h2><ul><li><a data-ref-id="4050-58517" href="/star-wars-rebellion-my-brother-my-enemy/4050-58517/" slug="star-wars-rebellion-my-brother-my-enemy">Star Wars: Rebellion - My Brother, My Enemy</a> (#0, 1-5)</li><li><a data-ref-id="4050-58519" href="/star-wars-rebellion-the-ahakista-gambit/4050-58519/" slug="star-wars-rebellion-the-ahakista-gambit">Star Wars: Rebellion - The Ahakista Gambit</a> (#6-10)</li><li><a data-ref-id="4050-58516" href="/star-war-rebellion-small-victories/4050-58516/" slug="star-war-rebellion-small-victories">Star Wars: Rebellion - Small Victories</a> (#11-14)</li><li><a data-ref-id="4000-227383" href="/star-wars-vector-volume-2/4000-227383/" slug="star-wars-vector-volume-2">Star Wars: Vector Vol. 2</a> (#15-16)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/8015/263507-18864-120509-1-star-wars-rebellion.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263507-18864-120509-1-star-wars-rebellion.jpg	2015-04-06 21:51:03.557572	2015-04-07 20:05:36.652569	2006
208	Star Wars: Dark Times	18888	<p style="">"For over a thousand generations the Jedi Knights were the guardians of peace and justice in the Old Republic. Before the dark times, before the Empire."</p><p style="">-Ben Kenobi</p><p style="">In Star Wars Dark Times, the time period referenced in Ben Kenobi's immortal words is finally unlocked! The new series to be released this fall from Dark Horse Comics will move into the new, unexplored territory of the time period immediately following Revenge of the Sith, with references to the Del Rey novel Dark Lord.</p><p style="">Even as the worlds of the former Republic are drawn into the iron grip of Palpatine's Empire, the galaxy seems adrift in a sea of chaos, lawlessness and despair.</p><p style="">On Coruscant, Darth Vader waits for his Master to reveal his vision for the future. But is there a plan beyond obtaining power? On New Plympto, Jedi Master Dass Jennir leads a Nosaurian army in a war they have already lost. Is this what it now means to be a Jedi?</p><p style="">Star Wars: Dark Times is a continuation of <a href="../../star-wars-republic/49-20215/" rel="nofollow">Star Wars: Republic</a> , that ended with issue 83. This series has a new number 1 and a new title, but the indica still states "Star Wars Republic" and continues to count on from issue 84 and on. The series lasted until issue 17 (or issue 100 of Star Wars: Republic), but recently continued in a mini-series named <a href="../../star-wars-dark-times-out-of-the-wilderness/49-41881/" rel="nofollow">Star Wars: Dark Times - Out Of The Wilderness</a>. That series, even though a mini-series, continues to count on as Star Wars: Republic in the indica.</p><h4>Collected Editions</h4><ul><li><a data-ref-id="4000-363080" href="/star-wars-dark-times-volume-1-the-path-to-nowhere/4000-363080/" slug="star-wars-dark-times-volume-1-the-path-to-nowhere">Star Wars: Dark Times vol 1: The Path to Nowhere</a> (#1-5)</li><li><a data-ref-id="4000-363081" href="/star-wars-dark-times-volume-2-parallels/4000-363081/" slug="star-wars-dark-times-volume-2-parallels">Star Wars: Dark Times vol 2: Parallels</a> (#6-10)</li><li><a data-ref-id="4000-227380" href="/star-wars-vector-volume-1/4000-227380/" slug="star-wars-vector-volume-1">Star Wars: Vector vol. 1</a> (#11-12)</li><li><a data-ref-id="4000-363082" href="/star-wars-dark-times-volume-4-blue-harvest/4000-363082/" slug="star-wars-dark-times-volume-4-blue-harvest">Star Wars: Dark Times vol 4: Blue Harvest</a> (#0 &amp; 13-17)</li></ul>	http://static.comicvine.com/uploads/scale_small/1/15455/459946-swdt.jpg	http://static.comicvine.com/uploads/scale_small/1/15455/459946-swdt.jpg	2015-04-06 21:51:03.567332	2015-04-07 20:05:37.405824	2006
210	Happy Birthday Martha Washington	18891	\N	http://static.comicvine.com/uploads/scale_small/0/1812/154195-18891-111662-1-happy-birthday-marth.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/154195-18891-111662-1-happy-birthday-marth.jpg	2015-04-06 21:51:03.57681	2015-04-07 20:05:37.982728	1995
211	Grendel: Behold The Devil	18905	<p style="">Grendel feels himself stalked by an unknown presence. At first he believes this haunting presence to be Argent, but when confronted by Argent Grendel learns otherwise. As Grendel, Hunter Rose is enemy to police and criminal alike. Losing his edge is not an option. Grendel seeks mystic help from an enemy voodoo master to cure what ails him. Matt Wagner launches a stunning all-new miniseries featuring the Devil himself!</p><p style="">Collected in <a data-ref-id="4000-323303" href="/grendel-behold-the-devil-hc/4000-323303/" slug="grendel-behold-the-devil-hc">Grendel: Behold the Devil</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787548-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787548-01.jpg	2015-04-06 21:51:03.581053	2015-04-07 20:05:38.432772	2007
212	Samurai: Heaven & Earth Volume II	18908	<p style="">Indicia titled as "Samurai: Heaven &amp; Earth Volume II".</p><p style="">Samurai: Heaven &amp; Earth mini-series, the year is 1704, and the samurai Asukai Shiro travels across Asia and to Europe to retrieve his beloved Lady Yoshiko, who was kidnapped and sold into slavery. After foiling an assassination plot against King Louis XIV of France with the King’s Musketeers, Shiro finds and loses Yoshiko again.</p><p style="">Collected in <a data-ref-id="4000-335508" href="/samurai-heaven-earth-volume-2/4000-335508/" slug="samurai-heaven-earth-volume-2">Samurai: Heaven &amp; Earth volume 2</a>.</p>	http://static.comicvine.com/uploads/scale_small/7/73748/1339185-samurai_heaven___earth_v2_01fc_filtered.jpg	http://static.comicvine.com/uploads/scale_small/7/73748/1339185-samurai_heaven___earth_v2_01fc_filtered.jpg	2015-04-06 21:51:03.585189	2015-04-07 20:05:38.737175	2006
213	Zero Killer	18915	<p style="">An all-new miniseries from Rex Mundi creator Arvid Nelson!</p>	http://static.comicvine.com/uploads/scale_small/0/308/155944-18915-111791-1-zero-killer.jpg	http://static.comicvine.com/uploads/scale_small/0/308/155944-18915-111791-1-zero-killer.jpg	2015-04-06 21:51:03.58899	2015-04-07 20:05:39.07759	2007
214	Speak Of The Devil	18936	<p style="">Collected in <a data-ref-id="4050-48580" href="/speak-of-the-devil/4050-48580/" slug="speak-of-the-devil">Speak Of The Devil</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2516617-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2516617-01.jpg	2015-04-06 21:51:03.593107	2015-04-07 20:05:39.368409	2007
215	Star Wars: Knights of the Old Republic	18937	<p style=""><i>Thousands of years before Luke Skywalker would destroy the Death Star in that fateful battle above Yavin 4, one lone Padawan would become a fugitive hunted by his own Masters, charged with murdering every one of his fellow Jedi-in-training!</i></p><p style="">Continued in <a href="/star-wars-knights-of-the-old-republic-war/4050-45153/" data-ref-id="4050-45153">Star Wars: Knights of the Old Republic - War</a>.</p><h4>Collected Editions</h4><ul><li><a href="/star-wars-knights-of-the-old-republic-commencement/4050-45204/" data-ref-id="4050-45204">Commencement</a> (#0-6)</li><li><a href="http://www.comicvine.com/star-wars-omnibus-knight-of-the-old-republic-1-vol/4000-422487/" data-ref-id="4000-422487">Star Wars Omnibus: Knights of the Old Republic vol. 1</a> (#0-18)</li><li><a href="/star-wars-knights-of-the-old-republic-flashpoint/4050-45217/" data-ref-id="4050-45217">Flashpoint</a> (#7-12)</li><li><a href="/star-wars-knights-of-the-old-republic-days-of-fear-nights-of-anger/4050-45632/" data-ref-id="4050-45632">Days of Fear, Nights of Anger</a> (#13-18)</li><li><a href="/star-wars-knights-of-the-old-republic-daze-of-hate-knights-of-suffering/4050-47294/" data-ref-id="4050-47294">Daze of Hate, Knights of Suffering</a> (#19-24)</li><li><a href="http://www.comicvine.com/star-wars-omnibus-knights-of-the-old-republic-2-vo/4000-438375/" data-ref-id="4000-438375">Star Wars Omnibus: Knights of the Old Republic vol. 2</a> (#19-37)</li><li><a href="/star-wars-vector/4050-34681/" data-ref-id="4050-34681">Vector</a> (#25-28)</li><li><a href="/star-wars-knights-of-the-old-republic-vindication/4050-48223/" data-ref-id="4050-48223">Vindication</a> (#29-35)</li><li><a href="/star-wars-knights-of-the-old-republic-dueling-ambitions/4050-53551/" data-ref-id="4050-53551">Dueling Ambitions</a> (#36-41)</li><li><a href="http://www.comicvine.com/star-wars-omnibus-knights-of-the-old-republic-3-vo/4000-451069/" data-ref-id="4000-451069">Star Wars Omnibus: Knights of the Old Republic vol. 3</a> (#38-50)</li><li><a href="/star-wars-knights-of-the-old-republic-destroyer/4050-53553/" data-ref-id="4050-53553">Destroyer</a> (#42-46)</li><li><a href="/star-wars-knights-of-the-old-republic-demon/4050-53554/" data-ref-id="4050-53554">Demon</a> (#47-50)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/4404631-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/4404631-01.jpg	2015-04-06 21:51:03.596883	2015-04-07 20:05:39.864831	2006
216	Conan and the Midnight God	18939	<p style="">Conan has won the throne of Aquilonia and the hand of the beautiful Zenobia. With a kingdom to rule and an heir on the way, will the Cimmerian finally put up his sword for good? Don't bet on it. When his bride and country are attacked by a sinister Stygian sorcerer, Conan strikes back at Stygia with all his might - and the might of Aquilonia - in a move that threatens to throw all Hyboria into chaos! Written by Joshua Dysart (Swamp Thing, Violent Messiahs) and drawn by upcoming Kull artist Will Conrad (Serenity, Buffy the Vampire Slayer), Conan and the Midnight God is an exciting new chapter in the adventures of the barbarian king.</p><p style="">Collected in <a data-ref-id="4050-44754" href="/conan-and-the-midnight-god/4050-44754/" slug="conan-and-the-midnight-god">Conan and the Midnight God</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/787/159331-18939-112027-1-conan-and-the-midnig.jpg	http://static.comicvine.com/uploads/scale_small/0/787/159331-18939-112027-1-conan-and-the-midnig.jpg	2015-04-06 21:51:03.601595	2015-04-07 20:05:40.187065	2007
218	Predator Omnibus	18950	<p style="">Series of Omnibus Edition trade paperbacks collecting various Predator stories.</p>	http://static.comicvine.com/uploads/scale_small/0/787/162095-18950-112287-1-predator-omnibus.jpg	http://static.comicvine.com/uploads/scale_small/0/787/162095-18950-112287-1-predator-omnibus.jpg	2015-04-06 21:51:03.610543	2015-04-07 20:05:40.797802	2007
219	B.P.R.D.: Killing Ground	19002	<p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #34-38, following <a href="/bprd-garden-of-souls/4050-18268/" data-ref-id="4050-18268">B.P.R.D.: Garden of Souls</a> and preceding <a href="/bprd-1946/4050-20297/" data-ref-id="4050-20297">B.P.R.D.: 1946</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-killing-ground/4050-50549/" data-ref-id="4050-50549">B.P.R.D.: Killing Ground</a> TPB</li><li><a href="/bprd-plague-of-frogs-3-vol-3/4000-322762/" data-ref-id="4000-322762">B.P.R.D.: Plague of Frogs #3 - Vol. 3</a> HC</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170330-killing_ground_01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170330-killing_ground_01.jpg	2015-04-06 21:51:03.615316	2015-04-07 20:05:41.142788	2007
220	Dark Horse Presents Annual	19043	<p style="">The first Dark Horse Presents Annual was in 1997.</p>	http://static.comicvine.com/uploads/scale_small/0/77/219435-19043-116229-1-dark-horse-presents.jpg	http://static.comicvine.com/uploads/scale_small/0/77/219435-19043-116229-1-dark-horse-presents.jpg	2015-04-06 21:51:03.619128	2015-04-07 20:05:41.489903	1997
221	Buffy the Vampire Slayer: Omnibus	19054	<p style="">The smash TV hit Buffy the Vampire Slayer led to nearly a decade of comics at Dark Horse-including multiple specials, one-shots, and guest miniseries.</p><p style="">This omnibus series is the ultimate compilation of the Buffy comics Dark Horse has published, and runs along the TV series' timeline.</p><p style="">A fitting companion to Whedon's comics-based relaunch of the show.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3613359-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3613359-01.jpg	2015-04-06 21:51:03.624561	2015-04-07 20:05:41.895925	2007
223	Aliens Omnibus	19079	<p style="">Dark Horse Comics took the industry by storm with its release of Aliens, a comics series that for the first time captured the power of film source material and expanded its universe in a way that fans applauded worldwide.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3416626-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3416626-01.jpg	2015-04-06 21:51:03.631897	2015-04-07 20:05:42.61442	2007
224	Star Wars Omnibus: X-Wing Rogue Squadron	19080	<p style="">The greatest starfighters of the Rebel Alliance become the defenders of a New Republic in this massive collection of stories featuring Wedge Antilles, hero of the Battle of Endor, and his team of ace pilots known throughout the galaxy as Rogue Squadron!</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3515531-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3515531-01.jpg	2015-04-06 21:51:03.636133	2015-04-07 20:05:43.088019	2006
225	Emily the Strange	19083	<p style="">Emily returns and she's going face-to-face with death itself!</p><p style="">Collected in <a href="http://www.comicvine.com/emily-the-strange-2-these-are-my-issues/4000-450376/" data-ref-id="4000-450376">Emily the Strange vol. 2</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/787/184433-19083-113966-1-emily-the-strange.jpg	http://static.comicvine.com/uploads/scale_small/0/787/184433-19083-113966-1-emily-the-strange.jpg	2015-04-06 21:51:03.6405	2015-04-07 20:05:43.407952	2007
226	Spyboy	19091	<p style="">Issue #13 was released as three separate issues titled <a data-ref-id="4050-26401" href="/spyboy-the-manga-affair/4050-26401/" slug="spyboy-the-manga-affair">Spyboy: The M.A.N.G.A. Affair</a>.</p><h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4000-316072" href="/spyboy-the-deadly-gourmet-affair-vol-1/4000-316072/" slug="spyboy-the-deadly-gourmet-affair-vol-1">The Deadly Gourmet Affair</a> (#1-3)</li><li><a data-ref-id="4000-316074" href="/spyboy-trial-and-terror-vol-2/4000-316074/" slug="spyboy-trial-and-terror-vol-2">Trial and Terror</a> (#4-6)</li><li><a data-ref-id="4000-316075" href="/spyboy-bet-your-life-vol-3/4000-316075/" slug="spyboy-bet-your-life-vol-3">Bet Your Life</a> (#7-9)</li><li><a data-ref-id="4000-316076" href="/spyboy-undercover-underwear-vol-4/4000-316076/" slug="spyboy-undercover-underwear-vol-4">Undercover, Underwear!</a> (#10-12)</li><li><a data-ref-id="4000-316077" href="/spyboy-spy-school-confidential-vol-5/4000-316077/" slug="spyboy-spy-school-confidential-vol-5">Spy-School Confidential</a> (#14-17)</li></ul>	http://static.comicvine.com/uploads/scale_small/0/1812/186342-19091-114061-1-spy-boy.jpg	http://static.comicvine.com/uploads/scale_small/0/1812/186342-19091-114061-1-spy-boy.jpg	2015-04-06 21:51:03.643676	2015-04-07 20:05:43.745719	1999
227	Lobster Johnson: The Iron Prometheus	19110	<p style="">After years of captivating fans from the pages of Hellboy and B.P.R.D., the pulp-style adventures of Lobster Johnson take the limelight in the Lobster's first solo series. Written and with covers by Hellboy creator Mike Mignola, and drawn by Jason Armstrong (Ferro City, The Sensational Spider-Man), Lobster Johnson: The Iron Prometheus is a wild ride full of fearsome monsters, mad scientists, and threats from the world beyond.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2189031-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2189031-01.jpg	2015-04-06 21:51:03.646908	2015-04-07 20:05:44.154402	2007
229	Star Wars: General Grievous	19143	<p style="">Collected in <a data-ref-id="4050-53596" href="/star-wars-general-grievous/4050-53596/" slug="star-wars-general-grievous">Star Wars: General Grievous</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/574/193895-19143-114505-1-star-wars-general-g.jpg	http://static.comicvine.com/uploads/scale_small/0/574/193895-19143-114505-1-star-wars-general-g.jpg	2015-04-06 21:51:03.655795	2015-04-07 20:05:44.767934	2005
231	Star Wars: Obsession	19145	\N	http://static.comicvine.com/uploads/scale_small/0/574/193905-19145-114507-1-star-wars-obsession.jpg	http://static.comicvine.com/uploads/scale_small/0/574/193905-19145-114507-1-star-wars-obsession.jpg	2015-04-06 21:51:03.666375	2015-04-07 20:05:45.375525	2004
232	Criminal Macabre: My Demon Baby	19155	<p style="">Collected in <a data-ref-id="4050-46618" href="/criminal-macabre-my-demon-baby/4050-46618/" slug="criminal-macabre-my-demon-baby">Criminal Macabre: My Demon Baby</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/1867/195508-19155-114613-1-criminal-macabre-my.jpg	http://static.comicvine.com/uploads/scale_small/0/1867/195508-19155-114613-1-criminal-macabre-my.jpg	2015-04-06 21:51:03.671317	2015-04-07 20:05:45.660312	2007
233	The Umbrella Academy: Apocalypse Suite	19156	<p style="">Starting from where we first saw them in <a href="../../the-umbrella-academy-pantheon-city-zero-killer/49-19699/" rel="nofollow">       The Umbrella Academy / Pantheon City / Zero Killer</a>, The Umbrella Academy unites a group of superpowered individuals following the death of their father figure alias <a data-ref-id="4005-47213" href="/monocle/4005-47213/" slug="monocle"> The Monocle</a>. By coming back together what can they learn? What dark secrets are hidden that will soon be unleashed? <br/> <br/>Reprinted in<a data-ref-id="4050-39313" href="/the-umbrella-academy-apocalypse-suite/4050-39313/" slug="the-umbrella-academy-apocalypse-suite">     : The Umbrella Academy: Apocalypse Suite</a>  <br/>  <br/>Story Continued in <a data-ref-id="4050-24066" href="/the-umbrella-academy-dallas/4050-24066/" slug="the-umbrella-academy-dallas">   The Umbrella Academy: Dallas <br/></a></p>	http://static.comicvine.com/uploads/scale_small/0/787/215169-19156-114614-2-the-umbrella-academy.jpg	http://static.comicvine.com/uploads/scale_small/0/787/215169-19156-114614-2-the-umbrella-academy.jpg	2015-04-06 21:51:03.675417	2015-04-07 20:05:45.984494	2007
235	Star Wars: Jabba The Hutt: The Hunger of Princess Nampi	19197	<p style=""><em>Jabba has an old saying: If you can't beat 'em, buy 'em out! And that's just what he attempts to do when he encounters an unexpected nemesis on his journey through the galaxy. But he may have to part with something more personal than his precious spice if he's going to close this deal!</em></p>	http://static.comicvine.com/uploads/scale_small/0/574/199612-19197-114983-1-star-wars-jabba-the.jpg	http://static.comicvine.com/uploads/scale_small/0/574/199612-19197-114983-1-star-wars-jabba-the.jpg	2015-04-06 21:51:03.683543	2015-04-07 20:05:46.60774	1995
236	Star Wars: Boba Fett: Twin Engines of Destruction	19249	\N	http://static.comicvine.com/uploads/scale_small/0/574/210966-19249-115514-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/0/574/210966-19249-115514-1-star-wars-boba-fett.jpg	2015-04-06 21:51:03.687222	2015-04-07 20:05:46.919568	1997
238	Star Wars: Boba Fett: Agent of Doom	19254	\N	http://static.comicvine.com/uploads/scale_small/0/574/211731-19254-115535-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/0/574/211731-19254-115535-1-star-wars-boba-fett.jpg	2015-04-06 21:51:03.702877	2015-04-07 20:05:47.617497	2000
239	The Nail	19281	\N	http://static.comicvine.com/uploads/scale_small/1/10162/215568-19281-115708-1-the-nail.jpg	http://static.comicvine.com/uploads/scale_small/1/10162/215568-19281-115708-1-the-nail.jpg	2015-04-06 21:51:03.707954	2015-04-07 20:05:47.907211	2004
240	Empowered	19331	<p style="">The comic misadventures of Empowered.. the young woman with a not-so super suit that fails her on a regular basis and somehow always ends up tied, gagged and in need of rescue.</p><h4>Collected Editions</h4><ul><li><a data-ref-id="4000-318127" href="/empowered-deluxe-edition-/4000-318127/" slug="empowered-deluxe-edition-">Empowered Deluxe Edition vol. 1</a> (vol. 1-3)</li><li><a data-ref-id="4000-350918" href="/empowered-deluxe-edition-vol-2/4000-350918/" slug="empowered-deluxe-edition-vol-2">Empowered Deluxe Edition vol. 2</a> (vol. 4-6)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/3753619-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3753619-01.jpg	2015-04-06 21:51:03.712375	2015-04-07 20:05:48.230663	2007
241	Aliens: Havoc	19333	<p style="">This is a must read even if you are not a big fan of the Alien creatures. The story is about a rescue party sent to a ship that they had lost transmission to. Well it turns out that everyone on the ship is dead except for a scientist that figured out a way to disconnect his consciousness from his body. So the scientist ends up jumping from person to person in the rescue party (every page) and every time he does the art changes. Even though this was made 10 years ago it is way ahead of its time even now.<br/></p>	http://static.comicvine.com/uploads/scale_small/6/67663/2754102-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2754102-01.jpg	2015-04-06 21:51:03.717063	2015-04-07 20:05:48.568523	1997
284	Nathan Never	19774	<p style="">Nathan Never is a well-known Italian cyberpunk-style science fiction comic book that was translated into English and published in the US by Dark Horse.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/244848-19774-118719-2-nathan-never.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244848-19774-118719-2-nathan-never.jpg	2015-04-06 21:51:03.912788	2015-04-07 20:06:02.590851	1999
242	Dark Horse Book of the Dead	19348	<p style="">Mike Mignola presents a <i>Hellboy</i> yarn combining Shakespeare and graverobbing in this followup to Dark Horse's Eisner-nominated <i>Books of Hauntings</i> and <i>Witchcraft</i>. Also returning this volume are Jill Thompson, who won a 2004 Eisner for her painted work in <i>Hauntings</i>, and her collaborator Evan Dorkin, with another occult canine adventure. New additions for this volume include <i>Goon</i> creator Eric Powell, celebrated <i>B.P.R.D.</i> artist Guy Davis, and the artist who spent the last twenty years making superhero comics more scary-Kelley Jones. Cover artist Gary Gianni also returns, mixing prose with comics, with a rare tale by the man ultimately responsible for Dark Horse's biggest hit in years-<i>Conan</i> creator Robert E. Howard.</p><p style="">• Anthology of original material featuring the award-winning talents of Mike Mignola, Evan Dorkin, Jill Thompson, Eric Powell, and more!</p><p style="">• Features an original Mike Mignola <i>Hellboy</i> story.</p>	http://static.comicvine.com/uploads/scale_small/1/10162/218790-19348-116096-1-book-of-the-dead.jpg	http://static.comicvine.com/uploads/scale_small/1/10162/218790-19348-116096-1-book-of-the-dead.jpg	2015-04-06 21:51:03.722198	2015-04-07 20:05:48.962855	2005
245	Dead in the West	19366	\N	http://static.comicvine.com/uploads/scale_small/1/10162/218877-19366-116131-1-dead-in-the-west.jpg	http://static.comicvine.com/uploads/scale_small/1/10162/218877-19366-116131-1-dead-in-the-west.jpg	2015-04-06 21:51:03.734263	2015-04-07 20:05:49.869287	1993
246	Bettie Page Comics	19395	\N	http://static.comicvine.com/uploads/scale_small/6/67663/2549151-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2549151-01.jpg	2015-04-06 21:51:03.73846	2015-04-07 20:05:50.16712	1996
248	Bubblegum Crisis Grand Mal	19408	<p style="">In 2031 A.D., the mega-corporation Genom is on the rise as it rebuilds the devastated Tokyo from the Second Great Kanto Earthquake with their advanced cybernetic mechanoids known as "Boomers".  But the new wave of wealth and prosperity cannot hide a growing undercurrent of violence and discontent; of a city on the verge on imploding on itself, like a bubble about to burst.  As the AD Police struggles to cope with the rise of Boomer crimes and rampages, Mega-Tokyo's only hope lies in a band of high-tech vigilantes known as the Knight Sabers.  But the Knight Sabers have problems of their own with a new high-tech opponent who threatens to destroy everything they hold dear.</p>	http://static.comicvine.com/uploads/scale_small/0/462/377155-19408-129265-1-bubblegum-crisis-gra.jpg	http://static.comicvine.com/uploads/scale_small/0/462/377155-19408-129265-1-bubblegum-crisis-gra.jpg	2015-04-06 21:51:03.745742	2015-04-07 20:05:50.907363	1994
249	Concrete Celebrates Earth Day 1990	19452	\N	http://static.comicvine.com/uploads/scale_small/0/229/221980-19452-116471-1-concrete-celebrates.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221980-19452-116471-1-concrete-celebrates.jpg	2015-04-06 21:51:03.749745	2015-04-07 20:05:51.218867	1990
250	Concrete Color Special	19453	\N	http://static.comicvine.com/uploads/scale_small/0/229/221981-19453-116472-1-concrete-color-speci.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221981-19453-116472-1-concrete-color-speci.jpg	2015-04-06 21:51:03.754364	2015-04-07 20:05:51.520428	1989
252	John Byrne's 2112	19455	<p style="">Steve Oliff won the 1992 Eisner award for Best Colorist in part his coloring work on this book.</p>	http://static.comicvine.com/uploads/scale_small/0/229/222000-19455-116474-1-john-byrne-s-2112.jpg	http://static.comicvine.com/uploads/scale_small/0/229/222000-19455-116474-1-john-byrne-s-2112.jpg	2015-04-06 21:51:03.765204	2015-04-07 20:05:52.280525	1991
253	Concrete: A New Life	19456	\N	http://static.comicvine.com/uploads/scale_small/0/229/221983-19456-116475-1-concrete-a-new-life.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221983-19456-116475-1-concrete-a-new-life.jpg	2015-04-06 21:51:03.770142	2015-04-07 20:05:52.542206	1989
254	Concrete	19457	<p style="">Reprints from earlier Concrete stories</p>	http://static.comicvine.com/uploads/scale_small/0/229/221985-19457-116476-1-concrete.jpg	http://static.comicvine.com/uploads/scale_small/0/229/221985-19457-116476-1-concrete.jpg	2015-04-06 21:51:03.773952	2015-04-07 20:05:52.837415	2005
256	Nexus: The Origin	19460	<p style="">1993 Eisner winner for Best Single Issue</p>	http://static.comicvine.com/uploads/scale_small/0/229/222011-19460-116479-1-nexus-the-origin.jpg	http://static.comicvine.com/uploads/scale_small/0/229/222011-19460-116479-1-nexus-the-origin.jpg	2015-04-06 21:51:03.780061	2015-04-07 20:05:53.572462	1992
257	Instant Piano	19461	<p style=""><a data-ref-id="4040-30078" href="/evan-dorkin/4040-30078/" slug="evan-dorkin">Evan Dorkin</a> won an <a data-ref-id="4015-52148" href="/eisner-awards/4015-52148/" slug="eisner-awards">Eisner Award</a> in 1996 for his story "The Eltingville Comic-Book, Science-Fiction, Fantasy, Horror, and Role-Playing Club in Bring Me the Head of Boba Fett" in issue 3 of this series.  </p>	http://static.comicvine.com/uploads/scale_small/0/229/222012-19461-116480-1-instant-piano.jpg	http://static.comicvine.com/uploads/scale_small/0/229/222012-19461-116480-1-instant-piano.jpg	2015-04-06 21:51:03.78288	2015-04-07 20:05:53.878317	1994
258	The Dirty Pair: Run From the Future	19480	<p style="">Collected in <a data-ref-id="4050-51144" href="/the-dirty-pair-run-from-the-future/4050-51144/" slug="the-dirty-pair-run-from-the-future"> The Dirty Pair: Run from the Future</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/223178-19480-116588-1-dirty-pair-run-from.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/223178-19480-116588-1-dirty-pair-run-from.jpg	2015-04-06 21:51:03.787832	2015-04-07 20:05:54.200533	2000
259	The Dirty Pair: Sim Hell, Remastered	19481	<br/>	http://static.comicvine.com/uploads/scale_small/0/462/542897-dirty_pair_sim_hell_remastered__book_4__1of4__large__00fc.jpg	http://static.comicvine.com/uploads/scale_small/0/462/542897-dirty_pair_sim_hell_remastered__book_4__1of4__large__00fc.jpg	2015-04-06 21:51:03.792203	2015-04-07 20:05:54.479915	2001
261	Ghost	19530	<p style="">First volume and ongoing series starring <a href="http://www.comicvine.com/ghost/4005-25085/" data-ref-id="4005-25085">Ghost</a>.</p><p style="">Special, X 8, V1 #1-12: <a href="/ghost/4005-25085/" data-ref-id="4005-25085"> Elisa Cameron</a> is dead. She has a sister, <a href="/margo-cameron/4005-72027/" data-ref-id="4005-72027"> Margo Cameron</a>, with whom she slowly reconciles and moves in with, as well as two recently sober parents, who are eventually murdered by a shadowy psionic that seems to know something about her past as a reporter, apparently slain over a story she was covering. Her natural weakness is jade, which keeps her from "ghosting" out and being able to pass through objects. She discovers she has the ability to teleport ("jump"), but must cross a sort of "<a href="/hell/4020-42471/" data-ref-id="4020-42471"> Hell</a>" to do so. Elisa faces a series of psionics, led by <a href="/doctor-october/4005-72045/" data-ref-id="4005-72045"> Dr. October</a>, a woman who wanted to eliminate Elisa for being beautiful even in death. Elisa also must deal with a demon, <a href="/cameron-nemo/4005-72037/" data-ref-id="4005-72037"> Cameron Nemo</a>, which escapes from her "hell", causing much destruction, before the aid of <a href="/king-tiger/4005-44950/" data-ref-id="4005-44950"> King Tiger</a> helps her defeat the demon. Elisa also learns that her jumps, her Hell, even Nemo, are all a construct of her own imagination. Elisa begins a slow introduction to Peter, a man she sees visiting the graveyard. Elisa's teamup with <a href="/barb-wire/4005-49975/" data-ref-id="4005-49975"> Barb Wire</a>, a bounty hunter from <a href="/steel-harbor/4020-56934/" data-ref-id="4020-56934"> Steel Harbor</a>, results in Elisa receiving a warning that Archibald Scythe, a psionic from her past, is coming for her. Margo falls under <a href="/archibald-scythe/4005-71965/" data-ref-id="4005-71965"> Scythe's </a>spell while an all-female paranormal team, <a href="/furies/4060-57638/" data-ref-id="4060-57638"> the Furies</a>, combines with Elisa to take him down. Margo, driven by rage, summons up strange "shade-like" tears, which defeat Scythe but cost Margo her life.</p><p style="">* V1, #13-25: <a href="/crux/4005-71960/" data-ref-id="4005-71960"> Crux</a>, the man responsible for the deaths of Elisa's parents, unleashes the shape-shifting <a href="/miasma/4005-72036/" data-ref-id="4005-72036"> Miasma</a> on Elisa. This creates a panic in the underworld. On a personal note, Miasma, before being dispatched, seriously injures Peter, whom Elisa had begun caring about. Cameron Nemo escapes from Hell and takes over Scythe's body, always lurking around the corner for Elisa. Aided by <a href="/x/4005-44948/" data-ref-id="4005-44948"> X</a>, King Tiger and <a href="/focus/4005-71968/" data-ref-id="4005-71968"> Focus</a>, the leader of the Furies, Elisa discovers a tape exists with evidence of her death. Elisa traces the tape to Crux, who is planning to invade a secret city beneath Arcadia and recover a key which will give him immense power. With the help of her three companions, Elisa aids the "<a href="/goblins/4060-57645/" data-ref-id="4060-57645"> Goblins</a>" who live in the secret city and defeats Crux, who, just prior to his death, admits he has been behind everything from her parents' murders, to the psionic hunters and Elisa's own slaying. Elisa then assumes the mantle of the Sentinel of <a href="/arcadia/4020-56181/" data-ref-id="4020-56181"> Arcadia</a>.</p><p style="">* V1, #26-36: Dr. October resurfaces, but is quickly defeated. Peter and Elisa begin to slowly move towards a relationship, while Elisa, aided by the Goblins, tries to protect the city. Elisa encounters <a href="/dr-trouvaille/4005-72113/" data-ref-id="4005-72113"> Dr. Trouvaille</a>, who experiments with the spirits of his victims and calls her "the failed one" hinting he knows secrets Crux didn't reveal. Margo, somehow alive and possessed by a being known as Silhouette, attempts to destroy Arcadia, but is saved by Elisa.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787188-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787188-01.jpg	2015-04-06 21:51:03.80132	2015-04-07 20:05:55.213631	1995
262	Ghost in the Shell	19531	<p style="">In the 21st century, the line between man and machine has become increasingly blurred as humanity must rely on the enhancement of mechanical implants, and robots are upgraded with human tissue. This is the story of cyborg super-agent Motoko Kusanagi, whose mission is to track down the most dangerous terrorists in cyber-crime, including "ghost hackers" capable of exploiting the human/machine interface by re-programming human minds to become puppets they can use towards criminal ends.</p><p style="">English translation of the Japanese manga Kōkaku Kidōtai.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/381404-19531-129658-1-ghost-in-the-shell.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/381404-19531-129658-1-ghost-in-the-shell.jpg	2015-04-06 21:51:03.805934	2015-04-07 20:05:55.558697	1995
263	Ghost in the Shell 1.5: Human Error Processor	19532	<p style="">In the rapidly converging technoscape of the 21st century, the covert-ops agents of Public Security Section 9 must track down and defeat the most dangerous terrorists, cyber-criminals, and "ghost hackers" the digital future has to offer.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/224619-19532-116738-1-ghost-in-the-shell-1.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/224619-19532-116738-1-ghost-in-the-shell-1.jpg	2015-04-06 21:51:03.811011	2015-04-07 20:05:55.85959	2006
265	Æon Flux	19558	<p style="">Reintroducing the cult-classic action heroine best known for her animated adventures on MTV, this series will pave the way for her big-screen debut in this fall's blockbuster, live- action adaptation starring Charlize Theron. This four-issue miniseries will lay the foundation for events in the film, with all of the fast-paced action and intriguing conceptual sci-fi of the original cartoon.    </p>	http://static.comicvine.com/uploads/scale_small/6/67663/3608016-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3608016-01.jpg	2015-04-06 21:51:03.821624	2015-04-07 20:05:56.641577	2005
267	Battle Gods: Warriors of the Chaak	19560	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/225316-19560-116964-1-battle-gods.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/225316-19560-116964-1-battle-gods.jpg	2015-04-06 21:51:03.834534	2015-04-07 20:05:57.222312	2000
268	Groo: Hell On Earth	19561	<p style="">Four issue mini-series.</p><p style="">Collected in <a data-ref-id="4000-323349" href="/groo-hell-on-earth-tpb/4000-323349/" slug="groo-hell-on-earth-tpb">Groo: Hell On Earth</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/40/225319-19561-116973-1-groo-hell-on-earth.jpg	http://static.comicvine.com/uploads/scale_small/0/40/225319-19561-116973-1-groo-hell-on-earth.jpg	2015-04-06 21:51:03.840237	2015-04-07 20:05:57.564195	2007
269	City of Heroes	19609	<p style="">Given to beta-testers for City of Heroes.</p>	http://static.comicvine.com/uploads/scale_small/0/1417/229227-19609-117661-1-city-of-heroes.jpg	http://static.comicvine.com/uploads/scale_small/0/1417/229227-19609-117661-1-city-of-heroes.jpg	2015-04-06 21:51:03.844894	2015-04-07 20:05:57.866882	2002
270	John Byrne's Next Men	19617	<p style="">Issues are reprinted as Trade Paperbacks as follows:</p><ul><li>0-6 - <a data-ref-id="4000-293850" href="/john-byrnes-next-men-tpb-book-one-john-byrnes-next-men/4000-293850/" slug="john-byrnes-next-men-tpb-book-one-john-byrnes-next-men">John Byrne's Next Men</a></li><li>7-12 - <a data-ref-id="4000-293854" href="/john-byrnes-next-men-tpb-book-two-parallel/4000-293854/" slug="john-byrnes-next-men-tpb-book-two-parallel">Parallel</a></li><li>13-18 - <a data-ref-id="4000-293855" href="/john-byrnes-next-men-tpb-book-three-fame/4000-293855/" slug="john-byrnes-next-men-tpb-book-three-fame">Fame</a></li><li>19-22 - <a data-ref-id="4000-293856" href="/john-byrnes-next-men-tpb-book-four-faith/4000-293856/" slug="john-byrnes-next-men-tpb-book-four-faith">Faith</a></li><li>23-26 - <a data-ref-id="4000-293857" href="/john-byrnes-next-men-tpb-book-five-power/4000-293857/" slug="john-byrnes-next-men-tpb-book-five-power">Power</a></li><li>27-30 - <a data-ref-id="4000-293858" href="/john-byrnes-next-men-tpb-book-six-lies/4000-293858/" slug="john-byrnes-next-men-tpb-book-six-lies">Lies</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/8015/230451-19617-117755-1-john-byrne-s-next-me.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/230451-19617-117755-1-john-byrne-s-next-me.jpg	2015-04-06 21:51:03.848872	2015-04-07 20:05:58.337481	1992
271	Nexus: Executioner's Song	19624	<p style="">Steve Rude won the 96 Eisner Award for Best Penciller for his work on this title.</p>	http://static.comicvine.com/uploads/scale_small/0/229/229806-19624-117712-1-nexus-executioner-s.JPG	http://static.comicvine.com/uploads/scale_small/0/229/229806-19624-117712-1-nexus-executioner-s.JPG	2015-04-06 21:51:03.852719	2015-04-07 20:05:58.633666	1996
273	Conan: The Legend	19634	<p style="">2004 co-winner of the Eisner Award for Best Single Issue</p>	http://static.comicvine.com/uploads/scale_small/0/229/230596-19634-117800-1-conan-the-legend.jpg	http://static.comicvine.com/uploads/scale_small/0/229/230596-19634-117800-1-conan-the-legend.jpg	2015-04-06 21:51:03.862057	2015-04-07 20:05:59.177824	2003
274	Living with the Dead	19643	<p style="">Two survivors of a global catastrophe disguise themselves as corpses to survive in a land of the walking dead.</p><p style="">From the mind of Mike Richardson (The Mask; The Secret) comes this hilariously frightening tale of Straw and Whip, two slackers who have lived through a plague that's left the world with seven billion brain-hungry zombies. Life is tough as they try to keep up the appearance of being like the rest of the decomposing masses, and things heat up when a damsel in distress needs their help. Will they blow their cover for a beautiful young girl, or sacrifice her in the name of rock and roll?</p><p style="">Three-issue series with art by Ben Stenbeck, and covers by legendary Richard Corben, making zombies fun again.</p><p style="">Two boys, a girl, and seven billion living dead.</p><p style="">Collected in <a data-ref-id="4050-48034" href="/living-with-the-dead/4050-48034/" slug="living-with-the-dead">Living With The Dead</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/787/231484-19643-117955-1-living-with-the-dead.jpg	http://static.comicvine.com/uploads/scale_small/0/787/231484-19643-117955-1-living-with-the-dead.jpg	2015-04-06 21:51:03.866113	2015-04-07 20:05:59.468197	2007
276	Deadlander	19672	<p style="">Intended to be a four issue miniseries but only two were ever released, only a single issue was released under this title, for the remaining issue the title was changed to <a href="/the-dead-rider/4050-23016/" data-ref-id="4050-23016">Dead Rider</a>. The lead characters name was also changed from the Deadlander to the Dead Rider.</p><p style="">Collected in <a href="/the-dead-rider-crown-of-souls/4050-80445/" data-ref-id="4050-80445">The Dead Rider: Crown of Souls</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/574/233304-19672-118018-1-the-deadlander.jpg	http://static.comicvine.com/uploads/scale_small/0/574/233304-19672-118018-1-the-deadlander.jpg	2015-04-06 21:51:03.875047	2015-04-07 20:06:00.114466	2007
277	The Umbrella Academy / Pantheon City / Zero Killer	19699	<p style="">Free Comic Book Day previews of Umbrella Academy, Pantheon City, and Zero Killer</p>	http://static.comicvine.com/uploads/scale_small/0/308/236940-19699-118149-1-the-umbrella-academy.jpg	http://static.comicvine.com/uploads/scale_small/0/308/236940-19699-118149-1-the-umbrella-academy.jpg	2015-04-06 21:51:03.882404	2015-04-07 20:06:00.429724	2007
279	ZombieWorld: Winter's Dregs	19763	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/229/244149-19763-118707-1-zombieworld-winter.jpg	http://static.comicvine.com/uploads/scale_small/0/229/244149-19763-118707-1-zombieworld-winter.jpg	2015-04-06 21:51:03.891522	2015-04-07 20:06:01.026184	1998
280	Godzilla Color Special	19768	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/244227-19768-118712-1-godzilla-color-speci.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244227-19768-118712-1-godzilla-color-speci.jpg	2015-04-06 21:51:03.895101	2015-04-07 20:06:01.356523	1992
281	Godzilla King of the Monsters	19770	\N	http://static.comicvine.com/uploads/scale_small/1/11307/244229-19770-118714-1-godzilla-king-of-the.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244229-19770-118714-1-godzilla-king-of-the.jpg	2015-04-06 21:51:03.899233	2015-04-07 20:06:01.662785	1995
283	Monkeyman And O'Brien	19773	<p style="">This is an original series written and drawn by Art Adams.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/244271-19773-118718-1-monkeyman-and-o-brie.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244271-19773-118718-1-monkeyman-and-o-brie.jpg	2015-04-06 21:51:03.908287	2015-04-07 20:06:02.285227	1996
344	Star Wars: Episode I: The Phantom Menace	20929	<p style="">Comic book adaptation of the movie</p>	http://static.comicvine.com/uploads/scale_small/1/15317/330650-20929-125382-1-star-wars-episode-i.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/330650-20929-125382-1-star-wars-episode-i.jpg	2015-04-06 21:51:04.17057	2015-04-07 20:06:23.98774	1999
285	Terror of Godzilla	19776	<p style=""> A reporter investigates the disappearance of a ship. He finds the ship and discovers that all the hands have been killed by a giant sea louse except for one. He then tells the reporter that the ship was attacked by <b>Godzilla</b> (Gojira). Fearing a panic, the Japanese government then takes the survivor into custody to keep him from revealing that Godzilla has returned. However, a Soviet nuclear submarine is destroyed and the situation puts them and the United States on the brink of nuclear war, until the Japanese decide to come clean and admit that it was Godzilla. Soon the Japan and the rest of the world are on red alert as they wait for Godzilla to begin his rampage anew. Based on the movie "Godzilla 1985".  <br/> <br/>A Godzilla series by Kazuhisa Iwata.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/244961-19776-118766-1-terror-of-godzilla.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/244961-19776-118766-1-terror-of-godzilla.jpg	2015-04-06 21:51:03.917121	2015-04-07 20:06:02.882091	1998
286	Ghost Special	19789	<p style="">From out of nowhere she comes: graceful, beautiful, ethereal. Is she real or is she a dream? Here's a hint: dreams don't pack semi-automatics!</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2787167-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787167-01.jpg	2015-04-06 21:51:03.921164	2015-04-07 20:06:03.1994	1994
288	Star Wars: Purge	19811	<p style="">One-shot</p>	http://static.comicvine.com/uploads/scale_small/1/11307/246563-19811-118851-1-star-wars-purge.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/246563-19811-118851-1-star-wars-purge.jpg	2015-04-06 21:51:03.929749	2015-04-07 20:06:03.82263	2005
289	Titan A.E.	19838	\N	http://static.comicvine.com/uploads/scale_small/1/11307/247291-19838-118914-1-titan-a-e.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/247291-19838-118914-1-titan-a-e.jpg	2015-04-06 21:51:03.932943	2015-04-07 20:06:04.145993	2000
290	Dark Horse Presents Aliens	19934	<p style="">This is a special edition to the Dark Horse Presents series, and thus does not fall within the standard DHP numbering system</p>	http://static.comicvine.com/uploads/scale_small/1/11307/249745-19934-119265-1-dark-horse-presents.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/249745-19934-119265-1-dark-horse-presents.jpg	2015-04-06 21:51:03.937916	2015-04-07 20:06:04.503456	1992
291	Karas	19968	<p style="">Karas is the newest creation from the minds of Tatsunoko Production (the production company of Speed Racer and Battle of the Planets) and Keiichi Sato (The Big O).</p>	http://static.comicvine.com/uploads/scale_small/1/11495/250485-19968-119384-1-karas.jpg	http://static.comicvine.com/uploads/scale_small/1/11495/250485-19968-119384-1-karas.jpg	2015-04-06 21:51:03.943039	2015-04-07 20:06:04.825908	2004
293	Predator Versus Judge Dredd	20001	<p style="">Three issue mini-series.</p><h4>Collected Editions</h4><ul><li><a href="/predator-vs-judge-dredd-vs-alien-incubus/4050-77415/" data-ref-id="4050-77415">Predator vs Judge Dredd vs Alien Incubus</a></li><li><a href="/predator-vs-judge-dredd/4050-63160/" data-ref-id="4050-63160">Predator vs. Judge Dredd</a></li></ul>	http://static.comicvine.com/uploads/scale_small/1/11307/251218-20001-119453-1-predator-versus-judg.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/251218-20001-119453-1-predator-versus-judg.jpg	2015-04-06 21:51:03.951249	2015-04-07 20:06:05.470038	1997
294	Bakers Meet Jingle Belle	20043	<p style="">.</p>	http://static.comicvine.com/uploads/scale_small/0/229/253129-20043-119699-1-the-bakers-meet-jing.jpg	http://static.comicvine.com/uploads/scale_small/0/229/253129-20043-119699-1-the-bakers-meet-jing.jpg	2015-04-06 21:51:03.955516	2015-04-07 20:06:05.770614	2006
296	Star Wars: Infinities - The Empire Strikes Back	20069	<h4>Collected Editions</h4><ul><li><a data-ref-id="4050-20070" href="/star-wars-infinities-the-empire-strikes-back/4050-20070/" slug="star-wars-infinities-the-empire-strikes-back">Star Wars: Infinities - The Empire Strikes Back</a></li><li><a data-ref-id="4050-56397" href="/star-wars-omnibus-infinities/4050-56397/" slug="star-wars-omnibus-infinities">Star Wars Omnibus: Infinities</a></li></ul>	http://static.comicvine.com/uploads/scale_small/1/11307/253683-20069-119754-1-star-wars-the-empire.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/253683-20069-119754-1-star-wars-the-empire.jpg	2015-04-06 21:51:03.963979	2015-04-07 20:06:06.38179	2002
297	Star Wars: Infinities - The Empire Strikes Back	20070	<p style="">Star Wars: Infinities - The Empire Strikes Back</p>	http://static.comicvine.com/uploads/scale_small/1/11307/253692-20070-119755-1-star-wars-the-empire.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/253692-20070-119755-1-star-wars-the-empire.jpg	2015-04-06 21:51:03.968165	2015-04-07 20:06:06.660103	2002
298	Hellgate London	20129	<p style="">The comic is a prequel to the Hellgate London video game.</p><p style="">Collected in <a data-ref-id="4050-48028" href="/hellgate-london/4050-48028/" slug="hellgate-london">Hellgate: London</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11495/258017-20129-120163-1-hellgate-london.jpg	http://static.comicvine.com/uploads/scale_small/1/11495/258017-20129-120163-1-hellgate-london.jpg	2015-04-06 21:51:03.971575	2015-04-07 20:06:06.99625	2007
299	Conan: The Frazetta Cover Series	20169	<p style="">A series of special-edition reprints of their adaptations of Robert E. Howard stories--with cover art by definitive Conan illustrator Frank Frazetta.</p>	http://static.comicvine.com/uploads/scale_small/0/787/260383-20169-120319-1-conan-the-frazetta-c.jpg	http://static.comicvine.com/uploads/scale_small/0/787/260383-20169-120319-1-conan-the-frazetta-c.jpg	2015-04-06 21:51:03.975839	2015-04-07 20:06:07.319153	2007
300	Star Wars: Qui-Gon & Obi-Wan: Last Stand on Ord Mantell	20213	<p style="">Qui-Gon and Obi-Wan: Last Stand on Ord Mantell was a comic series released by Dark Horse Comics between December 20th 2000 and March 21st 2001.<br/> <br/><b>Publisher's summary:</b><br/><i>When a valuable cargo freighter fails to reach its destination on the planet Coruscant, Qui-Gon and Obi-Wan are sent into deep space to search for the missing ship. Their investigation leads them to the distant, lawless world of Ord Mantell, where everyone carries a grudge and a blaster... and Jedi  are less than welcome. </i></p>	http://static.comicvine.com/uploads/scale_small/0/8015/263502-20213-120504-1-star-wars-qui-gon-a.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263502-20213-120504-1-star-wars-qui-gon-a.jpg	2015-04-06 21:51:03.982313	2015-04-07 20:06:07.649863	2000
302	Star Wars: Republic	20215	<p style="">Star Wars: Repbulic is continued from Dark Horse's <a data-ref-id="4050-11246" href="/star-wars/4050-11246/" slug="star-wars">Star Wars</a> series, starting with issue 46.</p><p style="">The series lasted until issue 83, after which it was retitled as <a href="../../star-wars-dark-times/49-18888/" rel="nofollow">Star Wars: Dark Times</a>.</p><p style="">That series had a new number 1 and a new title, but the indica still states "Star Wars Republic" and continues to count on from issue 84 and on.</p>	http://static.comicvine.com/uploads/scale_small/11/119711/2679478-000republic46.jpg	http://static.comicvine.com/uploads/scale_small/11/119711/2679478-000republic46.jpg	2015-04-06 21:51:03.991696	2015-04-07 20:06:08.738053	2002
304	Star Wars: Shadows of the Empire	20218	<p style="">The Events that take place between Empire Strikes back and Return of the Jedi.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/263527-20218-120526-1-star-wars-shadows-o.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263527-20218-120526-1-star-wars-shadows-o.jpg	2015-04-06 21:51:03.999403	2015-04-07 20:06:09.614935	1996
305	Star Wars: Tag & Bink Are Dead	20219	<p style="">Followed up by: <a data-ref-id="4050-20221" href="/star-wars-tag-and-bink-ii/4050-20221/" slug="star-wars-tag-and-bink-ii">  Star Wars: Tag &amp; Bink II</a> and reprinted in <a data-ref-id="4050-20813" href="/star-wars-tag-bink-were-here/4050-20813/" slug="star-wars-tag-bink-were-here"> Star Wars: Tag &amp; Bink Were Here</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/263533-20219-120527-1-star-wars-tag-and-b.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263533-20219-120527-1-star-wars-tag-and-b.jpg	2015-04-06 21:51:04.004038	2015-04-07 20:06:10.1074	2001
306	Star Wars: Tag and Bink II	20221	<p style="">Follow-up to <a data-ref-id="4050-20219" href="/star-wars-tag-and-bink-are-dead/4050-20219/" slug="star-wars-tag-and-bink-are-dead">   Star Wars: Tag &amp; Bink Are Dead</a>. Re-printed in <a data-ref-id="4050-20813" href="/star-wars-tag-bink-were-here/4050-20813/" slug="star-wars-tag-bink-were-here"> Star Wars: Tag &amp; Bink Were Here</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/263535-20221-120529-1-star-wars-the-retur.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263535-20221-120529-1-star-wars-the-retur.jpg	2015-04-06 21:51:04.008536	2015-04-07 20:06:10.67598	2006
308	Star Wars: A Valentine Story	20223	<p style="">Collected in <a data-ref-id="4000-293385" href="/star-wars-empire-the-heart-of-the-rebellion/4000-293385/" slug="star-wars-empire-the-heart-of-the-rebellion">Star Wars: Empire Vol. 4 - The Heart of the Rebellion</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/8015/263552-20223-120531-1-star-wars-a-valenti.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263552-20223-120531-1-star-wars-a-valenti.jpg	2015-04-06 21:51:04.016101	2015-04-07 20:06:11.557027	2003
309	Star Wars: Boba Fett - Enemy of the Empire	20224	<p style="">Collected in <a data-ref-id="4050-21027" href="/star-wars-boba-fett-enemy-of-the-empire/4050-21027/" slug="star-wars-boba-fett-enemy-of-the-empire">Star Wars: Boba Fett: Enemy of the Empire</a></p>	http://static.comicvine.com/uploads/scale_small/0/8015/263554-20224-120532-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/0/8015/263554-20224-120532-1-star-wars-boba-fett.jpg	2015-04-06 21:51:04.01991	2015-04-07 20:06:12.004999	1999
310	Star Wars: Darth Maul	20225	<p style="">Collected in:  <br/></p><ul class="plain-list"><li><a data-ref-id="4050-40918" href="/star-wars-darth-maul-trade-paperback/4050-40918/" slug="star-wars-darth-maul-trade-paperback">  Star Wars: Darth Maul Trade Paperback</a></li><li><a data-ref-id="4000-174616" href="/star-wars-30th-anniversary-collection-darth-maul/4000-174616/" slug="star-wars-30th-anniversary-collection-darth-maul"> Star Wars: 30th Anniversary Collection Volume Three: Darth Maul</a><br/></li></ul>	http://static.comicvine.com/uploads/scale_small/3/38826/812014-darthmaul.jpg	http://static.comicvine.com/uploads/scale_small/3/38826/812014-darthmaul.jpg	2015-04-06 21:51:04.024813	2015-04-07 20:06:12.325854	2000
311	Star Wars: Jedi vs. Sith	20226	<p style="">Jedi vs. Sith is a 6-issue limited series published by <a data-ref-id="4010-364" href="/dark-horse-comics/4010-364/" slug="dark-horse-comics">Dark Horse Comics</a>. It tells the story of the end of the New Sith Wars, the Battle of Ruusan, and how the Rule of Two came into fruition.</p>	http://static.comicvine.com/uploads/scale_small/11/119711/2834595-jedisith1.jpg	http://static.comicvine.com/uploads/scale_small/11/119711/2834595-jedisith1.jpg	2015-04-06 21:51:04.028015	2015-04-07 20:06:12.762808	2001
312	Apocalypse Nerd	20234	<p style="">6 part mini series.</p><p style="">Imagine yourself in a post-apocalyptic world, where all the creature comforts that you've spent an entire lifetime taking for granted were suddenly gone for good. How do you see yourself reacting to such a situation? Would you "suck it up" and be stoically content? Or would you spend most of the time cursing your fate? We all like to picture ourselves as the former, though the latter is probably a more accurate portrayal - and that's exactly what our "hero" is like.</p>	http://static.comicvine.com/uploads/scale_small/0/9116/1440104-1.jpg	http://static.comicvine.com/uploads/scale_small/0/9116/1440104-1.jpg	2015-04-06 21:51:04.031592	2015-04-07 20:06:13.126492	2005
313	The Scream	20236	<p style="">Collected in <a data-ref-id="4050-48812" href="/the-scream/4050-48812/" slug="the-scream">The Scream</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/9245/265925-20236-120757-1-the-scream.jpg	http://static.comicvine.com/uploads/scale_small/0/9245/265925-20236-120757-1-the-scream.jpg	2015-04-06 21:51:04.035658	2015-04-07 20:06:13.434485	2007
314	Hellboy Junior Halloween Special	20245	<p style="">Hellboy creator Mike Mignola and Big Blown Baby creator Bill Wray combine their talents to bring us the outrageous adventures of young Hellboy and his little friends. You'll die laughing at the antics of Hellboy, Jr., Wheezy the Sick Little Witch, the Ginger Beef Boy, and Somnambo the Sleeping Giant. If Hellboy fans find this disrespectful, then Bill Wray has done his job!</p>	http://static.comicvine.com/uploads/scale_small/0/462/268687-20245-120859-1-hellboy-junior-hallo.jpg	http://static.comicvine.com/uploads/scale_small/0/462/268687-20245-120859-1-hellboy-junior-hallo.jpg	2015-04-06 21:51:04.041272	2015-04-07 20:06:13.848349	1997
315	Hellboy Junior	20246	<p style="">Hell's weirdest little devil is back in this dark and hilarious collection of stories by some of the funniest artists in comics.</p>	http://static.comicvine.com/uploads/scale_small/0/462/268664-20246-120860-1-hellboy-junior.jpg	http://static.comicvine.com/uploads/scale_small/0/462/268664-20246-120860-1-hellboy-junior.jpg	2015-04-06 21:51:04.04574	2015-04-07 20:06:14.256247	1999
316	Witchblade/Aliens/The Darkness/Predator	20252	<p style="">What would happen if two sets of rivals were to clash? Aliens Vs Predator Vs Witchblade Vs The Darkness! The 3 issue series depicts their attempt to survive the horrid onslaught.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2792635-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2792635-01.jpg	2015-04-06 21:51:04.049908	2015-04-07 20:06:14.599757	2007
317	Evil Dead	20289	<p style="">"We're gonna get you! We're gonna get you!"</p><p style="">Verheiden and Bolton present an exciting expansion on the classic horror film that introduced us to the powerful Book of the Dead, the relentlessly violent deadites, and Ash -- one resilient, blood-stained survivor. Now an iconic horror hero, relive Ash's first visit to the cabin that brought him face to face with the delectably deranged deadites who possessed his girlfriend and friends . . . and turned "the perfect place to get laid" into a house of fear and fury. Return to the original nonstop gore-fest and experience the thrills, gags, and gagging anew, with unexpected new directions, additional scenes, and Bolton's jaw-dropping new paintings.</p><p style="">This is a four-issue, fully authorized celebration of the original Evil Dead film that started Sam Raimi and Burce Campbell down their paths of gory glory.</p><p style="">Collected in <a data-ref-id="4050-52513" href="/evil-dead/4050-52513/" slug="evil-dead">Evil Dead</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/4312/273455-20289-121068-1-the-evil-dead.jpg	http://static.comicvine.com/uploads/scale_small/0/4312/273455-20289-121068-1-the-evil-dead.jpg	2015-04-06 21:51:04.05365	2015-04-07 20:06:14.92426	2008
366	Conan and the Daughters of Midora	21117	\N	http://static.comicvine.com/uploads/scale_small/1/17880/348007-21117-126870-1-conan-and-the-daught.jpg	http://static.comicvine.com/uploads/scale_small/1/17880/348007-21117-126870-1-conan-and-the-daught.jpg	2015-04-06 21:51:04.262791	2015-04-07 20:06:32.702207	2004
318	B.P.R.D.: 1946	20297	<p style="">The series follows <a href="/trevor-bruttenholm/4005-5478/" data-ref-id="4005-5478">Trevor Bruttenholm</a> in his first adventures for the BPRD in post-war Germany, dealing with monsters and vampires. Written by <a href="/mike-mignola/4040-1672/" data-ref-id="4040-1672">Mike Mignola</a> and <a href="//www.comicvine.com/joshua-dysart/4040-44901/" data-ref-id="4040-44901">Joshua Dysart, </a>illustrated by <a href="/paul-azaceta/4040-42672/" data-ref-id="4040-42672">Paul Azaceta</a>.</p><p style="">If put in sequential order with the other B.P.R.D. minis and one-shots, the five issues of this miniseries would be #39-43, following <a href="/bprd-killing-ground/4050-19002/" data-ref-id="4050-19002">B.P.R.D.: Killing Ground</a> and preceding <a href="//www.comicvine.com/b-p-r-d-war-on-frogs-1/4000-131413/" data-ref-id="4000-131413">B.P.R.D.: War on Frogs #1</a>.</p><p style="">The Origin Trilogy continues in <a href="/bprd-1947/4050-27001/" data-ref-id="4050-27001">B.P.R.D. 1947</a>.</p><h2>Collected Editions</h2><ul><li><a href="/bprd-1946/4050-50553/" data-ref-id="4050-50553">B.P.R.D.: 1946</a></li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2170307-1946_01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2170307-1946_01.jpg	2015-04-06 21:51:04.057814	2015-04-07 20:06:15.237172	2008
319	The End League	20366	<p style="">A thematic merging of <em>The Lord of the Rings</em> and <em>Watchmen</em>, <em>The End League</em> follows a cast of the last remaining supermen and women as they embark on a desperate and perilous journey through a world dominated by evil, in hopes of locating the one remaining artifact that can save humanity-the Hammer of Thor. For his return to the world of comics renowned artist Mat Broome (<em>WildC.A.T.S.</em>) teams up with critically acclaimed writer Rick Remender (<em>Fear Agent</em>) for this, Dark Horse Comics's newest superhero series.</p><p style="">The series has been collected into two trades:</p><ol><li><a href="../../the-end-league-volume-1-ballad-of-big-nothing/49-38722/" rel="nofollow">The End League Volume 1: Ballad Of Big Nothing</a>, which collects issue #1-4</li><li><a data-ref-id="4050-38723" href="/the-end-league-volume-2-weathered-statues/4050-38723/">The End League Volume 2: Weathered Statues</a>, which collects issues #5-9</li></ol>	http://static.comicvine.com/uploads/scale_small/1/14256/286391-20366-121837-1-the-end-league.jpg	http://static.comicvine.com/uploads/scale_small/1/14256/286391-20366-121837-1-the-end-league.jpg	2015-04-06 21:51:04.062386	2015-04-07 20:06:15.645293	2008
320	Hard Boiled	20383	<p style="">Witness one of the most violent comic books ever, a futuristic extravanganza from "Maestros" Frank Miller and Geof Darrow, Hard Boiled takes place in the life of Nixon, a Tax Collector with identity issues that'll stop at nothing to catch felons who fill false claims for his insurance company, wait- what did i just say? Oh, he's a regular guy who works in an office and has two kids and a beautiful wife, yes, and his name is Seltz. No! Wait... His name's unit four, and he's just three months old with a knack for destruction.</p>	http://static.comicvine.com/uploads/scale_small/5/58436/1127211-aaa_000.jpg	http://static.comicvine.com/uploads/scale_small/5/58436/1127211-aaa_000.jpg	2015-04-06 21:51:04.066437	2015-04-07 20:06:15.959065	1990
322	Abe Sapien: The Drowning	20473	<p style="">A century ago, paranormal investigator Edward Grey fought and destroyed a powerful warlock off the island of Saint Sebastian. In the early 1980s, the B.P.R.D.'s newest agent was sent to retrieve the warlock's remains. But Abe Sapien is ill prepared for the supernatural forces that block his way.</p><p style="">Written by Hellboy creator Mike Mignola, and featuring the haunting art of Jason Shawn Alexander (Damn Nation, The Secret, The Escapists), Abe Sapien: The Drowning's the story of Hellboy and B.P.R.D. mainstay Abe Sapien's first solo adventure.</p><p style="">Collected in <a data-ref-id="4050-44829" href="/abe-sapien-the-drowning/4050-44829/" slug="abe-sapien-the-drowning">Abe Sapien: The Drowning</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/2169496-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2169496-01.jpg	2015-04-06 21:51:04.075993	2015-04-07 20:06:16.570528	2008
323	Star Wars: Boba Fett: Salvage	20621	<p style="">Star Wars: Boba Fett - Salvage was originally a Wizard Magazine exclusive, but was later republished in the Star Wars: Boba Fett - Enemy of the Empire trade paperback.</p>	http://static.comicvine.com/uploads/scale_small/0/9245/313606-20621-123564-1-star-wars-boba-fett.jpg	http://static.comicvine.com/uploads/scale_small/0/9245/313606-20621-123564-1-star-wars-boba-fett.jpg	2015-04-06 21:51:04.079931	2015-04-07 20:06:16.854484	1997
324	Aliens vs. Predator vs. The Terminator	20704	<p style="">This short miniseries follows what happened after John Conner apparently defeated Skynet in the year 2032 .  <br/><br/>Many years have past from than and now in the future onboard a space ship Skynet has managed to find a way to survive by having terminators infiltrate the guises of scientists stationed on the ship but it gets worse as these machines objective involves creating Terminator/Alien Hybrids that are nigh-unstoppable , not only are the Ferocious Aliens and Powerful Terminators involved but a third Party which is the race of deadly hunters known as the Predator (Yaujta). Caught inbetween all of this is someone who has had much experience with deadly creatures Ellen Ripley ! <br/> <br/>Collects the four issue <a data-ref-id="4050-21223" href="/aliens-vs-predator-vs-the-terminator/4050-21223/" slug="aliens-vs-predator-vs-the-terminator">Aliens vs. Predator vs. The Terminator</a> mini-series.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/317870-20704-124121-1-aliens-vs-predator.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/317870-20704-124121-1-aliens-vs-predator.jpg	2015-04-06 21:51:04.084663	2015-04-07 20:06:17.168404	2001
326	Fear Agent	20725	<p style="">Fear Agent is a Science Fiction series written by <a href="/rick-remender/4040-44849/" data-ref-id="4040-44849">Rick Remender</a>, with art by <a href="/tony-moore/4040-42442/" data-ref-id="4040-42442">Tony Moore</a> and <a href="/jerome-opena/4040-56325/" data-ref-id="4040-56325">Jerome Opena</a>.</p><p style="">Issues #12-15 continues in <a href="/fear-agent-the-last-goodbye/4050-18791/" data-ref-id="4050-18791">Fear Agent: The Last Goodbye</a> and issue #16 follows in the one-shot <a href="/tales-of-the-fear-agent/4050-32683/" data-ref-id="4050-32683">Tales of the Fear Agent.</a></p><h4>Trade Paperback Collections</h4><ul><li><a href="/fear-agent-re-ignition-vol-1/4000-321812/" data-ref-id="4000-321812">Fear Agent: Re-Ignition</a> (#1-4)</li><li><a href="/fear-agent-my-war-vol-2/4000-321813/" data-ref-id="4000-321813">Fear Agent: My War</a> (#5-10)</li><li><a href="/fear-agent-the-last-goodbye-vol-3/4000-321814/" data-ref-id="4000-321814">Fear Agent: The Last Goodbye</a> (#12-15)</li><li><a href="/fear-agent-hatchet-job-vol-4/4000-321815/" data-ref-id="4000-321815">Fear Agent: Hatchet Job</a> (#17-21)</li><li><a href="/fear-agent-i-against-i-vol-5/4000-321816/" data-ref-id="4000-321816">Fear Agent: I Against I</a> (#22-27)</li><li><a href="/fear-agent-out-of-step-volume-6/4000-332131/" data-ref-id="4000-332131">Fear Agent: Out of Step</a> (#28-32)</li><li><a href="http://www.comicvine.com/tales-of-the-fear-agent/4050-48589/" data-ref-id="4050-48589">Tales of the Fear Agent</a> (#11, #16, backup stories from #5-10, stories from MySpace Dark Horse Presents #3-4)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2658367-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2658367-01.jpg	2015-04-06 21:51:04.093937	2015-04-07 20:06:17.755755	2005
328	Star Wars: Jango Fett	20769	<p style="">A paperback graphic novel. Continued in <a data-ref-id="4050-20779" href="/star-wars-zam-wesell/4050-20779/" slug="star-wars-zam-wesell">Star Wars: Zam Wesell</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/322324-20769-124541-1-star-wars-jango-fett.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/322324-20769-124541-1-star-wars-jango-fett.jpg	2015-04-06 21:51:04.102936	2015-04-07 20:06:18.45625	2002
329	Marshal Law: Secret Tribunal	20770	<p style="">Marshal leads a team of Government sponsored heroes called the Secret Tribunal</p><p style="">Collected in <a href="http://www.comicvine.com/marshal-law-the-deluxe-edition/4050-60074/" data-ref-id="4050-60074">Marshal Law The Deluxe Edition</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/16281/322594-20770-124553-1-marshal-law-secret.jpg	http://static.comicvine.com/uploads/scale_small/1/16281/322594-20770-124553-1-marshal-law-secret.jpg	2015-04-06 21:51:04.106777	2015-04-07 20:06:18.764388	1993
330	Marshal Law: Super-Babylon	20774	<p style="">Concluding Pat Mills and Kevin O'Neill's Apocalypse Comics' HATEFUL DEAD story.</p><p style="">Collected in <a href="http://www.comicvine.com/marshal-law-the-deluxe-edition/4050-60074/" data-ref-id="4050-60074">Marshal Law The Deluxe Edition</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/16281/322703-20774-124558-1-marshal-law-super-b.jpg	http://static.comicvine.com/uploads/scale_small/1/16281/322703-20774-124558-1-marshal-law-super-b.jpg	2015-04-06 21:51:04.110351	2015-04-07 20:06:19.039275	1992
331	Star Wars: Dark Forces - Jedi Knight	20775	<p style="">Trade Paper Back based on the novel. Sequel to <a data-ref-id="4050-21243" href="/star-wars-dark-forces-soldier-for-the-empire/4050-21243/" slug="star-wars-dark-forces-soldier-for-the-empire">Star Wars: Dark Forces: Soldier For The Empire</a> &amp; <a data-ref-id="4050-20838" href="/star-wars-dark-forces-rebel-agent/4050-20838/" slug="star-wars-dark-forces-rebel-agent">Star Wars: Dark Forces: Rebel Agent</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/322724-20775-124560-1-star-wars-dark-force.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/322724-20775-124560-1-star-wars-dark-force.jpg	2015-04-06 21:51:04.113915	2015-04-07 20:06:19.361098	1998
332	Star Wars: Zam Wesell	20779	<p style="">A paperback graphic novel following the events of <a data-ref-id="4050-20769" href="/star-wars-jango-fett/4050-20769/" slug="star-wars-jango-fett">Star Wars: Jango Fett</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/322745-20779-124567-1-star-wars-zam-wesell.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/322745-20779-124567-1-star-wars-zam-wesell.jpg	2015-04-06 21:51:04.117607	2015-04-07 20:06:19.788035	2002
333	Star Wars: Tag & Bink Were Here	20813	<p style="">Collects <a data-ref-id="4050-20219" href="/star-wars-tag-and-bink-are-dead/4050-20219/" slug="star-wars-tag-and-bink-are-dead"> Star Wars:Tag &amp; Bink Are Dead</a> and <a data-ref-id="4050-20221" href="/star-wars-tag-and-bink-ii/4050-20221/" slug="star-wars-tag-and-bink-ii">  Star Wars: Tag &amp; Bink II</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754503-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754503-01.jpg	2015-04-06 21:51:04.121409	2015-04-07 20:06:20.102317	2006
334	Art Adams' Creature Features	20816	<p style="">Back Cover: "Godzilla may be King of Monsters, but Art Adams is the king of that giant lizard, and he proves it in this collection of Creature Features! Including such monster hits as Creature from the Black Lagoon, the Godzilla Color Special, a rare Monkeyman &amp; O'Brien story titled "Trapped in the Lair of the Shrewmanoid," and "Trampling Tokyo" from the Alan Moore Songbook, Art Adams' Creature Features features all of your favorite creatures as seen through the eyes of one of your favorite comics artists! Though some of these stories originally appeared in black and white, every page of this 104-page collection is fully colored!"</p>	http://static.comicvine.com/uploads/scale_small/1/16755/324386-20816-124782-1-art-adams-creature.jpg	http://static.comicvine.com/uploads/scale_small/1/16755/324386-20816-124782-1-art-adams-creature.jpg	2015-04-06 21:51:04.128656	2015-04-07 20:06:20.392776	1996
336	Star Wars: Dark Forces - Rebel Agent	20838	<p style="">Trade Paper Back adaptation of the novel. Sequel to <a href="/star-wars-dark-forces-soldier-for-the-empire/4050-21243/" data-ref-id="4050-21243">Star Wars: Dark Forces: Soldier For The Empire</a>.</p><p style="">Followed up by: <a href="//www.comicvine.com/star-wars-dark-forces-jedi-knight-1-jedi-knight/4000-124560/" data-ref-id="4000-124560">Star Wars: Dark Forces - Jedi Knight</a></p>	http://static.comicvine.com/uploads/scale_small/1/15317/325684-20838-124920-1-star-wars-dark-force.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/325684-20838-124920-1-star-wars-dark-force.jpg	2015-04-06 21:51:04.137607	2015-04-07 20:06:20.97229	1999
337	Will to Power	20843	<p style="">Collected in <a data-ref-id="4050-21168" href="/dark-horse-heroes-omnibus/4050-21168/" slug="dark-horse-heroes-omnibus">Dark Horse Heroes Omnibus</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/229/325786-20843-124925-1-will-to-power.jpg	http://static.comicvine.com/uploads/scale_small/0/229/325786-20843-124925-1-will-to-power.jpg	2015-04-06 21:51:04.142227	2015-04-07 20:06:21.320523	1994
338	Star Wars: Episode III: Revenge of the Sith	20852	<p style=""><i>Based on the screenplay by George Lucas-the official comics adaptation of the most anticipated of the Star Wars films! The action of the Clone Wars comes to a dramatic conclusion, and events are put in place for A New Hope.</i></p><p style=""><i>Battles rage in space, armies clash on alien worlds, heroes become martyrs, and friends become enemies-and the galaxy is forever changed!</i></p><p style=""><i>Shipping weekly, this four-issue series features art by Doug Wheatley (Star Wars: Empire volume 2-Darklighter)-who brings a level of life and detail to the adaptation that rivals that of the films themselves-with covers by Dave Dorman!</i></p><p style="">4 issue Comic book adaptation of the movie</p>	http://static.comicvine.com/uploads/scale_small/1/15317/325941-20852-124934-1-star-wars-episode-ii.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/325941-20852-124934-1-star-wars-episode-ii.jpg	2015-04-06 21:51:04.146083	2015-04-07 20:06:21.644758	2006
340	Dark Horse Maverick 2000	20899	\N	http://static.comicvine.com/uploads/scale_small/0/229/328701-20899-125144-1-dark-horse-maverick.jpg	http://static.comicvine.com/uploads/scale_small/0/229/328701-20899-125144-1-dark-horse-maverick.jpg	2015-04-06 21:51:04.153789	2015-04-07 20:06:22.310699	2000
341	Dark Horse Maverick 2001	20900	\N	http://static.comicvine.com/uploads/scale_small/0/229/328712-20900-125147-1-dark-horse-maverick.jpg	http://static.comicvine.com/uploads/scale_small/0/229/328712-20900-125147-1-dark-horse-maverick.jpg	2015-04-06 21:51:04.15762	2015-04-07 20:06:22.761752	2001
342	Serenity Better Days	20901	<p style="">While technically the second Serenity mini-series, this one takes place prior to the first one.  Better Days chronicles one of the Serenity crew's heists.  In this case, it is the unusual occurance that the heist actually goes well (hence the subtitle "Better Days")</p>	http://static.comicvine.com/uploads/scale_small/0/40/328765-20901-125163-1-serenity-better-days.jpg	http://static.comicvine.com/uploads/scale_small/0/40/328765-20901-125163-1-serenity-better-days.jpg	2015-04-06 21:51:04.161553	2015-04-07 20:06:23.162331	2008
345	Star Wars: Episode II - Attack of the Clones	20930	<p style="">Comic book adaptation of the movie, collected in <a data-ref-id="4050-21072" href="/star-wars-episode-ii-attack-of-the-clones/4050-21072/" slug="star-wars-episode-ii-attack-of-the-clones">Star Wars: Episode II - Attack of the Clones</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/330651-20930-125383-1-star-wars-episode-ii.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/330651-20930-125383-1-star-wars-episode-ii.jpg	2015-04-06 21:51:04.1749	2015-04-07 20:06:24.395168	2002
346	Sock Monkey: The Inches Incident	20945	<p style="">This title, along with Billy Hazelnuts, won Tony Millionaire the 2007 Eisner for Best Writer/Artist in Humor.</p><p style="">Collected in <a data-ref-id="4050-48576" href="/sock-monkey-the-inches-incident/4050-48576/" slug="sock-monkey-the-inches-incident">Sock Monkey: The Inches Incident</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/229/331050-20945-125451-1-sock-monkey-the.jpg	http://static.comicvine.com/uploads/scale_small/0/229/331050-20945-125451-1-sock-monkey-the.jpg	2015-04-06 21:51:04.181191	2015-04-07 20:06:24.739204	2006
348	Age of Reptiles	20988	<h4>Collected Editions</h4><ul><li><a data-ref-id="4050-56492" href="/age-of-reptiles-tribal-warfare/4050-56492/" slug="age-of-reptiles-tribal-warfare">Age of Reptiles: Tribal Warfare</a></li><li><a data-ref-id="4000-293982" href="/age-of-reptiles-omnibus-/4000-293982/" slug="age-of-reptiles-omnibus-">Age of Reptiles Omnibus</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/229/334128-20988-125670-1-age-of-reptiles.jpg	http://static.comicvine.com/uploads/scale_small/0/229/334128-20988-125670-1-age-of-reptiles.jpg	2015-04-06 21:51:04.189916	2015-04-07 20:06:25.356292	1993
349	Age of Reptiles: The Hunt	20989	<p style="">This series was nominated for the Eisner award for Best Limited Series in 1997. Delgado won the Talent Deserving of Wider Recognition Eisner for his work on this series.</p><h4>Trade Paperback Collections</h4><ul><li><a data-ref-id="4050-56491" href="/age-of-reptiles-the-hunt/4050-56491/" slug="age-of-reptiles-the-hunt">Age of Reptiles: The Hunt</a></li><li><a data-ref-id="4000-293982" href="/age-of-reptiles-omnibus-/4000-293982/" slug="age-of-reptiles-omnibus-">Age of Reptiles Omnibus</a></li></ul>	http://static.comicvine.com/uploads/scale_small/0/229/334134-20989-125671-1-age-of-reptiles-the.jpg	http://static.comicvine.com/uploads/scale_small/0/229/334134-20989-125671-1-age-of-reptiles-the.jpg	2015-04-06 21:51:04.193865	2015-04-07 20:06:25.634037	1996
351	Too Much Coffee Man Special	21009	\N	http://static.comicvine.com/uploads/scale_small/0/229/335891-21009-125788-1-too-much-coffee-man.jpg	http://static.comicvine.com/uploads/scale_small/0/229/335891-21009-125788-1-too-much-coffee-man.jpg	2015-04-06 21:51:04.202226	2015-04-07 20:06:26.279985	1997
352	Star Wars: Episode I Anakin Skywalker	21025	<p style="">1-shot starring Anakin Skywalker (Darth Vader)</p><p style=""><b>NOTE:</b> Indicia titled as "Star Wars: Episode I Anakin Skywalker"</p>	http://static.comicvine.com/uploads/scale_small/1/15317/337627-21025-125874-1-star-wars-episode-1.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/337627-21025-125874-1-star-wars-episode-1.jpg	2015-04-06 21:51:04.206148	2015-04-07 20:06:26.745881	1999
353	Star Wars: Boba Fett - Enemy of the Empire	21027	<p style="">This is a trade paperback that collects the 4-issue limited series <a data-ref-id="4050-20224" href="/star-wars-boba-fett-enemy-of-the-empire/4050-20224/" slug="star-wars-boba-fett-enemy-of-the-empire">Star Wars: Boba Fett - Enemy of the Empire</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754425-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754425-01.jpg	2015-04-06 21:51:04.209717	2015-04-07 20:06:27.260938	1999
354	Classic Star Wars: Devilworlds	21037	<p style="">Collects classic back-ups from <a data-ref-id="4050-2914" href="/star-wars/4050-2914/" slug="star-wars">  Star Wars</a> when <a data-ref-id="4010-31" href="/marvel/4010-31/" slug="marvel"> Marvel </a>comics was publishing it.  This series is the only reprints of the sought after <a data-ref-id="4040-40382" href="/alan-moore/4040-40382/" slug="alan-moore">   Alan Moore</a> penned Star Wars stories.</p>	http://static.comicvine.com/uploads/scale_small/1/15317/338464-21037-125911-1-classic-star-wars-de.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/338464-21037-125911-1-classic-star-wars-de.jpg	2015-04-06 21:51:04.213797	2015-04-07 20:06:27.600493	1996
356	Too Much Coffee Man's Amusing Musings	21040	\N	http://static.comicvine.com/uploads/scale_small/0/229/338796-21040-125921-1-too-much-coffee-man.jpg	http://static.comicvine.com/uploads/scale_small/0/229/338796-21040-125921-1-too-much-coffee-man.jpg	2015-04-06 21:51:04.222216	2015-04-07 20:06:28.451389	2001
357	Return of the Gremlins	21045	<p style="">From Walt Disney and based on the creation by Roald Dahl.  Three issue mini-series.</p>	http://static.comicvine.com/uploads/scale_small/0/40/339300-21045-125980-1-return-of-the-gremli.jpg	http://static.comicvine.com/uploads/scale_small/0/40/339300-21045-125980-1-return-of-the-gremli.jpg	2015-04-06 21:51:04.226944	2015-04-07 20:06:28.771959	2008
358	Star Wars: Jango Fett: Open Seasons	21046	<p style="">4-issue limited series starring Jango Fett.  Collected volume: <a data-ref-id="4050-21204" href="/star-wars-jango-fett-open-seasons/4050-21204/" slug="star-wars-jango-fett-open-seasons">  Star Wars: Jango Fett: Open Seasons</a></p>	http://static.comicvine.com/uploads/scale_small/1/15317/339570-21046-125991-1-star-wars-jango-fett.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/339570-21046-125991-1-star-wars-jango-fett.jpg	2015-04-06 21:51:04.231196	2015-04-07 20:06:29.317468	2002
360	Indiana Jones Omnibus	21053	<p style="">Indiana Jones is back in those massive volumes recounting the most important discoveries in the career of the twentieth century's most adventurous archaeologist!</p>	http://static.comicvine.com/uploads/scale_small/0/787/340264-21053-126030-1-indiana-jones-omnibu.jpg	http://static.comicvine.com/uploads/scale_small/0/787/340264-21053-126030-1-indiana-jones-omnibu.jpg	2015-04-06 21:51:04.239811	2015-04-07 20:06:30.247713	2008
361	The Shadow and Doc Savage	21064	\N	http://static.comicvine.com/uploads/scale_small/1/11307/342597-21064-126168-1-the-shadow-and-doc-s.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/342597-21064-126168-1-the-shadow-and-doc-s.jpg	2015-04-06 21:51:04.243564	2015-04-07 20:06:30.812067	1995
362	Star Wars: Episode II: Attack of the Clones	21072	<p style="">Trade Paper Back that collects the 4 issue limited series: <a data-ref-id="4050-20930" href="/star-wars-episode-ii-attack-of-the-clones/4050-20930/" slug="star-wars-episode-ii-attack-of-the-clones">Star Wars: Episode II - Attack of the Clones</a>.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754497-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754497-01.jpg	2015-04-06 21:51:04.247713	2015-04-07 20:06:31.365467	2008
364	Grendel: Devil by the Deed	21091	<p style="">Dark Horse is proud to present the critically-acclaimed origin of the first Grendel, Hunter Rose, newly recolored and repackaged in our deluxe comic-book format. Originally published as a graphic album by Comico in 1988, the story has long been out of print and available only at collector's prices. This affordable edition features a new painted cover by Matt Wagner, plus all-new pinup art by a roster of fan-favorites, including Kelley Jones, Jason Pearson, John K. Snyder, Tim Sale, Michael Allred, Guy Davis, and Teddy Kristiansen.</p>	http://static.comicvine.com/uploads/scale_small/0/462/346407-21091-126642-1-grendel-devil-by-th.png	http://static.comicvine.com/uploads/scale_small/0/462/346407-21091-126642-1-grendel-devil-by-th.png	2015-04-06 21:51:04.255354	2015-04-07 20:06:32.073916	1993
367	Aliens: Female War	21121	<p style="">Collects <a data-ref-id="4050-4462" href="/aliens-earth-war/4050-4462/" slug="aliens-earth-war">Aliens: Earth War</a> #1-4.</p><p style="">This trade is included in the <a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349539-21121-126926-1-aliens-female-war.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349539-21121-126926-1-aliens-female-war.jpg	2015-04-06 21:51:04.266902	2015-04-07 20:06:33.012556	1996
368	Aliens: Kidnapped	21122	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349550-21122-126931-1-aliens-kidnapped.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349550-21122-126931-1-aliens-kidnapped.jpg	2015-04-06 21:51:04.271632	2015-04-07 20:06:33.304586	1999
369	Aliens: Harvest	21123	<p style="">Collects the four issue <a data-ref-id="4050-4860" href="/aliens-hive/4050-4860/" slug="aliens-hive">Aliens: Hive</a> mini-series.</p><p style="">This trade is collected in <a data-ref-id="4000-120334" href="/aliens-omnibus-volume-2/4000-120334/" slug="aliens-omnibus-volume-2">Aliens Omnibus volume 2</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349543-21123-126934-1-aliens-harvest.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349543-21123-126934-1-aliens-harvest.jpg	2015-04-06 21:51:04.277118	2015-04-07 20:06:33.671024	1998
370	Aliens: Newt's Tale	21124	<p style="">Two part spin-off from the second movie of the "Alien(s)" franchise, never to be re-published in the Omnibus nor in digital form by Dark Horse.</p><p style="">It is worth nothing that most of the material in these issues are from cut-scenes that did not make the movie in its theatrical form (ie. the discovery of the derelict ship by the colonist) but eventually made it in the uncut edition of the movie in 1992.</p><p style="">This series was collected by Titan Books, <a href="/aliens-newts-tale/4050-39677/" data-ref-id="4050-39677">Aliens: Newt's Tale</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349558-21124-126938-1-aliens-newt-s-tale.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349558-21124-126938-1-aliens-newt-s-tale.jpg	2015-04-06 21:51:04.281519	2015-04-07 20:06:33.958259	1992
371	Aliens: Nightmare Asylum	21125	<p style="">Collects <a data-ref-id="4050-4295" href="/aliens/4050-4295/" slug="aliens">Aliens</a> #1-4.</p><p style="">Also included in <a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349562-21125-126939-1-aliens-nightmare-as.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349562-21125-126939-1-aliens-nightmare-as.jpg	2015-04-06 21:51:04.285999	2015-04-07 20:06:34.264044	1996
372	Aliens: Outbreak	21126	<p style="">Collects <a data-ref-id="4050-4132" href="/aliens/4050-4132/" slug="aliens">Aliens</a> #1-6.</p><p style="">This trade is collected in the <a data-ref-id="4000-113935" href="/aliens-omnibus-volume-1/4000-113935/" slug="aliens-omnibus-volume-1">Aliens Omnibus volume 1</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349577-21126-126941-1-aliens-outbreak.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349577-21126-126941-1-aliens-outbreak.jpg	2015-04-06 21:51:04.290229	2015-04-07 20:06:34.562278	1996
374	Aliens: Stronghold	21128	<p style="">Collected in <a data-ref-id="4050-54718" href="/aliens-stronghold/4050-54718/" slug="aliens-stronghold">Aliens: Stronghold</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/11307/349822-21128-126945-1-aliens-stronghold.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349822-21128-126945-1-aliens-stronghold.jpg	2015-04-06 21:51:04.29592	2015-04-07 20:06:35.153831	1994
375	Aliens/Predator: The Deadliest of the Species	21129	\N	http://static.comicvine.com/uploads/scale_small/6/67663/2754108-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2754108-01.jpg	2015-04-06 21:51:04.299235	2015-04-07 20:06:35.471357	1993
377	King's of the Night	21138	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349881-21138-126968-1-kings-s-of-the-night.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349881-21138-126968-1-kings-s-of-the-night.jpg	2015-04-06 21:51:04.308904	2015-04-07 20:06:36.043111	1989
378	RoboCop: Roulette	21144	\N	http://static.comicvine.com/uploads/scale_small/3/38826/845003-00000.jpg	http://static.comicvine.com/uploads/scale_small/3/38826/845003-00000.jpg	2015-04-06 21:51:04.313567	2015-04-07 20:06:36.337354	1993
379	Species	21148	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349948-21148-126989-1-species.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349948-21148-126989-1-species.jpg	2015-04-06 21:51:04.317754	2015-04-07 20:06:36.648556	1995
380	Species: Human Race	21149	<p style="">Collected in <a data-ref-id="4050-48581" href="/species-human-race/4050-48581/" slug="species-human-race">Species: Human Race</a>.</p>	http://static.comicvine.com/uploads/scale_small/1/15776/912443-specieshumanrace1a.jpg	http://static.comicvine.com/uploads/scale_small/1/15776/912443-specieshumanrace1a.jpg	2015-04-06 21:51:04.321442	2015-04-07 20:06:36.987799	1996
382	Strange Wink	21151	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349954-21151-126992-1-strange-wink.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349954-21151-126992-1-strange-wink.jpg	2015-04-06 21:51:04.329071	2015-04-07 20:06:37.572579	1998
383	Tales of Ordinary Madness	21152	\N	http://static.comicvine.com/uploads/scale_small/1/11307/349960-21152-126993-1-tales-of-ordinary-ma.jpg	http://static.comicvine.com/uploads/scale_small/1/11307/349960-21152-126993-1-tales-of-ordinary-ma.jpg	2015-04-06 21:51:04.332704	2015-04-07 20:06:37.830903	1992
384	Star Wars Omnibus: Tales of the Jedi	21163	<p style="">Discover the earliest known stories of the Jedi and the Sith in this massive collection!</p><p style="">Five thousand years before Luke Skywalker's successful assault on the Death Star, the Sith Lord Marka Ragnos ruled the galaxy. That is, until his death ignited a battle for ascension that would spell the end for his empire-and nearly the entire galaxy! It would be another thousand years before two young Jedi novices Ulic Qel-Droma and Nomi Sunrider would rise for the cause of justice, first in the case of a Jedi-killing Hutt, and then against a dark Jedi spirit threatening to engulf an entire planet!</p>	http://static.comicvine.com/uploads/scale_small/0/787/351769-21163-127137-1-star-wars-omnibus-t.jpg	http://static.comicvine.com/uploads/scale_small/0/787/351769-21163-127137-1-star-wars-omnibus-t.jpg	2015-04-06 21:51:04.33771	2015-04-07 20:06:38.321759	2007
400	Aliens vs. Predator vs. The Terminator	21223	<p style="">In the year 2032, John Connor and the human resistance forces wage war on the evil super-computer, Skynet. Sensing ultimate defeat, Skynet goes into hiding. Centuries later, it is awakened by stealth Terminators posing as human scientists. Now an even deadlier Skynet is creating invincible Terminator/Alien hybrids! Earth's only chance lies in the hands of a legendary heroine named Ripley and . . . the Predators?! Even this ancient hunter race understands that Skynet threatens all life in the universe. Plus, they love a good fight! Featuring covers by Dwayne Turner (Spawn)! </p>Collected in <a data-ref-id="4050-20704" href="/aliens-vs-predator-vs-terminator/4050-20704/" slug="aliens-vs-predator-vs-terminator">Aliens vs. Predator vs. The Terminator</a>.	http://static.comicvine.com/uploads/scale_small/0/462/357671-21223-127600-1-aliens-vs-predator.jpg	http://static.comicvine.com/uploads/scale_small/0/462/357671-21223-127600-1-aliens-vs-predator.jpg	2015-04-06 21:51:04.415016	2015-04-07 20:06:44.980171	2000
385	Terminator: Omnibus	21164	<p style="">They came from another time to ensure that the future would belong solely to the machines. They are Terminators-indestructible killing engines hiding inside shells of flesh and blood. Tireless, fearless, merciless, unencumbered by human emotion, dedicated to the complete eradication of mankind. But despite the frailty of human flesh, nothing is as immortal as the human spirit, and even the strongest metal will bend by the will of a mother fighting for the future of her children.</p><p style="">The Terminators never sleep. They don't need food or water. The heat of the desert gives them no pause. The darkness of night does not halt their deadly gaze. Bullets won't stop them. Their humanity cannot be appealed to-because they have none. Sent from the future, their mission is clear and unrelenting: to erase the lives of any who threaten their future dominance, any who would attempt to deny the rise of the Machine. But that which man has created, man can destroy, and so . . . the war for the future begins today.</p><p style="">Dark Horse Comics has long been regarded as the heavyweight champion of adapting film blockbusters to graphic fiction, and The Terminator is one of the finest examples of bringing top comics talents to the expansion of a premier action/adventure mythos.</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754237-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754237-01.jpg	2015-04-06 21:51:04.346874	2015-04-07 20:06:38.830095	2008
386	Dark Horse Heroes Omnibus	21168	<p style="">Omnibus edition collecting <a data-ref-id="4050-34222" href="/comics-greatest-world-arcadia/4050-34222/" slug="comics-greatest-world-arcadia">Comics' Greatest World: Arcadia</a>, <a data-ref-id="4050-34225" href="/comics-greatest-world-golden-city/4050-34225/" slug="comics-greatest-world-golden-city">Comics' Greatest World: Golden City</a>, <a data-ref-id="4050-34223" href="/comics-greatest-world-steel-harbor/4050-34223/" slug="comics-greatest-world-steel-harbor">Comics' Greatest World: Steel Harbor</a>, <a data-ref-id="4050-34224" href="/comics-greatest-world-vortex/4050-34224/" slug="comics-greatest-world-vortex">Comics' Greatest World: Vortex</a> and <a data-ref-id="4050-20843" href="/will-to-power/4050-20843/" slug="will-to-power">Will to Power</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/787/352321-21168-127170-1-dark-horse-heroes-om.jpg	http://static.comicvine.com/uploads/scale_small/0/787/352321-21168-127170-1-dark-horse-heroes-om.jpg	2015-04-06 21:51:04.349877	2015-04-07 20:06:39.162814	2008
388	Star Wars: Starfighter: Crossbones	21178	<p style="">3-issue limited series based on the video game</p>	http://static.comicvine.com/uploads/scale_small/1/15317/354089-21178-127290-1-star-wars-starfighte.jpg	http://static.comicvine.com/uploads/scale_small/1/15317/354089-21178-127290-1-star-wars-starfighte.jpg	2015-04-06 21:51:04.360294	2015-04-07 20:06:39.935115	2002
389	Star Wars: Episode I: The Phantom Menace	21179	<p style="">Trade Paper Back collecting the 4-issue limited series <a data-ref-id="4050-20929" href="/star-wars-episode-i-the-phantom-menace/4050-20929/" slug="star-wars-episode-i-the-phantom-menace">Star Wars - Episode I - The Phantom Menace</a> based on the movie</p>	http://static.comicvine.com/uploads/scale_small/6/67663/3754494-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/3754494-01.jpg	2015-04-06 21:51:04.364869	2015-04-07 20:06:40.295586	1999
391	Grendel: Devil's Legacy	21189	<p style="">This series reprints issues #1-12 of <a data-ref-id="4050-3699" href="/grendel/4050-3699/" slug="grendel">Grendel volume 2</a> published by Comico, re-colored and with new covers by Matt Wagner.</p>	http://static.comicvine.com/uploads/scale_small/0/462/354930-21189-127334-1-grendel-devil-s-leg.jpg	http://static.comicvine.com/uploads/scale_small/0/462/354930-21189-127334-1-grendel-devil-s-leg.jpg	2015-04-06 21:51:04.372829	2015-04-07 20:06:41.597873	2002
392	Star Wars: Jango Fett: Open Seasons	21204	<p style="">Trade paperback collecting the four part series <a data-ref-id="4050-21046" href="/star-wars-jango-fett-open-seasons/4050-21046/" slug="star-wars-jango-fett-open-seasons"> Jango Fett: Open Seasons.</a><br/> </p>	http://static.comicvine.com/uploads/scale_small/4/49017/1184428-jangofettopenseasonstpb.jpg	http://static.comicvine.com/uploads/scale_small/4/49017/1184428-jangofettopenseasonstpb.jpg	2015-04-06 21:51:04.376224	2015-04-07 20:06:42.005913	2003
393	Grendel: Red, White, and Black	21214	<p style="">This was a second anthology series featuring short Hunter Rose <a data-ref-id="4005-29748" href="/grendel/4005-29748/" slug="grendel">Grendel</a> tales written by <a data-ref-id="4040-8310" href="/matt-wagner/4040-8310/" slug="matt-wagner">Matt Wagner</a> and illustrated by a plethora of guest artists. This series follows the previous Black, White, and Red series with the art style of only using the colors of black, white, and red.</p><h4><b>Collected Editions</b></h4><ul><li><a data-ref-id="4050-21214" href="/grendel-red-white-and-black/4050-21214/" slug="grendel-red-white-and-black">Grendel: Red, White, and Black</a> (#1-4)</li></ul>	http://static.comicvine.com/uploads/scale_small/6/67663/2787632-01.jpg	http://static.comicvine.com/uploads/scale_small/6/67663/2787632-01.jpg	2015-04-06 21:51:04.379865	2015-04-07 20:06:42.41783	2002
394	Grendel Tales: The Devil's Apprentice	21215	<p style=""> Last in the <em>Grendel Tales</em> series of miniseries, it came after <a href="/grendel-tales-the-devil-may-care/4050-5614/" data-ref-id="4050-5614"><em>The Devil May Care</em></a>.</p>	http://static.comicvine.com/uploads/scale_small/0/462/357309-21215-127568-1-grendel-tales-the-d.jpg	http://static.comicvine.com/uploads/scale_small/0/462/357309-21215-127568-1-grendel-tales-the-d.jpg	2015-04-06 21:51:04.383422	2015-04-07 20:06:42.751658	2008
396	Grendel Tales: Devil's Choices	21217	<p style="">Part of the <em>Grendel Tales</em> series of miniseries, it comes after <a href="/grendel-tales-homecoming/4050-5385/" data-ref-id="4050-5385">Homecoming</a> and before <a href="/grendel-tales-the-devil-may-care/4050-5614/" data-ref-id="4050-5614">The Devil May Care</a>.</p><p style="">Collected in <a href="/grendel-tales-devils-and-deaths-tpb/4000-323262/" data-ref-id="4000-323262">Grendel Tales: Devils and Deaths</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/462/357321-21217-127570-1-grendel-tales-devil.jpg	http://static.comicvine.com/uploads/scale_small/0/462/357321-21217-127570-1-grendel-tales-devil.jpg	2015-04-06 21:51:04.398318	2015-04-07 20:06:43.440029	2008
397	The Adventures of Luther Arkwright	21219	<p style="">Reprints the British comic <a data-ref-id="4050-38821" href="/the-adventures-of-luther-arkwright/4050-38821/" slug="the-adventures-of-luther-arkwright">of the same name</a>.</p>	http://static.comicvine.com/uploads/scale_small/0/462/357647-21219-127593-1-the-adventures-of-lu.jpg	http://static.comicvine.com/uploads/scale_small/0/462/357647-21219-127593-1-the-adventures-of-lu.jpg	2015-04-06 21:51:04.401649	2015-04-07 20:06:43.735087	1990
398	Adventures of the Mask	21220	<p style="">Based on but not adapted from the hit Saturday morning cartoon! Life in Edge City has always been tough for good guy Stanley Ipkiss. But now that Stanley is in possession of the ultra-powerful artifact, the mask, it's. . . well, tougher! There is truth in the old axiom that with great power comes greater trouble! The trouble is everybody wants the mask, including Pretorious, the villainous bad guy, and Walter, the mute monster!</p>	http://static.comicvine.com/uploads/scale_small/0/462/357652-21220-127594-1-adventures-of-the-ma.jpg	http://static.comicvine.com/uploads/scale_small/0/462/357652-21220-127594-1-adventures-of-the-ma.jpg	2015-04-06 21:51:04.406837	2015-04-07 20:06:44.156793	1996
\.


--
-- Name: volumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: charlespainter
--

SELECT pg_catalog.setval('volumes_id_seq', 2603, true);


--
-- Name: volumes_pkey; Type: CONSTRAINT; Schema: public; Owner: charlespainter; Tablespace: 
--

ALTER TABLE ONLY volumes
    ADD CONSTRAINT volumes_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: charlespainter; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: charlespainter
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM charlespainter;
GRANT ALL ON SCHEMA public TO charlespainter;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

