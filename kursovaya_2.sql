--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-01-19 18:55:16

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
-- TOC entry 214 (class 1259 OID 24738)
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    id integer NOT NULL,
    name text,
    head_of_department text
);


ALTER TABLE public.department OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24745)
-- Name: documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents (
    id integer NOT NULL,
    name text,
    project_id integer
);


ALTER TABLE public.documents OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24766)
-- Name: members_ss; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members_ss (
    id integer NOT NULL,
    full_name text,
    department_id integer NOT NULL,
    "e-mail" text
);


ALTER TABLE public.members_ss OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24761)
-- Name: members_ss_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members_ss_projects (
    member_id integer NOT NULL,
    project_id integer NOT NULL,
    "position" text
);


ALTER TABLE public.members_ss_projects OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24773)
-- Name: partners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partners (
    id integer NOT NULL,
    name text,
    phone text
);


ALTER TABLE public.partners OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24780)
-- Name: partners_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partners_projects (
    partners_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.partners_projects OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24785)
-- Name: platform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.platform (
    id integer NOT NULL,
    name text,
    format text
);


ALTER TABLE public.platform OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24792)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    name text,
    category text,
    head text,
    start_date date,
    finish_date date,
    budget numeric,
    platform_id integer
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 24738)
-- Dependencies: 214
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.department (id, name, head_of_department) VALUES (4, 'ZVK', 'Overin George');
INSERT INTO public.department (id, name, head_of_department) VALUES (3, 'ZVnUK', 'Parapan Anastasia');
INSERT INTO public.department (id, name, head_of_department) VALUES (2, 'ZMA', 'Budanova Anastasia');
INSERT INTO public.department (id, name, head_of_department) VALUES (1, 'ZZK', 'Babaeva Parvin');


--
-- TOC entry 3362 (class 0 OID 24745)
-- Dependencies: 215
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.documents (id, name, project_id) VALUES (5, 'Prikaz', 1);
INSERT INTO public.documents (id, name, project_id) VALUES (4, 'Smeta', 3);
INSERT INTO public.documents (id, name, project_id) VALUES (3, 'Slugebnaya zapiska', 2);
INSERT INTO public.documents (id, name, project_id) VALUES (2, 'Smeta', 1);
INSERT INTO public.documents (id, name, project_id) VALUES (1, 'Prikaz', 2);


