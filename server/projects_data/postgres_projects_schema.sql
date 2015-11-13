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
-- Name: calendaryears; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE calendaryears (
    "calendaryearID" integer DEFAULT 0 NOT NULL,
    "calendaryearDesc" character varying(4) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE calendaryears OWNER TO payne;

--
-- Name: child; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE child (
    "projectID" integer NOT NULL,
    "childID" integer NOT NULL
);


ALTER TABLE child OWNER TO payne;

--
-- Name: comment; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE comment (
    "commentID" integer NOT NULL,
    "projectID" integer DEFAULT 0 NOT NULL,
    comment text NOT NULL,
    "commentAuthor" character varying(100) DEFAULT ''::character varying,
    "commentAuthored" timestamp without time zone,
    "commentEditor" character varying(100) DEFAULT ''::character varying,
    "commentEdited" timestamp without time zone
);


ALTER TABLE comment OWNER TO payne;

--
-- Name: comment_commentID_seq; Type: SEQUENCE; Schema: public; Owner: payne
--

CREATE SEQUENCE "comment_commentID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "comment_commentID_seq" OWNER TO payne;

--
-- Name: comment_commentID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payne
--

ALTER SEQUENCE "comment_commentID_seq" OWNED BY comment."commentID";


--
-- Name: complexitylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE complexitylist (
    "complexityID" integer DEFAULT 0 NOT NULL,
    "complexityDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "complexityText" text NOT NULL
);


ALTER TABLE complexitylist OWNER TO payne;

--
-- Name: costlevellist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE costlevellist (
    "costlevelID" integer DEFAULT 0 NOT NULL,
    "costlevelDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "costlevelText" text NOT NULL
);


ALTER TABLE costlevellist OWNER TO payne;

--
-- Name: description; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE description (
    "projectID" integer NOT NULL,
    name character varying(100) DEFAULT ''::character varying NOT NULL,
    description text,
    rationale text,
    businesscase text,
    dependencies text,
    "maturityID" integer DEFAULT 0,
    proposer character varying(100) DEFAULT ''::character varying,
    customer character varying(100) DEFAULT ''::character varying,
    "sponsorID" integer DEFAULT 0,
    "fundingsourceID" integer DEFAULT 0,
    "hostID" integer DEFAULT 0,
    "technologyID" integer,
    "typeID" integer DEFAULT 0,
    created date,
    ended date,
    "finalID" integer DEFAULT 0,
    "lastModified" timestamp without time zone DEFAULT now(),
    "lastModifiedBy" character varying(100) DEFAULT ''::character varying
);


ALTER TABLE description OWNER TO payne;

--
-- Name: description_projectID_seq; Type: SEQUENCE; Schema: public; Owner: payne
--

CREATE SEQUENCE "description_projectID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "description_projectID_seq" OWNER TO payne;

--
-- Name: description_projectID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payne
--

ALTER SEQUENCE "description_projectID_seq" OWNED BY description."projectID";


--
-- Name: disposition; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE disposition (
    "projectID" integer DEFAULT 0 NOT NULL,
    "disposedInFY" integer DEFAULT 0 NOT NULL,
    "disposedInQ" integer DEFAULT 0 NOT NULL,
    "dispositionID" integer DEFAULT 0 NOT NULL,
    explanation text,
    "reconsiderInFY" integer,
    "reconsiderInQ" integer DEFAULT 0,
    "startInY" integer DEFAULT 0,
    "startInM" integer DEFAULT 0,
    "finishInY" integer DEFAULT 0,
    "finishInM" integer DEFAULT 0,
    "lastModified" timestamp without time zone DEFAULT now(),
    "lastModifiedBy" character varying(100) DEFAULT ''::character varying
);


ALTER TABLE disposition OWNER TO payne;

--
-- Name: dispositionlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE dispositionlist (
    "dispositionID" integer DEFAULT 0 NOT NULL,
    "dispositionDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "dispositionText" text NOT NULL
);


ALTER TABLE dispositionlist OWNER TO payne;

--
-- Name: driver; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE driver (
    "projectID" integer DEFAULT 0 NOT NULL,
    "driverID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE driver OWNER TO payne;

--
-- Name: driverlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE driverlist (
    "driverID" integer DEFAULT 0 NOT NULL,
    "driverDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "driverText" text NOT NULL
);


ALTER TABLE driverlist OWNER TO payne;

--
-- Name: edit_log; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE edit_log (
    "user" character varying(100) DEFAULT ''::character varying NOT NULL,
    "projectID" integer DEFAULT 0 NOT NULL,
    action character varying(100) DEFAULT ''::character varying NOT NULL,
    "timestamp" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE edit_log OWNER TO payne;

--
-- Name: finallist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE finallist (
    "finalID" integer DEFAULT 0 NOT NULL,
    "finalDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "finalText" text NOT NULL
);


ALTER TABLE finallist OWNER TO payne;

--
-- Name: fiscalyears; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE fiscalyears (
    "fiscalyearID" integer DEFAULT 0 NOT NULL,
    "fiscalyearDesc" character varying(6) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE fiscalyears OWNER TO payne;

--
-- Name: flavorlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE flavorlist (
    "flavorID" integer DEFAULT 0 NOT NULL,
    "flavorDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "flavorText" text NOT NULL
);


ALTER TABLE flavorlist OWNER TO payne;

--
-- Name: fundingsourcelist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE fundingsourcelist (
    "fundingsourceID" integer DEFAULT 0 NOT NULL,
    "fundingsourceDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "fundingsourceText" text NOT NULL
);


ALTER TABLE fundingsourcelist OWNER TO payne;

--
-- Name: history; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE history (
    "historyID" integer NOT NULL,
    "projectID" integer DEFAULT 0 NOT NULL,
    "attributeName" character varying(100) DEFAULT ''::character varying NOT NULL,
    "oldValue" integer DEFAULT 0 NOT NULL,
    "newValue" integer DEFAULT 0 NOT NULL,
    "lastModified" timestamp without time zone DEFAULT now(),
    "lastModifiedBy" character varying(100) DEFAULT ''::character varying
);


ALTER TABLE history OWNER TO payne;

--
-- Name: history_historyID_seq; Type: SEQUENCE; Schema: public; Owner: payne
--

CREATE SEQUENCE "history_historyID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "history_historyID_seq" OWNER TO payne;

--
-- Name: history_historyID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payne
--

ALTER SEQUENCE "history_historyID_seq" OWNED BY history."historyID";


--
-- Name: hostlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE hostlist (
    "hostID" integer DEFAULT 0 NOT NULL,
    "hostDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "hostText" text NOT NULL
);


ALTER TABLE hostlist OWNER TO payne;

--
-- Name: initiativelist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE initiativelist (
    "initiativeID" integer DEFAULT 0 NOT NULL,
    "initiativeDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "initiativeText" text NOT NULL
);


ALTER TABLE initiativelist OWNER TO payne;

--
-- Name: maturitylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE maturitylist (
    "maturityID" integer DEFAULT 0 NOT NULL,
    "maturityDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "maturityText" text NOT NULL
);


ALTER TABLE maturitylist OWNER TO payne;

--
-- Name: migrate_version; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE migrate_version (
    repository_id character varying(250) NOT NULL,
    repository_path text,
    version integer
);


ALTER TABLE migrate_version OWNER TO payne;

--
-- Name: months; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE months (
    "monthID" integer DEFAULT 0 NOT NULL,
    "monthDesc" character varying(12) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE months OWNER TO payne;

--
-- Name: portfolio; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE portfolio (
    "projectID" integer NOT NULL,
    "flavorID" integer DEFAULT 0,
    "initiativeID" integer DEFAULT 0,
    "scopeID" integer DEFAULT 0,
    "complexityID" integer DEFAULT 0,
    "visibilityID" integer DEFAULT 0,
    "risklevelID" integer DEFAULT 0,
    "costlevelID" integer DEFAULT 0,
    rpu double precision DEFAULT 0::double precision,
    "budgetInFY" integer,
    "budgetInQ" integer DEFAULT 0,
    "lastModified" timestamp without time zone DEFAULT now(),
    "lastModifiedBy" character varying(100) DEFAULT ''::character varying
);


ALTER TABLE portfolio OWNER TO payne;

--
-- Name: progresslist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE progresslist (
    "progressID" integer DEFAULT 0 NOT NULL,
    "progressDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "progressText" text NOT NULL
);


ALTER TABLE progresslist OWNER TO payne;

--
-- Name: proj_visibilitylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE proj_visibilitylist (
    "proj_visibilityID" integer DEFAULT 0 NOT NULL,
    "proj_visibilityDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "proj_visibilityText" text NOT NULL
);


ALTER TABLE proj_visibilitylist OWNER TO payne;

--
-- Name: project; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE project (
    "projectID" integer DEFAULT 0 NOT NULL,
    project_url character varying(255) DEFAULT ''::character varying,
    "progressID" integer DEFAULT 0,
    proj_manager character varying(100) DEFAULT ''::character varying,
    tech_manager character varying(100) DEFAULT ''::character varying,
    "proj_visibilityID" integer DEFAULT 0,
    "startedOn" date,
    "finishedOn" date,
    "lastModified" timestamp without time zone,
    "lastModifiedBy" character varying(100) DEFAULT ''::character varying
);


ALTER TABLE project OWNER TO payne;

--
-- Name: quarters; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE quarters (
    "quarterID" integer DEFAULT 0 NOT NULL,
    "quarterDesc" character varying(12) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE quarters OWNER TO payne;

--
-- Name: risklevellist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE risklevellist (
    "risklevelID" integer DEFAULT 0 NOT NULL,
    "risklevelDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "risklevelText" text NOT NULL
);


ALTER TABLE risklevellist OWNER TO payne;

--
-- Name: scopelist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE scopelist (
    "scopeID" integer DEFAULT 0 NOT NULL,
    "scopeDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "scopeText" text NOT NULL
);


ALTER TABLE scopelist OWNER TO payne;

--
-- Name: sponsorlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE sponsorlist (
    "sponsorID" integer DEFAULT 0 NOT NULL,
    "sponsorDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "sponsorText" text NOT NULL
);


ALTER TABLE sponsorlist OWNER TO payne;

--
-- Name: stakeholder; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE stakeholder (
    "projectID" integer DEFAULT 0 NOT NULL,
    "stakeholderID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE stakeholder OWNER TO payne;

--
-- Name: stakeholderlist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE stakeholderlist (
    "stakeholderID" integer DEFAULT 0 NOT NULL,
    "stakeholderDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "stakeholderText" text NOT NULL
);


ALTER TABLE stakeholderlist OWNER TO payne;

--
-- Name: strategy; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE strategy (
    "projectID" integer DEFAULT 0 NOT NULL,
    "strategyID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE strategy OWNER TO payne;

--
-- Name: strategylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE strategylist (
    "strategyID" integer DEFAULT 0 NOT NULL,
    "strategyDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "strategyText" text NOT NULL
);


ALTER TABLE strategylist OWNER TO payne;

--
-- Name: technologylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE technologylist (
    "technologyID" integer DEFAULT 0 NOT NULL,
    "technologyDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "technologyText" text NOT NULL,
    "technologyRationale" text NOT NULL
);


ALTER TABLE technologylist OWNER TO payne;

--
-- Name: typelist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE typelist (
    "typeID" integer DEFAULT 0 NOT NULL,
    "typeDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "typeText" text NOT NULL
);


ALTER TABLE typelist OWNER TO payne;

--
-- Name: upload; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE upload (
    "uploadID" integer NOT NULL,
    "projectID" integer NOT NULL,
    "uploadName" character varying(64) NOT NULL,
    "uploadType" character varying(32) NOT NULL,
    "uploadDesc" text NOT NULL,
    "uploadData" bytea NOT NULL,
    "lastModifiedBy" character varying(100) NOT NULL,
    "lastModified" timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE upload OWNER TO payne;

--
-- Name: visibilitylist; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE visibilitylist (
    "visibilityID" integer DEFAULT 0 NOT NULL,
    "visibilityDesc" character varying(100) DEFAULT ''::character varying NOT NULL,
    "visibilityText" text NOT NULL
);


ALTER TABLE visibilitylist OWNER TO payne;

--
-- Name: years; Type: TABLE; Schema: public; Owner: payne; Tablespace: 
--

CREATE TABLE years (
    year integer DEFAULT 0 NOT NULL
);


ALTER TABLE years OWNER TO payne;

--
-- Name: commentID; Type: DEFAULT; Schema: public; Owner: payne
--

ALTER TABLE ONLY comment ALTER COLUMN "commentID" SET DEFAULT nextval('"comment_commentID_seq"'::regclass);


--
-- Name: projectID; Type: DEFAULT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description ALTER COLUMN "projectID" SET DEFAULT nextval('"description_projectID_seq"'::regclass);


--
-- Name: historyID; Type: DEFAULT; Schema: public; Owner: payne
--

ALTER TABLE ONLY history ALTER COLUMN "historyID" SET DEFAULT nextval('"history_historyID_seq"'::regclass);


--
-- Name: calendaryears_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY calendaryears
    ADD CONSTRAINT calendaryears_pkey PRIMARY KEY ("calendaryearID");


--
-- Name: child_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY child
    ADD CONSTRAINT child_pkey PRIMARY KEY ("projectID", "childID");


--
-- Name: comment_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY ("commentID");


--
-- Name: complexitylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY complexitylist
    ADD CONSTRAINT complexitylist_pkey PRIMARY KEY ("complexityID");


--
-- Name: costlevellist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY costlevellist
    ADD CONSTRAINT costlevellist_pkey PRIMARY KEY ("costlevelID");


--
-- Name: description_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY description
    ADD CONSTRAINT description_pkey PRIMARY KEY ("projectID");


--
-- Name: disposition_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT disposition_pkey PRIMARY KEY ("projectID", "disposedInFY", "disposedInQ");


--
-- Name: dispositionlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY dispositionlist
    ADD CONSTRAINT dispositionlist_pkey PRIMARY KEY ("dispositionID");


--
-- Name: driverlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY driverlist
    ADD CONSTRAINT driverlist_pkey PRIMARY KEY ("driverID");


--
-- Name: finallist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY finallist
    ADD CONSTRAINT finallist_pkey PRIMARY KEY ("finalID");


--
-- Name: fiscalyears_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY fiscalyears
    ADD CONSTRAINT fiscalyears_pkey PRIMARY KEY ("fiscalyearID");


--
-- Name: flavorlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY flavorlist
    ADD CONSTRAINT flavorlist_pkey PRIMARY KEY ("flavorID");


--
-- Name: fundingsourcelist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY fundingsourcelist
    ADD CONSTRAINT fundingsourcelist_pkey PRIMARY KEY ("fundingsourceID");


--
-- Name: history_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY history
    ADD CONSTRAINT history_pkey PRIMARY KEY ("historyID");


--
-- Name: hostlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY hostlist
    ADD CONSTRAINT hostlist_pkey PRIMARY KEY ("hostID");


--
-- Name: initiativelist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY initiativelist
    ADD CONSTRAINT initiativelist_pkey PRIMARY KEY ("initiativeID");


--
-- Name: maturitylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY maturitylist
    ADD CONSTRAINT maturitylist_pkey PRIMARY KEY ("maturityID");


--
-- Name: migrate_version_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY migrate_version
    ADD CONSTRAINT migrate_version_pkey PRIMARY KEY (repository_id);


--
-- Name: months_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY months
    ADD CONSTRAINT months_pkey PRIMARY KEY ("monthID");


--
-- Name: portfolio_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT portfolio_pkey PRIMARY KEY ("projectID");


--
-- Name: progresslist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY progresslist
    ADD CONSTRAINT progresslist_pkey PRIMARY KEY ("progressID");


--
-- Name: proj_visibilitylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY proj_visibilitylist
    ADD CONSTRAINT proj_visibilitylist_pkey PRIMARY KEY ("proj_visibilityID");


--
-- Name: project_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY ("projectID");


--
-- Name: quarters_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY quarters
    ADD CONSTRAINT quarters_pkey PRIMARY KEY ("quarterID");


--
-- Name: risklevellist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY risklevellist
    ADD CONSTRAINT risklevellist_pkey PRIMARY KEY ("risklevelID");


--
-- Name: scopelist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY scopelist
    ADD CONSTRAINT scopelist_pkey PRIMARY KEY ("scopeID");


--
-- Name: sponsorlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY sponsorlist
    ADD CONSTRAINT sponsorlist_pkey PRIMARY KEY ("sponsorID");


--
-- Name: stakeholderlist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY stakeholderlist
    ADD CONSTRAINT stakeholderlist_pkey PRIMARY KEY ("stakeholderID");


--
-- Name: strategylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY strategylist
    ADD CONSTRAINT strategylist_pkey PRIMARY KEY ("strategyID");


--
-- Name: technologylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY technologylist
    ADD CONSTRAINT technologylist_pkey PRIMARY KEY ("technologyID");


--
-- Name: typelist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY typelist
    ADD CONSTRAINT typelist_pkey PRIMARY KEY ("typeID");


--
-- Name: visibilitylist_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY visibilitylist
    ADD CONSTRAINT visibilitylist_pkey PRIMARY KEY ("visibilityID");


--
-- Name: years_pkey; Type: CONSTRAINT; Schema: public; Owner: payne; Tablespace: 
--

ALTER TABLE ONLY years
    ADD CONSTRAINT years_pkey PRIMARY KEY (year);


--
-- Name: ix_comment_commentAuthor; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_comment_commentAuthor" ON comment USING btree ("commentAuthor");


--
-- Name: ix_comment_commentAuthored; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_comment_commentAuthored" ON comment USING btree ("commentAuthored");


--
-- Name: ix_comment_commentEdited; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_comment_commentEdited" ON comment USING btree ("commentEdited");


--
-- Name: ix_comment_commentEditor; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_comment_commentEditor" ON comment USING btree ("commentEditor");


--
-- Name: ix_comment_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_comment_projectID" ON comment USING btree ("projectID");


--
-- Name: ix_description_finalID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_description_finalID" ON description USING btree ("finalID");


--
-- Name: ix_description_hostID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_description_hostID" ON description USING btree ("hostID");


--
-- Name: ix_description_maturityID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_description_maturityID" ON description USING btree ("maturityID");


--
-- Name: ix_description_name; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX ix_description_name ON description USING btree (name);


--
-- Name: ix_description_sponsorID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_description_sponsorID" ON description USING btree ("sponsorID");


--
-- Name: ix_disposition_disposedInFY; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_disposition_disposedInFY" ON disposition USING btree ("disposedInFY");


--
-- Name: ix_disposition_disposedInQ; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_disposition_disposedInQ" ON disposition USING btree ("disposedInQ");


--
-- Name: ix_disposition_dispositionID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_disposition_dispositionID" ON disposition USING btree ("dispositionID");


--
-- Name: ix_disposition_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_disposition_projectID" ON disposition USING btree ("projectID");


--
-- Name: ix_driver_driverID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_driver_driverID" ON driver USING btree ("driverID");


--
-- Name: ix_driver_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_driver_projectID" ON driver USING btree ("projectID");


--
-- Name: ix_edit_log_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_edit_log_projectID" ON edit_log USING btree ("projectID");


--
-- Name: ix_edit_log_timestamp; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX ix_edit_log_timestamp ON edit_log USING btree ("timestamp");


--
-- Name: ix_edit_log_user; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX ix_edit_log_user ON edit_log USING btree ("user");


--
-- Name: ix_history_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_history_projectID" ON history USING btree ("projectID");


--
-- Name: ix_portfolio_budgetInFY; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_budgetInFY" ON portfolio USING btree ("budgetInFY");


--
-- Name: ix_portfolio_budgetInQ; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_budgetInQ" ON portfolio USING btree ("budgetInQ");


--
-- Name: ix_portfolio_complexityID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_complexityID" ON portfolio USING btree ("complexityID");


--
-- Name: ix_portfolio_costlevelID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_costlevelID" ON portfolio USING btree ("costlevelID");


--
-- Name: ix_portfolio_flavorID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_flavorID" ON portfolio USING btree ("flavorID");


--
-- Name: ix_portfolio_initiativeID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_initiativeID" ON portfolio USING btree ("initiativeID");


--
-- Name: ix_portfolio_risklevelID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_risklevelID" ON portfolio USING btree ("risklevelID");


--
-- Name: ix_portfolio_scopeID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_scopeID" ON portfolio USING btree ("scopeID");


--
-- Name: ix_portfolio_visibilityID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_portfolio_visibilityID" ON portfolio USING btree ("visibilityID");


--
-- Name: ix_project_finishedOn; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_project_finishedOn" ON project USING btree ("finishedOn");


--
-- Name: ix_project_progressID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_project_progressID" ON project USING btree ("progressID");


--
-- Name: ix_project_proj_manager; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX ix_project_proj_manager ON project USING btree (proj_manager);


--
-- Name: ix_project_proj_visibilityID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_project_proj_visibilityID" ON project USING btree ("proj_visibilityID");


--
-- Name: ix_project_startedOn; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_project_startedOn" ON project USING btree ("startedOn");


--
-- Name: ix_project_tech_manager; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX ix_project_tech_manager ON project USING btree (tech_manager);


--
-- Name: ix_stakeholder_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_stakeholder_projectID" ON stakeholder USING btree ("projectID");


--
-- Name: ix_stakeholder_stakeholderID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_stakeholder_stakeholderID" ON stakeholder USING btree ("stakeholderID");


--
-- Name: ix_strategy_projectID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_strategy_projectID" ON strategy USING btree ("projectID");


--
-- Name: ix_strategy_strategyID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_strategy_strategyID" ON strategy USING btree ("strategyID");


--
-- Name: ix_upload_uploadID; Type: INDEX; Schema: public; Owner: payne; Tablespace: 
--

CREATE INDEX "ix_upload_uploadID" ON upload USING btree ("uploadID");


--
-- Name: child_childID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY child
    ADD CONSTRAINT "child_childID_fkey" FOREIGN KEY ("childID") REFERENCES description("projectID");


--
-- Name: child_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY child
    ADD CONSTRAINT "child_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: comment_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT "comment_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: description_finalID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_finalID_fkey" FOREIGN KEY ("finalID") REFERENCES finallist("finalID");


--
-- Name: description_fundingsourceID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_fundingsourceID_fkey" FOREIGN KEY ("fundingsourceID") REFERENCES fundingsourcelist("fundingsourceID");


--
-- Name: description_hostID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_hostID_fkey" FOREIGN KEY ("hostID") REFERENCES hostlist("hostID");


--
-- Name: description_maturityID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_maturityID_fkey" FOREIGN KEY ("maturityID") REFERENCES maturitylist("maturityID");


--
-- Name: description_sponsorID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_sponsorID_fkey" FOREIGN KEY ("sponsorID") REFERENCES sponsorlist("sponsorID");


--
-- Name: description_technologyID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_technologyID_fkey" FOREIGN KEY ("technologyID") REFERENCES technologylist("technologyID");


--
-- Name: description_typeID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY description
    ADD CONSTRAINT "description_typeID_fkey" FOREIGN KEY ("typeID") REFERENCES typelist("typeID");


--
-- Name: disposition_disposedInFY_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_disposedInFY_fkey" FOREIGN KEY ("disposedInFY") REFERENCES fiscalyears("fiscalyearID");


--
-- Name: disposition_disposedInQ_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_disposedInQ_fkey" FOREIGN KEY ("disposedInQ") REFERENCES quarters("quarterID");


--
-- Name: disposition_dispositionID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_dispositionID_fkey" FOREIGN KEY ("dispositionID") REFERENCES dispositionlist("dispositionID");


--
-- Name: disposition_finishInM_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_finishInM_fkey" FOREIGN KEY ("finishInM") REFERENCES months("monthID");


--
-- Name: disposition_finishInY_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_finishInY_fkey" FOREIGN KEY ("finishInY") REFERENCES calendaryears("calendaryearID");


--
-- Name: disposition_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: disposition_reconsiderInFY_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_reconsiderInFY_fkey" FOREIGN KEY ("reconsiderInFY") REFERENCES fiscalyears("fiscalyearID");


--
-- Name: disposition_reconsiderInQ_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_reconsiderInQ_fkey" FOREIGN KEY ("reconsiderInQ") REFERENCES quarters("quarterID");


--
-- Name: disposition_startInM_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_startInM_fkey" FOREIGN KEY ("startInM") REFERENCES months("monthID");


--
-- Name: disposition_startInY_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY disposition
    ADD CONSTRAINT "disposition_startInY_fkey" FOREIGN KEY ("startInY") REFERENCES calendaryears("calendaryearID");


--
-- Name: driver_driverID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY driver
    ADD CONSTRAINT "driver_driverID_fkey" FOREIGN KEY ("driverID") REFERENCES driverlist("driverID");


--
-- Name: driver_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY driver
    ADD CONSTRAINT "driver_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: edit_log_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY edit_log
    ADD CONSTRAINT "edit_log_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: history_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY history
    ADD CONSTRAINT "history_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: portfolio_budgetInFY_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_budgetInFY_fkey" FOREIGN KEY ("budgetInFY") REFERENCES fiscalyears("fiscalyearID");


--
-- Name: portfolio_budgetInQ_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_budgetInQ_fkey" FOREIGN KEY ("budgetInQ") REFERENCES quarters("quarterID");


--
-- Name: portfolio_complexityID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_complexityID_fkey" FOREIGN KEY ("complexityID") REFERENCES complexitylist("complexityID");


--
-- Name: portfolio_costlevelID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_costlevelID_fkey" FOREIGN KEY ("costlevelID") REFERENCES costlevellist("costlevelID");


--
-- Name: portfolio_flavorID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_flavorID_fkey" FOREIGN KEY ("flavorID") REFERENCES flavorlist("flavorID");


--
-- Name: portfolio_initiativeID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_initiativeID_fkey" FOREIGN KEY ("initiativeID") REFERENCES initiativelist("initiativeID");


--
-- Name: portfolio_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: portfolio_risklevelID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_risklevelID_fkey" FOREIGN KEY ("risklevelID") REFERENCES risklevellist("risklevelID");


--
-- Name: portfolio_scopeID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_scopeID_fkey" FOREIGN KEY ("scopeID") REFERENCES scopelist("scopeID");


--
-- Name: portfolio_visibilityID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY portfolio
    ADD CONSTRAINT "portfolio_visibilityID_fkey" FOREIGN KEY ("visibilityID") REFERENCES visibilitylist("visibilityID");


--
-- Name: project_progressID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY project
    ADD CONSTRAINT "project_progressID_fkey" FOREIGN KEY ("progressID") REFERENCES progresslist("progressID");


--
-- Name: project_proj_visibilityID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY project
    ADD CONSTRAINT "project_proj_visibilityID_fkey" FOREIGN KEY ("proj_visibilityID") REFERENCES proj_visibilitylist("proj_visibilityID");


--
-- Name: project_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY project
    ADD CONSTRAINT "project_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: stakeholder_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY stakeholder
    ADD CONSTRAINT "stakeholder_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: stakeholder_stakeholderID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY stakeholder
    ADD CONSTRAINT "stakeholder_stakeholderID_fkey" FOREIGN KEY ("stakeholderID") REFERENCES stakeholderlist("stakeholderID");


--
-- Name: strategy_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY strategy
    ADD CONSTRAINT "strategy_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES portfolio("projectID");


--
-- Name: strategy_strategyID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY strategy
    ADD CONSTRAINT "strategy_strategyID_fkey" FOREIGN KEY ("strategyID") REFERENCES strategylist("strategyID");


--
-- Name: upload_projectID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: payne
--

ALTER TABLE ONLY upload
    ADD CONSTRAINT "upload_projectID_fkey" FOREIGN KEY ("projectID") REFERENCES description("projectID");


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