--
-- TOC entry 3364 (class 0 OID 24766)
-- Dependencies: 217
-- Data for Name: members_ss; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (15, 'Nesityh Alena', 2, 'alena.nesytyx@mail.ru');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (14, 'Babaeva Parvin', 1, 'parvinbabayev347@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (13, 'Budanova Anastasia', 2, 'abudanova00@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (12, 'Pankova Polina', 1, 'polina.pankova.2323@mail.ru');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (11, 'Golubev Vladimir', 3, '0412221@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (10, 'Overin George', 4, 'saint-george228@mail.ru');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (9, 'Alekseev Aleksandr', 1, 'A.alexeev2811@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (8, 'Moiseeva Veronika', 2, 'veronikamoi03@gmail.com
');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (7, 'Badaeva Ajtana
', 2, 'badaevaajtana@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (6, 'Davreshan Anastasia', 4, 'davreshnyashnasty@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (5, 'Galushko Vladislav', 4, 'piligrim272002@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (4, 'Chigova Arina', 3, 'arina.chizhova.2004@mail.ru');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (3, 'Kurakina Kristina
', 1, 'kristina_3104@mail.ru ');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (2, 'Bombenko Ksenia', 3, 'bombenkoks@gmail.com');
INSERT INTO public.members_ss (id, full_name, department_id, "e-mail") VALUES (1, 'Golubyatnikova Anastasia', 1, 'golubyatnikova.anastas@yandex.ru');


--
-- TOC entry 3363 (class 0 OID 24761)
-- Dependencies: 216
-- Data for Name: members_ss_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (6, 10, 'Глава отдела партнерки');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (2, 9, 'Ответственный за интерактивы');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (13, 10, 'Аналитик');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (15, 7, 'Заместитель ГРГ');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (9, 5, 'ГРГ');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (10, 8, 'Куратор
');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (14, 5, 'Глава отдела дизайна');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (1, 3, 'Разработчик');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (4, 1, 'ГРГ');
INSERT INTO public.members_ss_projects (member_id, project_id, "position") VALUES (11, 2, 'ГРГ');


--
-- TOC entry 3365 (class 0 OID 24773)
-- Dependencies: 218
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.partners (id, name, phone) VALUES (10, 'Mango', '8 (362) 800-92-29');
INSERT INTO public.partners (id, name, phone) VALUES (9, 'Katis_braclet
', '8 (431) 807-38-76');
INSERT INTO public.partners (id, name, phone) VALUES (8, 'Solemate', '8 (046) 196-12-53');
INSERT INTO public.partners (id, name, phone) VALUES (7, 'Vkusvill', '8 (377) 454-25-13');
INSERT INTO public.partners (id, name, phone) VALUES (6, 'Reboot fitness
', '8 (869) 071-88-07');
INSERT INTO public.partners (id, name, phone) VALUES (5, 'Spirit fitness', '8 (754) 486-94-16');
INSERT INTO public.partners (id, name, phone) VALUES (4, 'Cinema star', '8 (763) 877-22-30');
INSERT INTO public.partners (id, name, phone) VALUES (3, 'Dodo pizza
', '8 (614) 069-50-32');
INSERT INTO public.partners (id, name, phone) VALUES (2, 'Ranepa store', '8 (155) 803-81-45');
INSERT INTO public.partners (id, name, phone) VALUES (1, 'Klaustrophobia', '8 (833) 303-57-51');


--
-- TOC entry 3366 (class 0 OID 24780)
-- Dependencies: 219
-- Data for Name: partners_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.partners_projects (partners_id, project_id) VALUES (10, 3);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (9, 2);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (8, 3);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (7, 1);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (6, 4);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (5, 2);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (4, 1);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (3, 4);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (2, 1);
INSERT INTO public.partners_projects (partners_id, project_id) VALUES (1, 4);


--
-- TOC entry 3367 (class 0 OID 24785)
-- Dependencies: 220
-- Data for Name: platform; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.platform (id, name, format) VALUES (10, '1_korpus_after_BAZ', 'offline');
INSERT INTO public.platform (id, name, format) VALUES (9, '5_korpus_5_floor', 'offline
');
INSERT INTO public.platform (id, name, format) VALUES (8, '1_korpus_before_BAZ', 'offline');
INSERT INTO public.platform (id, name, format) VALUES (7, 'Google meet', 'online');
INSERT INTO public.platform (id, name, format) VALUES (6, 'Zoom', 'online');
INSERT INTO public.platform (id, name, format) VALUES (5, 'Library_2_floor', 'offline');
INSERT INTO public.platform (id, name, format) VALUES (4, 'Library_1_floor', 'offline');
INSERT INTO public.platform (id, name, format) VALUES (3, 'VK_translation', 'online');
INSERT INTO public.platform (id, name, format) VALUES (2, 'MAZ', 'offline');
INSERT INTO public.platform (id, name, format) VALUES (1, 'BAZ', 'offline');


--
-- TOC entry 3368 (class 0 OID 24792)
-- Dependencies: 221
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (10, 'Kind heart', 'projects', 'Chigova Arina', '2023-09-17', '2024-05-12', 0, 7);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (9, 'Emeeting', 'projects', 'Galushko Vladislav', '2023-11-19', '2023-11-20', 26000, 10);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (8, 'Aktiv', 'projects', 'Davreshan Anastasia', '2023-10-30', '2024-02-20', 11000, 8);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (6, 'Mediaschool Glitch', 'projects', 'Moiseeva Veronika', '2023-10-14', '2023-10-27', 14000, 2);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (3, 'Mister i Miss EMIT', 'events', 'Overin George', '2024-02-12', '2024-02-13', 115000, 2);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (2, 'Kapustnik', 'events', 'Golubev Vladimir', '2023-10-05', '2023-10-05', 60000, 1);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (1, 'Knowledge day', 'events', 'Kurakina Kristina
', '2023-02-01', '2023-09-02', 20000, 6);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (7, 'Career&Science Community', 'projects', 'Badaeva Ajtana
', '2023-01-01', '2023-11-15', 0, 3);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (5, 'New Year evening', 'events', 'Alekseev Aleksandr', '2023-12-19', '2023-12-19', 57000, 9);
INSERT INTO public.projects (id, name, category, head, start_date, finish_date, budget, platform_id) VALUES (4, 'Dynasty', 'events
', 'Golubyatnikova Anastasia', '2024-04-22', '2024-04-25', 80000, 5);


--
-- TOC entry 3201 (class 2606 OID 24744)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 24751)
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 24772)
-- Name: members_ss memvers_ss_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_ss
    ADD CONSTRAINT memvers_ss_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 24800)
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 24791)
-- Name: platform platform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platform
    ADD CONSTRAINT platform_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 24798)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 24813)
-- Name: members_ss department_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_ss
    ADD CONSTRAINT department_fk FOREIGN KEY (department_id) REFERENCES public.department(id) NOT VALID;


--
-- TOC entry 3213 (class 2606 OID 24818)
-- Name: members_ss_projects member_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_ss_projects
    ADD CONSTRAINT member_fk FOREIGN KEY (member_id) REFERENCES public.members_ss(id) NOT VALID;


--
-- TOC entry 3216 (class 2606 OID 24927)
-- Name: partners_projects partners_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_projects
    ADD CONSTRAINT partners_fk FOREIGN KEY (partners_id) REFERENCES public.partners(id) NOT VALID;


--
-- TOC entry 3218 (class 2606 OID 24808)
-- Name: projects platform_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT platform_fk FOREIGN KEY (platform_id) REFERENCES public.platform(id) NOT VALID;


--
-- TOC entry 3212 (class 2606 OID 24803)
-- Name: documents project_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT project_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;


--
-- TOC entry 3214 (class 2606 OID 24823)
-- Name: members_ss_projects project_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members_ss_projects
    ADD CONSTRAINT project_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;


--
-- TOC entry 3217 (class 2606 OID 24922)
-- Name: partners_projects projects_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partners_projects
    ADD CONSTRAINT projects_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) NOT VALID;


-- Completed on 2024-01-19 18:55:17

--
-- PostgreSQL database dump complete
--

