--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'SQL_ASCII';
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

--
-- Name: dblink_pkey_results; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE dblink_pkey_results AS (
	"position" integer,
	colname text
);


ALTER TYPE public.dblink_pkey_results OWNER TO postgres;

--
-- Name: dblink(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink(text) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_record';


ALTER FUNCTION public.dblink(text) OWNER TO postgres;

--
-- Name: dblink(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink(text, text) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_record';


ALTER FUNCTION public.dblink(text, text) OWNER TO postgres;

--
-- Name: dblink(text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink(text, boolean) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_record';


ALTER FUNCTION public.dblink(text, boolean) OWNER TO postgres;

--
-- Name: dblink(text, text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink(text, text, boolean) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_record';


ALTER FUNCTION public.dblink(text, text, boolean) OWNER TO postgres;

--
-- Name: dblink_build_sql_delete(text, int2vector, integer, text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_build_sql_delete(text, int2vector, integer, text[]) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_build_sql_delete';


ALTER FUNCTION public.dblink_build_sql_delete(text, int2vector, integer, text[]) OWNER TO postgres;

--
-- Name: dblink_build_sql_insert(text, int2vector, integer, text[], text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_build_sql_insert(text, int2vector, integer, text[], text[]) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_build_sql_insert';


ALTER FUNCTION public.dblink_build_sql_insert(text, int2vector, integer, text[], text[]) OWNER TO postgres;

--
-- Name: dblink_build_sql_update(text, int2vector, integer, text[], text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_build_sql_update(text, int2vector, integer, text[], text[]) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_build_sql_update';


ALTER FUNCTION public.dblink_build_sql_update(text, int2vector, integer, text[], text[]) OWNER TO postgres;

--
-- Name: dblink_cancel_query(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_cancel_query(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_cancel_query';


ALTER FUNCTION public.dblink_cancel_query(text) OWNER TO postgres;

--
-- Name: dblink_close(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_close(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_close';


ALTER FUNCTION public.dblink_close(text) OWNER TO postgres;

--
-- Name: dblink_close(text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_close(text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_close';


ALTER FUNCTION public.dblink_close(text, boolean) OWNER TO postgres;

--
-- Name: dblink_close(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_close(text, text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_close';


ALTER FUNCTION public.dblink_close(text, text) OWNER TO postgres;

--
-- Name: dblink_close(text, text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_close(text, text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_close';


ALTER FUNCTION public.dblink_close(text, text, boolean) OWNER TO postgres;

--
-- Name: dblink_connect(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_connect(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_connect';


ALTER FUNCTION public.dblink_connect(text) OWNER TO postgres;

--
-- Name: dblink_connect(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_connect(text, text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_connect';


ALTER FUNCTION public.dblink_connect(text, text) OWNER TO postgres;

--
-- Name: dblink_connect_u(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_connect_u(text) RETURNS text
    LANGUAGE c STRICT SECURITY DEFINER
    AS '$libdir/dblink', 'dblink_connect';


ALTER FUNCTION public.dblink_connect_u(text) OWNER TO postgres;

--
-- Name: dblink_connect_u(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_connect_u(text, text) RETURNS text
    LANGUAGE c STRICT SECURITY DEFINER
    AS '$libdir/dblink', 'dblink_connect';


ALTER FUNCTION public.dblink_connect_u(text, text) OWNER TO postgres;

--
-- Name: dblink_current_query(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_current_query() RETURNS text
    LANGUAGE c
    AS '$libdir/dblink', 'dblink_current_query';


ALTER FUNCTION public.dblink_current_query() OWNER TO postgres;

--
-- Name: dblink_disconnect(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_disconnect() RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_disconnect';


ALTER FUNCTION public.dblink_disconnect() OWNER TO postgres;

--
-- Name: dblink_disconnect(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_disconnect(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_disconnect';


ALTER FUNCTION public.dblink_disconnect(text) OWNER TO postgres;

--
-- Name: dblink_error_message(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_error_message(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_error_message';


ALTER FUNCTION public.dblink_error_message(text) OWNER TO postgres;

--
-- Name: dblink_exec(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_exec(text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_exec';


ALTER FUNCTION public.dblink_exec(text) OWNER TO postgres;

--
-- Name: dblink_exec(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_exec(text, text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_exec';


ALTER FUNCTION public.dblink_exec(text, text) OWNER TO postgres;

--
-- Name: dblink_exec(text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_exec(text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_exec';


ALTER FUNCTION public.dblink_exec(text, boolean) OWNER TO postgres;

--
-- Name: dblink_exec(text, text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_exec(text, text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_exec';


ALTER FUNCTION public.dblink_exec(text, text, boolean) OWNER TO postgres;

--
-- Name: dblink_fetch(text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_fetch(text, integer) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_fetch';


ALTER FUNCTION public.dblink_fetch(text, integer) OWNER TO postgres;

--
-- Name: dblink_fetch(text, integer, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_fetch(text, integer, boolean) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_fetch';


ALTER FUNCTION public.dblink_fetch(text, integer, boolean) OWNER TO postgres;

--
-- Name: dblink_fetch(text, text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_fetch(text, text, integer) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_fetch';


ALTER FUNCTION public.dblink_fetch(text, text, integer) OWNER TO postgres;

--
-- Name: dblink_fetch(text, text, integer, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_fetch(text, text, integer, boolean) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_fetch';


ALTER FUNCTION public.dblink_fetch(text, text, integer, boolean) OWNER TO postgres;

--
-- Name: dblink_get_connections(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_get_connections() RETURNS text[]
    LANGUAGE c
    AS '$libdir/dblink', 'dblink_get_connections';


ALTER FUNCTION public.dblink_get_connections() OWNER TO postgres;

--
-- Name: dblink_get_pkey(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_get_pkey(text) RETURNS SETOF dblink_pkey_results
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_get_pkey';


ALTER FUNCTION public.dblink_get_pkey(text) OWNER TO postgres;

--
-- Name: dblink_get_result(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_get_result(text) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_get_result';


ALTER FUNCTION public.dblink_get_result(text) OWNER TO postgres;

--
-- Name: dblink_get_result(text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_get_result(text, boolean) RETURNS SETOF record
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_get_result';


ALTER FUNCTION public.dblink_get_result(text, boolean) OWNER TO postgres;

--
-- Name: dblink_is_busy(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_is_busy(text) RETURNS integer
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_is_busy';


ALTER FUNCTION public.dblink_is_busy(text) OWNER TO postgres;

--
-- Name: dblink_open(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_open(text, text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_open';


ALTER FUNCTION public.dblink_open(text, text) OWNER TO postgres;

--
-- Name: dblink_open(text, text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_open(text, text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_open';


ALTER FUNCTION public.dblink_open(text, text, boolean) OWNER TO postgres;

--
-- Name: dblink_open(text, text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_open(text, text, text) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_open';


ALTER FUNCTION public.dblink_open(text, text, text) OWNER TO postgres;

--
-- Name: dblink_open(text, text, text, boolean); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_open(text, text, text, boolean) RETURNS text
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_open';


ALTER FUNCTION public.dblink_open(text, text, text, boolean) OWNER TO postgres;

--
-- Name: dblink_send_query(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION dblink_send_query(text, text) RETURNS integer
    LANGUAGE c STRICT
    AS '$libdir/dblink', 'dblink_send_query';


ALTER FUNCTION public.dblink_send_query(text, text) OWNER TO postgres;

--
-- Name: msaccessbool(boolean, integer); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION msaccessbool(boolean, integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$
BEGIN IF $1 ISNULL THEN RETURN NULL; END IF; IF $1 IS TRUE THEN IF $2 <> 0 THEN
RETURN TRUE; END IF; ELSE IF $2 = 0 THEN RETURN TRUE; END IF; END IF; RETURN FALSE;
END; $_$;


ALTER FUNCTION public.msaccessbool(boolean, integer) OWNER TO root;

--
-- Name: plpgsql_call_handler(); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION plpgsql_call_handler() RETURNS language_handler
    LANGUAGE c
    AS '$libdir/plpgsql', 'plpgsql_call_handler';


ALTER FUNCTION public.plpgsql_call_handler() OWNER TO root;

--
-- Name: reformat_interval(text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION reformat_interval(text) RETURNS text
    LANGUAGE sql
    AS $_$

select  regexp_replace(regexp_replace(regexp_replace(regexp_replace($1, '([0-9]+ (mon|mons|year|years|day|days)){1} .*','\\1'),
	'([0-9]+) year(s)*','\\1a'),
	'([0-9]+) mon(s)*','\\1m'),
	'([0-9]+) day(s)*','\\1d')

$_$;


ALTER FUNCTION public.reformat_interval(text) OWNER TO root;

--
-- Name: table_log_init(integer, text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION table_log_init(integer, text) RETURNS void
    LANGUAGE plpgsql
    AS $_$
DECLARE
    level        ALIAS FOR $1;
    orig_name    ALIAS FOR $2;
BEGIN
    PERFORM table_log_init(level, orig_name, current_schema());
    RETURN;
END;
$_$;


ALTER FUNCTION public.table_log_init(integer, text) OWNER TO root;

--
-- Name: table_log_init(integer, text, text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION table_log_init(integer, text, text) RETURNS void
    LANGUAGE plpgsql
    AS $_$
DECLARE
    level        ALIAS FOR $1;
    orig_name    ALIAS FOR $2;
    log_schema   ALIAS FOR $3;
BEGIN
    PERFORM table_log_init(level, current_schema(), orig_name, log_schema);
    RETURN;
END;
$_$;


ALTER FUNCTION public.table_log_init(integer, text, text) OWNER TO root;

--
-- Name: table_log_init(integer, text, text, text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION table_log_init(integer, text, text, text) RETURNS void
    LANGUAGE plpgsql
    AS $_$
DECLARE
    level        ALIAS FOR $1;
    orig_schema  ALIAS FOR $2;
    orig_name    ALIAS FOR $3;
    log_schema   ALIAS FOR $4;
BEGIN
    PERFORM table_log_init(level, orig_schema, orig_name, log_schema,
        CASE WHEN orig_schema=log_schema 
            THEN orig_name||'_log' ELSE orig_name END);
    RETURN;
END;
$_$;


ALTER FUNCTION public.table_log_init(integer, text, text, text) OWNER TO root;

--
-- Name: table_log_init(integer, text, text, text, text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION table_log_init(integer, text, text, text, text) RETURNS void
    LANGUAGE plpgsql
    AS $_$
DECLARE
    level        ALIAS FOR $1;
    orig_schema  ALIAS FOR $2;
    orig_name    ALIAS FOR $3;
    log_schema   ALIAS FOR $4;
    log_name     ALIAS FOR $5;
    do_log_user  int = 0;
    level_create text = '';
    orig_qq      text;
    log_qq       text;
BEGIN
    -- Quoted qualified names
    orig_qq := quote_ident(orig_schema)||'.'||quote_ident(orig_name);
    log_qq := quote_ident(log_schema)||'.'||quote_ident(log_name);

    IF level <> 3 THEN
        level_create := level_create
            ||', trigger_id BIGSERIAL NOT NULL PRIMARY KEY';
        IF level <> 4 THEN
            level_create := level_create
                ||', trigger_user VARCHAR(32) NOT NULL';
            do_log_user := 1;
            IF level <> 5 THEN
                RAISE EXCEPTION 
                    'table_log_init: First arg has to be 3, 4 or 5.';
            END IF;
        END IF;
    END IF;
    
    EXECUTE 'CREATE TABLE '||log_qq
          ||'(LIKE '||orig_qq
          ||', trigger_mode VARCHAR(10) NOT NULL'
          ||', trigger_tuple VARCHAR(5) NOT NULL'
          ||', trigger_changed TIMESTAMPTZ NOT NULL'
          ||level_create
          ||')';
            
    EXECUTE 'CREATE TRIGGER "table_log_trigger" AFTER UPDATE OR INSERT OR DELETE ON '
          ||orig_qq||' FOR EACH ROW EXECUTE PROCEDURE table_log('
          ||quote_literal(log_name)||','
          ||do_log_user||','
          ||quote_literal(log_schema)||')';

    RETURN;
END;
$_$;


ALTER FUNCTION public.table_log_init(integer, text, text, text, text) OWNER TO root;

--
-- Name: tablelog_username(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION tablelog_username() RETURNS text
    LANGUAGE plpgsql
    AS $$
       BEGIN
               RETURN current_setting('myvar.benutzer');
       EXCEPTION when UNDEFINED_OBJECT then
		return '';
       END;
$$;


ALTER FUNCTION public.tablelog_username() OWNER TO postgres;

--
-- Name: visus_to_number(text); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION visus_to_number(text) RETURNS numeric
    LANGUAGE sql
    AS $_$

select case when o='/' then (z::numeric)/(translate(n::text, ',' , '.')::numeric)
                 when o='.' or o=',' then (z||'.'||n)::numeric
                 when o is null then 
			case when $1~*'hbw' then 0.0050
				when $1~*'lsw|lp|lsp' then 0.002
				when $1~*'fz' then 0.013
				else null
			end

else null 

end as visus  from
(select substring($1,E'^([0-9]+)[^0-9][0-9\,]+') as z, substring($1,E'^[0-9]+([^0-9])[0-9\,]+') as o, substring($1,E'^[0-9]+[^0-9]([0-9\,]+)')  as n) a  



$_$;


ALTER FUNCTION public.visus_to_number(text) OWNER TO root;

--
-- Name: textcat_all(text); Type: AGGREGATE; Schema: public; Owner: root
--

CREATE AGGREGATE textcat_all(text) (
    SFUNC = textcat,
    STYPE = text,
    INITCOND = ''
);


ALTER AGGREGATE public.textcat_all(text) OWNER TO root;

--
-- Name: =; Type: OPERATOR; Schema: public; Owner: root
--

CREATE OPERATOR = (
    PROCEDURE = msaccessbool,
    LEFTARG = boolean,
    RIGHTARG = integer,
    COMMUTATOR = =,
    NEGATOR = <>,
    RESTRICT = eqsel,
    JOIN = eqjoinsel
);


ALTER OPERATOR public.= (boolean, integer) OWNER TO root;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: HLAPatient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "HLAPatient" (
    "ID" integer DEFAULT nextval(('"HLAPatient_ID_seq"'::text)::regclass) NOT NULL,
    "IDPatient" integer,
    "IDHLA" integer NOT NULL,
    "Datum" timestamp without time zone
);


ALTER TABLE public."HLAPatient" OWNER TO postgres;

--
-- Name: StammdatenHLA; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenHLA" (
    "ID" integer DEFAULT nextval(('"StammdatenHLA_ID_seq"'::text)::regclass) NOT NULL,
    "Klasse" integer,
    "Split" character varying(50),
    "Broad" character varying(50),
    "PCR" character varying(50),
    "IgnoreInHLAMatching" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."StammdatenHLA" OWNER TO postgres;

--
-- Name: StammdatenPatient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenPatient" (
    "ID" integer DEFAULT nextval(('"StammdatenPatient_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    "Vorname" character varying(50),
    "Geburtsdatum" timestamp without time zone,
    "Anschrift" character varying(50),
    "PLZ" character varying(50),
    "Ort" character varying(50),
    weiblich boolean DEFAULT false NOT NULL,
    "Telefon1" character varying(50),
    "Telefon2" character varying(50),
    "VerstorbenAm" timestamp without time zone,
    "PIZ" character varying(50),
    "ExternalID" character varying(50),
    "IDZentrum" integer DEFAULT 1,
    "WriteProtection" boolean DEFAULT false NOT NULL,
    "MeldedatumExtern" timestamp without time zone,
    "Land" text,
    "Telefon3" text,
    "Telefon4" text,
    CONSTRAINT patnamenotnull CHECK ((("Name" IS NOT NULL) AND (("Name")::text <> ''::text)))
);


ALTER TABLE public."StammdatenPatient" OWNER TO postgres;

--
-- Name: HLAAllelePatient; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "HLAAllelePatient" AS
    SELECT "StammdatenHLA"."Broad", "StammdatenHLA"."Split", "StammdatenHLA"."PCR", "StammdatenPatient"."ID", "StammdatenHLA"."Klasse", "StammdatenHLA"."IgnoreInHLAMatching" FROM ("StammdatenPatient" JOIN ("StammdatenHLA" JOIN "HLAPatient" ON (("StammdatenHLA"."ID" = "HLAPatient"."IDHLA"))) ON (("StammdatenPatient"."ID" = "HLAPatient"."IDPatient"))) WHERE ("StammdatenHLA"."IgnoreInHLAMatching" = false);


ALTER TABLE public."HLAAllelePatient" OWNER TO postgres;

--
-- Name: HLASpender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "HLASpender" (
    "ID" integer DEFAULT nextval(('"HLASpender_ID_seq"'::text)::regclass) NOT NULL,
    "IDSpender" integer,
    "IDHLA" integer NOT NULL,
    "Datum" timestamp without time zone
);


ALTER TABLE public."HLASpender" OWNER TO postgres;

--
-- Name: Organkultur; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Organkultur" (
    "ID" integer DEFAULT nextval(('"Organkultur_ID_seq"'::text)::regclass) NOT NULL,
    "IDSpender" integer,
    "IDWarteliste" integer,
    "IDVerwerfungsgrund" integer,
    "Auge" character varying(50),
    "IDVoroperationen" integer,
    "EndOfCulture" boolean DEFAULT false NOT NULL,
    "Bemerkungen" text,
    "IDMitarbeiter" integer DEFAULT 2,
    "Verschickbar" boolean DEFAULT false,
    "IDMitarbeiter2" integer,
    "TP_Nummer" character varying(30),
    "ET_Nr_cornea" character varying(50),
    "BIS_seit" timestamp without time zone,
    "BIS_gemeldet" boolean DEFAULT false,
    precuttype integer,
    olc character(1),
    id_verwendung_nach_verwerfung integer
);


ALTER TABLE public."Organkultur" OWNER TO postgres;

--
-- Name: Warteliste; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Warteliste" (
    "ID" integer DEFAULT nextval(('"Warteliste_ID_seq"'::text)::regclass) NOT NULL,
    "PatientID" integer,
    "StartWarteliste" timestamp without time zone,
    "EndeWarteliste" timestamp without time zone,
    "WartenAktiviert" boolean DEFAULT true NOT NULL,
    "Prioritaet" integer,
    "KpAbDatum" timestamp without time zone,
    "Narkosefrom" integer,
    "KeratoplastikAuge" integer,
    "KeratoplastikGesamt" integer,
    "Auge" character varying(50),
    "Bemerkungen" text,
    "MaxHLAMismatches" integer DEFAULT 2,
    "GrundExitWL" integer,
    "BIS" boolean DEFAULT false NOT NULL,
    "BISNR" character varying(50),
    "Privatpatient" boolean DEFAULT false NOT NULL,
    "TransplantationenGesamt" integer,
    "TransfusionenGesamt" integer,
    "SchwangerschaftenGesamt" integer,
    "IDZentrum" integer DEFAULT 1,
    "IDOperateur" integer,
    "TrepanTp" integer,
    "TrepanPat" integer,
    "IDOrgankultur" integer,
    "IDOPArt" integer,
    "IDTrepanart" integer,
    "IDOPIndikationsdiagnose" integer,
    "IDMeldenderArzt" integer,
    "ExternGemeldet" boolean DEFAULT false NOT NULL,
    "IDVermittelndesZentrum" integer,
    "MMBestaetigt" boolean,
    "RADiagnosenText" character varying(5000),
    "LADiagnosenText" character varying(5000),
    "RABefundText" character varying(5000),
    "LABefundText" character varying(5000),
    "EpikriseText" character varying(5000),
    "SchlussText" character varying(5000),
    "BADiagnosenText" character varying(5000),
    "AllgemeindiagnosenText" character varying(5000),
    "RAVisus" character varying(5000),
    "LAVisus" character varying(5000),
    "RADruck" character varying(5000),
    "LADruck" character varying(5000),
    "RAFundusText" character varying(5000),
    "LAFundusText" character varying(5000),
    "IDOberarzt" integer,
    "HHWeggefroren" boolean,
    pachy1 double precision,
    pachy2 double precision,
    pachy3 double precision,
    pachy4 double precision,
    "FSLposteriorDiameter" double precision,
    "FSLanteriorDiameter" double precision,
    "FSLalignment_incisions" integer,
    "BISTP" character varying(50),
    fancy_nummer integer,
    datum_anaesthesie date,
    status_anaesthesie integer,
    status_hla_blut integer
);


ALTER TABLE public."Warteliste" OWNER TO postgres;

--
-- Name: eplets_dr; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE eplets_dr (
    epitope character varying(50),
    alleles character varying(50)
);


ALTER TABLE public.eplets_dr OWNER TO postgres;

--
-- Name: splitmol; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE splitmol (
    id integer NOT NULL,
    split character varying(10),
    mol character varying(10)
);


ALTER TABLE public.splitmol OWNER TO postgres;

--
-- Name: eplets_dr_donor; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW eplets_dr_donor AS
    SELECT DISTINCT "HLASpender"."IDSpender" AS iddonor, eplets_dr.epitope FROM ((("HLASpender" JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) JOIN splitmol ON ((("StammdatenHLA"."Split")::text = (splitmol.split)::text))) JOIN eplets_dr ON (((splitmol.mol)::text = (eplets_dr.alleles)::text))) ORDER BY "HLASpender"."IDSpender", eplets_dr.epitope;


ALTER TABLE public.eplets_dr_donor OWNER TO root;

--
-- Name: eplets_dr_patient; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW eplets_dr_patient AS
    SELECT DISTINCT "HLAAllelePatient"."ID" AS idpatient, eplets_dr.epitope FROM (("HLAAllelePatient" JOIN splitmol ON ((("HLAAllelePatient"."Split")::text = (splitmol.split)::text))) JOIN eplets_dr ON (((splitmol.mol)::text = (eplets_dr.alleles)::text))) ORDER BY "HLAAllelePatient"."ID", eplets_dr.epitope;


ALTER TABLE public.eplets_dr_patient OWNER TO root;

--
-- Name: AllEpletDRMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllEpletDRMismatches" AS
    SELECT DISTINCT _donor_allele_count.donor_allele_count, COALESCE(_match_count.matches_count, (0)::bigint) AS match_count, (_donor_allele_count.donor_allele_count - COALESCE(_match_count.matches_count, (0)::bigint)) AS "MM", "Organkultur"."IDSpender" AS "SpenderID", "Warteliste"."PatientID" AS "IDPatient" FROM ((((SELECT count(eplets_dr_donor.epitope) AS donor_allele_count, "Organkultur"."ID" AS idok FROM ("Organkultur" JOIN eplets_dr_donor ON (("Organkultur"."IDSpender" = eplets_dr_donor.iddonor))) GROUP BY "Organkultur"."ID") _donor_allele_count LEFT JOIN (SELECT count(eplets_dr_patient.epitope) AS matches_count, "Organkultur"."IDWarteliste" AS idwl, "Organkultur"."ID" AS idok FROM ((("Warteliste" JOIN eplets_dr_patient ON (("Warteliste"."PatientID" = eplets_dr_patient.idpatient))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) JOIN eplets_dr_donor ON (("Organkultur"."IDSpender" = eplets_dr_donor.iddonor))) WHERE ((eplets_dr_patient.epitope)::text = (eplets_dr_donor.epitope)::text) GROUP BY "Organkultur"."IDWarteliste", "Organkultur"."ID") _match_count ON ((_match_count.idok = _donor_allele_count.idok))) JOIN "Organkultur" ON (("Organkultur"."ID" = _donor_allele_count.idok))) JOIN "Warteliste" ON (("Warteliste"."ID" = "Organkultur"."IDWarteliste"))) WHERE ("Warteliste"."PatientID" IN (SELECT "HLAPatient"."IDPatient" FROM "HLAPatient")) ORDER BY _donor_allele_count.donor_allele_count, COALESCE(_match_count.matches_count, (0)::bigint), (_donor_allele_count.donor_allele_count - COALESCE(_match_count.matches_count, (0)::bigint)), "Organkultur"."IDSpender", "Warteliste"."PatientID";


ALTER TABLE public."AllEpletDRMismatches" OWNER TO root;

--
-- Name: eplets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE eplets (
    alleles character varying(500),
    epitope character varying(500)
);


ALTER TABLE public.eplets OWNER TO postgres;

--
-- Name: eplets_donor; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW eplets_donor AS
    SELECT DISTINCT "HLASpender"."IDSpender" AS iddonor, eplets.epitope FROM ((("HLASpender" JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) JOIN splitmol ON ((("StammdatenHLA"."Split")::text = (splitmol.split)::text))) JOIN eplets ON (((splitmol.mol)::text = (eplets.alleles)::text))) ORDER BY "HLASpender"."IDSpender", eplets.epitope;


ALTER TABLE public.eplets_donor OWNER TO root;

--
-- Name: eplets_patient; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW eplets_patient AS
    SELECT DISTINCT "HLAAllelePatient"."ID" AS idpatient, eplets.epitope FROM (("HLAAllelePatient" JOIN splitmol ON ((("HLAAllelePatient"."Split")::text = (splitmol.split)::text))) JOIN eplets ON (((splitmol.mol)::text = (eplets.alleles)::text))) ORDER BY "HLAAllelePatient"."ID", eplets.epitope;


ALTER TABLE public.eplets_patient OWNER TO root;

--
-- Name: AllEpletMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllEpletMismatches" AS
    SELECT DISTINCT _donor_allele_count.donor_allele_count, COALESCE(_match_count.matches_count, (0)::bigint) AS match_count, (_donor_allele_count.donor_allele_count - COALESCE(_match_count.matches_count, (0)::bigint)) AS "MM", "Organkultur"."IDSpender" AS "SpenderID", "Warteliste"."PatientID" AS "IDPatient" FROM ((((SELECT count(eplets_donor.epitope) AS donor_allele_count, "Organkultur"."ID" AS idok FROM ("Organkultur" JOIN eplets_donor ON (("Organkultur"."IDSpender" = eplets_donor.iddonor))) GROUP BY "Organkultur"."ID") _donor_allele_count LEFT JOIN (SELECT count(eplets_patient.epitope) AS matches_count, "Organkultur"."IDWarteliste" AS idwl, "Organkultur"."ID" AS idok FROM ((("Warteliste" JOIN eplets_patient ON (("Warteliste"."PatientID" = eplets_patient.idpatient))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) JOIN eplets_donor ON (("Organkultur"."IDSpender" = eplets_donor.iddonor))) WHERE ((eplets_patient.epitope)::text = (eplets_donor.epitope)::text) GROUP BY "Organkultur"."IDWarteliste", "Organkultur"."ID") _match_count ON ((_match_count.idok = _donor_allele_count.idok))) JOIN "Organkultur" ON (("Organkultur"."ID" = _donor_allele_count.idok))) JOIN "Warteliste" ON (("Warteliste"."ID" = "Organkultur"."IDWarteliste"))) WHERE ("Warteliste"."PatientID" IN (SELECT "HLAPatient"."IDPatient" FROM "HLAPatient")) ORDER BY _donor_allele_count.donor_allele_count, COALESCE(_match_count.matches_count, (0)::bigint), (_donor_allele_count.donor_allele_count - COALESCE(_match_count.matches_count, (0)::bigint)), "Organkultur"."IDSpender", "Warteliste"."PatientID";


ALTER TABLE public."AllEpletMismatches" OWNER TO root;

--
-- Name: AllHLAABMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllHLAABMismatches" AS
    SELECT "HLAAllelesCountSpenderBroad"."IDPatient", "HLAAllelesCountSpenderBroad"."SpenderID", ("HLAAllelesCountSpenderBroad"."AlleleCount" - COALESCE("MatchCountBroad"."MatchCount", (0)::bigint)) AS "MM" FROM (((SELECT count("HLAAllelesSpenderBroad"."Broad") AS "AlleleCount", "HLAAllelesSpenderBroad"."SpenderID", "HLAAllelesSpenderBroad"."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID", "Warteliste"."PatientID" AS "IDPatient" FROM ((("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLASpender"."IDHLA") AND ("StammdatenHLA"."Klasse" = 1)))) JOIN "Warteliste" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender", "Warteliste"."PatientID") "HLAAllelesSpenderBroad" GROUP BY "HLAAllelesSpenderBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesSpenderBroad"."IDPatient") "HLAAllelesCountSpenderBroad" LEFT JOIN (SELECT "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID", count("HLAAllelesPatientBroad"."IDPatient") AS "MatchCount" FROM (("Organkultur" JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Warteliste"."PatientID" AS "IDPatient", "Warteliste"."ID" AS "IDWL" FROM ((("HLAPatient" JOIN "Warteliste" ON (("HLAPatient"."IDPatient" = "Warteliste"."PatientID"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLAPatient"."IDHLA") AND ("StammdatenHLA"."Klasse" = 1)))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Warteliste"."PatientID", "Warteliste"."ID") "HLAAllelesPatientBroad" ON (("Organkultur"."IDWarteliste" = "HLAAllelesPatientBroad"."IDWL"))) JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID" FROM (("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLASpender"."IDHLA") AND ("StammdatenHLA"."Klasse" = 1)))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender") "HLAAllelesSpenderBroad" ON (("Organkultur"."IDSpender" = "HLAAllelesSpenderBroad"."SpenderID"))) WHERE (("HLAAllelesPatientBroad"."Broad")::text = ("HLAAllelesSpenderBroad"."Broad")::text) GROUP BY "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesPatientBroad"."IDPatient") "MatchCountBroad" ON ((("HLAAllelesCountSpenderBroad"."SpenderID" = "MatchCountBroad"."SpenderID") AND ("MatchCountBroad"."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient")))) JOIN (SELECT count(a1."Broad") AS "AlleleCountPatient", a1."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "HLAPatient"."IDPatient" FROM ("HLAPatient" JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLAPatient"."IDHLA") AND ("StammdatenHLA"."Klasse" = 1)))) ORDER BY "StammdatenHLA"."Broad", "HLAPatient"."IDPatient") a1 GROUP BY a1."IDPatient") a2 ON ((a2."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient"))) WHERE ((a2."AlleleCountPatient" > 0) AND ("HLAAllelesCountSpenderBroad"."AlleleCount" > 0)) ORDER BY "HLAAllelesCountSpenderBroad"."IDPatient";


ALTER TABLE public."AllHLAABMismatches" OWNER TO root;

--
-- Name: AllHLADRMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllHLADRMismatches" AS
    SELECT "HLAAllelesCountSpenderBroad"."IDPatient", "HLAAllelesCountSpenderBroad"."SpenderID", ("HLAAllelesCountSpenderBroad"."AlleleCount" - COALESCE("MatchCountBroad"."MatchCount", (0)::bigint)) AS "MM" FROM (((SELECT count("HLAAllelesSpenderBroad"."Broad") AS "AlleleCount", "HLAAllelesSpenderBroad"."SpenderID", "HLAAllelesSpenderBroad"."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID", "Warteliste"."PatientID" AS "IDPatient" FROM ((("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLASpender"."IDHLA") AND ("StammdatenHLA"."Klasse" = 2)))) JOIN "Warteliste" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender", "Warteliste"."PatientID") "HLAAllelesSpenderBroad" GROUP BY "HLAAllelesSpenderBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesSpenderBroad"."IDPatient") "HLAAllelesCountSpenderBroad" LEFT JOIN (SELECT "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID", count("HLAAllelesPatientBroad"."IDPatient") AS "MatchCount" FROM (("Organkultur" JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Warteliste"."PatientID" AS "IDPatient", "Warteliste"."ID" AS "IDWL" FROM ((("HLAPatient" JOIN "Warteliste" ON (("HLAPatient"."IDPatient" = "Warteliste"."PatientID"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLAPatient"."IDHLA") AND ("StammdatenHLA"."Klasse" = 2)))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Warteliste"."PatientID", "Warteliste"."ID") "HLAAllelesPatientBroad" ON (("Organkultur"."IDWarteliste" = "HLAAllelesPatientBroad"."IDWL"))) JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID" FROM (("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLASpender"."IDHLA") AND ("StammdatenHLA"."Klasse" = 2)))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender") "HLAAllelesSpenderBroad" ON (("Organkultur"."IDSpender" = "HLAAllelesSpenderBroad"."SpenderID"))) WHERE (("HLAAllelesPatientBroad"."Broad")::text = ("HLAAllelesSpenderBroad"."Broad")::text) GROUP BY "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesPatientBroad"."IDPatient") "MatchCountBroad" ON ((("HLAAllelesCountSpenderBroad"."SpenderID" = "MatchCountBroad"."SpenderID") AND ("MatchCountBroad"."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient")))) JOIN (SELECT count(a1."Broad") AS "AlleleCountPatient", a1."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "HLAPatient"."IDPatient" FROM ("HLAPatient" JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLAPatient"."IDHLA") AND ("StammdatenHLA"."Klasse" = 2)))) ORDER BY "StammdatenHLA"."Broad", "HLAPatient"."IDPatient") a1 GROUP BY a1."IDPatient") a2 ON ((a2."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient"))) WHERE ((a2."AlleleCountPatient" > 0) AND ("HLAAllelesCountSpenderBroad"."AlleleCount" > 0)) ORDER BY "HLAAllelesCountSpenderBroad"."IDPatient";


ALTER TABLE public."AllHLADRMismatches" OWNER TO root;

--
-- Name: AllHLAMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllHLAMismatches" AS
    SELECT "HLAAllelesCountSpenderBroad"."IDPatient", "HLAAllelesCountSpenderBroad"."SpenderID", ("HLAAllelesCountSpenderBroad"."AlleleCount" - COALESCE("MatchCountBroad"."MatchCount", (0)::bigint)) AS "MM" FROM (((SELECT count("HLAAllelesSpenderBroad"."Broad") AS "AlleleCount", "HLAAllelesSpenderBroad"."SpenderID", "HLAAllelesSpenderBroad"."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID", "Warteliste"."PatientID" AS "IDPatient" FROM ((("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) JOIN "Warteliste" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender", "Warteliste"."PatientID") "HLAAllelesSpenderBroad" GROUP BY "HLAAllelesSpenderBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesSpenderBroad"."IDPatient") "HLAAllelesCountSpenderBroad" LEFT JOIN (SELECT "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID", count("HLAAllelesPatientBroad"."IDPatient") AS "MatchCount" FROM (("Organkultur" JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Warteliste"."PatientID" AS "IDPatient", "Warteliste"."ID" AS "IDWL" FROM ((("HLAPatient" JOIN "Warteliste" ON (("HLAPatient"."IDPatient" = "Warteliste"."PatientID"))) JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLAPatient"."IDHLA"))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) ORDER BY "StammdatenHLA"."Broad", "Warteliste"."PatientID", "Warteliste"."ID") "HLAAllelesPatientBroad" ON (("Organkultur"."IDWarteliste" = "HLAAllelesPatientBroad"."IDWL"))) JOIN (SELECT DISTINCT "StammdatenHLA"."Broad", "Organkultur"."IDSpender" AS "SpenderID" FROM (("HLASpender" JOIN "Organkultur" ON (("Organkultur"."IDSpender" = "HLASpender"."IDSpender"))) JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) ORDER BY "StammdatenHLA"."Broad", "Organkultur"."IDSpender") "HLAAllelesSpenderBroad" ON (("Organkultur"."IDSpender" = "HLAAllelesSpenderBroad"."SpenderID"))) WHERE (("HLAAllelesPatientBroad"."Broad")::text = ("HLAAllelesSpenderBroad"."Broad")::text) GROUP BY "HLAAllelesPatientBroad"."IDPatient", "HLAAllelesSpenderBroad"."SpenderID" ORDER BY "HLAAllelesPatientBroad"."IDPatient") "MatchCountBroad" ON ((("HLAAllelesCountSpenderBroad"."SpenderID" = "MatchCountBroad"."SpenderID") AND ("MatchCountBroad"."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient")))) JOIN (SELECT count(a1."Broad") AS "AlleleCountPatient", a1."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "HLAPatient"."IDPatient" FROM ("HLAPatient" JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLAPatient"."IDHLA"))) ORDER BY "StammdatenHLA"."Broad", "HLAPatient"."IDPatient") a1 GROUP BY a1."IDPatient") a2 ON ((a2."IDPatient" = "HLAAllelesCountSpenderBroad"."IDPatient"))) WHERE ((a2."AlleleCountPatient" > 0) AND ("HLAAllelesCountSpenderBroad"."AlleleCount" > 0)) ORDER BY "HLAAllelesCountSpenderBroad"."IDPatient";


ALTER TABLE public."AllHLAMismatches" OWNER TO root;

--
-- Name: Mediumwechsel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Mediumwechsel" (
    "ID" integer DEFAULT nextval(('"Mediumwechsel_ID_seq"'::text)::regclass) NOT NULL,
    "KulturEinDatum" timestamp without time zone,
    "KulturAusDatum" timestamp without time zone,
    "DatumBakteriologieEntnahme" timestamp without time zone,
    "DatumBakteriologieErgebnis" timestamp without time zone,
    "AerobSteril" boolean DEFAULT false NOT NULL,
    "AnaerobSteril" boolean DEFAULT false NOT NULL,
    "BSSKontrolle" boolean DEFAULT false NOT NULL,
    "EZD" integer,
    "MethodeEZD" integer,
    "BefundbarkeitEpithel" integer,
    "Epithelscore" integer,
    "BefundbarkeitEndothel" integer,
    "Endothelscore" integer,
    "BefundbarkeitStroma" integer,
    "Stromascore" integer,
    "NarbePeripher" boolean DEFAULT false NOT NULL,
    "NarbeZentral" boolean DEFAULT false NOT NULL,
    "IDOrgankultur" integer,
    "IsEndbefund" boolean DEFAULT false NOT NULL,
    "IDMedium" integer,
    "EndothelPotenziellTransplantierbar" boolean DEFAULT false NOT NULL,
    "Befundbild" boolean DEFAULT false NOT NULL,
    "DatumEndbefund" timestamp without time zone,
    "Bemerkungen" text,
    "AnteilNekrosen" integer,
    "IDMitarbeiter" integer,
    pachy character varying(10),
    "InstrumentID" smallint,
    "InstrumentID2" smallint,
    chargennummer character varying(100),
    steridate timestamp with time zone,
    steridate2 timestamp with time zone,
    "InstrumentID3" smallint,
    "NekrosenKlassifizierung" integer,
    chargennummer_ncs text,
    chargennummer_flasche text,
    chargennummer_halter text,
    chargennummer_bss text,
    chargennummer_bss_wellplate text,
    idcellfinder integer
);


ALTER TABLE public."Mediumwechsel" OWNER TO postgres;

--
-- Name: MedienWechselFirst; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "MedienWechselFirst" AS
    SELECT "Mediumwechsel"."ID", "Mediumwechsel"."KulturEinDatum", "Mediumwechsel"."KulturAusDatum", "Mediumwechsel"."DatumBakteriologieEntnahme", "Mediumwechsel"."DatumBakteriologieErgebnis", "Mediumwechsel"."AerobSteril", "Mediumwechsel"."AnaerobSteril", "Mediumwechsel"."BSSKontrolle", "Mediumwechsel"."EZD", "Mediumwechsel"."MethodeEZD", "Mediumwechsel"."BefundbarkeitEpithel", "Mediumwechsel"."Epithelscore", "Mediumwechsel"."BefundbarkeitEndothel", "Mediumwechsel"."Endothelscore", "Mediumwechsel"."BefundbarkeitStroma", "Mediumwechsel"."Stromascore", "Mediumwechsel"."NarbePeripher", "Mediumwechsel"."NarbeZentral", "Mediumwechsel"."IDOrgankultur", "Mediumwechsel"."IsEndbefund", "Mediumwechsel"."IDMedium", "Mediumwechsel"."EndothelPotenziellTransplantierbar", "Mediumwechsel"."Befundbild", "Mediumwechsel"."DatumEndbefund", "Mediumwechsel"."Bemerkungen", "Y"."ZahlMedienwechsel" FROM "Mediumwechsel", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", min("Mediumwechsel"."KulturEinDatum") AS "KED" FROM "Mediumwechsel" GROUP BY "Mediumwechsel"."IDOrgankultur") "X", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", count("Mediumwechsel"."ID") AS "ZahlMedienwechsel" FROM "Mediumwechsel" GROUP BY "Mediumwechsel"."IDOrgankultur") "Y" WHERE ((("Mediumwechsel"."KulturEinDatum" = "X"."KED") AND ("X"."IDOK" = "Mediumwechsel"."IDOrgankultur")) AND ("Y"."IDOK" = "Mediumwechsel"."IDOrgankultur"));


ALTER TABLE public."MedienWechselFirst" OWNER TO postgres;

--
-- Name: MedienWechselLast; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "MedienWechselLast" AS
    SELECT "Mediumwechsel"."ID", "Mediumwechsel"."KulturEinDatum", "Mediumwechsel"."KulturAusDatum", "Mediumwechsel"."DatumBakteriologieEntnahme", "Mediumwechsel"."DatumBakteriologieErgebnis", "Mediumwechsel"."AerobSteril", "Mediumwechsel"."AnaerobSteril", "Mediumwechsel"."BSSKontrolle", "Mediumwechsel"."EZD", "Mediumwechsel"."MethodeEZD", "Mediumwechsel"."BefundbarkeitEpithel", "Mediumwechsel"."Epithelscore", "Mediumwechsel"."BefundbarkeitEndothel", "Mediumwechsel"."Endothelscore", "Mediumwechsel"."BefundbarkeitStroma", "Mediumwechsel"."Stromascore", "Mediumwechsel"."NarbePeripher", "Mediumwechsel"."NarbeZentral", "Mediumwechsel"."IDOrgankultur", "Mediumwechsel"."IsEndbefund", "Mediumwechsel"."IDMedium", "Mediumwechsel"."EndothelPotenziellTransplantierbar", "Mediumwechsel"."Befundbild", "Mediumwechsel"."DatumEndbefund", "Mediumwechsel"."Bemerkungen" FROM "Mediumwechsel", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", max("Mediumwechsel"."KulturEinDatum") AS "KED" FROM "Mediumwechsel" GROUP BY "Mediumwechsel"."IDOrgankultur") "X", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", max("Mediumwechsel"."IDMedium") AS "IDM" FROM "Mediumwechsel" GROUP BY "Mediumwechsel"."IDOrgankultur") "Y" WHERE (((("Mediumwechsel"."KulturEinDatum" = "X"."KED") AND ("X"."IDOK" = "Mediumwechsel"."IDOrgankultur")) AND ("Y"."IDM" = "Mediumwechsel"."IDMedium")) AND ("Y"."IDOK" = "Mediumwechsel"."IDOrgankultur"));


ALTER TABLE public."MedienWechselLast" OWNER TO root;

--
-- Name: MedienWechselLastEZD; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "MedienWechselLastEZD" AS
    SELECT "Mediumwechsel"."DatumEndbefund" AS "DateEZD", "Mediumwechsel"."EZD", "Mediumwechsel"."AnteilNekrosen", "Mediumwechsel"."IDOrgankultur" FROM "Mediumwechsel", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", max("Mediumwechsel"."KulturEinDatum") AS "KED" FROM "Mediumwechsel" WHERE ("Mediumwechsel"."EZD" IS NOT NULL) GROUP BY "Mediumwechsel"."IDOrgankultur") "X", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", max("Mediumwechsel"."IDMedium") AS "IDM" FROM "Mediumwechsel" WHERE ("Mediumwechsel"."EZD" IS NOT NULL) GROUP BY "Mediumwechsel"."IDOrgankultur") "Y" WHERE (((("Mediumwechsel"."KulturEinDatum" = "X"."KED") AND ("X"."IDOK" = "Mediumwechsel"."IDOrgankultur")) AND ("Y"."IDM" = "Mediumwechsel"."IDMedium")) AND ("Y"."IDOK" = "Mediumwechsel"."IDOrgankultur"));


ALTER TABLE public."MedienWechselLastEZD" OWNER TO postgres;

--
-- Name: MedienWechselLastMiBi; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "MedienWechselLastMiBi" AS
    SELECT "Mediumwechsel"."ID", "Mediumwechsel"."KulturEinDatum", "Mediumwechsel"."KulturAusDatum", "Mediumwechsel"."DatumBakteriologieEntnahme", "Mediumwechsel"."DatumBakteriologieErgebnis", "Mediumwechsel"."AerobSteril", "Mediumwechsel"."AnaerobSteril", "Mediumwechsel"."BSSKontrolle", "Mediumwechsel"."EZD", "Mediumwechsel"."MethodeEZD", "Mediumwechsel"."BefundbarkeitEpithel", "Mediumwechsel"."Epithelscore", "Mediumwechsel"."BefundbarkeitEndothel", "Mediumwechsel"."Endothelscore", "Mediumwechsel"."BefundbarkeitStroma", "Mediumwechsel"."Stromascore", "Mediumwechsel"."NarbePeripher", "Mediumwechsel"."NarbeZentral", "Mediumwechsel"."IDOrgankultur", "Mediumwechsel"."IsEndbefund", "Mediumwechsel"."IDMedium", "Mediumwechsel"."EndothelPotenziellTransplantierbar", "Mediumwechsel"."Befundbild", "Mediumwechsel"."DatumEndbefund", "Mediumwechsel"."Bemerkungen" FROM "Mediumwechsel", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", max("Mediumwechsel"."DatumBakteriologieEntnahme") AS "KED" FROM "Mediumwechsel" WHERE ((("Mediumwechsel"."DatumBakteriologieErgebnis" IS NOT NULL) AND ("Mediumwechsel"."AerobSteril" = true)) AND ("Mediumwechsel"."AnaerobSteril" = true)) GROUP BY "Mediumwechsel"."IDOrgankultur" LIMIT 1) "X" WHERE (("Mediumwechsel"."DatumBakteriologieEntnahme" = "X"."KED") AND ("X"."IDOK" = "Mediumwechsel"."IDOrgankultur"));


ALTER TABLE public."MedienWechselLastMiBi" OWNER TO root;

--
-- Name: SerologieSpender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "SerologieSpender" (
    "ID" integer DEFAULT nextval(('"SerologieSpender_ID_seq"'::text)::regclass) NOT NULL,
    "IDSpender" integer,
    "IDTest" integer,
    "Datum" timestamp without time zone,
    "Ergebnis" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."SerologieSpender" OWNER TO postgres;

--
-- Name: SpenderNegativeTests; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "SpenderNegativeTests" AS
    SELECT DISTINCT "SerologieSpender"."IDTest", "SerologieSpender"."IDSpender", "SerologieSpender"."Ergebnis" FROM "SerologieSpender" ORDER BY "SerologieSpender"."IDTest", "SerologieSpender"."IDSpender", "SerologieSpender"."Ergebnis";


ALTER TABLE public."SpenderNegativeTests" OWNER TO root;

--
-- Name: StammdatenHornhautspender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenHornhautspender" (
    "ID" integer DEFAULT nextval(('"StammdatenHornhautspender_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    "Vorname" character varying(50),
    "Geburtsdatum" timestamp without time zone,
    "Anschrift" character varying(50),
    "PLZ" character varying(50),
    "Ort" character varying(50),
    "Todeszeitpunkt" timestamp without time zone,
    "IDTodesursache" integer,
    "IDQuelle" integer,
    "IDEntnahmemethodeR" integer,
    "IDEntnahmemethodeL" integer,
    "IDExplanteur" integer,
    weiblich boolean DEFAULT false NOT NULL,
    "Bemerkungen" text,
    "IDEinverstaendnisArt" integer,
    "EinverstaendnisEingeholt" integer,
    "EinverstaendnisPerson" character varying(50),
    "NameAngehoeriger" character varying(50),
    "Koerpergroesse" integer,
    "Koerpergewicht" integer,
    "TransfusionenExpander" integer,
    "TransfusionenSalin" integer,
    "TransfusionenRinger" integer,
    "TransfusionenDextrose" integer,
    "Transfusionen" integer,
    "Sepsis" boolean DEFAULT false NOT NULL,
    "Risikogruppe" boolean DEFAULT false NOT NULL,
    "Leukaemie" boolean DEFAULT false NOT NULL,
    "Immunsuppression" boolean DEFAULT false NOT NULL,
    "Entnahmezeitpunkt" timestamp without time zone,
    "Telefon" character varying(50),
    "IDVerwefungsgrundPrimary" integer,
    "IDSterbeort" integer,
    "KontraindikationChecked" boolean DEFAULT true NOT NULL,
    "IDZentrum" integer DEFAULT 1,
    "ExternalID" character varying(50),
    "ExternalDonor" boolean DEFAULT false NOT NULL,
    gekuehlt boolean,
    "IDMelder" integer,
    "AnschriftAngehoeriger" character varying(128),
    "PLZAngehoeriger" character varying(50),
    "OrtAngehoeriger" character varying(128),
    persoenlicher_kontakt boolean,
    time_contact1 timestamp with time zone,
    time_contact2 timestamp with time zone,
    gespraechsnotiz character varying(256),
    einwilligung_forschung integer,
    "IDSpenderidentifikationDurch" integer,
    "IDSpenderidentifikationMittels" integer,
    "IDPraemortemBlut" integer,
    "PIZ" integer,
    id_vorops_r integer,
    id_vorops_l integer,
    gesperrt boolean DEFAULT false,
    praemortem_blut_anfordern boolean
);


ALTER TABLE public."StammdatenHornhautspender" OWNER TO postgres;

--
-- Name: StammdatenSerologie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenSerologie" (
    "ID" integer DEFAULT nextval(('"StammdatenSerologie_ID_seq"'::text)::regclass) NOT NULL,
    "Test" character varying(50),
    "Typ" integer,
    uncritical boolean
);


ALTER TABLE public."StammdatenSerologie" OWNER TO postgres;

--
-- Name: StammdatenTodesursache; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenTodesursache" (
    "ID" integer DEFAULT nextval(('"StammdatenTodesursache_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    "ICD" character varying(50),
    "Code" character varying(50),
    "Malignom" boolean DEFAULT false NOT NULL,
    "Leukaemie" boolean DEFAULT false NOT NULL,
    "Sepsis" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."StammdatenTodesursache" OWNER TO postgres;

--
-- Name: SpenderserologieOk; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "SpenderserologieOk" AS
    SELECT "StammdatenHornhautspender"."ID", "StammdatenHornhautspender"."KontraindikationChecked", "NegativeTests".count AS "ZahlNegativerTests", date_part('years'::text, age("StammdatenHornhautspender"."Todeszeitpunkt", "StammdatenHornhautspender"."Geburtsdatum")) AS "SpenderAlter", age("StammdatenHornhautspender"."Entnahmezeitpunkt", "StammdatenHornhautspender"."Todeszeitpunkt") AS "PostMortemZeit", "StammdatenHornhautspender".weiblich AS "SpenderWeiblich", "StammdatenTodesursache"."Name" AS "Todesursache" FROM (("StammdatenHornhautspender" LEFT JOIN (SELECT "SpenderNegativeTests"."IDSpender", count("SpenderNegativeTests"."IDTest") AS count FROM ("SpenderNegativeTests" JOIN "StammdatenSerologie" ON (("StammdatenSerologie"."ID" = "SpenderNegativeTests"."IDTest"))) WHERE ("SpenderNegativeTests"."Ergebnis" = true) GROUP BY "SpenderNegativeTests"."IDSpender") "NegativeTests" ON (("NegativeTests"."IDSpender" = "StammdatenHornhautspender"."ID"))) JOIN "StammdatenTodesursache" ON (("StammdatenTodesursache"."ID" = "StammdatenHornhautspender"."IDTodesursache")));


ALTER TABLE public."SpenderserologieOk" OWNER TO postgres;

--
-- Name: KultivierteHornhaeute; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "KultivierteHornhaeute" AS
    SELECT "Organkultur"."ID" AS "IDOrgankultur", "Organkultur"."IDSpender", "Organkultur".olc, "Organkultur"."IDWarteliste", "Organkultur"."Auge", CASE WHEN ("MedienWechselLast"."KulturAusDatum" IS NULL) THEN CASE WHEN ("Warteliste"."EndeWarteliste" IS NULL) THEN ((date_part('epoch'::text, age(("MedienWechselFirst"."KulturEinDatum")::timestamp with time zone)) / (((60 * 60) * 24))::double precision))::integer ELSE ((date_part('epoch'::text, age("Warteliste"."EndeWarteliste", "MedienWechselFirst"."KulturEinDatum")) / (((60 * 60) * 24))::double precision))::integer END ELSE ((date_part('epoch'::text, age("MedienWechselLast"."KulturAusDatum", "MedienWechselFirst"."KulturEinDatum")) / (((60 * 60) * 24))::double precision))::integer END AS "KulturdauerGesamt", CASE WHEN ("MedienWechselLast"."KulturAusDatum" IS NULL) THEN CASE WHEN ("Warteliste"."EndeWarteliste" IS NULL) THEN ((date_part('epoch'::text, age(("MedienWechselLast"."KulturEinDatum")::timestamp with time zone)) / (((60 * 60) * 24))::double precision))::integer ELSE ((date_part('epoch'::text, age("Warteliste"."EndeWarteliste", "MedienWechselLast"."KulturEinDatum")) / (((60 * 60) * 24))::double precision))::integer END ELSE ((date_part('epoch'::text, age("MedienWechselLast"."KulturAusDatum", "MedienWechselLast"."KulturEinDatum")) / (((60 * 60) * 24))::double precision))::integer END AS "KulturdauerAktuell", "MedienWechselLastEZD"."EZD" AS "LetzteEZD", ((("MedienWechselLastEZD"."EZD" || ' ('::text) || "MedienWechselLastEZD"."AnteilNekrosen") || ')'::text) AS "LetzteEZDNekrosen", "MedienWechselLastEZD"."DateEZD" AS "DatumLetzteEZD", "MedienWechselFirst"."ZahlMedienwechsel", "SpenderserologieOk"."ZahlNegativerTests", "SpenderserologieOk"."SpenderAlter", "SpenderserologieOk"."PostMortemZeit", "SpenderserologieOk"."KontraindikationChecked", "MedienWechselLast"."KulturEinDatum" AS "DatumLetzterMedienwechsel", ("MedienWechselLast"."KulturEinDatum" + '6 days'::interval) AS "HaltbarBis", "MedienWechselLastMiBi"."DatumBakteriologieErgebnis" AS "DatumLetzteMiBi", "MedienWechselLast"."IDMedium" AS "IDLetztesMedium", ("MedienWechselLast"."NarbeZentral" OR "MedienWechselLast"."NarbePeripher") AS narben, "SpenderserologieOk"."SpenderWeiblich", "MedienWechselFirst"."EndothelPotenziellTransplantierbar" AS "Expressbefundung", "SpenderserologieOk"."Todesursache", "Warteliste"."IDZentrum" FROM (((((("SpenderserologieOk" JOIN "Organkultur" ON (("SpenderserologieOk"."ID" = "Organkultur"."IDSpender"))) LEFT JOIN "Warteliste" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) JOIN "MedienWechselLast" ON (("Organkultur"."ID" = "MedienWechselLast"."IDOrgankultur"))) JOIN "MedienWechselFirst" ON (("Organkultur"."ID" = "MedienWechselFirst"."IDOrgankultur"))) LEFT JOIN "MedienWechselLastMiBi" ON (("Organkultur"."ID" = "MedienWechselLastMiBi"."IDOrgankultur"))) LEFT JOIN "MedienWechselLastEZD" ON (("Organkultur"."ID" = "MedienWechselLastEZD"."IDOrgankultur"))) WHERE (("Organkultur"."EndOfCulture" = false) AND (("Organkultur"."IDVerwerfungsgrund" = 0) OR ("Organkultur"."IDVerwerfungsgrund" IS NULL))) ORDER BY "Organkultur"."IDSpender", "Organkultur"."Auge" DESC;


ALTER TABLE public."KultivierteHornhaeute" OWNER TO postgres;

--
-- Name: HLAAllelesSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAllelesSpender" AS
    SELECT "StammdatenHLA"."Broad", "StammdatenHLA"."Split", "StammdatenHornhautspender"."ID", "StammdatenHLA"."PCR", "StammdatenHLA"."Klasse", "StammdatenHLA"."IgnoreInHLAMatching" FROM "KultivierteHornhaeute", ("StammdatenHornhautspender" JOIN ("StammdatenHLA" JOIN "HLASpender" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) ON (("StammdatenHornhautspender"."ID" = "HLASpender"."IDSpender"))) WHERE (("StammdatenHLA"."IgnoreInHLAMatching" = false) AND ("HLASpender"."IDSpender" = "KultivierteHornhaeute"."IDSpender"));


ALTER TABLE public."HLAAllelesSpender" OWNER TO root;

--
-- Name: HLAAllelesSpenderBroad; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAllelesSpenderBroad" AS
    SELECT DISTINCT "HLAAllelesSpender"."Broad", "HLAAllelesSpender"."ID" FROM "HLAAllelesSpender" WHERE ("HLAAllelesSpender"."IgnoreInHLAMatching" = false) ORDER BY "HLAAllelesSpender"."Broad", "HLAAllelesSpender"."ID";


ALTER TABLE public."HLAAllelesSpenderBroad" OWNER TO root;

--
-- Name: HLAAlleleCountSpenderBroad; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAlleleCountSpenderBroad" AS
    SELECT DISTINCT count("HLAAllelesSpenderBroad"."Broad") AS "AlleleCount", "HLAAllelesSpenderBroad"."ID" AS "IDSpender" FROM "HLAAllelesSpenderBroad" GROUP BY "HLAAllelesSpenderBroad"."ID" ORDER BY count("HLAAllelesSpenderBroad"."Broad"), "HLAAllelesSpenderBroad"."ID";


ALTER TABLE public."HLAAlleleCountSpenderBroad" OWNER TO root;

--
-- Name: HLAAllelesSpenderBroadDR; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAllelesSpenderBroadDR" AS
    SELECT DISTINCT "HLAAllelesSpender"."Broad", "HLAAllelesSpender"."ID" FROM "HLAAllelesSpender" WHERE (("HLAAllelesSpender"."IgnoreInHLAMatching" = false) AND ("HLAAllelesSpender"."Klasse" = 2)) ORDER BY "HLAAllelesSpender"."Broad", "HLAAllelesSpender"."ID";


ALTER TABLE public."HLAAllelesSpenderBroadDR" OWNER TO root;

--
-- Name: HLAAlleleCountSpenderBroadDR; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAlleleCountSpenderBroadDR" AS
    SELECT DISTINCT count("HLAAllelesSpenderBroadDR"."Broad") AS "AlleleCount", "HLAAllelesSpenderBroadDR"."ID" AS "IDSpender" FROM "HLAAllelesSpenderBroadDR" GROUP BY "HLAAllelesSpenderBroadDR"."ID" ORDER BY count("HLAAllelesSpenderBroadDR"."Broad"), "HLAAllelesSpenderBroadDR"."ID";


ALTER TABLE public."HLAAlleleCountSpenderBroadDR" OWNER TO root;

--
-- Name: HLAAllelesPatientBroad; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAllelesPatientBroad" AS
    SELECT DISTINCT "HLAAllelePatient"."Broad", "HLAAllelePatient"."ID" FROM "HLAAllelePatient" WHERE ("HLAAllelePatient"."IgnoreInHLAMatching" = false) ORDER BY "HLAAllelePatient"."Broad", "HLAAllelePatient"."ID";


ALTER TABLE public."HLAAllelesPatientBroad" OWNER TO root;

--
-- Name: HLAAllelesPatientBroadDR; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAAllelesPatientBroadDR" AS
    SELECT DISTINCT "HLAAllelePatient"."Broad", "HLAAllelePatient"."ID" FROM "HLAAllelePatient" WHERE (("HLAAllelePatient"."IgnoreInHLAMatching" = false) AND ("HLAAllelePatient"."Klasse" = 2)) ORDER BY "HLAAllelePatient"."Broad", "HLAAllelePatient"."ID";


ALTER TABLE public."HLAAllelesPatientBroadDR" OWNER TO root;

--
-- Name: HLAMatchesBroad; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAMatchesBroad" AS
    SELECT "HLAAllelesPatientBroad"."ID" AS "IDPatient", "HLAAllelesSpenderBroad"."ID" AS "IDSpender", count("HLAAllelesPatientBroad"."ID") AS "MatchCount" FROM "HLAAllelesPatientBroad", "HLAAllelesSpenderBroad" WHERE (("HLAAllelesPatientBroad"."Broad")::text = ("HLAAllelesSpenderBroad"."Broad")::text) GROUP BY "HLAAllelesPatientBroad"."ID", "HLAAllelesSpenderBroad"."ID";


ALTER TABLE public."HLAMatchesBroad" OWNER TO root;

--
-- Name: HLAMatchesBroadDR; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAMatchesBroadDR" AS
    SELECT "HLAAllelesPatientBroadDR"."ID" AS "IDPatient", "HLAAllelesSpenderBroadDR"."ID" AS "IDSpender", count("HLAAllelesPatientBroadDR"."ID") AS "MatchCount" FROM "HLAAllelesPatientBroadDR", "HLAAllelesSpenderBroadDR" WHERE (("HLAAllelesPatientBroadDR"."Broad")::text = ("HLAAllelesSpenderBroadDR"."Broad")::text) GROUP BY "HLAAllelesPatientBroadDR"."ID", "HLAAllelesSpenderBroadDR"."ID";


ALTER TABLE public."HLAMatchesBroadDR" OWNER TO root;

--
-- Name: HLAMismatchesBroad; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAMismatchesBroad" AS
    SELECT "HLAMatchesBroad"."IDSpender", "HLAMatchesBroad"."IDPatient", "HLAMatchesBroad"."MatchCount", "HLAAlleleCountSpenderBroad"."AlleleCount", ("HLAAlleleCountSpenderBroad"."AlleleCount" - "HLAMatchesBroad"."MatchCount") AS "HLAMismatches" FROM "HLAMatchesBroad", "HLAAlleleCountSpenderBroad" WHERE ("HLAMatchesBroad"."IDSpender" = "HLAAlleleCountSpenderBroad"."IDSpender");


ALTER TABLE public."HLAMismatchesBroad" OWNER TO root;

--
-- Name: HLAMismatchesBroadDR; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAMismatchesBroadDR" AS
    SELECT ((("HLAMatchesBroadDR"."IDPatient")::text || '_'::text) || ("HLAMatchesBroadDR"."IDSpender")::text) AS "PatSp", "HLAMatchesBroadDR"."IDSpender", "HLAMatchesBroadDR"."IDPatient", "HLAMatchesBroadDR"."MatchCount", "HLAAlleleCountSpenderBroadDR"."AlleleCount", ("HLAAlleleCountSpenderBroadDR"."AlleleCount" - "HLAMatchesBroadDR"."MatchCount") AS "HLAMismatches" FROM "HLAMatchesBroadDR", "HLAAlleleCountSpenderBroadDR" WHERE ("HLAMatchesBroadDR"."IDSpender" = "HLAAlleleCountSpenderBroadDR"."IDSpender");


ALTER TABLE public."HLAMismatchesBroadDR" OWNER TO root;

--
-- Name: TripletHLAAllelesPCR; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TripletHLAAllelesPCR" (
    "ID" integer NOT NULL,
    "NamePCR" character varying(255),
    "NameSplit" character varying(50)
);


ALTER TABLE public."TripletHLAAllelesPCR" OWNER TO postgres;

--
-- Name: Triplets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Triplets" (
    "ID" integer DEFAULT nextval(('"Triplets_ID_seq"'::text)::regclass) NOT NULL,
    "IDAllele" integer,
    "Epitope" character varying(255)
);


ALTER TABLE public."Triplets" OWNER TO postgres;

--
-- Name: HLATripletsPatient; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLATripletsPatient" AS
    SELECT "Triplets"."Epitope" AS "TripletEpitope", "HLAAllelePatient"."ID" AS "PatientID", "HLAAllelePatient"."Split" AS "SplitAllele" FROM "HLAAllelePatient", "Triplets", "TripletHLAAllelesPCR" WHERE (("Triplets"."IDAllele" = "TripletHLAAllelesPCR"."ID") AND (("TripletHLAAllelesPCR"."NamePCR")::text = ("HLAAllelePatient"."PCR")::text));


ALTER TABLE public."HLATripletsPatient" OWNER TO root;

--
-- Name: HLATripletsSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLATripletsSpender" AS
    SELECT "Triplets"."Epitope" AS "TripletEpitope", "HLAAllelesSpender"."ID" AS "SpenderID", "HLAAllelesSpender"."Split" AS "SplitAllele" FROM "HLAAllelesSpender", "Triplets", "TripletHLAAllelesPCR" WHERE (("Triplets"."IDAllele" = "TripletHLAAllelesPCR"."ID") AND (("TripletHLAAllelesPCR"."NamePCR")::text = ("HLAAllelesSpender"."PCR")::text));


ALTER TABLE public."HLATripletsSpender" OWNER TO root;

--
-- Name: WartelisteUebersicht; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "WartelisteUebersicht" AS
    SELECT "Warteliste"."ID" AS "WLID", "Warteliste"."PatientID", "Warteliste"."StartWarteliste", "Warteliste"."EndeWarteliste", "Warteliste"."WartenAktiviert", "Warteliste"."Prioritaet", "Warteliste"."KpAbDatum", "Warteliste"."Narkosefrom", "Warteliste"."KeratoplastikAuge", "Warteliste"."KeratoplastikGesamt", "Warteliste"."Auge", "Warteliste"."Bemerkungen", "Warteliste"."MaxHLAMismatches", "Warteliste"."GrundExitWL", "Warteliste"."BIS", "Warteliste"."BISNR", "Warteliste"."Privatpatient", "Warteliste"."TransplantationenGesamt", "Warteliste"."TransfusionenGesamt", "Warteliste"."SchwangerschaftenGesamt", "Warteliste"."IDZentrum", "Warteliste"."IDOperateur", "Warteliste"."TrepanTp", "Warteliste"."TrepanPat", "Warteliste"."IDOrgankultur", "Warteliste"."IDOPArt", "Warteliste"."IDTrepanart", "Warteliste"."IDOPIndikationsdiagnose", "Warteliste"."IDMeldenderArzt", "StammdatenPatient"."ID", "StammdatenPatient"."PIZ", "StammdatenPatient"."Name", "StammdatenPatient"."Vorname", "StammdatenPatient"."Geburtsdatum", "StammdatenPatient"."Anschrift", "StammdatenPatient"."PLZ", "StammdatenPatient"."Ort", "StammdatenPatient".weiblich, "StammdatenPatient"."Telefon1", "StammdatenPatient"."Telefon2", "StammdatenPatient"."VerstorbenAm", age(("StammdatenPatient"."Geburtsdatum")::timestamp with time zone) AS "PatAlter", age((COALESCE("Warteliste"."KpAbDatum", "Warteliste"."StartWarteliste"))::timestamp with time zone) AS "WartezeitBislang", CASE WHEN ("Warteliste"."Privatpatient" = true) THEN 'Ja'::text ELSE 'Nein'::text END AS "PrivatVerbose" FROM "Warteliste", "StammdatenPatient" WHERE ("Warteliste"."PatientID" = "StammdatenPatient"."ID") ORDER BY "Warteliste"."Prioritaet" DESC, (now() - ("Warteliste"."StartWarteliste")::timestamp with time zone) DESC;


ALTER TABLE public."WartelisteUebersicht" OWNER TO root;

--
-- Name: WartelisteAktiv; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "WartelisteAktiv" AS
    SELECT "WartelisteUebersicht"."WLID", "WartelisteUebersicht"."PatientID", "WartelisteUebersicht"."StartWarteliste", "WartelisteUebersicht"."EndeWarteliste", "WartelisteUebersicht"."WartenAktiviert", "WartelisteUebersicht"."Prioritaet", "WartelisteUebersicht"."KpAbDatum", "WartelisteUebersicht"."Narkosefrom", "WartelisteUebersicht"."KeratoplastikAuge", "WartelisteUebersicht"."KeratoplastikGesamt", "WartelisteUebersicht"."Auge", "WartelisteUebersicht"."Bemerkungen", "WartelisteUebersicht"."MaxHLAMismatches", "WartelisteUebersicht"."GrundExitWL", "WartelisteUebersicht"."BIS", "WartelisteUebersicht"."BISNR", "WartelisteUebersicht"."Privatpatient", "WartelisteUebersicht"."TransplantationenGesamt", "WartelisteUebersicht"."TransfusionenGesamt", "WartelisteUebersicht"."SchwangerschaftenGesamt", "WartelisteUebersicht"."IDZentrum", "WartelisteUebersicht"."IDOperateur", "WartelisteUebersicht"."TrepanTp", "WartelisteUebersicht"."TrepanPat", "WartelisteUebersicht"."IDOrgankultur", "WartelisteUebersicht"."IDOPArt", "WartelisteUebersicht"."IDTrepanart", "WartelisteUebersicht"."IDOPIndikationsdiagnose", "WartelisteUebersicht"."IDMeldenderArzt", "WartelisteUebersicht"."ID", "WartelisteUebersicht"."Name", "WartelisteUebersicht"."Vorname", "WartelisteUebersicht"."Geburtsdatum", "WartelisteUebersicht"."Anschrift", "WartelisteUebersicht"."PLZ", "WartelisteUebersicht"."Ort", "WartelisteUebersicht".weiblich, "WartelisteUebersicht"."Telefon1", "WartelisteUebersicht"."Telefon2", "WartelisteUebersicht"."VerstorbenAm", "WartelisteUebersicht"."PatAlter", "WartelisteUebersicht"."WartezeitBislang", "WartelisteUebersicht"."PrivatVerbose" FROM "WartelisteUebersicht" WHERE ("WartelisteUebersicht"."WartenAktiviert" = true);


ALTER TABLE public."WartelisteAktiv" OWNER TO postgres;

--
-- Name: HLAWartelistenMatcherSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HLAWartelistenMatcherSpender" AS
    SELECT "WartelisteAktiv"."WLID", "WartelisteAktiv"."PatientID", "WartelisteAktiv"."StartWarteliste", "WartelisteAktiv"."EndeWarteliste", "WartelisteAktiv"."WartenAktiviert", "WartelisteAktiv"."Prioritaet", "WartelisteAktiv"."KpAbDatum", "WartelisteAktiv"."Narkosefrom", "WartelisteAktiv"."KeratoplastikAuge", "WartelisteAktiv"."KeratoplastikGesamt", "WartelisteAktiv"."Auge", "WartelisteAktiv"."Bemerkungen", "WartelisteAktiv"."MaxHLAMismatches", "WartelisteAktiv"."GrundExitWL", "WartelisteAktiv"."BIS", "WartelisteAktiv"."BISNR", "WartelisteAktiv"."Privatpatient", "WartelisteAktiv"."TransplantationenGesamt", "WartelisteAktiv"."TransfusionenGesamt", "WartelisteAktiv"."SchwangerschaftenGesamt", "WartelisteAktiv"."IDZentrum", "WartelisteAktiv"."IDOperateur", "WartelisteAktiv"."TrepanTp", "WartelisteAktiv"."TrepanPat", "WartelisteAktiv"."IDOrgankultur", "WartelisteAktiv"."IDOPArt", "WartelisteAktiv"."IDTrepanart", "WartelisteAktiv"."IDOPIndikationsdiagnose", "WartelisteAktiv"."IDMeldenderArzt", "WartelisteAktiv"."ID", "WartelisteAktiv"."Name", "WartelisteAktiv"."Vorname", "WartelisteAktiv"."Geburtsdatum", "WartelisteAktiv"."Anschrift", "WartelisteAktiv"."PLZ", "WartelisteAktiv"."Ort", "WartelisteAktiv".weiblich, "WartelisteAktiv"."Telefon1", "WartelisteAktiv"."Telefon2", "WartelisteAktiv"."VerstorbenAm", "WartelisteAktiv"."PatAlter", "WartelisteAktiv"."WartezeitBislang", "WartelisteAktiv"."PrivatVerbose", "HLAMismatchesBroad"."IDPatient", "HLAMismatchesBroad"."IDSpender", "HLAMismatchesBroad"."HLAMismatches" FROM "WartelisteAktiv", "HLAMismatchesBroad" WHERE (("HLAMismatchesBroad"."IDPatient" = "WartelisteAktiv"."PatientID") AND ("HLAMismatchesBroad"."HLAMismatches" <= 2));


ALTER TABLE public."HLAWartelistenMatcherSpender" OWNER TO root;

--
-- Name: HLAWartelistenMatcherKultur; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "HLAWartelistenMatcherKultur" AS
    SELECT "HLAWartelistenMatcherSpender"."WLID", "HLAWartelistenMatcherSpender"."PatientID", "HLAWartelistenMatcherSpender"."StartWarteliste", "HLAWartelistenMatcherSpender"."EndeWarteliste", "HLAWartelistenMatcherSpender"."WartenAktiviert", "HLAWartelistenMatcherSpender"."Prioritaet", "HLAWartelistenMatcherSpender"."KpAbDatum", "HLAWartelistenMatcherSpender"."Narkosefrom", "HLAWartelistenMatcherSpender"."KeratoplastikAuge", "HLAWartelistenMatcherSpender"."KeratoplastikGesamt", "HLAWartelistenMatcherSpender"."Auge", "HLAWartelistenMatcherSpender"."Bemerkungen", "HLAWartelistenMatcherSpender"."MaxHLAMismatches", "HLAWartelistenMatcherSpender"."GrundExitWL", "HLAWartelistenMatcherSpender"."BIS", "HLAWartelistenMatcherSpender"."BISNR", "HLAWartelistenMatcherSpender"."Privatpatient", "HLAWartelistenMatcherSpender"."TransplantationenGesamt", "HLAWartelistenMatcherSpender"."TransfusionenGesamt", "HLAWartelistenMatcherSpender"."SchwangerschaftenGesamt", "HLAWartelistenMatcherSpender"."IDZentrum", "HLAWartelistenMatcherSpender"."IDOperateur", "HLAWartelistenMatcherSpender"."TrepanTp", "HLAWartelistenMatcherSpender"."TrepanPat", "HLAWartelistenMatcherSpender"."IDOrgankultur", "HLAWartelistenMatcherSpender"."IDOPArt", "HLAWartelistenMatcherSpender"."IDTrepanart", "HLAWartelistenMatcherSpender"."IDOPIndikationsdiagnose", "HLAWartelistenMatcherSpender"."IDMeldenderArzt", "HLAWartelistenMatcherSpender"."ID", "HLAWartelistenMatcherSpender"."Name", "HLAWartelistenMatcherSpender"."Vorname", "HLAWartelistenMatcherSpender"."Geburtsdatum", "HLAWartelistenMatcherSpender"."Anschrift", "HLAWartelistenMatcherSpender"."PLZ", "HLAWartelistenMatcherSpender"."Ort", "HLAWartelistenMatcherSpender".weiblich, "HLAWartelistenMatcherSpender"."Telefon1", "HLAWartelistenMatcherSpender"."Telefon2", "HLAWartelistenMatcherSpender"."VerstorbenAm", "HLAWartelistenMatcherSpender"."PatAlter", "HLAWartelistenMatcherSpender"."WartezeitBislang", "HLAWartelistenMatcherSpender"."PrivatVerbose", "HLAWartelistenMatcherSpender"."IDPatient", "HLAWartelistenMatcherSpender"."IDSpender", "HLAWartelistenMatcherSpender"."HLAMismatches", "KultivierteHornhaeute"."Auge" AS "realAuge", "KultivierteHornhaeute"."IDOrgankultur" AS "realIDOrgankultur" FROM "HLAWartelistenMatcherSpender", "KultivierteHornhaeute" "KultivierteHornhaeute" WHERE (("KultivierteHornhaeute"."IDWarteliste" IS NULL) AND ("HLAWartelistenMatcherSpender"."IDSpender" = "KultivierteHornhaeute"."IDSpender"));


ALTER TABLE public."HLAWartelistenMatcherKultur" OWNER TO postgres;

--
-- Name: TripletsSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletsSpender" AS
    SELECT DISTINCT "HLATripletsSpender"."SpenderID", "HLATripletsSpender"."TripletEpitope" FROM "HLATripletsSpender" ORDER BY "HLATripletsSpender"."SpenderID", "HLATripletsSpender"."TripletEpitope";


ALTER TABLE public."TripletsSpender" OWNER TO root;

--
-- Name: TripletCountSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletCountSpender" AS
    SELECT "TripletsSpender"."SpenderID", count("TripletsSpender"."TripletEpitope") AS "TripletCount" FROM "TripletsSpender" GROUP BY "TripletsSpender"."SpenderID";


ALTER TABLE public."TripletCountSpender" OWNER TO root;

--
-- Name: TripletsPatient; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletsPatient" AS
    SELECT DISTINCT "HLATripletsPatient"."PatientID", "HLATripletsPatient"."TripletEpitope" FROM "HLATripletsPatient" ORDER BY "HLATripletsPatient"."PatientID", "HLATripletsPatient"."TripletEpitope";


ALTER TABLE public."TripletsPatient" OWNER TO root;

--
-- Name: TripletMatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletMatches" AS
    SELECT "TripletsPatient"."PatientID", "TripletsSpender"."SpenderID", count("TripletsSpender"."TripletEpitope") AS "MatchCount" FROM "TripletsPatient", "TripletsSpender" WHERE (("TripletsPatient"."TripletEpitope")::text = ("TripletsSpender"."TripletEpitope")::text) GROUP BY "TripletsPatient"."PatientID", "TripletsSpender"."SpenderID";


ALTER TABLE public."TripletMatches" OWNER TO root;

--
-- Name: TripletMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletMismatches" AS
    SELECT ("TripletCountSpender"."TripletCount" - "TripletMatches"."MatchCount") AS "TripletMismatches", "TripletMatches"."PatientID", "TripletMatches"."SpenderID" FROM "TripletCountSpender", "TripletMatches" WHERE ("TripletCountSpender"."SpenderID" = "TripletMatches"."SpenderID");


ALTER TABLE public."TripletMismatches" OWNER TO root;

--
-- Name: TripletWartelistenMatcherSpender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletWartelistenMatcherSpender" AS
    SELECT DISTINCT ((("TripletMismatches"."PatientID")::text || '_'::text) || ("TripletMismatches"."SpenderID")::text) AS "SpPat", "WartelisteAktiv"."WLID", "WartelisteAktiv"."PatientID", "WartelisteAktiv"."StartWarteliste", "WartelisteAktiv"."EndeWarteliste", "WartelisteAktiv"."WartenAktiviert", "WartelisteAktiv"."Prioritaet", "WartelisteAktiv"."KpAbDatum", "WartelisteAktiv"."Narkosefrom", "WartelisteAktiv"."KeratoplastikAuge", "WartelisteAktiv"."KeratoplastikGesamt", "WartelisteAktiv"."Auge", "WartelisteAktiv"."Bemerkungen", "WartelisteAktiv"."MaxHLAMismatches", "WartelisteAktiv"."GrundExitWL", "WartelisteAktiv"."BIS", "WartelisteAktiv"."BISNR", "WartelisteAktiv"."Privatpatient", "WartelisteAktiv"."TransplantationenGesamt", "WartelisteAktiv"."TransfusionenGesamt", "WartelisteAktiv"."SchwangerschaftenGesamt", "WartelisteAktiv"."IDZentrum", "WartelisteAktiv"."IDOperateur", "WartelisteAktiv"."TrepanTp", "WartelisteAktiv"."TrepanPat", "WartelisteAktiv"."IDOrgankultur", "WartelisteAktiv"."IDOPArt", "WartelisteAktiv"."IDTrepanart", "WartelisteAktiv"."IDOPIndikationsdiagnose", "WartelisteAktiv"."IDMeldenderArzt", "WartelisteAktiv"."ID", "WartelisteAktiv"."Name", "WartelisteAktiv"."Vorname", "WartelisteAktiv"."Geburtsdatum", "WartelisteAktiv"."Anschrift", "WartelisteAktiv"."PLZ", "WartelisteAktiv"."Ort", "WartelisteAktiv".weiblich, "WartelisteAktiv"."Telefon1", "WartelisteAktiv"."Telefon2", "WartelisteAktiv"."VerstorbenAm", "WartelisteAktiv"."PatAlter", "WartelisteAktiv"."WartezeitBislang", "WartelisteAktiv"."PrivatVerbose", "TripletMismatches"."SpenderID", "TripletMismatches"."TripletMismatches" FROM "WartelisteAktiv", "TripletMismatches" WHERE (("TripletMismatches"."PatientID" = "WartelisteAktiv"."PatientID") AND ("TripletMismatches"."TripletMismatches" <= 7)) ORDER BY ((("TripletMismatches"."PatientID")::text || '_'::text) || ("TripletMismatches"."SpenderID")::text), "WartelisteAktiv"."WLID", "WartelisteAktiv"."PatientID", "WartelisteAktiv"."StartWarteliste", "WartelisteAktiv"."EndeWarteliste", "WartelisteAktiv"."WartenAktiviert", "WartelisteAktiv"."Prioritaet", "WartelisteAktiv"."KpAbDatum", "WartelisteAktiv"."Narkosefrom", "WartelisteAktiv"."KeratoplastikAuge", "WartelisteAktiv"."KeratoplastikGesamt", "WartelisteAktiv"."Auge", "WartelisteAktiv"."Bemerkungen", "WartelisteAktiv"."MaxHLAMismatches", "WartelisteAktiv"."GrundExitWL", "WartelisteAktiv"."BIS", "WartelisteAktiv"."BISNR", "WartelisteAktiv"."Privatpatient", "WartelisteAktiv"."TransplantationenGesamt", "WartelisteAktiv"."TransfusionenGesamt", "WartelisteAktiv"."SchwangerschaftenGesamt", "WartelisteAktiv"."IDZentrum", "WartelisteAktiv"."IDOperateur", "WartelisteAktiv"."TrepanTp", "WartelisteAktiv"."TrepanPat", "WartelisteAktiv"."IDOrgankultur", "WartelisteAktiv"."IDOPArt", "WartelisteAktiv"."IDTrepanart", "WartelisteAktiv"."IDOPIndikationsdiagnose", "WartelisteAktiv"."IDMeldenderArzt", "WartelisteAktiv"."ID", "WartelisteAktiv"."Name", "WartelisteAktiv"."Vorname", "WartelisteAktiv"."Geburtsdatum", "WartelisteAktiv"."Anschrift", "WartelisteAktiv"."PLZ", "WartelisteAktiv"."Ort", "WartelisteAktiv".weiblich, "WartelisteAktiv"."Telefon1", "WartelisteAktiv"."Telefon2", "WartelisteAktiv"."VerstorbenAm", "WartelisteAktiv"."PatAlter", "WartelisteAktiv"."WartezeitBislang", "WartelisteAktiv"."PrivatVerbose", "TripletMismatches"."SpenderID", "TripletMismatches"."TripletMismatches";


ALTER TABLE public."TripletWartelistenMatcherSpender" OWNER TO root;

--
-- Name: TripletWartelistenMatcherKultur; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "TripletWartelistenMatcherKultur" AS
    SELECT "TripletWartelistenMatcherSpender"."SpPat", "TripletWartelistenMatcherSpender"."WLID", "TripletWartelistenMatcherSpender"."PatientID", "TripletWartelistenMatcherSpender"."StartWarteliste", "TripletWartelistenMatcherSpender"."EndeWarteliste", "TripletWartelistenMatcherSpender"."WartenAktiviert", "TripletWartelistenMatcherSpender"."Prioritaet", "TripletWartelistenMatcherSpender"."KpAbDatum", "TripletWartelistenMatcherSpender"."Narkosefrom", "TripletWartelistenMatcherSpender"."KeratoplastikAuge", "TripletWartelistenMatcherSpender"."KeratoplastikGesamt", "TripletWartelistenMatcherSpender"."Auge", "TripletWartelistenMatcherSpender"."Bemerkungen", "TripletWartelistenMatcherSpender"."MaxHLAMismatches", "TripletWartelistenMatcherSpender"."GrundExitWL", "TripletWartelistenMatcherSpender"."BIS", "TripletWartelistenMatcherSpender"."BISNR", "TripletWartelistenMatcherSpender"."Privatpatient", "TripletWartelistenMatcherSpender"."TransplantationenGesamt", "TripletWartelistenMatcherSpender"."TransfusionenGesamt", "TripletWartelistenMatcherSpender"."SchwangerschaftenGesamt", "TripletWartelistenMatcherSpender"."IDZentrum", "TripletWartelistenMatcherSpender"."IDOperateur", "TripletWartelistenMatcherSpender"."TrepanTp", "TripletWartelistenMatcherSpender"."TrepanPat", "TripletWartelistenMatcherSpender"."IDOrgankultur", "TripletWartelistenMatcherSpender"."IDOPArt", "TripletWartelistenMatcherSpender"."IDTrepanart", "TripletWartelistenMatcherSpender"."IDOPIndikationsdiagnose", "TripletWartelistenMatcherSpender"."IDMeldenderArzt", "TripletWartelistenMatcherSpender"."ID", "TripletWartelistenMatcherSpender"."Name", "TripletWartelistenMatcherSpender"."Vorname", "TripletWartelistenMatcherSpender"."Geburtsdatum", "TripletWartelistenMatcherSpender"."Anschrift", "TripletWartelistenMatcherSpender"."PLZ", "TripletWartelistenMatcherSpender"."Ort", "TripletWartelistenMatcherSpender".weiblich, "TripletWartelistenMatcherSpender"."Telefon1", "TripletWartelistenMatcherSpender"."Telefon2", "TripletWartelistenMatcherSpender"."VerstorbenAm", "TripletWartelistenMatcherSpender"."PatAlter", "TripletWartelistenMatcherSpender"."WartezeitBislang", "TripletWartelistenMatcherSpender"."PrivatVerbose", "TripletWartelistenMatcherSpender"."SpenderID", "TripletWartelistenMatcherSpender"."TripletMismatches", "KultivierteHornhaeute"."Auge" AS "SPAuge", "KultivierteHornhaeute"."IDOrgankultur" AS "realIDOrgankultur" FROM "TripletWartelistenMatcherSpender", "KultivierteHornhaeute" "KultivierteHornhaeute" WHERE ("TripletWartelistenMatcherSpender"."SpenderID" = "KultivierteHornhaeute"."IDSpender");


ALTER TABLE public."TripletWartelistenMatcherKultur" OWNER TO root;

--
-- Name: TripletWartelistenMatcherKulturDR; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "TripletWartelistenMatcherKulturDR" AS
    SELECT "TripletWartelistenMatcherKultur"."SpPat", "TripletWartelistenMatcherKultur"."WLID", "TripletWartelistenMatcherKultur"."PatientID", "TripletWartelistenMatcherKultur"."StartWarteliste", "TripletWartelistenMatcherKultur"."EndeWarteliste", "TripletWartelistenMatcherKultur"."WartenAktiviert", "TripletWartelistenMatcherKultur"."Prioritaet", "TripletWartelistenMatcherKultur"."KpAbDatum", "TripletWartelistenMatcherKultur"."Narkosefrom", "TripletWartelistenMatcherKultur"."KeratoplastikAuge", "TripletWartelistenMatcherKultur"."KeratoplastikGesamt", "TripletWartelistenMatcherKultur"."Auge", "TripletWartelistenMatcherKultur"."Bemerkungen", "TripletWartelistenMatcherKultur"."MaxHLAMismatches", "TripletWartelistenMatcherKultur"."GrundExitWL", "TripletWartelistenMatcherKultur"."BIS", "TripletWartelistenMatcherKultur"."BISNR", "TripletWartelistenMatcherKultur"."Privatpatient", "TripletWartelistenMatcherKultur"."TransplantationenGesamt", "TripletWartelistenMatcherKultur"."TransfusionenGesamt", "TripletWartelistenMatcherKultur"."SchwangerschaftenGesamt", "TripletWartelistenMatcherKultur"."IDZentrum", "TripletWartelistenMatcherKultur"."IDOperateur", "TripletWartelistenMatcherKultur"."TrepanTp", "TripletWartelistenMatcherKultur"."TrepanPat", "TripletWartelistenMatcherKultur"."IDOrgankultur", "TripletWartelistenMatcherKultur"."IDOPArt", "TripletWartelistenMatcherKultur"."IDTrepanart", "TripletWartelistenMatcherKultur"."IDOPIndikationsdiagnose", "TripletWartelistenMatcherKultur"."IDMeldenderArzt", "TripletWartelistenMatcherKultur"."ID", "TripletWartelistenMatcherKultur"."Name", "TripletWartelistenMatcherKultur"."Vorname", "TripletWartelistenMatcherKultur"."Geburtsdatum", "TripletWartelistenMatcherKultur"."Anschrift", "TripletWartelistenMatcherKultur"."PLZ", "TripletWartelistenMatcherKultur"."Ort", "TripletWartelistenMatcherKultur".weiblich, "TripletWartelistenMatcherKultur"."Telefon1", "TripletWartelistenMatcherKultur"."Telefon2", "TripletWartelistenMatcherKultur"."VerstorbenAm", "TripletWartelistenMatcherKultur"."PatAlter", "TripletWartelistenMatcherKultur"."WartezeitBislang", "TripletWartelistenMatcherKultur"."PrivatVerbose", "TripletWartelistenMatcherKultur"."SpenderID", "TripletWartelistenMatcherKultur"."TripletMismatches", "TripletWartelistenMatcherKultur"."SPAuge", "TripletWartelistenMatcherKultur"."realIDOrgankultur", "HLAAlleleCountSpenderBroadDR"."IDSpender", CASE WHEN ("HLAMismatchesBroadDR"."HLAMismatches" IS NOT NULL) THEN "HLAMismatchesBroadDR"."HLAMismatches" WHEN (2 IS NOT NULL) THEN "HLAAlleleCountSpenderBroadDR"."AlleleCount" ELSE NULL::bigint END AS "DRMismatches" FROM ("TripletWartelistenMatcherKultur" LEFT JOIN "HLAMismatchesBroadDR" ON (("TripletWartelistenMatcherKultur"."SpPat" = "HLAMismatchesBroadDR"."PatSp"))), "HLAAlleleCountSpenderBroadDR" WHERE ("HLAAlleleCountSpenderBroadDR"."IDSpender" = "TripletWartelistenMatcherKultur"."SpenderID");


ALTER TABLE public."TripletWartelistenMatcherKulturDR" OWNER TO postgres;

--
-- Name: AllMatches; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "AllMatches" AS
    (SELECT 1 AS "Matchmode", "TripletWartelistenMatcherKulturDR"."WLID", "TripletWartelistenMatcherKulturDR"."PatientID" AS "IDPatient", "TripletWartelistenMatcherKulturDR"."realIDOrgankultur" AS "IDOrgankultur", "TripletWartelistenMatcherKulturDR"."TripletMismatches" AS "MProp1", "TripletWartelistenMatcherKulturDR"."DRMismatches" AS "MProp2", "TripletWartelistenMatcherKulturDR"."IDOrgankultur" AS "allocIDOrgankultur", "TripletWartelistenMatcherKulturDR"."WartezeitBislang" AS "WZ", "TripletWartelistenMatcherKulturDR"."Name", "TripletWartelistenMatcherKulturDR"."Vorname", "TripletWartelistenMatcherKulturDR"."PatAlter", "TripletWartelistenMatcherKulturDR"."MaxHLAMismatches", "TripletWartelistenMatcherKulturDR"."IDZentrum" FROM "TripletWartelistenMatcherKulturDR" UNION SELECT 2 AS "Matchmode", "HLAWartelistenMatcherKultur"."WLID", "HLAWartelistenMatcherKultur"."IDPatient", "HLAWartelistenMatcherKultur"."realIDOrgankultur" AS "IDOrgankultur", "HLAWartelistenMatcherKultur"."HLAMismatches" AS "MProp1", 0 AS "MProp2", "HLAWartelistenMatcherKultur"."IDOrgankultur" AS "allocIDOrgankultur", "HLAWartelistenMatcherKultur"."WartezeitBislang" AS "WZ", "HLAWartelistenMatcherKultur"."Name", "HLAWartelistenMatcherKultur"."Vorname", "HLAWartelistenMatcherKultur"."PatAlter", "HLAWartelistenMatcherKultur"."MaxHLAMismatches", "HLAWartelistenMatcherKultur"."IDZentrum" FROM "HLAWartelistenMatcherKultur") UNION SELECT 3 AS "Matchmode", "WartelisteAktiv"."WLID", "WartelisteAktiv"."PatientID" AS "IDPatient", NULL::integer AS "IDOrgankultur", COALESCE("WartelisteAktiv"."MaxHLAMismatches", 6) AS "MProp1", 0 AS "MProp2", "WartelisteAktiv"."IDOrgankultur" AS "allocIDOrgankultur", "WartelisteAktiv"."WartezeitBislang" AS "WZ", "WartelisteAktiv"."Name", "WartelisteAktiv"."Vorname", "WartelisteAktiv"."PatAlter", "WartelisteAktiv"."MaxHLAMismatches", "WartelisteAktiv"."IDZentrum" FROM "WartelisteAktiv" WHERE (("WartelisteAktiv"."KpAbDatum" IS NULL) OR ((("WartelisteAktiv"."KpAbDatum")::timestamp with time zone - '14 days'::interval) < now()));


ALTER TABLE public."AllMatches" OWNER TO postgres;

--
-- Name: Mitarbeiter; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Mitarbeiter" (
    "ID" integer DEFAULT nextval(('"Mitarbeiter_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    "Vorname" character varying(50),
    "Titel" character varying(50),
    "Funktion" character varying(50),
    "Strasse" character varying(50),
    "PLZ" integer,
    "Ort" character varying(50),
    "Telefon" character varying(50),
    "Mobil" character varying(50),
    "Fax" character varying(50),
    extern boolean DEFAULT false NOT NULL,
    hide boolean DEFAULT false NOT NULL,
    role smallint DEFAULT 0,
    operiert boolean DEFAULT false,
    "isOA" boolean,
    weiblich boolean,
    email text
);


ALTER TABLE public."Mitarbeiter" OWNER TO postgres;

--
-- Name: AllMatchesVerbose; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllMatchesVerbose" AS
    SELECT "AllMatches"."Matchmode", "AllMatches"."WLID", "AllMatches"."IDPatient", "AllMatches"."IDOrgankultur", "AllMatches"."MProp1", "AllMatches"."MProp2", "AllMatches"."allocIDOrgankultur", reformat_interval(("AllMatches"."WZ")::text) AS "WZ", "AllMatches"."Name", "AllMatches"."Vorname", reformat_interval(("AllMatches"."PatAlter")::text) AS "PatAlter", "AllMatches"."MaxHLAMismatches", "AllMatches"."IDZentrum", CASE WHEN ((("AllMatches"."IDZentrum" = 1) AND ("Warteliste"."Privatpatient" = true)) AND (("Mitarbeiter"."Name")::text = 'Reinhard'::text)) THEN 'P'::text WHEN (("AllMatches"."IDZentrum" = 1) AND (("Mitarbeiter"."Name")::text = 'Reinhard'::text)) THEN 'R'::text WHEN (("AllMatches"."IDZentrum" = 1) AND ("Warteliste"."Privatpatient" = true)) THEN 'p'::text WHEN ("AllMatches"."IDZentrum" = 1) THEN '1'::text ELSE ''::text END AS privat, "Mitarbeiter"."Name" AS operateur FROM (("AllMatches" JOIN "Warteliste" ON (("Warteliste"."ID" = "AllMatches"."WLID"))) LEFT JOIN "Mitarbeiter" ON (("Mitarbeiter"."ID" = "Warteliste"."IDOperateur"))) ORDER BY "AllMatches"."WZ" DESC;


ALTER TABLE public."AllMatchesVerbose" OWNER TO root;

--
-- Name: AllNames; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllNames" AS
    SELECT DISTINCT "StammdatenPatient"."Name" FROM "StammdatenPatient" ORDER BY "StammdatenPatient"."Name";


ALTER TABLE public."AllNames" OWNER TO root;

--
-- Name: AllTripletMismatches; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AllTripletMismatches" AS
    SELECT "HLAAllelesCountSpender"."IDPatient", "HLAAllelesCountSpender"."SpenderID", ("HLAAllelesCountSpender"."AlleleCount" - COALESCE("MatchCount"."MatchCount", (0)::bigint)) AS "MM" FROM (((SELECT count("HLAAllelesSpender"."Epitope") AS "AlleleCount", "HLAAllelesSpender"."SpenderID", "HLAAllelesSpender"."IDPatient" FROM (SELECT DISTINCT ta."Epitope", oka."IDSpender" AS "SpenderID", wla."PatientID" AS "IDPatient" FROM ((((("HLASpender" hsa JOIN "Organkultur" oka ON ((oka."IDSpender" = hsa."IDSpender"))) JOIN "StammdatenHLA" sha ON ((sha."ID" = hsa."IDHLA"))) JOIN "TripletHLAAllelesPCR" tpa ON (((tpa."NameSplit")::text = (sha."Split")::text))) JOIN "Triplets" ta ON ((ta."IDAllele" = tpa."ID"))) JOIN "Warteliste" wla ON ((oka."IDWarteliste" = wla."ID"))) ORDER BY ta."Epitope", oka."IDSpender", wla."PatientID") "HLAAllelesSpender" GROUP BY "HLAAllelesSpender"."IDPatient", "HLAAllelesSpender"."SpenderID") "HLAAllelesCountSpender" LEFT JOIN (SELECT "HLAAllelesPatient"."IDPatient", "HLAAllelesSpender"."SpenderID", count("HLAAllelesPatient"."IDPatient") AS "MatchCount" FROM (("Organkultur" okb JOIN (SELECT DISTINCT tb."Epitope", wlb."PatientID" AS "IDPatient", wlb."ID" AS "IDWL" FROM ((((("HLAPatient" JOIN "Warteliste" wlb ON (("HLAPatient"."IDPatient" = wlb."PatientID"))) JOIN "StammdatenHLA" shb ON ((shb."ID" = "HLAPatient"."IDHLA"))) JOIN "TripletHLAAllelesPCR" tpb ON (((tpb."NameSplit")::text = (shb."Split")::text))) JOIN "Triplets" tb ON ((tb."IDAllele" = tpb."ID"))) JOIN "Organkultur" okc ON ((okc."IDWarteliste" = wlb."ID"))) ORDER BY tb."Epitope", wlb."PatientID", wlb."ID") "HLAAllelesPatient" ON ((okb."IDWarteliste" = "HLAAllelesPatient"."IDWL"))) JOIN (SELECT DISTINCT tc."Epitope", oke."IDSpender" AS "SpenderID" FROM (((("HLASpender" hsb JOIN "Organkultur" oke ON ((oke."IDSpender" = hsb."IDSpender"))) JOIN "StammdatenHLA" shc ON ((shc."ID" = hsb."IDHLA"))) JOIN "TripletHLAAllelesPCR" tpc ON (((tpc."NameSplit")::text = (shc."Split")::text))) JOIN "Triplets" tc ON ((tc."IDAllele" = tpc."ID"))) ORDER BY tc."Epitope", oke."IDSpender") "HLAAllelesSpender" ON ((okb."IDSpender" = "HLAAllelesSpender"."SpenderID"))) WHERE (("HLAAllelesPatient"."Epitope")::text = ("HLAAllelesSpender"."Epitope")::text) GROUP BY "HLAAllelesPatient"."IDPatient", "HLAAllelesSpender"."SpenderID") "MatchCount" ON ((("HLAAllelesCountSpender"."SpenderID" = "MatchCount"."SpenderID") AND ("MatchCount"."IDPatient" = "HLAAllelesCountSpender"."IDPatient")))) JOIN (SELECT count(a1."Broad") AS "AlleleCountPatient", a1."IDPatient" FROM (SELECT DISTINCT "StammdatenHLA"."Broad", "HLAPatient"."IDPatient" FROM ("HLAPatient" JOIN "StammdatenHLA" ON ((("StammdatenHLA"."ID" = "HLAPatient"."IDHLA") AND ("StammdatenHLA"."Klasse" = 1)))) ORDER BY "StammdatenHLA"."Broad", "HLAPatient"."IDPatient") a1 GROUP BY a1."IDPatient") a2 ON ((a2."IDPatient" = "HLAAllelesCountSpender"."IDPatient"))) WHERE ((a2."AlleleCountPatient" > 0) AND ("HLAAllelesCountSpender"."AlleleCount" > 0)) ORDER BY "HLAAllelesCountSpender"."IDPatient";


ALTER TABLE public."AllTripletMismatches" OWNER TO root;

--
-- Name: Diagnose; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Diagnose" (
    "ID" integer DEFAULT nextval(('"Diagnose_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(150),
    "Kategorie1" integer,
    "Kategorie2" integer,
    "ICD1" character varying(50),
    "Prop1" character varying(50),
    "ICD2" character varying(80),
    "BefundText" character varying(500),
    "ArztbriefName" character varying(500),
    auto boolean
);


ALTER TABLE public."Diagnose" OWNER TO postgres;

--
-- Name: AlleDiagnosen; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AlleDiagnosen" AS
    SELECT min("Diagnose"."ID") AS "ID", "Diagnose"."Name", "Diagnose"."Kategorie1", "Diagnose"."Kategorie2" FROM "Diagnose" GROUP BY "Diagnose"."Name", "Diagnose"."Kategorie1", "Diagnose"."Kategorie2" ORDER BY "Diagnose"."Name";


ALTER TABLE public."AlleDiagnosen" OWNER TO root;

--
-- Name: AlleLaender; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "AlleLaender" AS
    SELECT DISTINCT "StammdatenPatient"."Land" FROM "StammdatenPatient" WHERE ("StammdatenPatient"."Land" IS NOT NULL) ORDER BY "StammdatenPatient"."Land";


ALTER TABLE public."AlleLaender" OWNER TO root;

--
-- Name: Ambulanzpatienten; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Ambulanzpatienten" (
    "ID" integer DEFAULT nextval(('"Ambulanzpatienten_ID_seq"'::text)::regclass) NOT NULL,
    "PIZ" character varying(50),
    "Kostenstelle" character varying(50),
    "Name" character varying(50),
    "Vorname" character varying(50),
    "Geburtsdatum" date,
    "IDPatient" integer,
    "Datum" date,
    erledigt boolean DEFAULT false NOT NULL
);


ALTER TABLE public."Ambulanzpatienten" OWNER TO postgres;

--
-- Name: Ambulanzpatienten_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Ambulanzpatienten_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ambulanzpatienten_ID_seq" OWNER TO postgres;

--
-- Name: Ambulanzpatienten_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ambulanzpatienten_ID_seq"', 3239, true);


--
-- Name: Applikationsfrequenz; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Applikationsfrequenz" (
    "ID" integer DEFAULT nextval(('"Applikationsfrequenz_ID_seq"'::text)::regclass) NOT NULL,
    "Frequenz" character varying(50),
    "Kategorie" integer
);


ALTER TABLE public."Applikationsfrequenz" OWNER TO postgres;

--
-- Name: Applikationsfrequenz_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Applikationsfrequenz_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Applikationsfrequenz_ID_seq" OWNER TO postgres;

--
-- Name: Applikationsfrequenz_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Applikationsfrequenz_ID_seq"', 15, true);


--
-- Name: AufnahmeDiagnose; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "AufnahmeDiagnose" (
    "ID" integer DEFAULT nextval(('"AufnahmeDiagnose_ID_seq"'::text)::regclass) NOT NULL,
    "DiagnoseID" integer NOT NULL,
    "Auge" character varying(50),
    "Parameter" character varying(50),
    "StationaerID" integer,
    "Datum" timestamp without time zone
);


ALTER TABLE public."AufnahmeDiagnose" OWNER TO postgres;

--
-- Name: AufnahmeDiagnoseKategorie; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "AufnahmeDiagnoseKategorie" AS
    SELECT "Diagnose"."Name", "Diagnose"."Prop1", "Diagnose"."Kategorie2", "Diagnose"."ArztbriefName", "Diagnose"."Kategorie1", "AufnahmeDiagnose"."Auge", "AufnahmeDiagnose"."ID", "AufnahmeDiagnose"."DiagnoseID", "AufnahmeDiagnose"."StationaerID", "AufnahmeDiagnose"."Datum", "AufnahmeDiagnose"."Parameter" FROM ("Diagnose" JOIN "AufnahmeDiagnose" ON (("Diagnose"."ID" = "AufnahmeDiagnose"."DiagnoseID"))) ORDER BY "AufnahmeDiagnose"."ID";


ALTER TABLE public."AufnahmeDiagnoseKategorie" OWNER TO postgres;

--
-- Name: AufnahmeDiagnose_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AufnahmeDiagnose_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AufnahmeDiagnose_ID_seq" OWNER TO postgres;

--
-- Name: AufnahmeDiagnose_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AufnahmeDiagnose_ID_seq"', 19130, true);


--
-- Name: Befund; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Befund" (
    "ID" integer DEFAULT nextval(('"Befund_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(250),
    "Kategorie" integer,
    auto boolean
);


ALTER TABLE public."Befund" OWNER TO postgres;

--
-- Name: Befund_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Befund_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Befund_ID_seq" OWNER TO postgres;

--
-- Name: Befund_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Befund_ID_seq"', 4096, true);


--
-- Name: BlutgruppePatient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "BlutgruppePatient" (
    "ID" integer DEFAULT nextval(('"BlutgruppePatient_ID_seq"'::text)::regclass) NOT NULL,
    "IDPatient" integer,
    "IDBlutgruppe" integer NOT NULL,
    "Datum" timestamp without time zone
);


ALTER TABLE public."BlutgruppePatient" OWNER TO postgres;

--
-- Name: BlutgruppePatient_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BlutgruppePatient_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BlutgruppePatient_ID_seq" OWNER TO postgres;

--
-- Name: BlutgruppePatient_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BlutgruppePatient_ID_seq"', 7465, true);


--
-- Name: BlutgruppeSpender; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "BlutgruppeSpender" (
    "ID" integer DEFAULT nextval(('"BlutgruppeSpender_ID_seq"'::text)::regclass) NOT NULL,
    "IDSpender" integer,
    "IDBlutgruppe" integer NOT NULL,
    "Datum" timestamp without time zone
);


ALTER TABLE public."BlutgruppeSpender" OWNER TO postgres;

--
-- Name: BlutgruppeSpender_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BlutgruppeSpender_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BlutgruppeSpender_ID_seq" OWNER TO postgres;

--
-- Name: BlutgruppeSpender_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BlutgruppeSpender_ID_seq"', 8483, true);


--
-- Name: Brief; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Brief" (
    "ID" integer DEFAULT nextval(('"Brief_ID_seq"'::text)::regclass) NOT NULL,
    "StationaerID" integer,
    "Datum" timestamp without time zone NOT NULL,
    "Untersuchungsdatum" timestamp without time zone,
    "OberarztID" integer,
    "ArztID" integer,
    "Wiedervorstellung" timestamp without time zone,
    "Epikrise" text,
    "Anamnese" text,
    "sphRA" character varying(50),
    "sphLA" character varying(50),
    "cylRA" character varying(50),
    "cylLA" character varying(50),
    "AchseRA" character varying(50),
    "AchseLA" character varying(50),
    "EZD1" character varying(50),
    "EZD2" character varying(50),
    "VisusRA" character varying(50),
    "VisusLA" character varying(50),
    "TensioRA" character varying(50),
    "TensioLA" character varying(50),
    "TensioPalpRA" boolean DEFAULT true NOT NULL,
    "TensioPalpLA" boolean DEFAULT true NOT NULL,
    "refrRA" character varying(50),
    "refrLA" character varying(50),
    "Nachrichtlich" boolean DEFAULT false NOT NULL,
    "keratometrischeRefraktion1" real,
    "keratometrischeRefraktion2" real,
    "keratometrischeAchse1" real,
    "keratometrischeAchse2" real,
    "AnzahlFortlaufendeFaeden" integer,
    "TpTrueb" boolean DEFAULT false NOT NULL,
    "SchirmerII1" integer,
    "SchirmerII2" integer,
    "BUT1" integer,
    "BUT2" integer,
    "IR" boolean DEFAULT false NOT NULL,
    "ARsph" character varying(50),
    "ARcyl" character varying(50),
    "ARAchse" character varying(50),
    "Orb1" character varying(50),
    "Orb2" character varying(50),
    "Orb3" character varying(50),
    "Pachy" character varying(50),
    "EZD" real,
    "Orb4" character varying(50),
    "RADiagnosenText" character varying(5000),
    "LADiagnosenText" character varying(5000),
    "BADiagnosenText" character varying(5000),
    "RABefundText" character varying(5000),
    "LABefundText" character varying(5000),
    "EpikriseText" character varying(5000),
    "AllgemeindiagnosenText" character varying(5000),
    date_insert timestamp with time zone
);


ALTER TABLE public."Brief" OWNER TO postgres;

--
-- Name: BriefBefund; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "BriefBefund" (
    "ID" integer DEFAULT nextval(('"BriefBefund_ID_seq"'::text)::regclass) NOT NULL,
    "BefundID" integer,
    "Auge" character varying(50),
    "Kategorie" integer,
    "Parameter" character varying(50),
    "BriefID" integer,
    "Datum" timestamp without time zone
);


ALTER TABLE public."BriefBefund" OWNER TO postgres;

--
-- Name: BriefBefundKategorie; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "BriefBefundKategorie" AS
    SELECT "Befund"."Name", "Befund"."Kategorie", "BriefBefund"."Auge", "BriefBefund"."ID", "BriefBefund"."BefundID", "BriefBefund"."BriefID", "BriefBefund"."Parameter", "BriefBefund"."Datum" FROM ("Befund" JOIN "BriefBefund" ON (("Befund"."ID" = "BriefBefund"."BefundID"))) ORDER BY "BriefBefund"."ID";


ALTER TABLE public."BriefBefundKategorie" OWNER TO root;

--
-- Name: BriefBefund_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BriefBefund_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BriefBefund_ID_seq" OWNER TO postgres;

--
-- Name: BriefBefund_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BriefBefund_ID_seq"', 8590, true);


--
-- Name: Brief_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Brief_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Brief_ID_seq" OWNER TO postgres;

--
-- Name: Brief_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Brief_ID_seq"', 5086, true);


--
-- Name: Diagnose_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Diagnose_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Diagnose_ID_seq" OWNER TO postgres;

--
-- Name: Diagnose_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Diagnose_ID_seq"', 1420, true);


--
-- Name: ErforderlicheZahlNegativerTests; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "ErforderlicheZahlNegativerTests" AS
    SELECT count(*) AS count FROM "StammdatenSerologie" WHERE (("StammdatenSerologie".uncritical = false) OR ("StammdatenSerologie".uncritical IS NULL));


ALTER TABLE public."ErforderlicheZahlNegativerTests" OWNER TO root;

--
-- Name: FSLaser; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "FSLaser" AS
    SELECT a."ID", a."OPDatum", a."TP", a."Name", a."Vorname", a."Geburtsdatum", a."Auge", a.meanpachy, a.maxpachy, a.meanpachy AS "DO_DepthInCornea", a."FSLalignment_incisions", (GREATEST((a."FSLanteriorDiameter")::numeric, (a."FSLposteriorDiameter")::numeric) + 0.1) AS "DO_OuterDiameter", (LEAST((a."FSLanteriorDiameter")::numeric, (a."FSLposteriorDiameter")::numeric) - 0.1) AS "DO_InnerDiameter", 2.6 AS "DO_Energy", (a.meanpachy + (30)::double precision) AS "DO_AnteriorSideCut_PostDepth", a."FSLanteriorDiameter" AS "DO_AnteriorSideCut_Diameter", 2.6 AS "DO_AnteriorSideCut_Energy", a."FSLposteriorDiameter" AS "DO_PosteriorSideCut_Diameter", (a.meanpachy - (30)::double precision) AS "DO_PosteriorSideCut_AnteriorDepth", 1000 AS "DO_PosteriorSideCut_PostDepth", 2.6 AS "DO_PosteriorSideCut_Energy", a.meanpachy AS "RC_DepthInCornea", (GREATEST((a."FSLanteriorDiameter")::numeric, (a."FSLposteriorDiameter")::numeric) + 0.1) AS "RC_OuterDiameter", (LEAST((a."FSLanteriorDiameter")::numeric, (a."FSLposteriorDiameter")::numeric) - 0.1) AS "RC_InnerDiameter", 2.6 AS "RC_Energy", (a.meanpachy + (30)::double precision) AS "RC_AnteriorSideCut_PostDepth", a."FSLanteriorDiameter" AS "RC_AnteriorSideCut_Diameter", 2.6 AS "RC_AnteriorSideCut_Energy", a."FSLposteriorDiameter" AS "RC_PosteriorSideCut_Diameter", (a.meanpachy - (30)::double precision) AS "RC_PosteriorSideCut_AnteriorDepth", (a.maxpachy + (200)::double precision) AS "RC_PosteriorSideCut_PostDepth", 2.6 AS "RC_PosteriorSideCut_Energy", a."OPAuge", CASE WHEN ((a."FSLposteriorDiameter" IS NULL) OR (a."FSLanteriorDiameter" IS NULL)) THEN NULL::text WHEN (a."FSLposteriorDiameter" > a."FSLanteriorDiameter") THEN 'tophat'::text ELSE 'mushroom'::text END AS profile, CASE WHEN (a."FSLposteriorDiameter" > a."FSLanteriorDiameter") THEN 'out'::text ELSE 'in'::text END AS spiral FROM (SELECT (("Organkultur"."IDSpender")::text || ("Organkultur"."Auge")::text) AS "TP", "Warteliste"."ID", "Warteliste"."EndeWarteliste" AS "OPDatum", "StammdatenPatient"."Name", "Warteliste"."Auge", "StammdatenPatient"."Vorname", "StammdatenPatient"."Geburtsdatum", round((((("Warteliste".pachy1 + "Warteliste".pachy2) + "Warteliste".pachy3) + "Warteliste".pachy4) / (8)::double precision)) AS meanpachy, "Warteliste"."FSLalignment_incisions", GREATEST("Warteliste".pachy1, "Warteliste".pachy2, "Warteliste".pachy3, "Warteliste".pachy4) AS maxpachy, "Warteliste"."FSLanteriorDiameter", "Warteliste"."FSLposteriorDiameter", "Warteliste"."Auge" AS "OPAuge" FROM (("Warteliste" JOIN "StammdatenPatient" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) JOIN "Organkultur" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) WHERE ("Organkultur"."EndOfCulture" = false)) a;


ALTER TABLE public."FSLaser" OWNER TO root;

--
-- Name: FUEndothel; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "FUEndothel" AS
    SELECT s."WLID", s."Name", s."EndeWarteliste" AS "OPDatum", b."Datum", b."EZD", ln((b."EZD")::double precision) AS "LogEZD", (date_part('epoch'::text, age((b."Datum")::timestamp with time zone, (s."EndeWarteliste")::timestamp with time zone)) / (((60 * 60) * 24))::double precision) AS latency FROM ("WartelisteUebersicht" s JOIN "Brief" b ON ((b."StationaerID" = s."WLID"))) WHERE (b."EZD" > (0)::double precision);


ALTER TABLE public."FUEndothel" OWNER TO root;

--
-- Name: FUEndothelMean; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "FUEndothelMean" AS
    SELECT b."WLID", avg(b.latency) AS "meanX", avg(b."LogEZD") AS "meanY", count(b."LogEZD") AS "N", sum((b.latency * b."LogEZD")) AS "sumXY", sum((b.latency * b.latency)) AS "sumXX" FROM "FUEndothel" b GROUP BY b."WLID";


ALTER TABLE public."FUEndothelMean" OWNER TO root;

--
-- Name: FUEndothelSum; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "FUEndothelSum" AS
    SELECT b."WLID", b."N", ((b."sumXY" - (((b."N")::double precision * b."meanX") * b."meanY")) / ((b."N" - 1))::double precision) AS "Sxy", ((b."sumXX" - (((b."N")::double precision * b."meanX") * b."meanX")) / ((b."N" - 1))::double precision) AS "Sxx" FROM "FUEndothelMean" b WHERE (b."N" > 2);


ALTER TABLE public."FUEndothelSum" OWNER TO root;

--
-- Name: FUEndothelLoss; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "FUEndothelLoss" AS
    SELECT b."WLID", b."N", (b."Sxy" / b."Sxx") AS slope, ((100)::double precision * ((1)::double precision - exp(((b."Sxy" / b."Sxx") * (365)::double precision)))) AS "relativeAnnualLoss" FROM "FUEndothelSum" b;


ALTER TABLE public."FUEndothelLoss" OWNER TO root;

--
-- Name: StammdatenQuelle; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenQuelle" (
    "ID" integer DEFAULT nextval(('"StammdatenQuelle_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    "Intensivstation" boolean DEFAULT false NOT NULL,
    "Extern" boolean DEFAULT false NOT NULL,
    anfahrtsweg integer
);


ALTER TABLE public."StammdatenQuelle" OWNER TO postgres;

--
-- Name: GesamtstatistikOrgankultur; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "GesamtstatistikOrgankultur" AS
    SELECT "Organkultur"."ID" AS "IDOrgankultur", "Organkultur"."IDSpender", "Organkultur"."Auge", "Organkultur"."IDWarteliste", "Organkultur"."IDVerwerfungsgrund", "MedienWechselLast"."KulturAusDatum" AS "DatumKulturAusgang", "MedienWechselFirst"."KulturEinDatum" AS "DatumKulturEingang", age("MedienWechselLast"."KulturAusDatum", "MedienWechselFirst"."KulturEinDatum") AS "KulturdauerGesamt", age(("MedienWechselLast"."KulturEinDatum")::timestamp with time zone) AS "KulturdauerAktuell", "MedienWechselLast"."EZD" AS "LetzteEZD", "MedienWechselLast"."KulturAusDatum" AS "DatumLetzteEZD", "MedienWechselFirst"."ZahlMedienwechsel", "SpenderserologieOk"."ZahlNegativerTests", "SpenderserologieOk"."SpenderAlter", "SpenderserologieOk"."PostMortemZeit", "SpenderserologieOk"."KontraindikationChecked", "MedienWechselLast"."KulturEinDatum" AS "DatumLetzterMedienwechsel", "MedienWechselLast"."KulturEinDatum" AS "DatumLetzteMiBi", "MedienWechselLast"."IDMedium" AS "IDLetztesMedium", ("MedienWechselFirst"."NarbeZentral" OR "MedienWechselFirst"."NarbePeripher") AS narben, "SpenderserologieOk"."SpenderWeiblich", "MedienWechselFirst"."EndothelPotenziellTransplantierbar" AS "Expressbefundung", "SpenderserologieOk"."Todesursache", "Warteliste"."IDZentrum", "StammdatenHornhautspender"."IDQuelle", "StammdatenQuelle"."Name" AS "NameQuelle", (date_part('epoch'::text, age("MedienWechselLast"."KulturAusDatum", "MedienWechselFirst"."KulturEinDatum")) / (((60 * 60) * 24))::double precision) AS days_kulturdauer_gesamt, (date_part('epoch'::text, age("MedienWechselLast"."KulturAusDatum", "MedienWechselLast"."KulturEinDatum")) / (((60 * 60) * 24))::double precision) AS days_kulturdauer_last FROM (((((("SpenderserologieOk" JOIN "Organkultur" ON (("SpenderserologieOk"."ID" = "Organkultur"."IDSpender"))) LEFT JOIN "Warteliste" ON (("Organkultur"."IDWarteliste" = "Warteliste"."ID"))) JOIN "MedienWechselLast" ON (("Organkultur"."ID" = "MedienWechselLast"."IDOrgankultur"))) JOIN "MedienWechselFirst" ON (("Organkultur"."ID" = "MedienWechselFirst"."IDOrgankultur"))) JOIN "StammdatenHornhautspender" ON (("Organkultur"."IDSpender" = "StammdatenHornhautspender"."ID"))) LEFT JOIN "StammdatenQuelle" ON (("StammdatenQuelle"."ID" = "StammdatenHornhautspender"."IDQuelle"))) ORDER BY "Organkultur"."IDSpender", "Organkultur"."Auge" DESC;


ALTER TABLE public."GesamtstatistikOrgankultur" OWNER TO postgres;

--
-- Name: GlobalSettings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "GlobalSettings" (
    "Key" character varying(50) NOT NULL,
    "Value" character varying(256)
);


ALTER TABLE public."GlobalSettings" OWNER TO postgres;

--
-- Name: HLAA1MaleDonors; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "HLAA1MaleDonors" AS
    SELECT "HLAAllelesSpender"."ID" AS "SpenderID" FROM ("HLAAllelesSpender" JOIN "StammdatenHornhautspender" ON (("HLAAllelesSpender"."ID" = "StammdatenHornhautspender"."ID"))) WHERE ((("HLAAllelesSpender"."Broad")::text = 'A1'::text) AND ("StammdatenHornhautspender".weiblich = false)) UNION SELECT NULL::integer AS "SpenderID";


ALTER TABLE public."HLAA1MaleDonors" OWNER TO postgres;

--
-- Name: HLAAllelesPatientPCR; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "HLAAllelesPatientPCR" AS
    SELECT "HLAAllelePatient"."ID", "StammdatenHLA"."Split", "StammdatenHLA"."PCR" FROM "StammdatenHLA", "HLAAllelePatient" WHERE ((("StammdatenHLA"."Split")::text = ("HLAAllelePatient"."Split")::text) AND ("StammdatenHLA"."IgnoreInHLAMatching" = false));


ALTER TABLE public."HLAAllelesPatientPCR" OWNER TO postgres;

--
-- Name: HLAPatient_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HLAPatient_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."HLAPatient_ID_seq" OWNER TO postgres;

--
-- Name: HLAPatient_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HLAPatient_ID_seq"', 11590, true);


--
-- Name: HLASpender_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HLASpender_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."HLASpender_ID_seq" OWNER TO postgres;

--
-- Name: HLASpender_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HLASpender_ID_seq"', 14065, true);


--
-- Name: Haplotypes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Haplotypes" (
    "ID" integer DEFAULT nextval(('"Haplotypes_ID_seq"'::text)::regclass) NOT NULL,
    allel character varying(255),
    "HaploID" integer,
    "Frequency" double precision
);


ALTER TABLE public."Haplotypes" OWNER TO postgres;

--
-- Name: HaploScreen; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "HaploScreen" AS
    SELECT "HLAAllelesPatientBroad"."ID" AS "PatID", "Haplotypes"."HaploID", min("Haplotypes"."Frequency") AS "Fq", count("HLAAllelesPatientBroad"."ID") AS "CountMatchingHaplos" FROM "HLAAllelesPatientBroad", "Haplotypes" WHERE (("HLAAllelesPatientBroad"."Broad")::text = ("Haplotypes".allel)::text) GROUP BY "HLAAllelesPatientBroad"."ID", "Haplotypes"."HaploID";


ALTER TABLE public."HaploScreen" OWNER TO postgres;

--
-- Name: HaploPrevalence2Locus; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HaploPrevalence2Locus" AS
    SELECT "HaploScreen"."Fq", "HaploScreen"."CountMatchingHaplos", "HaploScreen"."PatID" FROM "HaploScreen" WHERE ("HaploScreen"."CountMatchingHaplos" >= 2);


ALTER TABLE public."HaploPrevalence2Locus" OWNER TO root;

--
-- Name: HaploPrevalence3Locus; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "HaploPrevalence3Locus" AS
    SELECT "HaploScreen"."Fq", "HaploScreen"."CountMatchingHaplos", "HaploScreen"."PatID" FROM "HaploScreen" WHERE ("HaploScreen"."CountMatchingHaplos" = 3);


ALTER TABLE public."HaploPrevalence3Locus" OWNER TO root;

--
-- Name: Haplotypes_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Haplotypes_ID_seq"
    START WITH 4552
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Haplotypes_ID_seq" OWNER TO postgres;

--
-- Name: Haplotypes_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Haplotypes_ID_seq"', 4552, false);


--
-- Name: Instrumenten_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Instrumenten_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Instrumenten_ID_seq" OWNER TO postgres;

--
-- Name: Instrumenten_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Instrumenten_ID_seq"', 12, true);


--
-- Name: KatasterAktiv; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "KatasterAktiv" AS
    SELECT max("Warteliste"."ID") AS "IDWL", "Warteliste"."Auge", "Warteliste"."PatientID" FROM "Warteliste" WHERE ("Warteliste"."IDOrgankultur" IS NOT NULL) GROUP BY "Warteliste"."Auge", "Warteliste"."PatientID";


ALTER TABLE public."KatasterAktiv" OWNER TO root;

--
-- Name: LastDonors; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "LastDonors" AS
    SELECT "StammdatenHornhautspender"."ID", "StammdatenHornhautspender"."Name", "StammdatenHornhautspender"."Vorname", "StammdatenHornhautspender"."Geburtsdatum", "StammdatenHornhautspender"."Anschrift", "StammdatenHornhautspender"."PLZ", "StammdatenHornhautspender"."Ort", "StammdatenHornhautspender"."Todeszeitpunkt", "StammdatenHornhautspender"."IDTodesursache", "StammdatenHornhautspender"."IDQuelle", "StammdatenHornhautspender"."IDEntnahmemethodeR", "StammdatenHornhautspender"."IDEntnahmemethodeL", "StammdatenHornhautspender"."IDExplanteur", "StammdatenHornhautspender".weiblich, "StammdatenHornhautspender"."Bemerkungen", "StammdatenHornhautspender"."IDEinverstaendnisArt", "StammdatenHornhautspender"."EinverstaendnisEingeholt", "StammdatenHornhautspender"."EinverstaendnisPerson", "StammdatenHornhautspender"."NameAngehoeriger", "StammdatenHornhautspender"."Koerpergroesse", "StammdatenHornhautspender"."Koerpergewicht", "StammdatenHornhautspender"."TransfusionenExpander", "StammdatenHornhautspender"."TransfusionenSalin", "StammdatenHornhautspender"."TransfusionenRinger", "StammdatenHornhautspender"."TransfusionenDextrose", "StammdatenHornhautspender"."Transfusionen", "StammdatenHornhautspender"."Sepsis", "StammdatenHornhautspender"."Risikogruppe", "StammdatenHornhautspender"."Leukaemie", "StammdatenHornhautspender"."Immunsuppression", "StammdatenHornhautspender"."Entnahmezeitpunkt", "StammdatenHornhautspender"."Telefon", "StammdatenHornhautspender"."IDVerwefungsgrundPrimary", "StammdatenHornhautspender"."IDSterbeort", "StammdatenHornhautspender"."KontraindikationChecked", "StammdatenHornhautspender"."IDZentrum", "StammdatenHornhautspender"."ExternalID", "StammdatenHornhautspender"."ExternalDonor", "StammdatenHornhautspender".gekuehlt, "StammdatenHornhautspender"."IDMelder", "StammdatenHornhautspender"."AnschriftAngehoeriger", "StammdatenHornhautspender"."PLZAngehoeriger", "StammdatenHornhautspender"."OrtAngehoeriger", "StammdatenHornhautspender".persoenlicher_kontakt, "StammdatenHornhautspender".time_contact1, "StammdatenHornhautspender".time_contact2, "StammdatenHornhautspender".gespraechsnotiz, "StammdatenHornhautspender".einwilligung_forschung, "StammdatenHornhautspender"."IDSpenderidentifikationDurch", "StammdatenHornhautspender"."IDSpenderidentifikationMittels", "StammdatenHornhautspender"."IDPraemortemBlut", "StammdatenHornhautspender"."PIZ", "StammdatenHornhautspender".id_vorops_r, "StammdatenHornhautspender".id_vorops_l, "StammdatenHornhautspender".gesperrt, "StammdatenHornhautspender".praemortem_blut_anfordern FROM "StammdatenHornhautspender" WHERE ("StammdatenHornhautspender"."ID" > ((SELECT max("StammdatenHornhautspender"."ID") AS max FROM "StammdatenHornhautspender") - 40)) ORDER BY "StammdatenHornhautspender"."ID";


ALTER TABLE public."LastDonors" OWNER TO postgres;

--
-- Name: MedienWechselFirstEZD; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "MedienWechselFirstEZD" AS
    SELECT "Mediumwechsel"."KulturEinDatum" AS "DateEZD", "Mediumwechsel"."EZD", "Mediumwechsel"."IDOrgankultur" FROM "Mediumwechsel", (SELECT "Mediumwechsel"."IDOrgankultur" AS "IDOK", min("Mediumwechsel"."KulturEinDatum") AS "KED" FROM "Mediumwechsel" WHERE ("Mediumwechsel"."EZD" IS NOT NULL) GROUP BY "Mediumwechsel"."IDOrgankultur") "X" WHERE (("Mediumwechsel"."KulturEinDatum" = "X"."KED") AND ("X"."IDOK" = "Mediumwechsel"."IDOrgankultur"));


ALTER TABLE public."MedienWechselFirstEZD" OWNER TO postgres;

--
-- Name: Mediumwechsel_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Mediumwechsel_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Mediumwechsel_ID_seq" OWNER TO postgres;

--
-- Name: Mediumwechsel_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Mediumwechsel_ID_seq"', 20450, true);


--
-- Name: Mitarbeiter_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Mitarbeiter_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Mitarbeiter_ID_seq" OWNER TO postgres;

--
-- Name: Mitarbeiter_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Mitarbeiter_ID_seq"', 155, true);


--
-- Name: Organkultur_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Organkultur_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Organkultur_ID_seq" OWNER TO postgres;

--
-- Name: Organkultur_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Organkultur_ID_seq"', 4974, true);


--
-- Name: PEIAusgang; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "PEIAusgang" AS
    SELECT date_part('year'::text, a.ausgangsdatum) AS ausgangsjahr, date_part('year'::text, a."Entnahmezeitpunkt") AS eingangsjahr, a.entnahmemethode, a.fate, count(*) AS count FROM (SELECT b.ausgangsdatum, "StammdatenHornhautspender"."Entnahmezeitpunkt", CASE WHEN (("Organkultur"."Auge")::text = 'R'::text) THEN "StammdatenHornhautspender"."IDEntnahmemethodeR" ELSE "StammdatenHornhautspender"."IDEntnahmemethodeL" END AS entnahmemethode, CASE WHEN ("Organkultur"."IDVerwerfungsgrund" IS NOT NULL) THEN 'Verworfen'::text WHEN ("Organkultur"."IDWarteliste" IS NOT NULL) THEN 'Transplantiert'::text ELSE NULL::text END AS fate FROM (("Organkultur" JOIN "StammdatenHornhautspender" ON (("StammdatenHornhautspender"."ID" = "Organkultur"."IDSpender"))) JOIN (SELECT max("Mediumwechsel"."KulturAusDatum") AS ausgangsdatum, "Mediumwechsel"."IDOrgankultur" FROM "Mediumwechsel" GROUP BY "Mediumwechsel"."IDOrgankultur") b ON ((b."IDOrgankultur" = "Organkultur"."ID")))) a GROUP BY date_part('year'::text, a.ausgangsdatum), a.entnahmemethode, a.fate, date_part('year'::text, a."Entnahmezeitpunkt") ORDER BY date_part('year'::text, a.ausgangsdatum), a.entnahmemethode, a.fate;


ALTER TABLE public."PEIAusgang" OWNER TO root;

--
-- Name: Password; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE "Password" (
    "ID" integer DEFAULT nextval(('"Password_ID_seq"'::text)::regclass) NOT NULL,
    name text NOT NULL,
    password text,
    level integer DEFAULT 0 NOT NULL,
    pguser text,
    pgpassword text,
    ldap boolean DEFAULT false,
    "IDMitarbeiter" integer
);


ALTER TABLE public."Password" OWNER TO root;

--
-- Name: Password_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Password_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Password_ID_seq" OWNER TO postgres;

--
-- Name: Password_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Password_ID_seq"', 45, true);


--
-- Name: PositiveTests; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "PositiveTests" AS
    SELECT "SpenderNegativeTests"."IDSpender", "StammdatenSerologie"."Test" FROM ("SpenderNegativeTests" JOIN "StammdatenSerologie" ON (("StammdatenSerologie"."ID" = "SpenderNegativeTests"."IDTest"))) WHERE (("SpenderNegativeTests"."Ergebnis" = false) OR ("SpenderNegativeTests"."Ergebnis" IS NULL));


ALTER TABLE public."PositiveTests" OWNER TO root;

--
-- Name: WartelisteZentren; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "WartelisteZentren" (
    "ID" integer DEFAULT nextval(('"WartelisteZentren_ID_seq"'::text)::regclass) NOT NULL,
    "ZentrumName" character varying(50),
    "MeldetPatienten" boolean DEFAULT false NOT NULL,
    "PreisRandom" double precision,
    "PreisMatch" double precision,
    "PreisTektonisch" double precision,
    "KostentraegerTransport" boolean DEFAULT false NOT NULL,
    "VermitteltPatienten" boolean DEFAULT false NOT NULL,
    "RegistryEmail" character varying(50),
    land character varying DEFAULT 'Deutschland'::character varying
);


ALTER TABLE public."WartelisteZentren" OWNER TO postgres;

--
-- Name: QMBogenOK; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "QMBogenOK" AS
    SELECT "WartelisteZentren"."ID" AS "IDZentrum", "Warteliste"."EndeWarteliste" AS "OPDatum", "Warteliste"."IDOrgankultur" AS "IDOK", CASE WHEN ("Brief"."ID" IS NOT NULL) THEN true ELSE false END AS "BogenOK" FROM (("WartelisteZentren" JOIN "Warteliste" ON (("WartelisteZentren"."ID" = "Warteliste"."IDZentrum"))) LEFT JOIN "Brief" ON (("Brief"."StationaerID" = "Warteliste"."ID"))) WHERE (((age("Warteliste"."EndeWarteliste") > '28 days'::interval) AND ("WartelisteZentren"."ID" > 1)) AND ("Warteliste"."IDOrgankultur" IS NOT NULL)) ORDER BY "WartelisteZentren"."ID", "Warteliste"."EndeWarteliste";


ALTER TABLE public."QMBogenOK" OWNER TO root;

--
-- Name: QMBogenQuota; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "QMBogenQuota" AS
    SELECT c."IDZentrum", count(c."IDZentrum") AS count, c."BogenOK" FROM (SELECT a."IDZentrum", a."OPDatum", a."BogenOK", a."IDOK", (SELECT count(b."IDZentrum") AS count FROM "QMBogenOK" b WHERE ((a."IDZentrum" = b."IDZentrum") AND (a."IDOK" > b."IDOK"))) AS rank FROM "QMBogenOK" a) c WHERE (c.rank < 5) GROUP BY c."IDZentrum", c."BogenOK";


ALTER TABLE public."QMBogenQuota" OWNER TO root;

--
-- Name: Zentrumsanschrift; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Zentrumsanschrift" (
    "ID" integer DEFAULT nextval(('"Zentrumsanschrift_ID_seq"'::text)::regclass) NOT NULL,
    "Anrede" character varying(150),
    "Titel" character varying(50),
    "Name" character varying(50),
    "Anschrift1" character varying(50),
    "Anschrift2" character varying(50),
    "PLZ" character varying(50),
    "Ort" character varying(50),
    "Land" character varying(50),
    "Kurzname" character varying(50),
    "Langanrede" character varying(150),
    "Typ" integer,
    "Tel" character varying(50),
    "Fax" character varying(50),
    "IDZentrum" integer
);


ALTER TABLE public."Zentrumsanschrift" OWNER TO postgres;

--
-- Name: Rechnungsanschrift; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "Rechnungsanschrift" AS
    SELECT "WartelisteZentren"."ZentrumName", "Zentrumsanschrift"."ID", "Zentrumsanschrift"."Anrede", "Zentrumsanschrift"."Titel", "Zentrumsanschrift"."Name", "Zentrumsanschrift"."Anschrift1", "Zentrumsanschrift"."Anschrift2", "Zentrumsanschrift"."PLZ", "Zentrumsanschrift"."Ort", "Zentrumsanschrift"."Land", "Zentrumsanschrift"."Kurzname", "Zentrumsanschrift"."Langanrede", "Zentrumsanschrift"."Typ", "Zentrumsanschrift"."Tel", "Zentrumsanschrift"."Fax", "Zentrumsanschrift"."IDZentrum" FROM ("Zentrumsanschrift" JOIN "WartelisteZentren" ON (("WartelisteZentren"."ID" = "Zentrumsanschrift"."IDZentrum"))) WHERE ("Zentrumsanschrift"."Typ" = 2);


ALTER TABLE public."Rechnungsanschrift" OWNER TO root;

--
-- Name: SammdatenAnschrifttyp_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "SammdatenAnschrifttyp_ID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SammdatenAnschrifttyp_ID_seq" OWNER TO postgres;

--
-- Name: SammdatenAnschrifttyp_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SammdatenAnschrifttyp_ID_seq"', 6, false);


--
-- Name: SerologieSpender_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "SerologieSpender_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SerologieSpender_ID_seq" OWNER TO postgres;

--
-- Name: SerologieSpender_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SerologieSpender_ID_seq"', 12637, true);


--
-- Name: SerologieVerbose; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "SerologieVerbose" AS
    SELECT "SerologieSpender"."IDSpender", "StammdatenSerologie"."Test", CASE WHEN ("SerologieSpender"."Ergebnis" IS NULL) THEN 'N/A'::text WHEN ("SerologieSpender"."Ergebnis" = true) THEN 'neg.'::text ELSE 'pos.'::text END AS result FROM ("SerologieSpender" JOIN "StammdatenSerologie" ON (("StammdatenSerologie"."ID" = "SerologieSpender"."IDTest"))) ORDER BY "SerologieSpender"."IDTest";


ALTER TABLE public."SerologieVerbose" OWNER TO root;

--
-- Name: SpenderInzidenz; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "SpenderInzidenz" AS
    (SELECT "HaploPrevalence3Locus"."PatID", sum((("HaploPrevalence3Locus"."Fq" / (100)::double precision) * ("HaploPrevalence3Locus_1"."Fq" / (100)::double precision))) AS "ErwarteteWartezeit", 0 AS mm FROM "HaploPrevalence3Locus", "HaploPrevalence3Locus" "HaploPrevalence3Locus_1" WHERE ("HaploPrevalence3Locus"."PatID" = "HaploPrevalence3Locus_1"."PatID") GROUP BY "HaploPrevalence3Locus"."PatID" UNION SELECT "HaploPrevalence3Locus"."PatID", sum((("HaploPrevalence3Locus"."Fq" / (100)::double precision) * ("HaploPrevalence2Locus"."Fq" / (100)::double precision))) AS "ErwarteteWartezeit", 1 AS mm FROM "HaploPrevalence3Locus", "HaploPrevalence2Locus" WHERE ("HaploPrevalence3Locus"."PatID" = "HaploPrevalence2Locus"."PatID") GROUP BY "HaploPrevalence3Locus"."PatID") UNION SELECT "HaploPrevalence2Locus"."PatID", sum((("HaploPrevalence2Locus"."Fq" / (100)::double precision) * ("HaploPrevalence2MM_1"."Fq" / (100)::double precision))) AS "ErwarteteWartezeit", 2 AS mm FROM "HaploPrevalence2Locus", "HaploPrevalence2Locus" "HaploPrevalence2MM_1" WHERE ("HaploPrevalence2Locus"."PatID" = "HaploPrevalence2MM_1"."PatID") GROUP BY "HaploPrevalence2Locus"."PatID";


ALTER TABLE public."SpenderInzidenz" OWNER TO postgres;

--
-- Name: StammdatenAnschrifttyp; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE "StammdatenAnschrifttyp" (
    "ID" integer DEFAULT nextval(('"StammdatenAnschrifttyp_ID_seq"'::text)::regclass) NOT NULL,
    "Typ" character varying(50)
);


ALTER TABLE public."StammdatenAnschrifttyp" OWNER TO root;

--
-- Name: StammdatenBlutgruppe; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenBlutgruppe" (
    "ID" integer DEFAULT nextval(('"StammdatenBlutgruppe_ID_seq"'::text)::regclass) NOT NULL,
    "Allel" character varying(50)
);


ALTER TABLE public."StammdatenBlutgruppe" OWNER TO postgres;

--
-- Name: StammdatenBlutgruppe_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenBlutgruppe_ID_seq"
    START WITH 118
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenBlutgruppe_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenBlutgruppe_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenBlutgruppe_ID_seq"', 118, false);


--
-- Name: StammdatenEinstufungOrdinal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenEinstufungOrdinal" (
    "ID" integer DEFAULT nextval(('"StammdatenEinstufungOrdinal_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50),
    type integer,
    block_alloc boolean,
    block_op_arten text
);


ALTER TABLE public."StammdatenEinstufungOrdinal" OWNER TO postgres;

--
-- Name: StammdatenEinstufungOrdinal_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenEinstufungOrdinal_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenEinstufungOrdinal_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenEinstufungOrdinal_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenEinstufungOrdinal_ID_seq"', 25, true);


--
-- Name: StammdatenEinverstaendnisArt; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenEinverstaendnisArt" (
    "ID" integer DEFAULT nextval(('"StammdatenEinverstaendnisArt_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenEinverstaendnisArt" OWNER TO postgres;

--
-- Name: StammdatenEinverstaendnisArt_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenEinverstaendnisArt_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenEinverstaendnisArt_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenEinverstaendnisArt_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenEinverstaendnisArt_ID_seq"', 4, true);


--
-- Name: StammdatenEntnahmemethode; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenEntnahmemethode" (
    "ID" integer DEFAULT nextval(('"StammdatenEntnahmemethode_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenEntnahmemethode" OWNER TO postgres;

--
-- Name: StammdatenEntnahmemethode_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenEntnahmemethode_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenEntnahmemethode_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenEntnahmemethode_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenEntnahmemethode_ID_seq"', 4, false);


--
-- Name: StammdatenExitWL; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenExitWL" (
    "ID" integer DEFAULT nextval(('"StammdatenExitWL_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenExitWL" OWNER TO postgres;

--
-- Name: StammdatenExitWL_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenExitWL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenExitWL_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenExitWL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenExitWL_ID_seq"', 10, true);


--
-- Name: StammdatenHLAMatch; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenHLAMatch" (
    "ID" integer DEFAULT nextval(('"StammdatenHLAMatch_ID_seq"'::text)::regclass) NOT NULL,
    "Mismatch" integer,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenHLAMatch" OWNER TO postgres;

--
-- Name: StammdatenHLAMatch_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenHLAMatch_ID_seq"
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenHLAMatch_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenHLAMatch_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenHLAMatch_ID_seq"', 8, false);


--
-- Name: StammdatenHLA_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenHLA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenHLA_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenHLA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenHLA_ID_seq"', 166, true);


--
-- Name: StammdatenHornhautspender_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenHornhautspender_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenHornhautspender_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenHornhautspender_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenHornhautspender_ID_seq"', 2449, true);


--
-- Name: StammdatenInstrumente; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE "StammdatenInstrumente" (
    "ID" integer DEFAULT nextval(('"Instrumenten_ID_seq"'::text)::regclass) NOT NULL,
    "Kasten" smallint
);


ALTER TABLE public."StammdatenInstrumente" OWNER TO root;

--
-- Name: StammdatenMedium; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenMedium" (
    "ID" integer DEFAULT nextval(('"StammdatenMedium_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenMedium" OWNER TO postgres;

--
-- Name: StammdatenMedium_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenMedium_ID_seq"
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenMedium_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenMedium_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenMedium_ID_seq"', 3, false);


--
-- Name: StammdatenNarkose; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenNarkose" (
    "ID" integer DEFAULT nextval(('"StammdatenNarkose_ID_seq"'::text)::regclass) NOT NULL,
    "Text" character varying(50)
);


ALTER TABLE public."StammdatenNarkose" OWNER TO postgres;

--
-- Name: StammdatenNarkose_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenNarkose_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenNarkose_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenNarkose_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenNarkose_ID_seq"', 5, true);


--
-- Name: StammdatenOPVerfahren; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenOPVerfahren" (
    "ID" integer DEFAULT nextval(('"StammdatenOPVerfahren_ID_seq"'::text)::regclass) NOT NULL,
    "OPArt" character varying(50),
    "Name" character varying(150)
);


ALTER TABLE public."StammdatenOPVerfahren" OWNER TO postgres;

--
-- Name: StammdatenOPVerfahren_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenOPVerfahren_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenOPVerfahren_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenOPVerfahren_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenOPVerfahren_ID_seq"', 17, true);


--
-- Name: StammdatenPatientWL; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StammdatenPatientWL" AS
    SELECT "StammdatenPatient"."ID", "StammdatenPatient"."Name", "StammdatenPatient"."Vorname", "StammdatenPatient"."Geburtsdatum", "StammdatenPatient"."Anschrift", "StammdatenPatient"."PLZ", "StammdatenPatient"."Ort", "StammdatenPatient".weiblich, "StammdatenPatient"."Telefon1", "StammdatenPatient"."Telefon2", "StammdatenPatient"."VerstorbenAm", "StammdatenPatient"."PIZ", "StammdatenPatient"."ExternalID", "StammdatenPatient"."IDZentrum", "StammdatenPatient"."WriteProtection", "Diagnose"."Name" AS "Diag", "Warteliste"."Privatpatient", "Warteliste"."IDOPArt" FROM ((("StammdatenPatient" JOIN "Warteliste" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) LEFT JOIN "AufnahmeDiagnose" ON (("AufnahmeDiagnose"."ID" = "Warteliste"."IDOPIndikationsdiagnose"))) LEFT JOIN "Diagnose" ON (("AufnahmeDiagnose"."DiagnoseID" = "Diagnose"."ID"))) WHERE ("Warteliste"."WartenAktiviert" = true) ORDER BY "StammdatenPatient"."Name";


ALTER TABLE public."StammdatenPatientWL" OWNER TO postgres;

--
-- Name: StammdatenPatient_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenPatient_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenPatient_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenPatient_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenPatient_ID_seq"', 455625588, true);


--
-- Name: StammdatenPrioritaet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenPrioritaet" (
    "ID" integer DEFAULT nextval(('"StammdatenPrioritaet_ID_seq"'::text)::regclass) NOT NULL,
    "Text" character varying(50)
);


ALTER TABLE public."StammdatenPrioritaet" OWNER TO postgres;

--
-- Name: StammdatenPrioritaet_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenPrioritaet_ID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenPrioritaet_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenPrioritaet_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenPrioritaet_ID_seq"', 4, false);


--
-- Name: StammdatenQuelle_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenQuelle_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenQuelle_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenQuelle_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenQuelle_ID_seq"', 55, true);


--
-- Name: StammdatenSerologie_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenSerologie_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenSerologie_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenSerologie_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenSerologie_ID_seq"', 13, true);


--
-- Name: StammdatenSpenderSterbeort; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenSpenderSterbeort" (
    "ID" integer DEFAULT nextval(('"StammdatenSpenderSterbeort_ID_seq"'::text)::regclass) NOT NULL,
    "Text" character varying(50),
    "IDKlinik" integer
);


ALTER TABLE public."StammdatenSpenderSterbeort" OWNER TO postgres;

--
-- Name: StammdatenSpenderSterbeort_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenSpenderSterbeort_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenSpenderSterbeort_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenSpenderSterbeort_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenSpenderSterbeort_ID_seq"', 93, true);


--
-- Name: StammdatenSpenderVoroperation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenSpenderVoroperation" (
    "ID" integer DEFAULT nextval(('"StammdatenSpenderVoroperation_ID_seq"'::text)::regclass) NOT NULL,
    "Text" character varying(50)
);


ALTER TABLE public."StammdatenSpenderVoroperation" OWNER TO postgres;

--
-- Name: StammdatenSpenderVoroperation_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenSpenderVoroperation_ID_seq"
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenSpenderVoroperation_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenSpenderVoroperation_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenSpenderVoroperation_ID_seq"', 5, true);


--
-- Name: StammdatenTodesursache_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenTodesursache_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenTodesursache_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenTodesursache_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenTodesursache_ID_seq"', 89, true);


--
-- Name: StammdatenTransportdienst; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenTransportdienst" (
    "ID" integer DEFAULT nextval(('"StammdatenTransportdienst_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenTransportdienst" OWNER TO postgres;

--
-- Name: StammdatenTransportdienst_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenTransportdienst_ID_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenTransportdienst_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenTransportdienst_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenTransportdienst_ID_seq"', 2, false);


--
-- Name: StammdatenVerwerfungsgrund; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "StammdatenVerwerfungsgrund" (
    "ID" integer DEFAULT nextval(('"StammdatenVerwerfungsgrund_ID_seq"'::text)::regclass) NOT NULL,
    "Name" character varying(50)
);


ALTER TABLE public."StammdatenVerwerfungsgrund" OWNER TO postgres;

--
-- Name: StammdatenVerwerfungsgrund_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "StammdatenVerwerfungsgrund_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StammdatenVerwerfungsgrund_ID_seq" OWNER TO postgres;

--
-- Name: StammdatenVerwerfungsgrund_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"StammdatenVerwerfungsgrund_ID_seq"', 10, true);


--
-- Name: StatistikJahr; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StatistikJahr" AS
    SELECT date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang") AS "Year", min("GesamtstatistikOrgankultur"."SpenderAlter") AS "MinSpenderalter", max("GesamtstatistikOrgankultur"."SpenderAlter") AS "MaxSpenderalter", (avg("GesamtstatistikOrgankultur"."SpenderAlter"))::integer AS "MeanSpenderalter", min("GesamtstatistikOrgankultur"."KulturdauerGesamt") AS "MinKDgesamt", max("GesamtstatistikOrgankultur"."KulturdauerGesamt") AS "MsxKDgesamt", date_trunc('day'::text, avg("GesamtstatistikOrgankultur"."KulturdauerGesamt")) AS "MeanKDgesamt", min("GesamtstatistikOrgankultur"."PostMortemZeit") AS "MinPMZ", max("GesamtstatistikOrgankultur"."PostMortemZeit") AS "MaxPMZ", date_trunc('hour'::text, avg("GesamtstatistikOrgankultur"."PostMortemZeit")) AS "MeanPMZ", count("GSOKV"."IDVerwerfungsgrund") AS "ZahlVerworfen", count("GSOKWL"."IDWarteliste") AS "ZahlTransplantiert", (- (1)::bigint) AS "HLAMM" FROM (("GesamtstatistikOrgankultur" "GesamtstatistikOrgankultur" LEFT JOIN "GesamtstatistikOrgankultur" "GSOKWL" ON (((("GesamtstatistikOrgankultur"."IDOrgankultur" = "GSOKWL"."IDOrgankultur") AND ("GSOKWL"."IDWarteliste" IS NOT NULL)) AND ("GSOKWL"."IDWarteliste" IS NOT NULL)))) LEFT JOIN "GesamtstatistikOrgankultur" "GSOKV" ON (((("GesamtstatistikOrgankultur"."IDOrgankultur" = "GSOKV"."IDOrgankultur") AND ("GSOKV"."IDVerwerfungsgrund" IS NOT NULL)) AND (("GSOKWL"."IDWarteliste" IS NULL) OR ("GSOKWL"."IDWarteliste" = 0))))) WHERE ("GesamtstatistikOrgankultur"."DatumKulturAusgang" IS NOT NULL) GROUP BY date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang");


ALTER TABLE public."StatistikJahr" OWNER TO postgres;

--
-- Name: StatistikJahrQuelle; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StatistikJahrQuelle" AS
    SELECT (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text) AS "YMonth", "GesamtstatistikOrgankultur"."NameQuelle", count("GesamtstatistikOrgankultur"."IDOrgankultur") AS count FROM "GesamtstatistikOrgankultur" WHERE ("GesamtstatistikOrgankultur"."DatumKulturAusgang" IS NOT NULL) GROUP BY (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text), "GesamtstatistikOrgankultur"."NameQuelle";


ALTER TABLE public."StatistikJahrQuelle" OWNER TO postgres;

--
-- Name: StatistikMonat; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StatistikMonat" AS
    SELECT date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang") AS "Year", date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang") AS "Month", (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text) AS "YMonth", min("GesamtstatistikOrgankultur"."SpenderAlter") AS "MinSpenderalter", max("GesamtstatistikOrgankultur"."SpenderAlter") AS "MaxSpenderalter", (avg("GesamtstatistikOrgankultur"."SpenderAlter"))::integer AS "MeanSpenderalter", min("GesamtstatistikOrgankultur"."KulturdauerGesamt") AS "MinKDgesamt", max("GesamtstatistikOrgankultur"."KulturdauerGesamt") AS "MsxKDgesamt", date_trunc('day'::text, avg("GesamtstatistikOrgankultur"."KulturdauerGesamt")) AS "MeanKDgesamt", min("GesamtstatistikOrgankultur"."PostMortemZeit") AS "MinPMZ", max("GesamtstatistikOrgankultur"."PostMortemZeit") AS "MaxPMZ", date_trunc('hour'::text, avg("GesamtstatistikOrgankultur"."PostMortemZeit")) AS "MeanPMZ", count("GSOKV"."IDVerwerfungsgrund") AS "ZahlVerworfen", count("GSOKWL"."IDWarteliste") AS "ZahlTransplantiert", (- (1)::bigint) AS "HLAMM" FROM (("GesamtstatistikOrgankultur" "GesamtstatistikOrgankultur" LEFT JOIN "GesamtstatistikOrgankultur" "GSOKWL" ON ((("GesamtstatistikOrgankultur"."IDOrgankultur" = "GSOKWL"."IDOrgankultur") AND ("GSOKWL"."IDWarteliste" IS NOT NULL)))) LEFT JOIN "GesamtstatistikOrgankultur" "GSOKV" ON (((("GesamtstatistikOrgankultur"."IDOrgankultur" = "GSOKV"."IDOrgankultur") AND ("GSOKV"."IDVerwerfungsgrund" IS NOT NULL)) AND ("GSOKWL"."IDWarteliste" IS NULL)))) WHERE ("GesamtstatistikOrgankultur"."DatumKulturAusgang" IS NOT NULL) GROUP BY date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"), date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang");


ALTER TABLE public."StatistikMonat" OWNER TO postgres;

--
-- Name: StatistikMonatQuelle; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "StatistikMonatQuelle" AS
    SELECT (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturEingang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturEingang"))::text) AS "YMonth", "GesamtstatistikOrgankultur"."NameQuelle", count("GesamtstatistikOrgankultur"."IDOrgankultur") AS count FROM "GesamtstatistikOrgankultur" GROUP BY (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturEingang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturEingang"))::text), "GesamtstatistikOrgankultur"."NameQuelle";


ALTER TABLE public."StatistikMonatQuelle" OWNER TO root;

--
-- Name: StatistikMonatVersand; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StatistikMonatVersand" AS
    SELECT (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text) AS "YMonth", "WartelisteZentren"."ZentrumName" AS "Zentrum", count("GesamtstatistikOrgankultur"."IDZentrum") AS "ZahlVersand" FROM ("GesamtstatistikOrgankultur" "GesamtstatistikOrgankultur" JOIN "WartelisteZentren" ON (("GesamtstatistikOrgankultur"."IDZentrum" = "WartelisteZentren"."ID"))) WHERE (("GesamtstatistikOrgankultur"."IDZentrum" > 1) AND ("GesamtstatistikOrgankultur"."DatumKulturAusgang" IS NOT NULL)) GROUP BY (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text), "WartelisteZentren"."ZentrumName";


ALTER TABLE public."StatistikMonatVersand" OWNER TO postgres;

--
-- Name: StatistikMonatVerwerfung; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "StatistikMonatVerwerfung" AS
    SELECT (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text) AS "YMonth", "StammdatenVerwerfungsgrund"."Name" AS "Verwerfungsgrund", count("GesamtstatistikOrgankultur"."IDVerwerfungsgrund") AS "ZahlVerworfen" FROM ("GesamtstatistikOrgankultur" "GesamtstatistikOrgankultur" JOIN "StammdatenVerwerfungsgrund" ON (("GesamtstatistikOrgankultur"."IDVerwerfungsgrund" = "StammdatenVerwerfungsgrund"."ID"))) WHERE (("GesamtstatistikOrgankultur"."IDVerwerfungsgrund" > 0) AND ("GesamtstatistikOrgankultur"."DatumKulturAusgang" IS NOT NULL)) GROUP BY (((date_part('year'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text || '_'::text) || (date_part('month'::text, "GesamtstatistikOrgankultur"."DatumKulturAusgang"))::text), "StammdatenVerwerfungsgrund"."Name";


ALTER TABLE public."StatistikMonatVerwerfung" OWNER TO postgres;

--
-- Name: TPIDsKultiviert; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "TPIDsKultiviert" AS
    SELECT "KultivierteHornhaeute"."IDOrgankultur" AS "ID", (("KultivierteHornhaeute"."IDSpender")::text || ("KultivierteHornhaeute"."Auge")::text) AS "TPID" FROM "KultivierteHornhaeute";


ALTER TABLE public."TPIDsKultiviert" OWNER TO postgres;

--
-- Name: Transplantatversand; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Transplantatversand" (
    "ID" integer DEFAULT nextval(('"Transplantatversand_ID_seq"'::text)::regclass) NOT NULL,
    "Rechnungsbetrag" integer,
    "RechnungBezahlt" boolean DEFAULT false NOT NULL,
    "IDOrgankultur" integer,
    "TransportDatum" timestamp without time zone,
    "IDTransportdienst" integer,
    "IDRechnungsadresse" integer,
    "IDWL" integer,
    "Notfall" boolean DEFAULT false NOT NULL,
    "IDVersandadresse" integer,
    "Rechnungsnummer" character varying(80),
    "IDMitarbeiter" integer,
    "Bemerkung" character varying(5000)
);


ALTER TABLE public."Transplantatversand" OWNER TO postgres;

--
-- Name: Transplantatversand_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Transplantatversand_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Transplantatversand_ID_seq" OWNER TO postgres;

--
-- Name: Transplantatversand_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Transplantatversand_ID_seq"', 604, true);


--
-- Name: Trepanart; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Trepanart" (
    "ID" integer DEFAULT nextval(('"Trepanart_ID_seq"'::text)::regclass) NOT NULL,
    "Trepanart" character varying(50)
);


ALTER TABLE public."Trepanart" OWNER TO postgres;

--
-- Name: Trepanart_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Trepanart_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Trepanart_ID_seq" OWNER TO postgres;

--
-- Name: Trepanart_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Trepanart_ID_seq"', 9, true);


--
-- Name: Triplets_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Triplets_ID_seq"
    START WITH 24657
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Triplets_ID_seq" OWNER TO postgres;

--
-- Name: Triplets_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Triplets_ID_seq"', 24657, false);


--
-- Name: WartelistePrint; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW "WartelistePrint" AS
    SELECT "StammdatenPatient"."ID", "StammdatenPatient"."Name", "StammdatenPatient"."Vorname", "StammdatenPatient"."Geburtsdatum", "StammdatenPatient"."Anschrift", "StammdatenPatient"."PLZ", "StammdatenPatient"."Ort", "StammdatenPatient".weiblich, "StammdatenPatient"."Telefon1", "StammdatenPatient"."Telefon2", "StammdatenPatient"."VerstorbenAm", "StammdatenPatient"."PIZ", "StammdatenPatient"."ExternalID", "StammdatenPatient"."IDZentrum", "StammdatenPatient"."WriteProtection", "StammdatenNarkose"."Text" AS "Narkose", CASE WHEN ("Warteliste"."Privatpatient" = true) THEN 'P'::text ELSE ''::text END AS "Privat", "Warteliste"."MaxHLAMismatches" FROM (("Warteliste" JOIN "StammdatenPatient" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) LEFT JOIN "StammdatenNarkose" ON (("StammdatenNarkose"."ID" = "Warteliste"."Narkosefrom"))) WHERE ("Warteliste"."WartenAktiviert" = true);


ALTER TABLE public."WartelistePrint" OWNER TO postgres;

--
-- Name: WartelisteUebersichtStudien; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "WartelisteUebersichtStudien" AS
    SELECT "WartelisteUebersicht"."WLID", "WartelisteUebersicht"."PatientID", "WartelisteUebersicht"."StartWarteliste", "WartelisteUebersicht"."EndeWarteliste", "WartelisteUebersicht"."WartenAktiviert", "WartelisteUebersicht"."Prioritaet", "WartelisteUebersicht"."KpAbDatum", "WartelisteUebersicht"."Narkosefrom", "WartelisteUebersicht"."KeratoplastikAuge", "WartelisteUebersicht"."KeratoplastikGesamt", "WartelisteUebersicht"."Auge", "WartelisteUebersicht"."Bemerkungen", "WartelisteUebersicht"."MaxHLAMismatches", "WartelisteUebersicht"."GrundExitWL", "WartelisteUebersicht"."BIS", "WartelisteUebersicht"."BISNR", "WartelisteUebersicht"."Privatpatient", "WartelisteUebersicht"."TransplantationenGesamt", "WartelisteUebersicht"."TransfusionenGesamt", "WartelisteUebersicht"."SchwangerschaftenGesamt", "WartelisteUebersicht"."IDZentrum", "WartelisteUebersicht"."IDOperateur", "WartelisteUebersicht"."TrepanTp", "WartelisteUebersicht"."TrepanPat", "WartelisteUebersicht"."IDOrgankultur", "WartelisteUebersicht"."IDOPArt", "WartelisteUebersicht"."IDTrepanart", "WartelisteUebersicht"."IDOPIndikationsdiagnose", "WartelisteUebersicht"."IDMeldenderArzt", "WartelisteUebersicht"."ID", "WartelisteUebersicht"."PIZ", "WartelisteUebersicht"."Name", "WartelisteUebersicht"."Vorname", "WartelisteUebersicht"."Geburtsdatum", "WartelisteUebersicht"."Anschrift", "WartelisteUebersicht"."PLZ", "WartelisteUebersicht"."Ort", "WartelisteUebersicht".weiblich, "WartelisteUebersicht"."Telefon1", "WartelisteUebersicht"."Telefon2", "WartelisteUebersicht"."VerstorbenAm", "WartelisteUebersicht"."PatAlter", "WartelisteUebersicht"."WartezeitBislang", "WartelisteUebersicht"."PrivatVerbose", (SELECT max("AufnahmeDiagnoseKategorie"."DiagnoseID") AS max FROM "AufnahmeDiagnoseKategorie" WHERE (("AufnahmeDiagnoseKategorie"."StationaerID" = "WartelisteUebersicht"."WLID") AND ("AufnahmeDiagnoseKategorie"."Kategorie1" = 5))) AS idstudie FROM "WartelisteUebersicht";


ALTER TABLE public."WartelisteUebersichtStudien" OWNER TO root;

--
-- Name: WartelisteZentren_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "WartelisteZentren_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."WartelisteZentren_ID_seq" OWNER TO postgres;

--
-- Name: WartelisteZentren_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"WartelisteZentren_ID_seq"', 72, true);


--
-- Name: Warteliste_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Warteliste_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Warteliste_ID_seq" OWNER TO postgres;

--
-- Name: Warteliste_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Warteliste_ID_seq"', 4343, true);


--
-- Name: Warteliste_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Warteliste_log" (
    "ID" integer NOT NULL,
    "PatientID" integer,
    "StartWarteliste" timestamp without time zone,
    "EndeWarteliste" timestamp without time zone,
    "WartenAktiviert" boolean NOT NULL,
    "Prioritaet" integer,
    "KpAbDatum" timestamp without time zone,
    "Narkosefrom" integer,
    "KeratoplastikAuge" integer,
    "KeratoplastikGesamt" integer,
    "Auge" character varying(50),
    "Bemerkungen" text,
    "MaxHLAMismatches" integer,
    "GrundExitWL" integer,
    "BIS" boolean NOT NULL,
    "BISNR" character varying(50),
    "Privatpatient" boolean NOT NULL,
    "TransplantationenGesamt" integer,
    "TransfusionenGesamt" integer,
    "SchwangerschaftenGesamt" integer,
    "IDZentrum" integer,
    "IDOperateur" integer,
    "TrepanTp" integer,
    "TrepanPat" integer,
    "IDOrgankultur" integer,
    "IDOPArt" integer,
    "IDTrepanart" integer,
    "IDOPIndikationsdiagnose" integer,
    "IDMeldenderArzt" integer,
    "ExternGemeldet" boolean NOT NULL,
    "IDVermittelndesZentrum" integer,
    "MMBestaetigt" boolean,
    "RADiagnosenText" character varying(5000),
    "LADiagnosenText" character varying(5000),
    "RABefundText" character varying(5000),
    "LABefundText" character varying(5000),
    "EpikriseText" character varying(5000),
    "SchlussText" character varying(5000),
    "BADiagnosenText" character varying(5000),
    "AllgemeindiagnosenText" character varying(5000),
    "RAVisus" character varying(5000),
    "LAVisus" character varying(5000),
    "RADruck" character varying(5000),
    "LADruck" character varying(5000),
    "RAFundusText" character varying(5000),
    "LAFundusText" character varying(5000),
    "IDOberarzt" integer,
    "HHWeggefroren" boolean,
    pachy1 double precision,
    pachy2 double precision,
    pachy3 double precision,
    pachy4 double precision,
    "FSLposteriorDiameter" double precision,
    "FSLanteriorDiameter" double precision,
    "FSLalignment_incisions" integer,
    "BISTP" character varying(50),
    fancy_nummer integer,
    datum_anaesthesie date,
    status_anaesthesie integer,
    status_hla_blut integer,
    trigger_mode character varying(10) NOT NULL,
    trigger_tuple character varying(5) NOT NULL,
    trigger_changed timestamp with time zone NOT NULL,
    trigger_id bigint NOT NULL,
    trigger_user character varying(32) NOT NULL
);


ALTER TABLE public."Warteliste_log" OWNER TO postgres;

--
-- Name: Warteliste_log_trigger_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Warteliste_log_trigger_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Warteliste_log_trigger_id_seq" OWNER TO postgres;

--
-- Name: Warteliste_log_trigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Warteliste_log_trigger_id_seq" OWNED BY "Warteliste_log".trigger_id;


--
-- Name: Warteliste_log_trigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Warteliste_log_trigger_id_seq"', 28864, true);


--
-- Name: Zentrumsanschrift_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Zentrumsanschrift_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Zentrumsanschrift_ID_seq" OWNER TO postgres;

--
-- Name: Zentrumsanschrift_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Zentrumsanschrift_ID_seq"', 111, true);


--
-- Name: _HLAAllelesPatient_vali; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "_HLAAllelesPatient_vali" AS
    SELECT DISTINCT "HLAPatient"."IDPatient", splitmol.mol FROM (("HLAPatient" JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLAPatient"."IDHLA"))) JOIN splitmol ON ((("StammdatenHLA"."Split")::text = (splitmol.split)::text))) ORDER BY "HLAPatient"."IDPatient", splitmol.mol;


ALTER TABLE public."_HLAAllelesPatient_vali" OWNER TO root;

--
-- Name: _HLAAllelesSpender_vali; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW "_HLAAllelesSpender_vali" AS
    SELECT DISTINCT "HLASpender"."IDSpender", splitmol.mol FROM (("HLASpender" JOIN "StammdatenHLA" ON (("StammdatenHLA"."ID" = "HLASpender"."IDHLA"))) JOIN splitmol ON ((("StammdatenHLA"."Split")::text = (splitmol.split)::text))) ORDER BY "HLASpender"."IDSpender", splitmol.mol;


ALTER TABLE public."_HLAAllelesSpender_vali" OWNER TO root;

--
-- Name: latlonplz; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE latlonplz (
    id integer,
    plz integer,
    lat real,
    lon real,
    ort character varying(50000)
);


ALTER TABLE public.latlonplz OWNER TO postgres;

--
-- Name: anreiseweg_luftlinie; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW anreiseweg_luftlinie AS
    SELECT "Warteliste"."ID" AS idwl, "StammdatenPatient"."PLZ", ((point((a.lat)::double precision, (a.lon)::double precision) <-> point((48.0055721652502)::double precision, (7.84227981730455)::double precision)) * (112)::double precision) AS distance FROM (("StammdatenPatient" LEFT JOIN latlonplz a ON ((("StammdatenPatient"."PLZ")::text = (a.plz)::text))) JOIN "Warteliste" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) WHERE (point((a.lat)::double precision, (a.lon)::double precision) IS NOT NULL);


ALTER TABLE public.anreiseweg_luftlinie OWNER TO root;

--
-- Name: medienwechsel_stroma; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE medienwechsel_stroma (
    id integer NOT NULL,
    idmedienwechsel integer,
    idbefund integer
);


ALTER TABLE public.medienwechsel_stroma OWNER TO root;

--
-- Name: blocking_medienwechsel; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW blocking_medienwechsel AS
    SELECT DISTINCT "Mediumwechsel"."IDOrgankultur", a.name, a.block_op_arten FROM ("Mediumwechsel" JOIN ((((SELECT DISTINCT medienwechsel_stroma.idmedienwechsel AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM (medienwechsel_stroma JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = medienwechsel_stroma.idbefund))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true) ORDER BY medienwechsel_stroma.idmedienwechsel, "StammdatenEinstufungOrdinal"."Name", "StammdatenEinstufungOrdinal".block_op_arten) UNION SELECT "Mediumwechsel"."ID" AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM ("Mediumwechsel" JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = "Mediumwechsel"."NekrosenKlassifizierung"))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true)) UNION SELECT "Mediumwechsel"."ID" AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM ("Mediumwechsel" JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = "Mediumwechsel"."Endothelscore"))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true)) UNION SELECT "Mediumwechsel"."ID" AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM ("Mediumwechsel" JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = "Mediumwechsel"."BefundbarkeitEndothel"))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true)) a ON ((a.id = "Mediumwechsel"."ID")));


ALTER TABLE public.blocking_medienwechsel OWNER TO root;

--
-- Name: zahl_faeden; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW zahl_faeden AS
    SELECT DISTINCT "Brief"."Datum", "Brief"."StationaerID" AS idwl, a.faeden FROM (("Brief" JOIN "BriefBefund" ON (("BriefBefund"."BriefID" = "Brief"."ID"))) LEFT JOIN (SELECT "BriefBefund"."BriefID", "BriefBefund"."Parameter" AS faeden FROM "BriefBefund" WHERE ("BriefBefund"."BefundID" = 4056)) a ON ((a."BriefID" = "Brief"."ID"))) ORDER BY "Brief"."Datum", "Brief"."StationaerID", a.faeden;


ALTER TABLE public.zahl_faeden OWNER TO root;

--
-- Name: date_last_suture_out; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW date_last_suture_out AS
    SELECT COALESCE(max(a."Datum"), min(b.date_removal)) AS "Datum", a.idwl FROM ((SELECT DISTINCT "Brief"."Datum", "Brief"."StationaerID" AS idwl, a.faeden FROM (("Brief" JOIN "BriefBefund" ON (("BriefBefund"."BriefID" = "Brief"."ID"))) LEFT JOIN zahl_faeden a ON ((a.idwl = "Brief"."StationaerID"))) WHERE (("BriefBefund"."BefundID" = 4089) AND ((a.faeden)::text = (1)::text)) ORDER BY "Brief"."Datum", "Brief"."StationaerID", a.faeden) a LEFT JOIN (SELECT max(zahl_faeden."Datum") AS date_removal, zahl_faeden.idwl FROM (zahl_faeden JOIN (SELECT min(zahl_faeden."Datum") AS date_zero, zahl_faeden.idwl FROM zahl_faeden WHERE ((zahl_faeden.faeden)::text = (0)::text) GROUP BY zahl_faeden.idwl) a1 ON ((a1.idwl = zahl_faeden.idwl))) WHERE (zahl_faeden."Datum" < a1.date_zero) GROUP BY zahl_faeden.idwl) b ON ((b.idwl = a.idwl))) GROUP BY a.idwl;


ALTER TABLE public.date_last_suture_out OWNER TO root;

--
-- Name: fancy_id_list; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW fancy_id_list AS
    SELECT "Warteliste".fancy_nummer AS nr, "StammdatenPatient"."PIZ" AS piz, "StammdatenPatient"."Geburtsdatum" AS gebdat, ((("StammdatenPatient"."Name")::text || ', '::text) || ("StammdatenPatient"."Vorname")::text) AS name, CASE WHEN ("StammdatenPatient".weiblich = true) THEN 'w'::text ELSE 'm'::text END AS geschlecht, "Warteliste"."StartWarteliste" AS einschlussdatum FROM ("Warteliste" JOIN "StammdatenPatient" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) WHERE ("Warteliste".fancy_nummer > 0) ORDER BY "Warteliste".fancy_nummer;


ALTER TABLE public.fancy_id_list OWNER TO root;

--
-- Name: fancy_list; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW fancy_list AS
    SELECT "StammdatenPatient"."Name", "Warteliste"."StartWarteliste", "Warteliste".fancy_nummer, "Warteliste"."Bemerkungen" FROM ("Warteliste" JOIN "StammdatenPatient" ON (("Warteliste"."PatientID" = "StammdatenPatient"."ID"))) WHERE ((("Warteliste"."IDZentrum" = 1) AND ("Warteliste"."StartWarteliste" > '2009-09-17 00:00:00'::timestamp without time zone)) AND ((("Warteliste"."StartWarteliste" - "Warteliste"."EndeWarteliste") IS NULL) OR (("Warteliste"."StartWarteliste" - "Warteliste"."EndeWarteliste") > '2 days'::interval))) ORDER BY "Warteliste"."StartWarteliste", "Warteliste".fancy_nummer;


ALTER TABLE public.fancy_list OWNER TO root;

--
-- Name: fancy_nummer; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW fancy_nummer AS
    SELECT a."ID", CASE WHEN ((a.info)::text = 'A'::text) THEN NULL::character varying ELSE a.info END AS info FROM (SELECT "Warteliste"."ID", COALESCE("AufnahmeDiagnose"."Parameter", (("Warteliste".fancy_nummer)::text)::character varying) AS info FROM ("Warteliste" LEFT JOIN "AufnahmeDiagnose" ON ((("AufnahmeDiagnose"."StationaerID" = "Warteliste"."ID") AND ("AufnahmeDiagnose"."DiagnoseID" = 921)))) WHERE (("Warteliste".fancy_nummer IS NOT NULL) AND ("Warteliste"."IDOrgankultur" IS NULL))) a;


ALTER TABLE public.fancy_nummer OWNER TO root;

--
-- Name: herstellungsprotokoll; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW herstellungsprotokoll AS
    SELECT ("Organkultur"."IDSpender" || ("Organkultur"."Auge")::text) AS tp_id, "StammdatenMedium"."Name" AS medium, "Mediumwechsel"."KulturEinDatum" AS inkulturnahme, "Mediumwechsel".chargennummer AS chargennummer_medium, "Mediumwechsel".chargennummer_ncs, "Mediumwechsel".chargennummer_halter, "Mediumwechsel".chargennummer_flasche, "Mediumwechsel".chargennummer_bss, "Mediumwechsel".chargennummer_bss_wellplate, ((("Mediumwechsel"."InstrumentID" || ' ('::text) || to_char("Mediumwechsel".steridate, 'DD.MM.YY'::text)) || ')'::text) AS instrument1, "Mediumwechsel"."InstrumentID2" AS instrument2, "Mediumwechsel"."InstrumentID" AS instrument3, "Mitarbeiter"."Name" AS mitarbeiter, o1."Name" AS "Endothelscore", ((o2."Name")::text || '. '::text) AS "NekrosenKlassifizierung", o3."Name" AS "BefundbarkeitEndothel", ('EZD: '::text || "Mediumwechsel"."EZD") AS "EZD", (('Nekrosen: '::text || "Mediumwechsel"."AnteilNekrosen") || '\%'::text) AS "AnteilNekrosen", (SELECT textcat_all((("StammdatenEinstufungOrdinal"."Name")::text || '; '::text)) AS textcat_all FROM (medienwechsel_stroma JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = medienwechsel_stroma.idbefund))) WHERE (medienwechsel_stroma.idmedienwechsel = "Mediumwechsel"."ID")) AS stroma, "Mediumwechsel"."Bemerkungen" AS bemerkungen FROM (((((("Mediumwechsel" JOIN "Organkultur" ON (("Organkultur"."ID" = "Mediumwechsel"."IDOrgankultur"))) JOIN "StammdatenMedium" ON (("Mediumwechsel"."IDMedium" = "StammdatenMedium"."ID"))) LEFT JOIN "Mitarbeiter" ON (("Mediumwechsel"."IDMitarbeiter" = "Mitarbeiter"."ID"))) LEFT JOIN "StammdatenEinstufungOrdinal" o1 ON ((o1."ID" = "Mediumwechsel"."Endothelscore"))) LEFT JOIN "StammdatenEinstufungOrdinal" o2 ON ((o2."ID" = "Mediumwechsel"."NekrosenKlassifizierung"))) LEFT JOIN "StammdatenEinstufungOrdinal" o3 ON ((o3."ID" = "Mediumwechsel"."BefundbarkeitEndothel"))) ORDER BY "Mediumwechsel"."KulturEinDatum";


ALTER TABLE public.herstellungsprotokoll OWNER TO root;

--
-- Name: opdatum_piz; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW opdatum_piz AS
    SELECT a.idwl, a.piz, a.opdatum FROM (SELECT "WartelisteUebersicht"."WLID" AS idwl, "substring"(("WartelisteUebersicht"."PIZ")::text, '[0-9]+'::text) AS piz, "WartelisteUebersicht"."EndeWarteliste" AS opdatum FROM "WartelisteUebersicht" WHERE ((("WartelisteUebersicht"."PIZ" IS NOT NULL) AND ("WartelisteUebersicht"."EndeWarteliste" IS NOT NULL)) AND ("WartelisteUebersicht"."IDOrgankultur" IS NOT NULL))) a ORDER BY a.piz;


ALTER TABLE public.opdatum_piz OWNER TO root;

--
-- Name: idwl_dategates; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW idwl_dategates AS
    SELECT a.idwl, a.piz, a.opdatum AS adate, ((a.opdatum + min((b.opdatum - a.opdatum))) - '1 day'::interval) AS bdate FROM (opdatum_piz a JOIN opdatum_piz b ON ((a.piz = b.piz))) WHERE (a.opdatum < b.opdatum) GROUP BY a.idwl, a.piz, a.opdatum UNION (SELECT DISTINCT c.idwl, c.piz, c.opdatum AS adate, (now())::date AS bdate FROM (opdatum_piz c JOIN (SELECT d.piz, max(d.opdatum) AS maxdate FROM opdatum_piz d GROUP BY d.piz) e ON (((e.piz = c.piz) AND (c.opdatum = e.maxdate)))) ORDER BY c.idwl, c.piz, c.opdatum, (now())::date) ORDER BY 2, 3;


ALTER TABLE public.idwl_dategates OWNER TO root;

--
-- Name: medienwechsel_stroma_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE medienwechsel_stroma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medienwechsel_stroma_id_seq OWNER TO root;

--
-- Name: medienwechsel_stroma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE medienwechsel_stroma_id_seq OWNED BY medienwechsel_stroma.id;


--
-- Name: medienwechsel_stroma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('medienwechsel_stroma_id_seq', 4603, true);


--
-- Name: nonblocking_medienwechsel; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW nonblocking_medienwechsel AS
    SELECT DISTINCT "Mediumwechsel"."IDOrgankultur", a.name, a.block_op_arten FROM ("Mediumwechsel" JOIN ((((SELECT DISTINCT medienwechsel_stroma.idmedienwechsel AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM (medienwechsel_stroma JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = medienwechsel_stroma.idbefund))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true) ORDER BY medienwechsel_stroma.idmedienwechsel, "StammdatenEinstufungOrdinal"."Name", "StammdatenEinstufungOrdinal".block_op_arten) UNION SELECT "Mediumwechsel"."ID" AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM ("Mediumwechsel" JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = "Mediumwechsel"."NekrosenKlassifizierung"))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true)) UNION SELECT "Mediumwechsel"."ID" AS id, "StammdatenEinstufungOrdinal"."Name" AS name, "StammdatenEinstufungOrdinal".block_op_arten FROM ("Mediumwechsel" JOIN "StammdatenEinstufungOrdinal" ON (("StammdatenEinstufungOrdinal"."ID" = "Mediumwechsel"."Endothelscore"))) WHERE ("StammdatenEinstufungOrdinal".block_alloc = true)) UNION SELECT "Mediumwechsel"."ID" AS id, textcat_all("Mediumwechsel"."Bemerkungen") AS name, NULL::text AS block_op_arten FROM "Mediumwechsel" WHERE (("Mediumwechsel"."Bemerkungen" IS NOT NULL) AND (char_length("Mediumwechsel"."Bemerkungen") > 3)) GROUP BY "Mediumwechsel"."ID") a ON ((a.id = "Mediumwechsel"."ID")));


ALTER TABLE public.nonblocking_medienwechsel OWNER TO root;

--
-- Name: opberichte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE opberichte (
    idwl integer NOT NULL,
    txt character varying(50000),
    auge text
);


ALTER TABLE public.opberichte OWNER TO postgres;

--
-- Name: spender_transfusionslast; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE spender_transfusionslast (
    id integer NOT NULL,
    iddonor integer,
    transfusionszeitpunkt timestamp without time zone,
    colloid_cristalloid integer,
    anzahl integer
);


ALTER TABLE public.spender_transfusionslast OWNER TO root;

--
-- Name: transfusion_load_weighted; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW transfusion_load_weighted AS
    SELECT a.iddonor, a.age, a.colloid_cristalloid, a.anzahl, CASE WHEN (a.colloid_cristalloid = 0) THEN CASE WHEN ((a.age >= '00:00:00'::interval) AND (a.age <= '01:00:00'::interval)) THEN ((a.anzahl)::numeric * 0.75) WHEN ((a.age >= '01:00:00'::interval) AND (a.age <= '02:00:00'::interval)) THEN ((a.anzahl)::numeric * 0.50) WHEN ((a.age >= '02:00:00'::interval) AND (a.age <= '24:00:00'::interval)) THEN ((a.anzahl)::numeric * 0.25) WHEN (a.age > '24:00:00'::interval) THEN (0)::numeric ELSE NULL::numeric END WHEN (a.colloid_cristalloid = 1) THEN CASE WHEN ((a.age >= '00:00:00'::interval) AND (a.age <= '24:00:00'::interval)) THEN ((a.anzahl)::numeric * 1.0) WHEN ((a.age >= '24:00:00'::interval) AND (a.age <= '48:00:00'::interval)) THEN ((a.anzahl)::numeric * 1.0) ELSE NULL::numeric END WHEN (a.colloid_cristalloid = 2) THEN CASE WHEN ((a.age >= '00:00:00'::interval) AND (a.age <= '24:00:00'::interval)) THEN ((a.anzahl)::numeric * 1.0) WHEN ((a.age >= '24:00:00'::interval) AND (a.age <= '48:00:00'::interval)) THEN ((a.anzahl)::numeric * 0.50) ELSE NULL::numeric END ELSE NULL::numeric END AS residual, CASE WHEN (a.colloid_cristalloid = 0) THEN 'Kristalloid'::text WHEN (a.colloid_cristalloid = 2) THEN 'Kolloidal'::text WHEN (a.colloid_cristalloid = 1) THEN 'Blutprod.'::text ELSE NULL::text END AS "verbose" FROM (SELECT "StammdatenHornhautspender"."ID" AS iddonor, age("StammdatenHornhautspender"."Todeszeitpunkt", spender_transfusionslast.transfusionszeitpunkt) AS age, spender_transfusionslast.colloid_cristalloid, spender_transfusionslast.anzahl FROM (spender_transfusionslast JOIN "StammdatenHornhautspender" ON (("StammdatenHornhautspender"."ID" = spender_transfusionslast.iddonor)))) a WHERE (a.age < '2 days'::interval);


ALTER TABLE public.transfusion_load_weighted OWNER TO root;

--
-- Name: prozentuale_blutverduennung; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW prozentuale_blutverduennung AS
    SELECT a.iddonor, ((a.sum / (("StammdatenHornhautspender"."Koerpergewicht" * 70))::numeric) * (100)::numeric) AS prozentuale_blutverduennung, a.verbose_name, ((a.sum / (("StammdatenHornhautspender"."Koerpergewicht" * 40))::numeric) * (100)::numeric) AS prozentuale_plasmaverduennung FROM ((SELECT transfusion_load_weighted.iddonor, sum(transfusion_load_weighted.residual) AS sum, textcat_all((((((transfusion_load_weighted.anzahl || 'ml ('::text) || date_trunc('hour'::text, transfusion_load_weighted.age)) || ' h) '::text) || transfusion_load_weighted."verbose") || ' '::text)) AS verbose_name FROM transfusion_load_weighted GROUP BY transfusion_load_weighted.iddonor) a JOIN "StammdatenHornhautspender" ON (("StammdatenHornhautspender"."ID" = a.iddonor)));


ALTER TABLE public.prozentuale_blutverduennung OWNER TO root;

--
-- Name: spender_transfusionslast_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE spender_transfusionslast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spender_transfusionslast_id_seq OWNER TO root;

--
-- Name: spender_transfusionslast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE spender_transfusionslast_id_seq OWNED BY spender_transfusionslast.id;


--
-- Name: spender_transfusionslast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('spender_transfusionslast_id_seq', 61, true);


--
-- Name: sql_auditing; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE sql_auditing (
    id integer NOT NULL,
    comment text,
    sql_query text,
    exclude boolean,
    email text
);


ALTER TABLE public.sql_auditing OWNER TO root;

--
-- Name: sql_auditing_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE sql_auditing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sql_auditing_id_seq OWNER TO root;

--
-- Name: sql_auditing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE sql_auditing_id_seq OWNED BY sql_auditing.id;


--
-- Name: sql_auditing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('sql_auditing_id_seq', 19, true);


--
-- Name: trigger_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Warteliste_log" ALTER COLUMN trigger_id SET DEFAULT nextval('"Warteliste_log_trigger_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY medienwechsel_stroma ALTER COLUMN id SET DEFAULT nextval('medienwechsel_stroma_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY spender_transfusionslast ALTER COLUMN id SET DEFAULT nextval('spender_transfusionslast_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY sql_auditing ALTER COLUMN id SET DEFAULT nextval('sql_auditing_id_seq'::regclass);


--
-- Data for Name: Ambulanzpatienten; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ambulanzpatienten" ("ID", "PIZ", "Kostenstelle", "Name", "Vorname", "Geburtsdatum", "IDPatient", "Datum", erledigt) FROM stdin;
\.


--
-- Data for Name: Applikationsfrequenz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Applikationsfrequenz" ("ID", "Frequenz", "Kategorie") FROM stdin;
1	2x 1g	2
2	2x	1
3	3x	1
4	4x	1
5	5x	1
6	7x	1
7	stdl.	1
8	1/2-stdl	1
9	1/4-stdl	1
10	80mg	2
11	1x	1
12	200mg	2
15	6x	\N
14	3x 400mg	\N
\.


--
-- Data for Name: AufnahmeDiagnose; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AufnahmeDiagnose" ("ID", "DiagnoseID", "Auge", "Parameter", "StationaerID", "Datum") FROM stdin;
\.


--
-- Data for Name: Befund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Befund" ("ID", "Name", "Kategorie", auto) FROM stdin;
4071	Malignom	2000	\N
2	Transplantat, Erosio	2000	\N
3	Transplantat, Ulkus	2000	\N
4	Transplantat, Rezidiv, Dystrophie	2000	\N
4073	Transplantat, Vaskularisation, tief	2000	\N
4075	Transplantat, Truebung	2000	\N
4076	Transplantat, Einschmelzung	2000	\N
4080	Transplantat, Fadenriss	2000	\N
4081	Transplantat, Rezidiv, Keratokonus	2000	\N
4057	Transplantat, Sprengung	2000	\N
4058	Descemetolyse	2000	\N
4059	OP, Fadennachlegung	2000	\N
3884	Synechie, vordere	2000	\N
4060	OP, Thermocauter	2000	\N
4061	OP, Amniondeckung	2000	\N
4072	Transplantatversagen	2000	\N
4063	Steroidresponse	2000	\N
4064	Blepharitis	2000	\N
4065	Valaciclovir (Valtrex)	1001	\N
4066	Diamox	1001	\N
4067	Transplantat, Fadengranulom	2000	\N
4068	Alphagan AT	1000	\N
4069	Absto�ung, stromal	2000	\N
4056	Fortlaufende F�den (0..2)	4000	t
4070	Urbason	1001	\N
4074	Transplantat, Rezidiv, Herpes	2000	\N
4062	OP, VK-Sp�lung, Steroid	2000	\N
4078	OP, Phako+HKL	2000	\N
4079	OP, Augendrucksenkung	2000	\N
3972	Normoglaucom AT	1000	\N
3973	Trusopt AT	1000	\N
3974	Normoglaucom AT	1000	\N
4011	Artelac	1000	\N
4043	Verbandslinse	1000	\N
4021	Travatan	1000	\N
4022	Adsorbonac	1000	\N
4023	Wetcomod	1000	\N
4024	Timolol	1000	\N
4025	Decortin H	1001	\N
4026	Xalacom	1000	\N
4035	Vislube	1000	\N
4036	Clonid Ophthal sine	1000	\N
4039	Elidel	1000	\N
4040	Xalatan	1000	\N
4041	Isoptomax	1000	\N
4042	Regepithel	1000	\N
4044	Refobacin AT	1000	\N
4045	Pilocarpin	1000	\N
4046	Azopt	1000	\N
3955	Absto�ung, epitheliale Khoudadoustlinie	2000	\N
4020	Epithelst�rung	2000	\N
4052	Zufriedenheit (1..6)	4000	\N
4051	Fortlaufender Transplantatfaden, Riss	2000	\N
4053	Absto�ung, chronisch	2000	\N
4054	Absto�ung, endothelial, leicht	2000	\N
4047	Pachymetrie	4000	\N
4048	Fibrosegrad subepithelial	4000	\N
4055	Absto�ung, akut	2000	\N
3949	CellCept, UAW/KI	2000	\N
3898	Augeninnendruck erh�ht	2000	\N
3906	Predni-Pos	1000	\N
3920	Betaman	1000	\N
3924	Vidisic Gel	1000	\N
3945	Fortlaufender Transplantatfaden, Lockerung	2000	\N
3948	Vismed Gel	1000	\N
3952	CSA-Spiegel, Schwankungen	2000	\N
3937	Nebenwirkung, Leberwerte, erh�ht	2000	\N
3953	Akne	2000	\N
3954	Migr�ne	2000	\N
3956	Lumigan	1000	\N
3808	Hylocommod	1000	\N
3833	Corneregel	1000	\N
3823	Totocortin	1000	\N
3826	Transplantat, Delle	2000	\N
3832	Floxal EDO	1000	\N
3822	Hylo-Comod	1000	\N
3848	Glask�rperprolaps	2000	\N
3856	Transplantat, Keratitis superficialis punctata	2000	\N
3857	Ilube ED	1000	\N
3858	Protagent AT	1000	\N
3865	Floxal AT	1000	\N
3877	Coliquifilm AS	1000	\N
3885	DexaGel	1000	\N
3892	Ultracortenol AT	1000	\N
3737	Sandimmun optoral	1001	\N
3738	Inflanefran forte AT	1000	\N
3749	Nachstar	2000	\N
3750	Corneregel fluid AT	1000	\N
3761	Basiliximab	1001	\N
3762	Celluvisc AT	1000	\N
3763	Bepanthen AS	1000	\N
3773	Absto�ung, endothelial, schwer	2000	\N
3778	Lacrisic 	1000	\N
3784	Keratitis filiformis	2000	\N
3788	Vismed	1000	\N
3789	Aciclovir	1001	\N
3790	Cosopt 	1000	\N
3798	Astigmatismus, irregul�r	2000	\N
3802	Utralan oral	1001	\N
3716	CellCept	1001	\N
3717	Marcumar	1001	\N
3718	Dexa sine SE AT	1000	\N
3719	Augendruck, Dekompensation	2000	\N
4077	Endophthalmitis	2000	\N
4082	LohrengelKl	4000	\N
4083	Brolene	1000	\N
4084	Polyhexamid	1000	\N
4085	Amblyopie	2000	\N
4088	Kontaktlinse	2000	\N
4087	OP, ICCE	2000	\N
4089	Fadenentfernung, 1FL	2000	\N
4086	OP, Opt. Iridektomie	2000	\N
4090	Katarakt	2000	\N
4091	Lagophthalmus	2000	\N
4092	Fadenentfernung, EKN	2000	\N
4093	\N	2000	\N
4094	Interface	4000	\N
4095	OP, T-Cut	2000	\N
4096	\N	2000	\N
\.


--
-- Data for Name: BlutgruppePatient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "BlutgruppePatient" ("ID", "IDPatient", "IDBlutgruppe", "Datum") FROM stdin;
\.


--
-- Data for Name: BlutgruppeSpender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "BlutgruppeSpender" ("ID", "IDSpender", "IDBlutgruppe", "Datum") FROM stdin;
\.


--
-- Data for Name: Brief; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Brief" ("ID", "StationaerID", "Datum", "Untersuchungsdatum", "OberarztID", "ArztID", "Wiedervorstellung", "Epikrise", "Anamnese", "sphRA", "sphLA", "cylRA", "cylLA", "AchseRA", "AchseLA", "EZD1", "EZD2", "VisusRA", "VisusLA", "TensioRA", "TensioLA", "TensioPalpRA", "TensioPalpLA", "refrRA", "refrLA", "Nachrichtlich", "keratometrischeRefraktion1", "keratometrischeRefraktion2", "keratometrischeAchse1", "keratometrischeAchse2", "AnzahlFortlaufendeFaeden", "TpTrueb", "SchirmerII1", "SchirmerII2", "BUT1", "BUT2", "IR", "ARsph", "ARcyl", "ARAchse", "Orb1", "Orb2", "Orb3", "Pachy", "EZD", "Orb4", "RADiagnosenText", "LADiagnosenText", "BADiagnosenText", "RABefundText", "LABefundText", "EpikriseText", "AllgemeindiagnosenText", date_insert) FROM stdin;
\.


--
-- Data for Name: BriefBefund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "BriefBefund" ("ID", "BefundID", "Auge", "Kategorie", "Parameter", "BriefID", "Datum") FROM stdin;
\.


--
-- Data for Name: Diagnose; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Diagnose" ("ID", "Name", "Kategorie1", "Kategorie2", "ICD1", "Prop1", "ICD2", "BefundText", "ArztbriefName", auto) FROM stdin;
42	Astigmatismus	1	2	H52.2	\N	\N	\N	\N	\N
157	Atopische Diathese	1	2	\N	\N	\N	\N	\N	\N
43	Keratokonus	1	2	H18.6	L	\N	Hornhautkontur irregul�r, zentrale Ausd�nnung und Vernarbung des Stromas	\N	\N
181	Cataracta complicata	1	2	H26.2	\N	\N	Linse leicht getr�bt	\N	\N
188	Z.n. Imre- Wangenverschiebeplastik	1	2	\N	\N	\N	\N	\N	\N
1354	Hornhautdekompensation	1	\N	\N	\N	\N	\N	\N	\N
45	Cataracta provecta	1	2	H25.9	\N	\N	Linse getr�bt	\N	\N
44	Cataracta incipiens	1	2	H25.9	\N	\N	Linse leicht getr�bt	\N	\N
557	Bindehautgranulom	1	2	\N	\N	\N	\N	\N	\N
1340	Keratektasie	1	2	\N	\N	\N	\N	\N	\N
1385	AChaud	4	1	\N	\N	\N	\N	\N	\N
212	Bindehautmalignom	1	2	\N	\N	\N	\N	\N	\N
48	Fuchs Endotheldystrophie	1	2	H18.5	\N	\N	Zartes Hornhaut�dem, geh�mmerter Aspekt des Endothels	\N	\N
69	Pseudophakie	1	2	Z96.1	\N	\N	Intraokularlinse	\N	\N
342	Z.n. systemischer Immunsuppression	0	2	\N	\N	\N	\N	\N	\N
124	Hornhautnarbe/-Tr�bung, tief	1	2	H17.9	\N	\N	\N	\N	f
160	Herpesauge	1	2	B00.5	\N	\N	\N	\N	\N
1386	Lx201	5	\N	\N	\N	\N	\N	\N	\N
1356	Z.n.HKL	1	\N	\N	\N	\N	\N	\N	\N
1387	Atopie	4	1	\N	\N	\N	\N	\N	\N
1369	Panarteriitis nodosa	0	\N	\N	\N	\N	\N	\N	\N
704	Z.n. Abschleifung und EDTA-Einwirkung einer umschriebenen oberfl�chlichen Verkalkung	1	2	\N	\N	\N	\N	\N	\N
50	Myopie, hoch	1	2	H52.1	\N	\N	\N	\N	\N
1381	Exposition (Mvh)	5	5	\N	\N	\N	\N	\N	\N
296	Z.n. Ablatio Retinae	1	1	\N	\N	\N	\N	\N	\N
49	Glaucoma chronicum simplex	1	2	H40.1	\N	\N	\N	\N	\N
110	Amblyopie	1	2	H35.0	\N	\N	\N	\N	\N
1111	�thylismus	0	2	\N	\N	\N	\N	\N	\N
206	Hornhautnarbe, peripher	1	2	H16.4	\N	\N	\N	\N	\N
234	Uveitis, rezidivierend	1	2	\N	\N	\N	\N	\N	\N
1124	Z.n. perforierender Verletzung	1	\N	\N	L	\N	\N	\N	\N
1374	Colon Ca	0	\N	\N	\N	\N	\N	\N	\N
1276	Z.n. Borreliose	0	\N	\N	\N	\N	\N	\N	\N
1376	Z.n. Vitrektomie mit Linseneinn�hung	1	\N	\N	\N	\N	\N	\N	\N
1377	Hornhautperforation	1	\N	\N	\N	\N	\N	\N	\N
1420	FuchslugerKoop	5	\N	\N	\N	\N	\N	\N	\N
56	leichtgradige hypertensive Retinopathie	1	1	H35.0	\N	\N	\N	\N	\N
57	Myopie	1	2	H52.1	\N	\N	\N	\N	\N
58	Narbenpterygium	1	2	H11.0	\N	\N	\N	\N	\N
1153	Z.n. systemischer Immunsupression	0	\N	\N	\N	\N	\N	\N	\N
68	Presbyopie	1	2	H52.4	\N	\N	\N	\N	\N
1154	Z.n. Immunglobulin-Therapie	0	\N	\N	\N	\N	\N	\N	\N
70	Ptosis senilis	1	2	H02.4	\N	\N	\N	\N	\N
1150	Hornhautverbrennung	1	\N	\N	L	\N	\N	\N	\N
67	Makula�dem, zystoid	1	2	H59.9	\N	\N	\N	\N	\N
1379	Diagnose unbekannt	1	2	\N	\N	\N	\N	\N	\N
117	Z.n. zystoidem Macula�dem	1	\N	H59.9	L	\N	\N	\N	\N
929	gesund	0	2	\N	\N	\N	\N	\N	\N
287	Herpeskeratitis, rezidivierend	1	0	B00.5	\N	\N	\N	\N	\N
1110	Herzrhytmusst�rung	0	2	\N	\N	\N	\N	\N	\N
1048	Zyklothymie	0	2	\N	\N	\N	\N	\N	\N
762	Transplantat, Rezidiv, zentral	1	0	\N	\N	\N	\N	\N	\N
620	Limbusstammzellinsuffizienz, komplett	1	2	\N	\N	\N	\N	\N	\N
1101	Z.n. Netzhautoperationen	1	\N	\N	L	\N	\N	\N	\N
272	Keratitis, zosterisch	1	2	\N	\N	\N	\N	\N	\N
184	Cornea guttata	1	2	H18.5	\N	\N	\N	\N	\N
1152	Atopische Dermatitis	0	2	\N	\N	\N	\N	\N	\N
1080	Autoimmunes Polyglandul�res Syndrom	0	2	\N	\N	\N	\N	\N	\N
1049	Niereninsuffizienz, kompensiert	0	2	\N	\N	\N	\N	\N	\N
151	Z.n. zystoidem Makula�dem	1	0	H59.9	\N	\N	\N	\N	\N
152	Z.n. Keratitis dendritica	1	0	B00.5	\N	\N	\N	\N	\N
1085	multiple Ops	1	\N	\N	L	\N	\N	\N	\N
960	Hornhautulkus, rheumatisch	1	2	\N	\N	\N	\N	\N	\N
1117	Transplantat, St�rung	1	\N	\N	L	\N	\N	\N	\N
156	Z.n. Laserkoagulation der Netzhaut bei multiplen Netzhautforamina	1	0	\N	\N	\N	\N	\N	\N
914	Transplantat, Ulkus	1	0	\N	\N	\N	\N	\N	\N
578	Hornhaut, Perforation	1	2	\N	\N	\N	\N	\N	\N
731	Hornhautdegeneration, bandf�rmig	1	2	\N	\N	\N	\N	\N	\N
857	Hornhautulkus, trophisch	1	2	\N	\N	\N	\N	\N	\N
161	Z.n. Herpeskeratitis	1	0	B00.5	\N	\N	\N	\N	\N
426	Makulopathie, diabetisch	1	2	\N	\N	\N	\N	\N	\N
660	Tr�nenwegsstenose	1	2	H04.5	\N	\N	\N	\N	\N
725	Opticusatrophie	1	2	\N	\N	\N	\N	\N	\N
165	Z.n. Vitrektomie bei Amotiones mit �lf�llung	1	0	\N	\N	\N	\N	\N	\N
483	Unklare Sehverschlechterung	1	1	\N	\N	\N	\N	\N	\N
167	Z.n. Laserkoagulation der Netzhaut bei peripheren Degenerationen	1	0	\N	\N	\N	\N	\N	\N
53	Astigmatismus, irregul�r	1	2	H52.2	\N	\N	\N	\N	\N
170	Z.n. multiplen Vitrektomien	1	0	\N	\N	\N	\N	\N	\N
172	Z.n. Zyklo-Kryokoagulationen	1	0	\N	\N	\N	\N	\N	\N
597	Unterlidgranulom	1	2	\N	\N	\N	\N	\N	\N
719	Unterlidnarbe	1	2	\N	\N	\N	\N	\N	\N
1114	Glaukom, juvenil	1	2	\N	\N	\N	\N	\N	\N
778	Unterlidzyste	1	2	\N	\N	\N	\N	\N	\N
147	Uveitis, posterior	1	1	\N	\N	\N	\N	\N	\N
178	Z.n. Venenastverschluss vor 6 Wochen	1	0	H34.8	\N	\N	\N	\N	\N
894	Bindehautkarzinom	1	2	\N	\N	\N	\N	\N	\N
180	Z.n. Radiatio	1	0	\N	\N	\N	\N	\N	\N
702	Chandler Syndrom	1	2	\N	\N	\N	\N	\N	\N
856	Bindehaut, Anomalie	1	2	\N	\N	\N	\N	\N	\N
549	Minderperfusionssyndrom	1	2	\N	\N	\N	\N	\N	\N
164	Leukom	1	2	H18.2	\N	\N	\N	\N	\N
418	Normaldruckglaukom	1	2	\N	\N	\N	\N	\N	\N
111	Hypermetropie	1	2	H52.0	\N	\N	\N	\N	\N
530	Pseudopemphigoid	1	2	\N	\N	\N	\N	\N	\N
179	MALT Lymphom der Bindehaut	1	2	\N	\N	\N	\N	\N	\N
544	Hornhautdystrophie, Reis-B�ckler	1	2	\N	\N	\N	\N	\N	\N
1412	Hornhautstaphylom	1	2	\N	\N	\N	\N	\N	f
548	Rosazea	0	2	\N	\N	\N	\N	\N	\N
192	Steroidresponse	1	2	H40.1	\N	\N	\N	\N	\N
1414	Neue Diagnose	1	2	\N	\N	\N	\N	\N	\N
1086	Perforierende Augenverletzung	1	2	\N	\N	\N	\N	\N	\N
176	Limbitis	1	2	H16.2	\N	\N	\N	\N	\N
395	Keratitis, Zoster	1	2	\N	\N	\N	\N	\N	\N
159	Hornhautdystrophie, Map Dot Fingerprint	1	2	H18.5	\N	\N	\N	\N	\N
749	Keratitis, Akantham�ben	1	2	\N	\N	\N	\N	\N	\N
186	Z.n. anteriorer isch�mischer Optikusneuropathie	1	0	H47.0	\N	\N	\N	\N	\N
187	Z.n. Radiatio eines Unterlidbasalioms von ca. 15 Jahren	1	0	\N	\N	\N	\N	\N	\N
449	Retinopathia centralis serosa	1	2	H35.7Z	\N	\N	\N	\N	\N
189	Z.n. Viruskeratitis mit Hornhautnarben	1	0	B30.3	\N	\N	\N	\N	\N
190	Z.n. peripherer Iridektomie	1	0	\N	\N	\N	\N	\N	\N
191	Z.n. perforierender Keratoplastik bei Bullosa	1	0	Z94.7	\N	\N	\N	\N	\N
221	Z.n. akutem Keratokonus	1	2	H40.2	\N	\N	\N	\N	\N
485	Chorioidale Neovaskularisation	1	2	\N	\N	\N	\N	\N	\N
589	Episkleritis, rezidivierend	1	2	H15.1	\N	\N	\N	\N	\N
195	Z.n. perforierender Keratoplastik bei Transplantatulkus	1	0	Z94.7	\N	\N	\N	\N	\N
196	Z.n. perforierender Keratoplastik bei Skrophulosanarben	1	0	Z94.7	\N	\N	\N	\N	\N
930	Chandler-Syndrom	1	2	\N	\N	\N	\N	\N	\N
226	Amotio insanata	1	2	H33.2	\N	\N	\N	\N	\N
588	Hornhaut, Vaskularisation, tief	1	2	\N	\N	\N	\N	\N	\N
200	Z.n. Bulbustrauma	1	0	\N	\N	\N	\N	\N	\N
633	Netzhautforamen	1	2	\N	\N	\N	\N	\N	\N
202	Z.n. perforierender Keratoplastik bei Hornhautnarben nach Perforation	1	0	Z94.7	\N	\N	\N	\N	\N
203	Z.n. nach akutem Glaukomanfall und peripherer Iridektomie	1	0	\N	\N	\N	\N	\N	\N
204	Z.n. perforierender Keratoplastik a chaud bei Hornhautulkus nach bull�ser Keratopathie	1	0	Z94.7	\N	\N	\N	\N	\N
205	Z.n. refraktivem T-cut bei hohem Transplantatastigmatismus	1	0	\N	\N	\N	\N	\N	\N
1042	Vordere Synechierung	1	2	\N	\N	\N	\N	\N	\N
207	Z.n. perforierender Keratoplastik bei Keratokonus	1	0	Z94.7	\N	\N	\N	\N	\N
213	Esotropie	1	2	\N	\N	\N	\N	\N	\N
209	Z.n. Exzision eines Carcinoma in situ der Hornhaut	1	0	D09.2	\N	\N	\N	\N	\N
210	Z.n. lokaler Chemotherapie mit MMC Augentropfen	1	0	\N	\N	\N	\N	\N	\N
413	Vorderkammerlinsenpseudophakie	1	2	Z96.1	\N	\N	\N	\N	\N
733	White without Pressure-Degeneration	1	1	\N	\N	\N	\N	\N	\N
1271	Xeroderma pigmentosa	0	2	\N	\N	\N	\N	\N	\N
215	Zentrale Hornhautnarbe nach Ulcus corneae	1	0	H17.1	\N	\N	\N	\N	\N
216	Z.n. Tumorexcision und Defektdeckung mit freiem retroauricul�rem Transplantat	1	0	\N	\N	\N	\N	\N	\N
217	Z.n. perforierender Keratoplastik bei rheumatischem Ulcus	1	0	Z94.7	\N	\N	\N	\N	\N
218	Z.n. perforierender Re-Keratoplastik mit Limbus bei Limbusstammzellinsuffizienz	1	0	Z94.7	\N	\N	\N	\N	\N
219	Z.n. Absto�ungsreaktion	1	0	\N	\N	\N	\N	\N	\N
220	Z.n. Transplantatulkus	1	0	T86.8	\N	\N	\N	\N	\N
1068	Z.n perforierender Keratoplastik	1	\N	\N	L	\N	\N	\N	\N
255	Anophthalmus	1	2	Z90.0	\N	\N	\N	\N	\N
223	Z.n. perforierender Keratoplastik bei Ulkus e lagophthalmus neuroparalyticus	1	0	Z94.7H02.2Z	\N	\N	\N	\N	\N
224	Z.n. Wundspaltrevision wegen Irisinkarzeration	1	0	\N	\N	\N	\N	\N	\N
337	Z.n. Pterygiumoperationen	1	2	\N	\N	\N	\N	\N	\N
257	Bindehautvernarbung	1	2	\N	\N	\N	\N	\N	\N
1092	Stevens-Johnson-Syndrom	1	2	\N	\N	\N	\N	\N	\N
278	Panuveitis	1	0	H30.0	\N	\N	\N	\N	\N
229	Z.n. Grid-Laserkoagulation bei diffus exsudativer diabetischer Makulopathie	1	0	\N	\N	\N	\N	\N	\N
230	Z.n. fokaler Laserkoagulation bei fokaler exsudativer Makulopathie	1	0	\N	\N	\N	\N	\N	\N
641	Retinopathia pigmentosa	1	2	H35.5	\N	\N	\N	\N	\N
258	Hornhautdystrophie Francois Neeten	1	2	H18.5	\N	\N	\N	\N	\N
415	Hautzyste	1	2	\N	\N	\N	\N	\N	\N
447	Randkeratitis	1	2	H16.0	\N	\N	\N	\N	\N
235	Z.n. Tripel Operation bei Fuchs Endotheldystrophie	1	0	Z94.7	\N	\N	\N	\N	\N
648	Phthisis	1	2	\N	\N	\N	\N	\N	\N
237	Z.n. rezidivierenden Herpeskeratitiden seit einem Jahr	1	0	B00.5	\N	\N	\N	\N	\N
363	Pterygium	1	2	H11.0	\N	\N	\N	\N	\N
239	Z.n. Dapsone und Steroidtherapie	1	0	\N	\N	\N	\N	\N	\N
240	Z.n. Cerclageanlage	1	0	\N	\N	\N	\N	\N	\N
241	Z.n. rezidivierenden Iridocyklitiden	1	0	\N	\N	\N	\N	\N	\N
242	Z.n. pars plana Vitrektomie, Membranepeeling und Silikon�limplantation	1	0	\N	\N	\N	\N	\N	\N
243	Z.n. postoperativer Endophthalmitis	1	0	\N	\N	\N	\N	\N	\N
244	Z.n. herpetischer Endotheliitis	1	0	\N	\N	\N	\N	\N	\N
245	Z.n. ven�ser Pr�stase	1	0	H34.8	\N	\N	\N	\N	\N
214	Endotheliitis, herpetisch	1	1	B00.5	\N	\N	\N	\N	\N
908	Psychose	0	2	\N	\N	\N	\N	\N	\N
569	Blepharokeratokonjunktivitis	1	2	\N	\N	\N	\N	\N	\N
250	Z.n. Ver�dung des unteren Tr�nenpunktes	1	0	\N	\N	\N	\N	\N	\N
251	Z.n. pars plana Vitrektomie	1	0	\N	\N	\N	\N	\N	\N
252	Z.n. Grid-Laserkoagulation	1	0	\N	\N	\N	\N	\N	\N
497	Skleritis, nodul�r	1	2	H15.0	\N	\N	\N	\N	\N
254	Z.n. perforierender Keratoplastik bei zentraler Hornhautnarbe	1	0	Z94.7	\N	\N	\N	\N	\N
208	Blepharokeratokonjunktivitis atopica	1	2	H26.2	\N	\N	\N	\N	\N
618	Uveitis, intermedi�r	1	2	\N	\N	\N	\N	\N	\N
236	Transplantat, Astigmatismus, regul�r	1	2	T86.8	\N	\N	\N	\N	\N
233	Uveitis	1	2	H30.0	\N	\N	\N	\N	\N
595	Toxoplasmose	1	2	B58.0	\N	\N	\N	\N	\N
828	Sklerokeratitis	1	2	\N	\N	\N	\N	\N	\N
261	Z.n. Chalazionexzision ab interno	1	0	\N	\N	\N	\N	\N	\N
262	Z.n. dritter perforierender Keratoplastik bei urspr�nglich fraglicher Hornhautver�tzung	1	0	Z94.7	\N	\N	\N	\N	\N
263	Z.n. perforierender Keratoplastik bei postraumatischer bull�ser Keratopathie	1	0	Z94.7	\N	\N	\N	\N	\N
264	Z.n. Irisblendenintraokularlinsenimplantation	1	0	\N	\N	\N	\N	\N	\N
958	Rheumaleiden	0	2	\N	\N	\N	\N	\N	\N
266	Z.n. Transplantatdekompensation bei Sekund�rglaukom	1	0	\N	\N	\N	\N	\N	\N
267	Z.n. Transplantatabsto�ung	1	0	\N	\N	\N	\N	\N	\N
504	Rieger-Syndrom	1	2	Q13.8	\N	\N	\N	\N	\N
269	Z.n. Herpeskeratitis, Endotheliitis und Trabekulitis	1	0	B00.5	\N	\N	\N	\N	\N
270	Z.n. Lasersklerotomie mit transienter Hypotonie	1	0	\N	\N	\N	\N	\N	\N
201	Astenopie	1	2	H53.1	\N	\N	\N	\N	\N
1012	Rieger-Syndrom 	1	2	Q13.8	\N	\N	\N	\N	\N
173	Rubeosis Iridis	1	2	\N	\N	\N	\N	\N	\N
185	Keratitis, Rosazea	1	2	L71.9	\N	\N	\N	\N	\N
364	Hornhautdegeneration, Salzmann	1	2	\N	\N	\N	\N	\N	\N
488	Schisisamotio	1	1	\N	\N	\N	\N	\N	\N
524	Amblyopie, Schielen	1	2	\N	\N	\N	\N	\N	\N
915	Hornhautdystrophie, Schnyder	1	2	\N	\N	\N	\N	\N	\N
199	Diabetische Makulopathie, isch�misch	1	2	H35.3	\N	\N	\N	\N	\N
183	Blepharokeratokonjunktivits atopica	1	2	H10.5	\N	\N	\N	\N	\N
992	Schwerh�rigkeit	0	2	\N	\N	\N	\N	\N	\N
71	Makuladegeneration, trocken	1	2	H35.3	\N	\N	\N	\N	\N
275	Z.n. perforierender Keratoplastik bei sekund�rem Endothelversagen nach Fremdk�rperverletzung	1	0	Z94.7	\N	\N	\N	\N	\N
177	Sj�gren Syndrom	1	2	\N	\N	\N	\N	\N	\N
950	Stauungsniere	0	2	\N	\N	\N	\N	\N	\N
867	Stasisretinopathie	1	2	\N	\N	\N	\N	\N	\N
280	Zarter Nachstar	1	0	\N	\N	\N	\N	\N	\N
523	Staphyloma posticum	1	2	\N	\N	\N	\N	\N	\N
282	Z.n. fokaler Laserkoagulation bei Pigmentepithelabhebungen und subretinalen Neovaskularisationen	1	0	\N	\N	\N	\N	\N	\N
283	Z.n. Venenastverschluss	1	0	\N	\N	\N	\N	\N	\N
284	Z.n. fokaler Laserkoagulation	1	0	\N	\N	\N	\N	\N	\N
285	Z.n. perforierender Keratoplastik bei Keratokonus mit gro�em Transplantat und postoperativem immunsuppressivem Schutz mit CellCept	1	0	Z94.7	\N	\N	\N	\N	\N
259	Nystagmus	1	2	\N	\N	\N	\N	\N	\N
197	Hornhautnarbe, scrophul�s	1	2	\N	\N	\N	\N	\N	\N
399	Skleritis, anterior	1	2	H15.0	\N	\N	\N	\N	\N
343	Prim�r chronische Polyarthritis, seronegativ	1	2	\N	\N	\N	\N	\N	\N
331	Cornea guttata, beginnend	1	2	\N	\N	\N	\N	\N	\N
291	Z.n. perforierender Re-Keratoplastik bei urspr�nglicher Am�benkeratitis	1	0	Z94.7	\N	\N	\N	\N	\N
292	Z.n. perforierender Keratoplastik bei Aphakiebullosa	1	0	Z94.7	\N	\N	\N	\N	\N
297	Glask�rpertr�bung	1	2	H43.3	\N	\N	\N	\N	\N
1137	Stenose	0	2	\N	\N	\N	\N	\N	\N
295	Z.n. kontrollierter Zyklophotokoagulation	1	0	\N	\N	\N	\N	\N	\N
381	Strabismus	1	2	\N	\N	\N	\N	\N	\N
747	Strabismus convergens	1	2	\N	\N	\N	\N	\N	\N
265	Strabismus divergens	1	2	\N	\N	\N	\N	\N	\N
708	Hornhautdystrophie, stromal	1	2	\N	\N	\N	\N	\N	\N
1027	Bluthochdruck	0	2	\N	\N	\N	\N	\N	\N
301	Z.n. Laserabriegelung eines Netzhautloches	1	0	\N	\N	\N	\N	\N	\N
324	Hornhautdystrophie, br�cklig	1	2	H18.5	\N	\N	\N	\N	\N
1115	Struma	0	2	\N	\N	\N	\N	\N	\N
304	Z.n. ppV, membrane peeling, Endolaserkoagulation	1	0	\N	\N	\N	\N	\N	\N
305	Z.n. ppV, membrane peeling und Gasauff�llung bei PDR	1	0	\N	\N	\N	\N	\N	\N
256	Symblepharon	1	2	\N	\N	\N	\N	\N	\N
307	Z.n. Goldimplantation in das Oberlid	1	0	\N	\N	\N	\N	\N	\N
308	Z.n. panretinaler Laserkoagulation bei schwerer nichtproliferativer diabetischer Retinopathie	1	0	\N	\N	\N	\N	\N	\N
582	Synchisis szintillans	1	2	\N	\N	\N	\N	\N	\N
279	Systemische Immunsuppression	0	2	\N	\N	\N	\N	\N	\N
858	Toxoplasmose-Retinitis	1	2	\N	\N	\N	\N	\N	\N
273	Lipodermoid	1	2	D31.6	\N	\N	\N	\N	\N
407	Keratitis, Thygeson	1	2	H16.8	\N	\N	\N	\N	\N
314	Z.n. en-block Resektion eines Karzinoma in situ der Cornea	1	0	\N	\N	\N	\N	\N	\N
315	Z.n. Rezidiv mit anschlie�end 4 Zyklen Mitomycin C Augentropfen	1	0	\N	\N	\N	\N	\N	\N
316	Z.n. perforierender Keratoplastik bei Vorderkammerlinsenbullosa mit VKL Explantation und HKL Implantation	1	0	Z94.7	\N	\N	\N	\N	\N
317	Z.n. Enfernung von gequollenen Linsenresten	1	0	\N	\N	\N	\N	\N	\N
318	Z.n. Druckdekompensation	1	0	\N	\N	\N	\N	\N	\N
319	Z.n. tiefer Sklerektomie	1	0	\N	\N	\N	\N	\N	\N
320	Glaucoma fere absolutum	1	0	\N	\N	\N	\N	\N	\N
321	Z.n. YAG Iridotomie	1	0	\N	\N	\N	\N	\N	\N
727	Hornhautdystrophie, Terrien	1	2	\N	\N	\N	\N	\N	\N
1129	Transplantat, Aussprengung	1	2	\N	\N	\N	\N	\N	\N
735	Transplantat, Delle	1	2	\N	\N	\N	\N	\N	\N
889	Transplantat, Dekompensation	1	2	\N	\N	\N	\N	\N	\N
326	Z.n. makul�rem Venolenverschluss	1	0	\N	\N	\N	\N	\N	\N
996	Transplantat, Narbe, tief	1	2	\N	\N	\N	\N	\N	\N
328	Z.n. exsudativer Amotio mit Kryo	1	0	\N	\N	\N	\N	\N	\N
917	Marcumar	0	2	\N	\N	\N	\N	\N	\N
330	Z.n. peforierender Augenverletzung vor langer Zeit	1	0	\N	\N	\N	\N	\N	\N
634	Keratitis, scrophuloes	1	2	\N	\N	\N	\N	\N	f
1065	Marfan Syndrom	0	2	\N	\N	\N	\N	\N	\N
47	Hornhautdystrophie, marginal	1	2	\N	\N	\N	\N	\N	\N
627	Venenastverschluss, isch�misch	1	2	H34.8	\N	\N	\N	\N	\N
335	Z.n. perforierender Augenverletzung	1	0	\N	\N	\N	\N	\N	\N
336	Z.n. perforierender Keratoplastik bei Herpesnarben und bull�ser Dekompensation nach lamellierender Sklerokeratoplastik	1	0	Z94.7	\N	\N	\N	\N	\N
575	Megalocornea	1	2	\N	\N	\N	\N	\N	\N
338	Z.n. perforierender Keratoplastik mit Limbus bei Herpesnarben und bull�ser Dekompensation nach lamellierender Sklerokeratoplastik	1	0	Z94.7	\N	\N	\N	\N	\N
467	Bindehautmelanose	1	2	\N	\N	\N	\N	\N	\N
340	Z.n. rezidivierender Panskleritis	1	0	\N	\N	\N	\N	\N	\N
394	Hornhautdystrophie, gelatin�s	1	2	\N	\N	\N	\N	\N	\N
312	Microstrabismus convergens	1	2	\N	\N	\N	\N	\N	\N
832	Limbusstammzellinsuffizienz, parziell	1	2	\N	\N	\N	Hornhautvaskularisation �ber den Limbus\r\n	\N	\N
344	Z.n. perforierender Keratoplastik als Triple bei Fuchs Endotheldystrophie	1	0	Z94.7	\N	\N	\N	\N	\N
345	Z.n. perforierender Keratoplastik bei rezidivierender Zosterkeratitis	1	0	Z94.7	\N	\N	\N	\N	\N
346	Z.n. Zosterrezidiv auf dem Transplantat	1	0	\N	\N	\N	\N	\N	\N
347	Z.n. Amniondeckung eines tiefen Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
361	Diabetische Retinopathie, nichtproliferativ	1	2	H35.0	\N	\N	\N	\N	\N
518	Skleritis	1	2	H15.0	\N	\N	\N	\N	\N
699	Multiple Evansecent White Dot Syndrome	1	2	\N	\N	\N	\N	\N	\N
351	Z.n. Goniotrepanation mit Mitomycin C	1	0	\N	\N	\N	\N	\N	\N
352	Z.n. perforierender Keratoplastik bei Hornhautdekompensation	1	0	Z94.7	\N	\N	\N	\N	\N
353	Z.n. intraokularer rTP-Fibrinolyse	1	0	\N	\N	\N	\N	\N	\N
354	Z.n. Zyklo-Photokoagulationen	1	0	\N	\N	\N	\N	\N	\N
355	Z.n. Transplantdekompensation	1	0	T86.8	\N	\N	\N	\N	\N
299	Glask�rperabhebung, inkomplett	1	2	H43.8	\N	\N	\N	\N	\N
411	Nachstar	1	2	H26.4	\N	\N	\N	\N	\N
535	Diabetische Retinopathie, moderat	1	2	\N	\N	\N	\N	\N	\N
804	Transplantat, Keratitis superficialis punctata	1	2	\N	\N	\N	\N	\N	\N
260	Oberlidchalazion	1	2	H00.1	\N	\N	\N	\N	\N
621	Oberlidn�vus	1	2	\N	\N	\N	\N	\N	\N
899	Offenwinkelglaukom	1	2	\N	\N	\N	\N	\N	\N
356	Z.n. perforierender Keratoplastik als Tripleoperation bei Hornhautdekompensation	1	0	Z94.7	\N	\N	\N	\N	\N
357	Z.n. Vorderkammerrekonstruktion	1	0	\N	\N	\N	\N	\N	\N
358	Z.n. perforierender Keratoplastik bei Hornhautdekompensation unter postoperativem CSA-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
359	Z.n. perforierender Keratoplastik als Triple Operation bei Hornhautdekompensation unter postoperativem CSA-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
360	Z.n. akutem Glaukomanfall	1	0	\N	\N	\N	\N	\N	\N
501	Chorioidale Neovaskularisation, okkult	1	2	\N	\N	\N	\N	\N	\N
362	Z.n. perforierender Keratoplastik bei Herpesnarben unter postoperativem CellCept sowie Zovirax Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
393	Hornhautdystrophie, granul�r	1	2	\N	\N	\N	\N	\N	\N
808	Okulomotoriusparese	1	2	\N	\N	\N	\N	\N	\N
349	Okul�re Hypertension	1	2	\N	\N	\N	\N	\N	\N
1031	Oligophrenie	0	2	\N	\N	\N	\N	\N	\N
367	Z.n. Unterlidstellungskorrektur	1	0	\N	\N	\N	\N	\N	\N
368	Z.n. Elektroepilation der Unterlidwimpern	1	0	\N	\N	\N	\N	\N	\N
369	Z.n. Rezidiv einer Herpeskeratitis, -endotheliitis und Trabekulitis	1	0	\N	\N	\N	\N	\N	\N
370	Z.n. re-Goniotrepanation mit MMC bei Sekund�rglaukom	1	0	\N	\N	\N	\N	\N	\N
387	Optikusatrophie	1	2	H47.2	\N	\N	\N	\N	\N
372	Z.n. Tripel Operation	1	0	\N	\N	\N	\N	\N	\N
373	Z.n. fistulierender Operation	1	0	\N	\N	\N	\N	\N	\N
989	Osteoporose	0	2	\N	\N	\N	\N	\N	\N
882	Overlap-Syndrom	0	2	\N	\N	\N	\N	\N	\N
376	Z.n. panretinaler Laserkoagulation	1	0	\N	\N	\N	\N	\N	\N
371	Pseudoexfoliationsglaukom	1	2	\N	\N	\N	\N	\N	\N
378	Z.n. Sklerokeratitis	1	0	\N	\N	\N	\N	\N	\N
379	Z.n. perforierender Keratoplastik nach perforierender Augenverletzung	1	0	Z94.7	\N	\N	\N	\N	\N
397	Fundus hypertonicus	1	2	\N	\N	\N	\N	\N	\N
158	Papillenanomalie	1	2	H47.2	\N	\N	\N	\N	\N
403	Contusio bulbi	1	2	\N	\N	\N	\N	\N	\N
383	Z.n. Herpesrezidiv	1	0	\N	\N	\N	\N	\N	\N
405	Cataracta coerulea	1	1	Q12.0	\N	\N	\N	\N	\N
443	Aniridie	1	2	\N	\N	\N	\N	\N	\N
380	Cataracta hypermatura	1	2	\N	\N	\N	\N	\N	\N
885	Papillenatrophie	1	2	\N	\N	\N	\N	\N	\N
398	Anteriore Skleritis	1	1	H15.0	\N	\N	\N	\N	\N
365	Chalazion	1	1	H00.1	\N	\N	\N	\N	\N
1107	Papillenexkavation, glaukomat�s	1	2	\N	\N	\N	\N	\N	\N
391	Z.n. perforierender Keratoplastik bei herpetischem Ulkus unter postoperativem CSA-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
392	Z.n. perforierender Re-Keratoplastik mit Limbus bei urspr�nglich gittriger Hornhautdystrophie	1	0	Z94.7	\N	\N	\N	\N	\N
313	Glask�rperabhebung, partiell	1	2	H43.8	\N	\N	\N	\N	\N
374	Makula, Patterndystrophie	1	2	\N	\N	\N	\N	\N	\N
925	Transplantat, Perforation	1	2	\N	\N	\N	\N	\N	\N
605	Hornhautdystrophie, marginal pellucid	1	2	\N	\N	\N	\N	\N	\N
225	Periphere Netzhautdegeneration	1	1	H35.4	\N	\N	\N	\N	\N
772	Phakodonesis	1	2	\N	\N	\N	\N	\N	\N
438	Phthisis bulbi	1	2	\N	\N	\N	\N	\N	\N
817	Pigmentdispersionsglaukom	1	2	\N	\N	\N	\N	\N	\N
174	Bindehautzyste	1	2	H11.4	\N	\N	\N	\N	\N
402	Z.n. PPV, Endolaserkoagulation, Phako und IOL	1	0	\N	\N	\N	\N	\N	\N
401	Dermatochalasis	1	1	\N	\N	\N	\N	\N	\N
691	Pinguecula	1	1	\N	\N	\N	\N	\N	\N
329	Skleritis, posterior	1	2	H15.0	\N	\N	\N	\N	\N
406	Zentrale Hornhautnarbe nach Herpeskeratitis	1	0	\N	\N	\N	\N	\N	\N
238	Okul�res Pemphigoid	1	2	L12.1	\N	\N	\N	\N	\N
408	Z.n. perforierender Re-Keratoplastik mit Limbus unter CellCept-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
409	Z.n. akuter endothelialer Absto�ungsreaktion	1	0	\N	\N	\N	\N	\N	\N
375	Herpeskeratitis	1	2	\N	\N	\N	\N	\N	\N
1116	Prostatahyperthrophie	0	2	\N	\N	\N	\N	\N	\N
679	Keratitis, pr�deszemental	1	2	\N	\N	\N	\N	\N	\N
811	Protein-C-Resistenz	0	2	\N	\N	\N	\N	\N	\N
166	Pr�phthise	1	2	H44.5	\N	\N	\N	\N	\N
661	Makulopathie, Pseudoforamen	1	2	\N	\N	\N	\N	\N	\N
416	Z.n. perforierender tektonischer Mini-Keratoplastik bei Pilzkeratitis	1	0	Z94.7	\N	\N	\N	\N	\N
425	Pseudoexfoliationssyndrom	1	2	H26.8	\N	\N	\N	\N	\N
536	Keratitis Thygeson	1	2	\N	\N	\N	\N	\N	\N
419	Z.n. Tripel Operation bei posttraumatischen Hornhautnarben und Aphakie	1	0	\N	\N	\N	\N	\N	\N
951	Lupus-Erythematodes	0	2	\N	\N	\N	\N	\N	\N
421	Z.n. Absto�ungsreaktion und Herpeskeratitis	1	0	\N	\N	\N	\N	\N	\N
231	Diabetische Retinopathie, schwer	1	2	\N	\N	\N	\N	\N	\N
505	Pseudopterygium	1	2	\N	\N	\N	\N	\N	\N
306	Keratopathie, neuroparalytisch	1	0	\N	\N	\N	\N	\N	\N
503	Keratitis filiformis	1	2	\N	\N	\N	\N	\N	\N
489	Retinoschisis	1	0	\N	\N	\N	\N	\N	\N
897	Transplantat, Keratokonus	1	2	\N	\N	\N	\N	\N	\N
428	Z.n. Am�benkeratitis	1	0	\N	\N	\N	\N	\N	\N
1011	Z.n. nach Glaukomanfall	1	2	\N	\N	\N	\N	\N	\N
430	Z.n. PIP-Syndrom	1	0	\N	\N	\N	\N	\N	\N
431	Z.n. perforierender Keratoplastik bei Z.n. Explosionsverletzung 	1	0	Z94.7	\N	\N	\N	\N	\N
432	Z.n. komplizierter Kataraktoperation	1	0	\N	\N	\N	\N	\N	\N
433	Z.n. sekund�rer Hinterkapsellinsenimplantation	1	0	\N	\N	\N	\N	\N	\N
434	Z.n. pars plana Vitrektomie mit Silikon�limplantation	1	0	\N	\N	\N	\N	\N	\N
435	Z.n. Bindehaut-Sklerafistel, versorgt mit Sklerapatch	1	0	\N	\N	\N	\N	\N	\N
436	Z.n. Amotio Retinae, Versorgt mit Cerclage	1	0	\N	\N	\N	\N	\N	\N
437	Z.n. �lentfernung	1	0	\N	\N	\N	\N	\N	\N
999	Z.n. Amniondeckung	1	2	\N	\N	\N	\N	\N	\N
994	Gonoblennorhoe	1	2	\N	\N	\N	\N	\N	\N
440	Z.n. perforierender Re-Keratoplastik bei urspr�nglich alten Hornhautnarben	1	0	Z94.7	\N	\N	\N	\N	\N
441	Z.n. perforierender Re-Keratoplastik bei urspr�nglich alten Hornhautnarben unter CellCept-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
442	Z.n. perforierender Re-Keratoplastik unter CellCept-Schutz bis	1	0	Z94.7	\N	\N	\N	\N	\N
366	Madarosis	1	2	\N	\N	\N	\N	\N	\N
1346	Peters-Anomalie	1	2	\N	\N	\N	\N	\N	\N
420	Heterotropie	1	1	\N	\N	\N	\N	\N	\N
390	Keratitis nummularis	1	2	\N	\N	\N	\N	\N	\N
1349	Z.n. Katarakt-OP	1	\N	\N	\N	\N	\N	\N	\N
155	Blepharokeratokonjunktivitis sicca	1	0	H10.5	\N	\N	\N	\N	\N
781	Clamydienkonjunktivits	1	1	A74.0	\N	\N	\N	\N	\N
639	Cornea verticillata	1	1	\N	\N	\N	\N	\N	\N
444	Z.n. Goniotrepanation und Zyklokryokoagulation	1	0	\N	\N	\N	\N	\N	\N
445	Z.n. Kryokoagulation der Netzhaut bei Nethautforamen	1	0	\N	\N	\N	\N	\N	\N
803	Amblypie, Deprivation	1	2	\N	\N	\N	\N	\N	\N
1358	Hornhautnarbe	1	\N	\N	\N	\N	\N	\N	\N
486	Drusenmakulopathie	1	2	H35.3	\N	\N	\N	\N	\N
154	Drusenpapille	1	1	H47.3	\N	\N	\N	\N	\N
310	Hidrocystom	1	1	\N	\N	\N	\N	\N	\N
794	Absto�ungsreaktion, endothelial	1	2	\N	\N	\N	\N	\N	\N
452	Z.n. Kontusio bulbi	1	0	\N	\N	\N	\N	\N	\N
718	Engwinkelglaukom	1	2	\N	\N	\N	\N	\N	\N
465	Entropium	1	2	\N	\N	\N	\N	\N	\N
455	Z.n. Venenastverschluss vor 8 Wochen	1	0	H34.8	\N	\N	\N	\N	\N
1365	Leberzhirrose	0	2	\N	\N	\N	\N	\N	\N
1367	Makuladegeneration	1	\N	\N	\N	\N	\N	\N	\N
448	Irisn�vus	1	1	D31.4	\N	\N	\N	\N	\N
459	Z.n. Oberlidplastik	1	0	\N	\N	\N	\N	\N	\N
1373	Descemetrisse	1	\N	\N	\N	\N	\N	\N	\N
461	Z.n. Exzision eines Carcinoma in situ der Bindehaut	1	0	\N	\N	\N	\N	\N	\N
462	Z.n. Rezidiv	1	0	\N	\N	\N	\N	\N	\N
463	Z.n. Rezidiv mit anschlie�end einem Zyklus Mitomycin C Augentropfen	1	0	\N	\N	\N	\N	\N	\N
464	Z.n. Keilresektion	1	0	\N	\N	\N	\N	\N	\N
484	Retinale Blutung	1	1	\N	\N	\N	\N	\N	\N
466	Z.n. Ulkus corneae	1	0	\N	\N	\N	\N	\N	\N
227	Iriszyste	1	1	H21.3	\N	\N	\N	\N	\N
1366	Leberzirrhose	0	2	\N	\N	\N	\N	\N	\N
469	Iritis, fibrin�s	1	2	H20.0	\N	\N	\N	\N	\N
446	Makulopathie, isch�misch	1	0	\N	\N	\N	\N	\N	\N
471	Z.n. pars plana Vitrektomie bei posteriorer Uveitis	1	0	\N	\N	\N	\N	\N	\N
460	Keratopathie	1	2	\N	\N	\N	\N	\N	\N
659	Kanalikulitis	1	2	\N	\N	\N	\N	\N	\N
474	Z.n. Hornhauterosio mit Pflanzenteilen	1	0	\N	\N	\N	\N	\N	\N
475	Z.n. perforierender Keratoplastik bei Hornhautnarben nach Epidemica	1	0	Z94.7	\N	\N	\N	\N	\N
476	Z.n. photodynamischer Therapie bei frischer klassischer zentraler subretinaler Neovaskularisation	1	0	\N	\N	\N	\N	\N	\N
652	Bindehautn�vus	1	2	\N	\N	\N	\N	\N	\N
478	Z.n. Hornhautstichelung	1	0	\N	\N	\N	\N	\N	\N
859	Keratitis parenchymatosa	1	2	\N	\N	\N	\N	\N	\N
194	Keratitis superficialis punctata	1	2	H16.2	\N	\N	\N	\N	\N
481	Z.n. Tripel Operation bei herpetischen Hornhautnarben	1	0	\N	\N	\N	\N	\N	\N
482	Z.n. Druckdekompensation bei Sekund�rglaukom	1	0	\N	\N	\N	\N	\N	\N
576	Keratokonjunktivitis vernalis	1	2	\N	\N	\N	\N	\N	\N
322	Hornhautdystrophie, endothelial	1	2	\N	\N	\N	\N	\N	\N
271	Blepharokeratokonjunktivitis vernalis	1	2	H10.1	\N	\N	\N	\N	\N
507	Zentralvenenverschluss	1	2	H34.8	\N	\N	\N	\N	\N
487	Z.n. Exodrainage, Kryokoagulation und Cerclage	1	0	\N	\N	\N	\N	\N	\N
773	Gesichtsfeldeinschr�nkung	1	1	\N	\N	\N	\N	\N	\N
538	Lagophthalmus	1	2	H02.2	\N	\N	\N	\N	\N
687	Ausschluss Makula�dem	1	0	\N	L	\N	\N	\N	\N
303	Ausschluss Resochinmakulopathie	1	0	\N	L	\N	\N	\N	\N
492	Z.n. Abtragung einer zentralen Salzmanndegeneration	1	0	\N	\N	\N	\N	\N	\N
493	Z.n. lamell�rer Keratoplastik	1	0	\N	\N	\N	\N	\N	\N
427	Ausschluss diabetische Retinopathie	1	0	\N	L	\N	\N	\N	\N
382	Ausschluss einer diabetischen Retinopathie	1	0	\N	L	\N	\N	\N	\N
417	Ausschluss tapetoretinale Degeneration	1	0	\N	L	\N	\N	\N	\N
334	Bandf�rmige Keratopathie	1	2	\N	\N	\N	\N	\N	\N
498	Z.n. multiplen Netzhautembolien	1	0	\N	\N	\N	\N	\N	\N
494	Transplantat, Rezidiv	1	2	\N	\N	\N	\N	\N	\N
500	Z.n. Venolenverschluss vor 4-6 Monaten	1	0	H34.8	\N	\N	\N	\N	\N
502	Hornhautulkus	1	2	H17.9	\N	\N	\N	\N	\N
1338	Z.n. IOL-Explantation	1	\N	\N	L	\N	\N	\N	\N
1239	Z.n. homologer Limbusstammzelltransplantation	1	2	\N	\N	\N	\N	\N	\N
1254	Z.n.Triple OP	1	\N	\N	L	\N	\N	\N	\N
1299	Z.n. Glask�rperblutung 	1	\N	\N	L	\N	\N	\N	\N
1302	Z.n. T-Inzision des Transplantates	1	2	\N	\N	\N	\N	\N	\N
1136	Z.n. Vitrektomie	1	2	\N	\N	\N	\N	\N	\N
1077	Z.n. Granatsplitterverletzung	1	\N	\N	L	\N	\N	\N	\N
1072	Durchwanderungsendophthalmitis	1	2	\N	\N	\N	\N	\N	\N
510	Z.n. rezidivierenden Iritiden bei Psoriasis vulgaris	1	0	\N	\N	\N	\N	\N	\N
511	Z.n. perforierender Keratoplastik mit Limbus bei gittriger Hornhautdystrophie unter CellCept-Schutz	1	0	Z94.7	\N	\N	\N	\N	\N
512	Z.n. chronischer endothelialer Absto�ungsreaktion	1	0	\N	\N	\N	\N	\N	\N
1070	Z.n. Keratotomie	1	2	\N	\N	\N	\N	\N	\N
1066	Z.n.pKP	1	\N	\N	L	\N	\N	\N	\N
515	Glaucoma absolutum	1	0	\N	\N	\N	\N	\N	\N
516	Z.n. Splitterverletzung	1	0	\N	\N	\N	\N	\N	\N
517	Z.n. Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
389	Iritis, bakteriell	1	1	\N	\N	\N	\N	\N	\N
1056	Z.n. Keratoplastik	1	\N	\N	L	\N	\N	\N	\N
1055	Z.n. Iridektomie	1	2	\N	\N	\N	\N	\N	\N
521	Z.n. Amniondeckung eines metaherpetischen Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
522	Z.n. pars plana Vitrektomie, Cerclage und Silikon�limplantation	1	0	\N	\N	\N	\N	\N	\N
1039	Hyperplasie	1	\N	\N	L	\N	\N	\N	\N
1058	Keratopathie, metaherpetisch	1	2	\N	\N	\N	\N	\N	\N
450	Hornhautdystrophie, gittrig	1	2	H18.5	\N	\N	\N	\N	\N
1145	Hornhautulkus, neurotroph	1	2	\N	\N	\N	\N	\N	\N
1038	Aniridie, partiell	1	2	\N	\N	\N	\N	\N	\N
1343	Pollinosis	0	2	\N	\N	\N	\N	\N	\N
300	Migraine ophthalmique	1	2	\N	\N	\N	\N	\N	\N
1301	Traktionsamotio	1	2	\N	\N	\N	\N	\N	\N
616	Epidermolysis bullosa	0	2	\N	\N	\N	\N	\N	\N
532	Z.n. radi�rer Keratektomie	1	0	\N	\N	\N	\N	\N	\N
479	Panuveitis, ausgebrannt	1	2	H44.0	\N	\N	\N	\N	\N
564	Anteriore isch�mische Optikusneuropathie	1	2	H47.0	\N	\N	\N	\N	\N
596	Dakryozystitis, chronisch	1	1	H04.3	\N	\N	\N	\N	\N
1030	Lymphom	0	2	\N	\N	\N	\N	\N	\N
499	Arterienastverschluss	1	1	\N	\N	\N	\N	\N	\N
1290	Z.n. Berstung	1	\N	\N	L	\N	\N	\N	\N
1280	Buphthalmus	1	2	\N	\N	\N	\N	\N	\N
1263	Z.n. autologer lamell�rer Limbusstammzelltransplantation	1	2	\N	\N	\N	\N	\N	\N
1260	Z.n. EDTA-Abrasio der Hornhaut	1	2	\N	\N	\N	\N	\N	\N
1259	Z.n. Tr�nenwegsintubation	1	1	\N	\N	\N	\N	\N	\N
1255	Z.n. Iridotomie	1	2	\N	\N	\N	\N	\N	\N
232	Hornhautkonjunktivalisation	1	2	H16.4	\N	\N	\N	\N	\N
1371	Z.n.Ver�tzung	1	\N	\N	\N	\N	\N	\N	\N
537	Z.n. en-block Resektion eines niedrig malignen Spindelzell-A Melanomes der Iris mit Infiltration der Ciliark�rperbasis	1	0	\N	\N	\N	\N	\N	\N
1252	Z.n. Hornhautver�tzung	1	2	\N	\N	\N	\N	\N	\N
1247	Keratitis scrophulosa	1	2	\N	\N	\N	\N	\N	\N
540	Z.n. Resektion eines Keilbeinmenigeoms	1	0	\N	\N	\N	\N	\N	\N
541	Z.n. Pterygium Exzision mit freiem Bindehauttransplantat	1	0	\N	\N	\N	\N	\N	\N
542	Z.n. Pterygium Exzision	1	0	\N	\N	\N	\N	\N	\N
543	Pterygiumrezidiv	1	0	\N	\N	\N	\N	\N	\N
1372	Hypotonie	1	2	\N	\N	\N	\N	\N	\N
1264	Z.n. Laserbehandlung	1	\N	\N	L	\N	\N	\N	\N
1243	Makula�dem	1	2	\N	\N	\N	\N	\N	\N
1212	Z.n.Transplantation	1	\N	\N	L	\N	\N	\N	\N
1211	Z.n. Limbusstammzellentnahme	1	2	\N	\N	\N	\N	\N	\N
1210	Z.n. Kalkver�tzung	1	2	\N	\N	\N	\N	\N	\N
1253	Retinopathie, proliferativ	1	2	\N	\N	\N	\N	\N	\N
1202	Z.n. Fremdk�rperextraktion aus Vorderkammer	1	\N	\N	L	\N	\N	\N	\N
552	Z.n. pars plana Vitrektomie und Endolaser	1	0	\N	\N	\N	\N	\N	\N
1287	Netzhautkryokoagulation	1	0	\N	L	\N	\N	\N	\N
554	Retinopathie	1	2	\N	\N	\N	\N	\N	\N
555	Z.n. perforierender Re-Keratoplastik bei urspr�nglicher Fuchs-Dystrophie	1	0	\N	\N	\N	\N	\N	\N
556	Z.n. traumatischer Limbusperforation	1	0	\N	\N	\N	\N	\N	\N
146	Iridozyklitis, rezidivierend	1	1	D86.9	\N	\N	\N	\N	\N
1275	Hornhautdegeneration	1	\N	\N	L	\N	\N	\N	\N
559	Z.n. perforierender Re-Keratoplastik bei urspr�nglich Vorderkammerlinsenbullosa mit VKL Explantation und HKL Implantation	1	0	\N	\N	\N	\N	\N	\N
1148	Epitheldefekt	1	2	\N	\N	\N	\N	\N	\N
610	Expositionskeratopathie	1	2	\N	\N	\N	\N	\N	\N
1188	Z.n. Bulbusberstung	1	2	\N	\N	\N	\N	\N	\N
563	Z.n. T-Inzisionen auf dem Transplantat	1	0	\N	\N	\N	\N	\N	\N
622	Exotropie	1	2	\N	\N	\N	\N	\N	\N
565	Z.n. perforierender Sklera- Iris- und Linsenverletzung	1	0	\N	\N	\N	\N	\N	\N
566	Z.n. Katarakterxtraktion und Einn�hung einer sklerafixierten Hinterkammerlinse	1	0	\N	\N	\N	\N	\N	\N
567	Z.n. vorderer Vitrektomie und Irisnaht	1	0	\N	\N	\N	\N	\N	\N
1189	H�matokornea	1	2	\N	\N	\N	\N	\N	\N
1193	Descemetolyse	1	2	\N	\N	\N	\N	\N	\N
144	Diabetische Makulopathie, diffus exsudativ	1	2	H35.3	L	\N	\N	\N	\N
1146	Z.n. Amnoinaufn�hung	1	1	\N	\N	\N	\N	\N	\N
1143	Z.n. Filterkissenneedling	1	1	\N	\N	\N	\N	\N	\N
1140	Z.n.Phakoemulsifikation	1	\N	\N	L	\N	\N	\N	\N
120	Z.n. perforierender Keratoplastik bei Fuchs Endotheldystrophie	1	\N	Z94.7	L	\N	\N	\N	\N
290	Anisometropie	1	1	H52.3	\N	\N	\N	\N	\N
617	Ankyloblepharon	1	2	\N	\N	\N	\N	\N	\N
600	Hornhautdystrophie Maumenee	1	2	\N	\N	\N	\N	\N	\N
145	Morbus Junius Kuhnt	1	2	H35.3	\N	\N	\N	\N	\N
579	Z.n. Kontusio bulbi als Kind	1	0	\N	\N	\N	\N	\N	\N
580	Z.n. h�morrhagischem Zentralvenenverschluss	1	0	\N	\N	\N	\N	\N	\N
581	Z.n. Netzhautkryokoagulation der Netzhaut	1	0	\N	\N	\N	\N	\N	\N
148	Z.n. Hornhautaufn�hung	1	2	\N	\N	\N	\N	\N	\N
149	Z.n. Am�benbehandlung mit Brolene/ Polyhexanid	1	1	\N	\N	\N	\N	\N	\N
150	Z.n. perforierender Keratoplastik	1	2	Z94.7	\N	\N	\N	\N	\N
982	Asthma bronchiale	0	2	\N	\N	\N	\N	\N	\N
1337	Taubheit	0	2	\N	\N	\N	\N	\N	\N
122	Transplantatversagen	1	2	Z94.7	L	\N	\N	\N	\N
142	Diabetische Makulopathie, fokal exsudativ	1	2	\N	\N	\N	\N	\N	\N
1285	Vitrektomie	1	\N	\N	L	\N	\N	\N	\N
553	Epiretinale Gliose	1	1	\N	\N	\N	\N	\N	\N
591	Z.n. Zoster Ophthalmicus	1	0	\N	\N	\N	\N	\N	\N
592	Z.n. phototherapeutischer Keratektomie	1	0	\N	\N	\N	\N	\N	\N
593	Z.n. perforierender Re-Keratoplastik unter CSA-Schutz bei urspr�nglich Keratokonus	1	0	\N	\N	\N	\N	\N	\N
1183	Z.n. Hornhautabrasio	1	2	\N	L	\N	\N	\N	\N
692	Ausschluss Bindehautmalignom	1	0	\N	L	\N	\N	\N	\N
423	Ausschluss Bulbusperforation	1	0	\N	L	\N	\N	\N	\N
302	Ausschluss Cornea verticillata	1	0	\N	L	\N	\N	\N	\N
424	Ausschluss Endophthalmitis	1	0	\N	L	\N	\N	\N	\N
599	Z.n. perforierender Keratoplastik bei kongenitaler Endotheldystrophie	1	0	\N	\N	\N	\N	\N	\N
384	Ausschluss Makulaforamen	1	0	H35.3A	L	\N	\N	\N	\N
601	Z.n. perforierender Keratoplastik mit Limbus bei gittriger Hornhautdystrophie unter CSA-Schutz	1	0	\N	\N	\N	\N	\N	\N
568	Glask�rperblutung	1	2	\N	\N	\N	\N	\N	\N
1308	Gichtarthrose	0	2	\N	\N	\N	\N	\N	\N
604	Z.n. Wundrevision, Cerclage und ExoKryokoagulation	1	0	\N	\N	\N	\N	\N	\N
1083	Adipositas	0	2	\N	\N	\N	\N	\N	\N
577	Diabetische Makulopathie, diffus	1	2	\N	\N	\N	\N	\N	\N
864	Amniondeckung	2	2	5-129.2	\N	\N	\N	\N	\N
608	Z.n. Bindehautdeckung eines tiefen Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
1316	HIV-Infektion	0	2	\N	\N	\N	\N	\N	\N
1311	HSV-Endotheliitis	1	1	\N	\N	\N	\N	\N	\N
611	Z.n. Goniotrepanation	1	0	\N	\N	\N	\N	\N	\N
612	Z.n. Sickerkissenrevision	1	0	\N	\N	\N	\N	\N	\N
613	Z.n. LTP	1	0	\N	\N	\N	\N	\N	\N
614	Z.n. erneuter Exzision eines Pseudopterygium-Rezidives mit lokaler Mitomycin-C-Einwirkung auf die Sklera und freiem Bindehauttransplantat	1	0	\N	\N	\N	\N	\N	\N
615	Z.n. Pseudopeterygium Resektion mit postoperativer Radiatio (5x4 Gy)	1	0	\N	\N	\N	\N	\N	\N
222	Glask�rperabhebung, akut	1	1	H43.8	\N	\N	\N	\N	\N
112	Transplantatasto�ung, akut, endothelial	1	1	T86.8	\N	\N	\N	\N	\N
1289	Hepatitis 	0	2	\N	\N	\N	\N	\N	\N
198	Altersabh�ngige Makuladegeneration, feucht	1	2	H35.3	\N	\N	\N	\N	\N
388	Keratokonus, akut	1	2	H16.8	\N	\N	\N	\N	\N
429	Aderhautn�vus	1	1	D31.3	\N	\N	\N	\N	\N
141	Diabetische Retinopathie	1	2	H35.2	\N	\N	\N	\N	\N
623	Z.n. Schieloperation	1	0	\N	\N	\N	\N	\N	\N
624	Z.n. Schieloperationen	1	0	\N	\N	\N	\N	\N	\N
140	Altersabh�ngige Makuladegeneration, trocken	1	2	H35.3	\N	\N	\N	\N	\N
1331	Irisblenden-Pseudophakie	1	2	\N	\N	\N	\N	\N	\N
944	Alkoholabusus	0	2	\N	\N	\N	\N	\N	\N
1329	Aniridie, kongenital	1	2	\N	\N	\N	\N	\N	\N
129	Amaurosis	1	2	\N	\N	\N	\N	\N	\N
125	Diabetische Makulopathie	1	2	H35.3	\N	\N	\N	\N	\N
1277	Epilepsie	0	2	\N	\N	\N	\N	\N	\N
1282	Morbus Bechterew	0	2	\N	\N	\N	\N	\N	\N
1334	Z.n. Magen-Ca	0	\N	\N	\N	\N	\N	\N	\N
625	Z.n. Tarsorrhaphie und Goldimplantation in das Oberlid	1	0	\N	\N	\N	\N	\N	\N
1297	Polyneuropathie	0	2	\N	\N	\N	\N	\N	\N
629	Z.n. perforierender Re-Keratoplastik mit Limbus unter CellCept-Schutz mit ECCE, Bindehaut- und Irisplastik, Synechiolyse	1	0	\N	\N	\N	\N	\N	\N
630	Z.n. Transplanterosio und Druckdekompensation	1	0	\N	\N	\N	\N	\N	\N
631	Z.n. panretinaler Laserkoagulation bei Z.n. Zentralvenenverschluss	1	0	\N	\N	\N	\N	\N	\N
632	Z.n. perforierender Keratoplastik bei Am�benkeratitis	1	0	\N	\N	\N	\N	\N	\N
113	Hornhauterosio	1	1	S05.3	\N	\N	\N	\N	\N
121	Blepharitis	1	2	H01.0	\N	\N	\N	\N	\N
635	Z.n. perforierender Re-Keratoplastik a chaud unter postoperativem CSA-Schutz bei Transplatateinschmelzung	1	0	\N	\N	\N	\N	\N	\N
128	Diabetische Retinopathie, proliferativ	1	2	H35.0	\N	\N	\N	\N	\N
126	Sekund�rglaukom	1	2	H40.9	\N	\N	\N	\N	\N
131	Z.n. YAG Kapsulotomie	1	1	\N	\N	\N	\N	\N	\N
673	Episkleritis	1	2	H15.1	\N	\N	\N	\N	\N
640	Z.n. pars plana Vitrektomie, Retinotomie und Silikon�limplantation bei Z.n. Ablatio retinae	1	0	\N	\N	\N	\N	\N	\N
130	Hornhauterosio, rezidivierend	1	2	H18.8	\N	\N	\N	\N	\N
642	Z.n. Vorderkammersp�lung bei Absto�ungsreaktion	1	0	\N	\N	\N	\N	\N	\N
136	Trichiasis	1	2	H02.0	\N	\N	\N	\N	\N
138	Z.n. Zentralvenenverschluss	1	2	H34.8	\N	\N	\N	\N	\N
645	Z.n. Kryokoagulation der Netzhaut	1	0	\N	\N	\N	\N	\N	\N
1314	Schmerztherapie	0	2	\N	\N	\N	\N	\N	\N
41	Aphakie	1	2	H27.0	\N	\N	\N	\N	\N
385	Venenastverschluss	1	2	H34.8	\N	\N	\N	\N	\N
1298	Aderhautblutung	1	1	\N	\N	\N	\N	\N	\N
651	Z.n. Glask�rperblutung bei proliferativer diabetischer Retinopathie	1	0	\N	\N	\N	\N	\N	\N
1317	Z.n. Lues	0	\N	\N	\N	\N	\N	\N	\N
653	Z.n. Iridektomie bei Z.n. Glaukomanfall	1	0	\N	\N	\N	\N	\N	\N
1292	Z.n. Fazialisparese	0	\N	\N	\N	\N	\N	\N	\N
655	Zentrale Chorioidalisatrophie	1	0	\N	\N	\N	\N	\N	\N
1305	geistig behindert	0	2	\N	\N	\N	\N	\N	\N
657	Z.n. perforierender Keratoplastik a chaud bei Z.n. Ver�tzung	1	0	\N	\N	\N	\N	\N	\N
1327	Z.n. Kryokoagulation	1	\N	\N	L	\N	\N	\N	\N
1320	Z.n. Limbusstammzelltransplantation	1	2	\N	\N	\N	\N	\N	\N
1313	Z.n. Zosterkeratitis	1	2	\N	\N	\N	\N	\N	\N
1281	Endophthalmitis	1	2	\N	\N	\N	\N	\N	\N
1303	Z.n. Malignom	0	\N	\N	\N	\N	\N	\N	f
1180	Ulcus Mooren	1	2	\N	\N	\N	\N	\N	\N
1190	Aortenklappenstenose	0	2	\N	\N	\N	\N	\N	\N
665	Z.n. perforierender Re-Keratoplastik bei urspr�ngliche Herpesnarben	1	0	\N	\N	\N	\N	\N	\N
666	Z.n. gedeckter Bulbusberstung	1	0	\N	\N	\N	\N	\N	\N
667	Z.n. Phakoemulsifikation mit HKL-Implantation, ppV und �lf�llung	1	0	\N	\N	\N	\N	\N	\N
1250	Arthrose	0	2	\N	\N	\N	\N	\N	\N
669	Z.n. Exzision eines T-Zell Lymphomes der Konjunktiva	1	0	\N	\N	\N	\N	\N	\N
670	Z.n. Radiatio der Bindehaut	1	0	\N	\N	\N	\N	\N	\N
1214	Keratokonjunktivitis	1	2	\N	\N	\N	\N	\N	\N
672	Z.n. perforierender Keratoplastik mit Limbus bei Aniridiesyndrom unter postoperativem CellCept-Schutz	1	0	\N	\N	\N	\N	\N	\N
1244	ASS	0	2	\N	L	\N	\N	\N	\N
674	Z.n. Bindehautbiopsie	1	0	\N	\N	\N	\N	\N	\N
1221	Silikon�lf�llung	1	2	\N	\N	\N	\N	\N	\N
1181	Z.n. Mamma Ca	0	\N	\N	\N	\N	\N	\N	\N
677	Z.n. mehrfacher Elektroepilation von Unterlidwimpern	1	0	\N	\N	\N	\N	\N	\N
1179	Z.n. Keratitis	1	\N	\N	L	\N	\N	\N	\N
1267	Carotisstenose	0	2	\N	\N	\N	\N	\N	\N
680	Z.n. Tripel Operation bei ICE-Syndrom	1	0	\N	\N	\N	\N	\N	\N
681	Z.n. perforierender Keratoplastik bei Transplantbullosa	1	0	\N	\N	\N	\N	\N	\N
682	Z.n. perforierender Re-Keratoplastik unter CSA-Schutz bei urspr�nglich Bullosa	1	0	\N	\N	\N	\N	\N	\N
683	Z.n. postoperativer Druckdekompensation	1	0	\N	\N	\N	\N	\N	\N
1265	Down Syndrom	0	2	\N	\N	\N	\N	\N	\N
685	Z.n. perforierender Keratoplastik mit Limbus bei urspr�nglich Am�benkeratitis	1	0	\N	\N	\N	\N	\N	\N
1207	Fibromyalgie	0	2	\N	\N	\N	\N	\N	\N
1176	Gehbehindert	0	2	\N	\N	\N	\N	\N	\N
1159	Hashimoto Thyreoditis	0	2	\N	\N	\N	\N	\N	\N
689	Z.n. Hornhautschleifung und EDTA.Abrasio	1	0	\N	\N	\N	\N	\N	\N
690	Z.n. schwerer Kalkver�tzung	1	0	\N	\N	\N	\N	\N	\N
1173	Z.n.Phosphorverbrennung	1	\N	\N	L	\N	\N	\N	\N
1171	Irisdefekt	1	2	\N	\N	\N	\N	\N	\N
1165	Z.n.antiastigmatische Keratotomie	1	\N	\N	L	\N	\N	\N	\N
694	Z.n. Amniondeckung eines tiefen Transplantatulkus	1	0	\N	\N	\N	\N	\N	\N
695	Z.n. perforierender Keratoplastik a chaud bei rheumatischem Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
696	Z.n. perforierender Keratoplastik a chaud bei rheumatischem Hornhautulkus unter systemischem CellCept-Schutz	1	0	\N	\N	\N	\N	\N	\N
697	Z.n. perforierender Re-Keratoplastik als Tripel-Operation	1	0	\N	\N	\N	\N	\N	\N
698	Z.n. perforierender Re-Keratoplastik als Tripel-Operation unter CellCept und Zovirax-Schutz	1	0	\N	\N	\N	\N	\N	\N
1238	Hepatitis B	0	2	\N	\N	\N	\N	\N	\N
700	Hordeolum	1	0	\N	\N	\N	\N	\N	\N
1161	Z.n. Re-Keratoplastik	1	\N	\N	L	\N	\N	\N	\N
1160	Z.n. Keratoplastik bei Fuchs`scher Endotheldystrophie	1	\N	\N	L	\N	\N	\N	\N
703	Z.n. perforierender Keratoplastik sine IOL bei postraumatischer bull�ser Keratopathie und Aphakie	1	0	\N	\N	\N	\N	\N	\N
1157	Akantham�benkeratitis	1	2	\N	\N	\N	\N	\N	\N
705	Z.n. GvHD bei Z.n. KM-Tx bei AML	1	0	\N	\N	\N	\N	\N	\N
706	Z.n. Resektion eines atypischen Pterygiums	1	0	\N	\N	\N	\N	\N	\N
707	Z.n. perforierender Keratoplastik bei stromaler Hornhautdystrophie	1	0	\N	\N	\N	\N	\N	\N
1268	Herzschrittmacher	0	2	\N	\N	\N	\N	\N	\N
709	Z.n. perforierender Re-Keratoplastik bei rezidivierenden Herpeskeratitiden	1	0	\N	\N	\N	\N	\N	\N
710	Z.n. perforierender Hornhaut- und Linsenverletzung	1	0	\N	\N	\N	\N	\N	\N
1230	Hypakusis	0	2	\N	\N	\N	\N	\N	\N
1191	Karotisstenose	0	2	\N	\N	\N	\N	\N	\N
1187	Kinderl�hmung	0	2	\N	\N	\N	\N	\N	\N
1232	Kolokarzinom	0	2	\N	\N	\N	\N	\N	\N
1246	Mammakarzinom	0	2	\N	\N	\N	\N	\N	\N
1205	Morbus Down	0	2	\N	\N	\N	\N	\N	\N
1170	Morbus Wegener	0	2	\N	\N	\N	\N	\N	\N
1167	Nervosit�t	0	2	\N	\N	\N	\N	\N	\N
1237	Z.n. Chlorver�tzung	1	\N	\N	L	\N	\N	\N	\N
1236	Z.n. Vorderkammerpunktion	1	1	\N	\N	\N	\N	\N	\N
1235	Z.n. Eximer-Laser-Trabekulotomie	1	1	\N	\N	\N	\N	\N	\N
715	Z.n. Lippenschleimhautplastik, Tarsusknickung und Amniondeckung eines Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
1234	Z.n. epiretinalem Peeling	1	\N	\N	L	\N	\N	\N	\N
1233	Konjunktivitis  	1	2	\N	\N	\N	\N	\N	\N
1158	Neurodermitis	0	2	\N	\N	\N	\N	\N	\N
1242	Neurofibromatose	0	2	\N	\N	\N	\N	\N	\N
1272	Parkinson	0	2	\N	\N	\N	\N	\N	\N
1166	Platzangst	0	2	\N	\N	\N	\N	\N	\N
722	Z.n. perforierender Keratoplastik bei Vorderkammerlinsenbullosa mit VKL Explantation	1	0	\N	\N	\N	\N	\N	\N
723	Z.n. lateraler Tarsorrhaphie	1	0	\N	\N	\N	\N	\N	\N
1226	Keratokonjunktivitis  	1	2	\N	\N	\N	\N	\N	\N
1172	Netzhautplombierung	1	2	\N	L	\N	\N	\N	\N
1274	Polymyalgia rheumatica	0	2	\N	\N	\N	\N	\N	\N
1220	Z.n. Amotio retinae, Plombe	1	\N	\N	L	\N	\N	\N	\N
729	Z.n. perforierender Hornhautverletzung	1	0	\N	\N	\N	\N	\N	\N
730	Z.n. intrcapsul�rer Cataraktextraktion	1	0	\N	\N	\N	\N	\N	\N
1217	Z.n. Re-KP	1	\N	\N	L	\N	\N	\N	\N
732	Z.n. Contusio Bulbi	1	0	\N	\N	\N	\N	\N	\N
1195	Bronchitis	0	2	\N	\N	\N	\N	\N	\N
734	Zentrale Gef��anomalie	1	0	\N	\N	\N	\N	\N	\N
1270	Sulfonamidallergie	0	2	\N	\N	\N	\N	\N	\N
1156	Trisomie 21	0	2	\N	\N	\N	\N	\N	\N
737	Z.n. perforierender Re-Keratoplastik bei urspr�nglich Keratokonus	1	0	\N	\N	\N	\N	\N	\N
1204	Tremor	0	2	\N	\N	\N	\N	\N	\N
739	Z.n. sektorf�rmiger Netzhautkoagulation der Netzhaut	1	0	\N	\N	\N	\N	\N	\N
740	Z.n. perforierender Keratoplastik bei pr�deszementaler Keratitis	1	0	\N	\N	\N	\N	\N	\N
1177	Verwirrt	0	2	\N	\N	\N	\N	\N	\N
1273	Z.n. Herzstillstand	0	\N	\N	\N	\N	\N	\N	\N
743	Z.n. pars plana Vitrektomie, Membranepeeling, Endolaser und Silikon�limplantation	1	0	\N	\N	\N	\N	\N	\N
744	Z.n. pars plana Vitrektomie, Membranepeeling und Endolaser	1	0	\N	\N	\N	\N	\N	\N
745	Z.n. Tr�nenpunktverschluss mit versenktem Punctum-plug	1	0	\N	\N	\N	\N	\N	\N
400	Limbusstammzellinsuffizienz	4	0	\N	\N	\N	\N	\N	\N
341	Keratitis, interstiziell	1	2	\N	L	\N	\N	\N	\N
1051	Aniridiesyndrom	1	2	\N	\N	\N	\N	\N	\N
1352	Z.n.pKP bei Hornhaut-Dystrophie	1	\N	\N	\N	\N	\N	\N	\N
1127	Diabetes mellitus 	0	2	\N	\N	\N	\N	\N	\N
751	Z.n. Tr�nenpunktverschluss	1	0	\N	\N	\N	\N	\N	\N
752	Z.n. Hornhautaufn�hung bei Skleraperforation bei M. G�nther	1	0	\N	\N	\N	\N	\N	\N
753	Zentrale Hornhautnarbe	1	0	\N	\N	\N	\N	\N	\N
754	Zentrale ruhige verfettende Hornhautnarbe	1	0	\N	\N	\N	\N	\N	\N
643	Glask�rperprolaps	1	2	\N	\N	\N	\N	\N	\N
1040	Z.n. Endokarditis	0	\N	\N	\N	\N	\N	\N	\N
1041	Z.n. Meningitis	0	\N	\N	\N	\N	\N	\N	\N
675	Keratitis disciformis	1	2	\N	\N	\N	\N	\N	\N
759	Z.n. perforierender Re-Keratoplastik	1	0	\N	\N	\N	\N	\N	\N
760	Z.n. perforierender Re-Keratoplastik mit Limbus unter Sandimmun-Schutz bei urspr�nglich unklaren Hornhautnarben	1	0	\N	\N	\N	\N	\N	\N
761	Z.n. perforierender Re-Keratoplastik bei urspr�nglich br�ckliger Hornhautdystrophie	1	0	\N	\N	\N	\N	\N	\N
1126	Herzinsuffizienz	0	2	\N	\N	\N	\N	\N	\N
664	Heterophorie	1	1	\N	\N	\N	\N	\N	\N
1132	Homozystinurie	0	2	\N	\N	\N	\N	\N	\N
765	Z.n. kryptogener Netzhautblutung	1	0	\N	\N	\N	\N	\N	\N
766	Z.n. systemischer Steroid-Therapie	1	0	\N	\N	\N	\N	\N	\N
277	Transplantat, Astigmatismus, irregul�r	1	2	T86.8	\N	\N	\N	\N	\N
1344	Hornhautverd�nnung	1	\N	\N	\N	\N	\N	\N	\N
764	Fibrae medullares	1	1	\N	\N	\N	\N	\N	\N
228	Hornhautnarbe, oberfl�chlich	1	2	B30.3	\N	\N	\N	\N	\N
771	Z.n. Zentralarterienverschluss	1	0	\N	\N	\N	\N	\N	\N
883	Hyperurik�mie	0	2	\N	\N	\N	\N	\N	\N
350	Iridocorneoendotheliales Syndrom (ICE)	1	2	H21.8	\N	\N	\N	\N	\N
774	Z.n. perforierender Re-Keratoplastik mit Limbus bei urspr�nglich herpetischen Hornhautnarben	1	0	\N	\N	\N	\N	\N	\N
775	Z.n. IOL-Explantation und Kapselsackresektion bei Candidaendophthalmitis	1	0	\N	\N	\N	\N	\N	\N
1249	Hornhautringstudie (Bir)	5	1	\N	\N	\N	\N	\N	\N
776	Z.n. fistulierender Operation ausw�rts	1	0	\N	\N	\N	\N	\N	\N
792	Epiretinale Gliose, idiopathisch	1	2	\N	\N	\N	\N	\N	\N
453	Iridozyklitis	1	2	H20.0	\N	\N	\N	\N	\N
779	Z.n. patieller Epithelabrasio mit Abschleifung eines chronischen atopischen Plaques	1	0	\N	\N	\N	\N	\N	\N
780	Z.n. Phakoemulsifikation mit HKL-Implantation in den Sulcus	1	0	\N	\N	\N	\N	\N	\N
654	Iris capture	1	2	\N	\N	\N	\N	\N	\N
782	Z.n. perforierender Augenverletzung mit prim�rem Linsenverlust	1	0	\N	\N	\N	\N	\N	\N
662	Irisanomalie	1	2	\N	\N	\N	\N	\N	\N
784	Z.n. perforierender Re-Keratoplastik mit Limbus unter Sandimmun-Schutz	1	0	\N	\N	\N	\N	\N	\N
785	Z.n. multiplen Oberfl�chenst�rungen des Transplantates	1	0	\N	\N	\N	\N	\N	\N
786	Z.n. explorativer Keratoplastik, ICCE und open-sky Virektomie bei Endophthalmitis	1	0	\N	\N	\N	\N	\N	\N
787	Z.n. Tripel Operation mit Limbus	1	0	\N	\N	\N	\N	\N	\N
788	Z.n. Lippenschleimhautplastik	1	0	\N	\N	\N	\N	\N	\N
742	Retinoschisis, retikul�r	1	2	\N	\N	\N	\N	\N	\N
790	Z.n. Vorderkammersp�lung mit Fortecortin bei Z.n. endothelialer Absto�ungsreaktion	1	0	\N	\N	\N	\N	\N	\N
551	Lidtumor	1	2	\N	\N	\N	\N	\N	\N
767	Keratitis	1	2	\N	\N	\N	\N	\N	\N
793	Z.n. refraktiver Fadennachlegung	1	0	\N	\N	\N	\N	\N	\N
1121	Lungenembolie	0	2	\N	\N	\N	\N	\N	\N
924	Lyell-Syndrom	0	2	\N	\N	\N	\N	\N	\N
796	Z.n. erg�nzender panretinaler Laserkoagulation mit insgesamt xx Herden	1	0	\N	\N	\N	\N	\N	\N
468	Macula pucker	1	2	H35.3	\N	\N	\N	\N	\N
799	Z.n. Tripel Operation bei Keratokonus und Katarakt	1	0	\N	\N	\N	\N	\N	\N
800	Z.n. Lensektomie bei Katarakt	1	0	\N	\N	\N	\N	\N	\N
801	Z.n. perforierender Keratoplastik mit Implantation einer sekund�ren IOL	1	0	\N	\N	\N	\N	\N	\N
758	Makulaforamen	1	2	\N	\N	\N	\N	\N	\N
932	Magenprobleme	0	2	\N	\N	\N	\N	\N	\N
805	Z.n. Tripel Operation mit Limbus bei Limbusstammzellinsuffizienz	1	0	\N	\N	\N	\N	\N	\N
647	Makulopathie	1	2	\N	\N	\N	\N	\N	\N
1118	Asbestose	0	2	\N	\N	\N	\N	\N	\N
1047	Bandscheibenvorfall	0	2	\N	\N	\N	\N	\N	\N
1131	Z.n. pKP	1	\N	\N	L	\N	\N	\N	\N
1091	Allergie	0	\N	\N	L	\N	\N	\N	\N
907	Z.n. Entropium-Op	1	0	\N	\N	\N	\N	\N	\N
918	Faktor V Mutation	0	2	\N	\N	\N	\N	\N	\N
978	Fazialisparese 	0	2	\N	\N	\N	\N	\N	\N
1003	Angina pectoris	0	2	\N	\N	\N	\N	\N	\N
977	Z.n. Kopfverletzung	0	0	\N	\N	\N	\N	\N	\N
984	Z.n. Prostata-Ca	0	0	\N	\N	\N	\N	\N	\N
916	Z.n. Lungenembolie	0	0	\N	\N	\N	\N	\N	\N
997	Z.n. Knochenmarkstransplantation	0	2	\N	\N	\N	\N	\N	\N
810	Z.n. Zyklo-Photokoagulation bei rubeotischem Sekund�rglaukom	1	0	\N	\N	\N	\N	\N	\N
912	Makulopathie, myop	1	2	\N	L	\N	\N	\N	\N
937	Glaukom, kongenital	1	2	\N	\N	\N	Haab Leisten am Endothel	Kongenitales Glaukom	\N
813	Z.n. perforierender Re-Keratoplastik mit Limbus bei Limbusstammzellinsuffizienz unter systemischem CSA-Schutz	1	0	\N	\N	\N	\N	\N	\N
815	Z.n. perforierender Keratoplastik a chaud bei Hornhautulkus nach spontan perforiertem Keratokonus	1	0	\N	\N	\N	\N	\N	\N
816	Z.n. perforierender Re-Keratoplastik a chaud bei urspr�nglich Keratokonus	1	0	\N	\N	\N	\N	\N	\N
940	Dyspnoe	0	2	\N	\N	\N	\N	\N	\N
923	Hornhautdystrophie	1	0	\N	\N	\N	\N	\N	\N
934	Z.n. Iritis	1	0	\N	\N	\N	\N	\N	\N
936	Z.n. KP	1	0	\N	\N	\N	\N	\N	\N
821	Z.n. Lidoperation	1	0	\N	\N	\N	\N	\N	\N
938	Z.n. Trabekelektomie	1	0	\N	\N	\N	\N	\N	\N
946	Z.n. Bypass-Op	0	0	\N	\N	\N	\N	\N	\N
824	Z.n. peripherern Kryokoagulationen der Netzhaut	1	0	\N	\N	\N	\N	\N	\N
825	Z.n. pars plana Vitrektomie bei persistierenden Glask�rpertr�bungen	1	0	\N	\N	\N	\N	\N	\N
826	Z.n. Goniotrepanation mit Mitomycin C ausw�rts	1	0	\N	\N	\N	\N	\N	\N
827	Z.n. perforierender Re-Keratoplastik unter CellCept- und Zovirax-Schutz bei urspr�nglich Herpesnarben	1	0	\N	\N	\N	\N	\N	\N
959	Hornhauteinschmelzung	1	2	\N	\N	\N	\N	\N	\N
829	Z.n. systemischer CellCept-Therapie	1	0	\N	\N	\N	\N	\N	\N
948	Z.n. Glaukomanfall	1	0	\N	\N	\N	\N	\N	\N
954	Z.n. Hepatitis	0	0	\N	\N	\N	\N	\N	\N
956	Z.n. Hornhauttrauma	1	0	\N	\N	\N	\N	\N	\N
833	Zentrale Hornhautnarbe nach Fremdk�rperverletzung	1	0	\N	\N	\N	\N	\N	\N
834	Z.n. Arteriolenverschluss der Netzhaut	1	0	\N	\N	\N	\N	\N	\N
961	Z.n. Fremdk�rperverletzung mit Descemetruptur	1	0	\N	\N	\N	\N	\N	\N
962	Z.n. perforierender Keratoplastik bei Endotheldekompensation	1	0	\N	\N	\N	\N	\N	\N
855	Episklerale Gef��anomalie	1	0	\N	L	\N	\N	\N	\N
838	Z.n. Ptosisoperationen	1	0	\N	\N	\N	\N	\N	\N
892	Diabetes mellitus	0	2	\N	\N	\N	\N	\N	\N
840	Z.n. Thermoabrasio eines therapieresistenten Hornhautulkus	1	0	\N	\N	\N	\N	\N	\N
963	Z.n. perforierender Keratoplastik bei kristalliner Keratopathie	1	0	\N	\N	\N	\N	\N	\N
860	Transplantat, Fadenlockerung	1	2	\N	\N	\N	\N	\N	\N
843	Z.n. Enukleation des rechten Auges	1	0	\N	\N	\N	\N	\N	\N
968	Z.n. Phakoemulsifikation mit HKL-Implantation	1	0	\N	\N	\N	\N	\N	\N
845	Z.n. perforierender Keratoplastik mit Limbus bei Limbusstammzellinsuffizienz unter CellCept- und Zovirax-Schutz	1	0	\N	\N	\N	\N	\N	\N
969	Z.n. perforierender Keratoplastik bei Transplantatversagen	1	0	\N	\N	\N	\N	\N	\N
970	DiagnoseID\r\nz.n. p	1	0	\N	\N	\N	\N	\N	\N
974	Z.n. iatrogene post OP Amotio	1	0	\N	\N	\N	\N	\N	\N
823	Arcus lipoides corneae	1	1	\N	\N	\N	\N	\N	\N
975	Z.n. arteriellem Gef��verschlu�	1	0	\N	\N	\N	\N	\N	\N
851	Z.n. Stellungskorrektur des Oberlides ausw�rts	1	0	\N	\N	\N	\N	\N	\N
1026	Herzinfarkt	0	2	\N	\N	\N	\N	\N	\N
853	Z.n. mehrfacher Applikation eines parabulb�ren Steroid-Depots	1	0	\N	\N	\N	\N	\N	\N
967	Bronchitis, chronisch	0	2	\N	\N	\N	\N	\N	\N
964	Polyarthritis	0	2	\N	\N	\N	\N	\N	\N
991	Herzrhythmusst�rungen	0	2	\N	\N	\N	\N	\N	\N
1007	Dermatitis	0	2	\N	\N	\N	\N	\N	\N
945	Depression	0	2	\N	\N	\N	\N	\N	\N
955	Heuschnupfen	0	2	\N	\N	\N	\N	\N	\N
922	Descemetozele	1	2	\N	\N	\N	\N	\N	\N
976	Ektropium, neuroparalytisch	1	2	\N	\N	\N	\N	\N	\N
927	Histiozytom	1	2	\N	\N	\N	\N	\N	\N
957	Hornhautvaskularisation	1	2	\N	\N	\N	\N	\N	\N
865	Arterielle Hypertonie	0	2	\N	\N	\N	\N	\N	\N
902	Nephropathie, diabetisch	0	2	\N	\N	\N	\N	\N	\N
866	Tripel-Operation	2	0	\N	\N	\N	\N	\N	\N
1024	Re - Konus	1	2	\N	\N	\N	\N	\N	\N
868	Normalrisiko	4	0	\N	\N	\N	\N	\N	\N
869	Glaukom	4	5	\N	\N	\N	\N	\N	\N
1019	GvHD	1	2	\N	\N	\N	\N	\N	\N
871	Herpes	4	3	\N	\N	\N	\N	\N	\N
872	S�ugling	4	4	\N	\N	\N	\N	\N	\N
873	Immunrisiko erh�ht	4	1	\N	\N	\N	\N	\N	\N
874	Am�ben	4	6	\N	\N	\N	\N	\N	\N
875	HLAEndothel	5	1	\N	\N	\N	\N	\N	\N
876	HerpesIS	5	2	\N	\N	\N	\N	\N	\N
877	Basiliximab	5	3	\N	\N	\N	\N	\N	\N
1005	Hypothyreose	0	2	\N	\N	\N	\N	\N	\N
913	IOL-Luxation	1	2	\N	\N	\N	\N	\N	\N
880	Z.n. perforierender Keratoplastik bei Astigmatismus	1	0	\N	\N	\N	\N	\N	\N
881	Zytokine	5	4	\N	\N	\N	\N	\N	\N
965	Immunsupprimiert	0	2	\N	\N	\N	\N	\N	\N
942	KHK	0	2	\N	\N	\N	\N	\N	\N
884	Hypercholesterin�mie	0	0	\N	\N	\N	\N	\N	\N
979	Keratoglobus	1	2	\N	\N	\N	\N	\N	\N
886	Z.n. Herpeskeratouveitis	1	0	\N	\N	\N	\N	\N	\N
947	Aortenstenose	0	2	\N	\N	\N	\N	\N	\N
966	Konservierungsmittelallergie	0	2	\N	\N	\N	\N	\N	\N
1004	Koronare Herzkrankheit	0	2	\N	\N	\N	\N	\N	\N
890	Z.n. Apoplex	0	0	\N	\N	\N	\N	\N	\N
891	Z.n. Herzinfarkt	0	0	\N	\N	\N	\N	\N	\N
841	Cataracta congenita	1	2	\N	\N	\N	\N	\N	\N
901	Z.n. Myokardinfarkt	0	0	\N	\N	\N	\N	\N	\N
898	Hepatitis C	0	2	\N	\N	\N	\N	\N	\N
904	Z.n. Ver�tzung	1	0	\N	\N	\N	\N	\N	\N
893	Dialysepflicht	0	2	\N	\N	\N	\N	\N	\N
1408	Mischdys	5	\N	\N	\N	\N	\N	\N	\N
1394	Z.n. Enukleation	1	2	\N	\N	\N	\N	\N	f
309	Hornhautnarbe, herpetisch	1	2	\N	\N	\N	Vaskularisierte, tiefe Hornhautnarbe unter einbeziehung des optischen Zentrums	Herpetische Hornhautnarbe	\N
1404	Versicherung	6	\N	\N	\N	\N	\N	\N	t
1306	Hornhautnarben nach DALK	1	\N	\N	L	\N	\N	\N	f
1396	8 EKN	8	1395	\N	\N	\N	\N	\N	\N
51	Hornhautdegeneration, bulloes	1	2	H18.1	\N	\N	Hornhaut mit ausgepr�gtem Epithel- und Stroma�dem	Bull�se Keratopathie	f
1400	Limbus+BH+MMC (Rei)	5	\N	\N	\N	\N	\N	\N	\N
1370	Z.n.Vitrektomie	1	\N	\N	\N	\N	\N	\N	f
1397	1 fortlaufender Faden	8	1395	\N	\N	\N	\N	\N	\N
1405	WL	8	1404	\N	\N	\N	\N	\N	\N
1089	Z.n. Keratoplastik bei Keratokonus	1	\N	\N	L	\N	\N	\N	f
1398	2 fortlaufende F�den	8	1395	\N	\N	\N	\N	\N	\N
1402	Mechanisch	8	1401	\N	\N	\N	\N	\N	\N
1399	EKN+ 1 fortlaufender Faden	8	1395	\N	\N	\N	\N	\N	\N
1409	SFM	5	\N	\N	\N	\N	\N	\N	\N
1403	Femto	8	1401	\N	\N	\N	\N	\N	\N
1406	P	8	1404	\N	\N	\N	\N	\N	\N
1395	Nahtf�hrung	7	1	\N	\N	\N	\N	\N	t
1401	Praeparation	7	2	\N	\N	\N	\N	\N	t
921	FANCY	5	0	\N	\N	\N	\N	\N	\N
1407	Regel	8	1404	\N	\N	\N	\N	\N	\N
1411	Neue Diagnose	1	2	\N	\N	\N	\N	\N	\N
1410	Hornhautdystrophie, makul�r	1	2	\N	\N	\N	\N	\N	f
1413	Wertelisteneintrag	8	1412	\N	\N	\N	\N	\N	\N
1415	Mittel	0	2	\N	\N	\N	\N	\N	\N
1418	Hornhautdystrophie, Schlichting	1	2	\N	\N	\N	\N	\N	f
1416	MLS-Syndrom	0	2	\N	\N	\N	\N	\N	\N
1417	Wertelisteneintrag	8	1416	\N	\N	\N	\N	\N	\N
953	Transplantatulcus	1	0	\N	\N	\N	\N	\N	f
1419	Wertelisteneintrag	8	946	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: GlobalSettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "GlobalSettings" ("Key", "Value") FROM stdin;
HLAInstitute	Institut fuer Transfusionsmedizin, Universitaetsklinikum Freiburg
HLAMaterial	Blood
HLAMethod	Class I: Serological. Class II: PCR
WTShareTypedCorneas	0,97
WTShareTransplantableCorneas	0,6
WTCorneasPerDay	2,0
EndothelBasepath	/HHB/Endothel-Archiv/
EndothelHost	
chargennummer_tm	0252A v. 11.01.2013
chargennummer_m1	0958A
chargennummer_m2	0252A\n
chargennummer_bss_wellplate	2201823\n\n\n
chargennummer_halter	HD1210100\n
chargennummer_ncs	S0415 Charge 1262S\n
chargennummer_bss	090712 PH 7,2
cellfinder_trial_id	14
chargennummer_flasche	2059842
\.


--
-- Data for Name: HLAPatient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HLAPatient" ("ID", "IDPatient", "IDHLA", "Datum") FROM stdin;
\.


--
-- Data for Name: HLASpender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HLASpender" ("ID", "IDSpender", "IDHLA", "Datum") FROM stdin;
\.


--
-- Data for Name: Haplotypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Haplotypes" ("ID", allel, "HaploID", "Frequency") FROM stdin;
1	A1	0	4.52050000000000018
2	B8	0	4.52050000000000018
3	DR3	0	4.52050000000000018
4	A3	1	3.09470000000000001
5	B7	1	3.09470000000000001
6	DR2	1	3.09470000000000001
7	A2	2	1.79059999999999997
8	B7	2	1.79059999999999997
9	DR2	2	1.79059999999999997
10	A3	3	1.54150000000000009
11	B35	3	1.54150000000000009
12	DR1	3	1.54150000000000009
13	A2	4	1.45569999999999999
14	B15	4	1.45569999999999999
15	DR4	4	1.45569999999999999
16	A19	5	1.24770000000000003
17	B12	5	1.24770000000000003
18	DR7	5	1.24770000000000003
19	A2	6	1.22770000000000001
20	B12	6	1.22770000000000001
21	DR4	6	1.22770000000000001
22	A2	7	1.17510000000000003
23	B40	7	1.17510000000000003
24	DR6	7	1.17510000000000003
25	A9	8	0.916499999999999981
26	B12	8	0.916499999999999981
27	DR7	8	0.916499999999999981
28	A1	9	0.869700000000000029
29	B17	9	0.869700000000000029
30	DR7	9	0.869700000000000029
31	A9	10	0.867600000000000038
32	B7	10	0.867600000000000038
33	DR2	10	0.867600000000000038
34	A19	11	0.834799999999999986
35	B13	11	0.834799999999999986
36	DR7	11	0.834799999999999986
37	A2	12	0.80479999999999996
38	B13	12	0.80479999999999996
39	DR7	12	0.80479999999999996
40	A2	13	0.780499999999999972
41	B17	13	0.780499999999999972
42	DR7	13	0.780499999999999972
43	A2	14	0.774800000000000044
44	B12	14	0.774800000000000044
45	DR5	14	0.774800000000000044
46	A2	15	0.756000000000000005
47	B15	15	0.756000000000000005
48	DR6	15	0.756000000000000005
49	A11	16	0.667000000000000037
50	B35	16	0.667000000000000037
51	DR1	16	0.667000000000000037
52	A2	17	0.655200000000000005
53	B8	17	0.655200000000000005
54	DR3	17	0.655200000000000005
55	A2	18	0.633600000000000052
56	B5	18	0.633600000000000052
57	DR5	18	0.633600000000000052
58	A2	19	0.633000000000000007
59	B18	19	0.633000000000000007
60	DR5	19	0.633000000000000007
61	A10	20	0.632099999999999995
62	B18	20	0.632099999999999995
63	DR2	20	0.632099999999999995
64	A1	21	0.631299999999999972
65	B7	21	0.631299999999999972
66	DR2	21	0.631299999999999972
67	A2	22	0.56579999999999997
68	B12	22	0.56579999999999997
69	DR6	22	0.56579999999999997
70	A3	23	0.5252
71	B7	23	0.5252
72	DR6	23	0.5252
73	A2	24	0.52200000000000002
74	B40	24	0.52200000000000002
75	DR4	24	0.52200000000000002
76	A9	25	0.504900000000000015
77	B35	25	0.504900000000000015
78	DR5	25	0.504900000000000015
79	A2	26	0.504199999999999982
80	B27	26	0.504199999999999982
81	DR1	26	0.504199999999999982
82	A2	27	0.500600000000000045
83	B21	27	0.500600000000000045
84	DR7	27	0.500600000000000045
85	A2	28	0.500299999999999967
86	B12	28	0.500299999999999967
87	DR2	28	0.500299999999999967
88	A2	29	0.465700000000000003
89	B16	29	0.465700000000000003
90	DR6	29	0.465700000000000003
91	A10	30	0.455400000000000027
92	B16	30	0.455400000000000027
93	DR6	30	0.455400000000000027
94	A2	31	0.453500000000000014
95	B5	31	0.453500000000000014
96	DR6	31	0.453500000000000014
97	A2	32	0.445099999999999996
98	B35	32	0.445099999999999996
99	DR1	32	0.445099999999999996
100	A19	33	0.443000000000000005
101	B12	33	0.443000000000000005
102	DR5	33	0.443000000000000005
103	A2	34	0.438400000000000012
104	B12	34	0.438400000000000012
105	DR7	34	0.438400000000000012
106	A3	35	0.419200000000000017
107	B7	35	0.419200000000000017
108	DR4	35	0.419200000000000017
109	A19	36	0.413999999999999979
110	B14	36	0.413999999999999979
111	DR1	36	0.413999999999999979
112	A19	37	0.411899999999999988
113	B7	37	0.411899999999999988
114	DR2	37	0.411899999999999988
115	A9	38	0.3997
116	B15	38	0.3997
117	DR6	38	0.3997
118	A2	39	0.385500000000000009
119	B27	39	0.385500000000000009
120	DR2	39	0.385500000000000009
121	A3	40	0.384400000000000019
122	B7	40	0.384400000000000019
123	DR1	40	0.384400000000000019
124	A3	41	0.376699999999999979
125	B15	41	0.376699999999999979
126	DR4	41	0.376699999999999979
127	A19	42	0.371900000000000008
128	B40	42	0.371900000000000008
129	DR4	42	0.371900000000000008
130	A1	43	0.366700000000000026
131	B8	43	0.366700000000000026
132	DR2	43	0.366700000000000026
133	A3	44	0.361200000000000021
134	B7	44	0.361200000000000021
135	DR5	44	0.361200000000000021
136	A2	45	0.349299999999999999
137	B5	45	0.349299999999999999
138	DR4	45	0.349299999999999999
139	A9	46	0.348399999999999987
140	B12	46	0.348399999999999987
141	DR5	46	0.348399999999999987
142	A9	47	0.347299999999999998
143	B18	47	0.347299999999999998
144	DR5	47	0.347299999999999998
145	A2	48	0.345200000000000007
146	B40	48	0.345200000000000007
147	DR5	48	0.345200000000000007
148	A1	49	0.344799999999999995
149	B8	49	0.344799999999999995
150	DR6	49	0.344799999999999995
151	A28	50	0.334299999999999986
152	B12	50	0.334299999999999986
153	DR5	50	0.334299999999999986
154	A3	51	0.313300000000000023
155	B35	51	0.313300000000000023
156	DR5	51	0.313300000000000023
157	A2	52	0.313099999999999989
158	B5	52	0.313099999999999989
159	DR2	52	0.313099999999999989
160	A19	53	0.309300000000000019
161	B12	53	0.309300000000000019
162	DR4	53	0.309300000000000019
163	A11	54	0.302700000000000025
164	B35	54	0.302700000000000025
165	DR4	54	0.302700000000000025
166	A2	55	0.294700000000000017
167	B12	55	0.294700000000000017
168	DR1	55	0.294700000000000017
169	A2	56	0.294599999999999973
170	B35	56	0.294599999999999973
171	DR6	56	0.294599999999999973
172	A19	57	0.293800000000000006
173	B18	57	0.293800000000000006
174	DR3	57	0.293800000000000006
175	A2	58	0.293499999999999983
176	B7	58	0.293499999999999983
177	DR6	58	0.293499999999999983
178	A2	59	0.292399999999999993
179	B40	59	0.292399999999999993
180	DR8	59	0.292399999999999993
181	A2	60	0.291300000000000003
182	B35	60	0.291300000000000003
183	DR5	60	0.291300000000000003
184	A2	61	0.28999999999999998
185	B27	61	0.28999999999999998
186	DR5	61	0.28999999999999998
187	A1	62	0.288700000000000012
188	B8	62	0.288700000000000012
189	DR4	62	0.288700000000000012
190	A3	63	0.287499999999999978
191	B15	63	0.287499999999999978
192	DR6	63	0.287499999999999978
193	A2	64	0.280899999999999983
194	B40	64	0.280899999999999983
195	DR2	64	0.280899999999999983
196	A9	65	0.280399999999999983
197	B13	65	0.280399999999999983
198	DR7	65	0.280399999999999983
199	A9	66	0.279600000000000015
200	B35	66	0.279600000000000015
201	DR6	66	0.279600000000000015
202	A9	67	0.269799999999999984
203	B5	67	0.269799999999999984
204	DR5	67	0.269799999999999984
205	A2	68	0.267299999999999982
206	B7	68	0.267299999999999982
207	DR4	68	0.267299999999999982
208	A2	69	0.267199999999999993
209	B15	69	0.267199999999999993
210	DR5	69	0.267199999999999993
211	A1	70	0.265799999999999981
212	B8	70	0.265799999999999981
213	DR5	70	0.265799999999999981
214	A11	71	0.265199999999999991
215	B35	71	0.265199999999999991
216	DR6	71	0.265199999999999991
217	A9	72	0.26319999999999999
218	B15	72	0.26319999999999999
219	DR5	72	0.26319999999999999
220	A2	73	0.262500000000000011
221	B5	73	0.262500000000000011
222	DR8	73	0.262500000000000011
223	A1	74	0.260099999999999998
224	B35	74	0.260099999999999998
225	DR5	74	0.260099999999999998
226	A3	75	0.258400000000000019
227	B35	75	0.258400000000000019
228	DR6	75	0.258400000000000019
229	A9	76	0.257199999999999984
230	B8	76	0.257199999999999984
231	DR3	76	0.257199999999999984
232	A2	77	0.254699999999999982
233	B5	77	0.254699999999999982
234	DR1	77	0.254699999999999982
235	A9	78	0.253099999999999992
236	B15	78	0.253099999999999992
237	DR4	78	0.253099999999999992
238	A2	79	0.253000000000000003
239	B27	79	0.253000000000000003
240	DR4	79	0.253000000000000003
241	A9	80	0.249200000000000005
242	B17	80	0.249200000000000005
243	DR7	80	0.249200000000000005
244	A19	81	0.248599999999999988
245	B40	81	0.248599999999999988
246	DR5	81	0.248599999999999988
247	A1	82	0.24479999999999999
248	B5	82	0.24479999999999999
249	DR2	82	0.24479999999999999
250	A9	83	0.243600000000000011
251	B21	83	0.243600000000000011
252	DR5	83	0.243600000000000011
253	A19	84	0.241499999999999992
254	B40	84	0.241499999999999992
255	DR6	84	0.241499999999999992
256	A11	85	0.241100000000000009
257	B7	85	0.241100000000000009
258	DR2	85	0.241100000000000009
259	A11	86	0.240999999999999992
260	B5	86	0.240999999999999992
261	DR4	86	0.240999999999999992
262	A3	87	0.240799999999999986
263	B35	87	0.240799999999999986
264	DR4	87	0.240799999999999986
265	A2	88	0.239800000000000013
266	B15	88	0.239800000000000013
267	DR1	88	0.239800000000000013
268	A3	89	0.23630000000000001
269	B8	89	0.23630000000000001
270	DR3	89	0.23630000000000001
271	A19	90	0.234100000000000003
272	B12	90	0.234100000000000003
273	DR6	90	0.234100000000000003
274	A2	91	0.227500000000000008
275	B21	91	0.227500000000000008
276	DR5	91	0.227500000000000008
277	A28	92	0.227000000000000007
278	B14	92	0.227000000000000007
279	DR6	92	0.227000000000000007
280	A3	93	0.226099999999999995
281	B35	93	0.226099999999999995
282	DR2	93	0.226099999999999995
283	A1	94	0.225800000000000001
284	B15	94	0.225800000000000001
285	DR6	94	0.225800000000000001
286	A19	95	0.221200000000000008
287	B35	95	0.221200000000000008
288	DR5	95	0.221200000000000008
289	A2	96	0.216900000000000009
290	B15	96	0.216900000000000009
291	DR2	96	0.216900000000000009
292	A19	97	0.215299999999999991
293	B8	97	0.215299999999999991
294	DR3	97	0.215299999999999991
295	A10	98	0.215100000000000013
296	B18	98	0.215100000000000013
297	DR4	98	0.215100000000000013
298	A10	99	0.214799999999999991
299	B7	99	0.214799999999999991
300	DR2	99	0.214799999999999991
301	A9	100	0.21329999999999999
302	B12	100	0.21329999999999999
303	DR6	100	0.21329999999999999
304	A2	101	0.212499999999999994
305	B16	101	0.212499999999999994
306	DR5	101	0.212499999999999994
307	A10	102	0.212400000000000005
308	B41	102	0.212400000000000005
309	DR6	102	0.212400000000000005
310	A3	103	0.21160000000000001
311	B5	103	0.21160000000000001
312	DR1	103	0.21160000000000001
313	A3	104	0.209600000000000009
314	B12	104	0.209600000000000009
315	DR7	104	0.209600000000000009
316	A1	105	0.20799999999999999
317	B8	105	0.20799999999999999
318	DR1	105	0.20799999999999999
319	A3	106	0.207400000000000001
320	B5	106	0.207400000000000001
321	DR5	106	0.207400000000000001
322	A3	107	0.2064
323	B12	107	0.2064
324	DR5	107	0.2064
325	A11	108	0.204499999999999987
326	B35	108	0.204499999999999987
327	DR5	108	0.204499999999999987
328	A1	109	0.203300000000000008
329	B15	109	0.203300000000000008
330	DR4	109	0.203300000000000008
331	A9	110	0.201000000000000012
332	B12	110	0.201000000000000012
333	DR2	110	0.201000000000000012
334	A3	111	0.200399999999999995
335	B16	111	0.200399999999999995
336	DR6	111	0.200399999999999995
337	A2	112	0.198800000000000004
338	B16	112	0.198800000000000004
339	DR2	112	0.198800000000000004
340	A28	113	0.196700000000000014
341	B5	113	0.196700000000000014
342	DR6	113	0.196700000000000014
343	A1	114	0.191200000000000009
344	B35	114	0.191200000000000009
345	DR1	114	0.191200000000000009
346	A3	115	0.190400000000000014
347	B18	115	0.190400000000000014
348	DR5	115	0.190400000000000014
349	A2	116	0.189700000000000008
350	B17	116	0.189700000000000008
351	DR6	116	0.189700000000000008
352	A9	117	0.188799999999999996
353	B12	117	0.188799999999999996
354	DR4	117	0.188799999999999996
355	A1	118	0.187900000000000011
356	B35	118	0.187900000000000011
357	DR6	118	0.187900000000000011
358	A3	119	0.186599999999999988
359	B40	119	0.186599999999999988
360	DR6	119	0.186599999999999988
361	A9	120	0.184599999999999986
362	B7	120	0.184599999999999986
363	DR1	120	0.184599999999999986
364	A2	121	0.184200000000000003
365	B40	121	0.184200000000000003
366	DR1	121	0.184200000000000003
367	A2	122	0.181299999999999989
368	B35	122	0.181299999999999989
369	DR4	122	0.181299999999999989
370	A2	123	0.178100000000000008
371	B7	123	0.178100000000000008
372	DR5	123	0.178100000000000008
373	A19	124	0.177800000000000014
374	B5	124	0.177800000000000014
375	DR5	124	0.177800000000000014
376	A3	125	0.176999999999999991
377	B7	125	0.176999999999999991
378	DR7	125	0.176999999999999991
379	A10	126	0.176999999999999991
380	B12	126	0.176999999999999991
381	DR1	126	0.176999999999999991
382	A3	127	0.17649999999999999
383	B12	127	0.17649999999999999
384	DR4	127	0.17649999999999999
385	A19	128	0.175499999999999989
386	B5	128	0.175499999999999989
387	DR4	128	0.175499999999999989
388	A19	129	0.174999999999999989
389	B12	129	0.174999999999999989
390	DR2	129	0.174999999999999989
391	A1	130	0.172999999999999987
392	B17	130	0.172999999999999987
393	DR6	130	0.172999999999999987
394	A19	131	0.171800000000000008
395	B15	131	0.171800000000000008
396	DR6	131	0.171800000000000008
397	A2	132	0.171800000000000008
398	B15	132	0.171800000000000008
399	DR7	132	0.171800000000000008
400	A1	133	0.171199999999999991
401	B12	133	0.171199999999999991
402	DR7	133	0.171199999999999991
403	A11	134	0.171100000000000002
404	B22	134	0.171100000000000002
405	DR6	134	0.171100000000000002
406	A9	135	0.170300000000000007
407	B35	135	0.170300000000000007
408	DR1	135	0.170300000000000007
409	A3	136	0.17019999999999999
410	B40	136	0.17019999999999999
411	DR4	136	0.17019999999999999
412	A19	137	0.168399999999999994
413	B12	137	0.168399999999999994
414	DR1	137	0.168399999999999994
415	A10	138	0.168099999999999999
416	B8	138	0.168099999999999999
417	DR3	138	0.168099999999999999
418	A1	139	0.168099999999999999
419	B37	139	0.168099999999999999
420	DR5	139	0.168099999999999999
421	A1	140	0.16800000000000001
422	B5	140	0.16800000000000001
423	DR5	140	0.16800000000000001
424	A19	141	0.167099999999999999
425	B35	141	0.167099999999999999
426	DR6	141	0.167099999999999999
427	A2	142	0.166199999999999987
428	B22	142	0.166199999999999987
429	DR6	142	0.166199999999999987
430	A19	143	0.166099999999999998
431	B15	143	0.166099999999999998
432	DR4	143	0.166099999999999998
433	A11	144	0.164800000000000002
434	B5	144	0.164800000000000002
435	DR2	144	0.164800000000000002
436	A1	145	0.163700000000000012
437	B37	145	0.163700000000000012
438	DR10	145	0.163700000000000012
439	A28	146	0.16339999999999999
440	B40	146	0.16339999999999999
441	DR6	146	0.16339999999999999
442	A2	147	0.163000000000000006
443	B16	147	0.163000000000000006
444	DR1	147	0.163000000000000006
445	A9	148	0.162899999999999989
446	B5	148	0.162899999999999989
447	DR2	148	0.162899999999999989
448	A2	149	0.162899999999999989
449	B18	149	0.162899999999999989
450	DR3	149	0.162899999999999989
451	A19	150	0.161599999999999994
452	B35	150	0.161599999999999994
453	DR1	150	0.161599999999999994
454	A3	151	0.161000000000000004
455	B7	151	0.161000000000000004
456	DR8	151	0.161000000000000004
457	A19	152	0.160799999999999998
458	B14	152	0.160799999999999998
459	DR7	152	0.160799999999999998
460	A3	153	0.160099999999999992
461	B12	153	0.160099999999999992
462	DR2	153	0.160099999999999992
463	A10	154	0.159500000000000003
464	B12	154	0.159500000000000003
465	DR5	154	0.159500000000000003
466	A2	155	0.159399999999999986
467	B16	155	0.159399999999999986
468	DR8	155	0.159399999999999986
469	A1	156	0.159200000000000008
470	B40	156	0.159200000000000008
471	DR6	156	0.159200000000000008
472	A9	157	0.159000000000000002
473	B40	157	0.159000000000000002
474	DR5	157	0.159000000000000002
475	A19	158	0.158299999999999996
476	B5	158	0.158299999999999996
477	DR2	158	0.158299999999999996
478	A3	159	0.157500000000000001
479	B7	159	0.157500000000000001
480	DR3	159	0.157500000000000001
481	A3	160	0.154200000000000004
482	B5	160	0.154200000000000004
483	DR6	160	0.154200000000000004
484	A2	161	0.153999999999999998
485	B18	161	0.153999999999999998
486	DR2	161	0.153999999999999998
487	A9	162	0.153299999999999992
488	B22	162	0.153299999999999992
489	DR6	162	0.153299999999999992
490	A1	163	0.152999999999999997
491	B8	163	0.152999999999999997
492	DR7	163	0.152999999999999997
493	A19	164	0.152700000000000002
494	B5	164	0.152700000000000002
495	DR6	164	0.152700000000000002
496	A2	165	0.151400000000000007
497	B27	165	0.151400000000000007
498	DR6	165	0.151400000000000007
499	A10	166	0.15129999999999999
500	B27	166	0.15129999999999999
501	DR1	166	0.15129999999999999
502	A1	167	0.150999999999999995
503	B12	167	0.150999999999999995
504	DR5	167	0.150999999999999995
505	A9	168	0.150700000000000001
506	B12	168	0.150700000000000001
507	DR1	168	0.150700000000000001
508	A9	169	0.150600000000000012
509	B7	169	0.150600000000000012
510	DR4	169	0.150600000000000012
511	A9	170	0.149900000000000005
512	B16	170	0.149900000000000005
513	DR6	170	0.149900000000000005
514	A2	171	0.147699999999999998
515	B7	171	0.147699999999999998
516	DR1	171	0.147699999999999998
517	A2	172	0.145800000000000013
518	B40	172	0.145800000000000013
519	DR7	172	0.145800000000000013
520	A10	173	0.145600000000000007
521	B16	173	0.145600000000000007
522	DR4	173	0.145600000000000007
523	A1	174	0.145400000000000001
524	B13	174	0.145400000000000001
525	DR7	174	0.145400000000000001
526	A2	175	0.145199999999999996
527	B21	175	0.145199999999999996
528	DR4	175	0.145199999999999996
529	A10	176	0.144600000000000006
530	B16	176	0.144600000000000006
531	DR2	176	0.144600000000000006
532	A2	177	0.144199999999999995
533	B21	177	0.144199999999999995
534	DR3	177	0.144199999999999995
535	A10	178	0.142199999999999993
536	B16	178	0.142199999999999993
537	DR5	178	0.142199999999999993
538	A19	179	0.141600000000000004
539	B27	179	0.141600000000000004
540	DR4	179	0.141600000000000004
541	A3	180	0.140600000000000003
542	B5	180	0.140600000000000003
543	DR2	180	0.140600000000000003
544	A19	181	0.139500000000000013
545	B27	181	0.139500000000000013
546	DR5	181	0.139500000000000013
547	A9	182	0.139100000000000001
548	B27	182	0.139100000000000001
549	DR4	182	0.139100000000000001
550	A2	183	0.137399999999999994
551	B18	183	0.137399999999999994
552	DR6	183	0.137399999999999994
553	A9	184	0.136199999999999988
554	B7	184	0.136199999999999988
555	DR5	184	0.136199999999999988
556	A2	185	0.135000000000000009
557	B21	185	0.135000000000000009
558	DR6	185	0.135000000000000009
559	A2	186	0.134200000000000014
560	B35	186	0.134200000000000014
561	DR2	186	0.134200000000000014
562	A3	187	0.133200000000000013
563	B27	187	0.133200000000000013
564	DR4	187	0.133200000000000013
565	A10	188	0.132700000000000012
566	B18	188	0.132700000000000012
567	DR5	188	0.132700000000000012
568	A10	189	0.132300000000000001
569	B18	189	0.132300000000000001
570	DR6	189	0.132300000000000001
571	A19	190	0.131099999999999994
572	B27	190	0.131099999999999994
573	DR1	190	0.131099999999999994
574	A9	191	0.130599999999999994
575	B35	191	0.130599999999999994
576	DR4	191	0.130599999999999994
577	A9	192	0.130299999999999999
578	B27	192	0.130299999999999999
579	DR5	192	0.130299999999999999
580	A19	193	0.13020000000000001
581	B18	193	0.13020000000000001
582	DR5	193	0.13020000000000001
583	A2	194	0.129599999999999993
584	B18	194	0.129599999999999993
585	DR4	194	0.129599999999999993
586	A2	195	0.129399999999999987
587	B22	195	0.129399999999999987
588	DR1	195	0.129399999999999987
589	A9	196	0.129299999999999998
590	B40	196	0.129299999999999998
591	DR6	196	0.129299999999999998
592	A2	197	0.127500000000000002
593	B14	197	0.127500000000000002
594	DR1	197	0.127500000000000002
595	A3	198	0.12659999999999999
596	B18	198	0.12659999999999999
597	DR2	198	0.12659999999999999
598	A9	199	0.12659999999999999
599	B5	199	0.12659999999999999
600	DR6	199	0.12659999999999999
601	A2	200	0.12659999999999999
602	B5	200	0.12659999999999999
603	DR7	200	0.12659999999999999
604	A19	201	0.125900000000000012
605	B16	201	0.125900000000000012
606	DR6	201	0.125900000000000012
607	A3	202	0.125099999999999989
608	B17	202	0.125099999999999989
609	DR7	202	0.125099999999999989
610	A9	203	0.122600000000000001
611	B5	203	0.122600000000000001
612	DR4	203	0.122600000000000001
613	A28	204	0.122499999999999998
614	B12	204	0.122499999999999998
615	DR6	204	0.122499999999999998
616	A19	205	0.122399999999999995
617	B40	205	0.122399999999999995
618	DR2	205	0.122399999999999995
619	A2	206	0.119900000000000007
620	B7	206	0.119900000000000007
621	DR7	206	0.119900000000000007
622	A1	207	0.119599999999999998
623	B16	207	0.119599999999999998
624	DR6	207	0.119599999999999998
625	A2	208	0.1182
626	B27	208	0.1182
627	DR8	208	0.1182
628	A3	209	0.1182
629	B27	209	0.1182
630	DR2	209	0.1182
631	A1	210	0.116099999999999995
632	B5	210	0.116099999999999995
633	DR4	210	0.116099999999999995
634	A3	211	0.116000000000000006
635	B5	211	0.116000000000000006
636	DR4	211	0.116000000000000006
637	A3	212	0.115400000000000003
638	B40	212	0.115400000000000003
639	DR5	212	0.115400000000000003
640	A11	213	0.114799999999999999
641	B5	213	0.114799999999999999
642	DR6	213	0.114799999999999999
643	A3	214	0.114599999999999994
644	B13	214	0.114599999999999994
645	DR7	214	0.114599999999999994
646	A10	215	0.114000000000000004
647	B35	215	0.114000000000000004
648	DR1	215	0.114000000000000004
649	A28	216	0.113500000000000004
650	B35	216	0.113500000000000004
651	DR5	216	0.113500000000000004
652	A19	217	0.113299999999999998
653	B17	217	0.113299999999999998
654	DR6	217	0.113299999999999998
655	A1	218	0.112500000000000003
656	B12	218	0.112500000000000003
657	DR4	218	0.112500000000000003
658	A10	219	0.1124
659	B18	219	0.1124
660	DR1	219	0.1124
661	A1	220	0.112199999999999994
662	B40	220	0.112199999999999994
663	DR4	220	0.112199999999999994
664	A3	221	0.111500000000000002
665	B18	221	0.111500000000000002
666	DR3	221	0.111500000000000002
667	A11	222	0.111500000000000002
668	B5	222	0.111500000000000002
669	DR1	222	0.111500000000000002
670	A3	223	0.110299999999999995
671	B15	223	0.110299999999999995
672	DR5	223	0.110299999999999995
673	A2	224	0.109899999999999998
674	B27	224	0.109899999999999998
675	DR7	224	0.109899999999999998
676	A1	225	0.109899999999999998
677	B5	225	0.109899999999999998
678	DR6	225	0.109899999999999998
679	A19	226	0.109799999999999995
680	B7	226	0.109799999999999995
681	DR6	226	0.109799999999999995
682	A2	227	0.109100000000000003
683	B22	227	0.109100000000000003
684	DR4	227	0.109100000000000003
685	A2	228	0.108799999999999994
686	B41	228	0.108799999999999994
687	DR6	228	0.108799999999999994
688	A9	229	0.108399999999999996
689	B7	229	0.108399999999999996
690	DR6	229	0.108399999999999996
691	A3	230	0.107999999999999999
692	B27	230	0.107999999999999999
693	DR5	230	0.107999999999999999
694	A3	231	0.107899999999999996
695	B27	231	0.107899999999999996
696	DR1	231	0.107899999999999996
697	A3	232	0.107899999999999996
698	B12	232	0.107899999999999996
699	DR6	232	0.107899999999999996
700	A28	233	0.107700000000000004
701	B7	233	0.107700000000000004
702	DR2	233	0.107700000000000004
703	A1	234	0.106899999999999995
704	B37	234	0.106899999999999995
705	DR2	234	0.106899999999999995
706	A11	235	0.1066
707	B5	235	0.1066
708	DR5	235	0.1066
709	A28	236	0.106399999999999995
710	B40	236	0.106399999999999995
711	DR4	236	0.106399999999999995
712	A28	237	0.105899999999999994
713	B35	237	0.105899999999999994
714	DR4	237	0.105899999999999994
715	A11	238	0.105499999999999997
716	B15	238	0.105499999999999997
717	DR4	238	0.105499999999999997
718	A11	239	0.104700000000000001
719	B18	239	0.104700000000000001
720	DR5	239	0.104700000000000001
721	A1	240	0.103900000000000006
722	B37	240	0.103900000000000006
723	DR4	240	0.103900000000000006
724	A1	241	0.103499999999999995
725	B7	241	0.103499999999999995
726	DR6	241	0.103499999999999995
727	A9	242	0.102999999999999994
728	B35	242	0.102999999999999994
729	DR2	242	0.102999999999999994
730	A19	243	0.102599999999999997
731	B35	243	0.102599999999999997
732	DR4	243	0.102599999999999997
733	A28	244	0.102400000000000005
734	B12	244	0.102400000000000005
735	DR4	244	0.102400000000000005
736	A1	245	0.102300000000000002
737	B17	245	0.102300000000000002
738	DR2	245	0.102300000000000002
739	A11	246	0.102300000000000002
740	B22	246	0.102300000000000002
741	DR1	246	0.102300000000000002
742	A10	247	0.102099999999999996
743	B12	247	0.102099999999999996
744	DR7	247	0.102099999999999996
745	A19	248	0.100500000000000006
746	B15	248	0.100500000000000006
747	DR5	248	0.100500000000000006
748	A3	249	0.100400000000000003
749	B35	249	0.100400000000000003
750	DR3	249	0.100400000000000003
751	A9	250	0.100199999999999997
752	B16	250	0.100199999999999997
753	DR8	250	0.100199999999999997
754	A28	251	0.0987999999999999989
755	B5	251	0.0987999999999999989
756	DR5	251	0.0987999999999999989
757	A10	252	0.0985000000000000042
758	B12	252	0.0985000000000000042
759	DR4	252	0.0985000000000000042
760	A3	253	0.0981999999999999956
761	B14	253	0.0981999999999999956
762	DR6	253	0.0981999999999999956
763	A2	254	0.0981000000000000066
764	B22	254	0.0981000000000000066
765	DR5	254	0.0981000000000000066
766	A19	255	0.097799999999999998
767	B16	255	0.097799999999999998
768	DR5	255	0.097799999999999998
769	A10	256	0.0974000000000000005
770	B22	256	0.0974000000000000005
771	DR5	256	0.0974000000000000005
772	A2	257	0.0972999999999999976
773	B35	257	0.0972999999999999976
774	DR7	257	0.0972999999999999976
775	A1	258	0.0969
776	B17	258	0.0969
777	DR4	258	0.0969
778	A11	259	0.0967999999999999972
779	B35	259	0.0967999999999999972
780	DR2	259	0.0967999999999999972
781	A9	260	0.0966000000000000053
782	B27	260	0.0966000000000000053
783	DR1	260	0.0966000000000000053
784	A9	261	0.0966000000000000053
785	B14	261	0.0966000000000000053
786	DR1	261	0.0966000000000000053
787	A9	262	0.0966000000000000053
788	B18	262	0.0966000000000000053
789	DR2	262	0.0966000000000000053
790	A2	263	0.096000000000000002
791	B17	263	0.096000000000000002
792	DR4	263	0.096000000000000002
793	A1	264	0.0956999999999999934
794	B7	264	0.0956999999999999934
795	DR1	264	0.0956999999999999934
796	A2	265	0.0956000000000000044
797	B35	265	0.0956000000000000044
798	DR8	265	0.0956000000000000044
799	A10	266	0.095100000000000004
800	B22	266	0.095100000000000004
801	DR6	266	0.095100000000000004
802	A3	267	0.0948999999999999982
803	B35	267	0.0948999999999999982
804	DR8	267	0.0948999999999999982
805	A9	268	0.0942999999999999949
806	B5	268	0.0942999999999999949
807	DR1	268	0.0942999999999999949
808	A1	269	0.0941000000000000031
809	B12	269	0.0941000000000000031
810	DR6	269	0.0941000000000000031
811	A19	270	0.0936000000000000026
812	B17	270	0.0936000000000000026
813	DR7	270	0.0936000000000000026
814	A2	271	0.0931000000000000022
815	B13	271	0.0931000000000000022
816	DR2	271	0.0931000000000000022
817	A3	272	0.0926000000000000018
818	B18	272	0.0926000000000000018
819	DR6	272	0.0926000000000000018
820	A9	273	0.092399999999999996
821	B40	273	0.092399999999999996
822	DR2	273	0.092399999999999996
823	A28	274	0.0918999999999999956
824	B5	274	0.0918999999999999956
825	DR4	274	0.0918999999999999956
826	A2	275	0.0912000000000000033
827	B16	275	0.0912000000000000033
828	DR4	275	0.0912000000000000033
829	A19	276	0.0911000000000000004
830	B14	276	0.0911000000000000004
831	DR3	276	0.0911000000000000004
832	A2	277	0.0903000000000000053
833	B17	277	0.0903000000000000053
834	DR3	277	0.0903000000000000053
835	A19	278	0.0902000000000000024
836	B35	278	0.0902000000000000024
837	DR2	278	0.0902000000000000024
838	A11	279	0.0900999999999999995
839	B8	279	0.0900999999999999995
840	DR3	279	0.0900999999999999995
841	A2	280	0.0898999999999999938
842	B7	280	0.0898999999999999938
843	DR8	280	0.0898999999999999938
844	A19	281	0.0895999999999999991
845	B21	281	0.0895999999999999991
846	DR7	281	0.0895999999999999991
847	A9	282	0.0895999999999999991
848	B16	282	0.0895999999999999991
849	DR1	282	0.0895999999999999991
850	A2	283	0.0889000000000000068
851	B15	283	0.0889000000000000068
852	DR3	283	0.0889000000000000068
853	A3	284	0.0884999999999999953
854	B35	284	0.0884999999999999953
855	DR7	284	0.0884999999999999953
856	A2	285	0.0882000000000000006
857	B12	285	0.0882000000000000006
858	DR8	285	0.0882000000000000006
859	A9	286	0.087800000000000003
860	B40	286	0.087800000000000003
861	DR4	286	0.087800000000000003
862	A9	287	0.0874999999999999944
863	B18	287	0.0874999999999999944
864	DR3	287	0.0874999999999999944
865	A2	288	0.0873000000000000026
866	B12	288	0.0873000000000000026
867	DR3	288	0.0873000000000000026
868	A19	289	0.0866999999999999993
869	B40	289	0.0866999999999999993
870	DR1	289	0.0866999999999999993
871	A2	290	0.0864000000000000046
872	B17	290	0.0864000000000000046
873	DR5	290	0.0864000000000000046
874	A2	291	0.086099999999999996
875	B17	291	0.086099999999999996
876	DR2	291	0.086099999999999996
877	A19	292	0.0853000000000000008
878	B7	292	0.0853000000000000008
879	DR5	292	0.0853000000000000008
880	A2	293	0.0850999999999999951
881	B14	293	0.0850999999999999951
882	DR7	293	0.0850999999999999951
883	A19	294	0.0844000000000000028
884	B5	294	0.0844000000000000028
885	DR1	294	0.0844000000000000028
886	A28	295	0.0840999999999999942
887	B15	295	0.0840999999999999942
888	DR4	295	0.0840999999999999942
889	A2	296	0.0840000000000000052
890	B15	296	0.0840000000000000052
891	DR8	296	0.0840000000000000052
892	A9	297	0.0834000000000000019
893	B27	297	0.0834000000000000019
894	DR6	297	0.0834000000000000019
895	A1	298	0.0827999999999999986
896	B7	298	0.0827999999999999986
897	DR4	298	0.0827999999999999986
898	A10	299	0.0826000000000000068
899	B17	299	0.0826000000000000068
900	DR7	299	0.0826000000000000068
901	A2	300	0.082400000000000001
902	B40	300	0.082400000000000001
903	DR3	300	0.082400000000000001
904	A3	301	0.0821999999999999953
905	B18	301	0.0821999999999999953
906	DR4	301	0.0821999999999999953
907	A9	302	0.0821999999999999953
908	B18	302	0.0821999999999999953
909	DR6	302	0.0821999999999999953
910	A28	303	0.0820000000000000034
911	B12	303	0.0820000000000000034
912	DR1	303	0.0820000000000000034
913	A28	304	0.0819000000000000006
914	B35	304	0.0819000000000000006
915	DR6	304	0.0819000000000000006
916	A11	305	0.0814000000000000001
917	B22	305	0.0814000000000000001
918	DR2	305	0.0814000000000000001
919	A11	306	0.0812999999999999973
920	B35	306	0.0812999999999999973
921	DR7	306	0.0812999999999999973
922	A11	307	0.0812999999999999973
923	B12	307	0.0812999999999999973
924	DR7	307	0.0812999999999999973
925	A3	308	0.0812999999999999973
926	B12	308	0.0812999999999999973
927	DR1	308	0.0812999999999999973
928	A1	309	0.0811999999999999944
929	B12	309	0.0811999999999999944
930	DR2	309	0.0811999999999999944
931	A28	310	0.0810000000000000026
932	B35	310	0.0810000000000000026
933	DR1	310	0.0810000000000000026
934	A1	311	0.0805000000000000021
935	B18	311	0.0805000000000000021
936	DR5	311	0.0805000000000000021
937	A2	312	0.0798999999999999988
938	B22	312	0.0798999999999999988
939	DR2	312	0.0798999999999999988
940	A10	313	0.0796999999999999931
941	B12	313	0.0796999999999999931
942	DR6	313	0.0796999999999999931
943	A2	314	0.0796999999999999931
944	B7	314	0.0796999999999999931
945	DR3	314	0.0796999999999999931
946	A10	315	0.0792999999999999955
947	B21	315	0.0792999999999999955
948	DR1	315	0.0792999999999999955
949	A28	316	0.0783999999999999975
950	B53	316	0.0783999999999999975
951	DR6	316	0.0783999999999999975
952	A9	317	0.0776000000000000023
953	B27	317	0.0776000000000000023
954	DR2	317	0.0776000000000000023
955	A1	318	0.076999999999999999
956	B35	318	0.076999999999999999
957	DR4	318	0.076999999999999999
958	A9	319	0.076999999999999999
959	B22	319	0.076999999999999999
960	DR2	319	0.076999999999999999
961	A10	320	0.0767999999999999933
962	B35	320	0.0767999999999999933
963	DR5	320	0.0767999999999999933
964	A10	321	0.0762000000000000038
965	B15	321	0.0762000000000000038
966	DR6	321	0.0762000000000000038
967	A3	322	0.0756000000000000005
968	B16	322	0.0756000000000000005
969	DR2	322	0.0756000000000000005
970	A19	323	0.0754999999999999977
971	B13	323	0.0754999999999999977
972	DR5	323	0.0754999999999999977
973	A11	324	0.0753999999999999948
974	B12	324	0.0753999999999999948
975	DR5	324	0.0753999999999999948
976	A11	325	0.075200000000000003
977	B15	325	0.075200000000000003
978	DR6	325	0.075200000000000003
979	A9	326	0.0743999999999999939
980	B40	326	0.0743999999999999939
981	DR1	326	0.0743999999999999939
982	A10	327	0.0734000000000000069
983	B5	327	0.0734000000000000069
984	DR6	327	0.0734000000000000069
985	A1	328	0.0730999999999999983
986	B17	328	0.0730999999999999983
987	DR5	328	0.0730999999999999983
988	A3	329	0.0729000000000000065
989	B40	329	0.0729000000000000065
990	DR2	329	0.0729000000000000065
991	A9	330	0.0723000000000000032
992	B18	330	0.0723000000000000032
993	DR4	330	0.0723000000000000032
994	A1	331	0.0719999999999999946
995	B40	331	0.0719999999999999946
996	DR2	331	0.0719999999999999946
997	A9	332	0.0718000000000000027
998	B15	332	0.0718000000000000027
999	DR2	332	0.0718000000000000027
1000	A11	333	0.0718000000000000027
1001	B27	333	0.0718000000000000027
1002	DR1	333	0.0718000000000000027
1003	A1	334	0.0714999999999999941
1004	B35	334	0.0714999999999999941
1005	DR2	334	0.0714999999999999941
1006	A1	335	0.0714999999999999941
1007	B7	335	0.0714999999999999941
1008	DR5	335	0.0714999999999999941
1009	A2	336	0.0711999999999999994
1010	B18	336	0.0711999999999999994
1011	DR7	336	0.0711999999999999994
1012	A28	337	0.0700999999999999956
1013	B35	337	0.0700999999999999956
1014	DR8	337	0.0700999999999999956
1015	A19	338	0.0699000000000000038
1016	B13	338	0.0699000000000000038
1017	DR2	338	0.0699000000000000038
1018	A1	339	0.0699000000000000038
1019	B37	339	0.0699000000000000038
1020	DR6	339	0.0699000000000000038
1021	A9	340	0.0696999999999999981
1022	B16	340	0.0696999999999999981
1023	DR2	340	0.0696999999999999981
1024	A1	341	0.0694000000000000034
1025	B15	341	0.0694000000000000034
1026	DR5	341	0.0694000000000000034
1027	A28	342	0.0691999999999999976
1028	B8	342	0.0691999999999999976
1029	DR3	342	0.0691999999999999976
1030	A1	343	0.0690000000000000058
1031	B5	343	0.0690000000000000058
1032	DR1	343	0.0690000000000000058
1033	A1	344	0.0688
1034	B40	344	0.0688
1035	DR5	344	0.0688
1036	A19	345	0.0685999999999999943
1037	B14	345	0.0685999999999999943
1038	DR6	345	0.0685999999999999943
1039	A10	346	0.0684000000000000025
1040	B16	346	0.0684000000000000025
1041	DR1	346	0.0684000000000000025
1042	A10	347	0.0684000000000000025
1043	B18	347	0.0684000000000000025
1044	DR7	347	0.0684000000000000025
1045	A9	348	0.0684000000000000025
1046	B16	348	0.0684000000000000025
1047	DR5	348	0.0684000000000000025
1048	A2	349	0.0681999999999999967
1049	B5	349	0.0681999999999999967
1050	DR3	349	0.0681999999999999967
1051	A11	350	0.0675999999999999934
1052	B40	350	0.0675999999999999934
1053	DR6	350	0.0675999999999999934
1054	A3	351	0.0672999999999999987
1055	B16	351	0.0672999999999999987
1056	DR1	351	0.0672999999999999987
1057	A11	352	0.0669000000000000011
1058	B12	352	0.0669000000000000011
1059	DR4	352	0.0669000000000000011
1060	A3	353	0.0667999999999999983
1061	B14	353	0.0667999999999999983
1062	DR1	353	0.0667999999999999983
1063	A19	354	0.0666999999999999954
1064	B12	354	0.0666999999999999954
1065	DR3	354	0.0666999999999999954
1066	A19	355	0.0666000000000000064
1067	B18	355	0.0666000000000000064
1068	DR2	355	0.0666000000000000064
1069	A19	356	0.066199999999999995
1070	B27	356	0.066199999999999995
1071	DR6	356	0.066199999999999995
1072	A3	357	0.0659000000000000002
1073	B40	357	0.0659000000000000002
1074	DR1	357	0.0659000000000000002
1075	A9	358	0.0653999999999999998
1076	B35	358	0.0653999999999999998
1077	DR7	358	0.0653999999999999998
1078	A9	359	0.0652999999999999969
1079	B15	359	0.0652999999999999969
1080	DR1	359	0.0652999999999999969
1081	A19	360	0.0651000000000000051
1082	B13	360	0.0651000000000000051
1083	DR6	360	0.0651000000000000051
1084	A3	361	0.0647999999999999965
1085	B27	361	0.0647999999999999965
1086	DR6	361	0.0647999999999999965
1087	A2	362	0.0646999999999999936
1088	B8	362	0.0646999999999999936
1089	DR4	362	0.0646999999999999936
1090	A3	363	0.0643999999999999989
1091	B15	363	0.0643999999999999989
1092	DR2	363	0.0643999999999999989
1093	A10	364	0.0641000000000000042
1094	B5	364	0.0641000000000000042
1095	DR5	364	0.0641000000000000042
1096	A9	365	0.063399999999999998
1097	B21	365	0.063399999999999998
1098	DR4	365	0.063399999999999998
1099	A1	366	0.0623999999999999971
1100	B17	366	0.0623999999999999971
1101	DR3	366	0.0623999999999999971
1102	A3	367	0.0616999999999999979
1103	B47	367	0.0616999999999999979
1104	DR7	367	0.0616999999999999979
1105	A2	368	0.0614000000000000032
1106	B5	368	0.0614000000000000032
1107	DR9	368	0.0614000000000000032
1108	A2	369	0.0611999999999999975
1109	B16	369	0.0611999999999999975
1110	DR7	369	0.0611999999999999975
1111	A19	370	0.0609999999999999987
1112	B15	370	0.0609999999999999987
1113	DR1	370	0.0609999999999999987
1114	A28	371	0.0609000000000000027
1115	B15	371	0.0609000000000000027
1116	DR6	371	0.0609000000000000027
1117	A10	372	0.0607999999999999999
1118	B22	372	0.0607999999999999999
1119	DR2	372	0.0607999999999999999
1120	A19	373	0.060699999999999997
1121	B7	373	0.060699999999999997
1122	DR4	373	0.060699999999999997
1123	A28	374	0.0606000000000000011
1124	B12	374	0.0606000000000000011
1125	DR7	374	0.0606000000000000011
1126	A2	375	0.0599000000000000019
1127	B13	375	0.0599000000000000019
1128	DR5	375	0.0599000000000000019
1129	A11	376	0.059799999999999999
1130	B13	376	0.059799999999999999
1131	DR7	376	0.059799999999999999
1132	A19	377	0.0596000000000000002
1133	B15	377	0.0596000000000000002
1134	DR2	377	0.0596000000000000002
1135	A1	378	0.0594000000000000014
1136	B12	378	0.0594000000000000014
1137	DR1	378	0.0594000000000000014
1138	A28	379	0.0590999999999999998
1139	B12	379	0.0590999999999999998
1140	DR2	379	0.0590999999999999998
1141	A19	380	0.0582000000000000017
1142	B7	380	0.0582000000000000017
1143	DR1	380	0.0582000000000000017
1144	A11	381	0.0577999999999999972
1145	B7	381	0.0577999999999999972
1146	DR4	381	0.0577999999999999972
1147	A9	382	0.0573999999999999996
1148	B21	382	0.0573999999999999996
1149	DR2	382	0.0573999999999999996
1150	A9	383	0.0572999999999999968
1151	B21	383	0.0572999999999999968
1152	DR7	383	0.0572999999999999968
1153	A10	384	0.0572000000000000008
1154	B27	384	0.0572000000000000008
1155	DR5	384	0.0572000000000000008
1156	A2	385	0.0567000000000000004
1157	B8	385	0.0567000000000000004
1158	DR6	385	0.0567000000000000004
1159	A9	386	0.0565000000000000016
1160	B7	386	0.0565000000000000016
1161	DR7	386	0.0565000000000000016
1162	A19	387	0.0563000000000000028
1163	B22	387	0.0563000000000000028
1164	DR4	387	0.0563000000000000028
1165	A10	388	0.0563000000000000028
1166	B35	388	0.0563000000000000028
1167	DR6	388	0.0563000000000000028
1168	A2	389	0.0558999999999999983
1169	B13	389	0.0558999999999999983
1170	DR4	389	0.0558999999999999983
1171	A11	390	0.0553999999999999979
1172	B17	390	0.0553999999999999979
1173	DR7	390	0.0553999999999999979
1174	A2	391	0.0548000000000000015
1175	B21	391	0.0548000000000000015
1176	DR2	391	0.0548000000000000015
1177	A1	392	0.0544999999999999998
1178	B8	392	0.0544999999999999998
1179	DR8	392	0.0544999999999999998
1180	A2	393	0.054399999999999997
1181	B37	393	0.054399999999999997
1182	DR10	393	0.054399999999999997
1183	A1	394	0.054300000000000001
1184	B37	394	0.054300000000000001
1185	DR7	394	0.054300000000000001
1186	A19	395	0.0541999999999999982
1187	B16	395	0.0541999999999999982
1188	DR2	395	0.0541999999999999982
1189	A10	396	0.0541000000000000023
1190	B14	396	0.0541000000000000023
1191	DR7	396	0.0541000000000000023
1192	A19	397	0.0539999999999999994
1193	B35	397	0.0539999999999999994
1194	DR7	397	0.0539999999999999994
1195	A10	398	0.0539999999999999994
1196	B5	398	0.0539999999999999994
1197	DR1	398	0.0539999999999999994
1198	A2	399	0.0536000000000000018
1199	B40	399	0.0536000000000000018
1200	DR9	399	0.0536000000000000018
1201	A11	400	0.0536000000000000018
1202	B12	400	0.0536000000000000018
1203	DR6	400	0.0536000000000000018
1204	A19	401	0.053400000000000003
1205	B27	401	0.053400000000000003
1206	DR2	401	0.053400000000000003
1207	A3	402	0.0533000000000000002
1208	B27	402	0.0533000000000000002
1209	DR8	402	0.0533000000000000002
1210	A9	403	0.0533000000000000002
1211	B21	403	0.0533000000000000002
1212	DR3	403	0.0533000000000000002
1213	A10	404	0.0524999999999999981
1214	B15	404	0.0524999999999999981
1215	DR4	404	0.0524999999999999981
1216	A1	405	0.0524000000000000021
1217	B37	405	0.0524000000000000021
1218	DR1	405	0.0524000000000000021
1219	A28	406	0.0524000000000000021
1220	B40	406	0.0524000000000000021
1221	DR5	406	0.0524000000000000021
1222	A19	407	0.0516
1223	B13	407	0.0516
1224	DR4	407	0.0516
1225	A10	408	0.0516
1226	B16	408	0.0516
1227	DR7	408	0.0516
1228	A19	409	0.0516
1229	B18	409	0.0516
1230	DR6	409	0.0516
1231	A19	410	0.0514999999999999972
1232	B21	410	0.0514999999999999972
1233	DR5	410	0.0514999999999999972
1234	A19	411	0.0514000000000000012
1235	B5	411	0.0514000000000000012
1236	DR7	411	0.0514000000000000012
1237	A19	412	0.0512000000000000025
1238	B40	412	0.0512000000000000025
1239	DR7	412	0.0512000000000000025
1240	A2	413	0.0510999999999999996
1241	B8	413	0.0510999999999999996
1242	DR2	413	0.0510999999999999996
1243	A3	414	0.0509000000000000008
1244	B17	414	0.0509000000000000008
1245	DR6	414	0.0509000000000000008
1246	A10	415	0.0505999999999999991
1247	B12	415	0.0505999999999999991
1248	DR2	415	0.0505999999999999991
1249	A2	416	0.0498999999999999999
1250	B37	416	0.0498999999999999999
1251	DR2	416	0.0498999999999999999
1252	A9	417	0.0495000000000000023
1253	B7	417	0.0495000000000000023
1254	DR8	417	0.0495000000000000023
1255	A1	418	0.0493999999999999995
1256	B21	418	0.0493999999999999995
1257	DR5	418	0.0493999999999999995
1258	A28	419	0.0493999999999999995
1259	B18	419	0.0493999999999999995
1260	DR5	419	0.0493999999999999995
1261	A1	420	0.0492000000000000007
1262	B17	420	0.0492000000000000007
1263	DR1	420	0.0492000000000000007
1264	A10	421	0.0492000000000000007
1265	B27	421	0.0492000000000000007
1266	DR4	421	0.0492000000000000007
1267	A3	422	0.048899999999999999
1268	B40	422	0.048899999999999999
1269	DR8	422	0.048899999999999999
1270	A28	423	0.048899999999999999
1271	B5	423	0.048899999999999999
1272	DR2	423	0.048899999999999999
1273	A19	424	0.0488000000000000031
1274	B22	424	0.0488000000000000031
1275	DR6	424	0.0488000000000000031
1276	A2	425	0.0485999999999999974
1277	B27	425	0.0485999999999999974
1278	DR3	425	0.0485999999999999974
1279	A11	426	0.0485000000000000014
1280	B40	426	0.0485000000000000014
1281	DR4	426	0.0485000000000000014
1282	A19	427	0.0483000000000000027
1283	B17	427	0.0483000000000000027
1284	DR8	427	0.0483000000000000027
1285	A9	428	0.0481999999999999998
1286	B21	428	0.0481999999999999998
1287	DR1	428	0.0481999999999999998
1288	A2	429	0.0478999999999999981
1289	B13	429	0.0478999999999999981
1290	DR6	429	0.0478999999999999981
1291	A3	430	0.0478999999999999981
1292	B5	430	0.0478999999999999981
1293	DR7	430	0.0478999999999999981
1294	A10	431	0.0478000000000000022
1295	B5	431	0.0478000000000000022
1296	DR2	431	0.0478000000000000022
1297	A9	432	0.0476999999999999993
1298	B17	432	0.0476999999999999993
1299	DR2	432	0.0476999999999999993
1300	A1	433	0.0476999999999999993
1301	B27	433	0.0476999999999999993
1302	DR5	433	0.0476999999999999993
1303	A19	434	0.0476000000000000034
1304	B13	434	0.0476000000000000034
1305	DR1	434	0.0476000000000000034
1306	A11	435	0.0473000000000000018
1307	B22	435	0.0473000000000000018
1308	DR4	435	0.0473000000000000018
1309	A3	436	0.047100000000000003
1310	B22	436	0.047100000000000003
1311	DR4	436	0.047100000000000003
1312	A19	437	0.0468000000000000013
1313	B7	437	0.0468000000000000013
1314	DR7	437	0.0468000000000000013
1315	A3	438	0.0468000000000000013
1316	B21	438	0.0468000000000000013
1317	DR7	438	0.0468000000000000013
1318	A9	439	0.0468000000000000013
1319	B5	439	0.0468000000000000013
1320	DR7	439	0.0468000000000000013
1321	A3	440	0.0468000000000000013
1322	B15	440	0.0468000000000000013
1323	DR1	440	0.0468000000000000013
1324	A2	441	0.0468000000000000013
1325	B21	441	0.0468000000000000013
1326	DR1	441	0.0468000000000000013
1327	A19	442	0.0466999999999999985
1328	B17	442	0.0466999999999999985
1329	DR3	442	0.0466999999999999985
1330	A3	443	0.0466000000000000025
1331	B22	443	0.0466000000000000025
1332	DR2	443	0.0466000000000000025
1333	A2	444	0.0464999999999999997
1334	B35	444	0.0464999999999999997
1335	DR3	444	0.0464999999999999997
1336	A11	445	0.0464999999999999997
1337	B35	445	0.0464999999999999997
1338	DR8	445	0.0464999999999999997
1339	A3	446	0.0463999999999999968
1340	B22	446	0.0463999999999999968
1341	DR6	446	0.0463999999999999968
1342	A11	447	0.0459999999999999992
1343	B22	447	0.0459999999999999992
1344	DR5	447	0.0459999999999999992
1345	A10	448	0.0459000000000000033
1346	B18	448	0.0459000000000000033
1347	DR3	448	0.0459000000000000033
1348	A1	449	0.0454999999999999988
1349	B15	449	0.0454999999999999988
1350	DR2	449	0.0454999999999999988
1351	A9	450	0.0454999999999999988
1352	B21	450	0.0454999999999999988
1353	DR6	450	0.0454999999999999988
1354	A10	451	0.0451000000000000012
1355	B35	451	0.0451000000000000012
1356	DR4	451	0.0451000000000000012
1357	A1	452	0.0449000000000000024
1358	B21	452	0.0449000000000000024
1359	DR6	452	0.0449000000000000024
1360	A2	453	0.0449000000000000024
1361	B15	453	0.0449000000000000024
1362	DR9	453	0.0449000000000000024
1363	A1	454	0.0447999999999999995
1364	B22	454	0.0447999999999999995
1365	DR6	454	0.0447999999999999995
1366	A3	455	0.0444999999999999979
1367	B40	455	0.0444999999999999979
1368	DR3	455	0.0444999999999999979
1369	A2	456	0.0444999999999999979
1370	B14	456	0.0444999999999999979
1371	DR6	456	0.0444999999999999979
1372	A11	457	0.0442999999999999991
1373	B7	457	0.0442999999999999991
1374	DR5	457	0.0442999999999999991
1375	A2	458	0.0439999999999999974
1376	B17	458	0.0439999999999999974
1377	DR1	458	0.0439999999999999974
1378	A11	459	0.0439999999999999974
1379	B40	459	0.0439999999999999974
1380	DR5	459	0.0439999999999999974
1381	A3	460	0.0439000000000000015
1382	B22	460	0.0439000000000000015
1383	DR1	460	0.0439000000000000015
1384	A11	461	0.0432000000000000023
1385	B7	461	0.0432000000000000023
1386	DR6	461	0.0432000000000000023
1387	A1	462	0.0432000000000000023
1388	B14	462	0.0432000000000000023
1389	DR3	462	0.0432000000000000023
1390	A1	463	0.0429999999999999966
1391	B35	463	0.0429999999999999966
1392	DR7	463	0.0429999999999999966
1393	A19	464	0.0425000000000000031
1394	B21	464	0.0425000000000000031
1395	DR1	464	0.0425000000000000031
1396	A2	465	0.0425000000000000031
1397	B8	465	0.0425000000000000031
1398	DR5	465	0.0425000000000000031
1399	A2	466	0.0425000000000000031
1400	B18	466	0.0425000000000000031
1401	DR1	466	0.0425000000000000031
1402	A9	467	0.0424000000000000002
1403	B12	467	0.0424000000000000002
1404	DR3	467	0.0424000000000000002
1405	A1	468	0.0422999999999999973
1406	B15	468	0.0422999999999999973
1407	DR1	468	0.0422999999999999973
1408	A2	469	0.0420999999999999985
1409	B18	469	0.0420999999999999985
1410	DR8	469	0.0420999999999999985
1411	A28	470	0.0420999999999999985
1412	B40	470	0.0420999999999999985
1413	DR3	470	0.0420999999999999985
1414	A1	471	0.0420999999999999985
1415	B7	471	0.0420999999999999985
1416	DR8	471	0.0420999999999999985
1417	A3	472	0.0420000000000000026
1418	B18	472	0.0420000000000000026
1419	DR9	472	0.0420000000000000026
1420	A2	473	0.0420000000000000026
1421	B41	473	0.0420000000000000026
1422	DR7	473	0.0420000000000000026
1423	A11	474	0.0420000000000000026
1424	B16	474	0.0420000000000000026
1425	DR2	474	0.0420000000000000026
1426	A9	475	0.0418999999999999997
1427	B17	475	0.0418999999999999997
1428	DR6	475	0.0418999999999999997
1429	A10	476	0.0415000000000000022
1430	B40	476	0.0415000000000000022
1431	DR5	476	0.0415000000000000022
1432	A10	477	0.0412000000000000005
1433	B5	477	0.0412000000000000005
1434	DR4	477	0.0412000000000000005
1435	A28	478	0.0410000000000000017
1436	B27	478	0.0410000000000000017
1437	DR6	478	0.0410000000000000017
1438	A1	479	0.0408000000000000029
1439	B16	479	0.0408000000000000029
1440	DR5	479	0.0408000000000000029
1441	A10	480	0.0407000000000000001
1442	B14	480	0.0407000000000000001
1443	DR1	480	0.0407000000000000001
1444	A3	481	0.0403999999999999984
1445	B14	481	0.0403999999999999984
1446	DR7	481	0.0403999999999999984
1447	A10	482	0.0403999999999999984
1448	B22	482	0.0403999999999999984
1449	DR4	482	0.0403999999999999984
1450	A11	483	0.0401999999999999996
1451	B18	483	0.0401999999999999996
1452	DR3	483	0.0401999999999999996
1453	A1	484	0.0401999999999999996
1454	B7	484	0.0401999999999999996
1455	DR3	484	0.0401999999999999996
1456	A2	485	0.0400000000000000008
1457	B8	485	0.0400000000000000008
1458	DR1	485	0.0400000000000000008
1459	A19	486	0.0400000000000000008
1460	B40	486	0.0400000000000000008
1461	DR8	486	0.0400000000000000008
1462	A28	487	0.039899999999999998
1463	B18	487	0.039899999999999998
1464	DR3	487	0.039899999999999998
1465	A9	488	0.0396999999999999992
1466	B7	488	0.0396999999999999992
1467	DR3	488	0.0396999999999999992
1468	A19	489	0.0396999999999999992
1469	B14	489	0.0396999999999999992
1470	DR4	489	0.0396999999999999992
1471	A11	490	0.0396000000000000033
1472	B18	490	0.0396000000000000033
1473	DR2	490	0.0396000000000000033
1474	A9	491	0.0395000000000000004
1475	B16	491	0.0395000000000000004
1476	DR4	491	0.0395000000000000004
1477	A1	492	0.0393999999999999975
1478	B27	492	0.0393999999999999975
1479	DR1	492	0.0393999999999999975
1480	A3	493	0.0393999999999999975
1481	B15	493	0.0393999999999999975
1482	DR7	493	0.0393999999999999975
1483	A2	494	0.0393000000000000016
1484	B17	494	0.0393000000000000016
1485	DR8	494	0.0393000000000000016
1486	A19	495	0.0393000000000000016
1487	B35	495	0.0393000000000000016
1488	DR3	495	0.0393000000000000016
1489	A19	496	0.0393000000000000016
1490	B14	496	0.0393000000000000016
1491	DR2	496	0.0393000000000000016
1492	A9	497	0.0391999999999999987
1493	B18	497	0.0391999999999999987
1494	DR1	497	0.0391999999999999987
1495	A9	498	0.0388999999999999971
1496	B22	498	0.0388999999999999971
1497	DR4	498	0.0388999999999999971
1498	A9	499	0.0388000000000000012
1499	B35	499	0.0388000000000000012
1500	DR3	499	0.0388000000000000012
1501	A10	500	0.0386999999999999983
1502	B40	500	0.0386999999999999983
1503	DR6	500	0.0386999999999999983
1504	A1	501	0.0294999999999999984
1505	B21	501	0.0294999999999999984
1506	DR7	501	0.0294999999999999984
1507	A2	502	0.0293999999999999991
1508	B37	502	0.0293999999999999991
1509	DR5	502	0.0293999999999999991
1510	A11	503	0.0292999999999999997
1511	B5	503	0.0292999999999999997
1512	DR8	503	0.0292999999999999997
1513	A11	504	0.0287999999999999992
1514	B7	504	0.0287999999999999992
1515	DR1	504	0.0287999999999999992
1516	A28	505	0.0286000000000000004
1517	B27	505	0.0286000000000000004
1518	DR2	505	0.0286000000000000004
1519	A3	506	0.0286000000000000004
1520	B5	506	0.0286000000000000004
1521	DR8	506	0.0286000000000000004
1522	A9	507	0.0284000000000000016
1523	B15	507	0.0284000000000000016
1524	DR3	507	0.0284000000000000016
1525	A9	508	0.0284000000000000016
1526	B35	508	0.0284000000000000016
1527	DR8	508	0.0284000000000000016
1528	A28	509	0.0281999999999999994
1529	B5	509	0.0281999999999999994
1530	DR7	509	0.0281999999999999994
1531	A19	510	0.0281
1532	B35	510	0.0281
1533	DR8	510	0.0281
1534	A9	511	0.0281
1535	B37	511	0.0281
1536	DR8	511	0.0281
1537	A10	512	0.0276999999999999989
1538	B35	512	0.0276999999999999989
1539	DR2	512	0.0276999999999999989
1540	A1	513	0.0275999999999999995
1541	B41	513	0.0275999999999999995
1542	DR6	513	0.0275999999999999995
1543	A10	514	0.0275999999999999995
1544	B21	514	0.0275999999999999995
1545	DR6	514	0.0275999999999999995
1546	A3	515	0.0275999999999999995
1547	B37	515	0.0275999999999999995
1548	DR5	515	0.0275999999999999995
1549	A19	516	0.0275000000000000001
1550	B40	516	0.0275000000000000001
1551	DR3	516	0.0275000000000000001
1552	A2	517	0.0275000000000000001
1553	B41	517	0.0275000000000000001
1554	DR5	517	0.0275000000000000001
1555	A28	518	0.0273000000000000013
1556	B14	518	0.0273000000000000013
1557	DR5	518	0.0273000000000000013
1558	A2	519	0.0270999999999999991
1559	B14	519	0.0270999999999999991
1560	DR5	519	0.0270999999999999991
1561	A10	520	0.0270999999999999991
1562	B15	520	0.0270999999999999991
1563	DR1	520	0.0270999999999999991
1564	A10	521	0.0270999999999999991
1565	B15	521	0.0270999999999999991
1566	DR5	521	0.0270999999999999991
1567	A10	522	0.0269999999999999997
1568	B37	522	0.0269999999999999997
1569	DR6	522	0.0269999999999999997
1570	A10	523	0.0269999999999999997
1571	B7	523	0.0269999999999999997
1572	DR5	523	0.0269999999999999997
1573	A28	524	0.0269000000000000003
1574	B35	524	0.0269000000000000003
1575	DR3	524	0.0269000000000000003
1576	A11	525	0.0268000000000000009
1577	B22	525	0.0268000000000000009
1578	DR7	525	0.0268000000000000009
1579	A2	526	0.0267000000000000015
1580	B22	526	0.0267000000000000015
1581	DR8	526	0.0267000000000000015
1582	A28	527	0.0265999999999999986
1583	B40	527	0.0265999999999999986
1584	DR1	527	0.0265999999999999986
1585	A10	528	0.0265999999999999986
1586	B21	528	0.0265999999999999986
1587	DR2	528	0.0265999999999999986
1588	A11	529	0.0263999999999999999
1589	B5	529	0.0263999999999999999
1590	DR7	529	0.0263999999999999999
1591	A28	530	0.0263999999999999999
1592	B14	530	0.0263999999999999999
1593	DR4	530	0.0263999999999999999
1594	A1	531	0.0263999999999999999
1595	B40	531	0.0263999999999999999
1596	DR7	531	0.0263999999999999999
1597	A10	532	0.0263999999999999999
1598	B17	532	0.0263999999999999999
1599	DR6	532	0.0263999999999999999
1600	A3	533	0.0263000000000000005
1601	B5	533	0.0263000000000000005
1602	DR3	533	0.0263000000000000005
1603	A11	534	0.0259999999999999988
1604	B18	534	0.0259999999999999988
1605	DR4	534	0.0259999999999999988
1606	A3	535	0.0258999999999999994
1607	B16	535	0.0258999999999999994
1608	DR4	535	0.0258999999999999994
1609	A10	536	0.0258999999999999994
1610	B18	536	0.0258999999999999994
1611	DR8	536	0.0258999999999999994
1612	A11	537	0.0258999999999999994
1613	B27	537	0.0258999999999999994
1614	DR5	537	0.0258999999999999994
1615	A3	538	0.0258
1616	B35	538	0.0258
1617	DR10	538	0.0258
1618	A1	539	0.0258
1619	B5	539	0.0258
1620	DR3	539	0.0258
1621	A10	540	0.0258
1622	B27	540	0.0258
1623	DR6	540	0.0258
1624	A11	541	0.0257000000000000006
1625	B15	541	0.0257000000000000006
1626	DR2	541	0.0257000000000000006
1627	A19	542	0.0256000000000000012
1628	B41	542	0.0256000000000000012
1629	DR3	542	0.0256000000000000012
1630	A1	543	0.0254999999999999984
1631	B22	543	0.0254999999999999984
1632	DR5	543	0.0254999999999999984
1633	A9	544	0.0252999999999999996
1634	B41	544	0.0252999999999999996
1635	DR6	544	0.0252999999999999996
1636	A2	545	0.0252999999999999996
1637	B27	545	0.0252999999999999996
1638	DR9	545	0.0252999999999999996
1639	A10	546	0.0252000000000000002
1640	B22	546	0.0252000000000000002
1641	DR7	546	0.0252000000000000002
1642	A3	547	0.0252000000000000002
1643	B15	547	0.0252000000000000002
1644	DR3	547	0.0252000000000000002
1645	A1	548	0.0251000000000000008
1646	B18	548	0.0251000000000000008
1647	DR6	548	0.0251000000000000008
1648	A19	549	0.0251000000000000008
1649	B27	549	0.0251000000000000008
1650	DR7	549	0.0251000000000000008
1651	A28	550	0.0250000000000000014
1652	B7	550	0.0250000000000000014
1653	DR4	550	0.0250000000000000014
1654	A9	551	0.0247999999999999991
1655	B12	551	0.0247999999999999991
1656	DR8	551	0.0247999999999999991
1657	A3	552	0.0246000000000000003
1658	B21	552	0.0246000000000000003
1659	DR4	552	0.0246000000000000003
1660	A1	553	0.0246000000000000003
1661	B14	553	0.0246000000000000003
1662	DR6	553	0.0246000000000000003
1663	A3	554	0.0246000000000000003
1664	B12	554	0.0246000000000000003
1665	DR8	554	0.0246000000000000003
1666	A28	555	0.0245000000000000009
1667	B27	555	0.0245000000000000009
1668	DR1	555	0.0245000000000000009
1669	A2	556	0.0244000000000000015
1670	B53	556	0.0244000000000000015
1671	DR6	556	0.0244000000000000015
1672	A1	557	0.0244000000000000015
1673	B16	557	0.0244000000000000015
1674	DR8	557	0.0244000000000000015
1675	A19	558	0.0241999999999999993
1676	B18	558	0.0241999999999999993
1677	DR7	558	0.0241999999999999993
1678	A9	559	0.0240999999999999999
1679	B27	559	0.0240999999999999999
1680	DR8	559	0.0240999999999999999
1681	A3	560	0.0239000000000000011
1682	B14	560	0.0239000000000000011
1683	DR4	560	0.0239000000000000011
1684	A19	561	0.0239000000000000011
1685	B22	561	0.0239000000000000011
1686	DR2	561	0.0239000000000000011
1687	A1	562	0.0238000000000000017
1688	B16	562	0.0238000000000000017
1689	DR1	562	0.0238000000000000017
1690	A3	563	0.0235999999999999995
1691	B7	563	0.0235999999999999995
1692	DR10	563	0.0235999999999999995
1693	A1	564	0.0235999999999999995
1694	B35	564	0.0235999999999999995
1695	DR3	564	0.0235999999999999995
1696	A10	565	0.0235999999999999995
1697	B27	565	0.0235999999999999995
1698	DR2	565	0.0235999999999999995
1699	A1	566	0.0235000000000000001
1700	B21	566	0.0235000000000000001
1701	DR2	566	0.0235000000000000001
1702	A19	567	0.0235000000000000001
1703	B17	567	0.0235000000000000001
1704	DR4	567	0.0235000000000000001
1705	A1	568	0.0234000000000000007
1706	B18	568	0.0234000000000000007
1707	DR4	568	0.0234000000000000007
1708	A19	569	0.0233000000000000013
1709	B5	569	0.0233000000000000013
1710	DR3	569	0.0233000000000000013
1711	A2	570	0.0233000000000000013
1712	B16	570	0.0233000000000000013
1713	DR3	570	0.0233000000000000013
1714	A11	571	0.023099999999999999
1715	B27	571	0.023099999999999999
1716	DR6	571	0.023099999999999999
1717	A19	572	0.0229000000000000002
1718	B16	572	0.0229000000000000002
1719	DR7	572	0.0229000000000000002
1720	A10	573	0.0227000000000000014
1721	B16	573	0.0227000000000000014
1722	DR8	573	0.0227000000000000014
1723	A19	574	0.0225999999999999986
1724	B8	574	0.0225999999999999986
1725	DR2	574	0.0225999999999999986
1726	A19	575	0.0224999999999999992
1727	B37	575	0.0224999999999999992
1728	DR5	575	0.0224999999999999992
1729	A19	576	0.022200000000000001
1730	B22	576	0.022200000000000001
1731	DR5	576	0.022200000000000001
1732	A2	577	0.0221000000000000016
1733	B70	577	0.0221000000000000016
1734	DR6	577	0.0221000000000000016
1735	A19	578	0.0219999999999999987
1736	B17	578	0.0219999999999999987
1737	DR5	578	0.0219999999999999987
1738	A9	579	0.0219999999999999987
1739	B5	579	0.0219999999999999987
1740	DR8	579	0.0219999999999999987
1741	A10	580	0.0218999999999999993
1742	B35	580	0.0218999999999999993
1743	DR7	580	0.0218999999999999993
1744	A9	581	0.0217999999999999999
1745	B27	581	0.0217999999999999999
1746	DR7	581	0.0217999999999999999
1747	A9	582	0.0217999999999999999
1748	B22	582	0.0217999999999999999
1749	DR1	582	0.0217999999999999999
1750	A3	583	0.0217999999999999999
1751	B8	583	0.0217999999999999999
1752	DR2	583	0.0217999999999999999
1753	A10	584	0.0217999999999999999
1754	B41	584	0.0217999999999999999
1755	DR7	584	0.0217999999999999999
1756	A19	585	0.0217000000000000005
1757	B27	585	0.0217000000000000005
1758	DR3	585	0.0217000000000000005
1759	A10	586	0.0217000000000000005
1760	B7	586	0.0217000000000000005
1761	DR4	586	0.0217000000000000005
1762	A10	587	0.0217000000000000005
1763	B41	587	0.0217000000000000005
1764	DR5	587	0.0217000000000000005
1765	A28	588	0.0217000000000000005
1766	B7	588	0.0217000000000000005
1767	DR6	588	0.0217000000000000005
1768	A11	589	0.0216000000000000011
1769	B27	589	0.0216000000000000011
1770	DR4	589	0.0216000000000000011
1771	A19	590	0.0214999999999999983
1772	B21	590	0.0214999999999999983
1773	DR2	590	0.0214999999999999983
1774	A9	591	0.0213999999999999989
1775	B8	591	0.0213999999999999989
1776	DR6	591	0.0213999999999999989
1777	A11	592	0.0213999999999999989
1778	B15	592	0.0213999999999999989
1779	DR8	592	0.0213999999999999989
1780	A28	593	0.0213999999999999989
1781	B16	593	0.0213999999999999989
1782	DR5	593	0.0213999999999999989
1783	A28	594	0.0212999999999999995
1784	B15	594	0.0212999999999999995
1785	DR2	594	0.0212999999999999995
1786	A9	595	0.0212000000000000001
1787	B17	595	0.0212000000000000001
1788	DR1	595	0.0212000000000000001
1789	A19	596	0.0211000000000000007
1790	B7	596	0.0211000000000000007
1791	DR8	596	0.0211000000000000007
1792	A3	597	0.0210000000000000013
1793	B7	597	0.0210000000000000013
1794	DR9	597	0.0210000000000000013
1795	A9	598	0.0210000000000000013
1796	B18	598	0.0210000000000000013
1797	DR8	598	0.0210000000000000013
1798	A28	599	0.020799999999999999
1799	B7	599	0.020799999999999999
1800	DR5	599	0.020799999999999999
1801	A28	600	0.0206999999999999997
1802	B27	600	0.0206999999999999997
1803	DR5	600	0.0206999999999999997
1804	A19	601	0.0205000000000000009
1805	B53	601	0.0205000000000000009
1806	DR6	601	0.0205000000000000009
1807	A28	602	0.0205000000000000009
1808	B27	602	0.0205000000000000009
1809	DR4	602	0.0205000000000000009
1810	A10	603	0.0205000000000000009
1811	B16	603	0.0205000000000000009
1812	DR3	603	0.0205000000000000009
1813	A10	604	0.0204000000000000015
1814	B7	604	0.0204000000000000015
1815	DR1	604	0.0204000000000000015
1816	A9	605	0.0202999999999999986
1817	B17	605	0.0202999999999999986
1818	DR4	605	0.0202999999999999986
1819	A9	606	0.0202999999999999986
1820	B40	606	0.0202999999999999986
1821	DR8	606	0.0202999999999999986
1822	A19	607	0.0202999999999999986
1823	B40	607	0.0202999999999999986
1824	DR9	607	0.0202999999999999986
1825	A3	608	0.0202999999999999986
1826	B37	608	0.0202999999999999986
1827	DR2	608	0.0202999999999999986
1828	A19	609	0.0202999999999999986
1829	B18	609	0.0202999999999999986
1830	DR1	609	0.0202999999999999986
1831	A9	610	0.0200999999999999998
1832	B15	610	0.0200999999999999998
1833	DR9	610	0.0200999999999999998
1834	A1	611	0.0200999999999999998
1835	B15	611	0.0200999999999999998
1836	DR7	611	0.0200999999999999998
1837	A10	612	0.0200999999999999998
1838	B15	612	0.0200999999999999998
1839	DR2	612	0.0200999999999999998
1840	A1	613	0.0200000000000000004
1841	B37	613	0.0200000000000000004
1842	DR3	613	0.0200000000000000004
1843	A10	614	0.0200000000000000004
1844	B21	614	0.0200000000000000004
1845	DR7	614	0.0200000000000000004
1846	A28	615	0.0200000000000000004
1847	B5	615	0.0200000000000000004
1848	DR8	615	0.0200000000000000004
1849	A28	616	0.019900000000000001
1850	B7	616	0.019900000000000001
1851	DR7	616	0.019900000000000001
1852	A19	617	0.0198000000000000016
1853	B13	617	0.0198000000000000016
1854	DR3	617	0.0198000000000000016
1855	A9	618	0.0196999999999999988
1856	B5	618	0.0196999999999999988
1857	DR3	618	0.0196999999999999988
1858	A9	619	0.0195999999999999994
1859	B16	619	0.0195999999999999994
1860	DR7	619	0.0195999999999999994
1861	A2	620	0.0195
1862	B41	620	0.0195
1863	DR8	620	0.0195
1864	A9	621	0.0194000000000000006
1865	B41	621	0.0194000000000000006
1866	DR5	621	0.0194000000000000006
1867	A11	622	0.0193000000000000012
1868	B15	622	0.0193000000000000012
1869	DR7	622	0.0193000000000000012
1870	A2	623	0.0191999999999999983
1871	B14	623	0.0191999999999999983
1872	DR4	623	0.0191999999999999983
1873	A9	624	0.0189999999999999995
1874	B15	624	0.0189999999999999995
1875	DR8	624	0.0189999999999999995
1876	A3	625	0.0189000000000000001
1877	B15	625	0.0189000000000000001
1878	DR8	625	0.0189000000000000001
1879	A9	626	0.0189000000000000001
1880	B40	626	0.0189000000000000001
1881	DR7	626	0.0189000000000000001
1882	A3	627	0.0189000000000000001
1883	B37	627	0.0189000000000000001
1884	DR4	627	0.0189000000000000001
1885	A9	628	0.0188000000000000007
1886	B40	628	0.0188000000000000007
1887	DR3	628	0.0188000000000000007
1888	A9	629	0.0187000000000000013
1889	B17	629	0.0187000000000000013
1890	DR8	629	0.0187000000000000013
1891	A2	630	0.0187000000000000013
1892	B12	630	0.0187000000000000013
1893	DR9	630	0.0187000000000000013
1894	A3	631	0.0187000000000000013
1895	B21	631	0.0187000000000000013
1896	DR6	631	0.0187000000000000013
1897	A1	632	0.0187000000000000013
1898	B22	632	0.0187000000000000013
1899	DR1	632	0.0187000000000000013
1900	A28	633	0.0185999999999999985
1901	B14	633	0.0185999999999999985
1902	DR7	633	0.0185999999999999985
1903	A28	634	0.0185999999999999985
1904	B40	634	0.0185999999999999985
1905	DR8	634	0.0185999999999999985
1906	A9	635	0.0185999999999999985
1907	B18	635	0.0185999999999999985
1908	DR7	635	0.0185999999999999985
1909	A9	636	0.0184999999999999991
1910	B41	636	0.0184999999999999991
1911	DR7	636	0.0184999999999999991
1912	A19	637	0.0184999999999999991
1913	B5	637	0.0184999999999999991
1914	DR9	637	0.0184999999999999991
1915	A2	638	0.0184999999999999991
1916	B14	638	0.0184999999999999991
1917	DR3	638	0.0184999999999999991
1918	A28	639	0.0183999999999999997
1919	B15	639	0.0183999999999999997
1920	DR5	639	0.0183999999999999997
1921	A10	640	0.0183000000000000003
1922	B5	640	0.0183000000000000003
1923	DR8	640	0.0183000000000000003
1924	A28	641	0.0182000000000000009
1925	B16	641	0.0182000000000000009
1926	DR2	641	0.0182000000000000009
1927	A3	642	0.0181000000000000015
1928	B5	642	0.0181000000000000015
1929	DR9	642	0.0181000000000000015
1930	A10	643	0.0179999999999999986
1931	B41	643	0.0179999999999999986
1932	DR4	643	0.0179999999999999986
1933	A2	644	0.0179999999999999986
1934	B41	644	0.0179999999999999986
1935	DR3	644	0.0179999999999999986
1936	A9	645	0.0178999999999999992
1937	B13	645	0.0178999999999999992
1938	DR2	645	0.0178999999999999992
1939	A10	646	0.0178999999999999992
1940	B8	646	0.0178999999999999992
1941	DR2	646	0.0178999999999999992
1942	A1	647	0.0178999999999999992
1943	B40	647	0.0178999999999999992
1944	DR3	647	0.0178999999999999992
1945	A19	648	0.0177999999999999999
1946	B16	648	0.0177999999999999999
1947	DR8	648	0.0177999999999999999
1948	A2	649	0.0177999999999999999
1949	B13	649	0.0177999999999999999
1950	DR3	649	0.0177999999999999999
1951	A2	650	0.0177000000000000005
1952	B70	650	0.0177000000000000005
1953	DR7	650	0.0177000000000000005
1954	A1	651	0.0173999999999999988
1955	B37	651	0.0173999999999999988
1956	DR8	651	0.0173999999999999988
1957	A19	652	0.0172999999999999994
1958	B15	652	0.0172999999999999994
1959	DR3	652	0.0172999999999999994
1960	A10	653	0.0172999999999999994
1961	B7	653	0.0172999999999999994
1962	DR7	653	0.0172999999999999994
1963	A1	654	0.0172999999999999994
1964	B22	654	0.0172999999999999994
1965	DR4	654	0.0172999999999999994
1966	A28	655	0.0171000000000000006
1967	B15	655	0.0171000000000000006
1968	DR1	655	0.0171000000000000006
1969	A28	656	0.0171000000000000006
1970	B16	656	0.0171000000000000006
1971	DR4	656	0.0171000000000000006
1972	A19	657	0.0170000000000000012
1973	B15	657	0.0170000000000000012
1974	DR8	657	0.0170000000000000012
1975	A9	658	0.0168999999999999984
1976	B8	658	0.0168999999999999984
1977	DR2	658	0.0168999999999999984
1978	A1	659	0.016799999999999999
1979	B27	659	0.016799999999999999
1980	DR6	659	0.016799999999999999
1981	A9	660	0.0166999999999999996
1982	B7	660	0.0166999999999999996
1983	DR9	660	0.0166999999999999996
1984	A9	661	0.0166000000000000002
1985	B8	661	0.0166000000000000002
1986	DR4	661	0.0166000000000000002
1987	A9	662	0.0164000000000000014
1988	B13	662	0.0164000000000000014
1989	DR5	662	0.0164000000000000014
1990	A9	663	0.0164000000000000014
1991	B13	663	0.0164000000000000014
1992	DR6	663	0.0164000000000000014
1993	A10	664	0.0164000000000000014
1994	B14	664	0.0164000000000000014
1995	DR6	664	0.0164000000000000014
1996	A2	665	0.0164000000000000014
1997	B14	665	0.0164000000000000014
1998	DR2	665	0.0164000000000000014
1999	A2	666	0.0164000000000000014
2000	B12	666	0.0164000000000000014
2001	DR10	666	0.0164000000000000014
2002	A9	667	0.0162999999999999985
2003	B13	667	0.0162999999999999985
2004	DR10	667	0.0162999999999999985
2005	A19	668	0.0161999999999999991
2006	B41	668	0.0161999999999999991
2007	DR6	668	0.0161999999999999991
2008	A3	669	0.0161999999999999991
2009	B8	669	0.0161999999999999991
2010	DR6	669	0.0161999999999999991
2011	A28	670	0.0161999999999999991
2012	B40	670	0.0161999999999999991
2013	DR7	670	0.0161999999999999991
2014	A28	671	0.0160999999999999997
2015	B17	671	0.0160999999999999997
2016	DR6	671	0.0160999999999999997
2017	A1	672	0.0160000000000000003
2018	B27	672	0.0160000000000000003
2019	DR8	672	0.0160000000000000003
2020	A3	673	0.0160000000000000003
2021	B17	673	0.0160000000000000003
2022	DR4	673	0.0160000000000000003
2023	A19	674	0.0159000000000000009
2024	B17	674	0.0159000000000000009
2025	DR1	674	0.0159000000000000009
2026	A3	675	0.0159000000000000009
2027	B17	675	0.0159000000000000009
2028	DR5	675	0.0159000000000000009
2029	A1	676	0.0159000000000000009
2030	B12	676	0.0159000000000000009
2031	DR3	676	0.0159000000000000009
2032	A1	677	0.0158000000000000015
2033	B13	677	0.0158000000000000015
2034	DR2	677	0.0158000000000000015
2035	A1	678	0.0158000000000000015
2036	B41	678	0.0158000000000000015
2037	DR7	678	0.0158000000000000015
2038	A9	679	0.0158000000000000015
2039	B14	679	0.0158000000000000015
2040	DR6	679	0.0158000000000000015
2041	A9	680	0.0155999999999999993
2042	B13	680	0.0155999999999999993
2043	DR4	680	0.0155999999999999993
2044	A9	681	0.0155999999999999993
2045	B8	681	0.0155999999999999993
2046	DR5	681	0.0155999999999999993
2047	A11	682	0.0154999999999999999
2048	B14	682	0.0154999999999999999
2049	DR1	682	0.0154999999999999999
2050	A1	683	0.0154000000000000005
2051	B15	683	0.0154000000000000005
2052	DR3	683	0.0154000000000000005
2053	A2	684	0.0154000000000000005
2054	B7	684	0.0154000000000000005
2055	DR10	684	0.0154000000000000005
2056	A1	685	0.0154000000000000005
2057	B5	685	0.0154000000000000005
2058	DR9	685	0.0154000000000000005
2059	A9	686	0.0152999999999999994
2060	B37	686	0.0152999999999999994
2061	DR4	686	0.0152999999999999994
2062	A2	687	0.0152999999999999994
2063	B18	687	0.0152999999999999994
2064	DR9	687	0.0152999999999999994
2065	A10	688	0.0152
2066	B5	688	0.0152
2067	DR9	688	0.0152
2068	A19	689	0.0151000000000000006
2069	B41	689	0.0151000000000000006
2070	DR5	689	0.0151000000000000006
2071	A2	690	0.0149
2072	B5	690	0.0149
2073	DR10	690	0.0149
2074	A10	691	0.0149
2075	B17	691	0.0149
2076	DR2	691	0.0149
2077	A2	692	0.0148000000000000007
2078	B22	692	0.0148000000000000007
2079	DR3	692	0.0148000000000000007
2080	A2	693	0.0148000000000000007
2081	B40	693	0.0148000000000000007
2082	DR10	693	0.0148000000000000007
2083	A2	694	0.0148000000000000007
2084	B21	694	0.0148000000000000007
2085	DR8	694	0.0148000000000000007
2086	A28	695	0.0148000000000000007
2087	B7	695	0.0148000000000000007
2088	DR1	695	0.0148000000000000007
2089	A28	696	0.0146999999999999995
2090	B12	696	0.0146999999999999995
2091	DR3	696	0.0146999999999999995
2092	A2	697	0.0146999999999999995
2093	B70	697	0.0146999999999999995
2094	DR4	697	0.0146999999999999995
2095	A3	698	0.0146999999999999995
2096	B8	698	0.0146999999999999995
2097	DR5	698	0.0146999999999999995
2098	A3	699	0.0146999999999999995
2099	B37	699	0.0146999999999999995
2100	DR6	699	0.0146999999999999995
2101	A2	700	0.0146000000000000001
2102	B16	700	0.0146000000000000001
2103	DR9	700	0.0146000000000000001
2104	A3	701	0.0145000000000000007
2105	B15	701	0.0145000000000000007
2106	DR9	701	0.0145000000000000007
2107	A28	702	0.0145000000000000007
2108	B5	702	0.0145000000000000007
2109	DR9	702	0.0145000000000000007
2110	A11	703	0.0145000000000000007
2111	B40	703	0.0145000000000000007
2112	DR2	703	0.0145000000000000007
2113	A9	704	0.0143999999999999996
2114	B22	704	0.0143999999999999996
2115	DR7	704	0.0143999999999999996
2116	A1	705	0.0143999999999999996
2117	B16	705	0.0143999999999999996
2118	DR4	705	0.0143999999999999996
2119	A10	706	0.0143999999999999996
2120	B27	706	0.0143999999999999996
2121	DR7	706	0.0143999999999999996
2122	A11	707	0.0143000000000000002
2123	B18	707	0.0143000000000000002
2124	DR1	707	0.0143000000000000002
2125	A3	708	0.0143000000000000002
2126	B37	708	0.0143000000000000002
2127	DR1	708	0.0143000000000000002
2128	A1	709	0.0142000000000000008
2129	B13	709	0.0142000000000000008
2130	DR5	709	0.0142000000000000008
2131	A10	710	0.0142000000000000008
2132	B40	710	0.0142000000000000008
2133	DR8	710	0.0142000000000000008
2134	A28	711	0.0142000000000000008
2135	B14	711	0.0142000000000000008
2136	DR3	711	0.0142000000000000008
2137	A19	712	0.0140999999999999997
2138	B8	712	0.0140999999999999997
2139	DR4	712	0.0140999999999999997
2140	A9	713	0.0138999999999999992
2141	B37	713	0.0138999999999999992
2142	DR10	713	0.0138999999999999992
2143	A11	714	0.0138999999999999992
2144	B21	714	0.0138999999999999992
2145	DR7	714	0.0138999999999999992
2146	A3	715	0.0138999999999999992
2147	B17	715	0.0138999999999999992
2148	DR1	715	0.0138999999999999992
2149	A9	716	0.0135999999999999992
2150	B37	716	0.0135999999999999992
2151	DR6	716	0.0135999999999999992
2152	A11	717	0.0135999999999999992
2153	B7	717	0.0135999999999999992
2154	DR7	717	0.0135999999999999992
2155	A3	718	0.0135999999999999992
2156	B27	718	0.0135999999999999992
2157	DR3	718	0.0135999999999999992
2158	A3	719	0.0134999999999999998
2159	B47	719	0.0134999999999999998
2160	DR4	719	0.0134999999999999998
2161	A11	720	0.0134999999999999998
2162	B40	720	0.0134999999999999998
2163	DR1	720	0.0134999999999999998
2164	A11	721	0.0134999999999999998
2165	B16	721	0.0134999999999999998
2166	DR5	721	0.0134999999999999998
2167	A28	722	0.0134000000000000005
2168	B27	722	0.0134000000000000005
2169	DR8	722	0.0134000000000000005
2170	A19	723	0.0134000000000000005
2171	B22	723	0.0134000000000000005
2172	DR1	723	0.0134000000000000005
2173	A2	724	0.0134000000000000005
2174	B70	724	0.0134000000000000005
2175	DR5	724	0.0134000000000000005
2176	A28	725	0.0134000000000000005
2177	B14	725	0.0134000000000000005
2178	DR2	725	0.0134000000000000005
2179	A1	726	0.0134000000000000005
2180	B16	726	0.0134000000000000005
2181	DR7	726	0.0134000000000000005
2182	A2	727	0.0131999999999999999
2183	B37	727	0.0131999999999999999
2184	DR1	727	0.0131999999999999999
2185	A11	728	0.0131999999999999999
2186	B21	728	0.0131999999999999999
2187	DR5	728	0.0131999999999999999
2188	A11	729	0.0131000000000000005
2189	B13	729	0.0131000000000000005
2190	DR2	729	0.0131000000000000005
2191	A1	730	0.0129999999999999994
2192	B18	730	0.0129999999999999994
2193	DR1	730	0.0129999999999999994
2194	A2	731	0.0129999999999999994
2195	B37	731	0.0129999999999999994
2196	DR7	731	0.0129999999999999994
2197	A19	732	0.0129999999999999994
2198	B18	732	0.0129999999999999994
2199	DR8	732	0.0129999999999999994
2200	A19	733	0.0129999999999999994
2201	B8	733	0.0129999999999999994
2202	DR5	733	0.0129999999999999994
2203	A3	734	0.0129
2204	B14	734	0.0129
2205	DR5	734	0.0129
2206	A28	735	0.0129
2207	B22	735	0.0129
2208	DR5	735	0.0129
2209	A11	736	0.0128000000000000006
2210	B22	736	0.0128000000000000006
2211	DR8	736	0.0128000000000000006
2212	A10	737	0.0128000000000000006
2213	B27	737	0.0128000000000000006
2214	DR3	737	0.0128000000000000006
2215	A3	738	0.0126999999999999995
2216	B14	738	0.0126999999999999995
2217	DR2	738	0.0126999999999999995
2218	A28	739	0.0126999999999999995
2219	B18	739	0.0126999999999999995
2220	DR4	739	0.0126999999999999995
2221	A10	740	0.0126000000000000001
2222	B8	740	0.0126000000000000001
2223	DR5	740	0.0126000000000000001
2224	A9	741	0.0126000000000000001
2225	B14	741	0.0126000000000000001
2226	DR5	741	0.0126000000000000001
2227	A11	742	0.0125000000000000007
2228	B12	742	0.0125000000000000007
2229	DR3	742	0.0125000000000000007
2230	A19	743	0.0125000000000000007
2231	B35	743	0.0125000000000000007
2232	DR10	743	0.0125000000000000007
2233	A3	744	0.0123999999999999996
2234	B40	744	0.0123999999999999996
2235	DR9	744	0.0123999999999999996
2236	A3	745	0.0123999999999999996
2237	B41	745	0.0123999999999999996
2238	DR4	745	0.0123999999999999996
2239	A19	746	0.0123999999999999996
2240	B16	746	0.0123999999999999996
2241	DR3	746	0.0123999999999999996
2242	A10	747	0.0123000000000000002
2243	B5	747	0.0123000000000000002
2244	DR7	747	0.0123000000000000002
2245	A11	748	0.0123000000000000002
2246	B7	748	0.0123000000000000002
2247	DR3	748	0.0123000000000000002
2248	A3	749	0.0123000000000000002
2249	B53	749	0.0123000000000000002
2250	DR1	749	0.0123000000000000002
2251	A3	750	0.0122000000000000008
2252	B16	750	0.0122000000000000008
2253	DR3	750	0.0122000000000000008
2254	A10	751	0.0122000000000000008
2255	B8	751	0.0122000000000000008
2256	DR6	751	0.0122000000000000008
2257	A9	752	0.0122000000000000008
2258	B17	752	0.0122000000000000008
2259	DR3	752	0.0122000000000000008
2260	A9	753	0.0122000000000000008
2261	B27	753	0.0122000000000000008
2262	DR3	753	0.0122000000000000008
2263	A10	754	0.0122000000000000008
2264	B40	754	0.0122000000000000008
2265	DR1	754	0.0122000000000000008
2266	A11	755	0.0122000000000000008
2267	B16	755	0.0122000000000000008
2268	DR4	755	0.0122000000000000008
2269	A3	756	0.0120000000000000002
2270	B8	756	0.0120000000000000002
2271	DR4	756	0.0120000000000000002
2272	A10	757	0.0120000000000000002
2273	B15	757	0.0120000000000000002
2274	DR7	757	0.0120000000000000002
2275	A2	758	0.0120000000000000002
2276	B41	758	0.0120000000000000002
2277	DR2	758	0.0120000000000000002
2278	A19	759	0.0119000000000000009
2279	B14	759	0.0119000000000000009
2280	DR8	759	0.0119000000000000009
2281	A11	760	0.0117999999999999997
2282	B17	760	0.0117999999999999997
2283	DR6	760	0.0117999999999999997
2284	A3	761	0.0117000000000000003
2285	B16	761	0.0117000000000000003
2286	DR7	761	0.0117000000000000003
2287	A1	762	0.0117000000000000003
2288	B12	762	0.0117000000000000003
2289	DR8	762	0.0117000000000000003
2290	A11	763	0.0117000000000000003
2291	B14	763	0.0117000000000000003
2292	DR7	763	0.0117000000000000003
2293	A10	764	0.0115999999999999992
2294	B8	764	0.0115999999999999992
2295	DR4	764	0.0115999999999999992
2296	A11	765	0.0114000000000000004
2297	B35	765	0.0114000000000000004
2298	DR10	765	0.0114000000000000004
2299	A10	766	0.0114000000000000004
2300	B40	766	0.0114000000000000004
2301	DR2	766	0.0114000000000000004
2302	A3	767	0.0114000000000000004
2303	B21	767	0.0114000000000000004
2304	DR3	767	0.0114000000000000004
2305	A3	768	0.0114000000000000004
2306	B13	768	0.0114000000000000004
2307	DR6	768	0.0114000000000000004
2308	A10	769	0.0114000000000000004
2309	B35	769	0.0114000000000000004
2310	DR8	769	0.0114000000000000004
2311	A11	770	0.0114000000000000004
2312	B16	770	0.0114000000000000004
2313	DR1	770	0.0114000000000000004
2314	A10	771	0.0112999999999999993
2315	B22	771	0.0112999999999999993
2316	DR3	771	0.0112999999999999993
2317	A11	772	0.0112999999999999993
2318	B5	772	0.0112999999999999993
2319	DR9	772	0.0112999999999999993
2320	A1	773	0.0112999999999999993
2321	B16	773	0.0112999999999999993
2322	DR3	773	0.0112999999999999993
2323	A10	774	0.0112999999999999993
2324	B35	774	0.0112999999999999993
2325	DR3	774	0.0112999999999999993
2326	A9	775	0.0111999999999999999
2327	B70	775	0.0111999999999999999
2328	DR6	775	0.0111999999999999999
2329	A9	776	0.0111000000000000005
2330	B53	776	0.0111000000000000005
2331	DR6	776	0.0111000000000000005
2332	A28	777	0.0111000000000000005
2333	B53	777	0.0111000000000000005
2334	DR4	777	0.0111000000000000005
2335	A2	778	0.0111000000000000005
2336	B16	778	0.0111000000000000005
2337	DR10	778	0.0111000000000000005
2338	A19	779	0.0111000000000000005
2339	B8	779	0.0111000000000000005
2340	DR7	779	0.0111000000000000005
2341	A3	780	0.0109999999999999994
2342	B14	780	0.0109999999999999994
2343	DR3	780	0.0109999999999999994
2344	A2	781	0.0109999999999999994
2345	B47	781	0.0109999999999999994
2346	DR7	781	0.0109999999999999994
2347	A11	782	0.0109999999999999994
2348	B17	782	0.0109999999999999994
2349	DR1	782	0.0109999999999999994
2350	A3	783	0.0109999999999999994
2351	B35	783	0.0109999999999999994
2352	DR9	783	0.0109999999999999994
2353	A28	784	0.0109
2354	B22	784	0.0109
2355	DR6	784	0.0109
2356	A9	785	0.0109
2357	B12	785	0.0109
2358	DR10	785	0.0109
2359	A3	786	0.0109
2360	B37	786	0.0109
2361	DR7	786	0.0109
2362	A10	787	0.0109
2363	B41	787	0.0109
2364	DR2	787	0.0109
2365	A10	788	0.0109
2366	B41	788	0.0109
2367	DR3	788	0.0109
2368	A9	789	0.0108000000000000006
2369	B12	789	0.0108000000000000006
2370	DR9	789	0.0108000000000000006
2371	A28	790	0.0108000000000000006
2372	B5	790	0.0108000000000000006
2373	DR3	790	0.0108000000000000006
2374	A10	791	0.0108000000000000006
2375	B15	791	0.0108000000000000006
2376	DR8	791	0.0108000000000000006
2377	A2	792	0.0108000000000000006
2378	B13	792	0.0108000000000000006
2379	DR8	792	0.0108000000000000006
2380	A9	793	0.0106999999999999994
2381	B13	793	0.0106999999999999994
2382	DR1	793	0.0106999999999999994
2383	A1	794	0.0106999999999999994
2384	B41	794	0.0106999999999999994
2385	DR5	794	0.0106999999999999994
2386	A19	795	0.0106999999999999994
2387	B12	795	0.0106999999999999994
2388	DR10	795	0.0106999999999999994
2389	A3	796	0.0106
2390	B18	796	0.0106
2391	DR8	796	0.0106
2392	A1	797	0.0106
2393	B21	797	0.0106
2394	DR4	797	0.0106
2395	A9	798	0.0106
2396	B14	798	0.0106
2397	DR4	798	0.0106
2398	A19	799	0.0105000000000000007
2399	B13	799	0.0105000000000000007
2400	DR8	799	0.0105000000000000007
2401	A3	800	0.0105000000000000007
2402	B13	800	0.0105000000000000007
2403	DR2	800	0.0105000000000000007
2404	A3	801	0.0105000000000000007
2405	B8	801	0.0105000000000000007
2406	DR7	801	0.0105000000000000007
2407	A11	802	0.0105000000000000007
2408	B12	802	0.0105000000000000007
2409	DR8	802	0.0105000000000000007
2410	A9	803	0.0103999999999999995
2411	B8	803	0.0103999999999999995
2412	DR1	803	0.0103999999999999995
2413	A11	804	0.0103999999999999995
2414	B35	804	0.0103999999999999995
2415	DR9	804	0.0103999999999999995
2416	A10	805	0.0103999999999999995
2417	B7	805	0.0103999999999999995
2418	DR3	805	0.0103999999999999995
2419	A9	806	0.0103999999999999995
2420	B16	806	0.0103999999999999995
2421	DR3	806	0.0103999999999999995
2422	A2	807	0.0103999999999999995
2423	B17	807	0.0103999999999999995
2424	DR10	807	0.0103999999999999995
2425	A3	808	0.0103999999999999995
2426	B47	808	0.0103999999999999995
2427	DR2	808	0.0103999999999999995
2428	A10	809	0.0103000000000000001
2429	B12	809	0.0103000000000000001
2430	DR8	809	0.0103000000000000001
2431	A1	810	0.0103000000000000001
2432	B27	810	0.0103000000000000001
2433	DR7	810	0.0103000000000000001
2434	A1	811	0.0102000000000000007
2435	B13	811	0.0102000000000000007
2436	DR6	811	0.0102000000000000007
2437	A1	812	0.0102000000000000007
2438	B15	812	0.0102000000000000007
2439	DR8	812	0.0102000000000000007
2440	A3	813	0.0102000000000000007
2441	B21	813	0.0102000000000000007
2442	DR1	813	0.0102000000000000007
2443	A11	814	0.0100000000000000002
2444	B18	814	0.0100000000000000002
2445	DR7	814	0.0100000000000000002
2446	A28	815	0.00990000000000000081
2447	B15	815	0.00990000000000000081
2448	DR3	815	0.00990000000000000081
2449	A28	816	0.00979999999999999968
2450	B21	816	0.00979999999999999968
2451	DR7	816	0.00979999999999999968
2452	A10	817	0.00979999999999999968
2453	B12	817	0.00979999999999999968
2454	DR3	817	0.00979999999999999968
2455	A11	818	0.00979999999999999968
2456	B14	818	0.00979999999999999968
2457	DR6	818	0.00979999999999999968
2458	A3	819	0.00979999999999999968
2459	B22	819	0.00979999999999999968
2460	DR8	819	0.00979999999999999968
2461	A9	820	0.00970000000000000029
2462	B16	820	0.00970000000000000029
2463	DR10	820	0.00970000000000000029
2464	A11	821	0.00970000000000000029
2465	B37	821	0.00970000000000000029
2466	DR10	821	0.00970000000000000029
2467	A19	822	0.00970000000000000029
2468	B41	822	0.00970000000000000029
2469	DR7	822	0.00970000000000000029
2470	A28	823	0.00970000000000000029
2471	B15	823	0.00970000000000000029
2472	DR7	823	0.00970000000000000029
2473	A3	824	0.00970000000000000029
2474	B41	824	0.00970000000000000029
2475	DR5	824	0.00970000000000000029
2476	A2	825	0.00970000000000000029
2477	B70	825	0.00970000000000000029
2478	DR1	825	0.00970000000000000029
2479	A3	826	0.00970000000000000029
2480	B53	826	0.00970000000000000029
2481	DR6	826	0.00970000000000000029
2482	A2	827	0.00959999999999999916
2483	B53	827	0.00959999999999999916
2484	DR5	827	0.00959999999999999916
2485	A3	828	0.00959999999999999916
2486	B70	828	0.00959999999999999916
2487	DR6	828	0.00959999999999999916
2488	A10	829	0.00959999999999999916
2489	B14	829	0.00959999999999999916
2490	DR4	829	0.00959999999999999916
2491	A28	830	0.00949999999999999976
2492	B21	830	0.00949999999999999976
2493	DR5	830	0.00949999999999999976
2494	A10	831	0.00949999999999999976
2495	B5	831	0.00949999999999999976
2496	DR3	831	0.00949999999999999976
2497	A1	832	0.00949999999999999976
2498	B27	832	0.00949999999999999976
2499	DR3	832	0.00949999999999999976
2500	A11	833	0.00949999999999999976
2501	B5	833	0.00949999999999999976
2502	DR3	833	0.00949999999999999976
2503	A3	834	0.00949999999999999976
2504	B17	834	0.00949999999999999976
2505	DR3	834	0.00949999999999999976
2506	A19	835	0.00940000000000000037
2507	B37	835	0.00940000000000000037
2508	DR10	835	0.00940000000000000037
2509	A19	836	0.00940000000000000037
2510	B7	836	0.00940000000000000037
2511	DR9	836	0.00940000000000000037
2512	A10	837	0.00940000000000000037
2513	B7	837	0.00940000000000000037
2514	DR8	837	0.00940000000000000037
2515	A1	838	0.00940000000000000037
2516	B8	838	0.00940000000000000037
2517	DR10	838	0.00940000000000000037
2518	A11	839	0.00929999999999999924
2519	B27	839	0.00929999999999999924
2520	DR9	839	0.00929999999999999924
2521	A19	840	0.00929999999999999924
2522	B14	840	0.00929999999999999924
2523	DR10	840	0.00929999999999999924
2524	A28	841	0.00929999999999999924
2525	B7	841	0.00929999999999999924
2526	DR3	841	0.00929999999999999924
2527	A9	842	0.00919999999999999984
2528	B37	842	0.00919999999999999984
2529	DR2	842	0.00919999999999999984
2530	A28	843	0.00919999999999999984
2531	B27	843	0.00919999999999999984
2532	DR7	843	0.00919999999999999984
2533	A10	844	0.00919999999999999984
2534	B17	844	0.00919999999999999984
2535	DR5	844	0.00919999999999999984
2536	A9	845	0.00910000000000000045
2537	B37	845	0.00910000000000000045
2538	DR5	845	0.00910000000000000045
2539	A3	846	0.00910000000000000045
2540	B8	846	0.00910000000000000045
2541	DR1	846	0.00910000000000000045
2542	A3	847	0.00899999999999999932
2543	B21	847	0.00899999999999999932
2544	DR2	847	0.00899999999999999932
2545	A2	848	0.00899999999999999932
2546	B8	848	0.00899999999999999932
2547	DR8	848	0.00899999999999999932
2548	A3	849	0.00899999999999999932
2549	B47	849	0.00899999999999999932
2550	DR5	849	0.00899999999999999932
2551	A11	850	0.00889999999999999993
2552	B18	850	0.00889999999999999993
2553	DR8	850	0.00889999999999999993
2554	A28	851	0.00889999999999999993
2555	B16	851	0.00889999999999999993
2556	DR1	851	0.00889999999999999993
2557	A19	852	0.00889999999999999993
2558	B8	852	0.00889999999999999993
2559	DR1	852	0.00889999999999999993
2560	A1	853	0.00880000000000000053
2561	B21	853	0.00880000000000000053
2562	DR1	853	0.00880000000000000053
2563	A11	854	0.00880000000000000053
2564	B17	854	0.00880000000000000053
2565	DR2	854	0.00880000000000000053
2566	A3	855	0.00880000000000000053
2567	B41	855	0.00880000000000000053
2568	DR7	855	0.00880000000000000053
2569	A10	856	0.00880000000000000053
2570	B27	856	0.00880000000000000053
2571	DR8	856	0.00880000000000000053
2572	A9	857	0.0086999999999999994
2573	B27	857	0.0086999999999999994
2574	DR9	857	0.0086999999999999994
2575	A10	858	0.0086999999999999994
2576	B21	858	0.0086999999999999994
2577	DR4	858	0.0086999999999999994
2578	A1	859	0.0086999999999999994
2579	B14	859	0.0086999999999999994
2580	DR2	859	0.0086999999999999994
2581	A1	860	0.0086999999999999994
2582	B7	860	0.0086999999999999994
2583	DR10	860	0.0086999999999999994
2584	A1	861	0.00850000000000000061
2585	B41	861	0.00850000000000000061
2586	DR4	861	0.00850000000000000061
2587	A9	862	0.00850000000000000061
2588	B22	862	0.00850000000000000061
2589	DR8	862	0.00850000000000000061
2590	A28	863	0.00850000000000000061
2591	B18	863	0.00850000000000000061
2592	DR7	863	0.00850000000000000061
2593	A3	864	0.00839999999999999948
2594	B13	864	0.00839999999999999948
2595	DR5	864	0.00839999999999999948
2596	A19	865	0.00830000000000000009
2597	B53	865	0.00830000000000000009
2598	DR1	865	0.00830000000000000009
2599	A1	866	0.00830000000000000009
2600	B15	866	0.00830000000000000009
2601	DR9	866	0.00830000000000000009
2602	A3	867	0.00830000000000000009
2603	B22	867	0.00830000000000000009
2604	DR7	867	0.00830000000000000009
2605	A19	868	0.00809999999999999956
2606	B21	868	0.00809999999999999956
2607	DR3	868	0.00809999999999999956
2608	A19	869	0.00809999999999999956
2609	B53	869	0.00809999999999999956
2610	DR5	869	0.00809999999999999956
2611	A9	870	0.00809999999999999956
2612	B5	870	0.00809999999999999956
2613	DR10	870	0.00809999999999999956
2614	A3	871	0.00809999999999999956
2615	B17	871	0.00809999999999999956
2616	DR8	871	0.00809999999999999956
2617	A1	872	0.00800000000000000017
2618	B18	872	0.00800000000000000017
2619	DR8	872	0.00800000000000000017
2620	A1	873	0.00800000000000000017
2621	B35	873	0.00800000000000000017
2622	DR10	873	0.00800000000000000017
2623	A11	874	0.00800000000000000017
2624	B21	874	0.00800000000000000017
2625	DR3	874	0.00800000000000000017
2626	A11	875	0.00800000000000000017
2627	B37	875	0.00800000000000000017
2628	DR6	875	0.00800000000000000017
2629	A9	876	0.00790000000000000077
2630	B8	876	0.00790000000000000077
2631	DR7	876	0.00790000000000000077
2632	A10	877	0.00779999999999999964
2633	B8	877	0.00779999999999999964
2634	DR1	877	0.00779999999999999964
2635	A1	878	0.00779999999999999964
2636	B21	878	0.00779999999999999964
2637	DR3	878	0.00779999999999999964
2638	A28	879	0.00779999999999999964
2639	B12	879	0.00779999999999999964
2640	DR8	879	0.00779999999999999964
2641	A9	880	0.00770000000000000025
2642	B41	880	0.00770000000000000025
2643	DR8	880	0.00770000000000000025
2644	A1	881	0.00770000000000000025
2645	B17	881	0.00770000000000000025
2646	DR10	881	0.00770000000000000025
2647	A10	882	0.00770000000000000025
2648	B40	882	0.00770000000000000025
2649	DR7	882	0.00770000000000000025
2650	A9	883	0.00770000000000000025
2651	B40	883	0.00770000000000000025
2652	DR9	883	0.00770000000000000025
2653	A3	884	0.00770000000000000025
2654	B37	884	0.00770000000000000025
2655	DR8	884	0.00770000000000000025
2656	A9	885	0.00749999999999999972
2657	B35	885	0.00749999999999999972
2658	DR10	885	0.00749999999999999972
2659	A10	886	0.00749999999999999972
2660	B14	886	0.00749999999999999972
2661	DR2	886	0.00749999999999999972
2662	A10	887	0.00749999999999999972
2663	B16	887	0.00749999999999999972
2664	DR10	887	0.00749999999999999972
2665	A19	888	0.00749999999999999972
2666	B37	888	0.00749999999999999972
2667	DR2	888	0.00749999999999999972
2668	A9	889	0.00749999999999999972
2669	B70	889	0.00749999999999999972
2670	DR5	889	0.00749999999999999972
2671	A2	890	0.00740000000000000033
2672	B53	890	0.00740000000000000033
2673	DR4	890	0.00740000000000000033
2674	A9	891	0.00740000000000000033
2675	B37	891	0.00740000000000000033
2676	DR7	891	0.00740000000000000033
2677	A2	892	0.00740000000000000033
2678	B27	892	0.00740000000000000033
2679	DR10	892	0.00740000000000000033
2680	A3	893	0.00740000000000000033
2681	B12	893	0.00740000000000000033
2682	DR9	893	0.00740000000000000033
2683	A3	894	0.00740000000000000033
2684	B22	894	0.00740000000000000033
2685	DR9	894	0.00740000000000000033
2686	A19	895	0.00730000000000000007
2687	B15	895	0.00730000000000000007
2688	DR9	895	0.00730000000000000007
2689	A9	896	0.00730000000000000007
2690	B37	896	0.00730000000000000007
2691	DR1	896	0.00730000000000000007
2692	A19	897	0.00730000000000000007
2693	B22	897	0.00730000000000000007
2694	DR7	897	0.00730000000000000007
2695	A28	898	0.00730000000000000007
2696	B16	898	0.00730000000000000007
2697	DR8	898	0.00730000000000000007
2698	A2	899	0.00730000000000000007
2699	B35	899	0.00730000000000000007
2700	DR10	899	0.00730000000000000007
2701	A10	900	0.00730000000000000007
2702	B17	900	0.00730000000000000007
2703	DR3	900	0.00730000000000000007
2704	A19	901	0.0071999999999999998
2705	B21	901	0.0071999999999999998
2706	DR8	901	0.0071999999999999998
2707	A10	902	0.0071999999999999998
2708	B14	902	0.0071999999999999998
2709	DR5	902	0.0071999999999999998
2710	A1	903	0.0071999999999999998
2711	B22	903	0.0071999999999999998
2712	DR2	903	0.0071999999999999998
2713	A19	904	0.0071999999999999998
2714	B70	904	0.0071999999999999998
2715	DR6	904	0.0071999999999999998
2716	A28	905	0.00710000000000000041
2717	B22	905	0.00710000000000000041
2718	DR2	905	0.00710000000000000041
2719	A1	906	0.00710000000000000041
2720	B40	906	0.00710000000000000041
2721	DR9	906	0.00710000000000000041
2722	A2	907	0.00700000000000000015
2723	B53	907	0.00700000000000000015
2724	DR1	907	0.00700000000000000015
2725	A28	908	0.00700000000000000015
2726	B17	908	0.00700000000000000015
2727	DR8	908	0.00700000000000000015
2728	A2	909	0.00700000000000000015
2729	B41	909	0.00700000000000000015
2730	DR1	909	0.00700000000000000015
2731	A9	910	0.00689999999999999988
2732	B41	910	0.00689999999999999988
2733	DR4	910	0.00689999999999999988
2734	A11	911	0.00689999999999999988
2735	B21	911	0.00689999999999999988
2736	DR6	911	0.00689999999999999988
2737	A9	912	0.00689999999999999988
2738	B14	912	0.00689999999999999988
2739	DR2	912	0.00689999999999999988
2740	A11	913	0.00689999999999999988
2741	B12	913	0.00689999999999999988
2742	DR9	913	0.00689999999999999988
2743	A2	914	0.00679999999999999962
2744	B53	914	0.00679999999999999962
2745	DR2	914	0.00679999999999999962
2746	A2	915	0.00679999999999999962
2747	B37	915	0.00679999999999999962
2748	DR8	915	0.00679999999999999962
2749	A3	916	0.00679999999999999962
2750	B70	916	0.00679999999999999962
2751	DR1	916	0.00679999999999999962
2752	A28	917	0.00679999999999999962
2753	B8	917	0.00679999999999999962
2754	DR6	917	0.00679999999999999962
2755	A19	918	0.00679999999999999962
2756	B16	918	0.00679999999999999962
2757	DR9	918	0.00679999999999999962
2758	A11	919	0.00670000000000000023
2759	B21	919	0.00670000000000000023
2760	DR4	919	0.00670000000000000023
2761	A11	920	0.00670000000000000023
2762	B27	920	0.00670000000000000023
2763	DR7	920	0.00670000000000000023
2764	A28	921	0.00659999999999999996
2765	B17	921	0.00659999999999999996
2766	DR2	921	0.00659999999999999996
2767	A28	922	0.00659999999999999996
2768	B53	922	0.00659999999999999996
2769	DR1	922	0.00659999999999999996
2770	A3	923	0.00659999999999999996
2771	B27	923	0.00659999999999999996
2772	DR9	923	0.00659999999999999996
2773	A19	924	0.00659999999999999996
2774	B17	924	0.00659999999999999996
2775	DR10	924	0.00659999999999999996
2776	A1	925	0.00659999999999999996
2777	B7	925	0.00659999999999999996
2778	DR9	925	0.00659999999999999996
2779	A11	926	0.0064999999999999997
2780	B53	926	0.0064999999999999997
2781	DR6	926	0.0064999999999999997
2782	A1	927	0.0064999999999999997
2783	B14	927	0.0064999999999999997
2784	DR5	927	0.0064999999999999997
2785	A11	928	0.0064999999999999997
2786	B22	928	0.0064999999999999997
2787	DR3	928	0.0064999999999999997
2788	A1	929	0.00640000000000000031
2789	B18	929	0.00640000000000000031
2790	DR7	929	0.00640000000000000031
2791	A28	930	0.00640000000000000031
2792	B17	930	0.00640000000000000031
2793	DR5	930	0.00640000000000000031
2794	A9	931	0.00640000000000000031
2795	B16	931	0.00640000000000000031
2796	DR9	931	0.00640000000000000031
2797	A1	932	0.00630000000000000004
2798	B41	932	0.00630000000000000004
2799	DR10	932	0.00630000000000000004
2800	A11	933	0.00630000000000000004
2801	B8	933	0.00630000000000000004
2802	DR1	933	0.00630000000000000004
2803	A28	934	0.00630000000000000004
2804	B37	934	0.00630000000000000004
2805	DR5	934	0.00630000000000000004
2806	A11	935	0.00630000000000000004
2807	B15	935	0.00630000000000000004
2808	DR3	935	0.00630000000000000004
2809	A19	936	0.00630000000000000004
2810	B22	936	0.00630000000000000004
2811	DR8	936	0.00630000000000000004
2812	A2	937	0.00630000000000000004
2813	B70	937	0.00630000000000000004
2814	DR2	937	0.00630000000000000004
2815	A28	938	0.00619999999999999978
2816	B21	938	0.00619999999999999978
2817	DR6	938	0.00619999999999999978
2818	A1	939	0.00619999999999999978
2819	B41	939	0.00619999999999999978
2820	DR3	939	0.00619999999999999978
2821	A3	940	0.00619999999999999978
2822	B13	940	0.00619999999999999978
2823	DR1	940	0.00619999999999999978
2824	A11	941	0.00619999999999999978
2825	B7	941	0.00619999999999999978
2826	DR9	941	0.00619999999999999978
2827	A2	942	0.00610000000000000039
2828	B37	942	0.00610000000000000039
2829	DR3	942	0.00610000000000000039
2830	A28	943	0.00610000000000000039
2831	B12	943	0.00610000000000000039
2832	DR9	943	0.00610000000000000039
2833	A11	944	0.00610000000000000039
2834	B7	944	0.00610000000000000039
2835	DR8	944	0.00610000000000000039
2836	A10	945	0.00600000000000000012
2837	B40	945	0.00600000000000000012
2838	DR3	945	0.00600000000000000012
2839	A19	946	0.00600000000000000012
2840	B37	946	0.00600000000000000012
2841	DR6	946	0.00600000000000000012
2842	A2	947	0.00600000000000000012
2843	B13	947	0.00600000000000000012
2844	DR10	947	0.00600000000000000012
2845	A10	948	0.00600000000000000012
2846	B37	948	0.00600000000000000012
2847	DR10	948	0.00600000000000000012
2848	A28	949	0.00589999999999999986
2849	B53	949	0.00589999999999999986
2850	DR5	949	0.00589999999999999986
2851	A19	950	0.00589999999999999986
2852	B37	950	0.00589999999999999986
2853	DR4	950	0.00589999999999999986
2854	A9	951	0.00589999999999999986
2855	B7	951	0.00589999999999999986
2856	DR10	951	0.00589999999999999986
2857	A2	952	0.0057999999999999996
2858	B53	952	0.0057999999999999996
2859	DR7	952	0.0057999999999999996
2860	A28	953	0.0057999999999999996
2861	B53	953	0.0057999999999999996
2862	DR2	953	0.0057999999999999996
2863	A3	954	0.0057999999999999996
2864	B53	954	0.0057999999999999996
2865	DR5	954	0.0057999999999999996
2866	A2	955	0.0057999999999999996
2867	B13	955	0.0057999999999999996
2868	DR9	955	0.0057999999999999996
2869	A11	956	0.0057999999999999996
2870	B40	956	0.0057999999999999996
2871	DR8	956	0.0057999999999999996
2872	A3	957	0.00570000000000000021
2873	B21	957	0.00570000000000000021
2874	DR10	957	0.00570000000000000021
2875	A11	958	0.00570000000000000021
2876	B8	958	0.00570000000000000021
2877	DR6	958	0.00570000000000000021
2878	A9	959	0.00570000000000000021
2879	B53	959	0.00570000000000000021
2880	DR5	959	0.00570000000000000021
2881	A10	960	0.00570000000000000021
2882	B16	960	0.00570000000000000021
2883	DR9	960	0.00570000000000000021
2884	A9	961	0.00570000000000000021
2885	B22	961	0.00570000000000000021
2886	DR3	961	0.00570000000000000021
2887	A19	962	0.00570000000000000021
2888	B22	962	0.00570000000000000021
2889	DR3	962	0.00570000000000000021
2890	A11	963	0.00570000000000000021
2891	B40	963	0.00570000000000000021
2892	DR3	963	0.00570000000000000021
2893	A11	964	0.00570000000000000021
2894	B40	964	0.00570000000000000021
2895	DR7	964	0.00570000000000000021
2896	A3	965	0.00559999999999999994
2897	B13	965	0.00559999999999999994
2898	DR4	965	0.00559999999999999994
2899	A2	966	0.00559999999999999994
2900	B8	966	0.00559999999999999994
2901	DR9	966	0.00559999999999999994
2902	A11	967	0.00559999999999999994
2903	B16	967	0.00559999999999999994
2904	DR7	967	0.00559999999999999994
2905	A3	968	0.00559999999999999994
2906	B22	968	0.00559999999999999994
2907	DR3	968	0.00559999999999999994
2908	A2	969	0.00549999999999999968
2909	B47	969	0.00549999999999999968
2910	DR6	969	0.00549999999999999968
2911	A1	970	0.00549999999999999968
2912	B13	970	0.00549999999999999968
2913	DR1	970	0.00549999999999999968
2914	A28	971	0.00549999999999999968
2915	B17	971	0.00549999999999999968
2916	DR1	971	0.00549999999999999968
2917	A9	972	0.00549999999999999968
2918	B70	972	0.00549999999999999968
2919	DR4	972	0.00549999999999999968
2920	A28	973	0.00549999999999999968
2921	B18	973	0.00549999999999999968
2922	DR1	973	0.00549999999999999968
2923	A11	974	0.00549999999999999968
2924	B14	974	0.00549999999999999968
2925	DR4	974	0.00549999999999999968
2926	A10	975	0.00540000000000000029
2927	B18	975	0.00540000000000000029
2928	DR9	975	0.00540000000000000029
2929	A3	976	0.00530000000000000002
2930	B41	976	0.00530000000000000002
2931	DR8	976	0.00530000000000000002
2932	A11	977	0.00530000000000000002
2933	B37	977	0.00530000000000000002
2934	DR5	977	0.00530000000000000002
2935	A9	978	0.00530000000000000002
2936	B21	978	0.00530000000000000002
2937	DR10	978	0.00530000000000000002
2938	A9	979	0.00530000000000000002
2939	B21	979	0.00530000000000000002
2940	DR8	979	0.00530000000000000002
2941	A11	980	0.00519999999999999976
2942	B13	980	0.00519999999999999976
2943	DR1	980	0.00519999999999999976
2944	A2	981	0.00519999999999999976
2945	B21	981	0.00519999999999999976
2946	DR10	981	0.00519999999999999976
2947	A11	982	0.00519999999999999976
2948	B17	982	0.00519999999999999976
2949	DR3	982	0.00519999999999999976
2950	A2	983	0.00519999999999999976
2951	B70	983	0.00519999999999999976
2952	DR3	983	0.00519999999999999976
2953	A10	984	0.00519999999999999976
2954	B15	984	0.00519999999999999976
2955	DR3	984	0.00519999999999999976
2956	A9	985	0.00510000000000000037
2957	B13	985	0.00510000000000000037
2958	DR3	985	0.00510000000000000037
2959	A11	986	0.00510000000000000037
2960	B8	986	0.00510000000000000037
2961	DR4	986	0.00510000000000000037
2962	A1	987	0.00510000000000000037
2963	B13	987	0.00510000000000000037
2964	DR4	987	0.00510000000000000037
2965	A9	988	0.00510000000000000037
2966	B14	988	0.00510000000000000037
2967	DR3	988	0.00510000000000000037
2968	A2	989	0.00510000000000000037
2969	B70	989	0.00510000000000000037
2970	DR8	989	0.00510000000000000037
2971	A10	990	0.0050000000000000001
2972	B8	990	0.0050000000000000001
2973	DR7	990	0.0050000000000000001
2974	A28	991	0.0050000000000000001
2975	B15	991	0.0050000000000000001
2976	DR8	991	0.0050000000000000001
2977	A1	992	0.0050000000000000001
2978	B14	992	0.0050000000000000001
2979	DR4	992	0.0050000000000000001
2980	A11	993	0.0050000000000000001
2981	B22	993	0.0050000000000000001
2982	DR9	993	0.0050000000000000001
2983	A3	994	0.00489999999999999984
2984	B12	994	0.00489999999999999984
2985	DR10	994	0.00489999999999999984
2986	A11	995	0.00489999999999999984
2987	B17	995	0.00489999999999999984
2988	DR5	995	0.00489999999999999984
2989	A10	996	0.00489999999999999984
2990	B21	996	0.00489999999999999984
2991	DR3	996	0.00489999999999999984
2992	A19	997	0.00489999999999999984
2993	B8	997	0.00489999999999999984
2994	DR8	997	0.00489999999999999984
2995	A9	998	0.00479999999999999958
2996	B41	998	0.00479999999999999958
2997	DR3	998	0.00479999999999999958
2998	A2	999	0.00479999999999999958
2999	B47	999	0.00479999999999999958
3000	DR5	999	0.00479999999999999958
3001	A3	1000	0.00479999999999999958
3002	B15	1000	0.00479999999999999958
3003	DR10	1000	0.00479999999999999958
3004	A28	1001	0.00479999999999999958
3005	B22	1001	0.00479999999999999958
3006	DR4	1001	0.00479999999999999958
3007	A11	1002	0.00470000000000000018
3008	B27	1002	0.00470000000000000018
3009	DR3	1002	0.00470000000000000018
3010	A11	1003	0.00459999999999999992
3011	B8	1003	0.00459999999999999992
3012	DR5	1003	0.00459999999999999992
3013	A28	1004	0.00459999999999999992
3014	B40	1004	0.00459999999999999992
3015	DR9	1004	0.00459999999999999992
3016	A28	1005	0.00459999999999999992
3017	B70	1005	0.00459999999999999992
3018	DR6	1005	0.00459999999999999992
3019	A11	1006	0.00459999999999999992
3020	B40	1006	0.00459999999999999992
3021	DR9	1006	0.00459999999999999992
3022	A19	1007	0.00449999999999999966
3023	B41	1007	0.00449999999999999966
3024	DR4	1007	0.00449999999999999966
3025	A28	1008	0.00449999999999999966
3026	B27	1008	0.00449999999999999966
3027	DR3	1008	0.00449999999999999966
3028	A1	1009	0.00449999999999999966
3029	B37	1009	0.00449999999999999966
3030	DR9	1009	0.00449999999999999966
3031	A1	1010	0.00449999999999999966
3032	B22	1010	0.00449999999999999966
3033	DR7	1010	0.00449999999999999966
3034	A36	1011	0.00449999999999999966
3035	B8	1011	0.00449999999999999966
3036	DR3	1011	0.00449999999999999966
3037	A10	1012	0.00449999999999999966
3038	B17	1012	0.00449999999999999966
3039	DR1	1012	0.00449999999999999966
3040	A28	1013	0.00440000000000000027
3041	B21	1013	0.00440000000000000027
3042	DR4	1013	0.00440000000000000027
3043	A11	1014	0.00440000000000000027
3044	B8	1014	0.00440000000000000027
3045	DR2	1014	0.00440000000000000027
3046	A10	1015	0.00440000000000000027
3047	B14	1015	0.00440000000000000027
3048	DR3	1015	0.00440000000000000027
3049	A2	1016	0.00440000000000000027
3050	B22	1016	0.00440000000000000027
3051	DR9	1016	0.00440000000000000027
3052	A11	1017	0.00440000000000000027
3053	B27	1017	0.00440000000000000027
3054	DR8	1017	0.00440000000000000027
3055	A28	1018	0.00440000000000000027
3056	B14	1018	0.00440000000000000027
3057	DR8	1018	0.00440000000000000027
3058	A10	1019	0.00440000000000000027
3059	B13	1019	0.00440000000000000027
3060	DR6	1019	0.00440000000000000027
3061	A10	1020	0.00440000000000000027
3062	B41	1020	0.00440000000000000027
3063	DR8	1020	0.00440000000000000027
3064	A2	1021	0.00440000000000000027
3065	B18	1021	0.00440000000000000027
3066	DR10	1021	0.00440000000000000027
3067	A3	1022	0.0043
3068	B14	1022	0.0043
3069	DR8	1022	0.0043
3070	A3	1023	0.0043
3071	B70	1023	0.0043
3072	DR2	1023	0.0043
3073	A28	1024	0.0043
3074	B8	1024	0.0043
3075	DR2	1024	0.0043
3076	A1	1025	0.0043
3077	B17	1025	0.0043
3078	DR9	1025	0.0043
3079	A28	1026	0.0043
3080	B7	1026	0.0043
3081	DR9	1026	0.0043
3082	A11	1027	0.0043
3083	B16	1027	0.0043
3084	DR8	1027	0.0043
3085	A10	1028	0.00419999999999999974
3086	B37	1028	0.00419999999999999974
3087	DR5	1028	0.00419999999999999974
3088	A9	1029	0.00419999999999999974
3089	B27	1029	0.00419999999999999974
3090	DR10	1029	0.00419999999999999974
3091	A1	1030	0.00419999999999999974
3092	B53	1030	0.00419999999999999974
3093	DR6	1030	0.00419999999999999974
3094	A10	1031	0.00419999999999999974
3095	B13	1031	0.00419999999999999974
3096	DR5	1031	0.00419999999999999974
3097	A28	1032	0.00410000000000000035
3098	B53	1032	0.00410000000000000035
3099	DR7	1032	0.00410000000000000035
3100	A19	1033	0.00410000000000000035
3101	B70	1033	0.00410000000000000035
3102	DR5	1033	0.00410000000000000035
3103	A2	1034	0.00400000000000000008
3104	B53	1034	0.00400000000000000008
3105	DR8	1034	0.00400000000000000008
3106	A11	1035	0.00400000000000000008
3107	B15	1035	0.00400000000000000008
3108	DR9	1035	0.00400000000000000008
3109	A19	1036	0.00400000000000000008
3110	B5	1036	0.00400000000000000008
3111	DR10	1036	0.00400000000000000008
3112	A3	1037	0.00400000000000000008
3113	B41	1037	0.00400000000000000008
3114	DR3	1037	0.00400000000000000008
3115	A10	1038	0.00389999999999999982
3116	B12	1038	0.00389999999999999982
3117	DR10	1038	0.00389999999999999982
3118	A28	1039	0.00389999999999999982
3119	B13	1039	0.00389999999999999982
3120	DR5	1039	0.00389999999999999982
3121	A2	1040	0.00389999999999999982
3122	B73	1040	0.00389999999999999982
3123	DR4	1040	0.00389999999999999982
3124	A11	1041	0.00389999999999999982
3125	B53	1041	0.00389999999999999982
3126	DR1	1041	0.00389999999999999982
3127	A19	1042	0.00389999999999999982
3128	B13	1042	0.00389999999999999982
3129	DR10	1042	0.00389999999999999982
3130	A2	1043	0.00389999999999999982
3131	B41	1043	0.00389999999999999982
3132	DR10	1043	0.00389999999999999982
3133	A19	1044	0.00389999999999999982
3134	B70	1044	0.00389999999999999982
3135	DR7	1044	0.00389999999999999982
3136	A11	1045	0.00379999999999999999
3137	B17	1045	0.00379999999999999999
3138	DR4	1045	0.00379999999999999999
3139	A3	1046	0.00379999999999999999
3140	B53	1046	0.00379999999999999999
3141	DR4	1046	0.00379999999999999999
3142	A1	1047	0.00379999999999999999
3143	B12	1047	0.00379999999999999999
3144	DR9	1047	0.00379999999999999999
3145	A19	1048	0.00379999999999999999
3146	B70	1048	0.00379999999999999999
3147	DR1	1048	0.00379999999999999999
3148	A28	1049	0.00379999999999999999
3149	B70	1049	0.00379999999999999999
3150	DR4	1049	0.00379999999999999999
3151	A19	1050	0.00370000000000000016
3152	B13	1050	0.00370000000000000016
3153	DR9	1050	0.00370000000000000016
3154	A28	1051	0.00370000000000000016
3155	B17	1051	0.00370000000000000016
3156	DR3	1051	0.00370000000000000016
3157	A28	1052	0.00370000000000000016
3158	B8	1052	0.00370000000000000016
3159	DR1	1052	0.00370000000000000016
3160	A10	1053	0.00370000000000000016
3161	B70	1053	0.00370000000000000016
3162	DR6	1053	0.00370000000000000016
3163	A3	1054	0.0035999999999999999
3164	B42	1054	0.0035999999999999999
3165	DR2	1054	0.0035999999999999999
3166	A2	1055	0.0035999999999999999
3167	B47	1055	0.0035999999999999999
3168	DR4	1055	0.0035999999999999999
3169	A10	1056	0.0035999999999999999
3170	B40	1056	0.0035999999999999999
3171	DR9	1056	0.0035999999999999999
3172	A11	1057	0.0035999999999999999
3173	B13	1057	0.0035999999999999999
3174	DR5	1057	0.0035999999999999999
3175	A28	1058	0.0035999999999999999
3176	B53	1058	0.0035999999999999999
3177	DR3	1058	0.0035999999999999999
3178	A11	1059	0.0035999999999999999
3179	B41	1059	0.0035999999999999999
3180	DR6	1059	0.0035999999999999999
3181	A19	1060	0.0035999999999999999
3182	B70	1060	0.0035999999999999999
3183	DR2	1060	0.0035999999999999999
3184	A10	1061	0.0035999999999999999
3185	B53	1061	0.0035999999999999999
3186	DR6	1061	0.0035999999999999999
3187	A28	1062	0.00350000000000000007
3188	B21	1062	0.00350000000000000007
3189	DR2	1062	0.00350000000000000007
3190	A19	1063	0.00350000000000000007
3191	B37	1063	0.00350000000000000007
3192	DR7	1063	0.00350000000000000007
3193	A3	1064	0.00350000000000000007
3194	B41	1064	0.00350000000000000007
3195	DR2	1064	0.00350000000000000007
3196	A11	1065	0.00350000000000000007
3197	B37	1065	0.00350000000000000007
3198	DR4	1065	0.00350000000000000007
3199	A19	1066	0.00350000000000000007
3200	B42	1066	0.00350000000000000007
3201	DR3	1066	0.00350000000000000007
3202	A10	1067	0.00350000000000000007
3203	B41	1067	0.00350000000000000007
3204	DR1	1067	0.00350000000000000007
3205	A11	1068	0.00350000000000000007
3206	B14	1068	0.00350000000000000007
3207	DR2	1068	0.00350000000000000007
3208	A28	1069	0.00339999999999999981
3209	B41	1069	0.00339999999999999981
3210	DR6	1069	0.00339999999999999981
3211	A9	1070	0.00339999999999999981
3212	B53	1070	0.00339999999999999981
3213	DR1	1070	0.00339999999999999981
3214	A2	1071	0.00339999999999999981
3215	B22	1071	0.00339999999999999981
3216	DR10	1071	0.00339999999999999981
3217	A28	1072	0.00339999999999999981
3218	B22	1072	0.00339999999999999981
3219	DR8	1072	0.00339999999999999981
3220	A10	1073	0.00339999999999999981
3221	B13	1073	0.00339999999999999981
3222	DR2	1073	0.00339999999999999981
3223	A10	1074	0.00339999999999999981
3224	B17	1074	0.00339999999999999981
3225	DR4	1074	0.00339999999999999981
3226	A10	1075	0.00339999999999999981
3227	B17	1075	0.00339999999999999981
3228	DR8	1075	0.00339999999999999981
3229	A9	1076	0.00329999999999999998
3230	B13	1076	0.00329999999999999998
3231	DR9	1076	0.00329999999999999998
3232	A3	1077	0.00329999999999999998
3233	B70	1077	0.00329999999999999998
3234	DR5	1077	0.00329999999999999998
3235	A10	1078	0.00329999999999999998
3236	B5	1078	0.00329999999999999998
3237	DR10	1078	0.00329999999999999998
3238	A19	1079	0.00329999999999999998
3239	B37	1079	0.00329999999999999998
3240	DR8	1079	0.00329999999999999998
3241	A1	1080	0.00320000000000000015
3242	B15	1080	0.00320000000000000015
3243	DR10	1080	0.00320000000000000015
3244	A11	1081	0.00320000000000000015
3245	B18	1081	0.00320000000000000015
3246	DR9	1081	0.00320000000000000015
3247	A9	1082	0.00320000000000000015
3248	B8	1082	0.00320000000000000015
3249	DR9	1082	0.00320000000000000015
3250	A28	1083	0.00320000000000000015
3251	B12	1083	0.00320000000000000015
3252	DR10	1083	0.00320000000000000015
3253	A19	1084	0.00320000000000000015
3254	B41	1084	0.00320000000000000015
3255	DR2	1084	0.00320000000000000015
3256	A9	1085	0.00320000000000000015
3257	B35	1085	0.00320000000000000015
3258	DR9	1085	0.00320000000000000015
3259	A28	1086	0.00320000000000000015
3260	B27	1086	0.00320000000000000015
3261	DR9	1086	0.00320000000000000015
3262	A28	1087	0.00320000000000000015
3263	B16	1087	0.00320000000000000015
3264	DR7	1087	0.00320000000000000015
3265	A28	1088	0.00320000000000000015
3266	B7	1088	0.00320000000000000015
3267	DR8	1088	0.00320000000000000015
3268	A9	1089	0.00309999999999999989
3269	B53	1089	0.00309999999999999989
3270	DR4	1089	0.00309999999999999989
3271	A28	1090	0.00309999999999999989
3272	B35	1090	0.00309999999999999989
3273	DR9	1090	0.00309999999999999989
3274	A19	1091	0.00309999999999999989
3275	B53	1091	0.00309999999999999989
3276	DR3	1091	0.00309999999999999989
3277	A28	1092	0.00309999999999999989
3278	B53	1092	0.00309999999999999989
3279	DR8	1092	0.00309999999999999989
3280	A19	1093	0.00309999999999999989
3281	B37	1093	0.00309999999999999989
3282	DR1	1093	0.00309999999999999989
3283	A1	1094	0.00309999999999999989
3284	B27	1094	0.00309999999999999989
3285	DR9	1094	0.00309999999999999989
3286	A3	1095	0.00309999999999999989
3287	B37	1095	0.00309999999999999989
3288	DR3	1095	0.00309999999999999989
3289	A11	1096	0.00309999999999999989
3290	B7	1096	0.00309999999999999989
3291	DR10	1096	0.00309999999999999989
3292	A9	1097	0.00300000000000000006
3293	B8	1097	0.00300000000000000006
3294	DR8	1097	0.00300000000000000006
3295	A9	1098	0.00300000000000000006
3296	B41	1098	0.00300000000000000006
3297	DR2	1098	0.00300000000000000006
3298	A11	1099	0.00300000000000000006
3299	B21	1099	0.00300000000000000006
3300	DR2	1099	0.00300000000000000006
3301	A28	1100	0.00300000000000000006
3302	B8	1100	0.00300000000000000006
3303	DR7	1100	0.00300000000000000006
3304	A2	1101	0.00300000000000000006
3305	B15	1101	0.00300000000000000006
3306	DR10	1101	0.00300000000000000006
3307	A3	1102	0.00300000000000000006
3308	B47	1102	0.00300000000000000006
3309	DR1	1102	0.00300000000000000006
3310	A1	1103	0.00300000000000000006
3311	B16	1103	0.00300000000000000006
3312	DR9	1103	0.00300000000000000006
3313	A11	1104	0.0028999999999999998
3314	B70	1104	0.0028999999999999998
3315	DR5	1104	0.0028999999999999998
3316	A28	1105	0.0028999999999999998
3317	B15	1105	0.0028999999999999998
3318	DR9	1105	0.0028999999999999998
3319	A10	1106	0.0028999999999999998
3320	B14	1106	0.0028999999999999998
3321	DR8	1106	0.0028999999999999998
3322	A19	1107	0.0028999999999999998
3323	B53	1107	0.0028999999999999998
3324	DR7	1107	0.0028999999999999998
3325	A28	1108	0.0028999999999999998
3326	B35	1108	0.0028999999999999998
3327	DR10	1108	0.0028999999999999998
3328	A9	1109	0.0028999999999999998
3329	B14	1109	0.0028999999999999998
3330	DR8	1109	0.0028999999999999998
3331	A11	1110	0.0028999999999999998
3332	B37	1110	0.0028999999999999998
3333	DR2	1110	0.0028999999999999998
3334	A2	1111	0.0028999999999999998
3335	B46	1111	0.0028999999999999998
3336	DR6	1111	0.0028999999999999998
3337	A10	1112	0.0028999999999999998
3338	B13	1112	0.0028999999999999998
3339	DR4	1112	0.0028999999999999998
3340	A1	1113	0.0028999999999999998
3341	B22	1113	0.0028999999999999998
3342	DR8	1113	0.0028999999999999998
3343	A10	1114	0.00279999999999999997
3344	B37	1114	0.00279999999999999997
3345	DR2	1114	0.00279999999999999997
3346	A3	1115	0.00279999999999999997
3347	B70	1115	0.00279999999999999997
3348	DR7	1115	0.00279999999999999997
3349	A19	1116	0.00279999999999999997
3350	B53	1116	0.00279999999999999997
3351	DR4	1116	0.00279999999999999997
3352	A1	1117	0.00279999999999999997
3353	B41	1117	0.00279999999999999997
3354	DR2	1117	0.00279999999999999997
3355	A3	1118	0.00279999999999999997
3356	B47	1118	0.00279999999999999997
3357	DR3	1118	0.00279999999999999997
3358	A3	1119	0.00279999999999999997
3359	B5	1119	0.00279999999999999997
3360	DR10	1119	0.00279999999999999997
3361	A11	1120	0.00279999999999999997
3362	B16	1120	0.00279999999999999997
3363	DR3	1120	0.00279999999999999997
3364	A3	1121	0.00270000000000000014
3365	B70	1121	0.00270000000000000014
3366	DR4	1121	0.00270000000000000014
3367	A11	1122	0.00270000000000000014
3368	B8	1122	0.00270000000000000014
3369	DR8	1122	0.00270000000000000014
3370	A11	1123	0.00270000000000000014
3371	B13	1123	0.00270000000000000014
3372	DR4	1123	0.00270000000000000014
3373	A28	1124	0.00270000000000000014
3374	B8	1124	0.00270000000000000014
3375	DR5	1124	0.00270000000000000014
3376	A11	1125	0.00270000000000000014
3377	B37	1125	0.00270000000000000014
3378	DR1	1125	0.00270000000000000014
3379	A9	1126	0.00259999999999999988
3380	B18	1126	0.00259999999999999988
3381	DR10	1126	0.00259999999999999988
3382	A11	1127	0.00259999999999999988
3383	B17	1127	0.00259999999999999988
3384	DR8	1127	0.00259999999999999988
3385	A19	1128	0.00259999999999999988
3386	B40	1128	0.00259999999999999988
3387	DR10	1128	0.00259999999999999988
3388	A1	1129	0.00259999999999999988
3389	B22	1129	0.00259999999999999988
3390	DR3	1129	0.00259999999999999988
3391	A19	1130	0.00259999999999999988
3392	B70	1130	0.00259999999999999988
3393	DR3	1130	0.00259999999999999988
3394	A19	1131	0.00259999999999999988
3395	B18	1131	0.00259999999999999988
3396	DR9	1131	0.00259999999999999988
3397	A28	1132	0.00259999999999999988
3398	B70	1132	0.00259999999999999988
3399	DR2	1132	0.00259999999999999988
3400	A1	1133	0.00250000000000000005
3401	B18	1133	0.00250000000000000005
3402	DR9	1133	0.00250000000000000005
3403	A28	1134	0.00250000000000000005
3404	B41	1134	0.00250000000000000005
3405	DR5	1134	0.00250000000000000005
3406	A11	1135	0.00250000000000000005
3407	B13	1135	0.00250000000000000005
3408	DR6	1135	0.00250000000000000005
3409	A28	1136	0.00250000000000000005
3410	B8	1136	0.00250000000000000005
3411	DR8	1136	0.00250000000000000005
3412	A9	1137	0.00250000000000000005
3413	B47	1137	0.00250000000000000005
3414	DR6	1137	0.00250000000000000005
3415	A1	1138	0.00250000000000000005
3416	B47	1138	0.00250000000000000005
3417	DR6	1138	0.00250000000000000005
3418	A3	1139	0.00250000000000000005
3419	B53	1139	0.00250000000000000005
3420	DR7	1139	0.00250000000000000005
3421	A9	1140	0.00250000000000000005
3422	B70	1140	0.00250000000000000005
3423	DR7	1140	0.00250000000000000005
3424	A9	1141	0.00250000000000000005
3425	B18	1141	0.00250000000000000005
3426	DR9	1141	0.00250000000000000005
3427	A11	1142	0.00250000000000000005
3428	B5	1142	0.00250000000000000005
3429	DR10	1142	0.00250000000000000005
3430	A3	1143	0.00239999999999999979
3431	B14	1143	0.00239999999999999979
3432	DR9	1143	0.00239999999999999979
3433	A9	1144	0.00239999999999999979
3434	B13	1144	0.00239999999999999979
3435	DR8	1144	0.00239999999999999979
3436	A2	1145	0.00239999999999999979
3437	B35	1145	0.00239999999999999979
3438	DR9	1145	0.00239999999999999979
3439	A1	1146	0.00239999999999999979
3440	B53	1146	0.00239999999999999979
3441	DR5	1146	0.00239999999999999979
3442	A3	1147	0.00239999999999999979
3443	B8	1147	0.00239999999999999979
3444	DR9	1147	0.00239999999999999979
3445	A10	1148	0.00239999999999999979
3446	B13	1148	0.00239999999999999979
3447	DR1	1148	0.00239999999999999979
3448	A28	1149	0.00239999999999999979
3449	B18	1149	0.00239999999999999979
3450	DR8	1149	0.00239999999999999979
3451	A9	1150	0.00239999999999999979
3452	B15	1150	0.00239999999999999979
3453	DR10	1150	0.00239999999999999979
3454	A1	1151	0.00239999999999999979
3455	B40	1151	0.00239999999999999979
3456	DR10	1151	0.00239999999999999979
3457	A11	1152	0.00229999999999999996
3458	B70	1152	0.00229999999999999996
3459	DR6	1152	0.00229999999999999996
3460	A10	1153	0.00229999999999999996
3461	B18	1153	0.00229999999999999996
3462	DR10	1153	0.00229999999999999996
3463	A10	1154	0.00229999999999999996
3464	B7	1154	0.00229999999999999996
3465	DR9	1154	0.00229999999999999996
3466	A2	1155	0.00220000000000000013
3467	B17	1155	0.00220000000000000013
3468	DR9	1155	0.00220000000000000013
3469	A11	1156	0.00220000000000000013
3470	B70	1156	0.00220000000000000013
3471	DR1	1156	0.00220000000000000013
3472	A10	1157	0.00220000000000000013
3473	B12	1157	0.00220000000000000013
3474	DR9	1157	0.00220000000000000013
3475	A19	1158	0.00220000000000000013
3476	B53	1158	0.00220000000000000013
3477	DR2	1158	0.00220000000000000013
3478	A3	1159	0.00220000000000000013
3479	B21	1159	0.00220000000000000013
3480	DR9	1159	0.00220000000000000013
3481	A19	1160	0.00220000000000000013
3482	B47	1160	0.00220000000000000013
3483	DR7	1160	0.00220000000000000013
3484	A3	1161	0.00220000000000000013
3485	B13	1161	0.00220000000000000013
3486	DR8	1161	0.00220000000000000013
3487	A10	1162	0.00220000000000000013
3488	B27	1162	0.00220000000000000013
3489	DR10	1162	0.00220000000000000013
3490	A1	1163	0.00220000000000000013
3491	B53	1163	0.00220000000000000013
3492	DR7	1163	0.00220000000000000013
3493	A3	1164	0.00220000000000000013
3494	B8	1164	0.00220000000000000013
3495	DR8	1164	0.00220000000000000013
3496	A10	1165	0.00220000000000000013
3497	B13	1165	0.00220000000000000013
3498	DR3	1165	0.00220000000000000013
3499	A1	1166	0.00220000000000000013
3500	B21	1166	0.00220000000000000013
3501	DR10	1166	0.00220000000000000013
3502	A1	1167	0.00209999999999999987
3503	B70	1167	0.00209999999999999987
3504	DR6	1167	0.00209999999999999987
3505	A3	1168	0.00209999999999999987
3506	B16	1168	0.00209999999999999987
3507	DR9	1168	0.00209999999999999987
3508	A10	1169	0.00209999999999999987
3509	B8	1169	0.00209999999999999987
3510	DR8	1169	0.00209999999999999987
3511	A2	1170	0.00209999999999999987
3512	B47	1170	0.00209999999999999987
3513	DR2	1170	0.00209999999999999987
3514	A2	1171	0.00209999999999999987
3515	B42	1171	0.00209999999999999987
3516	DR6	1171	0.00209999999999999987
3517	A28	1172	0.00209999999999999987
3518	B37	1172	0.00209999999999999987
3519	DR10	1172	0.00209999999999999987
3520	A19	1173	0.00209999999999999987
3521	B21	1173	0.00209999999999999987
3522	DR10	1173	0.00209999999999999987
3523	A28	1174	0.00209999999999999987
3524	B7	1174	0.00209999999999999987
3525	DR10	1174	0.00209999999999999987
3526	A10	1175	0.00200000000000000004
3527	B37	1175	0.00200000000000000004
3528	DR4	1175	0.00200000000000000004
3529	A10	1176	0.00200000000000000004
3530	B22	1176	0.00200000000000000004
3531	DR10	1176	0.00200000000000000004
3532	A28	1177	0.00200000000000000004
3533	B17	1177	0.00200000000000000004
3534	DR4	1177	0.00200000000000000004
3535	A19	1178	0.00200000000000000004
3536	B35	1178	0.00200000000000000004
3537	DR9	1178	0.00200000000000000004
3538	A3	1179	0.00200000000000000004
3539	B16	1179	0.00200000000000000004
3540	DR10	1179	0.00200000000000000004
3541	A3	1180	0.00200000000000000004
3542	B18	1180	0.00200000000000000004
3543	DR10	1180	0.00200000000000000004
3544	A11	1181	0.00200000000000000004
3545	B53	1181	0.00200000000000000004
3546	DR4	1181	0.00200000000000000004
3547	A2	1182	0.00200000000000000004
3548	B70	1182	0.00200000000000000004
3549	DR9	1182	0.00200000000000000004
3550	A28	1183	0.00200000000000000004
3551	B22	1183	0.00200000000000000004
3552	DR7	1183	0.00200000000000000004
3553	A19	1184	0.00200000000000000004
3554	B14	1184	0.00200000000000000004
3555	DR9	1184	0.00200000000000000004
3556	A11	1185	0.00200000000000000004
3557	B12	1185	0.00200000000000000004
3558	DR10	1185	0.00200000000000000004
3559	A11	1186	0.00200000000000000004
3560	B14	1186	0.00200000000000000004
3561	DR3	1186	0.00200000000000000004
3562	A1	1187	0.0019
3563	B70	1187	0.0019
3564	DR4	1187	0.0019
3565	A10	1188	0.0019
3566	B21	1188	0.0019
3567	DR10	1188	0.0019
3568	A11	1189	0.0019
3569	B8	1189	0.0019
3570	DR9	1189	0.0019
3571	A1	1190	0.0019
3572	B18	1190	0.0019
3573	DR10	1190	0.0019
3574	A10	1191	0.0019
3575	B22	1191	0.0019
3576	DR9	1191	0.0019
3577	A2	1192	0.0019
3578	B14	1192	0.0019
3579	DR8	1192	0.0019
3580	A19	1193	0.0019
3581	B47	1193	0.0019
3582	DR5	1193	0.0019
3583	A11	1194	0.0019
3584	B37	1194	0.0019
3585	DR3	1194	0.0019
3586	A9	1195	0.0019
3587	B40	1195	0.0019
3588	DR10	1195	0.0019
3589	A1	1196	0.0019
3590	B12	1196	0.0019
3591	DR10	1196	0.0019
3592	A19	1197	0.0019
3593	B8	1197	0.0019
3594	DR9	1197	0.0019
3595	A28	1198	0.00179999999999999995
3596	B21	1198	0.00179999999999999995
3597	DR3	1198	0.00179999999999999995
3598	A19	1199	0.00179999999999999995
3599	B41	1199	0.00179999999999999995
3600	DR1	1199	0.00179999999999999995
3601	A11	1200	0.00179999999999999995
3602	B21	1200	0.00179999999999999995
3603	DR1	1200	0.00179999999999999995
3604	A10	1201	0.00179999999999999995
3605	B35	1201	0.00179999999999999995
3606	DR10	1201	0.00179999999999999995
3607	A3	1202	0.00179999999999999995
3608	B13	1202	0.00179999999999999995
3609	DR3	1202	0.00179999999999999995
3610	A9	1203	0.00179999999999999995
3611	B22	1203	0.00179999999999999995
3612	DR9	1203	0.00179999999999999995
3613	A10	1204	0.00179999999999999995
3614	B21	1204	0.00179999999999999995
3615	DR8	1204	0.00179999999999999995
3616	A19	1205	0.00179999999999999995
3617	B42	1205	0.00179999999999999995
3618	DR6	1205	0.00179999999999999995
3619	A9	1206	0.00179999999999999995
3620	B70	1206	0.00179999999999999995
3621	DR3	1206	0.00179999999999999995
3622	A11	1207	0.00169999999999999991
3623	B18	1207	0.00169999999999999991
3624	DR10	1207	0.00169999999999999991
3625	A3	1208	0.00169999999999999991
3626	B13	1208	0.00169999999999999991
3627	DR10	1208	0.00169999999999999991
3628	A3	1209	0.00169999999999999991
3629	B70	1209	0.00169999999999999991
3630	DR3	1209	0.00169999999999999991
3631	A28	1210	0.00169999999999999991
3632	B15	1210	0.00169999999999999991
3633	DR10	1210	0.00169999999999999991
3634	A19	1211	0.00169999999999999991
3635	B53	1211	0.00169999999999999991
3636	DR8	1211	0.00169999999999999991
3637	A11	1212	0.00169999999999999991
3638	B47	1212	0.00169999999999999991
3639	DR7	1212	0.00169999999999999991
3640	A1	1213	0.00169999999999999991
3641	B5	1213	0.00169999999999999991
3642	DR10	1213	0.00169999999999999991
3643	A3	1214	0.00160000000000000008
3644	B40	1214	0.00160000000000000008
3645	DR10	1214	0.00160000000000000008
3646	A10	1215	0.00160000000000000008
3647	B14	1215	0.00160000000000000008
3648	DR10	1215	0.00160000000000000008
3649	A11	1216	0.00160000000000000008
3650	B8	1216	0.00160000000000000008
3651	DR7	1216	0.00160000000000000008
3652	A1	1217	0.00160000000000000008
3653	B13	1217	0.00160000000000000008
3654	DR9	1217	0.00160000000000000008
3655	A9	1218	0.00160000000000000008
3656	B47	1218	0.00160000000000000008
3657	DR7	1218	0.00160000000000000008
3658	A28	1219	0.00160000000000000008
3659	B37	1219	0.00160000000000000008
3660	DR4	1219	0.00160000000000000008
3661	A11	1220	0.00160000000000000008
3662	B41	1220	0.00160000000000000008
3663	DR5	1220	0.00160000000000000008
3664	A2	1221	0.00160000000000000008
3665	B8	1221	0.00160000000000000008
3666	DR10	1221	0.00160000000000000008
3667	A28	1222	0.00160000000000000008
3668	B16	1222	0.00160000000000000008
3669	DR3	1222	0.00160000000000000008
3670	A9	1223	0.00160000000000000008
3671	B70	1223	0.00160000000000000008
3672	DR2	1223	0.00160000000000000008
3673	A2	1224	0.00160000000000000008
3674	B48	1224	0.00160000000000000008
3675	DR4	1224	0.00160000000000000008
3676	A28	1225	0.00160000000000000008
3677	B70	1225	0.00160000000000000008
3678	DR5	1225	0.00160000000000000008
3679	A9	1226	0.00160000000000000008
3680	B21	1226	0.00160000000000000008
3681	DR9	1226	0.00160000000000000008
3682	A1	1227	0.00150000000000000003
3683	B70	1227	0.00150000000000000003
3684	DR1	1227	0.00150000000000000003
3685	A9	1228	0.00150000000000000003
3686	B17	1228	0.00150000000000000003
3687	DR9	1228	0.00150000000000000003
3688	A2	1229	0.00150000000000000003
3689	B47	1229	0.00150000000000000003
3690	DR1	1229	0.00150000000000000003
3691	A9	1230	0.00150000000000000003
3692	B53	1230	0.00150000000000000003
3693	DR2	1230	0.00150000000000000003
3694	A9	1231	0.00150000000000000003
3695	B53	1231	0.00150000000000000003
3696	DR8	1231	0.00150000000000000003
3697	A9	1232	0.00150000000000000003
3698	B37	1232	0.00150000000000000003
3699	DR3	1232	0.00150000000000000003
3700	A28	1233	0.00150000000000000003
3701	B8	1233	0.00150000000000000003
3702	DR4	1233	0.00150000000000000003
3703	A3	1234	0.00150000000000000003
3704	B17	1234	0.00150000000000000003
3705	DR10	1234	0.00150000000000000003
3706	A11	1235	0.00150000000000000003
3707	B41	1235	0.00150000000000000003
3708	DR7	1235	0.00150000000000000003
3709	A11	1236	0.00150000000000000003
3710	B41	1236	0.00150000000000000003
3711	DR8	1236	0.00150000000000000003
3712	A1	1237	0.00150000000000000003
3713	B35	1237	0.00150000000000000003
3714	DR9	1237	0.00150000000000000003
3715	A11	1238	0.00150000000000000003
3716	B53	1238	0.00150000000000000003
3717	DR2	1238	0.00150000000000000003
3718	A2	1239	0.00150000000000000003
3719	B48	1239	0.00150000000000000003
3720	DR2	1239	0.00150000000000000003
3721	A19	1240	0.00150000000000000003
3722	B70	1240	0.00150000000000000003
3723	DR4	1240	0.00150000000000000003
3724	A19	1241	0.00150000000000000003
3725	B16	1241	0.00150000000000000003
3726	DR10	1241	0.00150000000000000003
3727	A2	1242	0.00150000000000000003
3728	B21	1242	0.00150000000000000003
3729	DR9	1242	0.00150000000000000003
3730	A11	1243	0.00150000000000000003
3731	B16	1243	0.00150000000000000003
3732	DR9	1243	0.00150000000000000003
3733	A1	1244	0.00139999999999999999
3734	B70	1244	0.00139999999999999999
3735	DR5	1244	0.00139999999999999999
3736	A10	1245	0.00139999999999999999
3737	B37	1245	0.00139999999999999999
3738	DR7	1245	0.00139999999999999999
3739	A28	1246	0.00139999999999999999
3740	B13	1246	0.00139999999999999999
3741	DR4	1246	0.00139999999999999999
3742	A19	1247	0.00139999999999999999
3743	B41	1247	0.00139999999999999999
3744	DR8	1247	0.00139999999999999999
3745	A28	1248	0.00139999999999999999
3746	B41	1248	0.00139999999999999999
3747	DR4	1248	0.00139999999999999999
3748	A10	1249	0.00139999999999999999
3749	B41	1249	0.00139999999999999999
3750	DR10	1249	0.00139999999999999999
3751	A11	1250	0.00139999999999999999
3752	B41	1250	0.00139999999999999999
3753	DR4	1250	0.00139999999999999999
3754	A1	1251	0.00139999999999999999
3755	B47	1251	0.00139999999999999999
3756	DR5	1251	0.00139999999999999999
3757	A1	1252	0.00139999999999999999
3758	B47	1252	0.00139999999999999999
3759	DR9	1252	0.00139999999999999999
3760	A19	1253	0.00139999999999999999
3761	B15	1253	0.00139999999999999999
3762	DR10	1253	0.00139999999999999999
3763	A2	1254	0.00139999999999999999
3764	B48	1254	0.00139999999999999999
3765	DR9	1254	0.00139999999999999999
3766	A19	1255	0.00139999999999999999
3767	B70	1255	0.00139999999999999999
3768	DR8	1255	0.00139999999999999999
3769	A28	1256	0.00139999999999999999
3770	B18	1256	0.00139999999999999999
3771	DR9	1256	0.00139999999999999999
3772	A11	1257	0.00139999999999999999
3773	B14	1257	0.00139999999999999999
3774	DR5	1257	0.00139999999999999999
3775	A9	1258	0.00139999999999999999
3776	B14	1258	0.00139999999999999999
3777	DR10	1258	0.00139999999999999999
3778	A28	1259	0.00129999999999999994
3779	B13	1259	0.00129999999999999994
3780	DR8	1259	0.00129999999999999994
3781	A19	1260	0.00129999999999999994
3782	B47	1260	0.00129999999999999994
3783	DR4	1260	0.00129999999999999994
3784	A10	1261	0.00129999999999999994
3785	B70	1261	0.00129999999999999994
3786	DR1	1261	0.00129999999999999994
3787	A10	1262	0.00129999999999999994
3788	B70	1262	0.00129999999999999994
3789	DR4	1262	0.00129999999999999994
3790	A1	1263	0.00129999999999999994
3791	B53	1263	0.00129999999999999994
3792	DR1	1263	0.00129999999999999994
3793	A1	1264	0.00129999999999999994
3794	B53	1264	0.00129999999999999994
3795	DR4	1264	0.00129999999999999994
3796	A28	1265	0.00129999999999999994
3797	B5	1265	0.00129999999999999994
3798	DR10	1265	0.00129999999999999994
3799	A19	1266	0.00129999999999999994
3800	B42	1266	0.00129999999999999994
3801	DR5	1266	0.00129999999999999994
3802	A10	1267	0.00129999999999999994
3803	B53	1267	0.00129999999999999994
3804	DR1	1267	0.00129999999999999994
3805	A10	1268	0.00129999999999999994
3806	B53	1268	0.00129999999999999994
3807	DR2	1268	0.00129999999999999994
3808	A10	1269	0.00119999999999999989
3809	B37	1269	0.00119999999999999989
3810	DR1	1269	0.00119999999999999989
3811	A9	1270	0.00119999999999999989
3812	B41	1270	0.00119999999999999989
3813	DR1	1270	0.00119999999999999989
3814	A1	1271	0.00119999999999999989
3815	B16	1271	0.00119999999999999989
3816	DR10	1271	0.00119999999999999989
3817	A1	1272	0.00119999999999999989
3818	B21	1272	0.00119999999999999989
3819	DR8	1272	0.00119999999999999989
3820	A1	1273	0.00119999999999999989
3821	B13	1273	0.00119999999999999989
3822	DR3	1273	0.00119999999999999989
3823	A19	1274	0.00119999999999999989
3824	B17	1274	0.00119999999999999989
3825	DR9	1274	0.00119999999999999989
3826	A9	1275	0.00119999999999999989
3827	B47	1275	0.00119999999999999989
3828	DR4	1275	0.00119999999999999989
3829	A28	1276	0.00119999999999999989
3830	B37	1276	0.00119999999999999989
3831	DR6	1276	0.00119999999999999989
3832	A1	1277	0.00119999999999999989
3833	B47	1277	0.00119999999999999989
3834	DR7	1277	0.00119999999999999989
3835	A2	1278	0.00119999999999999989
3836	B46	1278	0.00119999999999999989
3837	DR4	1278	0.00119999999999999989
3838	A28	1279	0.00119999999999999989
3839	B16	1279	0.00119999999999999989
3840	DR9	1279	0.00119999999999999989
3841	A9	1280	0.00119999999999999989
3842	B70	1280	0.00119999999999999989
3843	DR9	1280	0.00119999999999999989
3844	A1	1281	0.00119999999999999989
3845	B22	1281	0.00119999999999999989
3846	DR9	1281	0.00119999999999999989
3847	A9	1282	0.00119999999999999989
3848	B22	1282	0.00119999999999999989
3849	DR10	1282	0.00119999999999999989
3850	A19	1283	0.00119999999999999989
3851	B18	1283	0.00119999999999999989
3852	DR10	1283	0.00119999999999999989
3853	A9	1284	0.00119999999999999989
3854	B48	1284	0.00119999999999999989
3855	DR4	1284	0.00119999999999999989
3856	A10	1285	0.00119999999999999989
3857	B27	1285	0.00119999999999999989
3858	DR9	1285	0.00119999999999999989
3859	A28	1286	0.00110000000000000007
3860	B21	1286	0.00110000000000000007
3861	DR1	1286	0.00110000000000000007
3862	A28	1287	0.00110000000000000007
3863	B13	1287	0.00110000000000000007
3864	DR1	1287	0.00110000000000000007
3865	A28	1288	0.00110000000000000007
3866	B13	1288	0.00110000000000000007
3867	DR2	1288	0.00110000000000000007
3868	A3	1289	0.00110000000000000007
3869	B42	1289	0.00110000000000000007
3870	DR7	1289	0.00110000000000000007
3871	A10	1290	0.00110000000000000007
3872	B13	1290	0.00110000000000000007
3873	DR10	1290	0.00110000000000000007
3874	A3	1291	0.00110000000000000007
3875	B22	1291	0.00110000000000000007
3876	DR10	1291	0.00110000000000000007
3877	A28	1292	0.00110000000000000007
3878	B41	1292	0.00110000000000000007
3879	DR3	1292	0.00110000000000000007
3880	A3	1293	0.00110000000000000007
3881	B41	1293	0.00110000000000000007
3882	DR10	1293	0.00110000000000000007
3883	A1	1294	0.00110000000000000007
3884	B27	1294	0.00110000000000000007
3885	DR10	1294	0.00110000000000000007
3886	A9	1295	0.00110000000000000007
3887	B53	1295	0.00110000000000000007
3888	DR3	1295	0.00110000000000000007
3889	A9	1296	0.00110000000000000007
3890	B37	1296	0.00110000000000000007
3891	DR9	1296	0.00110000000000000007
3892	A1	1297	0.00110000000000000007
3893	B41	1297	0.00110000000000000007
3894	DR1	1297	0.00110000000000000007
3895	A19	1298	0.00110000000000000007
3896	B47	1298	0.00110000000000000007
3897	DR6	1298	0.00110000000000000007
3898	A3	1299	0.00110000000000000007
3899	B53	1299	0.00110000000000000007
3900	DR2	1299	0.00110000000000000007
3901	A2	1300	0.00110000000000000007
3902	B48	1300	0.00110000000000000007
3903	DR8	1300	0.00110000000000000007
3904	A1	1301	0.00110000000000000007
3905	B22	1301	0.00110000000000000007
3906	DR10	1301	0.00110000000000000007
3907	A19	1302	0.00110000000000000007
3908	B27	1302	0.00110000000000000007
3909	DR10	1302	0.00110000000000000007
3910	A10	1303	0.00100000000000000002
3911	B37	1303	0.00100000000000000002
3912	DR3	1303	0.00100000000000000002
3913	A11	1304	0.00100000000000000002
3914	B70	1304	0.00100000000000000002
3915	DR4	1304	0.00100000000000000002
3916	A2	1305	0.00100000000000000002
3917	B53	1305	0.00100000000000000002
3918	DR9	1305	0.00100000000000000002
3919	A11	1306	0.00100000000000000002
3920	B13	1306	0.00100000000000000002
3921	DR9	1306	0.00100000000000000002
3922	A19	1307	0.00100000000000000002
3923	B37	1307	0.00100000000000000002
3924	DR3	1307	0.00100000000000000002
3925	A28	1308	0.00100000000000000002
3926	B37	1308	0.00100000000000000002
3927	DR2	1308	0.00100000000000000002
3928	A3	1309	0.00100000000000000002
3929	B53	1309	0.00100000000000000002
3930	DR10	1309	0.00100000000000000002
3931	A10	1310	0.00100000000000000002
3932	B70	1310	0.00100000000000000002
3933	DR7	1310	0.00100000000000000002
3934	A1	1311	0.00100000000000000002
3935	B53	1311	0.00100000000000000002
3936	DR2	1311	0.00100000000000000002
3937	A11	1312	0.00100000000000000002
3938	B53	1312	0.00100000000000000002
3939	DR5	1312	0.00100000000000000002
3940	A28	1313	0.00100000000000000002
3941	B22	1313	0.00100000000000000002
3942	DR1	1313	0.00100000000000000002
3943	A11	1314	0.00100000000000000002
3944	B13	1314	0.00100000000000000002
3945	DR10	1314	0.00100000000000000002
3946	A11	1315	0.00100000000000000002
3947	B22	1315	0.00100000000000000002
3948	DR10	1315	0.00100000000000000002
3949	A3	1316	0.00100000000000000002
3950	B37	1316	0.00100000000000000002
3951	DR9	1316	0.00100000000000000002
3952	A1	1317	0.00100000000000000002
3953	B14	1317	0.00100000000000000002
3954	DR9	1317	0.00100000000000000002
3955	A10	1318	0.00100000000000000002
3956	B15	1318	0.00100000000000000002
3957	DR9	1318	0.00100000000000000002
3958	A28	1319	0.00100000000000000002
3959	B70	1319	0.00100000000000000002
3960	DR8	1319	0.00100000000000000002
3961	A11	1320	0.00100000000000000002
3962	B15	1320	0.00100000000000000002
3963	DR10	1320	0.00100000000000000002
3964	A9	1321	0.00100000000000000002
3965	B48	1321	0.00100000000000000002
3966	DR5	1321	0.00100000000000000002
3967	A10	1322	0.00100000000000000002
3968	B35	1322	0.00100000000000000002
3969	DR9	1322	0.00100000000000000002
3970	A1	1323	0.000899999999999999975
3971	B70	1323	0.000899999999999999975
3972	DR7	1323	0.000899999999999999975
3973	A19	1324	0.000899999999999999975
3974	B21	1324	0.000899999999999999975
3975	DR9	1324	0.000899999999999999975
3976	A10	1325	0.000899999999999999975
3977	B47	1325	0.000899999999999999975
3978	DR5	1325	0.000899999999999999975
3979	A28	1326	0.000899999999999999975
3980	B47	1326	0.000899999999999999975
3981	DR7	1326	0.000899999999999999975
3982	A2	1327	0.000899999999999999975
3983	B42	1327	0.000899999999999999975
3984	DR2	1327	0.000899999999999999975
3985	A11	1328	0.000899999999999999975
3986	B37	1328	0.000899999999999999975
3987	DR7	1328	0.000899999999999999975
3988	A11	1329	0.000899999999999999975
3989	B37	1329	0.000899999999999999975
3990	DR8	1329	0.000899999999999999975
3991	A1	1330	0.000899999999999999975
3992	B73	1330	0.000899999999999999975
3993	DR4	1330	0.000899999999999999975
3994	A1	1331	0.000899999999999999975
3995	B73	1331	0.000899999999999999975
3996	DR6	1331	0.000899999999999999975
3997	A10	1332	0.000899999999999999975
3998	B48	1332	0.000899999999999999975
3999	DR5	1332	0.000899999999999999975
4000	A2	1333	0.000899999999999999975
4001	B46	1333	0.000899999999999999975
4002	DR1	1333	0.000899999999999999975
4003	A19	1334	0.000899999999999999975
4004	B42	1334	0.000899999999999999975
4005	DR7	1334	0.000899999999999999975
4006	A9	1335	0.000899999999999999975
4007	B70	1335	0.000899999999999999975
4008	DR1	1335	0.000899999999999999975
4009	A2	1336	0.000899999999999999975
4010	B48	1336	0.000899999999999999975
4011	DR5	1336	0.000899999999999999975
4012	A2	1337	0.000899999999999999975
4013	B48	1337	0.000899999999999999975
4014	DR6	1337	0.000899999999999999975
4015	A28	1338	0.000899999999999999975
4016	B70	1338	0.000899999999999999975
4017	DR3	1338	0.000899999999999999975
4018	A11	1339	0.000800000000000000038
4019	B17	1339	0.000800000000000000038
4020	DR10	1339	0.000800000000000000038
4021	A2	1340	0.000800000000000000038
4022	B47	1340	0.000800000000000000038
4023	DR10	1340	0.000800000000000000038
4024	A10	1341	0.000800000000000000038
4025	B47	1341	0.000800000000000000038
4026	DR7	1341	0.000800000000000000038
4027	A10	1342	0.000800000000000000038
4028	B40	1342	0.000800000000000000038
4029	DR10	1342	0.000800000000000000038
4030	A3	1343	0.000800000000000000038
4031	B14	1343	0.000800000000000000038
4032	DR10	1343	0.000800000000000000038
4033	A10	1344	0.000800000000000000038
4034	B15	1344	0.000800000000000000038
4035	DR10	1344	0.000800000000000000038
4036	A9	1345	0.000800000000000000038
4037	B53	1345	0.000800000000000000038
4038	DR9	1345	0.000800000000000000038
4039	A1	1346	0.000800000000000000038
4040	B41	1346	0.000800000000000000038
4041	DR9	1346	0.000800000000000000038
4042	A9	1347	0.000800000000000000038
4043	B47	1347	0.000800000000000000038
4044	DR2	1347	0.000800000000000000038
4045	A11	1348	0.000800000000000000038
4046	B41	1348	0.000800000000000000038
4047	DR3	1348	0.000800000000000000038
4048	A2	1349	0.000800000000000000038
4049	B42	1349	0.000800000000000000038
4050	DR1	1349	0.000800000000000000038
4051	A28	1350	0.000800000000000000038
4052	B22	1350	0.000800000000000000038
4053	DR3	1350	0.000800000000000000038
4054	A11	1351	0.000800000000000000038
4055	B37	1351	0.000800000000000000038
4056	DR9	1351	0.000800000000000000038
4057	A3	1352	0.000800000000000000038
4058	B53	1352	0.000800000000000000038
4059	DR3	1352	0.000800000000000000038
4060	A19	1353	0.000800000000000000038
4061	B42	1353	0.000800000000000000038
4062	DR8	1353	0.000800000000000000038
4063	A11	1354	0.000800000000000000038
4064	B40	1354	0.000800000000000000038
4065	DR10	1354	0.000800000000000000038
4066	A36	1355	0.000800000000000000038
4067	B8	1355	0.000800000000000000038
4068	DR2	1355	0.000800000000000000038
4069	A1	1356	0.000699999999999999993
4070	B70	1356	0.000699999999999999993
4071	DR2	1356	0.000699999999999999993
4072	A19	1357	0.000699999999999999993
4073	B48	1357	0.000699999999999999993
4074	DR5	1357	0.000699999999999999993
4075	A3	1358	0.000699999999999999993
4076	B42	1358	0.000699999999999999993
4077	DR3	1358	0.000699999999999999993
4078	A10	1359	0.000699999999999999993
4079	B47	1359	0.000699999999999999993
4080	DR4	1359	0.000699999999999999993
4081	A3	1360	0.000699999999999999993
4082	B70	1360	0.000699999999999999993
4083	DR8	1360	0.000699999999999999993
4084	A2	1361	0.000699999999999999993
4085	B73	1361	0.000699999999999999993
4086	DR6	1361	0.000699999999999999993
4087	A11	1362	0.000699999999999999993
4088	B21	1362	0.000699999999999999993
4089	DR8	1362	0.000699999999999999993
4090	A28	1363	0.000699999999999999993
4091	B16	1363	0.000699999999999999993
4092	DR10	1363	0.000699999999999999993
4093	A1	1364	0.000699999999999999993
4094	B41	1364	0.000699999999999999993
4095	DR8	1364	0.000699999999999999993
4096	A2	1365	0.000699999999999999993
4097	B14	1365	0.000699999999999999993
4098	DR9	1365	0.000699999999999999993
4099	A11	1366	0.000699999999999999993
4100	B41	1366	0.000699999999999999993
4101	DR2	1366	0.000699999999999999993
4102	A80	1367	0.000699999999999999993
4103	B12	1367	0.000699999999999999993
4104	DR6	1367	0.000699999999999999993
4105	A3	1368	0.000699999999999999993
4106	B27	1368	0.000699999999999999993
4107	DR10	1368	0.000699999999999999993
4108	A3	1369	0.000699999999999999993
4109	B41	1369	0.000699999999999999993
4110	DR1	1369	0.000699999999999999993
4111	A9	1370	0.000699999999999999993
4112	B14	1370	0.000699999999999999993
4113	DR9	1370	0.000699999999999999993
4114	A36	1371	0.000699999999999999993
4115	B15	1371	0.000699999999999999993
4116	DR4	1371	0.000699999999999999993
4117	A3	1372	0.000699999999999999993
4118	B47	1372	0.000699999999999999993
4119	DR10	1372	0.000699999999999999993
4120	A1	1373	0.000699999999999999993
4121	B73	1373	0.000699999999999999993
4122	DR5	1373	0.000699999999999999993
4123	A1	1374	0.000699999999999999993
4124	B47	1374	0.000699999999999999993
4125	DR4	1374	0.000699999999999999993
4126	A10	1375	0.000699999999999999993
4127	B13	1375	0.000699999999999999993
4128	DR8	1375	0.000699999999999999993
4129	A36	1376	0.000699999999999999993
4130	B8	1376	0.000699999999999999993
4131	DR6	1376	0.000699999999999999993
4132	A2	1377	0.000699999999999999993
4133	B53	1377	0.000699999999999999993
4134	DR10	1377	0.000699999999999999993
4135	A9	1378	0.000699999999999999993
4136	B41	1378	0.000699999999999999993
4137	DR10	1378	0.000699999999999999993
4138	A11	1379	0.000699999999999999993
4139	B16	1379	0.000699999999999999993
4140	DR10	1379	0.000699999999999999993
4141	A10	1380	0.000699999999999999993
4142	B53	1380	0.000699999999999999993
4143	DR5	1380	0.000699999999999999993
4144	A19	1381	0.000599999999999999947
4145	B48	1381	0.000599999999999999947
4146	DR1	1381	0.000599999999999999947
4147	A1	1382	0.000599999999999999947
4148	B70	1382	0.000599999999999999947
4149	DR3	1382	0.000599999999999999947
4150	A19	1383	0.000599999999999999947
4151	B48	1383	0.000599999999999999947
4152	DR8	1383	0.000599999999999999947
4153	A10	1384	0.000599999999999999947
4154	B37	1384	0.000599999999999999947
4155	DR9	1384	0.000599999999999999947
4156	A11	1385	0.000599999999999999947
4157	B70	1385	0.000599999999999999947
4158	DR7	1385	0.000599999999999999947
4159	A28	1386	0.000599999999999999947
4160	B13	1386	0.000599999999999999947
4161	DR3	1386	0.000599999999999999947
4162	A28	1387	0.000599999999999999947
4163	B41	1387	0.000599999999999999947
4164	DR7	1387	0.000599999999999999947
4165	A1	1388	0.000599999999999999947
4166	B13	1388	0.000599999999999999947
4167	DR8	1388	0.000599999999999999947
4168	A10	1389	0.000599999999999999947
4169	B42	1389	0.000599999999999999947
4170	DR2	1389	0.000599999999999999947
4171	A28	1390	0.000599999999999999947
4172	B37	1390	0.000599999999999999947
4173	DR7	1390	0.000599999999999999947
4174	A19	1391	0.000599999999999999947
4175	B73	1391	0.000599999999999999947
4176	DR6	1391	0.000599999999999999947
4177	A3	1392	0.000599999999999999947
4178	B13	1392	0.000599999999999999947
4179	DR9	1392	0.000599999999999999947
4180	A28	1393	0.000599999999999999947
4181	B18	1393	0.000599999999999999947
4182	DR10	1393	0.000599999999999999947
4183	A28	1394	0.000599999999999999947
4184	B73	1394	0.000599999999999999947
4185	DR6	1394	0.000599999999999999947
4186	A2	1395	0.000599999999999999947
4187	B42	1395	0.000599999999999999947
4188	DR8	1395	0.000599999999999999947
4189	A28	1396	0.000599999999999999947
4190	B22	1396	0.000599999999999999947
4191	DR9	1396	0.000599999999999999947
4192	A19	1397	0.000599999999999999947
4193	B22	1397	0.000599999999999999947
4194	DR10	1397	0.000599999999999999947
4195	A10	1398	0.000599999999999999947
4196	B48	1398	0.000599999999999999947
4197	DR4	1398	0.000599999999999999947
4198	A2	1399	0.000599999999999999947
4199	B46	1399	0.000599999999999999947
4200	DR2	1399	0.000599999999999999947
4201	A19	1400	0.000599999999999999947
4202	B42	1400	0.000599999999999999947
4203	DR1	1400	0.000599999999999999947
4204	A19	1401	0.000599999999999999947
4205	B42	1401	0.000599999999999999947
4206	DR2	1401	0.000599999999999999947
4207	A2	1402	0.000599999999999999947
4208	B48	1402	0.000599999999999999947
4209	DR7	1402	0.000599999999999999947
4210	A19	1403	0.000599999999999999947
4211	B70	1403	0.000599999999999999947
4212	DR9	1403	0.000599999999999999947
4213	A3	1404	0.000599999999999999947
4214	B47	1404	0.000599999999999999947
4215	DR8	1404	0.000599999999999999947
4216	A1	1405	0.000599999999999999947
4217	B13	1405	0.000599999999999999947
4218	DR10	1405	0.000599999999999999947
4219	A2	1406	0.000599999999999999947
4220	B41	1406	0.000599999999999999947
4221	DR9	1406	0.000599999999999999947
4222	A10	1407	0.000599999999999999947
4223	B53	1407	0.000599999999999999947
4224	DR7	1407	0.000599999999999999947
4225	A9	1408	0.00050000000000000001
4226	B17	1408	0.00050000000000000001
4227	DR10	1408	0.00050000000000000001
4228	A10	1409	0.00050000000000000001
4229	B47	1409	0.00050000000000000001
4230	DR2	1409	0.00050000000000000001
4231	A10	1410	0.00050000000000000001
4232	B47	1410	0.00050000000000000001
4233	DR6	1410	0.00050000000000000001
4234	A2	1411	0.00050000000000000001
4235	B53	1411	0.00050000000000000001
4236	DR3	1411	0.00050000000000000001
4237	A10	1412	0.00050000000000000001
4238	B8	1412	0.00050000000000000001
4239	DR9	1412	0.00050000000000000001
4240	A28	1413	0.00050000000000000001
4241	B41	1413	0.00050000000000000001
4242	DR8	1413	0.00050000000000000001
4243	A2	1414	0.00050000000000000001
4244	B73	1414	0.00050000000000000001
4245	DR5	1414	0.00050000000000000001
4246	A9	1415	0.00050000000000000001
4247	B53	1415	0.00050000000000000001
4248	DR7	1415	0.00050000000000000001
4249	A9	1416	0.00050000000000000001
4250	B73	1416	0.00050000000000000001
4251	DR6	1416	0.00050000000000000001
4252	A28	1417	0.00050000000000000001
4253	B37	1417	0.00050000000000000001
4254	DR1	1417	0.00050000000000000001
4255	A28	1418	0.00050000000000000001
4256	B37	1418	0.00050000000000000001
4257	DR8	1418	0.00050000000000000001
4258	A28	1419	0.00050000000000000001
4259	B53	1419	0.00050000000000000001
4260	DR10	1419	0.00050000000000000001
4261	A2	1420	0.00050000000000000001
4262	B42	1420	0.00050000000000000001
4263	DR5	1420	0.00050000000000000001
4264	A11	1421	0.00050000000000000001
4265	B53	1421	0.00050000000000000001
4266	DR7	1421	0.00050000000000000001
4267	A19	1422	0.00050000000000000001
4268	B22	1422	0.00050000000000000001
4269	DR9	1422	0.00050000000000000001
4270	A10	1423	0.00050000000000000001
4271	B48	1423	0.00050000000000000001
4272	DR2	1423	0.00050000000000000001
4273	A9	1424	0.00050000000000000001
4274	B42	1424	0.00050000000000000001
4275	DR4	1424	0.00050000000000000001
4276	A2	1425	0.00050000000000000001
4277	B46	1425	0.00050000000000000001
4278	DR8	1425	0.00050000000000000001
4279	A10	1426	0.00050000000000000001
4280	B21	1426	0.00050000000000000001
4281	DR9	1426	0.00050000000000000001
4282	A11	1427	0.00050000000000000001
4283	B47	1427	0.00050000000000000001
4284	DR4	1427	0.00050000000000000001
4285	A11	1428	0.00050000000000000001
4286	B21	1428	0.00050000000000000001
4287	DR10	1428	0.00050000000000000001
4288	A19	1429	0.00050000000000000001
4289	B8	1429	0.00050000000000000001
4290	DR10	1429	0.00050000000000000001
4291	A1	1430	0.00050000000000000001
4292	B14	1430	0.00050000000000000001
4293	DR8	1430	0.00050000000000000001
4294	A10	1431	0.00050000000000000001
4295	B41	1431	0.00050000000000000001
4296	DR9	1431	0.00050000000000000001
4297	A28	1432	0.00050000000000000001
4298	B70	1432	0.00050000000000000001
4299	DR1	1432	0.00050000000000000001
4300	A3	1433	0.00050000000000000001
4301	B73	1433	0.00050000000000000001
4302	DR4	1433	0.00050000000000000001
4303	A1	1434	0.00050000000000000001
4304	B42	1434	0.00050000000000000001
4305	DR5	1434	0.00050000000000000001
4306	A19	1435	0.00050000000000000001
4307	B70	1435	0.00050000000000000001
4308	DR10	1435	0.00050000000000000001
4309	A11	1436	0.00050000000000000001
4310	B42	1436	0.00050000000000000001
4311	DR1	1436	0.00050000000000000001
4312	A10	1437	0.000400000000000000019
4313	B37	1437	0.000400000000000000019
4314	DR8	1437	0.000400000000000000019
4315	A11	1438	0.000400000000000000019
4316	B70	1438	0.000400000000000000019
4317	DR3	1438	0.000400000000000000019
4318	A11	1439	0.000400000000000000019
4319	B70	1439	0.000400000000000000019
4320	DR8	1439	0.000400000000000000019
4321	A28	1440	0.000400000000000000019
4322	B13	1440	0.000400000000000000019
4323	DR6	1440	0.000400000000000000019
4324	A3	1441	0.000400000000000000019
4325	B42	1441	0.000400000000000000019
4326	DR4	1441	0.000400000000000000019
4327	A1	1442	0.000400000000000000019
4328	B70	1442	0.000400000000000000019
4329	DR10	1442	0.000400000000000000019
4330	A1	1443	0.000400000000000000019
4331	B53	1443	0.000400000000000000019
4332	DR10	1443	0.000400000000000000019
4333	A11	1444	0.000400000000000000019
4334	B48	1444	0.000400000000000000019
4335	DR7	1444	0.000400000000000000019
4336	A28	1445	0.000400000000000000019
4337	B41	1445	0.000400000000000000019
4338	DR10	1445	0.000400000000000000019
4339	A10	1446	0.000400000000000000019
4340	B7	1446	0.000400000000000000019
4341	DR10	1446	0.000400000000000000019
4342	A10	1447	0.000400000000000000019
4343	B42	1447	0.000400000000000000019
4344	DR3	1447	0.000400000000000000019
4345	A10	1448	0.000400000000000000019
4346	B42	1448	0.000400000000000000019
4347	DR6	1448	0.000400000000000000019
4348	A28	1449	0.000400000000000000019
4349	B37	1449	0.000400000000000000019
4350	DR3	1449	0.000400000000000000019
4351	A10	1450	0.000400000000000000019
4352	B70	1450	0.000400000000000000019
4353	DR2	1450	0.000400000000000000019
4354	A10	1451	0.000400000000000000019
4355	B70	1451	0.000400000000000000019
4356	DR3	1451	0.000400000000000000019
4357	A28	1452	0.000400000000000000019
4358	B47	1452	0.000400000000000000019
4359	DR2	1452	0.000400000000000000019
4360	A28	1453	0.000400000000000000019
4361	B47	1453	0.000400000000000000019
4362	DR5	1453	0.000400000000000000019
4363	A11	1454	0.000400000000000000019
4364	B17	1454	0.000400000000000000019
4365	DR9	1454	0.000400000000000000019
4366	A9	1455	0.000400000000000000019
4367	B67	1455	0.000400000000000000019
4368	DR8	1455	0.000400000000000000019
4369	A2	1456	0.000400000000000000019
4370	B14	1456	0.000400000000000000019
4371	DR10	1456	0.000400000000000000019
4372	A9	1457	0.000400000000000000019
4373	B42	1457	0.000400000000000000019
4374	DR1	1457	0.000400000000000000019
4375	A9	1458	0.000400000000000000019
4376	B42	1458	0.000400000000000000019
4377	DR2	1458	0.000400000000000000019
4378	A9	1459	0.000400000000000000019
4379	B8	1459	0.000400000000000000019
4380	DR10	1459	0.000400000000000000019
4381	A2	1460	0.000400000000000000019
4382	B46	1460	0.000400000000000000019
4383	DR5	1460	0.000400000000000000019
4384	A11	1461	0.000400000000000000019
4385	B47	1461	0.000400000000000000019
4386	DR6	1461	0.000400000000000000019
4387	A28	1462	0.000400000000000000019
4388	B42	1462	0.000400000000000000019
4389	DR3	1462	0.000400000000000000019
4390	A36	1463	0.000400000000000000019
4391	B53	1463	0.000400000000000000019
4392	DR5	1463	0.000400000000000000019
4393	A36	1464	0.000400000000000000019
4394	B8	1464	0.000400000000000000019
4395	DR7	1464	0.000400000000000000019
4396	A36	1465	0.000400000000000000019
4397	B37	1465	0.000400000000000000019
4398	DR1	1465	0.000400000000000000019
4399	A11	1466	0.000400000000000000019
4400	B14	1466	0.000400000000000000019
4401	DR8	1466	0.000400000000000000019
4402	A1	1467	0.000400000000000000019
4403	B42	1467	0.000400000000000000019
4404	DR2	1467	0.000400000000000000019
4405	A19	1468	0.000400000000000000019
4406	B53	1468	0.000400000000000000019
4407	DR10	1468	0.000400000000000000019
4408	A10	1469	0.000400000000000000019
4409	B53	1469	0.000400000000000000019
4410	DR4	1469	0.000400000000000000019
4411	A1	1470	0.000400000000000000019
4412	B14	1470	0.000400000000000000019
4413	DR10	1470	0.000400000000000000019
4414	A19	1471	0.000299999999999999974
4415	B48	1471	0.000299999999999999974
4416	DR2	1471	0.000299999999999999974
4417	A19	1472	0.000299999999999999974
4418	B48	1472	0.000299999999999999974
4419	DR3	1472	0.000299999999999999974
4420	A19	1473	0.000299999999999999974
4421	B48	1473	0.000299999999999999974
4422	DR6	1473	0.000299999999999999974
4423	A28	1474	0.000299999999999999974
4424	B48	1474	0.000299999999999999974
4425	DR1	1474	0.000299999999999999974
4426	A28	1475	0.000299999999999999974
4427	B21	1475	0.000299999999999999974
4428	DR8	1475	0.000299999999999999974
4429	A1	1476	0.000299999999999999974
4430	B46	1476	0.000299999999999999974
4431	DR9	1476	0.000299999999999999974
4432	A10	1477	0.000299999999999999974
4433	B47	1477	0.000299999999999999974
4434	DR1	1477	0.000299999999999999974
4435	A3	1478	0.000299999999999999974
4436	B8	1478	0.000299999999999999974
4437	DR10	1478	0.000299999999999999974
4438	A9	1479	0.000299999999999999974
4439	B41	1479	0.000299999999999999974
4440	DR9	1479	0.000299999999999999974
4441	A28	1480	0.000299999999999999974
4442	B40	1480	0.000299999999999999974
4443	DR10	1480	0.000299999999999999974
4444	A1	1481	0.000299999999999999974
4445	B48	1481	0.000299999999999999974
4446	DR3	1481	0.000299999999999999974
4447	A28	1482	0.000299999999999999974
4448	B14	1482	0.000299999999999999974
4449	DR10	1482	0.000299999999999999974
4450	A2	1483	0.000299999999999999974
4451	B47	1483	0.000299999999999999974
4452	DR8	1483	0.000299999999999999974
4453	A36	1484	0.000299999999999999974
4454	B70	1484	0.000299999999999999974
4455	DR3	1484	0.000299999999999999974
4456	A36	1485	0.000299999999999999974
4457	B7	1485	0.000299999999999999974
4458	DR5	1485	0.000299999999999999974
4459	A28	1486	0.000299999999999999974
4460	B17	1486	0.000299999999999999974
4461	DR9	1486	0.000299999999999999974
4462	A28	1487	0.000299999999999999974
4463	B53	1487	0.000299999999999999974
4464	DR9	1487	0.000299999999999999974
4465	A3	1488	0.000299999999999999974
4466	B48	1488	0.000299999999999999974
4467	DR4	1488	0.000299999999999999974
4468	A9	1489	0.000299999999999999974
4469	B47	1489	0.000299999999999999974
4470	DR9	1489	0.000299999999999999974
4471	A43	1490	0.000299999999999999974
4472	B41	1490	0.000299999999999999974
4473	DR6	1490	0.000299999999999999974
4474	A19	1491	0.000299999999999999974
4475	B47	1491	0.000299999999999999974
4476	DR2	1491	0.000299999999999999974
4477	A19	1492	0.000299999999999999974
4478	B73	1492	0.000299999999999999974
4479	DR4	1492	0.000299999999999999974
4480	A28	1493	0.000299999999999999974
4481	B47	1493	0.000299999999999999974
4482	DR6	1493	0.000299999999999999974
4483	A1	1494	0.000299999999999999974
4484	B53	1494	0.000299999999999999974
4485	DR8	1494	0.000299999999999999974
4486	A19	1495	0.000299999999999999974
4487	B67	1495	0.000299999999999999974
4488	DR1	1495	0.000299999999999999974
4489	A19	1496	0.000299999999999999974
4490	B67	1496	0.000299999999999999974
4491	DR2	1496	0.000299999999999999974
4492	A36	1497	0.000299999999999999974
4493	B15	1497	0.000299999999999999974
4494	DR1	1497	0.000299999999999999974
4495	A36	1498	0.000299999999999999974
4496	B41	1498	0.000299999999999999974
4497	DR4	1498	0.000299999999999999974
4498	A36	1499	0.000299999999999999974
4499	B15	1499	0.000299999999999999974
4500	DR6	1499	0.000299999999999999974
4501	A1	1500	0.000299999999999999974
4502	B73	1500	0.000299999999999999974
4503	DR2	1500	0.000299999999999999974
4504	A1	1501	0.000299999999999999974
4505	B47	1501	0.000299999999999999974
4506	DR1	1501	0.000299999999999999974
4507	A1	1502	0.000299999999999999974
4508	B73	1502	0.000299999999999999974
4509	DR8	1502	0.000299999999999999974
4510	A3	1503	0.000299999999999999974
4511	B17	1503	0.000299999999999999974
4512	DR9	1503	0.000299999999999999974
4513	A2	1504	0.000299999999999999974
4514	B46	1504	0.000299999999999999974
4515	DR9	1504	0.000299999999999999974
4516	A11	1505	0.000299999999999999974
4517	B47	1505	0.000299999999999999974
4518	DR1	1505	0.000299999999999999974
4519	A36	1506	0.000299999999999999974
4520	B17	1506	0.000299999999999999974
4521	DR6	1506	0.000299999999999999974
4522	A3	1507	0.000299999999999999974
4523	B53	1507	0.000299999999999999974
4524	DR9	1507	0.000299999999999999974
4525	A28	1508	0.000299999999999999974
4526	B42	1508	0.000299999999999999974
4527	DR2	1508	0.000299999999999999974
4528	A19	1509	0.000299999999999999974
4529	B41	1509	0.000299999999999999974
4530	DR10	1509	0.000299999999999999974
4531	A2	1510	0.000299999999999999974
4532	B48	1510	0.000299999999999999974
4533	DR3	1510	0.000299999999999999974
4534	A1	1511	0.000299999999999999974
4535	B59	1511	0.000299999999999999974
4536	DR3	1511	0.000299999999999999974
4537	A11	1512	0.000299999999999999974
4538	B67	1512	0.000299999999999999974
4539	DR6	1512	0.000299999999999999974
4540	A36	1513	0.000299999999999999974
4541	B37	1513	0.000299999999999999974
4542	DR3	1513	0.000299999999999999974
4543	A28	1514	0.000299999999999999974
4544	B70	1514	0.000299999999999999974
4545	DR7	1514	0.000299999999999999974
4546	A9	1515	0.000299999999999999974
4547	B46	1515	0.000299999999999999974
4548	DR9	1515	0.000299999999999999974
4549	A9	1516	0.000299999999999999974
4550	B48	1516	0.000299999999999999974
4551	DR1	1516	0.000299999999999999974
\.


--
-- Data for Name: Mediumwechsel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Mediumwechsel" ("ID", "KulturEinDatum", "KulturAusDatum", "DatumBakteriologieEntnahme", "DatumBakteriologieErgebnis", "AerobSteril", "AnaerobSteril", "BSSKontrolle", "EZD", "MethodeEZD", "BefundbarkeitEpithel", "Epithelscore", "BefundbarkeitEndothel", "Endothelscore", "BefundbarkeitStroma", "Stromascore", "NarbePeripher", "NarbeZentral", "IDOrgankultur", "IsEndbefund", "IDMedium", "EndothelPotenziellTransplantierbar", "Befundbild", "DatumEndbefund", "Bemerkungen", "AnteilNekrosen", "IDMitarbeiter", pachy, "InstrumentID", "InstrumentID2", chargennummer, steridate, steridate2, "InstrumentID3", "NekrosenKlassifizierung", chargennummer_ncs, chargennummer_flasche, chargennummer_halter, chargennummer_bss, chargennummer_bss_wellplate, idcellfinder) FROM stdin;
\.


--
-- Data for Name: Mitarbeiter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Mitarbeiter" ("ID", "Name", "Vorname", "Titel", "Funktion", "Strasse", "PLZ", "Ort", "Telefon", "Mobil", "Fax", extern, hide, role, operiert, "isOA", weiblich, email) FROM stdin;
\.


--
-- Data for Name: Organkultur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Organkultur" ("ID", "IDSpender", "IDWarteliste", "IDVerwerfungsgrund", "Auge", "IDVoroperationen", "EndOfCulture", "Bemerkungen", "IDMitarbeiter", "Verschickbar", "IDMitarbeiter2", "TP_Nummer", "ET_Nr_cornea", "BIS_seit", "BIS_gemeldet", precuttype, olc, id_verwendung_nach_verwerfung) FROM stdin;
\.


--
-- Data for Name: Password; Type: TABLE DATA; Schema: public; Owner: root
--

COPY "Password" ("ID", name, password, level, pguser, pgpassword, ldap, "IDMitarbeiter") FROM stdin;
\.


--
-- Data for Name: SerologieSpender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "SerologieSpender" ("ID", "IDSpender", "IDTest", "Datum", "Ergebnis") FROM stdin;
\.


--
-- Data for Name: StammdatenAnschrifttyp; Type: TABLE DATA; Schema: public; Owner: root
--

COPY "StammdatenAnschrifttyp" ("ID", "Typ") FROM stdin;
1	Hauptansprechpartner
2	Rechnungsadresse
3	Privatanschrift
4	HHBAssi
5	Laborleitung
6	FollowUpArzt
\.


--
-- Data for Name: StammdatenBlutgruppe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenBlutgruppe" ("ID", "Allel") FROM stdin;
105	A
106	A1
107	A2
108	B
109	Null
110	D+
111	d-
112	C
113	c
114	D
115	d
116	E
117	e
\.


--
-- Data for Name: StammdatenEinstufungOrdinal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenEinstufungOrdinal" ("ID", "Name", type, block_alloc, block_op_arten) FROM stdin;
20	Arcus parziell	6	t	\N
52	Irrelevante Narben, zentral	6	\N	
51	Arcus	6	t	11 4
55	Optisch relevante Narben	6	t	1 2 4 7 11
56	Stromaverduennung	6	t	1 2 4 7 11
27	Ausgepraegter Polymegathismus	3	t	\N
28	Ausgepraegter Pleomorphismus	3	t	\N
29	Ausgepraegte Zelleinschluesse	3	t	\N
31	Nicht beurteilbar	3	t	\N
1	exzellent	1	\N	\N
2	gut	1	\N	\N
3	mittel	1	\N	\N
4	schlecht	1	\N	\N
6	Zuverlaessig ermittelbar	2	\N	\N
26	Morphologie im Normbereich	3	\N	\N
42	Faltenassoziiert	5	\N	\N
53	Irrelevante Narben, peripher	6	\N	\N
57	Infiltrat	6	\N	\N
58	Guttae	6	\N	\N
59	Deszemetolyse	6	\N	\N
30	Guttae	3	\N	\N
54	Epitheltr�bungen	6	f	\N
50	Keine Auff�lligkeiten	6	f	\N
44	Konfluierend	5	t	\N
43	Grosse zentrale	5	t	\N
5	Nicht ermittelbar	2	t	\N
21	Polymorph aber transplantabel	3	f	\N
22	Arcus klein	6	f	\N
23	Epitheliale Auflagerungen	6	f	\N
41	einzelne	5	f	\N
24	Ziliark�rpermelanom	6	t	\N
40	keine	5	f	\N
19	zu klein	6	t	12 11
25	Phakonarbe	6	t	11 4
\.


--
-- Data for Name: StammdatenEinverstaendnisArt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenEinverstaendnisArt" ("ID", "Name") FROM stdin;
1	pers�nlich
2	telefonisch
3	Spenderausweis
4	schriftlich
\.


--
-- Data for Name: StammdatenEntnahmemethode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenEntnahmemethode" ("ID", "Name") FROM stdin;
1	corneoskleral
2	Enukleation
3	nicht entnommen
\.


--
-- Data for Name: StammdatenExitWL; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenExitWL" ("ID", "Name") FROM stdin;
1	OP
2	Exitus letalis
7	OP ausw�rts
4	Gesundheitsprobleme
5	Patientenwunsch
6	Versand
3	Unbekannt verzogen
9	OP (BIS-HH)
8	Keine KP Indikation
10	OP noch nicht aktiviert
\.


--
-- Data for Name: StammdatenHLA; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenHLA" ("ID", "Klasse", "Split", "Broad", "PCR", "IgnoreInHLAMatching") FROM stdin;
11	2	DR1	DR1	DRB1*0101	f
12	2	DR17	DR3	DRB1*0301	f
13	2	DR18	DR3	DRB1*0302	f
14	2	DR18	DR3	DRB1*0303	f
15	2	DR17	DR3	DRB1*0304	f
16	2	DR4	DR4	DRB1*0401	f
17	2	DR7	DR7	DRB1*0701	f
18	2	DR8	DR8	DRB1*0801	f
19	2	DR9	DR9	DRB1*0901	f
20	2	DR10	DR10	DRB1*1001	f
21	2	DR11	DR5	DRB1*1101	f
22	2	DR12	DR5	DRB1*1201	f
23	2	DR13	DR6	DRB1*1301	f
24	2	DR6	DR6	DRB1*1312	f
25	2	DR14	DR6	DRB1*1401	f
26	2	DR8	DR8	DRB1*1415	f
27	2	DR6	DR6	DRB1*1416	f
28	2	DR14	DR6	DRB1*1426	f
29	2	DR15	DR2	DRB1*1501	f
30	2	DR16	DR2	DRB1*1601	f
31	1	A1	A1	A*0101	f
32	1	A2	A2	A*0201	f
33	1	A3	A3	A*0301	f
34	1	A11	A11	A*1101	f
35	1	A23	A9	A*2301	f
36	1	A24	A9	A*2402	f
37	1	A25	A10	A*2501	f
38	1	A26	A10	A*2601	f
39	1	A10	A10	A*2610	f
40	1	A29	A19	A*2901	f
41	1	A30	A19	A*3001	f
42	1	A31	A19	A*3101	f
43	1	A32	A19	A*3201	f
44	1	A33	A19	A*3301	f
45	1	A34	A10	A*3401	f
46	1	A36	A36	A*3601	f
47	1	A43	A43	A*4301	f
48	1	A66	A10	A*6601	f
49	1	A68	A28	A*6801	f
50	1	A68	A28	A*6808	f
51	1	A69	A28	A*6901	f
52	1	A74	A19	A*7401	f
53	1	A19	A19	A*7403	f
54	1	A80	A80	A*8001	f
55	1	B7	B7	B*0702	f
56	1	B8	B8	B*0801	f
57	1	B13	B13	B*1301	f
58	1	B64	B14	B*1401	f
59	1	B65	B14	B*1402	f
60	1	B62	B15	B*1501	f
61	1	B75	B15	B*1502	f
62	1	B72	B70	B*1503	f
63	1	B62	B15	B*1504	f
64	1	B70	B70	B*1509	f
65	1	B71	B70	B*1510	f
66	1	B76	B15	B*1512	f
67	1	B77	B15	B*1513	f
68	1	B35	B35	B*1522	f
69	1	B15	B15	B*1528	f
70	1	B15	B15	B*1535	f
71	1	B18	B18	B*1801	f
72	1	B27	B27	B*2701	f
73	1	B35	B35	B*3501	f
74	1	B37	B37	B*3701	f
75	1	B38	B16	B*3801	f
76	1	B16	B16	B*3803	f
77	1	B39	B16	B*3903	f
78	1	B39	B16	B*3904	f
79	1	B60	B40	B*4001	f
80	1	B61	B40	B*4002	f
81	1	B40	B40	B*4003	f
82	1	B41	B41	B*4101	f
83	1	B42	B42	B*4201	f
85	1	B45	B12	B*4501	f
86	1	B46	B46	B*4601	f
87	1	B47	B47	B*4701	f
88	1	B48	B48	B*4801	f
89	1	B49	B21	B*4901	f
90	1	B50	B21	B*5001	f
91	1	B45	B45	B*5002	f
92	1	B52	B5	B*5116	f
93	1	B53	B53	B*5301	f
94	1	B54	B22	B*5401	f
95	1	B55	B22	B*5501	f
96	1	B22	B22	B*5505	f
97	1	B54	B22	B*5507	f
98	1	B57	B17	B*5701	f
99	1	B58	B17	B*5801	f
100	1	B59	B59	B*5901	f
101	1	B67	B67	B*6701	f
102	1	B73	B73	B*7301	f
103	1	B78	B78	B*7801	f
104	1	B81	B81	B*8101	f
121	1	B62	B15	B*1524	f
120	2	DR6	DR6	DRB1*1302	f
107	2	DR103	DR103	DRB1*0103	f
108	1	B44	B12	B*44	f
118	2	DR16	DR2	DRB1*1602	f
110	1	Cw03	Cw03	Cw*03	t
111	1	Cw04	Cw04	Cw*04	t
112	2	DQ4	DQ4	DQB1*04	t
113	2	DQ5	DQ5	DQB1*05	t
114	2	DRB5	DRB5	DRB5*	t
115	1	B56	B22	B*5601	f
109	2	DR3	DR3	DRB1*03	f
117	1	B63	B15	B*1517	f
119	2	DRB1	DRB1	DRB1*0102	f
105	1	B51	B5	B*51	f
106	1	B52	B5	B*52	f
137	\N	DR4	DR4	DRB1*0408	f
129	\N	B13	B13	B*1302	f
126	\N	DR11	DR5	DRB1*1109	f
131	\N	B7	B7	B*0705	f
134	\N	B44	B12	B*4402	f
84	1	B44	B12	B*4409	f
132	\N	B27	B27	B*2705	f
142	\N	A2	A2	A*0225	f
127	\N	DR4	DR4	DRB1*0404	f
124	2	DR4	DR4	DRB1*0402	f
123	1	B35	B35	B*3502	f
130	\N	A30	A19	A*3004	f
133	\N	DR11	DR5	DRB1*1104	f
128	\N	A29	A19	A*2902	f
135	\N	A2	A2	A*0206	f
139	\N	DR11	DR5	DRB1*1103	f
138	\N	B51	B5	B*5101	f
136	\N	B39	B16	B*3906	f
140	\N	A68	A28	A*6802	f
141	\N	B44	B12	B*4403	f
144	\N	B52	B5	B*5201	f
143	\N	DR15	DR2	DRB1*1502	f
145	\N	DR14	DR6	DRB1*1454	f
146	\N	A34	A10	A*3402	f
147	\N	B40	B40	B*4012	f
148	\N	DR8	DR8	DRB1*0804	f
149	\N	A30	A19	A*3002	f
150	\N	B27	B27	B*2703	f
157	\N	DR4	DR4	DRB1*0407	f
158	\N	B35	B35	B*3503	f
151	\N	B27	B27	B*2702	f
153	\N	DR6	DR6	DRB1*1303	f
156	\N	B44	B12	B*4405	f
152	\N	B38	B16	B*3802	f
159	\N	DR4	DR4	DRB1*0403	f
154	\N	DR8	DR8	DRB1*0802	f
155	\N	A24	A9	A*2403	f
163	\N	B39	B16	B*3901	f
160	\N	B62	B15	B*1508	f
161	\N	B18	B18	B*1901	f
162	\N	DR4	DR4	DRB1*0405	f
164	\N	A33	A19	A*3303	f
165	\N	A3	A3	A*0302	f
166	\N	A2	A2	A*0205	f
\.


--
-- Data for Name: StammdatenHLAMatch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenHLAMatch" ("ID", "Mismatch", "Name") FROM stdin;
1	0	Fullmatch
2	1	Lowmatch
3	2	Lokalmatch
4	3	random
5	4	random
6	5	random
7	6	random
\.


--
-- Data for Name: StammdatenHornhautspender; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenHornhautspender" ("ID", "Name", "Vorname", "Geburtsdatum", "Anschrift", "PLZ", "Ort", "Todeszeitpunkt", "IDTodesursache", "IDQuelle", "IDEntnahmemethodeR", "IDEntnahmemethodeL", "IDExplanteur", weiblich, "Bemerkungen", "IDEinverstaendnisArt", "EinverstaendnisEingeholt", "EinverstaendnisPerson", "NameAngehoeriger", "Koerpergroesse", "Koerpergewicht", "TransfusionenExpander", "TransfusionenSalin", "TransfusionenRinger", "TransfusionenDextrose", "Transfusionen", "Sepsis", "Risikogruppe", "Leukaemie", "Immunsuppression", "Entnahmezeitpunkt", "Telefon", "IDVerwefungsgrundPrimary", "IDSterbeort", "KontraindikationChecked", "IDZentrum", "ExternalID", "ExternalDonor", gekuehlt, "IDMelder", "AnschriftAngehoeriger", "PLZAngehoeriger", "OrtAngehoeriger", persoenlicher_kontakt, time_contact1, time_contact2, gespraechsnotiz, einwilligung_forschung, "IDSpenderidentifikationDurch", "IDSpenderidentifikationMittels", "IDPraemortemBlut", "PIZ", id_vorops_r, id_vorops_l, gesperrt, praemortem_blut_anfordern) FROM stdin;
\.


--
-- Data for Name: StammdatenInstrumente; Type: TABLE DATA; Schema: public; Owner: root
--

COPY "StammdatenInstrumente" ("ID", "Kasten") FROM stdin;
1	1
2	1
3	1
4	1
5	2
6	2
7	2
8	2
9	3
10	3
11	3
12	3
27	7
13	4
29	8
14	4
28	7
15	4
16	4
17	5
18	5
19	5
20	5
21	6
22	6
23	6
24	6
25	7
26	7
30	8
31	8
32	8
33	\N
34	\N
35	\N
36	\N
37	\N
38	\N
39	\N
40	\N
\.


--
-- Data for Name: StammdatenMedium; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenMedium" ("ID", "Name") FROM stdin;
1	Medium I
2	Medium II
0	Transport
\.


--
-- Data for Name: StammdatenNarkose; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenNarkose" ("ID", "Text") FROM stdin;
3	Tropfan�sthesie
4	Analgosedierung
2	Allgemeinnarkose
1	retrobulb�r
\.


--
-- Data for Name: StammdatenOPVerfahren; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenOPVerfahren" ("ID", "OPArt", "Name") FROM stdin;
1	Perforierende Kpl.	perforierende Keratoplastik
7	Triple-OP	perforierende Keratoplastik mit Kataraktoperation
4	Limbo-Kpl.	perforierende Keratoplastik mit Limbusanteil
3	Therapeutische Kpl. (tekt./exz.)	tektonische Keratoplastik
10	Autologe Kpl.	Autologe Keratoplastik
11	Femto-Kpl.	Perforierende Keratoplastik mit Femtosekunden-Laser
15	PKP � Chaud	\N
2	DALK	DALK
14	Triple-DSAEK	Descemet stripping automatisierte Endothelkeratoplastik (DSAEK) mit Kataraktoperation
12	DSAEK	Descemet stripping automatisierte Endothelkeratoplastik (DSAEK)
13	Excimer-KP	Excimer Keratoplastik
16	DMEK	Descemet Membran Endothelkeratoplastik
17	Triple-DMEK	Descemet Membran Endothelkeratoplastik mit Kataraktoperation
\.


--
-- Data for Name: StammdatenPatient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenPatient" ("ID", "Name", "Vorname", "Geburtsdatum", "Anschrift", "PLZ", "Ort", weiblich, "Telefon1", "Telefon2", "VerstorbenAm", "PIZ", "ExternalID", "IDZentrum", "WriteProtection", "MeldedatumExtern", "Land", "Telefon3", "Telefon4") FROM stdin;
\.


--
-- Data for Name: StammdatenPrioritaet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenPrioritaet" ("ID", "Text") FROM stdin;
1	niedrig
2	normal
3	hoch
\.


--
-- Data for Name: StammdatenQuelle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenQuelle" ("ID", "Name", "Intensivstation", "Extern", anfahrtsweg) FROM stdin;
1	Pathologie	f	f	\N
\.


--
-- Data for Name: StammdatenSerologie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenSerologie" ("ID", "Test", "Typ", uncritical) FROM stdin;
5	HCV AK	\N	\N
6	HBs AG	\N	\N
8	HTLV AK	\N	t
9	HIV Combo	\N	\N
12	HIV-PCR	\N	t
10	TPPA AK	\N	\N
11	Anti-HBc	\N	t
7	HCV RNA	\N	t
13	HBV-PCR	\N	f
\.


--
-- Data for Name: StammdatenSpenderSterbeort; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenSpenderSterbeort" ("ID", "Text", "IDKlinik") FROM stdin;
\.


--
-- Data for Name: StammdatenSpenderVoroperation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenSpenderVoroperation" ("ID", "Text") FROM stdin;
1	Pseudophakie
2	sonstige VA Chirurgie
3	sonstige Augenchirurgie
4	Hornhautchirurgie
5	Keine
\.


--
-- Data for Name: StammdatenTodesursache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenTodesursache" ("ID", "Name", "ICD", "Code", "Malignom", "Leukaemie", "Sepsis") FROM stdin;
5	Herzinfarkt	\N	\N	f	f	f
6	Colon-Ca	\N	\N	t	f	f
7	Bronchial-Ca	\N	\N	t	f	f
8	Mamma-Ca	\N	\N	t	f	f
9	Multiorganversagen	\N	\N	f	f	f
10	Intracerebrale Blutung	\N	\N	f	f	f
57	nekrotisierende Pankreatitis	\N	\N	f	f	f
12	Suizid	\N	\N	f	f	f
13	Hirnstammeinklemmung	\N	\N	f	f	f
32	Hepatozell.-CA	\N	\N	t	f	f
15	Unklar	\N	\N	f	f	f
47	Sturz	\N	\N	f	f	f
17	Pneumonie	\N	\N	f	f	t
18	Apoplex	\N	\N	f	f	f
19	Respiratorische Insuffizienz	\N	\N	f	f	f
20	Mundbodencarcinom	\N	\N	t	f	f
21	Gastrointestinale Blutung	\N	\N	f	f	f
22	Sch�delhirntrauma	\N	\N	f	f	f
23	Unfall	\N	\N	f	f	f
24	Lungenembolie	\N	\N	f	f	f
25	Septisches Multiorganversagen	\N	\N	f	f	t
26	�sophagus-Ca	\N	\N	t	f	f
27	Pankreas-Ca	\N	\N	t	f	f
29	Dermatomyositis	\N	\N	f	f	f
53	Blutung bei Thrombozytopenie	\N	\N	f	f	f
51	Blasenkarzinom	\N	\N	f	f	f
52	Nierenversagen	\N	\N	f	f	f
55	Mord	\N	\N	f	f	f
34	Darmperforation	\N	\N	f	f	f
35	Insult	\N	\N	f	f	f
30	Leberzirrhose	\N	\N	f	f	f
54	Prostata-Ca	\N	\N	t	f	f
38	Mesenterialinfarkt	\N	\N	f	f	f
39	Hirninfarkt	\N	\N	f	f	f
11	Herz-Kreislaufstillstand	\N	\N	f	f	f
40	Hirnblutung	\N	\N	f	f	f
43	Subarachnoidalblutung	\N	\N	f	f	f
41	Melanom	\N	\N	f	f	f
58	Herzinsuffizienz	\N	\N	f	f	f
62	Aortenklappenstenose	\N	\N	f	f	f
46	Hirn�dem	\N	\N	f	f	f
16	Verkehrsunfall	\N	\N	f	f	f
48	Herzbeuteltamponade	\N	\N	f	f	f
49	Hitzschlag	\N	\N	f	f	f
33	Hirntumor	\N	\N	t	f	f
60	Cervix -Ca	\N	\N	f	f	f
37	Ovarial-CA	\N	\N	t	f	f
42	Urothel-CA	\N	\N	t	f	f
44	Endometrium-CA	\N	\N	t	f	f
45	Larynx-Ca	\N	\N	t	f	f
31	Magen-Ca	\N	\N	t	f	f
36	Sepsis	\N	\N	f	f	t
61	Gallengangs-Ca	\N	\N	f	f	f
63	Ur�mie	\N	\N	f	f	f
28	Magendurchbruch	\N	\N	f	f	f
66	Aortendissektion	\N	\N	f	f	f
67	Kammerflimmern	\N	\N	f	f	f
64	Kardiale Isch�mie	\N	\N	f	f	f
68	Krampfanfall	\N	\N	f	f	f
69	Hypoxie	\N	\N	f	f	f
70	Kardiogener Schock	\N	\N	f	f	f
71	Darmisch�mie	\N	\N	f	f	f
72	Asystolie	\N	\N	f	f	f
73	Hepatorenales Syndrom	\N	\N	f	f	f
74	Septischer Schock	\N	\N	f	f	f
75	Kardiogene Dekompensation	\N	\N	f	f	f
76	Paralytischer Ileus	\N	\N	f	f	f
77	Sch�del-Hirn-Trauma	\N	\N	f	f	f
78	Ertrunken	\N	\N	f	f	f
79	H�morrhagischer Schock	\N	\N	f	f	f
81	Basilaris Thrombose	\N	\N	f	f	f
82	Lungenfibrose	\N	\N	f	f	f
83	Herzinsuffizienz	\N	\N	f	f	f
80	Niereninsuffizienz	\N	\N	f	f	f
84	Bauchaortenaneurysma	\N	\N	f	f	f
85	pl�tzlicher Herztod	\N	\N	f	f	f
65	Bolusaspiration	\N	\N	f	f	f
86	GI-Blutung	\N	\N	f	f	f
87	Aortenstenose	\N	\N	f	f	f
88	Leberzirrhose	\N	\N	f	f	f
89	Intoxikation	\N	\N	f	f	f
\.


--
-- Data for Name: StammdatenTransportdienst; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenTransportdienst" ("ID", "Name") FROM stdin;
1	DRK D�sseldorf
\.


--
-- Data for Name: StammdatenVerwerfungsgrund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "StammdatenVerwerfungsgrund" ("ID", "Name") FROM stdin;
3	Bakteriell kontaminiert
4	Schlechtes Endothel
5	Schlechtes Stroma (Narbe)
6	Kontamination durch Pilze
8	Organisatorische Gr�nde
9	Kontraindikation
1	Kontagi�s (Serologie)
7	Serologie unklar/nicht auswertbar
10	Potentiell kontaminiert
\.


--
-- Data for Name: Transplantatversand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Transplantatversand" ("ID", "Rechnungsbetrag", "RechnungBezahlt", "IDOrgankultur", "TransportDatum", "IDTransportdienst", "IDRechnungsadresse", "IDWL", "Notfall", "IDVersandadresse", "Rechnungsnummer", "IDMitarbeiter", "Bemerkung") FROM stdin;
\.


--
-- Data for Name: Trepanart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Trepanart" ("ID", "Trepanart") FROM stdin;
1	GTS 8mm
2	Handtrepan 8mm
3	Handtrepan 7,5mm
4	Handtrepan 9mm
5	Handtrepan 8,5 mm
6	Handtrepan 9,5 mm
9	FS: Mushroom
10	Handtrepan 12,5 mm
8	FS: TopHat
12	Handtrepan 6 mm
11	Handtrepan 3,5 mm
7	GTS 7.5mm
\.


--
-- Data for Name: TripletHLAAllelesPCR; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TripletHLAAllelesPCR" ("ID", "NamePCR", "NameSplit") FROM stdin;
746	B*5114	B51
747	B*5115	B51
748	B*5116	B51
749	B*5117	B51
750	B*5118	B51
751	B*5119	B51
752	B*5120	B51
753	B*5121	B51
754	B*5122	B51
755	B*5123	B51
756	B*5124	B51
757	B*5201	B52
758	B*5202	B52
759	B*5203	B52
760	B*5301	B53
761	B*5302	B53
762	B*5303	B53
763	B*5304	B53
764	B*5305	B53
765	B*5306	B53
766	B*5307	B53
767	B*5401	B54
768	B*5402	B54
769	B*5501	B55
770	B*5502	B55
771	B*5503	B55
772	B*5504	B55
773	B*5505	B55
774	B*5507	B55
775	B*5508	B55
776	B*5509	B55
777	B*5510	B55
778	B*5601	B56
779	B*5602	B56
780	B*5603	B56
781	B*5604	B56
782	B*5605	B56
783	B*5606	B56
784	B*5607	B56
785	B*5701	B57
786	B*5702	B57
787	B*5703	B57
788	B*5704	B57
789	B*5705	B57
790	B*5706	B57
791	B*5707	B57
792	B*5801	B58
793	B*5802	B58
794	B*5804	B58
795	B*5805	B58
796	B*5806	B58
797	B*5901	B59
798	B*6701	B67
799	B*7301	B73
800	B*7801	B78
801	B*7802	B78
802	B*7803	B78
803	B*7804	B78
804	B*8101	B81
805	B*8201	B82
806	B*8202	B82
807	B*8301	B83
601	B*3517	B35
602	B*3518	B35
603	B*3519	B35
604	B*3520	B35
605	B*3521	B35
606	B*3522	B35
607	B*3523	B35
608	B*3524	B35
609	B*3525	B35
610	B*3526	B35
611	B*3527	B35
612	B*3528	B35
613	B*3529	B35
614	B*3530	B35
615	B*3531	B35
616	B*3532	B35
617	B*3533	B35
618	B*3534	B35
619	B*3535	B35
620	B*3536	B35
621	B*3537	B35
622	B*3701	B37
623	B*3702	B37
624	B*3801	B38
625	B*3802	B38
626	B*3803	B38
627	B*3804	B38
628	B*3805	B38
629	B*3806	B38
630	B*3901	B39
631	B*3902	B39
632	B*3903	B39
633	B*3904	B39
634	B*3905	B39
635	B*3906	B39
636	B*3907	B39
637	B*3908	B39
638	B*3909	B39
639	B*3910	B39
640	B*3911	B39
641	B*3912	B39
642	B*3913	B39
643	B*3914	B39
644	B*3915	B39
645	B*3916	B39
646	B*3917	B39
647	B*3918	B39
648	B*3919	B39
649	B*3920	B39
650	B*3921	B39
651	B*3922	B39
652	B*3923	B39
653	B*3924	B39
654	B*4001	B40
655	B*4002	B40
656	B*4003	B40
657	B*4004	B40
658	B*4005	B40
659	B*4006	B40
660	B*4007	B40
661	B*4008	B40
662	B*4009	B40
663	B*4010	B40
664	B*4011	B40
665	B*4012	B40
666	B*4013	B40
667	B*4014	B40
668	B*4015	B40
669	B*4016	B40
670	B*4018	B40
671	B*4019	B40
672	B*4020	B40
673	B*4021	B40
674	B*4023	B40
675	B*4024	B40
676	B*4025	B40
677	B*4026	B40
678	B*4027	B40
679	B*4028	B40
680	B*4029	B40
681	B*4030	B40
682	B*4031	B40
683	B*4032	B40
684	B*4033	B40
685	B*4034	B40
686	B*4101	B41
687	B*4102	B41
688	B*4103	B41
689	B*4104	B41
690	B*4105	B41
691	B*4201	B42
692	B*4202	B42
693	B*4402	B44
694	B*4403	B44
695	B*4404	B44
696	B*4405	B44
697	B*4406	B44
698	B*4407	B44
699	B*4408	B44
700	B*4409	B44
701	B*4410	B44
702	B*4411	B44
703	B*4412	B44
704	B*4413	B44
705	B*4414	B44
706	B*4415	B44
707	B*4416	B44
708	B*4417	B44
709	B*4418	B44
710	B*4420	B44
711	B*4421	B44
712	B*4422	B44
713	B*4501	B45
714	B*4502	B45
715	B*4503	B45
716	B*4601	B46
717	B*4602	B46
718	B*4701	B47
719	B*4702	B47
720	B*4703	B47
721	B*4801	B48
722	B*4802	B48
723	B*4803	B48
724	B*4804	B48
725	B*4805	B48
726	B*4806	B48
727	B*4807	B48
728	B*4901	B49
729	B*4902	B49
730	B*4903	B49
731	B*5001	B50
732	B*5002	B50
733	B*5004	B50
734	B*5101	B51
735	B*5102	B51
736	B*5103	B51
737	B*5104	B51
738	B*5105	B51
739	B*5106	B51
740	B*5107	B51
741	B*5108	B51
742	B*5109	B51
743	B*5110	B51
744	B*5112	B51
745	B*5113	B51
456	B*0713	B7
457	B*0714	B7
458	B*0715	B7
459	B*0716	B7
460	B*0717	B7
461	B*0718	B7
462	B*0719	B7
463	B*0720	B7
464	B*0722	B7
465	B*0723	B7
466	B*0724	B7
467	B*0801	B8
468	B*0802	B8
469	B*0803	B8
470	B*0804	B8
471	B*0805	B8
472	B*0806	B8
473	B*0807	B8
474	B*0809	B8
475	B*0810	B8
476	B*0811	B8
477	B*0812	B8
478	B*1301	B13
479	B*1302	B13
480	B*1303	B13
481	B*1304	B13
482	B*1306	B13
483	B*1401	B14
484	B*1402	B14
485	B*1403	B14
486	B*1404	B14
487	B*1405	B14
488	B*1406	B14
489	B*1501	B15
490	B*1502	B15
491	B*1503	B15
492	B*1504	B15
493	B*1505	B15
494	B*1506	B15
495	B*1507	B15
496	B*1508	B15
497	B*1509	B15
498	B*1510	B15
499	B*1511	B15
500	B*1512	B15
501	B*1513	B15
502	B*1514	B15
503	B*1515	B15
504	B*1516	B15
275	A*0101	A1
276	A*0102	A1
277	A*0103	A1
278	A*0106	A1
280	A*0108	A1
281	A*0201	A2
282	A*0202	A2
283	A*0203	A2
284	A*0204	A2
285	A*0205	A2
286	A*0206	A2
287	A*0207	A2
288	A*0208	A2
289	A*0209	A2
290	A*0210	A2
291	A*0211	A2
293	A*0213	A2
294	A*0214	A2
295	A*0216	A2
296	A*0217	A2
297	A*0218	A2
298	A*0219	A2
299	A*0220	A2
300	A*0221	A2
301	A*0222	A2
302	A*0224	A2
303	A*0225	A2
304	A*0226	A2
305	A*0227	A2
306	A*0228	A2
307	A*0229	A2
308	A*0230	A2
309	A*0231	A2
310	A*0233	A2
311	A*0234	A2
312	A*0235	A2
313	A*0236	A2
314	A*0237	A2
315	A*0238	A2
316	A*0239	A2
317	A*0240	A2
318	A*0241	A2
319	A*0242	A2
320	A*0244	A2
321	A*0245	A2
322	A*0246	A2
323	A*0301	A3
324	A*0302	A3
325	A*0304	A3
326	A*0305	A3
327	A*0306	A3
328	A*0308	A3
329	A*1101	A11
330	A*1102	A11
331	A*1103	A11
332	A*1104	A11
333	A*1105	A11
334	A*1106	A11
335	A*1107	A11
336	A*1109	A11
337	A*2301	A23
338	A*2302	A23
339	A*2303	A23
340	A*2304	A23
341	A*2305	A23
342	A*2306	A23
343	A*2402	A24
344	A*2403	A24
345	A*2404	A24
346	A*2405	A24
347	A*2406	A24
348	A*2407	A24
349	A*2408	A24
350	A*2410	A24
351	A*2413	A24
352	A*2414	A24
353	A*2415	A24
354	A*2416	A24
355	A*2417	A24
356	A*2418	A24
357	A*2420	A24
358	A*2421	A24
359	A*2422	A24
360	A*2423	A24
361	A*2424	A24
362	A*2425	A24
363	A*2426	A24
364	A*2427	A24
365	A*2428	A24
366	A*2429	A24
367	A*2430	A24
368	A*2501	A25
369	A*2502	A25
370	A*2503	A25
371	A*2601	A26
372	A*2602	A26
373	A*2603	A26
374	A*2604	A26
375	A*2605	A26
376	A*2606	A26
377	A*2607	A26
378	A*2608	A26
379	A*2609	A26
380	A*2610	A26
381	A*2612	A26
382	A*2613	A26
383	A*2614	A26
384	A*2615	A26
385	A*2901	A29
386	A*2902	A29
387	A*2903	A29
388	A*2904	A29
389	A*3001	A30
390	A*3002	A30
391	A*3003	A30
392	A*3004	A30
393	A*3006	A30
394	A*3007	A30
395	A*3008	A30
396	A*3009	A30
397	A*3101	A31
398	A*3102	A31
399	A*3103	A31
400	A*3104	A31
401	A*3105	A31
402	A*3201	A32
403	A*3202	A32
404	A*3203	A32
405	A*3204	A32
406	A*3205	A32
407	A*3206	A32
408	A*3301	A33
409	A*3303	A33
410	A*3304	A33
411	A*3305	A33
412	A*3306	A33
413	A*3401	A34
414	A*3402	A34
415	A*3403	A34
416	A*3601	A36
417	A*3602	A36
418	A*4301	A43
419	A*6601	A66
420	A*6602	A66
421	A*6603	A66
422	A*6801	A68
423	A*6802	A68
424	A*6803	A68
425	A*6804	A68
426	A*6805	A68
427	A*6806	A68
428	A*6807	A68
429	A*6808	A68
430	A*6809	A68
431	A*6810	A68
432	A*6812	A68
433	A*6813	A68
434	A*6814	A68
435	A*6815	A68
436	A*6816	A68
437	A*6817	A68
438	A*6819	A68
439	A*6901	A69
440	A*7401	A74
441	A*7402	A74
442	A*7403	A74
443	A*7404	A74
444	A*8001	A80
445	B*0702	B7
446	B*0703	B7
447	B*0704	B7
448	B*0705	B7
449	B*0706	B7
450	B*0707	B7
451	B*0708	B7
452	B*0709	B7
453	B*0710	B7
454	B*0711	B7
455	B*0712	B7
505	B*1517	B15
506	B*1518	B15
507	B*1519	B15
508	B*1520	B15
509	B*1521	B15
510	B*1522	B15
511	B*1523	B15
512	B*1524	B15
513	B*1525	B15
514	B*1527	B15
515	B*1528	B15
516	B*1529	B15
517	B*1530	B15
518	B*1531	B15
519	B*1532	B15
520	B*1533	B15
521	B*1534	B15
522	B*1535	B15
523	B*1536	B15
524	B*1537	B15
525	B*1538	B15
526	B*1539	B15
527	B*1540	B15
528	B*1542	B15
529	B*1543	B15
530	B*1544	B15
531	B*1545	B15
532	B*1546	B15
533	B*1547	B15
534	B*1548	B15
535	B*1549	B15
536	B*1550	B15
537	B*1551	B15
538	B*1552	B15
539	B*1553	B15
540	B*1554	B15
541	B*1555	B15
542	B*1556	B15
543	B*1557	B15
544	B*1558	B15
545	B*1559	B15
546	B*1560	B15
547	B*1561	B15
548	B*1562	B15
549	B*1563	B15
550	B*1564	B15
551	B*1801	B18
552	B*1802	B18
553	B*1803	B18
554	B*1804	B18
555	B*1805	B18
556	B*1806	B18
557	B*1807	B18
558	B*1808	B18
559	B*1809	B18
560	B*1810	B18
561	B*1811	B18
562	B*1812	B18
563	B*2701	B27
564	B*2702	B27
565	B*2703	B27
566	B*2704	B27
567	B*2705	B27
568	B*2706	B27
569	B*2707	B27
570	B*2708	B27
571	B*2709	B27
572	B*2710	B27
573	B*2711	B27
574	B*2712	B27
575	B*2713	B27
576	B*2714	B27
577	B*2715	B27
578	B*2716	B27
579	B*2717	B27
580	B*2718	B27
581	B*2719	B27
582	B*2720	B27
583	B*2721	B27
584	B*2722	B27
585	B*3501	B35
586	B*3502	B35
587	B*3503	B35
588	B*3504	B35
589	B*3505	B35
590	B*3506	B35
591	B*3507	B35
592	B*3508	B35
593	B*3509	B35
594	B*3510	B35
595	B*3511	B35
596	B*3512	B35
597	B*3513	B35
598	B*3514	B35
599	B*3515	B35
600	B*3516	B35
\.


--
-- Data for Name: Triplets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Triplets" ("ID", "IDAllele", "Epitope") FROM stdin;
24574	805	166Es
24575	805	171Y
24576	805	177Et
24577	805	180Q
24578	806	9Y
24579	806	11Am
24580	806	14R
24581	806	16Gr
24582	806	41A
24583	806	45Ee
24584	806	56G
24585	806	59Y
24586	806	62Rn
24587	806	66qIy
24588	806	70aQa
24589	806	74D
24590	806	76Es
24591	806	80rNLrg
24592	806	90A
24593	806	105P
24594	806	107G
24595	806	127N
24596	806	131S
24597	806	138T
24598	806	142I
24599	806	144tQr
24600	806	147W
24601	806	150aARv
24602	806	156D
24603	806	158A
24604	806	163L
24605	806	166Es
24606	806	171Y
24607	806	177Et
24608	806	180Q
24609	806	183P
24610	806	186K
24611	806	193Pi
24612	806	199A
24613	806	207G
24614	806	211A
24615	806	219R
24616	806	246A
24617	806	248V
24618	806	253E
24619	806	261V
24620	806	267P
24621	806	269P
24622	806	273R
24623	806	275E
24624	806	282Ip
24625	806	285V
24626	807	9Y
24627	807	11Am
24628	807	14R
24629	807	16Gr
24630	807	41A
24631	807	45Ee
24632	807	56G
24633	807	59Y
24634	807	62Rn
24635	807	66qIy
24636	807	70aQa
24637	807	74D
24638	807	76Es
24639	807	80rNLrg
24640	807	90A
24641	807	105P
24642	807	107G
24643	807	127N
24644	807	131S
24645	807	138T
24646	807	142I
24647	807	144tQr
24648	807	147W
24649	807	150aARv
24650	807	156D
24651	807	158A
24652	807	163L
24653	807	166Es
24654	807	171Y
24655	807	177Et
24656	807	180Q
24407	801	207G
24408	801	211A
24409	801	219R
24410	801	246A
24411	801	248V
24412	801	253E
24413	801	261V
24414	801	267P
24415	801	269P
24416	801	273R
24417	801	275E
24418	801	282Ip
24419	801	285V
24420	802	9Y
24421	802	11Am
24422	802	14R
24423	802	16Gr
24424	802	41A
24425	802	45Te
24426	802	56G
24427	802	59Y
24428	802	62Rn
24429	802	66qIc
24430	802	70tNt
24431	802	74D
24432	802	76Es
24433	802	80rNLrg
24434	802	90A
24435	802	105P
24436	802	107G
24437	802	127N
24438	802	131S
24439	802	138T
24440	802	142I
24441	802	144tQr
24442	802	147W
24443	802	150aARe
24444	802	156L
24445	802	158A
24446	802	163L
24447	802	166Ew
24448	802	171H
24449	802	177Et
24450	802	180Q
24451	803	9Y
24452	803	11Am
24453	803	14R
24454	803	16Gr
24455	803	41A
24456	803	45Te
24457	803	56G
24458	803	59Y
24459	803	62Rn
24460	803	66qIf
24461	803	70tNt
24462	803	74Y
24463	803	76Es
24464	803	80rNLrg
24465	803	90A
24466	803	105P
24467	803	107G
24468	803	127N
24469	803	131S
24470	803	138T
24471	803	142I
24472	803	144tQr
24473	803	147W
24474	803	150aARv
24475	803	156L
24476	803	158A
24477	803	163L
24478	803	166Ew
24479	803	171Y
24480	803	177Et
24481	803	180Q
24482	803	183P
24483	803	186K
24484	803	193Pv
24485	803	199A
24486	803	207G
24487	803	211A
24488	803	219R
24489	803	246A
24490	803	248V
24491	803	253E
24492	803	261V
24493	803	267P
24494	803	269P
24495	803	273R
24496	803	275E
24497	803	282Ip
24498	803	285V
24499	804	9Y
24500	804	11Sv
24501	804	14R
24502	804	16Gr
24503	804	41A
24504	804	45Ee
24505	804	56G
24506	804	59Y
24507	804	62Rn
24508	804	66qIy
24509	804	70aQa
24510	804	74D
24511	804	76Es
24512	804	80rNLrg
24513	804	90A
24514	804	105P
24515	804	107G
24516	804	127N
24517	804	131R
24518	804	138T
24519	804	142I
24520	804	144sQr
24521	804	147L
24522	804	150aARv
24523	804	156L
24524	804	158A
24525	804	163E
24526	804	166Ew
24527	804	171Y
24528	804	177Dk
24529	804	180E
24530	804	183P
24531	804	186K
24532	804	193Pi
24533	804	199A
24534	804	207G
24535	804	211A
24536	804	219R
24537	804	246TA
24538	804	248V
24539	804	253E
24540	804	261V
24541	804	267P
24542	804	269P
24543	804	273R
24544	804	275E
24545	804	282Vp
24546	804	285V
24547	805	9Y
24548	805	11Am
24549	805	14R
24550	805	16Gr
24551	805	41A
24552	805	45Ee
24553	805	56G
24554	805	59Y
24555	805	62Rn
24556	805	66qIy
24557	805	70aQa
24558	805	74D
24559	805	76Es
24560	805	80rNLrg
24561	805	90A
24562	805	105P
24563	805	107G
24564	805	127N
24565	805	131S
24566	805	138T
24567	805	142I
24568	805	144tQr
24569	805	147W
24570	805	150aARv
24571	805	156D
24572	805	158A
24573	805	163dL
24240	798	76Es
24241	798	80rNLrg
24242	798	90A
24243	798	105P
24244	798	107G
24245	798	127N
24246	798	131S
24247	798	138T
24248	798	142I
24249	798	144tQr
24250	798	147W
24251	798	150aARv
24252	798	156L
24253	798	158T
24254	798	163T
24255	798	166Ew
24256	798	171Y
24257	798	177Et
24258	798	180Q
24259	798	183P
24260	798	186K
24261	798	193Pi
24262	798	199A
24263	798	207G
24264	798	211A
24265	798	219R
24266	798	246A
24267	798	248V
24268	798	253E
24269	798	261V
24270	798	267P
24271	798	269P
24272	798	273R
24273	798	275E
24274	798	282Vp
24275	798	285V
24276	799	9H
24277	799	11Sv
24278	799	14R
24279	799	16Gr
24280	799	41A
24281	799	45Ee
24282	799	56G
24283	799	59Y
24284	799	62Rn
24285	799	66qIc
24286	799	70aKa
24287	799	74D
24288	799	76Vg
24289	799	80rNLrg
24290	799	90A
24291	799	105P
24292	799	107G
24293	799	127N
24294	799	131R
24295	799	138T
24296	799	142I
24297	799	144tQr
24298	799	147W
24299	799	150aARv
24300	799	156L
24301	799	158A
24302	799	163E
24303	799	166Ew
24304	799	171H
24305	799	177Et
24306	799	180Q
24307	799	183P
24308	799	186K
24309	799	193Pi
24310	799	199A
24311	799	207G
24312	799	211A
24313	799	219R
24314	799	246A
24315	799	248G
24316	799	253Q
24317	799	261V
24318	799	267QE
24319	799	269PC
24320	799	273R
24321	799	275K
24322	799	282Ip
24323	799	285V
24324	800	9Y
24325	800	11Am
24326	800	14R
24327	800	16Gr
24328	800	41A
24329	800	45Te
24330	800	56G
24331	800	59Y
24332	800	62Rn
24333	800	66qIf
24334	800	70tNt
24335	800	74D
24336	800	76Es
24337	800	80rNLrg
24338	800	90A
24339	800	105P
24340	800	107G
24341	800	127N
24342	800	131S
24343	800	138T
24344	800	142I
24345	800	144tQr
24346	800	147W
24347	800	150aARe
24348	800	156L
24349	800	158A
24350	800	163L
24351	800	166Ew
24352	800	171H
24353	800	177Et
24354	800	180Q
24355	800	183P
24356	800	186K
24357	800	193Pv
24358	800	199A
24359	800	207G
24360	800	211A
24361	800	219R
24362	800	246A
24363	800	248V
24364	800	253E
24365	800	261V
24366	800	267P
24367	800	269P
24368	800	273R
24369	800	275E
24370	800	282Ip
24371	800	285V
24372	801	9Y
24373	801	11Am
24374	801	14R
24375	801	16Gr
24376	801	41A
24377	801	45Te
24378	801	56G
24379	801	59Y
24380	801	62Rn
24381	801	66qIf
24382	801	70tNt
24383	801	74Y
24384	801	76Es
24385	801	80rNLrg
24386	801	90A
24387	801	105P
24388	801	107G
24389	801	127N
24390	801	131S
24391	801	138T
24392	801	142I
24393	801	144tQr
24394	801	147W
24395	801	150aARe
24396	801	156L
24397	801	158A
24398	801	163L
24399	801	166Ew
24400	801	171H
24401	801	177Et
24402	801	180Q
24403	801	183P
24404	801	186K
24405	801	193Pv
24406	801	199A
24073	793	199A
24074	793	207G
24075	793	211A
24076	793	219R
24077	793	246A
24078	793	248V
24079	793	253E
24080	793	261V
24081	793	267P
24082	793	269P
24083	793	273R
24084	793	275E
24085	793	282Ip
24086	793	285V
24087	794	9Y
24088	794	11Am
24089	794	14R
24090	794	16Gr
24091	794	41A
24092	794	45Te
24093	794	56G
24094	794	59Y
24095	794	62Ee
24096	794	66rNm
24097	794	70aSa
24098	794	74Y
24099	794	76En
24100	794	80rIAlr
24101	794	90A
24102	794	105P
24103	794	107G
24104	794	127N
24105	794	131S
24106	794	138T
24107	794	142I
24108	794	144tQr
24109	794	147W
24110	794	150aARv
24111	794	156L
24112	794	158A
24113	794	163L
24114	794	166Ew
24115	794	171Y
24116	794	177Et
24117	794	180Q
24118	795	9Y
24119	795	11Am
24120	795	14R
24121	795	16Gr
24122	795	41A
24123	795	45Te
24124	795	56G
24125	795	59Y
24126	795	62Ge
24127	795	66rNm
24128	795	70aSa
24129	795	74Y
24130	795	76En
24131	795	80rIAlr
24132	795	90A
24133	795	105P
24134	795	107G
24135	795	127N
24136	795	131S
24137	795	138T
24138	795	142I
24139	795	144tQr
24140	795	147L
24141	795	150aARa
24142	795	156L
24143	795	158A
24144	795	163T
24145	795	166Ew
24146	795	171Y
24147	795	177Et
24148	795	180Q
24149	796	9Y
24150	796	11Am
24151	796	14R
24152	796	16Gr
24153	796	41A
24154	796	45Te
24155	796	56G
24156	796	59Y
24157	796	62Ge
24158	796	66rNm
24159	796	70aSa
24160	796	74Y
24161	796	76En
24162	796	80rIAlr
24163	796	90A
24164	796	105P
24165	796	107G
24166	796	127N
24167	796	131S
24168	796	138T
24169	796	142I
24170	796	144tQr
24171	796	147W
24172	796	150aARe
24173	796	156L
24174	796	158A
24175	796	163L
24176	796	166Ew
24177	796	171Y
24178	796	177Et
24179	796	180Q
24180	797	9Y
24181	797	11Am
24182	797	14R
24183	797	16Gr
24184	797	41A
24185	797	45Ee
24186	797	56G
24187	797	59Y
24188	797	62Rn
24189	797	66qIf
24190	797	70tNt
24191	797	74Y
24192	797	76En
24193	797	80rIAlr
24194	797	90A
24195	797	105P
24196	797	107G
24197	797	127N
24198	797	131S
24199	797	138T
24200	797	142I
24201	797	144tQr
24202	797	147W
24203	797	150aARv
24204	797	156L
24205	797	158A
24206	797	163T
24207	797	166Ew
24208	797	171Y
24209	797	177Et
24210	797	180Q
24211	797	183P
24212	797	186K
24213	797	193Pi
24214	797	199A
24215	797	207G
24216	797	211A
24217	797	219R
24218	797	246A
24219	797	248V
24220	797	253E
24221	797	261V
24222	797	267P
24223	797	269P
24224	797	273R
24225	797	275E
24226	797	282Ip
24227	797	285V
24228	798	9Y
24229	798	11Sv
24230	798	14R
24231	798	16Gr
24232	798	41A
24233	798	45Ee
24234	798	56G
24235	798	59Y
24236	798	62Rn
24237	798	66qIy
24238	798	70aQa
24239	798	74D
23906	789	62Ge
23907	789	66rNm
23908	789	70aSa
23909	789	74Y
23910	789	76En
23911	789	80rIAlr
23912	789	90A
23913	789	105P
23914	789	107G
23915	789	127N
23916	789	131S
23917	789	138T
23918	789	142I
23919	789	144tQr
23920	789	147W
23921	789	150aARv
23922	789	156R
23923	789	158A
23924	789	163L
23925	789	166Ew
23926	789	171Y
23927	789	177Et
23928	789	180Q
23929	790	9Y
23930	790	11Am
23931	790	14R
23932	790	16Gr
23933	790	41A
23934	790	45Ma
23935	790	56G
23936	790	59Y
23937	790	62Ge
23938	790	66rNm
23939	790	70aSa
23940	790	74Y
23941	790	76En
23942	790	80rIAlr
23943	790	90A
23944	790	105P
23945	790	107G
23946	790	127N
23947	790	131S
23948	790	138T
23949	790	142Ii
23950	790	144tQr
23951	790	147W
23952	790	150aARv
23953	790	156L
23954	790	158A
23955	790	163L
23956	790	166Ew
23957	790	171Y
23958	790	177Et
23959	790	180Q
23960	791	9Y
23961	791	11Am
23962	791	14R
23963	791	16Gr
23964	791	41A
23965	791	45Ma
23966	791	56G
23967	791	59Y
23968	791	62Ge
23969	791	66rNm
23970	791	70aSa
23971	791	74Y
23972	791	76En
23973	791	80rIAlr
23974	791	90A
23975	791	105P
23976	791	107G
23977	791	127N
23978	791	131S
23979	791	138T
23980	791	142I
23981	791	144tQr
23982	791	147W
23983	791	150aARv
23984	791	156L
23985	791	158A
23986	791	163L
23987	791	166Es
23988	791	171Y
23989	791	177Et
23990	791	180Q
23991	792	9Y
23992	792	11Am
23993	792	14R
23994	792	16Gr
23995	792	41A
23996	792	45Te
23997	792	56G
23998	792	59Y
23999	792	62Ge
24000	792	66rNm
24001	792	70aSa
24002	792	74Y
24003	792	76En
24004	792	80rIAlr
24005	792	90A
24006	792	105P
24007	792	107G
24008	792	127N
24009	792	131S
24010	792	138T
24011	792	142I
24012	792	144tQr
24013	792	147W
24014	792	150aARv
24015	792	156L
24016	792	158A
24017	792	163L
24018	792	166Ew
24019	792	171Y
24020	792	177Et
24021	792	180Q
24022	792	183P
24023	792	186K
24024	792	193Pv
24025	792	199A
24026	792	207G
24027	792	211A
24028	792	219R
24029	792	246A
24030	792	248V
24031	792	253E
24032	792	261V
24033	792	267P
24034	792	269P
24035	792	273R
24036	792	275E
24037	792	282Ip
24038	792	285V
24039	793	9Y
24040	793	11Am
24041	793	14R
24042	793	16Gr
24043	793	41A
24044	793	45Te
24045	793	56G
24046	793	59Y
24047	793	62Ge
24048	793	66rNm
24049	793	70aSa
24050	793	74Y
24051	793	76En
24052	793	80rIAlr
24053	793	90A
24054	793	105P
24055	793	107G
24056	793	127N
24057	793	131S
24058	793	138T
24059	793	142I
24060	793	144tQr
24061	793	147W
24062	793	150aARv
24063	793	156L
24064	793	158A
24065	793	163L
24066	793	166Ew
24067	793	171Y
24068	793	177Et
24069	793	180Q
24070	793	183P
24071	793	186K
24072	793	193Pv
23739	784	180Q
23740	785	9Y
23741	785	11Am
23742	785	14R
23743	785	16Gr
23744	785	41A
23745	785	45Ma
23746	785	56G
23747	785	59Y
23748	785	62Ge
23749	785	66rNm
23750	785	70aSa
23751	785	74Y
23752	785	76En
23753	785	80rIAlr
23754	785	90A
23755	785	105P
23756	785	107G
23757	785	127N
23758	785	131S
23759	785	138T
23760	785	142I
23761	785	144tQr
23762	785	147W
23763	785	150aARv
23764	785	156L
23765	785	158A
23766	785	163L
23767	785	166Ew
23768	785	171Y
23769	785	177Et
23770	785	180Q
23771	785	183P
23772	785	186K
23773	785	193Pi
23774	785	199A
23775	785	207G
23776	785	211A
23777	785	219R
23778	785	246A
23779	785	248V
23780	785	253E
23781	785	261V
23782	785	267P
23783	785	269P
23784	785	273R
23785	785	275E
23786	785	282Vp
23787	785	285V
23788	786	9Y
23789	786	11Am
23790	786	14R
23791	786	16Gr
23792	786	41A
23793	786	45Ma
23794	786	56G
23795	786	59Y
23796	786	62Ge
23797	786	66rNm
23798	786	70aSa
23799	786	74Y
23800	786	76En
23801	786	80rIAlr
23802	786	90A
23803	786	105P
23804	786	107G
23805	786	127N
23806	786	131S
23807	786	138T
23808	786	142I
23809	786	144tQr
23810	786	147W
23811	786	150aARv
23812	786	156R
23813	786	158A
23814	786	163L
23815	786	166Ew
23816	786	171Y
23817	786	177Et
23818	786	180Q
23819	786	183P
23820	786	186K
23821	786	193Pi
23822	786	199A
23823	786	207G
23824	786	211A
23825	786	219R
23826	786	246A
23827	786	248V
23828	786	253E
23829	786	261V
23830	786	267P
23831	786	269P
23832	786	273R
23833	786	275E
23834	786	282Vp
23835	786	285V
23836	787	9Y
23837	787	11Am
23838	787	14R
23839	787	16Gr
23840	787	41A
23841	787	45Ma
23842	787	56G
23843	787	59Y
23844	787	62Ge
23845	787	66rNm
23846	787	70aSa
23847	787	74Y
23848	787	76En
23849	787	80rIAlr
23850	787	90A
23851	787	105P
23852	787	107G
23853	787	127N
23854	787	131S
23855	787	138T
23856	787	142I
23857	787	144tQr
23858	787	147W
23859	787	150aARv
23860	787	156L
23861	787	158A
23862	787	163L
23863	787	166Ew
23864	787	171Y
23865	787	177Et
23866	787	180Q
23867	788	9Y
23868	788	11Am
23869	788	14R
23870	788	16Gr
23871	788	41A
23872	788	45Ma
23873	788	56G
23874	788	59Y
23875	788	62Ge
23876	788	66rNm
23877	788	70aSa
23878	788	74Y
23879	788	76En
23880	788	80rIAlr
23881	788	90A
23882	788	105P
23883	788	107G
23884	788	127N
23885	788	131S
23886	788	138T
23887	788	142I
23888	788	144tQr
23889	788	147W
23890	788	150aARv
23891	788	156R
23892	788	158A
23893	788	163L
23894	788	166Ew
23895	788	171Y
23896	788	177Et
23897	788	180Q
23898	789	9Y
23899	789	11Am
23900	789	14R
23901	789	16Gr
23902	789	41A
23903	789	45Ma
23904	789	56G
23905	789	59Y
23572	780	41A
23573	780	45Ee
23574	780	56G
23575	780	59Y
23576	780	62Rn
23577	780	66qIy
23578	780	70aQa
23579	780	74D
23580	780	76Es
23581	780	80rNLrg
23582	780	90A
23583	780	105P
23584	780	107G
23585	780	127N
23586	780	131S
23587	780	138T
23588	780	142I
23589	780	144tQr
23590	780	147W
23591	780	150aARe
23592	780	156W
23593	780	158A
23594	780	163L
23595	780	166Ew
23596	780	171Y
23597	780	177Et
23598	780	180Q
23599	780	183P
23600	780	186K
23601	780	193Pi
23602	780	199A
23603	780	207G
23604	780	211A
23605	780	219R
23606	780	246A
23607	780	248V
23608	780	253E
23609	780	261V
23610	780	267P
23611	780	269P
23612	780	273R
23613	780	275E
23614	780	282Ip
23615	780	285V
23616	781	9Y
23617	781	11Am
23618	781	14R
23619	781	16Gr
23620	781	41A
23621	781	45Ee
23622	781	56G
23623	781	59Y
23624	781	62Rn
23625	781	66qIy
23626	781	70aQa
23627	781	74D
23628	781	76Es
23629	781	80rNLrg
23630	781	90A
23631	781	105P
23632	781	107G
23633	781	127N
23634	781	131S
23635	781	138T
23636	781	142I
23637	781	144tQr
23638	781	147W
23639	781	150aARv
23640	781	156L
23641	781	158A
23642	781	163L
23643	781	166Ew
23644	781	171Y
23645	781	177Et
23646	781	180Q
23647	782	9Y
23648	782	11Am
23649	782	14R
23650	782	16Gr
23651	782	41A
23652	782	45Ee
23653	782	56G
23654	782	59Y
23655	782	62Rn
23656	782	66qIy
23657	782	70aQa
23658	782	74D
23659	782	76Es
23660	782	80rNLrg
23661	782	90A
23662	782	105P
23663	782	107G
23664	782	127N
23665	782	131S
23666	782	138T
23667	782	142I
23668	782	144tQr
23669	782	147W
23670	782	150aARe
23671	782	156L
23672	782	158A
23673	782	163L
23674	782	166Ew
23675	782	171H
23676	782	177Et
23677	782	180Q
23678	783	9Y
23679	783	11Am
23680	783	14R
23681	783	16Gr
23682	783	41A
23683	783	45Te
23684	783	56G
23685	783	59Y
23686	783	62Rn
23687	783	66qIy
23688	783	70aQa
23689	783	74D
23690	783	76Es
23691	783	80rNLrg
23692	783	90A
23693	783	105P
23694	783	107G
23695	783	127N
23696	783	131S
23697	783	138T
23698	783	142I
23699	783	144tQr
23700	783	147W
23701	783	150aARe
23702	783	156L
23703	783	158A
23704	783	163L
23705	783	166Ew
23706	783	171H
23707	783	177Et
23708	783	180Q
23709	784	9Y
23710	784	11Am
23711	784	14R
23712	784	16Gr
23713	784	41A
23714	784	45Ee
23715	784	56G
23716	784	59Y
23717	784	62Rn
23718	784	66qIy
23719	784	70aQa
23720	784	74D
23721	784	76En
23722	784	80rTAlr
23723	784	90A
23724	784	105P
23725	784	107G
23726	784	127N
23727	784	131S
23728	784	138T
23729	784	142I
23730	784	144tQr
23731	784	147W
23732	784	150aARv
23733	784	156L
23734	784	158A
23735	784	163L
23736	784	166Ew
23737	784	171Y
23738	784	177Et
23405	775	163L
23406	775	166Ew
23407	775	171Y
23408	775	177Et
23409	775	180Q
23410	776	9Y
23411	776	11Am
23412	776	14R
23413	776	16Gr
23414	776	41A
23415	776	45Ee
23416	776	56G
23417	776	59Y
23418	776	62Rn
23419	776	66qIy
23420	776	70aQa
23421	776	74D
23422	776	76Es
23423	776	80rNLrg
23424	776	90A
23425	776	105P
23426	776	107G
23427	776	127N
23428	776	131S
23429	776	138T
23430	776	142I
23431	776	144tQr
23432	776	147W
23433	776	150aARe
23434	776	156R
23435	776	158A
23436	776	163E
23437	776	166Ew
23438	776	171Y
23439	776	177Et
23440	776	180Q
23441	777	9Y
23442	777	11Sv
23443	777	14R
23444	777	16Gr
23445	777	41A
23446	777	45Ee
23447	777	56G
23448	777	59Y
23449	777	62Rn
23450	777	66qIy
23451	777	70aQa
23452	777	74D
23453	777	76Es
23454	777	80rNLrg
23455	777	90A
23456	777	105P
23457	777	107G
23458	777	127N
23459	777	131S
23460	777	138T
23461	777	142I
23462	777	144tQr
23463	777	147W
23464	777	150aARv
23465	777	156L
23466	777	158A
23467	777	163T
23468	777	166Ew
23469	777	171Y
23470	777	177Et
23471	777	180Q
23472	778	9Y
23473	778	11Am
23474	778	14R
23475	778	16Gr
23476	778	41A
23477	778	45Ee
23478	778	56G
23479	778	59Y
23480	778	62Rn
23481	778	66qIy
23482	778	70aQa
23483	778	74D
23484	778	76Es
23485	778	80rNLrg
23486	778	90A
23487	778	105P
23488	778	107G
23489	778	127N
23490	778	131S
23491	778	138T
23492	778	142I
23493	778	144tQr
23494	778	147W
23495	778	150aARv
23496	778	156L
23497	778	158A
23498	778	163L
23499	778	166Ew
23500	778	171Y
23501	778	177Et
23502	778	180Q
23503	778	183P
23504	778	186K
23505	778	193Pi
23506	778	199A
23507	778	207G
23508	778	211A
23509	778	219R
23510	778	246A
23511	778	248V
23512	778	253E
23513	778	261V
23514	778	267P
23515	778	269P
23516	778	273R
23517	778	275E
23518	778	282Ip
23519	778	285V
23520	779	9Y
23521	779	11Am
23522	779	14R
23523	779	16Gr
23524	779	41A
23525	779	45Ee
23526	779	56G
23527	779	59Y
23528	779	62Rn
23529	779	66qIy
23530	779	70aQa
23531	779	74D
23532	779	76Es
23533	779	80rNLrg
23534	779	90A
23535	779	105P
23536	779	107G
23537	779	127N
23538	779	131S
23539	779	138T
23540	779	142I
23541	779	144tQr
23542	779	147W
23543	779	150aARv
23544	779	156L
23545	779	158A
23546	779	163L
23547	779	166Ew
23548	779	171Y
23549	779	177Et
23550	779	180Q
23551	779	183P
23552	779	186K
23553	779	193Pi
23554	779	199A
23555	779	207G
23556	779	211A
23557	779	219R
23558	779	246A
23559	779	248V
23560	779	253E
23561	779	261V
23562	779	267P
23563	779	269P
23564	779	273R
23565	779	275E
23566	779	282Ip
23567	779	285V
23568	780	9Y
23569	780	11Am
23570	780	14R
23571	780	16Gr
23238	771	9Y
23239	771	11Am
23240	771	14R
23241	771	16Gr
23242	771	41A
23243	771	45Ee
23244	771	56G
23245	771	59Y
23246	771	62Rn
23247	771	66qIy
23248	771	70aQa
23249	771	74D
23250	771	76Vs
23251	771	80rNLrg
23252	771	90A
23253	771	105P
23254	771	107G
23255	771	127N
23256	771	131S
23257	771	138T
23258	771	142I
23259	771	144tQr
23260	771	147W
23261	771	150aARe
23262	771	156L
23263	771	158A
23264	771	163T
23265	771	166Ew
23266	771	171Y
23267	771	177Et
23268	771	180Q
23269	772	9Y
23270	772	11Am
23271	772	14R
23272	772	16Gr
23273	772	41A
23274	772	45Ee
23275	772	56G
23276	772	59Y
23277	772	62Rn
23278	772	66qIy
23279	772	70aQa
23280	772	74D
23281	772	76Es
23282	772	80rNLrg
23283	772	90A
23284	772	105P
23285	772	107G
23286	772	127N
23287	772	131R
23288	772	138T
23289	772	142I
23290	772	144tQr
23291	772	147W
23292	772	150aARv
23293	772	156L
23294	772	158A
23295	772	163T
23296	772	166Ew
23297	772	171Y
23298	772	177Et
23299	772	180Q
23300	773	9Y
23301	773	11Am
23302	773	14R
23303	773	16Gr
23304	773	41A
23305	773	45Ee
23306	773	56GA
23307	773	59Y
23308	773	62Rn
23309	773	66qIy
23310	773	70aQa
23311	773	74D
23312	773	76Es
23313	773	80rNLrg
23314	773	90A
23315	773	105P
23316	773	107G
23317	773	127N
23318	773	131S
23319	773	138T
23320	773	142I
23321	773	144tQr
23322	773	147W
23323	773	150aARe
23324	773	156L
23325	773	158A
23326	773	163T
23327	773	166Ew
23328	773	171Y
23329	773	177Et
23330	773	180Q
23331	773	183P
23332	773	186K
23333	773	193Pi
23334	773	199A
23335	773	207G
23336	773	211A
23337	773	219R
23338	773	246A
23339	773	248V
23340	773	253E
23341	773	261V
23342	773	267P
23343	773	269P
23344	773	273R
23345	773	275E
23346	773	282Ip
23347	773	285V
23348	774	9Y
23349	774	11Am
23350	774	14R
23351	774	16Gr
23352	774	41A
23353	774	45Ge
23354	774	56G
23355	774	59Y
23356	774	62Rn
23357	774	66qIy
23358	774	70aQa
23359	774	74D
23360	774	76Es
23361	774	80rNLrg
23362	774	90A
23363	774	105P
23364	774	107G
23365	774	127N
23366	774	131S
23367	774	138T
23368	774	142I
23369	774	144tQr
23370	774	147W
23371	774	150aARv
23372	774	156L
23373	774	158A
23374	774	163T
23375	774	166Ew
23376	774	171Y
23377	774	177Et
23378	774	180Q
23379	775	9Y
23380	775	11Am
23381	775	14R
23382	775	16Gr
23383	775	41A
23384	775	45Ee
23385	775	56G
23386	775	59Y
23387	775	62Rn
23388	775	66qIy
23389	775	70aQa
23390	775	74D
23391	775	76Es
23392	775	80rNLrg
23393	775	90A
23394	775	105P
23395	775	107G
23396	775	127N
23397	775	131R
23398	775	138T
23399	775	142I
23400	775	144tQr
23401	775	147W
23402	775	150aARv
23403	775	156L
23404	775	158A
23071	767	62Rn
23072	767	66qIy
23073	767	70aQa
23074	767	74D
23075	767	76Es
23076	767	80rNLrg
23077	767	90A
23078	767	105P
23079	767	107G
23080	767	127N
23081	767	131S
23082	767	138T
23083	767	142I
23084	767	144tQr
23085	767	147W
23086	767	150aARv
23087	767	156L
23088	767	158A
23089	767	163T
23090	767	166Ew
23091	767	171Y
23092	767	177Et
23093	767	180Q
23094	767	183P
23095	767	186K
23096	767	193Pi
23097	767	199A
23098	767	207G
23099	767	211A
23100	767	219R
23101	767	246A
23102	767	248V
23103	767	253E
23104	767	261V
23105	767	267P
23106	767	269P
23107	767	273R
23108	767	275E
23109	767	282Ip
23110	767	285V
23111	768	9H
23112	768	11Am
23113	768	14R
23114	768	16Gr
23115	768	41A
23116	768	45GeV
23117	768	56G
23118	768	59Y
23119	768	62Rn
23120	768	66qIy
23121	768	70aQa
23122	768	74D
23123	768	76Es
23124	768	80rNLrg
23125	768	90A
23126	768	105P
23127	768	107G
23128	768	127N
23129	768	131S
23130	768	138T
23131	768	142I
23132	768	144tQr
23133	768	147W
23134	768	150aARv
23135	768	156L
23136	768	158A
23137	768	163T
23138	768	166Ew
23139	768	171Y
23140	768	177Et
23141	768	180Q
23142	769	9Y
23143	769	11Am
23144	769	14R
23145	769	16Gr
23146	769	41A
23147	769	45Ee
23148	769	56G
23149	769	59Y
23150	769	62Rn
23151	769	66qIy
23152	769	70aQa
23153	769	74D
23154	769	76Es
23155	769	80rNLrg
23156	769	90A
23157	769	105P
23158	769	107G
23159	769	127N
23160	769	131S
23161	769	138T
23162	769	142I
23163	769	144tQr
23164	769	147W
23165	769	150aARe
23166	769	156L
23167	769	158A
23168	769	163T
23169	769	166Ew
23170	769	171Y
23171	769	177Et
23172	769	180Q
23173	769	183P
23174	769	186K
23175	769	193Pi
23176	769	199A
23177	769	207G
23178	769	211A
23179	769	219R
23180	769	246A
23181	769	248V
23182	769	253E
23183	769	261V
23184	769	267P
23185	769	269P
23186	769	273R
23187	769	275E
23188	769	282Ip
23189	769	285V
23190	770	9Y
23191	770	11Am
23192	770	14R
23193	770	16Gr
23194	770	41A
23195	770	45Ee
23196	770	56G
23197	770	59Y
23198	770	62Rn
23199	770	66qIy
23200	770	70aQa
23201	770	74D
23202	770	76Es
23203	770	80rNLrg
23204	770	90A
23205	770	105P
23206	770	107G
23207	770	127N
23208	770	131S
23209	770	138T
23210	770	142I
23211	770	144tQr
23212	770	147W
23213	770	150aARv
23214	770	156L
23215	770	158A
23216	770	163T
23217	770	166Ew
23218	770	171Y
23219	770	177Et
23220	770	180Q
23221	770	183P
23222	770	186K
23223	770	193Pi
23224	770	199A
23225	770	207G
23226	770	211A
23227	770	219R
23228	770	246A
23229	770	248V
23230	770	253E
23231	770	261V
23232	770	267P
23233	770	269P
23234	770	273R
23235	770	275E
23236	770	282Ip
23237	770	285V
22904	761	166Ew
22905	761	171H
22906	761	177Et
22907	761	180Q
22908	762	9Y
22909	762	11Am
22910	762	14R
22911	762	16Gr
22912	762	41A
22913	762	45Te
22914	762	56G
22915	762	59Y
22916	762	62Rn
22917	762	66qIf
22918	762	70tNt
22919	762	74Y
22920	762	76Ed
22921	762	80rTLlr
22922	762	90A
22923	762	105P
22924	762	107G
22925	762	127N
22926	762	131S
22927	762	138T
22928	762	142I
22929	762	144tQr
22930	762	147W
22931	762	150aARv
22932	762	156L
22933	762	158A
22934	762	163L
22935	762	166Ew
22936	762	171Y
22937	762	177Et
22938	762	180Q
22939	763	9Y
22940	763	11Am
22941	763	14R
22942	763	16Gr
22943	763	41A
22944	763	45Te
22945	763	56G
22946	763	59Y
22947	763	62Rn
22948	763	66qIf
22949	763	70tNt
22950	763	74Y
22951	763	76En
22952	763	80rIAlr
22953	763	90A
22954	763	105P
22955	763	107G
22956	763	127N
22957	763	131S
22958	763	138T
22959	763	142I
22960	763	144tQr
22961	763	147W
22962	763	150aARv
22963	763	156L
22964	763	158A
22965	763	163L
22966	763	166Ew
22967	763	171Y
22968	763	177Et
22969	763	180Q
22970	764	9Y
22971	764	11Am
22972	764	14R
22973	764	16Gr
22974	764	41A
22975	764	45Te
22976	764	56G
22977	764	59Y
22978	764	62Rn
22979	764	66qIf
22980	764	70tNt
22981	764	74Y
22982	764	76Es
22983	764	80rIAlr
22984	764	90A
22985	764	105P
22986	764	107G
22987	764	127N
22988	764	131S
22989	764	138T
22990	764	142I
22991	764	144tQr
22992	764	147W
22993	764	150aARv
22994	764	156L
22995	764	158A
22996	764	163L
22997	764	166Ew
22998	764	171Y
22999	764	177Et
23000	764	180Q
23001	765	9Y
23002	765	11Am
23003	765	14R
23004	765	16Gr
23005	765	41A
23006	765	45Te
23007	765	56G
23008	765	59Y
23009	765	62Rn
23010	765	66qIf
23011	765	70tNt
23012	765	74Y
23013	765	76En
23014	765	80rIAlr
23015	765	90A
23016	765	105P
23017	765	107G
23018	765	127N
23019	765	131S
23020	765	138T
23021	765	142I
23022	765	144tQr
23023	765	147W
23024	765	150aARe
23025	765	156L
23026	765	158A
23027	765	163L
23028	765	166Ew
23029	765	171H
23030	765	177Et
23031	765	180Q
23032	766	9Y
23033	766	11Am
23034	766	14R
23035	766	16Gr
23036	766	41A
23037	766	45Te
23038	766	56G
23039	766	59Y
23040	766	62Rn
23041	766	66qIf
23042	766	70tNt
23043	766	74Y
23044	766	76En
23045	766	80rIAlr
23046	766	90A
23047	766	105P
23048	766	107G
23049	766	127N
23050	766	131S
23051	766	138T
23052	766	142I
23053	766	144tQr
23054	766	147W
23055	766	150aARv
23056	766	156L
23057	766	158A
23058	766	163L
23059	766	166Ew
23060	766	171Y
23061	766	177Et
23062	766	180Q
23063	767	9Y
23064	767	11Am
23065	767	14R
23066	767	16Gr
23067	767	41A
23068	767	45GeV
23069	767	56G
23070	767	59Y
22737	757	131S
22738	757	138T
22739	757	142I
22740	757	144tQr
22741	757	147W
22742	757	150aARe
22743	757	156L
22744	757	158A
22745	757	163L
22746	757	166Ew
22747	757	171H
22748	757	177Et
22749	757	180Q
22750	757	183P
22751	757	186K
22752	757	193Pv
22753	757	199A
22754	757	207G
22755	757	211A
22756	757	219R
22757	757	246A
22758	757	248V
22759	757	253E
22760	757	261V
22761	757	267P
22762	757	269P
22763	757	273R
22764	757	275E
22765	757	282Ip
22766	757	285V
22767	758	9Y
22768	758	11Am
22769	758	14R
22770	758	16Gr
22771	758	41A
22772	758	45Ma
22773	758	56G
22774	758	59Y
22775	758	62Re
22776	758	66qIs
22777	758	70tNt
22778	758	74Y
22779	758	76En
22780	758	80rIAlr
22781	758	90A
22782	758	105P
22783	758	107G
22784	758	127N
22785	758	131S
22786	758	138T
22787	758	142I
22788	758	144tQr
22789	758	147W
22790	758	150aARe
22791	758	156L
22792	758	158A
22793	758	163L
22794	758	166Ew
22795	758	171H
22796	758	177Et
22797	758	180Q
22798	759	9Y
22799	759	11Am
22800	759	14R
22801	759	16Gr
22802	759	41A
22803	759	45Te
22804	759	56G
22805	759	59Y
22806	759	62Re
22807	759	66qIs
22808	759	70tNt
22809	759	74Y
22810	759	76En
22811	759	80rIAlr
22812	759	90A
22813	759	105P
22814	759	107G
22815	759	127N
22816	759	131S
22817	759	138T
22818	759	142I
22819	759	144tQr
22820	759	147W
22821	759	150aARv
22822	759	156L
22823	759	158A
22824	759	163L
22825	759	166Ew
22826	759	171Y
22827	759	177Et
22828	759	180Q
22829	760	9Y
22830	760	11Am
22831	760	14R
22832	760	16Gr
22833	760	41A
22834	760	45Te
22835	760	56G
22836	760	59Y
22837	760	62Rn
22838	760	66qIf
22839	760	70tNt
22840	760	74Y
22841	760	76En
22842	760	80rIAlr
22843	760	90A
22844	760	105P
22845	760	107G
22846	760	127N
22847	760	131S
22848	760	138T
22849	760	142I
22850	760	144tQr
22851	760	147W
22852	760	150aARv
22853	760	156L
22854	760	158A
22855	760	163L
22856	760	166Ew
22857	760	171Y
22858	760	177Et
22859	760	180Q
22860	760	183P
22861	760	186K
22862	760	193Pv
22863	760	199A
22864	760	207G
22865	760	211A
22866	760	219R
22867	760	246A
22868	760	248V
22869	760	253E
22870	760	261V
22871	760	267P
22872	760	269P
22873	760	273R
22874	760	275E
22875	760	282Ip
22876	760	285V
22877	761	9Y
22878	761	11Am
22879	761	14R
22880	761	16Gr
22881	761	41A
22882	761	45Ma
22883	761	56G
22884	761	59Y
22885	761	62Rn
22886	761	66qIf
22887	761	70tNt
22888	761	74Y
22889	761	76En
22890	761	80rIAlr
22891	761	90A
22892	761	105P
22893	761	107G
22894	761	127N
22895	761	131S
22896	761	138T
22897	761	142I
22898	761	144tQr
22899	761	147W
22900	761	150aARv
22901	761	156L
22902	761	158A
22903	761	163L
22570	752	56G
22571	752	59Y
22572	752	62Rn
22573	752	66qIf
22574	752	70tNt
22575	752	74D
22576	752	76En
22577	752	80rIAlr
22578	752	90A
22579	752	105P
22580	752	107G
22581	752	127N
22582	752	131S
22583	752	138T
22584	752	142I
22585	752	144tQr
22586	752	147W
22587	752	150aARv
22588	752	156D
22589	752	158A
22590	752	163L
22591	752	166Ew
22592	752	171H
22593	752	177Et
22594	752	180Q
22595	753	9Y
22596	753	11Am
22597	753	14R
22598	753	16Gr
22599	753	41A
22600	753	45Te
22601	753	56G
22602	753	59Y
22603	753	62Rn
22604	753	66qIf
22605	753	70tNt
22606	753	74Y
22607	753	76En
22608	753	80rIAlr
22609	753	90A
22610	753	105P
22611	753	107G
22612	753	127N
22613	753	131S
22614	753	138T
22615	753	142I
22616	753	144tQr
22617	753	147W
22618	753	150aARe
22619	753	156L
22620	753	158A
22621	753	163T
22622	753	166Ew
22623	753	171H
22624	753	177Et
22625	753	180Q
22626	754	9Y
22627	754	11Am
22628	754	14R
22629	754	16Gr
22630	754	41A
22631	754	45Te
22632	754	56G
22633	754	59Y
22634	754	62Rn
22635	754	66qIc
22636	754	70tNt
22637	754	74Y
22638	754	76En
22639	754	80rIAlr
22640	754	90A
22641	754	105P
22642	754	107G
22643	754	127N
22644	754	131S
22645	754	138T
22646	754	142I
22647	754	144tQr
22648	754	147W
22649	754	150aARe
22650	754	156L
22651	754	158A
22652	754	163L
22653	754	166Ew
22654	754	171H
22655	754	177Et
22656	754	180Q
22657	755	9Y
22658	755	11Am
22659	755	14R
22660	755	16Gr
22661	755	41A
22662	755	45Te
22663	755	56G
22664	755	59Y
22665	755	62Rn
22666	755	66qIf
22667	755	70tNt
22668	755	74Y
22669	755	76En
22670	755	80rIAlr
22671	755	90A
22672	755	105P
22673	755	107G
22674	755	127N
22675	755	131S
22676	755	138T
22677	755	142I
22678	755	144tQr
22679	755	147W
22680	755	150aARe
22681	755	156L
22682	755	158A
22683	755	163L
22684	755	166Es
22685	755	171Y
22686	755	177Et
22687	755	180Q
22688	756	9Y
22689	756	11Am
22690	756	14R
22691	756	16Gr
22692	756	41A
22693	756	45Te
22694	756	56G
22695	756	59Y
22696	756	62Rn
22697	756	66qIf
22698	756	70tNt
22699	756	74Y
22700	756	76En
22701	756	80rIAlr
22702	756	90A
22703	756	105P
22704	756	107G
22705	756	127N
22706	756	131R
22707	756	138T
22708	756	142I
22709	756	144tQr
22710	756	147W
22711	756	150aARe
22712	756	156L
22713	756	158A
22714	756	163L
22715	756	166Ew
22716	756	171H
22717	756	177Et
22718	756	180Q
22719	757	9Y
22720	757	11Am
22721	757	14R
22722	757	16Gr
22723	757	41A
22724	757	45Te
22725	757	56G
22726	757	59Y
22727	757	62Re
22728	757	66qIs
22729	757	70tNt
22730	757	74Y
22731	757	76En
22732	757	80rIAlr
22733	757	90A
22734	757	105P
22735	757	107G
22736	757	127N
22403	746	158A
22404	746	163L
22405	746	166Ew
22406	746	171H
22407	746	177Et
22408	746	180Q
22409	747	9Y
22410	747	11Am
22411	747	14R
22412	747	16Gr
22413	747	41A
22414	747	45Te
22415	747	56G
22416	747	59Y
22417	747	62Rn
22418	747	66qIf
22419	747	70tNt
22420	747	74Y
22421	747	76En
22422	747	80rIAlr
22423	747	90A
22424	747	105P
22425	747	107G
22426	747	127N
22427	747	131S
22428	747	138T
22429	747	142I
22430	747	144tQr
22431	747	147W
22432	747	150aARv
22433	747	156L
22434	747	158A
22435	747	163L
22436	747	166Ew
22437	747	171Y
22438	747	177Et
22439	747	180Q
22440	748	9Y
22441	748	11Am
22442	748	14R
22443	748	16Gr
22444	748	41A
22445	748	45Te
22446	748	56G
22447	748	59Y
22448	748	62Rn
22449	748	66qIf
22450	748	70tNt
22451	748	74Y
22452	748	76En
22453	748	80rIAlr
22454	748	90A
22455	748	105P
22456	748	107G
22457	748	127N
22458	748	131S
22459	748	138T
22460	748	142I
22461	748	144tQr
22462	748	147W
22463	748	150aARe
22464	748	156L
22465	748	158A
22466	748	163E
22467	748	166Ew
22468	748	171H
22469	748	177Et
22470	748	180Q
22471	749	9Y
22472	749	11Am
22473	749	14R
22474	749	16Gr
22475	749	41A
22476	749	45Te
22477	749	56G
22478	749	59Y
22479	749	62Rn
22480	749	66qIf
22481	749	70tNt
22482	749	74Y
22483	749	76En
22317	744	11Am
22484	749	80rIAlr
22485	749	90A
22486	749	105P
22487	749	107G
22488	749	127N
22489	749	131S
22490	749	138T
22491	749	142I
22492	749	144tQr
22493	749	147W
22494	749	150aARe
22495	749	156L
22496	749	158A
22497	749	163L
22498	749	166Ew
22499	749	171H
22500	749	177Et
22501	749	180Q
22502	750	9Y
22503	750	11Am
22504	750	14R
22505	750	16Gr
22506	750	41A
22507	750	45Te
22508	750	56G
22509	750	59Y
22510	750	62Rn
22511	750	66qIf
22512	750	70tNt
22513	750	74Y
22514	750	76En
22515	750	80rIAlr
22516	750	90A
22517	750	105P
22518	750	107G
22519	750	127N
22520	750	131S
22521	750	138T
22522	750	142I
22523	750	144tQr
22524	750	147W
22525	750	150aARe
22526	750	156L
22527	750	158A
22528	750	163L
22529	750	166Ew
22530	750	171H
22531	750	177Et
22532	750	180Q
22533	751	9Y
22534	751	11Am
22535	751	14R
22536	751	16Gr
22537	751	41A
22538	751	45Te
22539	751	56G
22540	751	59Y
22541	751	62Rn
22542	751	66qIf
22543	751	70tNt
22544	751	74Y
22545	751	76En
22546	751	80rIAlr
22547	751	90A
22548	751	105P
22549	751	107G
22550	751	127N
22551	751	131S
22552	751	138T
22553	751	142I
22554	751	144tQr
22555	751	147W
22556	751	150aARv
22557	751	156L
22558	751	158T
22559	751	163L
22560	751	166Ew
22561	751	171H
22562	751	177Et
22563	751	180Q
22564	752	9Y
22565	752	11Am
22566	752	14R
22567	752	16Gr
22568	752	41A
22569	752	45Te
22236	741	285V
22237	742	9Y
22238	742	11Am
22239	742	14R
22240	742	16Gr
22241	742	41A
22242	742	45Te
22243	742	56G
22244	742	59Y
22245	742	62Rn
22246	742	66qIf
22247	742	70tNt
22248	742	74Y
22249	742	76En
22250	742	80rIAlr
22251	742	90A
22252	742	105P
22253	742	107G
22254	742	127N
22255	742	131S
22256	742	138T
22257	742	142I
22258	742	144tQr
22259	742	147W
22260	742	150aARv
22261	742	156L
22262	742	158A
22263	742	163L
22264	742	166Ew
22265	742	171H
22266	742	177Et
22267	742	180Q
22268	743	9Y
22269	743	11Am
22270	743	14R
22271	743	16Gr
22272	743	41A
22273	743	45Te
22274	743	56G
22275	743	59Y
22276	743	62Rn
22277	743	66qIf
22278	743	70tNt
22279	743	74Y
22280	743	76En
22281	743	80rIAlr
22282	743	90A
22283	743	105P
22284	743	107G
22285	743	127N
22286	743	131R
22287	743	138T
22288	743	142I
22289	743	144tQr
22290	743	147W
22291	743	150aARv
22292	743	156L
22293	743	158A
22294	743	163E
22295	743	166Ew
22296	743	171Y
22297	743	177Et
22298	743	180Q
22299	743	183P
22300	743	186K
22301	743	193Pv
22302	743	199A
22303	743	207G
22304	743	211A
22305	743	219R
22306	743	246A
22307	743	248V
22308	743	253E
22309	743	261V
22310	743	267P
22311	743	269P
22312	743	273R
22313	743	275E
22314	743	282Ip
22315	743	285V
22316	744	9Y
22318	744	14R
22319	744	16Gr
22320	744	41A
22321	744	45Te
22322	744	56G
22323	744	59Y
22324	744	62Rn
22325	744	66qIf
22326	744	70tNt
22327	744	74Y
22328	744	76En
22329	744	80rIAlrd
22330	744	90A
22331	744	105P
22332	744	107G
22333	744	127N
22334	744	131S
22335	744	138T
22336	744	142I
22337	744	144tQr
22338	744	147W
22339	744	150aARe
22340	744	156L
22341	744	158A
22342	744	163L
22343	744	166Ew
22344	744	171H
22345	744	177Et
22346	744	180Q
22347	745	9Y
22348	745	11Am
22349	745	14R
22350	745	16Gr
22351	745	41A
22352	745	45Te
22353	745	56G
22354	745	59Y
22355	745	62Rn
22356	745	66qIf
22357	745	70tNt
22358	745	74Y
22359	745	76En
22360	745	80rIAlr
22361	745	90A
22362	745	105P
22363	745	107G
22364	745	127N
22365	745	131S
22366	745	138T
22367	745	142I
22368	745	144tQr
22369	745	147W
22370	745	150aARe
22371	745	156L
22372	745	158A
22373	745	163L
22374	745	166Ew
22375	745	171H
22376	745	177Et
22377	745	180Q
22378	746	9Y
22379	746	11Am
22380	746	14R
22381	746	16Gr
22382	746	41A
22383	746	45Te
22384	746	56G
22385	746	59Y
22386	746	62Rn
22387	746	66qIf
22388	746	70tNt
22389	746	74Y
22390	746	76En
22391	746	80rIAlr
22392	746	90A
22393	746	105P
22394	746	107G
22395	746	127N
22396	746	131S
22397	746	138T
22398	746	142I
22399	746	144tQr
22400	746	147W
22401	746	150aARe
22402	746	156L
22069	737	246A
22070	737	248V
22071	737	253E
22072	737	261V
22073	737	267P
22074	737	269P
22075	737	273R
22076	737	275E
22077	737	282Ip
22078	737	285V
22079	738	9Y
22080	738	11Am
22081	738	14R
22082	738	16Gr
22083	738	41A
22084	738	45Te
22085	738	56G
22086	738	59Y
22087	738	62Rn
22088	738	66qIf
22089	738	70tNt
22090	738	74Y
22091	738	76En
22092	738	80rIAlr
22093	738	90A
22094	738	105P
22095	738	107G
22096	738	127N
22097	738	131S
22098	738	138T
22099	738	142I
22100	738	144tQr
22101	738	147W
22102	738	150aARv
22103	738	156R
22104	738	158A
22105	738	163L
22106	738	166Ew
22107	738	171Y
22108	738	177Et
22109	738	180Q
22110	738	183P
22111	738	186K
22112	738	193Pv
22113	738	199A
22114	738	207G
22115	738	211A
22116	738	219R
22117	738	246A
22118	738	248V
22119	738	253E
22120	738	261V
22121	738	267P
22122	738	269P
22123	738	273R
22124	738	275E
22125	738	282Ip
22126	738	285V
22127	739	9Y
22128	739	11Am
22129	739	14R
22130	739	16Gr
22131	739	41A
22132	739	45Te
22133	739	56G
22134	739	59Y
22135	739	62Rn
22136	739	66qIf
22137	739	70tNt
22138	739	74Y
22139	739	76En
22140	739	80rIAlr
22141	739	90A
22142	739	105P
22143	739	107G
22144	739	127N
22145	739	131S
22146	739	138T
22147	739	142I
22148	739	144tQr
22149	739	147W
22150	739	150aARe
22151	739	156L
22152	739	158A
22153	739	163L
22154	739	166Ew
22155	739	171H
22156	739	177Et
22157	739	180Q
22158	740	9Y
22159	740	11Am
22160	740	14R
22161	740	16Gr
22162	740	41A
22163	740	45Te
22164	740	56G
22165	740	59Y
22166	740	62Rn
22167	740	66qIs
22168	740	70tNt
22169	740	74Y
22170	740	76En
22171	740	80rIAlr
22172	740	90A
22173	740	105P
22174	740	107G
22175	740	127N
22176	740	131S
22177	740	138T
22178	740	142I
22179	740	144tQr
22180	740	147W
22181	740	150aARe
22182	740	156L
22183	740	158A
22184	740	163L
22185	740	166Ew
22186	740	171H
22187	740	177Et
22188	740	180Q
22189	741	9Y
22190	741	11Am
22191	741	14R
22192	741	16Gr
22193	741	41A
22194	741	45Te
22195	741	56G
22196	741	59Y
22197	741	62Rn
22198	741	66qIf
22199	741	70tNt
22200	741	74Y
22201	741	76En
22202	741	80rIAlr
22203	741	90A
22204	741	105P
22205	741	107G
22206	741	127N
22207	741	131S
22208	741	138T
22209	741	142I
22210	741	144tQr
22211	741	147W
22212	741	150aARv
22213	741	156D
22214	741	158A
22215	741	163L
22216	741	166Ew
22217	741	171H
22218	741	177Et
22219	741	180Q
22220	741	183P
22221	741	186K
22222	741	193Pv
22223	741	199A
22224	741	207G
22225	741	211A
22226	741	219R
22227	741	246A
22228	741	248V
22229	741	253E
22230	741	261V
22231	741	267P
22232	741	269P
22233	741	273R
22234	741	275E
22235	741	282Ip
21902	734	105P
21903	734	107G
21904	734	127N
21905	734	131S
21906	734	138T
21907	734	142I
21908	734	144tQr
21909	734	147W
21910	734	150aARe
21911	734	156L
21912	734	158A
21913	734	163L
21914	734	166Ew
21915	734	171H
21916	734	177Et
21917	734	180Q
21918	734	183P
21919	734	186K
21920	734	193Pv
21921	734	199A
21922	734	207G
21923	734	211A
21924	734	219R
21925	734	246A
21926	734	248V
21927	734	253E
21928	734	261V
21929	734	267P
21930	734	269P
21931	734	273R
21932	734	275E
21933	734	282Ip
21934	734	285V
21935	735	9Y
21936	735	11Am
21937	735	14R
21938	735	16Gr
21939	735	41A
21940	735	45Te
21941	735	56G
21942	735	59Y
21943	735	62Rn
21944	735	66qIf
21945	735	70tNt
21946	735	74Y
21947	735	76En
21948	735	80rIAlr
21949	735	90A
21950	735	105P
21951	735	107G
21952	735	127N
21953	735	131S
21954	735	138T
21955	735	142I
21956	735	144tQr
21957	735	147W
21958	735	150aARe
21959	735	156L
21960	735	158A
21961	735	163L
21962	735	166Ew
21963	735	171Y
21964	735	177Et
21965	735	180Q
21966	735	183P
21967	735	186K
21968	735	193Pv
21969	735	199A
21970	735	207G
21971	735	211A
21972	735	219R
21973	735	246A
21974	735	248V
21975	735	253E
21976	735	261V
21977	735	267P
21978	735	269P
21979	735	273R
21980	735	275E
21981	735	282Ip
21982	735	285V
21983	736	9Y
21984	736	11Am
21985	736	14R
21986	736	16Gr
21987	736	41A
21988	736	45Te
21989	736	56G
21990	736	59Y
21991	736	62Rn
21992	736	66qIf
21993	736	70tNt
21994	736	74Y
21995	736	76En
21996	736	80rIAlr
21997	736	90A
21998	736	105P
21999	736	107G
22000	736	127N
22001	736	131S
22002	736	138T
22003	736	142I
22004	736	144tQr
22005	736	147W
22006	736	150aARe
22007	736	156L
22008	736	158A
22009	736	163L
22010	736	166Eg
22011	736	171H
22012	736	177Et
22013	736	180Q
22014	736	183P
22015	736	186K
22016	736	193Pv
22017	736	199A
22018	736	207G
22019	736	211A
22020	736	219R
22021	736	246A
22022	736	248V
22023	736	253E
22024	736	261V
22025	736	267P
22026	736	269P
22027	736	273R
22028	736	275E
22029	736	282Ip
22030	736	285V
22031	737	9Y
22032	737	11Am
22033	737	14R
22034	737	16Gr
22035	737	41A
22036	737	45Te
22037	737	56G
22038	737	59Y
22039	737	62Rn
22040	737	66qIf
22041	737	70tNt
22042	737	74Y
22043	737	76En
22044	737	80rIAlr
22045	737	90A
22046	737	105P
22047	737	107G
22048	737	127N
22049	737	131S
22050	737	138T
22051	737	142I
22052	737	144tQr
22053	737	147W
22054	737	150aARe
22055	737	156L
22056	737	158A
22057	737	163L
22058	737	166Ew
22059	737	171H
22060	737	177Et
22061	737	180Q
22062	737	183P
22063	737	186K
22064	737	193Pv
22065	737	199A
22066	737	207G
22067	737	211A
22068	737	219R
21735	730	56G
21736	730	59Y
21737	730	62Re
21738	730	66qIs
21739	730	70tNt
21740	730	74Y
21741	730	76En
21742	730	80rIAlr
21743	730	90A
21744	730	105P
21745	730	107G
21746	730	127N
21747	730	131S
21748	730	138T
21749	730	142I
21750	730	144tQr
21751	730	147W
21752	730	150aARe
21753	730	156L
21754	730	158A
21755	730	163L
21756	730	166Ew
21757	730	171Y
21758	730	177Et
21759	730	180Q
21760	731	9H
21761	731	11Am
21762	731	14R
21763	731	16Gr
21764	731	41T
21765	731	45Ke
21766	731	56G
21767	731	59Y
21768	731	62Re
21769	731	66qIs
21770	731	70tNt
21771	731	74Y
21772	731	76Es
21773	731	80rNLrg
21774	731	90A
21775	731	105P
21776	731	107G
21777	731	127N
21778	731	131S
21779	731	138T
21780	731	142I
21781	731	144tQr
21782	731	147W
21783	731	150aARe
21784	731	156L
21785	731	158A
21786	731	163L
21787	731	166Ew
21788	731	171Y
21789	731	177Et
21790	731	180Q
21791	731	183P
21792	731	186K
21793	731	193Pi
21794	731	199A
21795	731	207G
21796	731	211A
21797	731	219R
21798	731	246A
21799	731	248V
21800	731	253E
21801	731	261V
21802	731	267P
21803	731	269P
21804	731	273R
21805	731	275E
21806	731	282Ip
21807	731	285V
21808	732	9H
21809	732	11Am
21810	732	14R
21811	732	16Gr
21812	732	41T
21813	732	45Ke
21814	732	56G
21815	732	59Y
21816	732	62Re
21817	732	66qIs
21818	732	70tNt
21819	732	74Y
21820	732	76Es
21821	732	80rNLrg
21822	732	90A
21823	732	105P
21824	732	107G
21825	732	127N
21826	732	131S
21827	732	138T
21828	732	142I
21829	732	144tQr
21830	732	147W
21831	732	150aARe
21832	732	156L
21833	732	158A
21834	732	163L
21835	732	166Es
21836	732	171Y
21837	732	177Et
21838	732	180Q
21839	732	183P
21840	732	186K
21841	732	193Pi
21842	732	199A
21843	732	207G
21844	732	211A
21845	732	219R
21846	732	246A
21847	732	248V
21848	732	253E
21849	732	261V
21850	732	267P
21851	732	269P
21852	732	273R
21853	732	275E
21854	732	282Ip
21855	732	285V
21856	733	9H
21857	733	11Am
21858	733	14R
21859	733	16Gr
21860	733	41T
21861	733	45Ke
21862	733	56G
21863	733	59Y
21864	733	62Re
21865	733	66qIs
21866	733	70tNt
21867	733	74Y
21868	733	76Es
21869	733	80rNLrg
21870	733	90A
21871	733	105P
21872	733	107G
21873	733	127N
21874	733	131S
21875	733	138T
21876	733	142I
21877	733	144tQr
21878	733	147W
21879	733	150aARe
21880	733	156L
21881	733	158A
21882	733	163L
21883	733	166Es
21884	733	171Y
21885	733	177Et
21886	733	180Q
21887	734	9Y
21888	734	11Am
21889	734	14R
21890	734	16Gr
21891	734	41A
21892	734	45Te
21893	734	56G
21894	734	59Y
21895	734	62Rn
21896	734	66qIf
21897	734	70tNt
21898	734	74Y
21899	734	76En
21900	734	80rIAlr
21901	734	90A
21568	725	74Y
21569	725	76Es
21570	725	80rNLrg
21571	725	90A
21572	725	105P
21573	725	107G
21574	725	127N
21575	725	131R
21576	725	138T
21577	725	142I
21578	725	144tQr
21579	725	147W
21580	725	150aARv
21581	725	156R
21582	725	158A
21583	725	163E
21584	725	166Ew
21585	725	171Y
21586	725	177Dk
21587	725	180E
21588	726	9Y
21589	726	11Sv
21590	726	14R
21591	726	16Gr
21592	726	41A
21593	726	45Ee
21594	726	56G
21595	726	59Y
21596	726	62Rn
21597	726	66qIf
21598	726	70tNt
21599	726	74Y
21600	726	76Es
21601	726	80rNLrg
21602	726	90A
21603	726	105P
21604	726	107G
21605	726	127N
21606	726	131R
21607	726	138T
21608	726	142I
21609	726	144SQr
21610	726	147L
21611	726	150aARv
21612	726	156L
21613	726	158A
21614	726	163E
21615	726	166Ew
21616	726	171Y
21617	726	177Dk
21618	726	180E
21619	727	9Y
21620	727	11Sv
21621	727	14R
21622	727	16Gr
21623	727	41A
21624	727	45Ee
21625	727	56G
21626	727	59Y
21627	727	62Re
21628	727	66qIs
21629	727	70tNt
21630	727	74Y
21631	727	76Es
21632	727	80rNLrg
21633	727	90A
21634	727	105P
21635	727	107G
21636	727	127N
21637	727	131R
21638	727	138T
21639	727	142I
21640	727	144SQr
21641	727	147L
21642	727	150aARv
21643	727	156L
21644	727	158A
21645	727	163E
21646	727	166Ew
21647	727	171Y
21648	727	177Dk
21649	727	180E
21650	728	9H
21651	728	11Am
21652	728	14R
21653	728	16Gr
21654	728	41T
21655	728	45Ke
21656	728	56G
21657	728	59Y
21658	728	62Re
21659	728	66qIs
21660	728	70tNt
21661	728	74Y
21662	728	76En
21663	728	80rIAlr
21664	728	90A
21665	728	105P
21666	728	107G
21667	728	127N
21668	728	131S
21669	728	138T
21670	728	142I
21671	728	144tQr
21672	728	147W
21673	728	150aARe
21674	728	156L
21675	728	158A
21676	728	163L
21677	728	166Ew
21678	728	171Y
21679	728	177Et
21680	728	180Q
21681	728	183P
21682	728	186K
21683	728	193Pi
21684	728	199A
21685	728	207G
21686	728	211A
21687	728	219R
21688	728	246A
21689	728	248V
21690	728	253E
21691	728	261V
21692	728	267P
21693	728	269P
21694	728	273R
21695	728	275E
21696	728	282Ip
21697	728	285V
21698	729	9H
21699	729	11Am
21700	729	14R
21701	729	16Gr
21702	729	41T
21703	729	45Ke
21704	729	56G
21705	729	59Y
21706	729	62Re
21707	729	66qIs
21708	729	70tNt
21709	729	74Y
21710	729	76En
21711	729	80rTAlr
21712	729	90A
21713	729	105P
21714	729	107G
21715	729	127N
21716	729	131S
21717	729	138T
21718	729	142I
21719	729	144tQr
21720	729	147W
21721	729	150aARe
21722	729	156L
21723	729	158A
21724	729	163L
21725	729	166Ew
21726	729	171Y
21727	729	177Et
21728	729	180Q
21729	730	9H
21730	730	11Am
21731	730	14R
21732	730	16Gr
21733	730	41A
21734	730	45Te
21401	721	14R
21402	721	16Gr
21403	721	41A
21404	721	45Ee
21405	721	56G
21406	721	59Y
21407	721	62Re
21408	721	66qIs
21409	721	70tNt
21410	721	74Y
21411	721	76Es
21412	721	80rNLrg
21413	721	90A
21414	721	105P
21415	721	107G
21416	721	127N
21417	721	131R
21418	721	138T
21419	721	142I
21420	721	144SQr
21421	721	147L
21422	721	150aARv
21423	721	156L
21424	721	158A
21425	721	163E
21426	721	166Ew
21427	721	171Y
21428	721	177Dk
21429	721	180E
21430	721	183P
21431	721	186K
21432	721	193Pi
21433	721	199A
21434	721	207G
21435	721	211A
21436	721	219R
21437	721	246tA
21438	721	248V
21439	721	253E
21440	721	261V
21441	721	267P
21442	721	269P
21443	721	273R
21444	721	275E
21445	721	282Vp
21446	721	285V
21447	722	9Y
21448	722	11Sv
21449	722	14R
21450	722	16Gr
21451	722	41A
21452	722	45Ee
21453	722	56G
21454	722	59Y
21455	722	62Re
21456	722	66qIs
21457	722	70tNt
21458	722	74Y
21459	722	76Es
21460	722	80rNLrg
21461	722	90A
21462	722	105P
21463	722	107G
21464	722	127N
21465	722	131S
21466	722	138T
21467	722	142I
21468	722	144tQr
21469	722	147W
21470	722	150aARv
21471	722	156L
21472	722	158A
21473	722	163L
21474	722	166Ew
21475	722	171Y
21476	722	177Et
21477	722	180Q
21478	722	183P
21479	722	186K
21480	722	193Pv
21481	722	199A
21482	722	207G
21483	722	211A
21484	722	219R
21485	722	246A
21486	722	248V
21487	722	253E
21488	722	261V
21489	722	267P
21490	722	269P
21491	722	273R
21492	722	275E
21493	722	282Ip
21494	722	285V
21495	723	9Y
21496	723	11Sv
21497	723	14R
21498	723	16Gr
21499	723	41A
21500	723	45Ee
21501	723	56G
21502	723	59Y
21503	723	62Re
21504	723	66qIs
21505	723	70tNt
21506	723	74Y
21507	723	76Es
21508	723	80rNLrg
21509	723	90A
21510	723	105P
21511	723	107G
21512	723	127N
21513	723	131R
21514	723	138T
21515	723	142I
21516	723	144SQr
21517	723	147L
21518	723	150aARv
21519	723	156L
21520	723	158A
21521	723	163E
21522	723	166Ew
21523	723	171Y
21524	723	177Dk
21525	723	180E
21526	724	9Y
21527	724	11Sv
21528	724	14R
21529	724	16Gr
21530	724	41A
21531	724	45Ee
21532	724	56G
21533	724	59Y
21534	724	62Re
21535	724	66qIs
21536	724	70tNt
21537	724	74Y
21538	724	76Es
21539	724	80rNLrg
21540	724	90A
21541	724	105P
21542	724	107G
21543	724	127N
21544	724	131R
21545	724	138T
21546	724	142I
21547	724	144SQr
21548	724	147L
21549	724	150aARv
21550	724	156L
21551	724	158A
21552	724	163E
21553	724	166Ew
21554	724	171Y
21555	724	177Et
21556	724	180Q
21557	725	9Y
21558	725	11Sv
21559	725	14R
21560	725	16Gr
21561	725	41A
21562	725	45Ee
21563	725	56G
21564	725	59Y
21565	725	62Re
21566	725	66qIs
21567	725	70tNt
21234	716	248V
21235	716	253E
21236	716	261V
21237	716	267P
21238	716	269P
21239	716	273R
21240	716	275E
21241	716	282Ip
21242	716	285V
21243	717	9Y
21244	717	11Am
21245	717	14R
21246	717	16Gr
21247	717	41A
21248	717	45Ma
21249	717	56G
21250	717	59Y
21251	717	62Re
21252	717	66qKy
21253	717	70rQa
21254	717	74D
21255	717	76Vs
21256	717	80rNLrg
21257	717	90A
21258	717	105P
21259	717	107G
21260	717	127N
21261	717	131S
21262	717	138T
21263	717	142I
21264	717	144tQr
21265	717	147W
21266	717	150aARe
21267	717	156W
21268	717	158A
21269	717	163L
21270	717	166Ew
21271	717	171Y
21272	717	177Et
21273	717	180Q
21274	718	9Y
21275	718	11Am
21276	718	14R
21277	718	16Gr
21278	718	41T
21279	718	45Ke
21280	718	56G
21281	718	59Y
21282	718	62Re
21283	718	66qIs
21284	718	70tNt
21285	718	74Y
21286	718	76Ed
21287	718	80rTLlr
21288	718	90A
21289	718	105P
21290	718	107G
21291	718	127N
21292	718	131S
21293	718	138T
21294	718	142I
21295	718	144tQr
21296	718	147W
21297	718	150aARv
21298	718	156L
21299	718	158A
21300	718	163E
21301	718	166Ew
21302	718	171Y
21303	718	177Et
21304	718	180Q
21305	718	183P
21306	718	186K
21307	718	193Pi
21308	718	199A
21309	718	207G
21310	718	211A
21311	718	219R
21312	718	246A
21313	718	248V
21314	718	253E
21315	718	261V
21316	718	267P
21317	718	269P
21318	718	273R
21319	718	275E
21320	718	282Vp
21321	718	285V
21322	719	9Y
21323	719	11Am
21324	719	14R
21325	719	16Gr
21326	719	41T
21327	719	45Ke
21328	719	56G
21329	719	59Y
21330	719	62Re
21331	719	66qIs
21332	719	70tNt
21333	719	74Y
21334	719	76Es
21335	719	80rNLrg
21336	719	90A
21337	719	105P
21338	719	107G
21339	719	127N
21340	719	131S
21341	719	138T
21342	719	142I
21343	719	144tQr
21344	719	147W
21345	719	150aARv
21346	719	156L
21347	719	158A
21348	719	163E
21349	719	166Ew
21350	719	171Y
21351	719	177Et
21352	719	180Q
21353	719	183P
21354	719	186K
21355	719	193Pi
21356	719	199A
21357	719	207G
21358	719	211A
21359	719	219R
21360	719	246A
21361	719	248V
21362	719	253E
21363	719	261V
21364	719	267P
21365	719	269P
21366	719	273R
21367	719	275E
21368	720	9Y
21369	720	11Am
21370	720	14R
21371	720	16Gr
21372	720	41T
21373	720	45Ke
21374	720	56G
21375	720	59Y
21376	720	62Re
21377	720	66qIs
21378	720	70tNt
21379	720	74Y
21380	720	76Es
21381	720	80rNLlr
21382	720	90A
21383	720	105P
21384	720	107G
21385	720	127N
21386	720	131S
21387	720	138T
21388	720	142I
21389	720	144tQr
21390	720	147W
21391	720	150aARv
21392	720	156L
21393	720	158A
21394	720	163E
21395	720	166Ew
21396	720	171Y
21397	720	177Et
21398	720	180Q
21399	721	9Y
21400	721	11Sv
21067	712	80rTAlr
21068	712	90A
21069	712	105P
21070	712	107G
21071	712	127N
21072	712	131S
21073	712	138T
21074	712	142I
21075	712	144tQr
21076	712	147W
21077	712	150aARv
21078	712	156L
21079	712	158A
21080	712	163L
21081	712	166Es
21082	712	171Y
21083	712	177Et
21084	712	180Q
21085	713	9H
21086	713	11Am
21087	713	14R
21088	713	16Gr
21089	713	41T
21090	713	45Ke
21091	713	56G
21092	713	59Y
21093	713	62Re
21094	713	66qIs
21095	713	70tNt
21096	713	74Y
21097	713	76Es
21098	713	80rNLrg
21099	713	90A
21100	713	105P
21101	713	107G
21102	713	127N
21103	713	131S
21104	713	138T
21105	713	142I
21106	713	144tQr
21107	713	147W
21108	713	150aARv
21109	713	156D
21110	713	158A
21111	713	163L
21112	713	166Es
21113	713	171Y
21114	713	177Et
21115	713	180Q
21116	713	183P
21117	713	186K
21118	713	193Pi
21119	713	199A
21120	713	207G
21121	713	211A
21122	713	219R
21123	713	246A
21124	713	248V
21125	713	253E
21126	713	261V
21127	713	267P
21128	713	269P
21129	713	273R
21130	713	275E
21131	713	282Vp
21132	713	285V
21133	714	9H
21134	714	11Am
21135	714	14R
21136	714	16Gr
21137	714	41T
21138	714	45Ke
21139	714	56G
21140	714	59Y
21141	714	62Re
21142	714	66qIs
21143	714	70tNt
21144	714	74Y
21145	714	76Es
21146	714	80rNLrg
21147	714	90A
21148	714	105P
21149	714	107G
21150	714	127N
21151	714	131S
21152	714	138T
21153	714	142I
21154	714	144tQr
21155	714	147W
21156	714	150aARv
21157	714	156D
21158	714	158A
21159	714	163L
21160	714	166Es
21161	714	171Y
21162	714	177Et
21163	714	180Q
21164	715	9H
21165	715	11Am
21166	715	14R
21167	715	16Gr
21168	715	41T
21169	715	45Ke
21170	715	56G
21171	715	59Y
21172	715	62Re
21173	715	66qIs
21174	715	70tNt
21175	715	74Y
21176	715	76Es
21177	715	80rNLrg
21178	715	90A
21179	715	105P
21180	715	107G
21181	715	127N
21182	715	131S
21183	715	138T
21184	715	142I
21185	715	144tQr
21186	715	147W
21187	715	150aARv
21188	715	156D
21189	715	158A
21190	715	163L
21191	715	166Es
21192	715	171Y
21193	715	177Et
21194	715	180Q
21195	716	9Y
21196	716	11Am
21197	716	14R
21198	716	16Gr
21199	716	41A
21200	716	45Ma
21201	716	56G
21202	716	59Y
21203	716	62Re
21204	716	66qKy
21205	716	70rQa
21206	716	74D
21207	716	76Vs
21208	716	80rNLrg
21209	716	90A
21210	716	105P
21211	716	107G
21212	716	127N
21213	716	131S
21214	716	138T
21215	716	142I
21216	716	144tQr
21217	716	147W
21218	716	150aARe
21219	716	156W
21220	716	158A
21221	716	163L
21222	716	166Ew
21223	716	171Y
21224	716	177Et
21225	716	180Q
21226	716	183P
21227	716	186K
21228	716	193Pi
21229	716	199A
21230	716	207G
21231	716	211A
21232	716	219R
21233	716	246A
20900	707	11Am
20901	707	14R
20902	707	16Gr
20903	707	41T
20904	707	45Ke
20905	707	56G
20906	707	59Y
20907	707	62Re
20908	707	66qIs
20909	707	70tNt
20910	707	74Y
20911	707	76En
20912	707	80rTAlr
20913	707	90A
20914	707	105P
20915	707	107G
20916	707	127N
20917	707	131S
20918	707	138T
20919	707	142I
20920	707	144tQr
20921	707	147W
20922	707	150aARv
20923	707	156R
20924	707	158A
20925	707	163E
20926	707	166Ew
20927	707	171Y
20928	707	177Et
20929	707	180Q
20930	708	9Y
20931	708	11Am
20932	708	14R
20933	708	16Gr
20934	708	41T
20935	708	45Ke
20936	708	56G
20937	708	59Y
20938	708	62Re
20939	708	66qIs
20940	708	70tNt
20941	708	74Y
20942	708	76En
20943	708	80rTAlr
20944	708	90A
20945	708	105P
20946	708	107G
20947	708	127N
20948	708	131S
20949	708	138T
20950	708	142I
20951	708	144tQr
20952	708	147W
20953	708	150aARv
20954	708	156L
20955	708	158A
20956	708	163L
20957	708	166Es
20958	708	171Y
20959	708	177Et
20960	708	180Q
20961	709	9H
20962	709	11Am
20963	709	14R
20964	709	16Gr
20965	709	41T
20966	709	45Ke
20967	709	56G
20968	709	59Y
20969	709	62Re
20970	709	66qIs
20971	709	70tNt
20972	709	74Y
20973	709	76En
20974	709	80rIAlr
20975	709	90A
20976	709	105P
20977	709	107G
20978	709	127N
20979	709	131S
20980	709	138T
20981	709	142I
20982	709	144tQr
20983	709	147W
20984	709	150aARv
20985	709	156L
20986	709	158A
20987	709	163L
20988	709	166Es
20989	709	171Y
20990	709	177Et
20991	709	180Q
20992	710	9Y
20993	710	11Am
20994	710	14R
20995	710	16Gr
20996	710	41T
20997	710	45Ke
20998	710	56G
20999	710	59Y
21000	710	62Re
21001	710	66qIs
21002	710	70tNt
21003	710	74Y
21004	710	76En
21005	710	80rTAlr
21006	710	90A
21007	710	105P
21008	710	107G
21009	710	127N
21010	710	131S
21011	710	138T
21012	710	142I
21013	710	144tQr
21014	710	147W
21015	710	150aARv
21016	710	156L
21017	710	158A
21018	710	163L
21019	710	166Es
21020	710	171Y
21021	710	177Et
21022	710	180Q
21023	711	9Y
21024	711	11Am
21025	711	14R
21026	711	16Gr
21027	711	41T
21028	711	45Ke
21029	711	56G
21030	711	59Y
21031	711	62Re
21032	711	66qIs
21033	711	70tNt
21034	711	74Y
21035	711	76En
21036	711	80rTAlr
21037	711	90A
21038	711	105P
21039	711	107G
21040	711	127N
21041	711	131S
21042	711	138T
21043	711	142I
21044	711	144tQr
21045	711	147W
21046	711	150aARv
21047	711	156R
21048	711	158A
21049	711	163E
21050	711	166Es
21051	711	171Y
21052	711	177Et
21053	711	180Q
21054	712	9Y
21055	712	11Av
21056	712	14R
21057	712	16Gr
21058	712	41T
21059	712	45Ke
21060	712	56G
21061	712	59Y
21062	712	62Re
21063	712	66qIs
21064	712	70tNt
21065	712	74Y
21066	712	76En
20734	701	144tQr
20735	701	147W
20736	701	150aARv
20737	701	156L
20738	701	158A
20739	701	163L
20740	701	166Es
20741	701	171Y
20742	701	177Et
20743	701	180Q
20744	702	9Y
20745	702	11Am
20746	702	14R
20747	702	16Gr
20748	702	41T
20749	702	45Ke
20750	702	56G
20751	702	59Y
20752	702	62Re
20753	702	66qIs
20754	702	70tNt
20755	702	74Y
20756	702	76En
20757	702	80rTPlr
20758	702	90A
20759	702	105P
20760	702	107G
20761	702	127N
20762	702	131S
20763	702	138T
20764	702	142I
20765	702	144tQr
20766	702	147W
20767	702	150aARv
20768	702	156D
20769	702	158A
20770	702	163L
20771	702	166Es
20772	702	171Y
20773	702	177Et
20774	702	180Q
20775	703	9Y
20776	703	11Am
20777	703	14R
20778	703	16Gr
20779	703	41T
20780	703	45Ke
20781	703	56G
20782	703	59Y
20783	703	62Rn
20784	703	66qIs
20785	703	70tNt
20786	703	74Y
20787	703	76En
20788	703	80rTAlr
20789	703	90A
20790	703	105P
20791	703	107G
20792	703	127N
20793	703	131S
20794	703	138T
20795	703	142I
20796	703	144tQr
20797	703	147W
20798	703	150aARv
20799	703	156D
20800	703	158A
20801	703	163L
20802	703	166Es
20803	703	171Y
20804	703	177Et
20805	703	180Q
20806	704	9Y
20807	704	11Am
20808	704	14R
20809	704	16Gr
20810	704	41T
20811	704	45Ke
20812	704	56G
20813	704	59Y
20814	704	62eRe
20815	704	66qIs
20816	704	70tNt
20817	704	74Y
20818	704	76En
20819	704	80rTAlr
20820	704	90A
20821	704	105P
20822	704	107G
20823	704	127N
20824	704	131S
20825	704	138T
20826	704	142I
20827	704	144tQr
20828	704	147W
20829	704	150aARv
20830	704	156L
20831	704	158A
20832	704	163L
20833	704	166Es
20834	704	171Y
20835	704	177Et
20836	704	180Q
20837	705	9Y
20838	705	11Am
20839	705	14R
20840	705	16Gr
20841	705	41T
20842	705	45Ke
20843	705	56G
20844	705	59Y
20845	705	62Re
20846	705	66qIs
20847	705	70tNt
20848	705	74Y
20849	705	76En
20850	705	80rTAlr
20851	705	90A
20852	705	105P
20853	705	107G
20854	705	127N
20855	705	131S
20856	705	138T
20857	705	142I
20858	705	144tQr
20859	705	147W
20860	705	150aARv
20861	705	156D
20862	705	158A
20863	705	163L
20864	705	166Es
20865	705	171Y
20866	705	177Et
20867	705	180Q
20868	706	9H
20869	706	11Am
20870	706	14R
20871	706	16Gr
20872	706	41T
20873	706	45Ke
20874	706	56G
20875	706	59Y
20876	706	62Re
20877	706	66qIs
20878	706	70tNt
20879	706	74Y
20880	706	76Es
20881	706	80rTAlr
20882	706	90A
20883	706	105P
20884	706	107G
20885	706	127N
20886	706	131S
20887	706	138T
20888	706	142I
20889	706	144tQr
20890	706	147W
20891	706	150aARv
20892	706	156L
20893	706	158A
20894	706	163L
20895	706	166Es
20896	706	171Y
20897	706	177Et
20898	706	180Q
20899	707	9Y
20567	697	76En
20568	697	80rIAlr
20569	697	90A
20570	697	105P
20571	697	107G
20572	697	127N
20573	697	131S
20574	697	138T
20575	697	142I
20576	697	144tQr
20577	697	147W
20578	697	150aARv
20579	697	156D
20580	697	158A
20581	697	163L
20582	697	166Es
20583	697	171Y
20584	697	177Et
20585	697	180Q
20586	698	9Y
20587	698	11Am
20588	698	14R
20589	698	16Gr
20590	698	41A
20591	698	45Ke
20592	698	56G
20593	698	59Y
20594	698	62Re
20595	698	66qIs
20596	698	70tNt
20597	698	74Y
20598	698	76En
20599	698	80rTAlr
20600	698	90A
20601	698	105P
20602	698	107G
20603	698	127N
20604	698	131S
20605	698	138T
20606	698	142I
20607	698	144tQr
20608	698	147W
20609	698	150aARv
20610	698	156L
20611	698	158A
20612	698	163L
20613	698	166Es
20614	698	171Y
20615	698	177Et
20616	698	180Q
20617	698	183P
20618	698	186K
20619	698	193Pi
20620	698	199V
20621	698	207G
20622	698	211A
20623	698	219R
20624	698	246A
20625	698	248V
20626	698	253E
20627	698	261V
20628	698	267P
20629	698	269P
20630	698	273R
20631	698	275E
20632	698	282Vp
20633	698	285V
20634	699	9Y
20635	699	11Am
20636	699	14R
20637	699	16Gr
20638	699	41A
20639	699	45Ma
20640	699	56G
20641	699	59Y
20642	699	62Re
20643	699	66qIs
20644	699	70tNt
20645	699	74Y
20646	699	76En
20647	699	80rTAlr
20648	699	90A
20649	699	105P
20650	699	107G
20651	699	127N
20652	699	131S
20653	699	138T
20654	699	142I
20655	699	144tQr
20656	699	147W
20657	699	150aARv
20658	699	156D
20659	699	158A
20660	699	163L
20661	699	166Es
20662	699	171Y
20663	699	177Et
20664	699	180Q
20665	699	183P
20666	699	186K
20667	699	193Pi
20668	699	199V
20669	699	207G
20670	699	211A
20671	699	219R
20672	699	246A
20673	699	248V
20674	699	253E
20675	699	261V
20676	699	267P
20677	699	269P
20678	699	273R
20679	699	275E
20680	699	282Vp
20681	699	285V
20682	700	9Y
20683	700	11Am
20684	700	14R
20685	700	16Gr
20686	700	41T
20687	700	45Ke
20688	700	56G
20689	700	59Y
20690	700	62Re
20691	700	66qIs
20692	700	70tNt
20693	700	74Y
20694	700	76Es
20695	700	80rNLrg
20696	700	90A
20697	700	105P
20698	700	107G
20699	700	127N
20700	700	131S
20701	700	138T
20702	700	142I
20703	700	144tQr
20704	700	147W
20705	700	150aARv
20706	700	156D
20707	700	158A
20708	700	163L
20709	700	166Es
20710	700	171Y
20711	700	177Et
20712	700	180Q
20713	701	9Y
20714	701	11Am
20715	701	14R
20716	701	16Gr
20717	701	41T
20718	701	45Ke
20719	701	56G
20720	701	59Y
20721	701	62Re
20722	701	66qIs
20723	701	70tNt
20724	701	74Y
20725	701	76En
20726	701	80rTAlr
20727	701	90A
20728	701	105P
20729	701	107G
20730	701	127N
20731	701	131S
20732	701	138T
20733	701	142I
20400	692	142I
20401	692	144tQr
20402	692	147W
20403	692	150aARv
20404	692	156D
20405	692	158A
20406	692	163T
20407	692	166Ew
20408	692	171Y
20409	692	177Dt
20410	692	180E
20411	693	9Y
20412	693	11Am
20413	693	14R
20414	693	16Gr
20415	693	41T
20416	693	45Ke
20417	693	56G
20418	693	59Y
20419	693	62Re
20420	693	66qIs
20421	693	70tNt
20422	693	74Y
20423	693	76En
20424	693	80rTAlr
20425	693	90A
20426	693	105P
20427	693	107G
20428	693	127N
20429	693	131S
20430	693	138T
20431	693	142I
20432	693	144tQr
20433	693	147W
20434	693	150aARv
20435	693	156D
20436	693	158A
20437	693	163L
20438	693	166Es
20439	693	171Y
20440	693	177Et
20441	693	180Q
20442	693	183P
20443	693	186K
20444	693	193Pi
20445	693	199V
20446	693	207G
20447	693	211A
20448	693	219R
20449	693	246A
20450	693	248V
20451	693	253E
20452	693	261V
20453	693	267P
20454	693	269P
20455	693	273R
20456	693	275E
20457	693	282Vp
20458	693	285V
20459	694	9Y
20460	694	11Am
20461	694	14R
20462	694	16Gr
20463	694	41T
20464	694	45Ke
20465	694	56G
20466	694	59Y
20467	694	62Re
20468	694	66qIs
20469	694	70tNt
20470	694	74Y
20471	694	76En
20472	694	80rTAlr
20473	694	90A
20474	694	105P
20475	694	107G
20476	694	127N
20477	694	131S
20478	694	138T
20479	694	142I
20480	694	144tQr
20481	694	147W
20482	694	150aARv
20483	694	156L
20484	694	158A
20485	694	163L
20486	694	166Es
20487	694	171Y
20488	694	177Et
20489	694	180Q
20490	694	183P
20491	694	186K
20492	694	193Pi
20493	694	199V
20494	694	207G
20495	694	211A
20496	694	219R
20497	694	246A
20498	694	248V
20499	694	253E
20500	694	261V
20501	694	267P
20502	694	269P
20503	694	273R
20504	694	275E
20505	694	282Vp
20506	694	285V
20507	695	9Y
20508	695	11Am
20509	695	14R
20510	695	16Gr
20511	695	41T
20512	695	45Ke
20513	695	56G
20514	695	59Y
20515	695	62Re
20516	695	66qIs
20517	695	70tNt
20518	695	74Y
20519	695	76En
20520	695	80rTAlr
20521	695	90A
20522	695	105P
20523	695	107G
20524	695	127N
20525	695	131S
20526	695	138T
20527	695	142I
20528	695	144tQr
20529	695	147W
20530	695	150aARv
20531	695	156R
20532	695	158A
20533	695	163T
20534	695	166Es
20535	695	171Y
20536	695	177Et
20537	695	180Q
20538	695	183P
20539	695	186K
20540	695	193Pi
20541	695	199V
20542	695	207G
20543	695	211A
20544	695	219R
20545	695	246A
20546	695	248V
20547	695	253E
20548	695	261V
20549	695	267P
20550	695	269P
20551	695	273R
20552	695	275E
20553	695	282Vp
20554	695	285V
20555	697	9Y
20556	697	11Am
20557	697	14R
20558	697	16Gr
20559	697	41A
20560	697	45Te
20561	697	56G
20562	697	59Y
20563	697	62Rn
20564	697	66qIf
20565	697	70tNt
20566	697	74Y
20233	687	267P
20234	687	269P
20235	687	273R
20236	687	275E
20237	687	282Vp
20238	687	285V
20239	688	9H
20240	688	11Am
20241	688	14R
20242	688	16Gr
20243	688	41T
20244	688	45Ke
20245	688	56G
20246	688	59Y
20247	688	62Re
20248	688	66qIs
20249	688	70tNt
20250	688	74Y
20251	688	76Es
20252	688	80rNLrg
20253	688	90A
20254	688	105P
20255	688	107G
20256	688	127N
20257	688	131R
20258	688	138T
20259	688	142I
20260	688	144tQr
20261	688	147W
20262	688	150aARv
20263	688	156D
20264	688	158A
20265	688	163T
20266	688	166Ew
20267	688	171Y
20268	688	177Dt
20269	688	180E
20270	689	9H
20271	689	11Am
20272	689	14R
20273	689	16Gr
20274	689	41T
20275	689	45Ke
20276	689	56G
20277	689	59Y
20278	689	62Re
20279	689	66qIs
20280	689	70tNt
20281	689	74Y
20282	689	76Es
20283	689	80rNLrg
20284	689	90A
20285	689	105P
20286	689	107G
20287	689	127N
20288	689	131R
20289	689	138T
20290	689	142I
20291	689	144tQr
20292	689	147W
20293	689	150aARv
20294	689	156D
20295	689	158A
20296	689	163T
20297	689	166Ew
20298	689	171Y
20299	689	177Dt
20300	689	180E
20301	690	9H
20302	690	11Am
20303	690	14R
20304	690	16Gr
20305	690	41T
20306	690	45Ke
20307	690	56G
20308	690	59Y
20309	690	62Re
20310	690	66qIs
20311	690	70tNt
20312	690	74Y
20313	690	76Es
20314	690	80rKLrg
20315	690	90A
20316	690	105P
20317	690	107G
20318	690	127N
20319	690	131R
20320	690	138T
20321	690	142I
20322	690	144tQr
20323	690	147W
20324	690	150aARv
20325	690	156D
20326	690	158A
20327	690	163T
20328	690	166Ew
20329	690	171Y
20330	690	177Dt
20331	690	180E
20332	691	9Y
20333	691	11Sv
20334	691	14R
20335	691	16Gr
20336	691	41A
20337	691	45Ee
20338	691	56G
20339	691	59Y
20340	691	62Rn
20341	691	66qIy
20342	691	70aQa
20343	691	74D
20344	691	76Es
20345	691	80rNLrg
20346	691	90A
20347	691	105P
20348	691	107G
20349	691	127N
20350	691	131R
20351	691	138T
20352	691	142I
20353	691	144tQr
20354	691	147W
20355	691	150aARv
20356	691	156D
20357	691	158A
20358	691	163T
20359	691	166Ew
20360	691	171Y
20361	691	177Dt
20362	691	180E
20363	691	183P
20364	691	186K
20365	691	193Pi
20366	691	199A
20367	691	207G
20368	691	211A
20369	691	219R
20370	691	246A
20371	691	248V
20372	691	253E
20373	691	261V
20374	691	267P
20375	691	269P
20376	691	273R
20377	691	275E
20378	691	282Vp
20379	691	285V
20380	692	9H
20381	692	11Sv
20382	692	14R
20383	692	16Gr
20384	692	41A
4468	275	9F
4469	275	11Sv
4470	275	14R
4471	275	16Gr
4472	275	41A
4473	275	45kMe
4474	275	56G
4475	275	59Y
4476	275	62Qe
4477	275	66rNm
4478	275	70aHs
4479	275	74D
4480	275	76An
4481	275	80gTLrg
4482	275	90D
4483	275	105P
4484	275	107G
4485	275	127N
4486	275	131R
4487	275	138M
4488	275	142I
4489	275	144tKr
4490	275	147W
4491	275	150aVHa
4492	275	156R
4493	275	158V
4494	275	163R
4495	275	166Dg
4496	275	171Y
4497	275	177Et
4498	275	180Q
4499	275	183P
4500	275	186K
4501	275	193Pi
4502	275	199A
4503	275	207G
4504	275	211A
4505	275	219R
4506	275	246A
4507	275	248V
4508	275	253E
4509	275	261V
4510	275	267P
4511	275	269P
4512	275	273R
4513	275	275L
4514	275	282Ip
4515	275	285V
4516	276	9S
4517	276	11Sv
4518	276	14R
4519	276	16S
4520	276	41A
4521	276	45kMe
4522	276	56G
4523	276	59Y
4524	276	62Qe
4525	276	66rNm
4526	276	70aHs
4527	276	74D
4528	276	76An
4529	276	80gTLrg
4530	276	90D
4531	276	105P
4532	276	107G
4533	276	127N
4534	276	131R
4535	276	138M
4536	276	142I
4537	276	144tKr
4538	276	147W
4539	276	150aVHa
4540	276	156R
4541	276	158V
4542	276	163R
4543	276	166Dg
4544	276	171Y
4545	276	177Et
4546	276	180Q
4547	276	183P
4548	276	186K
4549	276	193Pi
4550	276	199A
4551	276	207G
4552	276	211A
4553	276	219R
4554	276	246A
4555	276	248V
4556	276	253E
4557	276	261V
4558	276	267P
4559	276	269P
4560	276	273R
4561	276	275L
4562	276	282Ip
4563	276	285V
4564	277	9F
4565	277	11Sv
4566	277	14R
4567	277	16Gr
4568	277	41A
4569	277	45kMe
4570	277	56G
4571	277	59Y
4572	277	62Qe
4573	277	66rNm
4574	277	70aHs
4575	277	74D
4576	277	76An
4577	277	80gTLrg
4578	277	90D
4579	277	105P
4580	277	107G
4581	277	127N
4582	277	131R
4583	277	138M
4584	277	142I
4585	277	144tKr
4586	277	147W
4587	277	150aVHa
4588	277	156R
4589	277	158V
4590	277	163R
4591	277	166Dg
4592	277	171Y
4593	277	177Et
4594	277	180Q
4595	278	9F
4596	278	11Sv
4597	278	14R
4598	278	16Gr
4599	278	41A
4600	278	45kMe
4601	278	56G
4602	278	59Y
4603	278	62Qe
4604	278	66rNm
4605	278	70aHs
4606	278	74D
4607	278	76An
4608	278	80gTLrg
4609	278	90D
4610	278	105P
4611	278	107G
4612	278	127N
4613	278	131R
4614	278	138M
4615	278	142I
4616	278	144tKr
4617	278	147W
4618	278	150aVHa
4619	278	156L
4620	278	158A
4621	278	163R
4622	278	166Dg
4623	278	171Y
4624	278	177Et
4625	278	180Q
20385	692	45Ee
20386	692	56G
20387	692	59Y
20388	692	62Rn
20389	692	66qIy
20390	692	70aQa
20391	692	74D
20392	692	76Es
20393	692	80rNLrg
20394	692	90A
20395	692	105P
20396	692	107G
20397	692	127N
20398	692	131R
20399	692	138T
20066	683	107G
20067	683	127N
20068	683	131R
20069	683	138T
20070	683	142I
20071	683	144tQr
20072	683	147W
20073	683	150aARe
20074	683	156R
20075	683	158A
20076	683	163E
20077	683	166Ew
20078	683	171Y
20079	683	177Dk
20080	683	180E
20081	684	9H
4657	280	9F
4658	280	11Sv
4659	280	14R
4660	280	16Gr
4661	280	41A
4662	280	45kMe
4663	280	56G
4664	280	59Y
4665	280	62Qe
4666	280	66rNm
4667	280	70aHs
4668	280	74D
4669	280	76An
4670	280	80gTLrg
4671	280	90D
4672	280	105P
4673	280	107G
4674	280	127N
4675	280	131R
4676	280	138M
4677	280	142I
4678	280	144tKr
4679	280	147W
4680	280	150aVHa
4681	280	156W
4682	280	158V
4683	280	163R
4684	280	166Dg
4685	280	171Y
4686	280	177Et
4687	280	180Q
4688	281	9F
4689	281	11Sv
4690	281	14R
4691	281	16Gr
4692	281	41A
4693	281	45rMe
4694	281	56G
4695	281	59Y
4696	281	62Ge
4697	281	66rKv
4698	281	70aHs
4699	281	74H
4700	281	76Vd
4701	281	80gTLrg
4702	281	90A
4703	281	105S
4704	281	107W
4705	281	127K
4706	281	131R
4707	281	138M
4708	281	142T
4709	281	144tKh
4710	281	147W
4711	281	150aAHv
4712	281	156L
4713	281	158A
4714	281	163T
4715	281	166Ew
4716	281	171Y
4717	281	177Et
4718	281	180Q
4719	281	183A
4720	281	186K
4721	281	193Av
4722	281	199A
4723	281	207S
4724	281	211A
4725	281	219R
4726	281	246A
4727	281	248V
4728	281	253Q
4729	281	261V
4730	281	267P
4731	281	269P
4732	281	273R
4733	281	275Ep
4734	281	282Ip
4735	281	285V
4736	282	9F
4737	282	11Sv
4738	282	14R
4739	282	16Gr
4740	282	41A
4741	282	45rrMe
4742	282	56G
4743	282	59Y
4744	282	62Ge
4745	282	66rKv
4746	282	70aHs
4747	282	74H
4748	282	76Vd
4749	282	80gTLrg
4750	282	90A
4751	282	105S
4752	282	107W
4753	282	127K
4754	282	131R
4755	282	138M
4756	282	142T
4757	282	144tKh
4758	282	147W
4759	282	150aAHv
4760	282	156W
4761	282	158A
4762	282	163T
4763	282	166Ew
4764	282	171Y
4765	282	177Et
4766	282	180Q
4767	282	183A
4768	282	186K
4769	282	193Av
4770	282	199A
4771	282	207S
4772	282	211A
4773	282	219R
4774	282	246A
4775	282	248V
4776	282	253Q
4777	282	261V
4778	282	267P
4779	282	269P
4780	283	9F
4781	283	11Sv
4782	283	14R
4783	283	16Gr
4784	283	41A
4785	283	45rMe
4786	283	56G
4787	283	59Y
4788	283	62Ge
4789	283	66rKv
4790	283	70aHs
4791	283	74H
4792	283	76Vd
4793	283	80gTLrg
4794	283	90A
4795	283	105S
4796	283	107W
4797	283	127K
4798	283	131R
4799	283	138M
4800	283	142T
4801	283	144tKh
4802	283	147W
4803	283	150tAHe
4804	283	156W
4805	283	158A
4806	283	163T
4807	283	166Ew
4808	283	171Y
4809	283	177Et
4810	283	180Q
4811	283	183A
4812	283	186K
4813	283	193Av
4814	283	199A
4815	283	207S
4816	283	211A
4817	283	219R
4818	283	246A
4819	283	248V
4820	283	253Q
4821	283	261V
4822	283	267P
4823	283	269P
4824	283	273R
4825	283	275Ep
4826	283	282Ip
4827	283	285V
4828	284	9F
4829	284	11Sv
4830	284	14R
4831	284	16Gr
4832	284	41A
4833	284	45rrMe
4834	284	56G
4835	284	59Y
4836	284	62Ge
4837	284	66rKv
4838	284	70aHs
4839	284	74H
4840	284	76Vd
4841	284	80gTLrg
4842	284	90A
4843	284	105S
4844	284	107W
4845	284	127K
4846	284	131R
4847	284	138M
4848	284	142T
4849	284	144tKh
4850	284	147W
4851	284	150aAHv
4852	284	156L
4853	284	158A
4854	284	163T
4855	284	166Ew
4856	284	171Y
4857	284	177Et
4858	284	180Q
4859	284	183A
4860	284	186K
4861	284	193Av
4862	284	199A
4863	284	207S
4864	284	211A
4865	284	219R
4866	284	246A
4867	284	248V
4868	284	253Q
4869	284	261V
4870	284	267P
4871	284	269P
4872	284	273R
4873	284	275Ep
4874	284	282Ip
4875	284	285V
4876	285	9Y
4877	285	11Sv
4878	285	14R
4879	285	16Gr
4880	285	41A
4881	285	45rMe
4882	285	56G
4883	285	59Y
4884	285	62Ge
4885	285	66rKv
4886	285	70aHs
4887	285	74H
4888	285	76Vd
4889	285	80gTLrg
4890	285	90A
4891	285	105S
4892	285	107W
4893	285	127K
4894	285	131R
4895	285	138M
4896	285	142T
4897	285	144tKh
4898	285	147W
4899	285	150aAHv
4900	285	156W
4901	285	158A
4902	285	163T
4903	285	166Ew
4904	285	171Y
4905	285	177Et
4906	285	180Q
4907	285	183A
4908	285	186K
4909	285	193Av
4910	285	199A
4911	285	207S
4912	285	211A
4913	285	219R
4914	285	246A
4915	285	248V
4916	285	253Q
4917	285	261V
4918	285	267P
4919	285	269P
4920	285	273R
4921	285	275Ep
4922	285	282Ip
4923	285	285V
4924	286	9Y
4925	286	11Sv
4926	286	14R
4927	286	16Gr
4928	286	41A
4929	286	45rMe
4930	286	56G
4931	286	59Y
4932	286	62Ge
4933	286	66rKv
4934	286	70aHs
4935	286	74H
4936	286	76Vd
4937	286	80gTLrg
4938	286	90A
4939	286	105S
4940	286	107W
4941	286	127K
4942	286	131R
4943	286	138M
4944	286	142T
4945	286	144tKh
4946	286	147W
4947	286	150aAHv
4948	286	156L
4949	286	158A
4950	286	163T
4951	286	166Ew
4952	286	171Y
4953	286	177Et
4954	286	180Q
4955	286	183A
4956	286	186K
4957	286	193Av
4958	286	199A
4959	286	207S
4960	286	211A
4961	286	219R
4962	286	246A
4963	286	248V
4964	286	253Q
4965	286	261V
4966	286	267P
4967	286	269P
4968	286	273R
4969	286	275Ep
4970	286	282Ip
4971	286	285V
4972	287	9F
4973	287	11Sv
4974	287	14R
4975	287	16Gr
4976	287	41A
4977	287	45rMe
4978	287	56G
4979	287	59Y
4980	287	62Ge
4981	287	66rKv
4982	287	70aHs
4983	287	74H
4984	287	76Vd
4985	287	80gTLrg
4986	287	90A
4987	287	105S
4988	287	107W
4989	287	127K
4990	287	131R
4991	287	138M
4992	287	142T
4993	287	144tKh
4994	287	147W
4995	287	150aAHv
4996	287	156L
4997	287	158A
4998	287	163T
4999	287	166Ew
5000	287	171Y
5001	287	177Et
5002	287	180Q
5003	287	183A
5004	287	186K
5005	287	193Av
5006	287	199A
5007	287	207S
5008	287	211A
5009	287	219R
5010	287	246A
5011	287	248V
5012	287	253Q
5013	287	261V
5014	287	267P
5015	287	269P
5016	287	273R
5017	287	275Ep
5018	287	282Ip
5019	287	285V
5020	288	9Y
5021	288	11Sv
5022	288	14R
5023	288	16Gr
5024	288	41A
5025	288	45rMe
5026	288	56G
5027	288	59Y
5028	288	62Ge
5029	288	66rNv
5030	288	70aHs
5031	288	74H
5032	288	76Vd
5033	288	80gTLrg
5034	288	90A
5035	288	105S
5036	288	107W
5037	288	127K
5038	288	131R
5039	288	138M
5040	288	142T
5041	288	144tKh
5042	288	147W
5043	288	150aAHv
5044	288	156W
5045	288	158A
5046	288	163T
5047	288	166Ew
5048	288	171Y
5049	288	177Et
5050	288	180Q
5051	289	9F
5052	289	11Sv
5053	289	14R
5054	289	16Gr
5055	289	41A
5056	289	45rMe
5057	289	56G
5058	289	59Y
5059	289	62Ge
5060	289	66rKv
5061	289	70aHs
5062	289	74H
5063	289	76Vd
5064	289	80gTLrg
5065	289	90A
5066	289	105S
5067	289	107W
5068	289	127K
5069	289	131R
5070	289	138M
5071	289	142T
5072	289	144tKh
5073	289	147W
5074	289	150aAHv
5075	289	156L
5076	289	158A
5077	289	163T
5078	289	166Ew
5079	289	171Y
5080	289	177Et
5081	289	180Q
5082	289	183A
5083	289	186K
5084	289	193Av
5085	289	199A
5086	289	207S
5087	289	211A
5088	289	219R
5089	289	246A
5090	289	248V
5091	289	253Q
5092	289	261V
5093	289	267P
5094	289	269P
5095	289	273R
5096	289	275Ep
5097	289	282Ip
5098	289	285V
5099	290	9Y
5100	290	11Sv
5101	290	14R
5102	290	16Gr
5103	290	41A
5104	290	45rMe
5105	290	56G
5106	290	59Y
5107	290	62Ge
5108	290	66rKv
5109	290	70aHs
5110	290	74H
5111	290	76Vd
5112	290	80gTLrg
5113	290	90A
5114	290	105S
5115	290	107W
5116	290	127K
5117	290	131R
5118	290	138M
5119	290	142T
5120	290	144tKh
5121	290	147W
5122	290	150aAHv
5123	290	156L
5124	290	158A
5125	290	163T
5126	290	166Ew
5127	290	171Y
5128	290	177Et
5129	290	180Q
5130	290	183A
5131	290	186K
5132	290	193Av
5133	290	199A
5134	290	207S
5135	290	211A
5136	290	219R
5137	290	246A
5138	290	248V
5139	290	253Q
5140	290	261V
5141	290	267P
5142	290	269P
5143	290	273R
5144	290	275Ep
5145	290	282Ip
5146	290	285V
5147	291	9F
5148	291	11Sv
5149	291	14R
5150	291	16Gr
5151	291	41A
5152	291	45rMe
5153	291	56G
5154	291	59Y
5155	291	62Ge
5156	291	66rKv
5157	291	70aHs
5158	291	74iD
5159	291	76Vd
5160	291	80gTLrg
5161	291	90A
5162	291	105S
5163	291	107W
5164	291	127K
5165	291	131R
5166	291	138M
5167	291	142T
5168	291	144tKh
5169	291	147W
5170	291	150aAHv
5171	291	156L
5172	291	158A
5173	291	163T
5174	291	166Ew
5175	291	171Y
5176	291	177Et
5177	291	180Q
5178	291	183A
5179	291	186K
5180	291	193Av
5181	291	199A
5182	291	207S
5183	291	211A
5184	291	219R
5185	291	246A
5186	291	248V
5187	291	253Q
5188	291	261V
5189	291	267P
5190	291	269P
5191	291	273R
5192	291	275Ep
5193	291	282Ip
5194	291	285V
20082	684	11Sv
20083	684	14R
20084	684	16Gr
20085	684	41T
20086	684	45Ke
20087	684	56G
20088	684	59Y
20089	684	62Re
20090	684	66qIs
20091	684	70tNt
20092	684	74Y
20093	684	76Es
20094	684	80rNLrg
20095	684	90A
20096	684	105P
20097	684	107G
20098	684	127N
20099	684	131R
20100	684	138T
20101	684	142I
20102	684	144sQr
20103	684	147L
20104	684	150aARv
20105	684	156L
20106	684	158A
20107	684	163E
20108	684	166Ew
20109	684	171Y
20110	684	177Dk
20111	684	180E
20112	685	9H
20113	685	11Sv
20114	685	14R
20115	685	16Gr
20116	685	41T
20117	685	45Ke
20118	685	56G
20119	685	59Y
20120	685	62Re
20121	685	66qIs
20122	685	70tNt
20123	685	74Y
20124	685	76Es
20125	685	80rNLrg
20126	685	90A
20127	685	105P
20128	685	107G
20129	685	127N
5243	293	9F
5244	293	11Sv
5245	293	14R
5246	293	16Gr
5247	293	41A
5248	293	45rMe
5249	293	56G
5250	293	59Y
5251	293	62Ge
5252	293	66rKv
5253	293	70aHs
5254	293	74H
5255	293	76Vd
5256	293	80gTLrg
5257	293	90A
5258	293	105S
5259	293	107W
5260	293	127K
5261	293	131R
5262	293	138M
5263	293	142T
5264	293	144tKh
5265	293	147W
5266	293	150aAHe
5267	293	156Q
5268	293	158A
5269	293	163T
5270	293	166Ew
5271	293	171Y
5272	293	177Et
5273	293	180Q
5274	293	183A
5275	293	186K
5276	293	193Av
5277	293	199A
5278	293	207S
5279	293	211A
5280	293	219R
5281	293	246A
5282	293	248V
5283	293	253Q
5284	293	261V
5285	293	267P
5286	293	269P
5287	293	273R
5288	293	275Ep
5289	293	282Ip
5290	293	285V
5291	294	9Y
5292	294	11Sv
5293	294	14R
5294	294	16Gr
5295	294	41A
5296	294	45rrMe
5297	294	56G
5298	294	59Y
5299	294	62Ge
5300	294	66rKv
5301	294	70aHs
5302	294	74H
5303	294	76Vd
5304	294	80gTLrg
5305	294	90A
5306	294	105S
5307	294	107W
5308	294	127K
5309	294	131R
5310	294	138M
5311	294	142T
5312	294	144tKh
5313	294	147W
5314	294	150aAHv
5315	294	156L
5316	294	158A
5317	294	163T
5318	294	166Ew
5319	294	171Y
5320	294	177Et
5321	294	180Q
5322	295	9F
5323	295	11Sv
5324	295	14R
5325	295	16Gr
5326	295	41A
5327	295	45rMe
5328	295	56G
5329	295	59Y
5330	295	62Ge
5331	295	66rKv
5332	295	70aHs
5333	295	74H
5334	295	76Vd
5335	295	80gTLrg
5336	295	90A
5337	295	105S
5338	295	107W
5339	295	127K
5340	295	131R
5341	295	138M
5342	295	142T
5343	295	144tKh
5344	295	147W
5345	295	150aAHv
5346	295	156L
5347	295	158A
5348	295	163E
5349	295	166Ew
5350	295	171Y
5351	295	177Et
5352	295	180Q
5353	295	183A
5354	295	186K
5355	295	193Av
5356	295	199A
5357	295	207S
5358	295	211A
5359	295	219R
5360	295	246A
5361	295	248V
5362	295	253Q
5363	295	261V
5364	295	267P
5365	295	269P
5366	295	273R
5367	295	275Ep
5368	295	282Ip
5369	295	285V
5370	296	9F
5371	296	11Sv
5372	296	14R
5373	296	16Gr
5374	296	41A
5375	296	45rMe
5376	296	56G
5377	296	59Y
5378	296	62Ge
5379	296	66rKv
5380	296	70aHs
5381	296	74H
5382	296	76Vd
5383	296	80gTLrg
5384	296	90A
5385	296	105S
5386	296	107W
5387	296	127K
5388	296	131R
5389	296	138M
5390	296	142T
5391	296	144tKh
5392	296	147W
5393	296	150aAHv
5394	296	156L
5395	296	158A
5396	296	163T
5397	296	166Ew
5398	296	171Y
5399	296	177Et
5400	296	180Q
5401	296	183A
5402	296	186K
5403	296	193Av
5404	296	199A
5405	296	207S
5406	296	211A
5407	296	219R
5408	296	246A
5409	296	248V
5410	296	253Q
5411	296	261V
5412	296	267P
5413	296	269P
5414	296	273R
5415	296	275Ep
5416	296	282Ip
5417	296	285V
5418	297	9F
5419	297	11Sv
5420	297	14R
5421	297	16Gr
5422	297	41A
5423	297	45rMe
5424	297	56G
5425	297	59Y
5426	297	62Ge
5427	297	66rKv
5428	297	70aHs
5429	297	74H
5430	297	76Vd
5431	297	80gTLrg
5432	297	90A
5433	297	105S
5434	297	107W
5435	297	127K
5436	297	131R
5437	297	138K
5438	297	142T
5439	297	144tKh
5440	297	147W
5441	297	150aAHv
5442	297	156L
5443	297	158A
5444	297	163T
5445	297	166Ew
5446	297	171Y
5447	297	177Et
5448	297	180Q
5449	297	183A
5450	297	186K
5451	297	193Av
5452	297	199A
5453	297	207S
5454	297	211A
5455	297	219R
5456	297	246A
5457	297	248V
5458	297	253Q
5459	297	261V
5460	297	267P
5461	297	269P
5462	297	273R
5463	297	275Ep
5464	297	282Ip
5465	297	285V
5466	298	9F
5467	298	11Sv
5468	298	14R
5469	298	16Gr
5470	298	41A
5471	298	45rMe
5472	298	56G
5473	298	59Y
5474	298	62Ge
5475	298	66rKv
5476	298	70aHs
5477	298	74H
5478	298	76Vd
5479	298	80gTLrg
5480	298	90A
5481	298	105S
5482	298	107W
5483	298	127K
5484	298	131R
5485	298	138M
5486	298	142I
5487	298	144tKr
5488	298	147W
5489	298	150aAHv
5490	298	156Q
5491	298	158A
5492	298	163T
5493	298	166Dg
5494	298	171Y
5495	298	177Et
5496	298	180Q
5497	299	9F
5498	299	11Sv
5499	299	14R
5500	299	16Gr
5501	299	41A
5502	299	45rMe
5503	299	56G
5504	299	59Y
5505	299	62Ge
5506	299	66rNv
5507	299	70aHs
5508	299	74H
5509	299	76Vd
5510	299	80gTLrg
5511	299	90A
5512	299	105S
5513	299	107W
5514	299	127K
5515	299	131R
5516	299	138M
5517	299	142T
5518	299	144tKh
5519	299	147W
5520	299	150aAHv
5521	299	156L
5522	299	158A
5523	299	163T
5524	299	166Ew
5525	299	171Y
5526	299	177Et
5527	299	180Q
5528	300	9F
5529	300	11Sv
5530	300	14R
5531	300	16Gr
5532	300	41A
5533	300	45rMe
5534	300	56G
5535	300	59Y
5536	300	62Ge
5537	300	66rKv
5538	300	70aHs
5539	300	74H
5540	300	76Vd
5541	300	80gTLrg
5542	300	90A
5543	300	105S
5544	300	107W
5545	300	127K
5546	300	131R
5547	300	138M
5548	300	142T
5549	300	144tKh
5550	300	147W
5551	300	150aAHv
5552	300	156L
5553	300	158A
5554	300	163T
5555	300	166Ew
5556	300	171Y
5557	300	177Et
5558	300	180Q
5559	300	183A
5560	300	186K
5561	300	193Av
5562	300	199A
5563	300	207S
5564	300	211A
5565	300	219R
5566	300	246A
5567	300	248V
5568	300	253Q
5569	300	261V
5570	300	267P
5571	300	269P
5572	300	273R
5573	300	275Ep
5574	300	282Ip
5575	300	285V
5576	301	9Y
5577	301	11Sv
5578	301	14R
5579	301	16Gr
5580	301	41A
5581	301	45rMe
5582	301	56G
5583	301	59Y
5584	301	62Ge
5585	301	66rKv
5586	301	70aHs
5587	301	74H
5588	301	76Vd
5589	301	80gTLrg
5590	301	90A
5591	301	105S
5592	301	107W
5593	301	127K
5594	301	131R
5595	301	138M
5596	301	142T
5597	301	144tKh
5598	301	147W
5599	301	150aAHv
5600	301	156W
5601	301	158A
5602	301	163T
5603	301	166Ew
5604	301	171Y
5605	301	177Et
5606	301	180Q
5607	301	183A
5608	301	186K
5609	301	193Av
5610	301	199A
5611	301	207S
5612	301	211A
5613	301	219R
5614	301	246A
5615	301	248V
5616	301	253Q
5617	301	261V
5618	301	267P
5619	301	269P
5620	301	273R
5621	301	275Ep
5622	301	282Ip
5623	301	285V
5624	302	9F
5625	302	11Sv
5626	302	14R
5627	302	16Gr
5628	302	41A
5629	302	45rMe
5630	302	56G
5631	302	59Y
5632	302	62Ge
5633	302	66rKv
5634	302	70aHs
5635	302	74H
5636	302	76Vd
5637	302	80gTLrg
5638	302	90A
5639	302	105S
5640	302	107W
5641	302	127K
5642	302	131R
5643	302	138M
5644	302	142T
5645	302	144tKh
5646	302	147W
5647	302	150aAHv
5648	302	156L
5649	302	158A
5650	302	163T
5651	302	166Ew
5652	302	171Y
5653	302	177Et
5654	302	180Q
5655	303	9F
5656	303	11Sv
5657	303	14R
5658	303	16Gr
5659	303	41A
5660	303	45rMe
5661	303	56G
5662	303	59Y
5663	303	62Ge
5664	303	66rKv
5665	303	70aHs
5666	303	74H
5667	303	76Vd
5668	303	80gTLrg
5669	303	90A
5670	303	105S
5671	303	107W
5672	303	127K
5673	303	131R
5674	303	138M
5675	303	142T
5676	303	144tKh
5677	303	147W
5678	303	150tAHv
5679	303	156L
5680	303	158A
5681	303	163T
5682	303	166Ew
5683	303	171Y
5684	303	177Et
5685	303	180Q
5686	304	9F
5687	304	11Sv
5688	304	14R
5689	304	16Gr
5690	304	41A
5691	304	45rMe
5692	304	56G
5693	304	59Y
5694	304	62Ge
5695	304	66rKv
5696	304	70aHs
5697	304	74H
5698	304	76Vd
5699	304	80gTLrg
5700	304	90A
5701	304	105S
5702	304	107W
5703	304	127K
5704	304	131R
5705	304	138M
5706	304	142T
5707	304	144tKh
5708	304	147W
5709	304	150aAHe
5710	304	156L
5711	304	158A
5712	304	163T
5713	304	166Ew
5714	304	171Y
5715	304	177Et
5716	304	180Q
5717	304	183A
5718	304	186K
5719	304	193Av
5720	304	199A
5721	304	207S
5722	304	211A
5723	304	219R
5724	304	246A
5725	304	248V
5726	304	253Q
5727	304	261V
5728	304	267P
5729	304	269P
5730	304	273R
5731	304	275Ep
5732	304	282Ip
5733	304	285V
5734	305	9F
5735	305	11Sv
5736	305	14R
5737	305	16Gr
5738	305	41A
5739	305	45rMe
5740	305	56G
5741	305	59Y
5742	305	62Ge
5743	305	66rKv
5744	305	70aHs
5745	305	74H
5746	305	76Vd
5747	305	80gTLrg
5748	305	90A
5749	305	105S
5750	305	107W
5751	305	127K
5752	305	131R
5753	305	138M
5754	305	142T
5755	305	144tKh
5756	305	147W
5757	305	150aAHa
5758	305	156Q
5759	305	158A
5760	305	163T
5761	305	166Ew
5762	305	171Y
5763	305	177Et
5764	305	180Q
5765	306	9Y
5766	306	11Sv
5767	306	14R
5768	306	16Gr
5769	306	41A
5770	306	45rMe
5771	306	56S
5772	306	59Y
5773	306	62Ge
5774	306	66rKv
5775	306	70aHs
5776	306	74H
5777	306	76Vd
5778	306	80gTLrg
5779	306	90A
5780	306	105S
5781	306	107W
5782	306	127K
5783	306	131R
5784	306	138M
5785	306	142T
5786	306	144tKh
5787	306	147W
5788	306	150aAHv
5789	306	156L
5790	306	158A
5791	306	163T
5792	306	166Ew
5793	306	171Y
5794	306	177Et
5795	306	180Q
5796	307	9F
5797	307	11Sv
5798	307	14R
5799	307	16Gr
5800	307	41A
5801	307	45rMe
5802	307	56S
5803	307	59Y
5804	307	62Ge
5805	307	66rQv
5806	307	70aHs
5807	307	74H
5808	307	76Vd
5809	307	80gTLrg
5810	307	90A
5811	307	105S
5812	307	107W
5813	307	127K
5814	307	131R
5815	307	138M
5816	307	142T
5817	307	144tKh
5818	307	147W
5819	307	150aAHv
5820	307	156L
5821	307	158A
5822	307	163T
5823	307	166Ew
5824	307	171Y
5825	307	177Et
5826	307	180Q
5827	308	9F
5828	308	11Sv
5829	308	14R
5830	308	16Gr
5831	308	41A
5832	308	45rMe
5833	308	56G
5834	308	59Y
5835	308	62Ge
5836	308	66rKv
5837	308	70aHs
5838	308	74H
5839	308	76Vd
5840	308	80gTLrg
5841	308	90A
5842	308	105S
5843	308	107W
5844	308	127K
5845	308	131R
5846	308	138M
5847	308	142T
5848	308	144tKh
5849	308	147W
5850	308	150aAHv
5851	308	156L
5852	308	158A
5853	308	163T
5854	308	166Ew
5855	308	171Y
5856	308	177Et
5857	308	180Q
5858	308	183A
5859	308	186K
5860	308	193Av
5861	308	199A
5862	308	207S
5863	308	211A
5864	308	219R
5865	308	246A
5866	308	248V
5867	308	253Q
5868	308	261V
5869	308	267P
5870	308	269P
5871	308	273R
5872	308	275Ep
5873	308	282Ip
5874	308	285V
5875	309	9F
5876	309	11Sv
5877	309	14R
5878	309	16Gr
5879	309	41G
5880	309	45rMe
5881	309	56G
5882	309	59Y
5883	309	62Ge
5884	309	66rKv
5885	309	70aHs
5886	309	74H
5887	309	76Vd
5888	309	80gTLrg
5889	309	90A
5890	309	105S
5891	309	107W
5892	309	127K
5893	309	131R
5894	309	138M
5895	309	142T
5896	309	144tKh
5897	309	147W
5898	309	150aAHv
5899	309	156L
5900	309	158A
5901	309	163T
5902	309	166Ew
5903	309	171Y
5904	309	177Et
5905	309	180Q
5906	310	9F
5907	310	11Sv
5908	310	14R
5909	310	16Gr
5910	310	41A
5911	310	45rMe
5912	310	56G
5913	310	59Y
5914	310	62Ge
5915	310	66rKv
5916	310	70aHs
5917	310	74H
5918	310	76Vd
5919	310	80gTLrg
5920	310	90A
5921	310	105S
5922	310	107W
5923	310	127K
5924	310	131R
5925	310	138M
5926	310	142T
5927	310	144tKh
5928	310	147W
5929	310	150aAHv
5930	310	156L
5931	310	158A
5932	310	163T
5933	310	166Ew
5934	310	171Y
5935	310	177Et
5936	310	180Q
5937	310	183A
5938	310	186K
5939	310	193Av
5940	310	199A
5941	310	207S
5942	310	211A
5943	310	219R
5944	310	246A
5945	310	248V
5946	310	253Q
5947	310	261V
5948	310	267P
5949	310	269P
5950	310	273R
5951	310	275Ep
5952	310	282Ip
5953	310	285V
5954	311	9F
5955	311	11Sv
5956	311	14R
5957	311	16Gr
5958	311	41A
5959	311	45rMe
5960	311	56G
5961	311	59Y
5962	311	62Ge
5963	311	66rKv
5964	311	70aHs
5965	311	74H
5966	311	76Vd
5967	311	80gTLrg
5968	311	90A
5969	311	105S
5970	311	107W
5971	311	127K
5972	311	131R
5973	311	138M
5974	311	142T
5975	311	144tKh
5976	311	147W
5977	311	150aAHv
5978	311	156L
5979	311	158A
5980	311	163T
5981	311	166Ew
5982	311	171Y
5983	311	177Et
5984	311	180Q
5985	311	183A
5986	311	186K
5987	311	193Av
5988	311	199A
5989	311	207S
5990	311	211A
5991	311	219R
5992	311	246A
5993	311	248V
5994	311	253Q
5995	311	261V
5996	311	267P
5997	311	269P
5998	311	273R
5999	312	9F
6000	312	11Sv
6001	312	14R
6002	312	16Gr
6003	312	41A
6004	312	45rMe
6005	312	56G
6006	312	59Y
6007	312	62Ge
6008	312	66rKv
6009	312	70aHs
6010	312	74D
6011	312	76Vd
6012	312	80gTLrg
6013	312	90A
6014	312	105S
6015	312	107W
6016	312	127K
6017	312	131R
6018	312	138M
6019	312	142T
6020	312	144tKh
6021	312	147W
6022	312	150aAHv
6023	312	156L
6024	312	158A
6025	312	163T
6026	312	166Ew
6027	312	171Y
6028	312	177Et
6029	312	180Q
6030	313	9F
6031	313	11Sv
6032	313	14R
6033	313	16Gr
6034	313	41A
6035	313	45rMe
6036	313	56G
6037	313	59Y
6038	313	62Ge
6039	313	66rKv
6040	313	70aHs
6041	313	74H
6042	313	76Vd
6043	313	80gTLrg
6044	313	90A
6045	313	105S
6046	313	107W
6047	313	127K
6048	313	131R
6049	313	138M
6050	313	142T
6051	313	144tKh
6052	313	147W
6053	313	150aAHv
6054	313	156L
6055	313	158A
6056	313	163T
6057	313	166Dg
6058	313	171Y
6059	313	177Et
6060	313	180Q
6061	314	9F
6062	314	11Sv
6063	314	14R
6064	314	16Gr
6065	314	41A
6066	314	45rMe
6067	314	56G
6068	314	59Y
6069	314	62Ge
6070	314	66rKv
6071	314	70aHs
6072	314	74H
6073	314	76Vd
6074	314	80gTLrg
6075	314	90A
6076	314	105S
6077	314	107W
6078	314	127K
6079	314	131R
6080	314	138M
6081	314	142T
6082	314	144tKh
6083	314	147W
6084	314	150aAHv
6085	314	156Q
6086	314	158A
6087	314	163T
6088	314	166Dg
6089	314	171Y
6090	314	177Et
6091	314	180Q
6092	315	9F
6093	315	11Sv
6094	315	14R
6095	315	16Gr
6096	315	41A
6097	315	45rMe
6098	315	56G
6099	315	59Y
6100	315	62Ge
6101	315	66rKv
6102	315	70aHs
6103	315	74H
6104	315	76Vd
6105	315	80gTLrg
6106	315	90A
6107	315	105S
6108	315	107W
6109	315	127K
6110	315	131R
6111	315	138M
6112	315	142T
6113	315	144tKh
6114	315	147W
6115	315	150tAHe
6116	315	156Q
6117	315	158A
6118	315	163R
6119	315	166Ew
6120	315	171Y
6121	315	177Et
6122	315	180Q
6123	316	9F
6124	316	11Sv
6125	316	14R
6126	316	16Gr
6127	316	41A
6128	316	45rMe
6129	316	56G
6130	316	59Y
6131	316	62Ge
6132	316	66rKv
6133	316	70aHs
6134	316	74H
6135	316	76Vd
6136	316	80gTLrg
6137	316	90A
6138	316	105S
6139	316	107G
6140	316	127K
6141	316	131R
6142	316	138M
6143	316	142I
6144	316	144tKh
6145	316	147W
6146	316	150aAHv
6147	316	156L
6148	316	158A
6149	316	163T
6150	316	166Ew
6151	316	171Y
6152	316	177Et
6153	316	180Q
6154	317	9F
6155	317	11Sv
6156	317	14R
6157	317	16Gr
6158	317	41A
6159	317	45rMe
6160	317	56G
6161	317	59Y
6162	317	62Ge
6163	317	66rKv
6164	317	70aHs
6165	317	74H
6166	317	76Vd
6167	317	80gTLrg
6168	317	90A
6169	317	105S
6170	317	107W
6171	317	127K
6172	317	131R
6173	317	138M
6174	317	142T
6175	317	144tKh
6176	317	147W
6177	317	150aARv
6178	317	156L
6179	317	158A
6180	317	163T
6181	317	166Ew
6182	317	171Y
6183	317	177Et
6184	317	180Q
6185	318	9Y
6186	318	11Sv
6187	318	14R
6188	318	16Gr
6189	318	41A
6190	318	45rMe
6191	318	56G
6192	318	59Y
6193	318	62Ge
6194	318	66rKv
6195	318	70aHs
6196	318	74H
6197	318	76Vd
6198	318	80gTLrg
6199	318	90A
6200	318	105S
6201	318	107W
6202	318	127K
6203	318	131R
6204	318	138M
6205	318	142T
6206	318	144tKh
6207	318	147W
6208	318	150aAHv
6209	318	156L
6210	318	158A
6211	318	163T
6212	318	166Ew
6213	318	171Y
6214	318	177Et
6215	318	180Q
6216	319	9F
6217	319	11Sv
6218	319	14R
6219	319	16Gr
6220	319	41A
6221	319	45rMe
6222	319	56G
6223	319	59Y
6224	319	62Ge
6225	319	66rKv
6226	319	70aHs
6227	319	74H
6228	319	76Vd
6229	319	80gTLrg
6230	319	90A
6231	319	105S
6232	319	107W
6233	319	127K
6234	319	131R
6235	319	138M
6236	319	142T
6237	319	144tKh
6238	319	147W
6239	319	150aAHv
6240	319	156L
6241	319	158A
6242	319	163T
6243	319	166Ew
6244	319	171Y
6245	319	177Et
6246	319	180Q
6247	320	9Y
6248	320	11Sv
6249	320	14R
6250	320	16Gr
6251	320	41A
6252	320	45rMe
6253	320	56G
6254	320	59Y
6255	320	62Qe
6256	320	66rKv
6257	320	70aHs
6258	320	74H
6259	320	76Vd
6260	320	80gTLrg
6261	320	90A
6262	320	105S
6263	320	107W
6264	320	127K
6265	320	131R
6266	320	138M
6267	320	142I
6268	320	144tKr
6269	320	147W
6270	320	150aAHv
6271	320	156Q
6272	320	158A
6273	320	163T
6274	320	166Ew
6275	320	171Y
6276	320	177Et
6277	320	180Q
6278	321	9F
6279	321	11Sv
6280	321	14R
6281	321	16Gr
6282	321	41A
6283	321	45rMe
6284	321	56G
6285	321	59Y
6286	321	62Ge
6287	321	66rKv
6288	321	70aHs
6289	321	74H
6290	321	76Vd
6291	321	80gTLrg
6292	321	90A
6293	321	105S
6294	321	107W
6295	321	127K
6296	321	131R
6297	321	138M
6298	321	142T
6299	321	144tKh
6300	321	147W
6301	321	150aAHv
6302	321	156L
6303	321	158A
6304	321	163T
6305	321	166Ew
6306	321	171Y
6307	321	177Et
6308	321	180Q
6309	322	9F
6310	322	11Sv
6311	322	14R
6312	322	16Gr
6313	322	41A
6314	322	45rMe
6315	322	56G
6316	322	59Y
6317	322	62Ee
6318	322	66rKv
6319	322	70aHs
6320	322	74H
6321	322	76Vd
6322	322	80gTLrg
6323	322	90A
6324	322	105S
6325	322	107W
6326	322	127K
6327	322	131R
6328	322	138M
6329	322	142T
6330	322	144tKh
6331	322	147W
6332	322	150aAHv
6333	322	156L
6334	322	158A
6335	322	163T
6336	322	166Ew
6337	322	171Y
6338	322	177Et
6339	322	180Q
6340	323	9F
6341	323	11Sv
6342	323	14R
6343	323	16Gr
6344	323	41A
6345	323	45rMe
6346	323	56G
6347	323	59Y
6348	323	62Qe
6349	323	66rNv
6350	323	70aQs
6351	323	74D
6352	323	76Vd
6353	323	80gTLrg
6354	323	90A
6355	323	105S
6356	323	107G
6357	323	127N
6358	323	131R
6359	323	138M
6360	323	142I
6361	323	144tKr
6362	323	147W
6363	323	150aAHe
6364	323	156L
6365	323	158A
6366	323	163dT
6367	323	166Ew
6368	323	171Y
6369	323	177Et
6370	323	180Q
6371	323	183P
6372	323	186K
6373	323	193Pi
6374	323	199A
6375	323	207G
6376	323	211A
6377	323	219R
6378	323	246A
6379	323	248V
6380	323	253E
6381	323	261V
6382	323	267P
6383	323	269P
6384	323	273R
6385	323	275L
6386	323	282Ip
6387	323	285V
6388	324	9F
6389	324	11Sv
6390	324	14R
6391	324	16Gr
6392	324	41A
6393	324	45rMe
6394	324	56G
6395	324	59Y
6396	324	62Qe
6397	324	66rNv
6398	324	70aQs
6399	324	74D
6400	324	76Vd
6401	324	80gTLrg
6402	324	90A
6403	324	105S
6404	324	107G
6405	324	127N
6406	324	131R
6407	324	138M
6408	324	142I
6409	324	144tKr
6410	324	147W
6411	324	150aAHv
6412	324	156Q
6413	324	158A
6414	324	163dT
6415	324	166Ew
6416	324	171Y
6417	324	177Et
6418	324	180Q
6419	324	183P
6420	324	186K
6421	324	193Pi
6422	324	199A
6423	324	207G
6424	324	211A
6425	324	219R
6426	324	246A
6427	324	248V
6428	324	253E
6429	324	261V
6430	324	267P
6431	324	269P
6432	324	273R
6433	324	275L
6434	324	282Ip
6435	324	285V
6436	325	9F
6437	325	11Sv
6438	325	14R
6439	325	16Gr
6440	325	41A
6441	325	45rMe
6442	325	56G
6443	325	59Y
6444	325	62Qe
6445	325	66rNv
6446	325	70aQs
6447	325	74D
6448	325	76Vd
6449	325	80gTLrg
6450	325	90A
6451	325	105S
6452	325	107G
6453	325	127N
6454	325	131R
6455	325	138M
6456	325	142I
6457	325	144tKr
6458	325	147W
6459	325	150aAHe
6460	325	156L
6461	325	158A
6462	325	163dT
6463	325	166Ew
6464	325	171Y
6465	325	177Et
6466	325	180Q
6467	325	183P
6468	325	186K
6469	325	193Pi
6470	325	199A
6471	325	207G
6472	325	211A
6473	325	219R
6474	325	246A
6475	325	248V
6476	325	253E
6477	325	261V
6478	325	267P
6479	325	269P
6480	325	273R
6481	325	275L
6482	325	282Ip
6483	325	285V
6484	326	9F
6485	326	11Sv
6486	326	14R
6487	326	16Gr
6488	326	41A
6489	326	45rMe
6490	326	56G
6491	326	59Y
6492	326	62Qe
6493	326	66rNv
6494	326	70aQs
6495	326	74D
6496	326	76Vd
6497	326	80gTLrg
6498	326	90A
6499	326	105S
6500	326	107G
6501	326	127N
6502	326	131R
6503	326	138M
6504	326	142I
6505	326	144tKr
6506	326	147W
6507	326	150aAHe
6508	326	156L
6509	326	158A
6510	326	163T
6511	326	166Ew
6512	326	171Y
6513	326	177rEt
6514	326	180Q
6515	326	183P
6516	326	186K
6517	326	193Pi
6518	326	199A
6519	326	207G
6520	326	211A
6521	326	219R
6522	326	246A
6523	326	248V
6524	326	253E
6525	326	261V
6526	326	267P
6527	326	269P
6528	326	273R
6529	326	275
6530	326	282
6531	326	285
6532	327	9F
6533	327	11Sv
6534	327	14R
6535	327	16Gr
6536	327	41A
6537	327	45rMe
6538	327	56G
6539	327	59Y
6540	327	62Qe
6541	327	66rNv
6542	327	70aQs
6543	327	74D
6544	327	76Vd
6545	327	80gTLrg
6546	327	90A
6547	327	105S
6548	327	107G
6549	327	127N
6550	327	131R
6551	327	138M
6552	327	142I
6553	327	144tKr
6554	327	147W
6555	327	150aAHe
6556	327	156L
6557	327	158A
6558	327	163daT
6559	327	166Ew
6560	327	171Y
6561	327	177Et
6562	327	180Q
6563	328	9F
6564	328	11Sv
6565	328	14R
6566	328	16Gr
6567	328	41A
6568	328	45rMe
6569	328	56G
6570	328	59Y
6571	328	62Qe
6572	328	66rNv
6573	328	70aQs
6574	328	74D
6575	328	76Vd
6576	328	80gTLrg
6577	328	90A
6578	328	105S
6579	328	107G
6580	328	127N
6581	328	131R
6582	328	138M
6583	328	142I
6584	328	144tKr
6585	328	147W
6586	328	150aAHe
6587	328	156L
6588	328	158A
6589	328	163dT
6590	328	166Ew
6591	328	171Y
6592	328	177Et
6593	328	180Q
6594	329	9Y
6595	329	11Sv
6596	329	14R
6597	329	16Gr
6598	329	41A
6599	329	45rMe
6600	329	56G
6601	329	59Y
6602	329	62Qe
6603	329	66rNv
6604	329	70aQs
6605	329	74D
6606	329	76Vd
6607	329	80gTLrg
6608	329	90D
6609	329	105P
6610	329	107G
6611	329	127N
6612	329	131R
6613	329	138M
6614	329	142I
6615	329	144tKr
6616	329	147W
6617	329	150aAHa
6618	329	156Q
6619	329	158A
6620	329	163R
6621	329	166Ew
6622	329	171Y
6623	329	177Et
6624	329	180Q
6625	329	183P
6626	329	186K
6627	329	193Pi
6628	329	199A
6629	329	207G
6630	329	211A
6631	329	219R
6632	329	246A
6633	329	248V
6634	329	253E
6635	329	261V
6636	329	267P
6637	329	269P
6638	329	273R
6639	329	275L
6640	329	282Ip
6641	329	285V
6642	330	9Y
6643	330	11Sv
6644	330	14R
6645	330	16GrK
6646	330	41A
6647	330	45rMe
6648	330	56G
6649	330	59Y
6650	330	62Qe
6651	330	66rNv
6652	330	70aQs
6653	330	74D
6654	330	76Vd
6655	330	80gTLrg
6656	330	90D
6657	330	105P
6658	330	107G
6659	330	127N
6660	330	131R
6661	330	138M
6662	330	142I
6663	330	144tKr
6664	330	147W
6665	330	150aAHa
6666	330	156Q
6667	330	158A
6668	330	163R
6669	330	166Ew
6670	330	171Y
6671	330	177Et
6672	330	180Q
6673	330	183P
6674	330	186K
6675	330	193Pi
6676	330	199A
6677	330	207G
6678	330	211A
6679	330	219R
6680	330	246A
6681	330	248V
6682	330	253E
6683	330	261V
6684	330	267P
6685	330	269P
6686	330	273R
6687	331	9Y
6688	331	11Sv
6689	331	14R
6690	331	16Gr
6691	331	41A
6692	331	45rMe
6693	331	56G
6694	331	59Y
6695	331	62Qe
6696	331	66rNv
6697	331	70aQs
6698	331	74D
6699	331	76Vd
6700	331	80gTLrg
6701	331	90D
6702	331	105P
6703	331	107G
6704	331	127N
6705	331	131R
6706	331	138M
6707	331	142I
6708	331	144tKr
6709	331	147W
6710	331	150aARe
6711	331	156Q
6712	331	158A
6713	331	163R
6714	331	166Ew
6715	331	171Y
6716	331	177Et
6717	331	180Q
6718	332	9Y
6719	332	11Sv
6720	332	14R
6721	332	16Gr
6722	332	41A
6723	332	45rMe
6724	332	56G
6725	332	59Y
6726	332	62Qe
6727	332	66rNv
6728	332	70aQs
6729	332	74D
6730	332	76Vd
6731	332	80gTLrg
6732	332	90D
6733	332	105P
6734	332	107G
6735	332	127N
6736	332	131R
6737	332	138M
6738	332	142I
6739	332	144tKr
6740	332	147W
6741	332	150aAHa
6742	332	156Q
6743	332	158A
6744	332	163T
6745	332	166Ew
6746	332	171Y
6747	332	177Et
6748	332	180Q
6749	332	183P
6750	332	186K
6751	332	193Pi
6752	332	199A
6753	332	207G
6754	332	211A
6755	332	219R
6756	332	246A
6757	332	248V
6758	332	253E
6759	332	261V
6760	332	267P
6761	332	269P
6762	332	273R
6763	332	275L
6764	332	282Ip
6765	332	285V
6766	333	9Y
6767	333	11Sv
6768	333	14R
6769	333	16Gr
6770	333	41A
6771	333	45rMe
6772	333	56G
6773	333	59Y
6774	333	62Qe
6775	333	66rNv
6776	333	70aQs
6777	333	74D
6778	333	76Vd
6779	333	80gTLrg
6780	333	90D
6781	333	105P
6782	333	107G
6783	333	127N
6784	333	131R
6785	333	138M
6786	333	142I
6787	333	144tEr
6788	333	147W
6789	333	150aAHa
6790	333	156Q
6791	333	158A
6792	333	163R
6793	333	166Ew
6794	333	171Y
6795	333	177Et
6796	333	180Q
6797	334	9Y
6798	334	11Sv
6799	334	14R
6800	334	16Gr
6801	334	41A
6802	334	45rMe
6803	334	56G
6804	334	59Y
6805	334	62Qe
6806	334	66rNv
6807	334	70aQs
6808	334	74H
6809	334	76Vd
6810	334	80gTLrg
6811	334	90D
6812	334	105P
6813	334	107G
6814	334	127N
6815	334	131R
6816	334	138M
6817	334	142I
6818	334	144tKr
6819	334	147W
6820	334	150aAHa
6821	334	156Q
6822	334	158A
6823	334	163R
6824	334	166Ew
6825	334	171Y
6826	334	177Et
6827	334	180Q
6828	335	9Y
6829	335	11Sv
6830	335	14R
6831	335	16Gr
6832	335	41A
6833	335	45rMe
6834	335	56G
6835	335	59Y
6836	335	62Qe
6837	335	66rNv
6838	335	70aQs
6839	335	74D
6840	335	76Vd
6841	335	80gTLrg
6842	335	90D
6843	335	105P
6844	335	107GrL
6845	335	127N
6846	335	131R
6847	335	138M
6848	335	142I
6849	335	144tKr
6850	335	147W
6851	335	150aAHa
6852	335	156Q
6853	335	158A
6854	335	163R
6855	335	166Ew
6856	335	171Y
6857	335	177Et
6858	335	180Q
6859	335	183P
6860	335	186K
6861	335	193Pi
6862	335	199A
6863	335	207G
6864	335	211A
6865	335	219R
6866	335	246A
6867	335	248V
6868	335	253E
6869	335	261V
6870	335	267P
6871	335	269P
6872	335	273R
6873	335	275L
6874	335	282Ip
6875	335	285V
6876	336	9Y
6877	336	11Sv
6878	336	14R
6879	336	16Gr
6880	336	41A
6881	336	45rMe
6882	336	56G
6883	336	59Y
6884	336	62Qe
6885	336	66rNv
6886	336	70aQs
6887	336	74D
6888	336	76Vd
6889	336	80gTLrg
6890	336	90D
6891	336	105P
6892	336	107G
6893	336	127N
6894	336	131R
6895	336	138M
6896	336	142I
6897	336	144tKr
6898	336	147W
6899	336	150aAHa
6900	336	156Q
6901	336	158A
6902	336	163qR
6903	336	166Ew
6904	336	171Y
6905	336	177Et
6906	336	180Q
6907	337	9S
6908	337	11Sv
6909	337	14R
6910	337	16Gr
6911	337	41A
6912	337	45rMe
6913	337	56G
6914	337	59Y
6915	337	62Ee
6916	337	66GKv
6917	337	70aHs
6918	337	74D
6919	337	76En
6920	337	80rIAlr
6921	337	90A
6922	337	105S
6923	337	107G
6924	337	127K
6925	337	131R
6926	337	138M
6927	337	142I
6928	337	144tQr
6929	337	147W
6930	337	150aARv
6931	337	156L
6932	337	158A
6933	337	163T
6934	337	166Dg
6935	337	171Y
6936	337	177Et
6937	337	180Q
6938	337	183P
6939	337	186K
6940	337	193Pi
6941	337	199A
6942	337	207G
6943	337	211A
6944	337	219R
6945	337	246A
6946	337	248V
6947	337	253E
6948	337	261V
6949	337	267P
6950	337	269P
6951	337	273R
6952	337	275Lp
6953	337	282Vh
6954	337	285V
6955	338	9S
6956	338	11Sv
6957	338	14R
6958	338	16Gr
6959	338	41A
6960	338	45rMe
6961	338	56G
6962	338	59Y
6963	338	62Ee
6964	338	66GKv
6965	338	70aHs
6966	338	74D
6967	338	76En
6968	338	80rIAlr
6969	338	90A
6970	338	105S
6971	338	107G
6972	338	127K
6973	338	131R
6974	338	138M
6975	338	142I
6976	338	144tQr
6977	338	147W
6978	338	150aARv
6979	338	156W
6980	338	158A
6981	338	163T
6982	338	166Dg
6983	338	171Y
6984	338	177Et
6985	338	180Q
6986	339	9S
6987	339	11Sv
6988	339	14R
6989	339	16Gr
6990	339	41A
6991	339	45rMe
6992	339	56G
6993	339	59Y
6994	339	62Ee
6995	339	66GKv
6996	339	70aHs
6997	339	74D
6998	339	76En
6999	339	80rIAlr
7000	339	90A
7001	339	105S
7002	339	107G
7003	339	127N
7004	339	131R
7005	339	138M
7006	339	142I
7007	339	144tQr
7008	339	147W
7009	339	150aARv
7010	339	156L
7011	339	158A
7012	339	163T
7013	339	166Dg
7014	339	171Y
7015	339	177Et
7016	339	180Q
7017	340	9S
7018	340	11Sv
7019	340	14R
7020	340	16Gr
7021	340	41A
7022	340	45rMe
7023	340	56G
7024	340	59Y
7025	340	62Ee
7026	340	66GKv
7027	340	70aHs
7028	340	74D
7029	340	76En
7030	340	80rIAlr
7031	340	90A
7032	340	105S
7033	340	107G
7034	340	127K
7035	340	131R
7036	340	138M
7037	340	142I
7038	340	144tQr
7039	340	147W
7040	340	150aARv
7041	340	156L
7042	340	158A
7043	340	163T
7044	340	166Ew
7045	340	171Y
7046	340	177Et
7047	340	180Q
7048	341	9S
7049	341	11Sv
7050	341	14R
7051	341	16Gr
7052	341	41A
7053	341	45rMe
7054	341	56G
7055	341	59Y
7056	341	62Ee
7057	341	66GKv
7058	341	70aHs
7059	341	74D
7060	341	76En
7061	341	80rIAlr
7062	341	90A
7063	341	105S
7064	341	107G
7065	341	127K
7066	341	131R
7067	341	138M
7068	341	142I
7069	341	144tQr
7070	341	147W
7071	341	150aARv
7072	341	156L
7073	341	158A
7074	341	163T
7075	341	166Dg
7076	341	171Y
7077	341	177Et
7078	341	180Q
7079	342	9S
7080	342	11Sv
7081	342	14R
7082	342	16Gr
7083	342	41A
7084	342	45rMe
7085	342	56G
7086	342	59Y
7087	342	62Ee
7088	342	66GKv
7089	342	70aHs
7090	342	74D
7091	342	76En
7092	342	80rIAlr
7093	342	90A
7094	342	105S
7095	342	107G
7096	342	127K
7097	342	131R
7098	342	138M
7099	342	142I
7100	342	144tQr
7101	342	147W
7102	342	150aARv
7103	342	156L
7104	342	158A
7105	342	163T
7106	342	166Dg
7107	342	171Y
7108	342	177Et
7109	342	180Q
7110	342	183P
7111	342	186K
7112	342	193Pi
7113	342	199A
7114	342	207G
7115	342	211A
7116	342	219R
7117	342	246A
7118	342	248V
7119	342	253E
7120	342	261V
7121	342	267P
7122	342	269P
7123	342	273R
7124	342	275Lp
7125	342	282Vh
7126	342	285V
7127	343	9S
7128	343	11Sv
7129	343	14R
7130	343	16Gr
7131	343	41A
7132	343	45rMe
7133	343	56G
7134	343	59Y
7135	343	62Ee
7136	343	66GKv
7137	343	70aHs
7138	343	74D
7139	343	76En
7140	343	80rIAlr
7141	343	90A
7142	343	105S
7143	343	107G
7144	343	127K
7145	343	131R
7146	343	138M
7147	343	142I
7148	343	144tKr
7149	343	147W
7150	343	150aAHv
7151	343	156Q
7152	343	158A
7153	343	163T
7154	343	166Dg
7155	343	171Y
7156	343	177Et
7157	343	180Q
7158	343	183P
7159	343	186K
7160	343	193Pi
7161	343	199A
7162	343	207G
7163	343	211A
7164	343	219R
7165	343	246A
7166	343	248V
7167	343	253E
7168	343	261V
7169	343	267P
7170	343	269P
7171	343	273R
7172	343	275Lp
7173	343	282Vp
7174	343	285V
7175	344	9S
7176	344	11Sv
7177	344	14R
7178	344	16Gr
7179	344	41A
7180	344	45rMe
7181	344	56G
7182	344	59Y
7183	344	62Ee
7184	344	66GKv
7185	344	70aHs
7186	344	74D
7187	344	76En
7188	344	80rIAlr
7189	344	90A
7190	344	105S
7191	344	107G
7192	344	127K
7193	344	131R
7194	344	138M
7195	344	142I
7196	344	144tKr
7197	344	147W
7198	344	150aAHv
7199	344	156Q
7200	344	158A
7201	344	163T
7202	344	166Ew
7203	344	171Y
7204	344	177Et
7205	344	180Q
7206	344	183P
7207	344	186K
7208	344	193Pi
7209	344	199A
7210	344	207G
7211	344	211A
7212	344	219R
7213	344	246A
7214	344	248V
7215	344	253E
7216	344	261V
7217	344	267P
7218	344	269P
7219	344	273R
7220	344	275Lp
7221	344	282Vp
7222	344	285V
7223	345	9S
7224	345	11Sv
7225	345	14R
7226	345	16Gr
7227	345	41A
7228	345	45rMe
7229	345	56G
7230	345	59Y
7231	345	62Ee
7232	345	66GKv
7233	345	70aHs
7234	345	74D
7235	345	76An
7236	345	80gTLrg
7237	345	90A
7238	345	105S
7239	345	107G
7240	345	127K
7241	345	131R
7242	345	138M
7243	345	142I
7244	345	144tKr
7245	345	147W
7246	345	150aAHv
7247	345	156Q
7248	345	158A
7249	345	163T
7250	345	166Dg
7251	345	171Y
7252	345	177Et
7253	345	180Q
7254	345	183P
7255	345	186K
7256	345	193Pi
7257	345	199A
7258	345	207G
7259	345	211A
7260	345	219R
7261	345	246A
7262	345	248V
7263	345	253E
7264	345	261V
7265	345	267P
7266	345	269P
7267	345	273R
7268	345	275Lp
7269	345	282Vp
7270	345	285V
7271	346	9S
7272	346	11Sv
7273	346	14R
7274	346	16Gr
7275	346	41A
7276	346	45rMe
7277	346	56G
7278	346	59Y
7279	346	62Ee
7280	346	66GKv
7281	346	70aHs
7282	346	74D
7283	346	76En
7284	346	80rIAlr
7285	346	90A
7286	346	105S
7287	346	107G
7288	346	127K
7289	346	131R
7290	346	138M
7291	346	142I
7292	346	144tQr
7293	346	147W
7294	346	150aAHv
7295	346	156Q
7296	346	158A
7297	346	163T
7298	346	166Dg
7299	346	171Y
7300	346	177Et
7301	346	180Q
7302	347	9S
7303	347	11Sv
7304	347	14R
7305	347	16Gr
7306	347	41A
7307	347	45rMe
7308	347	56G
7309	347	59Y
7310	347	62Ee
7311	347	66GKv
7312	347	70aHs
7313	347	74D
7314	347	76En
7315	347	80rIAlr
7316	347	90A
7317	347	105S
7318	347	107G
7319	347	127K
7320	347	131R
7321	347	138M
7322	347	142I
7323	347	144tKr
7324	347	147W
7325	347	150aAHv
7326	347	156W
7327	347	158A
7328	347	163T
7329	347	166Dg
7330	347	171Y
7331	347	177Et
7332	347	180Q
7333	348	9S
7334	348	11Sv
7335	348	14R
7336	348	16Gr
7337	348	41A
7338	348	45rMe
7339	348	56G
7340	348	59Y
7341	348	62Ee
7342	348	66GKv
7343	348	70aQs
7344	348	74D
7345	348	76En
7346	348	80rIAlr
7347	348	90A
7348	348	105S
7349	348	107G
7350	348	127K
7351	348	131R
7352	348	138M
7353	348	142I
7354	348	144tKr
7355	348	147W
7356	348	150aAHv
7357	348	156Q
7358	348	158A
7359	348	163T
7360	348	166Dg
7361	348	171Y
7362	348	177Et
7363	348	180Q
7364	348	183P
7365	348	186K
7366	348	193Pi
7367	348	199A
7368	348	207G
7369	348	211A
7370	348	219R
7371	348	246A
7372	348	248V
7373	348	253E
7374	348	261V
7375	348	267P
7376	348	269P
7377	348	273R
7378	348	275Lp
7379	348	282Vp
7380	348	285V
7381	349	9S
7382	349	11Sv
7383	349	14R
7384	349	16Gr
7385	349	41A
7386	349	45rMe
7387	349	56G
7388	349	59Y
7389	349	62Ge
7390	349	66RKv
7391	349	70aHs
7392	349	74D
7393	349	76En
7394	349	80rIAlr
7395	349	90A
7396	349	105S
7397	349	107G
7398	349	127K
7399	349	131R
7400	349	138M
7401	349	142I
7402	349	144tKr
7403	349	147W
7404	349	150aAHv
7405	349	156Q
7406	349	158A
7407	349	163T
7408	349	166Dg
7409	349	171Y
7410	349	177Et
7411	349	180Q
7412	349	183P
7413	349	186K
7414	349	193Pi
7415	349	199A
7416	349	207G
7417	349	211A
7418	349	219R
7419	349	246A
7420	349	248V
7421	349	253E
7422	349	261V
7423	349	267P
7424	349	269P
7425	349	273R
7426	349	275Lp
7427	349	282Vp
7428	349	285V
7429	350	9S
7430	350	11Sv
7431	350	14R
7432	350	16Gr
7433	350	41A
7434	350	45rMe
7435	350	56G
7436	350	59Y
7437	350	62Ee
7438	350	66GKv
7439	350	70aHs
7440	350	74D
7441	350	76En
7442	350	80rIAlr
7443	350	90A
7444	350	105S
7445	350	107G
7446	350	127K
7447	350	131R
7448	350	138M
7449	350	142I
7450	350	144tKr
7451	350	147W
7452	350	150aAHv
7453	350	156Q
7454	350	158A
7455	350	163R
7456	350	166Ew
7457	350	171Y
7458	350	177Et
7459	350	180Q
7460	351	9S
7461	351	11Sv
7462	351	14R
7463	351	16Gr
7464	351	41A
7465	351	45rMe
7466	351	56G
7467	351	59Y
7468	351	62Ee
7469	351	66GKv
7470	351	70aHs
7471	351	74D
7472	351	76En
7473	351	80rIAlr
7474	351	90A
7475	351	105S
7476	351	107G
7477	351	127K
7478	351	131R
7479	351	138M
7480	351	142I
7481	351	144tKr
7482	351	147W
7483	351	150aAHv
7484	351	156L
7485	351	158A
7486	351	163T
7487	351	166Dg
7488	351	171Y
7489	351	177Et
7490	351	180Q
7491	352	9S
7492	352	11Sv
7493	352	14R
7494	352	16Gr
7495	352	41A
7496	352	45rMe
7497	352	56G
7498	352	59Y
7499	352	62Ee
7500	352	66GKv
7501	352	70aHs
7502	352	74D
7503	352	76En
7504	352	80rIAlr
7505	352	90A
7506	352	105S
7507	352	107W
7508	352	127K
7509	352	131R
7510	352	138M
7511	352	142I
7512	352	144tKr
7513	352	147W
7514	352	150aAHv
7515	352	156Q
7516	352	158A
7517	352	163T
7518	352	166Dg
7519	352	171Y
7520	352	177Et
7521	352	180Q
7522	353	9S
7523	353	11Sv
7524	353	14R
7525	353	16Gr
7526	353	41A
7527	353	45rMe
7528	353	56G
7529	353	59Y
7530	353	62Ee
7531	353	66GKv
7532	353	70aHs
7533	353	74D
7534	353	76En
7535	353	80rIAlr
7536	353	90A
7537	353	105P
7538	353	107G
7539	353	127K
7540	353	131R
7541	353	138M
7542	353	142I
7543	353	144tKr
7544	353	147W
7545	353	150aAHv
7546	353	156Q
7547	353	158A
7548	353	163T
7549	353	166Dg
7550	353	171Y
7551	353	177Et
7552	353	180Q
7553	354	9S
7554	354	11Sv
7555	354	14R
7556	354	16Gr
7557	354	41A
7558	354	45rMe
7559	354	56G
7560	354	59Y
7561	354	62Ee
7562	354	66GKv
7563	354	70aHs
7564	354	74D
7565	354	76En
7566	354	80rIAlr
7567	354	90A
7568	354	105S
7569	354	107G
7570	354	127N
7571	354	131R
7572	354	138M
7573	354	142I
7574	354	144tQr
7575	354	147W
7576	354	150aARv
7577	354	156L
7578	354	158A
7579	354	163T
7580	354	166Ew
7581	354	171Y
7582	354	177Et
7583	354	180Q
7584	355	9S
7585	355	11Sv
7586	355	14R
7587	355	16Gr
7588	355	41A
7589	355	45rMe
7590	355	56G
7591	355	59Y
7592	355	62Ee
7593	355	66GKv
7594	355	70aHs
7595	355	74D
7596	355	76En
7597	355	80rIAlr
7598	355	90A
7599	355	105S
7600	355	107G
7601	355	127K
7602	355	131R
7603	355	138M
7604	355	142I
7605	355	144tKr
7606	355	147W
7607	355	150aAHv
7608	355	156Q
7609	355	158A
7610	355	163T
7611	355	166Dg
7612	355	171Y
7613	355	177Et
7614	355	180Q
7615	356	9S
7616	356	11Sv
7617	356	14R
7618	356	16Gr
7619	356	41A
7620	356	45rMe
7621	356	56G
7622	356	59Y
7623	356	62Ee
7624	356	66GKv
7625	356	70aHs
7626	356	74D
7627	356	76En
7628	356	80rIAlr
7629	356	90A
7630	356	105S
7631	356	107G
7632	356	127K
7633	356	131R
7634	356	138M
7635	356	142I
7636	356	144tKr
7637	356	147W
7638	356	150aAHe
7639	356	156L
7640	356	158A
7641	356	163dT
7642	356	166Ew
7643	356	171Y
7644	356	177Et
7645	356	180Q
7646	357	9S
7647	357	11Sv
7648	357	14R
7649	357	16Gr
7650	357	41A
7651	357	45rMe
7652	357	56G
7653	357	59Y
7654	357	62Ee
7655	357	66GKv
7656	357	70aHs
7657	357	74D
7658	357	76En
7659	357	80rIAlr
7660	357	90A
7661	357	105S
7662	357	107G
7663	357	127K
7664	357	131R
7665	357	138M
7666	357	142I
7667	357	144tKr
7668	357	147W
7669	357	150aAHv
7670	357	156Q
7671	357	158A
7672	357	163T
7673	357	166Dg
7674	357	171Y
7675	357	177Et
7676	357	180Q
7677	358	9S
7678	358	11Sv
7679	358	14R
7680	358	16Gr
7681	358	41A
7682	358	45rMe
7683	358	56G
7684	358	59Y
7685	358	62Ee
7686	358	66GKv
7687	358	70aHs
7688	358	74D
7689	358	76En
7690	358	80rIAlr
7691	358	90A
7692	358	105S
7693	358	107G
7694	358	127N
7695	358	131R
7696	358	138M
7697	358	142I
7698	358	144tKr
7699	358	147W
7700	358	150aAHv
7701	358	156Q
7702	358	158A
7703	358	163T
7704	358	166Dg
7705	358	171Y
7706	358	177Et
7707	358	180Q
7708	359	9S
7709	359	11Sv
7710	359	14R
7711	359	16Gr
7712	359	41A
7713	359	45rMe
7714	359	56G
7715	359	59Y
7716	359	62Ee
7717	359	66GKv
7718	359	70aHs
7719	359	74D
7720	359	76En
7721	359	80rIAlr
7722	359	90A
7723	359	105S
7724	359	107G
7725	359	127K
7726	359	131R
7727	359	138M
7728	359	142I
7729	359	144tKr
7730	359	147W
7731	359	150aAHv
7732	359	156Q
7733	359	158V
7734	359	163T
7735	359	166Ew
7736	359	171Y
7737	359	177Et
7738	359	180Q
7739	359	183P
7740	359	186K
7741	359	193Pi
7742	359	199A
7743	359	207G
7744	359	211A
7745	359	219R
7746	359	246A
7747	359	248V
7748	359	253E
7749	359	261V
7750	359	267P
7751	359	269P
7752	359	273R
7753	359	275Lp
7754	359	282Vp
7755	359	285V
7756	360	9S
7757	360	11Sv
7758	360	14R
7759	360	16Gr
7760	360	41A
7761	360	45rMe
7762	360	56G
7763	360	59Y
7764	360	62Ee
7765	360	66GKv
7766	360	70aHs
7767	360	74D
7768	360	76En
7769	360	80rIAlr
7770	360	90A
7771	360	105S
7772	360	107G
7773	360	127K
7774	360	131R
7775	360	138M
7776	360	142I
7777	360	144tKr
7778	360	147W
7779	360	150aAHv
7780	360	156Q
7781	360	158A
7782	360	163T
7783	360	166Dw
7784	360	171Y
7785	360	177Et
7786	360	180Q
7787	361	9S
7788	361	11Sv
7789	361	14R
7790	361	16Gr
7791	361	41A
7792	361	45rMe
7793	361	56G
7794	361	59Y
7795	361	62Ee
7796	361	66rNv
7797	361	70aQs
7798	361	74D
7799	361	76En
7800	361	80rIAlr
7801	361	90A
7802	361	105S
7803	361	107G
7804	361	127K
7805	361	131R
7806	361	138M
7807	361	142I
7808	361	144tQr
7809	361	147W
7810	361	150aARv
7811	361	156L
7812	361	158A
7813	361	163T
7814	361	166Dg
7815	361	171Y
7816	361	177Et
7817	361	180Q
7818	362	9S
7819	362	11Sv
7820	362	14R
7821	362	16Gr
7822	362	41A
7823	362	45rMe
7824	362	56G
7825	362	59Y
7826	362	62Ee
7827	362	66GKv
7828	362	70aHs
7829	362	74D
7830	362	76En
7831	362	80rIAlr
7832	362	90A
7833	362	105S
7834	362	107G
7835	362	127K
7836	362	131R
7837	362	138M
7838	362	142I
7839	362	144tKr
7840	362	147W
7841	362	150aAHv
7842	362	156Q
7843	362	158A
7844	362	163T
7845	362	166Dg
7846	362	171Y
7847	362	177Et
7848	362	180Q
7849	363	9S
7850	363	11Sv
7851	363	14R
7852	363	16Gr
7853	363	41A
7854	363	45rMe
7855	363	56G
7856	363	59Y
7857	363	62Ee
7858	363	66GKv
7859	363	70aHs
7860	363	74D
7861	363	76En
7862	363	80rIAlr
7863	363	90A
7864	363	105S
7865	363	107G
7866	363	127K
7867	363	131R
7868	363	138M
7869	363	142I
7870	363	144tKr
7871	363	147W
7872	363	150aAHv
7873	363	156Q
7874	363	158A
7875	363	163T
7876	363	166Dg
7877	363	171Y
7878	363	177Et
7879	363	180Q
7880	364	9S
7881	364	11Sv
7882	364	14R
7883	364	16Gr
7884	364	41A
7885	364	45rMe
7886	364	56G
7887	364	59Y
7888	364	62Ee
7889	364	66GKv
7890	364	70aHs
7891	364	74D
7892	364	76En
7893	364	80rIAlr
7894	364	90A
7895	364	105S
7896	364	107G
7897	364	127K
7898	364	131R
7899	364	138R
7900	364	142I
7901	364	144tKr
7902	364	147W
7903	364	150aAHv
7904	364	156Q
7905	364	158A
7906	364	163T
7907	364	166Dg
7908	364	171Y
7909	364	177Et
7910	364	180Q
7911	365	9S
7912	365	11Sv
7913	365	14R
7914	365	16Gr
7915	365	41A
7916	365	45rMe
7917	365	56G
7918	365	59Y
7919	365	62Ee
7920	365	66GKv
7921	365	70aHs
7922	365	74H
7923	365	76Vd
7924	365	80gTLrg
7925	365	90A
7926	365	105S
7927	365	107G
7928	365	127K
7929	365	131R
7930	365	138M
7931	365	142I
7932	365	144tKr
7933	365	147W
7934	365	150aAHv
7935	365	156Q
7936	365	158A
7937	365	163T
7938	365	166Dg
7939	365	171Y
7940	365	177Et
7941	365	180Q
7942	366	9S
7943	366	11Sv
7944	366	14R
7945	366	16Gr
7946	366	41A
7947	366	45rMe
7948	366	56G
7949	366	59Y
7950	366	62Ee
7951	366	66rKv
7952	366	70aHs
7953	366	74D
7954	366	76En
7955	366	80rIAlr
7956	366	90A
7957	366	105S
7958	366	107G
7959	366	127K
7960	366	131R
7961	366	138M
7962	366	142I
7963	366	144tKr
7964	366	147W
7965	366	150aAHv
7966	366	156Q
7967	366	158A
7968	366	163T
7969	366	166Dg
7970	366	171Y
7971	366	177Et
7972	366	180Q
7973	367	9S
7974	367	11Sv
7975	367	14R
7976	367	16Gr
7977	367	41A
7978	367	45rMe
7979	367	56G
7980	367	59Y
7981	367	62Ee
7982	367	66GKv
7983	367	70aHs
7984	367	74D
7985	367	76En
7986	367	80rIAlr
7987	367	90A
7988	367	105S
7989	367	107G
7990	367	127K
7991	367	131R
7992	367	138M
7993	367	142I
7994	367	144tKr
7995	367	147W
7996	367	150aAHv
7997	367	156Q
7998	367	158A
7999	367	163T
8000	367	166Dg
8001	367	171Y
8002	367	177Et
8003	367	180Q
8004	368	9Y
8005	368	11Sv
8006	368	14R
8007	368	16Gr
8008	368	41A
8009	368	45rMe
8010	368	56G
8011	368	59Y
8012	368	62Rn
8013	368	66rNv
8014	368	70aHs
8015	368	74D
8016	368	76Es
8017	368	80rIAlr
8018	368	90D
8019	368	105P
8020	368	107G
8021	368	127N
8022	368	131R
8023	368	138M
8024	368	142I
8025	368	144tQr
8026	368	147W
8027	368	150tAHe
8028	368	156W
8029	368	158A
8030	368	163R
8031	368	166Ew
8032	368	171Y
8033	368	177Et
8034	368	180Q
8035	368	183A
8036	368	186K
8037	368	193Av
8038	368	199A
8039	368	207S
8040	368	211A
8041	368	219R
8042	368	246S
8043	368	248V
8044	368	253Q
8045	368	261V
8046	368	267P
8047	368	269P
8048	368	273R
8049	368	275Lp
8050	368	282Ip
8051	368	285V
8052	369	9Y
8053	369	11Sv
8054	369	14R
8055	369	16Gr
8056	369	41A
8057	369	45rMe
8058	369	56G
8059	369	59Y
8060	369	62Rn
8061	369	66rNv
8062	369	70aQs
8063	369	74D
8064	369	76Es
8065	369	80rIAlr
8066	369	90D
8067	369	105P
8068	369	107G
8069	369	127N
8070	369	131R
8071	369	138M
8072	369	142I
8073	369	144tQr
8074	369	147W
8075	369	150tAHe
8076	369	156W
8077	369	158A
8078	369	163R
8079	369	166Ew
8080	369	171Y
8081	369	177Et
8082	369	180Q
8083	369	183A
8084	369	186K
8085	369	193Av
8086	369	199A
8087	369	207S
8088	369	211A
8089	369	219R
8090	369	246S
8091	369	248V
8092	369	253Q
8093	369	261V
8094	369	267P
8095	369	269P
8096	369	273R
8097	369	275Lp
8098	369	282Ip
8099	369	285V
8100	370	9F
8101	370	11Sv
8102	370	14R
8103	370	16Gr
8104	370	41A
8105	370	45rMe
8106	370	56G
8107	370	59Y
8108	370	62Rn
8109	370	66rNv
8110	370	70aHs
8111	370	74D
8112	370	76Es
8113	370	80rIAlr
8114	370	90D
8115	370	105P
8116	370	107G
8117	370	127N
8118	370	131R
8119	370	138M
8120	370	142I
8121	370	144tQr
8122	370	147W
8123	370	150tAHe
8124	370	156W
8125	370	158A
8126	370	163R
8127	370	166Ew
8128	370	171Y
8129	370	177Et
8130	370	180Q
8131	371	9Y
8132	371	11Sv
8133	371	14R
8134	371	16Gr
8135	371	41A
8136	371	45rMe
8137	371	56G
8138	371	59Y
8139	371	62Rn
8140	371	66rNv
8141	371	70aHs
8142	371	74D
8143	371	76An
8144	371	80gTLrg
8145	371	90D
8146	371	105P
8147	371	107G
8148	371	127N
8149	371	131R
8150	371	138M
8151	371	142I
8152	371	144tQr
8153	371	147W
8154	371	150tAHe
8155	371	156W
8156	371	158A
8157	371	163R
8158	371	166Ew
8159	371	171Y
8160	371	177Et
8161	371	180Q
8162	371	183A
8163	371	186K
8164	371	193Av
8165	371	199A
8166	371	207S
8167	371	211A
8168	371	219R
8169	371	246S
8170	371	248V
8171	371	253Q
8172	371	261V
8173	371	267P
8174	371	269P
8175	371	273R
8176	371	275Lp
8177	371	282Ip
8178	371	285V
8179	372	9Y
8180	372	11Sv
8181	372	14R
8182	372	16Gr
8183	372	41A
8184	372	45rMe
8185	372	56G
8186	372	59Y
8187	372	62Rn
8188	372	66rNv
8189	372	70aHs
8190	372	74D
8191	372	76An
8192	372	80gTLrg
8193	372	90D
8194	372	105P
8195	372	107G
8196	372	127N
8197	372	131R
8198	372	138M
8199	372	142I
8200	372	144tQr
8201	372	147W
8202	372	150tAHe
8203	372	156W
8204	372	158A
8205	372	163R
8206	372	166Ew
8207	372	171Y
8208	372	177Et
8209	372	180Q
8210	372	183A
8211	372	186K
8212	372	193Av
8213	372	199A
8214	372	207S
8215	372	211A
8216	372	219R
8217	372	246S
8218	372	248V
8219	372	253Q
8220	372	261V
8221	372	267P
8222	372	269P
8223	372	273R
8224	372	275Lp
8225	372	282Ip
8226	372	285V
8227	373	9Y
8228	373	11Sv
8229	373	14R
8230	373	16Gr
8231	373	41A
8232	373	45rMe
8233	373	56G
8234	373	59Y
8235	373	62Rn
8236	373	66rNv
8237	373	70aHs
8238	373	74H
8239	373	76Vd
8240	373	80gTLrg
8241	373	90D
8242	373	105P
8243	373	107G
8244	373	127N
8245	373	131R
8246	373	138M
8247	373	142I
8248	373	144tQr
8249	373	147W
8250	373	150tAHe
8251	373	156W
8252	373	158A
8253	373	163R
8254	373	166Ew
8255	373	171Y
8256	373	177Et
8257	373	180Q
8258	373	183A
8259	373	186K
8260	373	193Av
8261	373	199A
8262	373	207S
8263	373	211A
8264	373	219R
8265	373	246S
8266	373	248V
8267	373	253Q
8268	373	261V
8269	373	267P
8270	373	269P
8271	373	273R
8272	373	275Lp
8273	373	282Ip
8274	373	285V
8275	374	9Y
8276	374	11Sv
8277	374	14R
8278	374	16Gr
8279	374	41A
8280	374	45rMe
8281	374	56G
8282	374	59Y
8283	374	62Rn
8284	374	66rNv
8285	374	70aHs
8286	374	74D
8287	374	76An
8288	374	80gTLrg
8289	374	90D
8290	374	105P
8291	374	107G
8292	374	127N
8293	374	131R
8294	374	138M
8295	374	142I
8296	374	144tQr
8297	374	147W
8298	374	150tAHe
8299	374	156W
8300	374	158A
8301	374	163L
8302	374	166Ew
8303	374	171Y
8304	374	177Et
8305	374	180Q
8306	374	183A
8307	374	186K
8308	374	193Av
8309	374	199A
8310	374	207S
8311	374	211A
8312	374	219R
8313	374	246S
8314	374	248V
8315	374	253Q
8316	374	261V
8317	374	267P
8318	374	269P
8319	374	273R
8320	374	275Lp
8321	374	282Ip
8322	374	285V
8323	375	9Y
8324	375	11Sv
8325	375	14R
8326	375	16Gr
8327	375	41A
8328	375	45rMe
8329	375	56G
8330	375	59Y
8331	375	62Rn
8332	375	66rNv
8333	375	70aHs
8334	375	74D
8335	375	76En
8336	375	80gTLrg
8337	375	90D
8338	375	105P
8339	375	107G
8340	375	127N
8341	375	131R
8342	375	138M
8343	375	142I
8344	375	144tQr
8345	375	147W
8346	375	150tAHe
8347	375	156W
8348	375	158A
8349	375	163R
8350	375	166Ew
8351	375	171Y
8352	375	177Et
8353	375	180Q
8354	375	183A
8355	375	186K
8356	375	193Av
8357	375	199A
8358	375	207S
8359	375	211A
8360	375	219R
8361	375	246S
8362	375	248V
8363	375	253Q
8364	375	261V
8365	375	267P
8366	375	269P
8367	375	273R
8368	375	275Lp
8369	375	282Ip
8370	375	285V
8371	376	9Y
8372	376	11Sv
8373	376	14R
8374	376	16Gr
8375	376	41A
8376	376	45rMe
8377	376	56G
8378	376	59Y
8379	376	62Ge
8380	376	66rNv
8381	376	70aHs
8382	376	74H
8383	376	76An
8384	376	80gTLrg
8385	376	90D
8386	376	105P
8387	376	107G
8388	376	127N
8389	376	131R
8390	376	138M
8391	376	142I
8392	376	144tQr
8393	376	147W
8394	376	150tAHe
8395	376	156W
8396	376	158A
8397	376	163R
8398	376	166Ew
8399	376	171Y
8400	376	177Et
8401	376	180Q
8402	377	9Y
8403	377	11Sv
8404	377	14R
8405	377	16Gr
8406	377	41A
8407	377	45rMe
8408	377	56G
8409	377	59Y
8410	377	62Rn
8411	377	66rKv
8412	377	70aHs
8413	377	74D
8414	377	76An
8415	377	80gTLrg
8416	377	90D
8417	377	105P
8418	377	107G
8419	377	127N
8420	377	131R
8421	377	138M
8422	377	142I
8423	377	144tQr
8424	377	147W
8425	377	150tAHe
8426	377	156W
8427	377	158A
8428	377	163R
8429	377	166Ew
8430	377	171Y
8431	377	177Et
8432	377	180Q
8433	377	183A
8434	377	186K
8435	377	193Av
8436	377	199A
8437	377	207S
8438	377	211A
8439	377	219R
8440	377	246S
8441	377	248V
8442	377	253Q
8443	377	261V
8444	377	267P
8445	377	269P
8446	377	273R
8447	377	275Lp
8448	377	282Ip
8449	377	285V
8450	378	9Y
8451	378	11Sv
8452	378	14R
8453	378	16Gr
8454	378	41A
8455	378	45rMe
8456	378	56G
8457	378	59Y
8458	378	62Rn
8459	378	66rNv
8460	378	70aHs
8461	378	74D
8462	378	76An
8463	378	80gTLrg
8464	378	90D
8465	378	105P
8466	378	107G
8467	378	127N
8468	378	131R
8469	378	138M
8470	378	142I
8471	378	144tQr
8472	378	147W
8473	378	150tAHe
8474	378	156Q
8475	378	158A
8476	378	163R
8477	378	166Ew
8478	378	171Y
8479	378	177Et
8480	378	180Q
8481	378	183A
8482	378	186K
8483	378	193Av
8484	378	199A
8485	378	207S
8486	378	211A
8487	378	219R
8488	378	246S
8489	378	248V
8490	378	253Q
8491	378	261V
8492	378	267P
8493	378	269P
8494	378	273R
8495	378	275Lp
8496	378	282Ip
8497	378	285V
8498	379	9Y
8499	379	11Sv
8500	379	14R
8501	379	16Gr
8502	379	41A
8503	379	45rMe
8504	379	56G
8505	379	59Y
8506	379	62Rn
8507	379	66rNv
8508	379	70aHs
8509	379	74D
8510	379	76An
8511	379	80gTLrg
8512	379	90D
8513	379	105P
8514	379	107G
8515	379	127N
8516	379	131R
8517	379	138M
8518	379	142I
8519	379	144tQr
8520	379	147W
8521	379	150tAHe
8522	379	156W
8523	379	158A
8524	379	163T
8525	379	166Ew
8526	379	171Y
8527	379	177Et
8528	379	180Q
8529	380	9Y
8530	380	11Sv
8531	380	14R
8532	380	16Gr
8533	380	41A
8534	380	45rMe
8535	380	56G
8536	380	59Y
8537	380	62Rn
8538	380	66rNv
8539	380	70aHs
8540	380	74D
8541	380	76An
8542	380	80gTLrg
8543	380	90D
8544	380	105P
8545	380	107G
8546	380	127K
8547	380	131R
8548	380	138M
8549	380	142I
8550	380	144tQr
8551	380	147W
8552	380	150tAHe
8553	380	156W
8554	380	158A
8555	380	163R
8556	380	166Ew
8557	380	171Y
8558	380	177Et
8559	380	180Q
8560	381	9Y
8561	381	11Sv
8562	381	14R
8563	381	16Gr
8564	381	41A
8565	381	45rMe
8566	381	56G
8567	381	59Y
8568	381	62Rn
8569	381	66rNv
8570	381	70aHs
8571	381	74D
8572	381	76An
8573	381	80gTLrg
8574	381	90D
8575	381	105P
8576	381	107G
8577	381	127K
8578	381	131R
8579	381	138M
8580	381	142I
8581	381	144tQr
8582	381	147W
8583	381	150tAHv
8584	381	156W
8585	381	158A
8586	381	163R
8587	381	166Ew
8588	381	171Y
8589	381	177Et
8590	381	180Q
8591	382	9Y
8592	382	11Sv
8593	382	14R
8594	382	16Gr
8595	382	41A
8596	382	45rMe
8597	382	56G
8598	382	59Y
8599	382	62Rn
8600	382	66rNv
8601	382	70aQr
8602	382	74D
8603	382	76An
8604	382	80gTLrg
8605	382	90D
8606	382	105P
8607	382	107G
8608	382	127K
8609	382	131R
8610	382	138M
8611	382	142I
8612	382	144tQr
8613	382	147W
8614	382	150tAHe
8615	382	156W
8616	382	158A
8617	382	163R
8618	382	166Ew
8619	382	171Y
8620	382	177Et
8621	382	180Q
8622	383	9Y
8623	383	11Sv
8624	383	14R
8625	383	16Gr
8626	383	41A
8627	383	45rMe
8628	383	56G
8629	383	59Y
8630	383	62Rn
8631	383	66rNv
8632	383	70aHs
8633	383	74D
8634	383	76An
8635	383	80gTLrg
8636	383	90D
8637	383	105P
8638	383	107G
8639	383	127K
8640	383	131R
8641	383	138M
8642	383	142I
8643	383	144tQr
8644	383	147W
8645	383	150aAHe
8646	383	156W
8647	383	158A
8648	383	163R
8649	383	166Ew
8650	383	171Y
8651	383	177Et
8652	383	180Q
8653	384	9Y
8654	384	11Sv
8655	384	14R
8656	384	16Gr
8657	384	41A
8658	384	45rMe
8659	384	56G
8660	384	59Y
8661	384	62Rn
8662	384	66rNv
8663	384	70aHs
8664	384	74D
8665	384	76An
8666	384	80gTLrg
8667	384	90D
8668	384	105P
8669	384	107G
8670	384	127K
8671	384	131R
8672	384	138M
8673	384	142I
8674	384	144tQr
8675	384	147W
8676	384	150tAHe
8677	384	156W
8678	384	158A
8679	384	163R
8680	384	166Ew
8681	384	171Y
8682	384	177Et
8683	384	180Q
8684	384	183A
8685	384	186K
8686	384	193Av
8687	384	199A
8688	384	207S
8689	384	211A
8690	384	219R
8691	384	246S
8692	384	248V
8693	384	253Q
8694	384	261V
8695	384	267P
8696	384	269P
8697	384	273R
8698	384	275Lp
8699	384	282Ip
8700	384	285V
8701	385	9T
8702	385	11Sv
8703	385	14R
8704	385	16Gr
8705	385	41A
8706	385	45rMe
8707	385	56G
8708	385	59Y
8709	385	62Lq
8710	385	66rNv
8711	385	70aQs
8712	385	74D
8713	385	76An
8714	385	80gTLrg
8715	385	90A
8716	385	105S
8717	385	107G
8718	385	127N
8719	385	131R
8720	385	138M
8721	385	142I
8722	385	144tQr
8723	385	147W
8724	385	150aARv
8725	385	156L
8726	385	158A
8727	385	163T
8728	385	166Ew
8729	385	171Y
8730	385	177Et
8731	385	180Q
8732	385	183A
8733	385	186K
8734	385	193Av
8735	385	199A
8736	385	207S
8737	385	211A
8738	385	219R
8739	385	246S
8740	385	248V
8741	385	253Q
8742	385	261V
8743	385	267P
8744	385	269P
8745	385	273R
8746	385	275Lp
8747	385	282Ip
8748	385	285V
8749	386	9T
8750	386	11Sv
8751	386	14R
8752	386	16Gr
8753	386	41A
8754	386	45rMe
8755	386	56G
8756	386	59Y
8757	386	62Lq
8758	386	66rNv
8759	386	70aQs
8760	386	74D
8761	386	76An
8762	386	80gTLrg
8763	386	90A
8764	386	105S
8765	386	107G
8766	386	127N
8767	386	131R
8768	386	138M
8769	386	142I
8770	386	144tQr
8771	386	147W
8772	386	150aARv
8773	386	156L
8774	386	158A
8775	386	163T
8776	386	166Ew
8777	386	171Y
8778	386	177Et
8779	386	180Q
8780	386	183A
8781	386	186K
8782	386	193Av
8783	386	199A
8784	386	207S
8785	386	211A
8786	386	219R
8787	386	246S
8788	386	248V
8789	386	253Q
8790	386	261V
8791	386	267P
8792	386	269P
8793	386	273R
8794	386	275Lp
8795	386	282Ip
8796	386	285V
8797	387	9T
8798	387	11Sv
8799	387	14R
8800	387	16Gr
8801	387	41A
8802	387	45rMe
8803	387	56G
8804	387	59Y
8805	387	62Lq
8806	387	66rNv
8807	387	70aQs
8808	387	74D
8809	387	76An
8810	387	80gTLrg
8811	387	90A
8812	387	105S
8813	387	107G
8814	387	127N
8815	387	131R
8816	387	138M
8817	387	142I
8818	387	144tQr
8819	387	147W
8820	387	150aARv
8821	387	156L
8822	387	158A
8823	387	163T
8824	387	166Dg
8825	387	171Y
8826	387	177Et
8827	387	180Q
8828	387	183A
8829	387	186K
8830	387	193Av
8831	387	199A
8832	387	207S
8833	387	211A
8834	387	219R
8835	387	246S
8836	387	248V
8837	387	253Q
8838	387	261V
8839	387	267P
8840	387	269P
8841	387	273R
8842	387	275Lp
8843	387	282Ip
8844	387	285V
8845	388	9T
8846	388	11Sv
8847	388	14R
8848	388	16Gr
8849	388	41A
8850	388	45rMe
8851	388	56G
8852	388	59Y
8853	388	62Lq
8854	388	66rHv
8855	388	70aQs
8856	388	74D
8857	388	76An
8858	388	80gTLrg
8859	388	90A
8860	388	105S
8861	388	107G
8862	388	127N
8863	388	131R
8864	388	138M
8865	388	142I
8866	388	144tQr
8867	388	147W
8868	388	150aARv
8869	388	156L
8870	388	158A
8871	388	163T
8872	388	166Ew
8873	388	171Y
8874	388	177Et
8875	388	180Q
8876	389	9S
8877	389	11Sv
8878	389	14R
8879	389	16S
8880	389	41A
8881	389	45rMe
8882	389	56R
8883	389	59Y
8884	389	62Qe
8885	389	66rNv
8886	389	70aQs
8887	389	74D
8888	389	76Vd
8889	389	80gTLrg
8890	389	90A
8891	389	105S
8892	389	107G
8893	389	127N
8894	389	131R
8895	389	138M
8896	389	142I
8897	389	144tQr
8898	389	147W
8899	389	150aARw
8900	389	156L
8901	389	158A
8902	389	163T
8903	389	166Ew
8904	389	171Y
8905	389	177Et
8906	389	180Q
8907	389	183P
8908	389	186K
8909	389	193Pi
8910	389	199A
8911	389	207G
8912	389	211A
8913	389	219R
8914	389	246A
8915	389	248V
8916	389	253E
8917	389	261V
8918	389	267P
8919	389	269P
8920	389	273R
8921	389	275L
8922	389	282Ip
8923	389	285V
8924	390	9S
8925	390	11Sv
8926	390	14R
8927	390	16S
8928	390	41A
8929	390	45rMe
8930	390	56R
8931	390	59Y
8932	390	62Qe
8933	390	66rKv
8934	390	70aHs
8935	390	74D
8936	390	76En
8937	390	80gTLrg
8938	390	90A
8939	390	105S
8940	390	107G
8941	390	127N
8942	390	131R
8943	390	138M
8944	390	142I
8945	390	144tQr
8946	390	147W
8947	390	150aARr
8948	390	156L
8949	390	158A
8950	390	163T
8951	390	166Ew
8952	390	171Y
8953	390	177Et
8954	390	180Q
8955	390	183P
8956	390	186K
8957	390	193Pi
8958	390	199A
8959	390	207G
8960	390	211A
8961	390	219R
8962	390	246A
8963	390	248V
8964	390	253E
8965	390	261V
8966	390	267P
8967	390	269P
8968	390	273R
8969	390	275L
8970	390	282Ip
8971	390	285V
8972	391	9S
8973	391	11Sv
8974	391	14R
8975	391	16S
8976	391	41A
8977	391	45rMe
8978	391	56G
8979	391	59Y
8980	391	62Qe
8981	391	66rNv
8982	391	70aHs
8983	391	74D
8984	391	76En
8985	391	80gTLrg
8986	391	90A
8987	391	105S
8988	391	107G
8989	391	127N
8990	391	131R
8991	391	138M
8992	391	142I
8993	391	144tQr
8994	391	147W
8995	391	150aARr
8996	391	156L
8997	391	158A
8998	391	163T
8999	391	166Ew
9000	391	171Y
9001	391	177Et
9002	391	180Q
9003	391	183P
9004	391	186K
9005	391	193Pi
9006	391	199A
9007	391	207G
9008	391	211A
9009	391	219R
9010	391	246A
9011	391	248V
9012	391	253E
9013	392	9S
9014	392	11Sv
9015	392	14R
9016	392	16S
9017	392	41A
9018	392	45rMe
9019	392	56R
9020	392	59Y
9021	392	62Qe
9022	392	66rNv
9023	392	70aHs
9024	392	74D
9025	392	76En
9026	392	80gTLrg
9027	392	90A
9028	392	105S
9029	392	107G
9030	392	127N
9031	392	131R
9032	392	138M
9033	392	142I
9034	392	144tQr
9035	392	147W
9036	392	150aAHv
9037	392	156W
9038	392	158A
9039	392	163T
9040	392	166Ew
9041	392	171Y
9042	392	177Et
9043	392	180Q
9044	393	9S
9045	393	11Sv
9046	393	14R
9047	393	16S
9048	393	41A
9049	393	45rMe
9050	393	56R
9051	393	59Y
9052	393	62Qe
9053	393	66rNv
9054	393	70aHs
9055	393	74D
9056	393	76En
9057	393	80gTLrg
9058	393	90A
9059	393	105S
9060	393	107G
9061	393	127N
9062	393	131R
9063	393	138M
9064	393	142I
9065	393	144tQr
9066	393	147W
9067	393	150aAHv
9068	393	156W
9069	393	158A
9070	393	163T
9071	393	166Ew
9072	393	171Y
9073	393	177Et
9074	393	180Q
9075	394	9S
9076	394	11Sv
9077	394	14R
9078	394	16S
9079	394	41A
9080	394	45rMe
9081	394	56R
9082	394	59Y
9083	394	62Ee
9084	394	66gKv
9085	394	70aHs
9086	394	74D
9087	394	76En
9088	394	80gTLrg
9089	394	90A
9090	394	105S
9091	394	107G
9092	394	127N
9093	394	131R
9094	394	138M
9095	394	142I
9096	394	144tQr
9097	394	147W
9098	394	150aARr
9099	394	156L
9100	394	158A
9101	394	163T
9102	394	166Ew
9103	394	171Y
9104	394	177Et
9105	394	180Q
9106	395	9Y
9107	395	11Sv
9108	395	14R
9109	395	16S
9110	395	41A
9111	395	45rMe
9112	395	56R
9113	395	59Y
9114	395	62Qe
9115	395	66rNv
9116	395	70aQs
9117	395	74D
9118	395	76Vd
9119	395	80gTLrg
9120	395	90A
9121	395	105S
9122	395	107G
9123	395	127N
9124	395	131R
9125	395	138M
9126	395	142I
9127	395	144tQr
9128	395	147W
9129	395	150aARw
9130	395	156L
9131	395	158A
9132	395	163T
9133	395	166Ew
9134	395	171Y
9135	395	177Et
9136	395	180Q
9137	395	183P
9138	395	186K
9139	395	193Pi
9140	395	199A
9141	395	207G
9142	395	211A
9143	395	219R
9144	395	246A
9145	395	248V
9146	395	253E
9147	395	261V
9148	395	267P
9149	395	269P
9150	395	273R
9151	395	275L
9152	395	282Ip
9153	395	285V
9154	396	9S
9155	396	11Sv
9156	396	14R
9157	396	16S
9158	396	41A
9159	396	45rMe
9160	396	56R
9161	396	59Y
9162	396	62Qe
9163	396	66rNv
9164	396	70aHs
9165	396	74D
9166	396	76En
9167	396	80gTLrg
9168	396	90A
9169	396	105S
9170	396	107G
9171	396	127N
9172	396	131R
9173	396	138M
9174	396	142I
9175	396	144tQr
9176	396	147W
9177	396	150aARv
9178	396	156L
9179	396	158A
9180	396	163T
9181	396	166Ew
9182	396	171Y
9183	396	177Et
9184	396	180Q
9185	397	9T
9186	397	11Sv
9187	397	14R
9188	397	16Gr
9189	397	41A
9190	397	45rMe
9191	397	56R
9192	397	59Y
9193	397	62Qe
9194	397	66rNv
9195	397	70aHs
9196	397	74iD
9197	397	76Vd
9198	397	80gTLrg
9199	397	90A
9200	397	105S
9201	397	107G
9202	397	127N
9203	397	131R
9204	397	138M
9205	397	142I
9206	397	144tQr
9207	397	147W
9208	397	150aARv
9209	397	156L
9210	397	158A
9211	397	163T
9212	397	166Ew
9213	397	171Y
9214	397	177Et
9215	397	180Q
9216	397	183P
9217	397	186K
9218	397	193Av
9219	397	199A
9220	397	207S
9221	397	211A
9222	397	219R
9223	397	246S
9224	397	248V
9225	397	253Q
9226	397	261V
9227	397	267P
9228	397	269P
9229	397	273R
9230	397	275Lp
9231	397	282Ip
9232	397	285V
9233	398	9T
9234	398	11Sv
9235	398	14R
9236	398	16Gr
9237	398	41A
9238	398	45rMe
9239	398	56R
9240	398	59Y
9241	398	62Qe
9242	398	66rKv
9243	398	70aHs
9244	398	74iD
9245	398	76Vd
9246	398	80gTLrg
9247	398	90A
9248	398	105S
9249	398	107G
9250	398	127N
9251	398	131R
9252	398	138M
9253	398	142I
9254	398	144tQr
9255	398	147W
9256	398	150aARv
9257	398	156L
9258	398	158A
9259	398	163T
9260	398	166Ew
9261	398	171Y
9262	398	177Et
9263	398	180Q
9264	399	9T
9265	399	11Sv
9266	399	14R
9267	399	16Gr
9268	399	41A
9269	399	45rMe
9270	399	56R
9271	399	59Y
9272	399	62Qe
9273	399	66rNv
9274	399	70aHs
9275	399	74iD
9276	399	76Vd
9277	399	80gTLrg
9278	399	90D
9279	399	105S
9280	399	107G
9281	399	127N
9282	399	131R
9283	399	138M
9284	399	142I
9285	399	144tQr
9286	399	147W
9287	399	150aARv
9288	399	156L
9289	399	158A
9290	399	163T
9291	399	166Ew
9292	399	171Y
9293	399	177Et
9294	399	180Q
9295	400	9T
9296	400	11Sv
9297	400	14R
9298	400	16Gr
9299	400	41A
9300	400	45rMe
9301	400	56R
9302	400	59Y
9303	400	62Qe
9304	400	66rNv
9305	400	70aHs
9306	400	74iD
9307	400	76Vd
9308	400	80gTLrg
9309	400	90A
9310	400	105S
9311	400	107G
9312	400	127N
9313	400	131R
9314	400	138M
9315	400	142I
9316	400	144tQr
9317	400	147W
9318	400	150aARv
9319	400	156L
9320	400	158A
9321	400	163T
9322	400	166Ew
9323	400	171Y
9324	400	177Et
9325	400	180Q
9326	400	183P
9327	400	186K
9328	400	193Av
9329	400	199A
9330	400	207S
9331	400	211A
9332	400	219R
9333	400	246S
9334	400	248V
9335	400	253Q
9336	400	261V
9337	400	267P
9338	400	269P
9339	400	273R
9340	400	275Lp
9341	400	282Ip
9342	400	285V
9343	401	9T
9344	401	11Sv
9345	401	14R
9346	401	16Gr
9347	401	41A
9348	401	45rMe
9349	401	56R
9350	401	59Y
9351	401	62Qe
9352	401	66rNv
9353	401	70aHs
9354	401	74iD
9355	401	76Vd
9356	401	80gTLrg
9357	401	90A
9358	401	105S
9359	401	107G
9360	401	127N
9361	401	131R
9362	401	138M
9363	401	142I
9364	401	144tQr
9365	401	147W
9366	401	150aARv
9367	401	156L
9368	401	158A
9369	401	163T
9370	401	166Dg
9371	401	171Y
9372	401	177Et
9373	401	180Q
9374	402	9F
9375	402	11Sv
9376	402	14R
9377	402	16Gr
9378	402	41A
9379	402	45rMe
9380	402	56G
9381	402	59Y
9382	402	62Qe
9383	402	66rNv
9384	402	70aHs
9385	402	74D
9386	402	76Es
9387	402	80rIAlr
9388	402	90A
9389	402	105P
9390	402	107GrL
9391	402	127N
9392	402	131R
9393	402	138M
9394	402	142I
9395	402	144tQr
9396	402	147W
9397	402	150aARv
9398	402	156L
9399	402	158A
9400	402	163T
9401	402	166Ew
9402	402	171Y
9403	402	177Et
9404	402	180Q
9405	402	183A
9406	402	186K
9407	402	193Av
9408	402	199A
9409	402	207S
9410	402	211A
9411	402	219R
9412	402	246S
9413	402	248V
9414	402	253Q
9415	402	261V
9416	402	267P
9417	402	269P
9418	402	273R
9419	402	275Lp
9420	402	282Ip
9421	402	285V
9422	403	9F
9423	403	11Sv
9424	403	14R
9425	403	16Gr
9426	403	41A
9427	403	45rMe
9428	403	56G
9429	403	59Y
9430	403	62Qe
9431	403	66rNv
9432	403	70aHs
9433	403	74D
9434	403	76Es
9435	403	80rIAlr
9436	403	90A
9437	403	105P
9438	403	107GrL
9439	403	127N
9440	403	131R
9441	403	138M
9442	403	142I
9443	403	144tQr
9444	403	147W
9445	403	150aAHv
9446	403	156Q
9447	403	158A
9448	403	163T
9449	403	166Ew
9450	403	171Y
9451	403	177Et
9452	403	180Q
9453	403	183A
9454	403	186K
9455	403	193Av
9456	403	199A
9457	403	207S
9458	403	211A
9459	403	219R
9460	403	246S
9461	403	248V
9462	403	253Q
9463	403	261V
9464	403	267P
9465	403	269P
9466	403	273R
9467	403	275Lp
9468	403	282Ip
9469	403	285V
9470	404	9F
9471	404	11Sv
9472	404	14R
9473	404	16Gr
9474	404	41A
9475	404	45rMe
9476	404	56G
9477	404	59Y
9478	404	62Qe
9479	404	66rNv
9480	404	70aHs
9481	404	74D
9482	404	76En
9483	404	80rIAlr
9484	404	90A
9485	404	105P
9486	404	107GrL
9487	404	127N
9488	404	131R
9489	404	138M
9490	404	142I
9491	404	144tQr
9492	404	147W
9493	404	150aARv
9494	404	156L
9495	404	158A
9496	404	163T
9497	404	166Ew
9498	404	171Y
9499	404	177Et
9500	404	180Q
9501	405	9F
9502	405	11Sv
9503	405	14R
9504	405	16Gr
9505	405	41A
9506	405	45rMe
9507	405	56G
9508	405	59Y
9509	405	62Qe
9510	405	66rNv
9511	405	70aHs
9512	405	74D
9513	405	76Es
9514	405	80rIAlr
9515	405	90A
9516	405	105S
9517	405	107GrF
9518	405	127N
9519	405	131R
9520	405	138M
9521	405	142I
9522	405	144tKr
9523	405	147W
9524	405	150aAHe
9525	405	156L
9526	405	158A
9527	405	163dT
9528	405	166Ew
9529	405	171Y
9530	405	177Et
9531	405	180Q
9532	406	9F
9533	406	11Sv
9534	406	14R
9535	406	16Gr
9536	406	41A
9537	406	45rMe
9538	406	56G
9539	406	59Y
9540	406	62Qe
9541	406	66gKv
9542	406	70aHs
9543	406	74D
9544	406	76Es
9545	406	80rIAlr
9546	406	90A
9547	406	105P
9548	406	107GrL
9549	406	127N
9550	406	131R
9551	406	138M
9552	406	142I
9553	406	144tQr
9554	406	147W
9555	406	150aARv
9556	406	156L
9557	406	158A
9558	406	163T
9559	406	166Ew
9560	406	171Y
9561	406	177Et
9562	406	180Q
9563	406	183A
9564	406	186K
9565	406	193Av
9566	406	199A
9567	406	207S
9568	406	211A
9569	406	219R
9570	406	246S
9571	406	248V
9572	406	253Q
9573	406	261V
9574	406	267P
9575	406	269P
9576	406	273R
9577	406	275Lp
9578	406	282Ip
9579	406	285V
9580	407	9F
9581	407	11Sv
9582	407	14R
9583	407	16Gr
9584	407	41A
9585	407	45rMe
9586	407	56G
9587	407	59Y
9588	407	62Qe
9589	407	66rNv
9590	407	70aHs
9591	407	74D
9592	407	76Es
9593	407	80rIAlr
9594	407	90A
9595	407	105P
9596	407	107GrL
9597	407	127N
9598	407	131R
9599	407	138M
9600	407	142I
9601	407	144tQr
9602	407	147W
9603	407	150aAHv
9604	407	156L
9605	407	158A
9606	407	163T
9607	407	166Ew
9608	407	171Y
9609	407	177Et
9610	407	180Q
9611	408	9T
9612	408	11Sv
9613	408	14R
9614	408	16Gr
9615	408	41A
9616	408	45rMe
9617	408	56G
9618	408	59Y
9619	408	62Rn
9620	408	66rNv
9621	408	70aHs
9622	408	74iD
9623	408	76Vd
9624	408	80gTLrg
9625	408	90A
9626	408	105S
9627	408	107G
9628	408	127N
9629	408	131R
9630	408	138M
9631	408	142I
9632	408	144tQr
9633	408	147W
9634	408	150aARv
9635	408	156L
9636	408	158A
9637	408	163T
9638	408	166Ew
9639	408	171H
9640	408	177Et
9641	408	180Q
9642	408	183P
9643	408	186R
9644	408	193Av
9645	408	199A
9646	408	207S
9647	408	211A
9648	408	219R
9649	408	246S
9650	408	248V
9651	408	253Q
9652	408	261V
9653	408	267P
9654	408	269P
9655	408	273R
9656	408	275Lp
9657	408	282Ip
9658	408	285V
9659	409	9T
9660	409	11Sv
9661	409	14R
9662	409	16Gr
9663	409	41A
9664	409	45rMe
9665	409	56G
9666	409	59Y
9667	409	62Rn
9668	409	66rNv
9669	409	70aHs
9670	409	74iD
9671	409	76Vd
9672	409	80gTLrg
9673	409	90A
9674	409	105S
9675	409	107G
9676	409	127N
9677	409	131R
9678	409	138M
9679	409	142I
9680	409	144tQr
9681	409	147W
9682	409	150aARv
9683	409	156L
9684	409	158A
9685	409	163T
9686	409	166Ew
9687	409	171Y
9688	409	177Et
9689	409	180Q
9690	409	183P
9691	409	186K
9692	409	193Av
9693	409	199A
9694	409	207S
9695	409	211A
9696	409	219R
9697	409	246S
9698	409	248V
9699	409	253Q
9700	409	261V
9701	409	267P
9702	409	269P
9703	409	273R
9704	409	275Lp
9705	409	282Ip
9706	409	285V
9707	410	9T
9708	410	11Sv
9709	410	14R
9710	410	16Gr
9711	410	41A
9712	410	45rMe
9713	410	56G
9714	410	59Y
9715	410	62Rn
9716	410	66rNv
9717	410	70aHs
9718	410	74iD
9719	410	76Vd
9720	410	80gTLrg
9721	410	90A
9722	410	105S
9723	410	107G
9724	410	127N
9725	410	131S
9726	410	138M
9727	410	142I
9728	410	144tQr
9729	410	147W
9730	410	150aARv
9731	410	156L
9732	410	158A
9733	410	163T
9734	410	166Ew
9735	410	171H
9736	410	177Et
9737	410	180Q
9738	411	9T
9739	411	11Sv
9740	411	14R
9741	411	16Gr
9742	411	41A
9743	411	45rMe
9744	411	56G
9745	411	59Y
9746	411	62Rn
9747	411	66rNv
9748	411	70aHs
9749	411	74iD
9750	411	76Vd
9751	411	80gTLrg
9752	411	90A
9753	411	105S
9754	411	107G
9755	411	127N
9756	411	131R
9757	411	138M
9758	411	142I
9759	411	144tQr
9760	411	147W
9761	411	150aARv
9762	411	156L
9763	411	158A
9764	411	163T
9765	411	166Ew
9766	411	171H
9767	411	177Et
9768	411	180Q
9769	412	9T
9770	412	11Sv
9771	412	14R
9772	412	16Gr
9773	412	41A
9774	412	45rMe
9775	412	56G
9776	412	59Y
9777	412	62Rn
9778	412	66rNv
9779	412	70aHs
9780	412	74iD
9781	412	76Vd
9782	412	80gTLrg
9783	412	90A
9784	412	105S
9785	412	107G
9786	412	127N
9787	412	131R
9788	412	138M
9789	412	142I
9790	412	144tQr
9791	412	147W
9792	412	150aARv
9793	412	156L
9794	412	158A
9795	412	163T
9796	412	166Ew
9797	412	171Y
9798	412	177Et
9799	412	180Q
9800	412	183P
9801	412	186K
9802	412	193Av
9803	412	199A
9804	412	207S
9805	412	211A
9806	412	219R
9807	412	246S
9808	413	9Y
9809	413	11Sv
9810	413	14R
9811	413	16Gr
9812	413	41A
9813	413	45rMe
9814	413	56G
9815	413	59Y
9816	413	62Rn
9817	413	66rKv
9818	413	70aQs
9819	413	74D
9820	413	76Vd
9821	413	80gTLrg
9822	413	90D
9823	413	105P
9824	413	107G
9825	413	127N
9826	413	131R
9827	413	138M
9828	413	142I
9829	413	144tQr
9830	413	147W
9831	413	150tAHe
9832	413	156W
9833	413	158A
9834	413	163T
9835	413	166Ew
9836	413	171Y
9837	413	177Et
9838	413	180Q
9839	413	183A
9840	413	186K
9841	413	193Av
9842	413	199A
9843	413	207S
9844	413	211A
9845	413	219R
9846	413	246S
9847	413	248V
9848	413	253Q
9849	413	261V
9850	413	267P
9851	413	269P
9852	413	273R
9853	413	275Lp
9854	413	282Ip
9855	413	285V
9856	414	9Y
9857	414	11Sv
9858	414	14R
9859	414	16Gr
9860	414	41A
9861	414	45rMe
9862	414	56G
9863	414	59Y
9864	414	62Rn
9865	414	66rNv
9866	414	70aQs
9867	414	74D
9868	414	76Vd
9869	414	80gTLrg
9870	414	90D
9871	414	105S
9872	414	107G
9873	414	127N
9874	414	131R
9875	414	138M
9876	414	142I
9877	414	144tQr
9878	414	147W
9879	414	150tAHe
9880	414	156W
9881	414	158A
9882	414	163T
9883	414	166Ew
9884	414	171Y
9885	414	177Et
9886	414	180Q
9887	414	183A
9888	414	186K
9889	414	193Av
9890	414	199A
9891	414	207S
9892	414	211A
9893	414	219R
9894	414	246S
9895	414	248V
9896	414	253Q
9897	414	261V
9898	414	267P
9899	414	269P
9900	414	273R
9901	414	275Lp
9902	414	282Ip
9903	414	285V
9904	415	9Y
9905	415	11Sv
9906	415	14R
9907	415	16Gr
9908	415	41A
9909	415	45rMe
9910	415	56G
9911	415	59Y
9912	415	62Rn
9913	415	66rNv
9914	415	70aQs
9915	415	74D
9916	415	76Vd
9917	415	80gTLrg
9918	415	90D
9919	415	105S
9920	415	107G
9921	415	127N
9922	415	131R
9923	415	138M
9924	415	142I
9925	415	144tQr
9926	415	147W
9927	415	150aAHe
9928	415	156W
9929	415	158A
9930	415	163T
9931	415	166Ew
9932	415	171Y
9933	415	177Et
9934	415	180Q
9935	416	9F
9936	416	11Sv
9937	416	14R
9938	416	16Gr
9939	416	41A
9940	416	45kMe
9941	416	56G
9942	416	59Y
9943	416	62Qe
9944	416	66rNm
9945	416	70aHs
9946	416	74D
9947	416	76An
9948	416	80gTLrg
9949	416	90D
9950	416	105P
9951	416	107G
9952	416	127N
9953	416	131R
9954	416	138M
9955	416	142I
9956	416	144tKr
9957	416	147W
9958	416	150aVHa
9959	416	156R
9960	416	158V
9961	416	163T
9962	416	166Ew
9963	416	171Y
9964	416	177Et
9965	416	180Q
9966	416	183P
9967	416	186K
9968	416	193Pi
9969	416	199A
9970	416	207G
9971	416	211A
9972	416	219R
9973	416	246S
9974	416	248V
9975	416	253Q
9976	416	261V
9977	416	267P
9978	416	269P
9979	416	273R
9980	416	275Lp
9981	416	282Ip
9982	416	285V
9983	417	9F
9984	417	11Sv
9985	417	14R
9986	417	16Gr
9987	417	41A
9988	417	45kMe
9989	417	56G
9990	417	59Y
9991	417	62Qe
9992	417	66rNm
9993	417	70aHs
9994	417	74D
9995	417	76An
9996	417	80gTLrg
9997	417	90D
9998	417	105P
9999	417	107G
10000	417	127N
10001	417	131R
10002	417	138M
10003	417	142I
10004	417	144tKr
10005	417	147W
10006	417	150aVHa
10007	417	156R
10008	417	158A
10009	417	163dT
10010	417	166Ew
10011	417	171Y
10012	417	177Et
10013	417	180Q
10014	418	9Y
10015	418	11Sv
10016	418	14R
10017	418	16Gr
10018	418	41A
10019	418	45rMe
10020	418	56G
10021	418	59Y
10022	418	62Lq
10023	418	66rNv
10024	418	70aHs
10025	418	74D
10026	418	76An
10027	418	80gTLrg
10028	418	90D
10029	418	105P
10030	418	107G
10031	418	127N
10032	418	131R
10033	418	138M
10034	418	142I
10035	418	144tQr
10036	418	147W
10037	418	150tAHe
10038	418	156W
10039	418	158A
10040	418	163R
10041	418	166Ew
10042	418	171Y
10043	418	177Et
10044	418	180Q
10045	418	183A
10046	418	186K
10047	418	193Av
10048	418	199A
10049	418	207S
10050	418	211A
10051	418	219R
10052	418	246S
10053	418	248V
10054	418	253Q
10055	418	261V
10056	418	267P
10057	418	269P
10058	418	273R
10059	418	275Lp
10060	418	282Ip
10061	418	285V
10062	419	9Y
10063	419	11Sv
10064	419	14R
10065	419	16Gr
10066	419	41A
10067	419	45rMe
10068	419	56G
10069	419	59Y
10070	419	62Rn
10071	419	66rNv
10072	419	70aQs
10073	419	74D
10074	419	76Vd
10075	419	80gTLrg
10076	419	90D
10077	419	105P
10078	419	107G
10079	419	127N
10080	419	131R
10081	419	138M
10082	419	142I
10083	419	144tQr
10084	419	147W
10085	419	150tAHe
10086	419	156W
10087	419	158A
10088	419	163R
10089	419	166Ew
10090	419	171Y
10091	419	177Et
10092	419	180Q
10093	419	183A
10094	419	186K
10095	419	193Av
10096	419	199A
10097	419	207S
10098	419	211A
10099	419	219R
10100	419	246S
10101	419	248V
10102	419	253Q
10103	419	261V
10104	419	267P
10105	419	269P
10106	419	273R
10107	419	275Lp
10108	419	282Ip
10109	419	285V
10110	420	9Y
10111	420	11Sv
10112	420	14R
10113	420	16Gr
10114	420	41A
10115	420	45rMe
10116	420	56G
10117	420	59Y
10118	420	62Rn
10119	420	66rNv
10120	420	70aQs
10121	420	74A
10122	420	76Vd
10123	420	80gTLrg
10124	420	90A
10125	420	105P
10126	420	107G
10127	420	127N
10128	420	131R
10129	420	138M
10130	420	142I
10131	420	144tQr
10132	420	147W
10133	420	150tAHe
10134	420	156W
10135	420	158A
10136	420	163E
10137	420	166Ew
10138	420	171Y
10139	420	177Et
10140	420	180Q
10141	420	183A
10142	420	186K
10143	420	193Av
10144	420	199A
10145	420	207S
10146	420	211A
10147	420	219R
10148	420	246S
10149	420	248V
10150	420	253Q
10151	420	261V
10152	420	267P
10153	420	269P
10154	420	273R
10155	420	275Lp
10156	420	282Ip
10157	420	285V
10158	421	9Y
10159	421	11Sv
10160	421	14R
10161	421	16Gr
10162	421	41A
10163	421	45rMe
10164	421	56G
10165	421	59Y
10166	421	62Rn
10167	421	66rNv
10168	421	70aHs
10169	421	74A
10170	421	76Vd
10171	421	80gTLrg
10172	421	90A
10173	421	105P
10174	421	107G
10175	421	127N
10176	421	131R
10177	421	138M
10178	421	142I
10179	421	144tQr
10180	421	147W
10181	421	150tAHe
10182	421	156W
10183	421	158A
10184	421	163E
10185	421	166Ew
10186	421	171Y
10187	421	177Et
10188	421	180Q
10189	422	9Y
10190	422	11Sv
10191	422	14R
10192	422	16Gr
10193	422	41A
10194	422	45rMe
10195	422	56G
10196	422	59Y
10197	422	62Rn
10198	422	66rNv
10199	422	70aQs
10200	422	74D
10201	422	76Vd
10202	422	80gTLrg
10203	422	90A
10204	422	105S
10205	422	107G
10206	422	127K
10207	422	131R
10208	422	138M
10209	422	142T
10210	422	144tKh
10211	422	147W
10212	422	150aAHv
10213	422	156W
10214	422	158A
10215	422	163T
10216	422	166Ew
10217	422	171Y
10218	422	177Et
10219	422	180Q
10220	422	183A
10221	422	186K
10222	422	193Av
10223	422	199A
10224	422	207S
10225	422	211A
10226	422	219R
10227	422	246VA
10228	422	248V
10229	422	253Q
10230	422	261V
10231	422	267P
10232	422	269P
10233	422	273R
10234	422	275Lp
10235	422	282Ip
10236	422	285V
10237	423	9Y
10238	423	11SM
10239	423	14R
10240	423	16Gr
10241	423	41A
10242	423	45rMe
10243	423	56G
10244	423	59Y
10245	423	62Rn
10246	423	66rNv
10247	423	70aQs
10248	423	74D
10249	423	76Vd
10250	423	80gTLrg
10251	423	90A
10252	423	105P
10253	423	107G
10254	423	127K
10255	423	131R
10256	423	138M
10257	423	142T
10258	423	144tKh
10259	423	147W
10260	423	150aAHv
10261	423	156W
10262	423	158A
10263	423	163T
10264	423	166Ew
10265	423	171Y
10266	423	177Et
10267	423	180Q
10268	423	183A
10269	423	186K
10270	423	193Av
10271	423	199A
10272	423	207S
10273	423	211A
10274	423	219R
10275	423	246VA
10276	423	248V
10277	423	253Q
10278	423	261V
10279	423	267P
10280	423	269P
10281	423	273R
10282	423	275Lp
10283	423	282Ip
10284	423	285V
10285	424	9Y
10286	424	11Sv
10287	424	14R
10288	424	16Gr
10289	424	41A
10290	424	45rMe
10291	424	56G
10292	424	59Y
10293	424	62Rn
10294	424	66rNv
10295	424	70aHs
10296	424	74D
10297	424	76Vd
10298	424	80gTLrg
10299	424	90A
10300	424	105S
10301	424	107G
10302	424	127K
10303	424	131R
10304	424	138M
10305	424	142T
10306	424	144tKh
10307	424	147W
10308	424	150aAHv
10309	424	156W
10310	424	158A
10311	424	163T
10312	424	166Ew
10313	424	171Y
10314	424	177Et
10315	424	180Q
10316	424	183A
10317	424	186K
10318	424	193Av
10319	424	199A
10320	424	207S
10321	424	211A
10322	424	219R
10323	424	246VA
10324	424	248V
10325	424	253Q
10326	424	261V
10327	424	267P
10328	424	269P
10329	424	273R
10330	424	275Lp
10331	424	282Ip
10332	424	285V
10333	425	9Y
10334	425	11Sv
10335	425	14R
10336	425	16Gr
10337	425	41A
10338	425	45rMe
10339	425	56G
10340	425	59Y
10341	425	62Rn
10342	425	66rNv
10343	425	70aHs
10344	425	74D
10345	425	76Vd
10346	425	80gTLrg
10347	425	90A
10348	425	105S
10349	425	107G
10350	425	127K
10351	425	131R
10352	425	138M
10353	425	142T
10354	425	144tKh
10355	425	147W
10356	425	150aAHv
10357	425	156W
10358	425	158A
10359	425	163T
10360	425	166Ew
10361	425	171Y
10362	425	177Et
10363	425	180Q
10364	426	9Y
10365	426	11Sv
10366	426	14R
10367	426	16Gr
10368	426	41A
10369	426	45rMe
10370	426	56G
10371	426	59Y
10372	426	62Rn
10373	426	66rNv
10374	426	70aHs
10375	426	74H
10376	426	76Vd
10377	426	80gTLrg
10378	426	90A
10379	426	105S
10380	426	107G
10381	426	127K
10382	426	131R
10383	426	138M
10384	426	142T
10385	426	144tKh
10386	426	147W
10387	426	150aAHv
10388	426	156W
10389	426	158A
10390	426	163T
10391	426	166Ew
10392	426	171Y
10393	426	177Et
10394	426	180Q
10395	427	9Y
10396	427	11Sv
10397	427	14R
10398	427	16Gr
10399	427	41A
10400	427	45rMe
10401	427	56G
10402	427	59Y
10403	427	62Rn
10404	427	66rNv
10405	427	70aQs
10406	427	74D
10407	427	76Vd
10408	427	80gTLrg
10409	427	90A
10410	427	105S
10411	427	107G
10412	427	127K
10413	427	131R
10414	427	138M
10415	427	142T
10416	427	144tKh
10417	427	147W
10418	427	150aAHv
10419	427	156W
10420	427	158A
10421	427	163T
10422	427	166Ew
10423	427	171Y
10424	427	177Et
10425	427	180Q
10426	428	9Y
10427	428	11Sv
10428	428	14R
10429	428	16Gr
10430	428	41A
10431	428	45rMe
10432	428	56G
10433	428	59Y
10434	428	62Rn
10435	428	66rNv
10436	428	70aQs
10437	428	74D
10438	428	76Vd
10439	428	80gTLrg
10440	428	90A
10441	428	105S
10442	428	107G
10443	428	127K
10444	428	131R
10445	428	138M
10446	428	142T
10447	428	144tKh
10448	428	147W
10449	428	150aAHv
10450	428	156W
10451	428	158A
10452	428	163T
10453	428	166Ew
10454	428	171Y
10455	428	177Et
10456	428	180Q
10457	429	9Y
10458	429	11Sv
10459	429	14R
10460	429	16Gr
10461	429	41A
10462	429	45rMe
10463	429	56G
10464	429	59Y
10465	429	62Rn
10466	429	66rNv
10467	429	70aQs
10468	429	74D
10469	429	76Vd
10470	429	80gTLrg
10471	429	90A
10472	429	105S
10473	429	107G
10474	429	127K
10475	429	131R
10476	429	138M
10477	429	142T
10478	429	144tKh
10479	429	147W
10480	429	150aAHv
10481	429	156L
10482	429	158A
10483	429	163T
10484	429	166Ew
10485	429	171Y
10486	429	177Et
10487	429	180Q
10488	429	183A
10489	429	186K
10490	429	193Av
10491	429	199A
10492	429	207S
10493	429	211A
10494	429	219R
10495	429	246VA
10496	429	248V
10497	429	253Q
10498	429	261V
10499	429	267P
10500	429	269P
10501	429	273R
10502	429	275Lp
10503	429	282Ip
10504	429	285V
10505	430	9Y
10506	430	11Sv
10507	430	14R
10508	430	16Gr
10509	430	41A
10510	430	45rMe
10511	430	56G
10512	430	59Y
10513	430	62Rn
10514	430	66rNv
10515	430	70aQs
10516	430	74D
10517	430	76Vd
10518	430	80gTLrg
10519	430	90A
10520	430	105S
10521	430	107G
10522	430	127K
10523	430	131R
10524	430	138M
10525	430	142T
10526	430	144tKh
10527	430	147W
10528	430	150aAHv
10529	430	156Q
10530	430	158A
10531	430	163T
10532	430	166Ew
10533	430	171Y
10534	430	177Et
10535	430	180Q
10536	431	9Y
10537	431	11Sv
10538	431	14R
10539	431	16Gr
10540	431	41A
10541	431	45rMe
10542	431	56G
10543	431	59Y
10544	431	62Ee
10545	431	66rNv
10546	431	70aQs
10547	431	74D
10548	431	76Vd
10549	431	80gTLrg
10550	431	90A
10551	431	105S
10552	431	107G
10553	431	127K
10554	431	131R
10555	431	138M
10556	431	142T
10557	431	144tKh
10558	431	147W
10559	431	150aAHv
10560	431	156W
10561	431	158A
10562	431	163T
10563	431	166Ew
10564	431	171Y
10565	431	177Et
10566	431	180Q
10567	432	9Y
10568	432	11Sv
10569	432	14R
10570	432	16Gr
10571	432	41A
10572	432	45rMe
10573	432	56G
10574	432	59Y
10575	432	62Rn
10576	432	66rNv
10577	432	70aQs
10578	432	74D
10579	432	76Vd
10580	432	80gTLrg
10581	432	90A
10582	432	105S
10583	432	107G
10584	432	127K
10585	432	131R
10586	432	138M
10587	432	142I
10588	432	144tKh
10589	432	147W
10590	432	150aAHv
10591	432	156W
10592	432	158A
10593	432	163T
10594	432	166Ew
10595	432	171Y
10596	433	9Y
10597	433	11Sv
10598	433	14R
10599	433	16Gr
10600	433	41A
10601	433	45rMe
10602	433	56G
10603	433	59Y
10604	433	62Re
10605	433	66rNv
10606	433	70aQs
10607	433	74D
10608	433	76Vd
10609	433	80gTLrg
10610	433	90A
10611	433	105S
10612	433	107G
10613	433	127K
10614	433	131R
10615	433	138M
10616	433	142T
10617	433	144tKh
10618	433	147W
10619	433	150aAHv
10620	433	156W
10621	433	158A
10622	433	163T
10623	433	166Ew
10624	433	171Y
10625	433	177Et
10626	433	180Q
10627	433	183A
10628	433	186K
10629	433	193Av
10630	433	199A
10631	433	207S
10632	433	211A
10633	433	219R
10634	433	246VA
10635	433	248V
10636	433	253Q
10637	433	261V
10638	434	9Y
10639	434	11Sv
10640	434	14R
10641	434	16Gr
10642	434	41A
10643	434	45rMe
10644	434	56G
10645	434	59Y
10646	434	62Ee
10647	434	66rNv
10648	434	70aQs
10649	434	74D
10650	434	76Vd
10651	434	80gTLrg
10652	434	90A
10653	434	105S
10654	434	107G
10655	434	127K
10656	434	131R
10657	434	138M
10658	434	142T
10659	434	144tKh
10660	434	147W
10661	434	150aAHv
10662	434	156W
10663	434	158A
10664	434	163T
10665	434	166Ew
10666	434	171Y
10667	434	177Et
10668	434	180Q
10669	435	9Y
10670	435	11SM
10671	435	14R
10672	435	16Gr
10673	435	41A
10674	435	45rMe
10675	435	56G
10676	435	59Y
10677	435	62Rn
10678	435	66rNv
10679	435	70aHs
10680	435	74H
10681	435	76Vd
10682	435	80gTLrg
10683	435	90A
10684	435	105P
10685	435	107G
10686	435	127K
10687	435	131R
10688	435	138M
10689	435	142T
10690	435	144tKh
10691	435	147W
10692	435	150aAHv
10693	435	156W
10694	435	158A
10695	435	163T
10696	435	166Ew
10697	435	171Y
10698	435	177Et
10699	435	180Q
10700	436	9Y
10701	436	11Sv
10702	436	14R
10703	436	16Gr
10704	436	41A
10705	436	45rMe
10706	436	56G
10707	436	59Y
10708	436	62Rn
10709	436	66rNv
10710	436	70aQs
10711	436	74D
10712	436	76Vd
10713	436	80gTLrg
10714	436	90A
10715	436	105S
10716	436	107G
10717	436	127K
10718	436	131R
10719	436	138M
10720	436	142T
10721	436	144tKh
10722	436	147W
10723	436	150aALv
10724	436	156W
10725	436	158A
10726	436	163T
10727	436	166Ew
10728	436	171Y
10729	436	177Et
10730	436	180Q
10731	437	9Y
10732	437	11Sv
10733	437	14R
10734	437	16Gr
10735	437	41A
10736	437	45rMe
10737	437	56G
10738	437	59Y
10739	437	62Rn
10740	437	66rNv
10741	437	70aQs
10742	437	74D
10743	437	76Vd
10744	437	80gTLrg
10745	437	90A
10746	437	105S
10747	437	107G
10748	437	127K
10749	437	131R
10750	437	138M
10751	437	142T
10752	437	144tKh
10753	437	147W
10754	437	150aAHv
10755	437	156W
10756	437	158A
10757	437	163T
10758	437	166Ew
10759	437	171Y
10760	437	177Et
10761	437	180Q
10762	437	183A
10763	437	186K
10764	437	193Av
10765	437	199A
10766	437	207S
10767	437	211A
10768	437	219R
10769	437	246VA
10770	437	248V
10771	437	253Q
10772	437	261V
10773	437	267P
10774	437	269P
10775	437	273R
10776	437	275Lp
10777	437	282Ip
10778	437	285V
10779	438	9Y
10780	438	11Sv
10781	438	14R
10782	438	16Gr
10783	438	41A
10784	438	45rMe
10785	438	56G
10786	438	59Y
10787	438	62Rn
10788	438	66rNv
10789	438	70aQs
10790	438	74D
10791	438	76Vd
10792	438	80gTLrg
10793	438	90A
10794	438	105S
10795	438	107G
10796	438	127K
10797	438	131R
10798	438	138M
10799	438	142T
10800	438	144tKh
10801	438	147W
10802	438	150aAHv
10803	438	156W
10804	438	158A
10805	438	163dT
10806	438	166Ew
10807	438	171Y
10808	438	177Et
10809	438	180Q
10810	439	9Y
10811	439	11Sv
10812	439	14R
10813	439	16Gr
10814	439	41A
10815	439	45rMe
10816	439	56G
10817	439	59Y
10818	439	62Rn
10819	439	66rNv
10820	439	70aQs
10821	439	74D
10822	439	76Vd
10823	439	80gTLrg
10824	439	90A
10825	439	105S
10826	439	107W
10827	439	127K
10828	439	131R
10829	439	138M
10830	439	142T
10831	439	144tKh
10832	439	147W
10833	439	150aAHv
10834	439	156L
10835	439	158A
10836	439	163T
10837	439	166Ew
10838	439	171Y
10839	439	177Et
10840	439	180Q
10841	439	183A
10842	439	186K
10843	439	193Av
10844	439	199A
10845	439	207S
10846	439	211A
10847	439	219R
10848	439	246A
10849	439	248V
10850	439	253Q
10851	439	261V
10852	439	267P
10853	439	269P
10854	439	273R
10855	439	275Lp
10856	439	282Ip
10857	439	285V
10858	440	9F
10859	440	11Sv
10860	440	14R
10861	440	16Gr
10862	440	41A
10863	440	45rMe
10864	440	56G
10865	440	59Y
10866	440	62Qe
10867	440	66rNv
10868	440	70aHs
10869	440	74D
10870	440	76Vd
10871	440	80gTLrg
10872	440	90A
10873	440	105P
10874	440	107GrL
10875	440	127N
10876	440	131R
10877	440	138M
10878	440	142I
10879	440	144tQr
10880	440	147W
10881	440	150aARv
10882	440	156L
10883	440	158A
10884	440	163T
10885	440	166Ew
10886	440	171Y
10887	440	177Et
10888	440	180Q
10889	440	183A
10890	440	186K
10891	440	193Av
10892	440	199A
10893	440	207S
10894	440	211A
10895	440	219R
10896	440	246S
10897	440	248V
10898	440	253Q
10899	440	261V
10900	440	267P
10901	440	269P
10902	440	273R
10903	440	275Lp
10904	440	282Ip
10905	440	285V
10906	441	9F
10907	441	11Sv
10908	441	14R
10909	441	16Gr
10910	441	41A
10911	441	45rMe
10912	441	56G
10913	441	59Y
10914	441	62Qe
10915	441	66rNv
10916	441	70aHs
10917	441	74D
10918	441	76Vd
10919	441	80gTLrg
10920	441	90A
10921	441	105P
10922	441	107GrL
10923	441	127N
10924	441	131R
10925	441	138M
10926	441	142I
10927	441	144tQr
10928	441	147W
10929	441	150aARv
10930	441	156L
10931	441	158A
10932	441	163T
10933	441	166Ew
10934	441	171Y
10935	441	177Et
10936	441	180Q
10937	442	9F
10938	442	11Sv
10939	442	14R
10940	442	16Gr
10941	442	41A
10942	442	45rMe
10943	442	56G
10944	442	59Y
10945	442	62Qe
10946	442	66rNv
10947	442	70aHs
10948	442	74D
10949	442	76Vd
10950	442	80aTLrg
10951	442	90A
10952	442	105P
10953	442	107GrL
10954	442	127N
10955	442	131R
10956	442	138M
10957	442	142I
10958	442	144tQr
10959	442	147W
10960	442	150aARv
10961	442	156L
10962	442	158A
10963	442	163T
10964	442	166Ew
10965	442	171Y
10966	442	177Et
10967	442	180Q
10968	443	9F
10969	443	11Sv
10970	443	14R
10971	443	16Gr
10972	443	41A
10973	443	45rMe
10974	443	56G
10975	443	59Y
10976	443	62Ge
10977	443	66rKv
10978	443	70aHs
10979	443	74D
10980	443	76Vd
10981	443	80gTLrg
10982	443	90A
10983	443	105P
10984	443	107GrL
10985	443	127N
10986	443	131R
10987	443	138M
10988	443	142I
10989	443	144tQr
10990	443	147W
10991	443	150aARv
10992	443	156L
10993	443	158A
10994	443	163T
10995	443	166Ew
10996	443	171Y
10997	443	177Et
10998	443	180Q
10999	444	9F
11000	444	11Sv
11001	444	14R
11002	444	16Gr
11003	444	41A
11004	444	45rMe
11005	444	56E
11006	444	59Y
11007	444	62Ee
11008	444	66rNv
11009	444	70aHs
11010	444	74N
11011	444	76An
11012	444	80gTLrg
11013	444	90D
11014	444	105S
11015	444	107G
11016	444	127N
11017	444	131R
11018	444	138M
11019	444	142I
11020	444	144tKr
11021	444	147W
11022	444	150aARr
11023	444	156L
11024	444	158A
11025	444	163E
11026	444	166Dg
11027	444	171Y
11028	444	177Et
11029	444	180Q
11030	444	183P
11031	444	186K
11032	444	193P
11033	444	199A
11034	444	207S
11035	444	211A
11036	444	219R
11037	444	246A
11038	444	248V
11039	444	253Kek
11040	444	261V
11041	444	267Pe
11042	444	269P
11043	444	273R
11044	444	275Lp
11045	444	282Ip
11046	444	285V
11047	445	9Y
11048	445	11Sv
11049	445	14R
11050	445	16Gr
11051	445	41A
11052	445	45Ee
11053	445	56G
11054	445	59Y
11055	445	62Rn
11056	445	66qIy
11057	445	70aQa
11058	445	74D
11059	445	76Es
11060	445	80rNLrg
11061	445	90A
11062	445	105P
11063	445	107G
11064	445	127N
11065	445	131R
11066	445	138T
11067	445	142I
11068	445	144tQr
11069	445	147W
11070	445	150aARe
11071	445	156R
11072	445	158A
11073	445	163E
11074	445	166Ew
11075	445	171Y
11076	445	177Dk
11077	445	180E
11078	445	183P
11079	445	186K
11080	445	193Pi
11081	445	199A
11082	445	207G
11083	445	211A
11084	445	219R
11085	445	246A
11086	445	248V
11087	445	253E
11088	445	261V
11089	445	267P
11090	445	269P
11091	445	273R
11092	445	275E
11093	445	282Vp
11094	445	285V
11095	446	9Y
11096	446	11Sv
11097	446	14R
11098	446	16Gr
11099	446	41A
11100	446	45Ee
11101	446	56G
11102	446	59Y
11103	446	62Rn
11104	446	66qIy
11105	446	70tNt
11106	446	74D
11107	446	76Es
11108	446	80rNLrg
11109	446	90A
11110	446	105P
11111	446	107G
11112	446	127N
11113	446	131R
11114	446	138T
11115	446	142I
11116	446	144tQr
11117	446	147W
11118	446	150aARe
11119	446	156R
11120	446	158A
11121	446	163E
11122	446	166Ew
11123	446	171Y
11124	446	177Dk
11125	446	180E
11126	446	183P
11127	446	186K
11128	446	193Pi
11129	446	199A
11130	446	207G
11131	446	211A
11132	446	219R
11133	446	246A
11134	446	248V
11135	446	253E
11136	446	261V
11137	446	267P
11138	446	269P
11139	446	273R
11140	446	275E
11141	446	282Vp
11142	446	285V
11143	447	9Y
11144	447	11Sv
11145	447	14R
11146	447	16Gr
11147	447	41A
11148	447	45Ee
11149	447	56G
11150	447	59Y
11151	447	62Rn
11152	447	66qIy
11153	447	70aQa
11154	447	74D
11155	447	76Es
11156	447	80rNLrg
11157	447	90A
11158	447	105P
11159	447	107G
11160	447	127N
11161	447	131R
11162	447	138T
11163	447	142I
11164	447	144tQr
11165	447	147W
11166	447	150aARe
11167	447	156D
11168	447	158A
11169	447	163E
11170	447	166Ew
11171	447	171Y
11172	447	177Dk
11173	447	180E
11174	447	183P
11175	447	186K
11176	447	193Pi
11177	447	199A
11178	447	207G
11179	447	211A
11180	447	219R
11181	447	246A
11182	447	248V
11183	447	253E
11184	447	261V
11185	447	267P
11186	447	269P
11187	447	273R
11188	447	275E
11189	447	282Vp
11190	447	285V
11191	448	9Y
11192	448	11Sv
11193	448	14R
11194	448	16Gr
11195	448	41A
11196	448	45Ee
11197	448	56G
11198	448	59Y
11199	448	62Rn
11200	448	66qIy
11201	448	70aQa
11202	448	74D
11203	448	76Es
11204	448	80rNLrg
11205	448	90A
11206	448	105P
11207	448	107G
11208	448	127N
11209	448	131R
11210	448	138T
11211	448	142I
11212	448	144tQr
11213	448	147W
11214	448	150aARe
11215	448	156R
11216	448	158A
11217	448	163E
11218	448	166Ew
11219	448	171Y
11220	448	177Dk
11221	448	180E
11222	448	183P
11223	448	186K
11224	448	193Pi
11225	448	199A
11226	448	207G
11227	448	211A
11228	448	219R
11229	448	246A
11230	448	248V
11231	448	253E
11232	448	261V
11233	448	267P
11234	448	269P
11235	448	273R
11236	448	275E
11237	448	282Ip
11238	448	285V
11239	449	9Y
11240	449	11Sv
11241	449	14R
11242	449	16Gr
11243	449	41A
11244	449	45Ee
11245	449	56G
11246	449	59Y
11247	449	62Rn
11248	449	66qIy
11249	449	70aQa
11250	449	74D
11251	449	76Es
11252	449	80rNLrg
11253	449	90A
11254	449	105P
11255	449	107G
11256	449	127N
11257	449	131R
11258	449	138T
11259	449	142I
11260	449	144tQr
11261	449	147W
11262	449	150aARe
11263	449	156R
11264	449	158A
11265	449	163E
11266	449	166Ew
11267	449	171Y
11268	449	177Dk
11269	449	180E
11270	449	183P
11271	449	186K
11272	449	193Pi
11273	449	199A
11274	449	207G
11275	449	211A
11276	449	219R
11277	449	246A
11278	449	248V
11279	449	253E
11280	449	261V
11281	449	267P
11282	449	269P
11283	449	273R
11284	449	275E
11285	449	282Vp
11286	449	285V
11287	450	9Y
11288	450	11Sv
11289	450	14R
11290	450	16Gr
11291	450	41A
11292	450	45Ee
11293	450	56G
11294	450	59Y
11295	450	62Rn
11296	450	66qIy
11297	450	70aQa
11298	450	74D
11299	450	76Es
11300	450	80rNLrg
11301	450	90A
11302	450	105P
11303	450	107G
11304	450	127N
11305	450	131R
11306	450	138T
11307	450	142I
11308	450	144tQr
11309	450	147W
11310	450	150aARe
11311	450	156R
11312	450	158A
11313	450	163E
11314	450	166Ew
11315	450	171Y
11316	450	177Dk
11317	450	180E
11318	450	183P
11319	450	186K
11320	450	193Pi
11321	450	199A
11322	451	9Y
11323	451	11Sv
11324	451	14R
11325	451	16Gr
11326	451	41A
11327	451	45Ee
11328	451	56G
11329	451	59Y
11330	451	62Rn
11331	451	66qIf
11332	451	70tNt
11333	451	74D
11334	451	76Es
11335	451	80rNLrg
11336	451	90A
11337	451	105P
11338	451	107G
11339	451	127N
11340	451	131R
11341	451	138T
11342	451	142I
11343	451	144tQr
11344	451	147W
11345	451	150aARe
11346	451	156R
11347	451	158A
11348	451	163E
11349	451	166Ew
11350	451	171Y
11351	451	177Dk
11352	451	180E
11353	451	183P
11354	451	186K
11355	451	193Pi
11356	451	199A
11357	452	9Y
11358	452	11Sv
11359	452	14R
11360	452	16Gr
11361	452	41A
11362	452	45Ee
11363	452	56G
11364	452	59Y
11365	452	62Rn
11366	452	66qIy
11367	452	70aQa
11368	452	74D
11369	452	76Es
11370	452	80rNLrg
11371	452	90A
11372	452	105P
11373	452	107G
11374	452	127N
11375	452	131R
11376	452	138T
11377	452	142I
11378	452	144tQr
11379	452	147W
11380	452	150aARe
11381	452	156R
11382	452	158A
11383	452	163E
11384	452	166Ew
11385	452	171Y
11386	452	177Dk
11387	452	180E
11388	452	183P
11389	452	186K
11390	452	193Pi
11391	452	199A
11392	453	9Y
11393	453	11Sv
11394	453	14R
11395	453	16Gr
11396	453	41A
11397	453	45Ee
11398	453	56G
11399	453	59Y
11400	453	62Rn
11401	453	66qIc
11402	453	70aQa
11403	453	74D
11404	453	76Es
11405	453	80rNLrg
11406	453	90A
11407	453	105P
11408	453	107G
11409	453	127N
11410	453	131R
11411	453	138T
11412	453	142I
11413	453	144tQr
11414	453	147W
11415	453	150aARe
11416	453	156R
11417	453	158A
11418	453	163E
11419	453	166Ew
11420	453	171Y
11421	453	177Dk
11422	453	180E
11423	453	183P
11424	453	186K
11425	453	193Pi
11426	453	199A
11427	454	9Y
11428	454	11Sv
11429	454	14R
11430	454	16Gr
11431	454	41A
11432	454	45Ee
11433	454	56G
11434	454	59Y
11435	454	62Rn
11436	454	66qIy
11437	454	70aQa
11438	454	74D
11439	454	76En
11440	454	80rNLrg
11441	454	90A
11442	454	105P
11443	454	107G
11444	454	127N
11445	454	131R
11446	454	138T
11447	454	142I
11448	454	144tQr
11449	454	147W
11450	454	150aARe
11451	454	156R
11452	454	158A
11453	454	163E
11454	454	166Ew
11455	454	171Y
11456	454	177Dk
11457	454	180E
11458	454	183P
11459	454	186K
11460	454	193Pi
11461	454	199A
11462	455	9Y
11463	455	11Sv
11464	455	14R
11465	455	16Gr
11466	455	41A
11467	455	45Ee
11468	455	56G
11469	455	59Y
11470	455	62Rn
11471	455	66qIy
11472	455	70aQa
11473	455	74D
11474	455	76Es
11475	455	80rNLrg
11476	455	90A
11477	455	105P
11478	455	107G
11479	455	127N
11480	455	131R
11481	455	138T
11482	455	142I
11483	455	144tQr
11484	455	147W
11485	455	150aARe
11486	455	156R
11487	455	158A
11488	455	163E
11489	455	166Ew
11490	455	171Y
11491	455	177Dk
11492	455	180E
11493	455	183P
11494	455	186K
11495	455	193Pi
11496	455	199A
11497	456	9Y
11498	456	11Sv
11499	456	14R
11500	456	16Gr
11501	456	41A
11502	456	45Ge
11503	456	56G
11504	456	59Y
11505	456	62Re
11506	456	66qKy
11507	456	70rQa
11508	456	74aD
11509	456	76Vs
11510	456	80rNLrg
11511	456	90A
11512	456	105P
11513	456	107G
11514	456	127N
11515	456	131R
11516	456	138T
11517	456	142I
11518	456	144tQr
11519	456	147W
11520	456	150aARe
11521	456	156R
11522	456	158A
11523	456	163E
11524	456	166Ew
11525	456	171Y
11526	456	177Dk
11527	456	180E
11528	456	183P
11529	456	186K
11530	456	193Pi
11531	456	199A
11532	457	9Y
11533	457	11Sv
11534	457	14R
11535	457	16Gr
11536	457	41A
11537	457	45Ee
11538	457	56G
11539	457	59Y
11540	457	62Rn
11541	457	66qIy
11542	457	70aQa
11543	457	74D
11544	457	76Es
11545	457	80rNLrg
11546	457	90A
11547	457	105P
11548	457	107G
11549	457	127N
11550	457	131R
11551	457	138T
11552	457	142I
11553	457	144tQr
11554	457	147W
11555	457	150aARe
11556	457	156R
11557	457	158A
11558	457	163E
11559	457	166Ew
11560	457	171Y
11561	457	177Dk
11562	457	180E
11563	457	183P
11564	457	186K
11565	457	193Pi
11566	457	199A
11567	458	9Y
11568	458	11Sv
11569	458	14R
11570	458	16Gr
11571	458	41A
11572	458	45Ee
11573	458	56G
11574	458	59Y
11575	458	62Rn
11576	458	66qIy
11577	458	70aQa
11578	458	74aD
11579	458	76Vs
11580	458	80rNLrg
11581	458	90A
11582	458	105P
11583	458	107G
11584	458	127N
11585	458	131R
11586	458	138T
11587	458	142I
11588	458	144tQr
11589	458	147W
11590	458	150aARe
11591	458	156R
11592	458	158A
11593	458	163E
11594	458	166Ew
11595	458	171Y
11596	458	177Dk
11597	458	180E
11598	458	183P
11599	458	186K
11600	458	193Pi
11601	458	199A
11602	459	9Y
11603	459	11Sv
11604	459	14R
11605	459	16Gr
11606	459	41A
11607	459	45Ee
11608	459	56G
11609	459	59Y
11610	459	62Rn
11611	459	66qIy
11612	459	70tNt
11613	459	74Y
11614	459	76Es
11615	459	80rNLrg
11616	459	90A
11617	459	105P
11618	459	107G
11619	459	127N
11620	459	131R
11621	459	138T
11622	459	142I
11623	459	144tQr
11624	459	147W
11625	459	150aARe
11626	459	156R
11627	459	158A
11628	459	163E
11629	459	166Ew
11630	459	171Y
11631	459	177Dk
11632	459	180E
11633	459	183P
11634	459	186K
11635	459	193Pi
11636	459	199A
11637	460	9Y
11638	460	11Sv
11639	460	14R
11640	460	16Gr
11641	460	41A
11642	460	45Ee
11643	460	56G
11644	460	59Y
11645	460	62Rn
11646	460	66qIy
11647	460	70aQa
11648	460	74D
11649	460	76Es
11650	460	80rNLrg
11651	460	90A
11652	460	105P
11653	460	107G
11654	460	127N
11655	460	131R
11656	460	138T
11657	460	142I
11658	460	144tQr
11659	460	147W
11660	460	150aARe
11661	460	156R
11662	460	158A
11663	460	163E
11664	460	166Ew
11665	460	171Y
11666	460	177Dk
11667	460	180E
11668	460	183P
11669	460	186K
11670	460	193Pi
11671	460	199A
11672	461	9Y
11673	461	11Sv
11674	461	14R
11675	461	16Gr
11676	461	41A
11677	461	45Ee
11678	461	56G
11679	461	59Y
11680	461	62Rn
11681	461	66qIy
11682	461	70aQa
11683	461	74D
11684	461	76Es
11685	461	80rNLrg
11686	461	90A
11687	461	105P
11688	461	107G
11689	461	127N
11690	461	131R
11691	461	138T
11692	461	142I
11693	461	144tQr
11694	461	147W
11695	461	150aARe
11696	461	156R
11697	461	158A
11698	461	163E
11699	461	166Ew
11700	461	171Y
11701	461	177Dk
11702	461	180E
11703	461	183P
11704	461	186K
11705	461	193Pi
11706	461	199A
11707	461	207G
11708	461	211A
11709	461	219R
11710	461	246A
11711	461	248V
11712	461	253E
11713	461	261V
11714	461	267P
11715	461	269P
11716	461	273R
11717	461	275E
11718	461	282Vp
11719	461	285V
11720	462	9Y
11721	462	11Sv
11722	462	14R
11723	462	16Gr
11724	462	41A
11725	462	45Ee
11726	462	56G
11727	462	59Y
11728	462	62Rn
11729	462	66qIy
11730	462	70aQa
11731	462	74D
11732	462	76Es
11733	462	80rNLrg
11734	462	90A
11735	462	105P
11736	462	107G
11737	462	127N
11738	462	131R
11739	462	138T
11740	462	142I
11741	462	144tQr
11742	462	147W
11743	462	150aARe
11744	462	156D
11745	462	158A
11746	462	163T
11747	462	166Ew
11748	462	171Y
11749	462	177Et
11750	462	180E
11751	462	183P
11752	462	186K
11753	462	193Pi
11754	462	199A
11755	463	9Y
11756	463	11Sv
11757	463	14R
11758	463	16Gr
11759	463	41A
11760	463	45Ee
11761	463	56G
11762	463	59Y
11763	463	62Rn
11764	463	66qIy
11765	463	70aQa
11766	463	74D
11767	463	76Es
11768	463	80rNLrg
11769	463	90A
11770	463	105P
11771	463	107G
11772	463	127N
11773	463	131R
11774	463	138T
11775	463	142I
11776	463	144tQr
11777	463	147W
11778	463	150aARe
11779	463	156R
11780	463	158A
11781	463	163L
11782	463	166Es
11783	463	171Y
11784	463	177Dk
11785	463	180E
11786	463	183P
11787	463	186K
11788	463	193Pi
11789	463	199A
11790	464	9Y
11791	464	11Sv
11792	464	14R
11793	464	16Gr
11794	464	41A
11795	464	45Ee
11796	464	56G
11797	464	59Y
11798	464	62Rn
11799	464	66qIy
11800	464	70aQa
11801	464	74D
11802	464	76Es
11803	464	80rNLrg
11804	464	90A
11805	464	105P
11806	464	107G
11807	464	127N
11808	464	131R
11809	464	138nT
11810	464	142I
11811	464	144tQr
11812	464	147W
11813	464	150aARe
11814	464	156R
11815	464	158A
11816	464	163E
11817	464	166Ew
11818	464	171Y
11819	464	177Dk
11820	464	180E
11821	464	183P
11822	464	186K
11823	464	193Pi
11824	464	199A
11825	465	9Y
11826	465	11Sv
11827	465	14R
11828	465	16Gr
11829	465	41A
11830	465	45Ee
11831	465	56G
11832	465	59Y
11833	465	62Rn
11834	465	66qIy
11835	465	70aQa
11836	465	74D
11837	465	76Es
11838	465	80rNLrg
11839	465	90A
11840	465	105P
11841	465	107G
11842	465	127N
11843	465	131R
11844	465	138T
11845	465	142I
11846	465	144tQr
11847	465	147W
11848	465	150aARe
11849	465	156R
11850	465	158A
11851	465	163E
11852	465	166Ew
11853	465	171Y
11854	465	177Dk
11855	465	180E
11856	465	183P
11857	465	186K
11858	465	193Pi
11859	465	199A
11860	466	9Y
11861	466	11Sv
11862	466	14R
11863	466	16Gr
11864	466	41A
11865	466	45Ee
11866	466	56G
11867	466	59Y
11868	466	62Rn
11869	466	66qIy
11870	466	70aQa
11871	466	74D
11872	466	76Es
11873	466	80rNLrg
11874	466	90A
11875	466	105P
11876	466	107G
11877	466	127N
11878	466	131R
11879	466	138T
11880	466	142I
11881	466	144tQr
11882	466	147W
11883	466	150aARe
11884	466	156R
11885	466	158A
11886	466	163E
11887	466	166Ew
11888	466	171Y
11889	466	177Dk
11890	466	180E
11891	466	183P
11892	466	186K
11893	466	193Pi
11894	466	199A
11895	467	9D
11896	467	11Am
11897	467	14R
11898	467	16Gr
11899	467	41A
11900	467	45Ee
11901	467	56G
11902	467	59Y
11903	467	62Rn
11904	467	66qIf
11905	467	70tNt
11906	467	74D
11907	467	76Es
11908	467	80rNLrg
11909	467	90A
11910	467	105P
11911	467	107G
11912	467	127N
11913	467	131R
11914	467	138T
11915	467	142I
11916	467	144tQr
11917	467	147W
11918	467	150aArv
11919	467	156D
11920	467	158A
11921	467	163T
11922	467	166Ew
11923	467	171Y
11924	467	177Dt
11925	467	180E
11926	467	183P
11927	467	186K
11928	467	193Pi
11929	467	199A
11930	467	207G
11931	467	211A
11932	467	219R
11933	467	246A
11934	467	248V
11935	467	253E
11936	467	261V
11937	467	267P
11938	467	269P
11939	467	273R
11940	467	275E
11941	467	282Vp
11942	467	285V
11943	468	9D
11944	468	11Am
11945	468	14R
11946	468	16Gr
11947	468	41A
11948	468	45Ee
11949	468	56G
11950	468	59Y
11951	468	62Rn
11952	468	66qIf
11953	468	70tNt
11954	468	74D
11955	468	76En
11956	468	80rTAlr
11957	468	90A
11958	468	105P
11959	468	107G
11960	468	127N
11961	468	131R
11962	468	138T
11963	468	142I
11964	468	144tQr
11965	468	147W
11966	468	150aArv
11967	468	156D
11968	468	158A
11969	468	163T
11970	468	166Ew
11971	468	171Y
11972	468	177Dt
11973	468	180E
11974	468	183P
11975	468	186K
11976	468	193Pi
11977	468	199A
11978	468	207G
11979	468	211A
11980	468	219R
11981	468	246A
11982	468	248V
11983	468	253E
11984	468	261V
11985	468	267P
11986	468	269P
11987	468	273R
11988	468	275E
11989	468	282Vp
11990	468	285V
11991	469	9D
11992	469	11Am
11993	469	14R
11994	469	16Gr
11995	469	41A
11996	469	45Ee
11997	469	56G
11998	469	59Y
11999	469	62Rn
12000	469	66qIf
12001	469	70tNt
12002	469	74Y
12003	469	76En
12004	469	80rIAlr
12005	469	90A
12006	469	105P
12007	469	107G
12008	469	127N
12009	469	131R
12010	469	138T
12011	469	142I
12012	469	144tQr
12013	469	147W
12014	469	150aArv
12015	469	156D
12016	469	158A
12017	469	163T
12018	469	166Ew
12019	469	171Y
12020	469	177Dt
12021	469	180E
12022	470	9D
12023	470	11Am
12024	470	14R
12025	470	16Gr
12026	470	41A
12027	470	45Ee
12028	470	56G
12029	470	59Y
12030	470	62Rn
12031	470	66qIs
12032	470	70tNt
12033	470	74D
12034	470	76Es
12035	470	80rNLrg
12036	470	90A
12037	470	105P
12038	470	107G
12039	470	127N
12040	470	131R
12041	470	138T
12042	470	142I
12043	470	144tQr
12044	470	147W
12045	470	150aArv
12046	470	156D
12047	470	158A
12048	470	163T
12049	470	166Ew
12050	470	171Y
12051	470	177Dt
12052	470	180E
12053	471	9D
12054	471	11Am
12055	471	14R
12056	471	16Gr
12057	471	41A
12058	471	45Ee
12059	471	56G
12060	471	59Y
12061	471	62Rn
12062	471	66qTf
12063	471	70tNt
12064	471	74D
12065	471	76Es
12066	471	80rNLrg
12067	471	90A
12068	471	105P
12069	471	107G
12070	471	127N
12071	471	131R
12072	471	138T
12073	471	142I
12074	471	144tQr
12075	471	147W
12076	471	150aArv
12077	471	156D
12078	471	158A
12079	471	163T
12080	471	166Ew
12081	471	171Y
12082	471	177Dt
12083	471	180E
12084	472	9D
12085	472	11Am
12086	472	14R
12087	472	16Gr
12088	472	41A
12089	472	45Ee
12090	472	56G
12091	472	59Y
12092	472	62Rn
12093	472	66qIf
12094	472	70tNt
12095	472	74D
12096	472	76En
12097	472	80rNLrg
12098	472	90A
12099	472	105P
12100	472	107G
12101	472	127N
12102	472	131R
12103	472	138T
12104	472	142I
12105	472	144tQr
12106	472	147W
12107	472	150aAre
12108	472	156R
12109	472	158A
12110	472	163T
12111	472	166Ew
12112	472	171Y
12113	472	177Dt
12114	472	180E
12115	473	9D
12116	473	11Am
12117	473	14R
12118	473	16Gr
12119	473	41A
12120	473	45Ee
12121	473	56G
12122	473	59Y
12123	473	62Rn
12124	473	66qIf
12125	473	70tNt
12126	473	74D
12127	473	76Es
12128	473	80rNLrg
12129	473	90A
12130	473	105P
12131	473	107G
12132	473	127N
12133	473	131R
12134	473	138T
12135	473	142I
12136	473	144tQr
12137	473	147W
12138	473	150aArv
12139	473	156D
12140	473	158A
12141	473	163T
12142	473	166Ew
12143	473	171Y
12144	473	177Dt
12145	473	180E
12146	474	9D
12147	474	11Am
12148	474	14R
12149	474	16Gr
12150	474	41A
12151	474	45Ee
12152	474	56G
12153	474	59Y
12154	474	62Rn
12155	474	66qIf
12156	474	70tNt
12157	474	74D
12158	474	76Es
12159	474	80rNLrg
12160	474	90A
12161	474	105P
12162	474	107G
12163	474	127N
12164	474	131R
12165	474	138T
12166	474	142I
12167	474	144tQr
12168	474	147W
12169	474	150aArv
12170	474	156D
12171	474	158A
12172	474	163T
12173	474	166Ew
12174	474	171Y
12175	474	177Dt
12176	474	180E
12177	475	9D
12178	475	11Am
12179	475	14R
12180	475	16Gr
12181	475	41A
12182	475	45Ee
12183	475	56G
12184	475	59Y
12185	475	62Rd
12186	475	66qIf
12187	475	70tNt
12188	475	74D
12189	475	76Es
12190	475	80rNLrg
12191	475	90A
12192	475	105P
12193	475	107G
12194	475	127N
12195	475	131R
12196	475	138T
12197	475	142I
12198	475	144tQr
12199	475	147W
12200	475	150aArv
12201	475	156D
12202	475	158A
12203	475	163T
12204	475	166Ew
12205	475	171Y
12206	475	177Dt
12207	475	180E
12208	476	9D
12209	476	11Am
12210	476	14R
12211	476	16Gr
12212	476	41A
12213	476	45Ee
12214	476	56G
12215	476	59Y
12216	476	62Rn
12217	476	66qIf
12218	476	70tNt
12219	476	74D
12220	476	76Es
12221	476	80rNLrg
12222	476	90A
12223	476	105P
12224	476	107G
12225	476	127N
12226	476	131R
12227	476	138T
12228	476	142I
12229	476	144tQr
12230	476	147W
12231	476	150aArv
12232	476	156D
12233	476	158A
12234	476	163A
12235	476	166Ew
12236	476	171Y
12237	476	177Dt
12238	476	180E
12239	477	9D
12240	477	11Am
12241	477	14R
12242	477	16Gr
12243	477	41A
12244	477	45Ee
12245	477	56G
12246	477	59Y
12247	477	62Rn
12248	477	66qIf
12249	477	70tNt
12250	477	74D
12251	477	76Es
12252	477	80rNLrg
12253	477	90A
12254	477	105P
12255	477	107G
12256	477	127N
12257	477	131R
12258	477	138T
12259	477	142I
12260	477	144tQr
12261	477	147W
12262	477	150aArv
12263	477	156D
12264	477	158A
12265	477	163T
12266	477	166Ew
12267	477	171Y
12268	477	177Dt
12269	477	180E
12270	478	9D
12271	478	11Am
12272	478	14R
12273	478	16Gr
12274	478	41T
12275	478	45Ma
12276	478	56G
12277	478	59Y
12278	478	62Re
12279	478	66qIs
12280	478	70tNt
12281	478	74Y
12282	478	76En
12283	478	80rTAlr
12284	478	90A
12285	478	105P
12286	478	107G
12287	478	127N
12288	478	131S
12289	478	138T
12290	478	142I
12291	478	144tQl
12292	478	147W
12293	478	150aArv
12294	478	156L
12295	478	158A
12296	478	163E
12297	478	166Ew
12298	478	171Y
12299	478	177Et
12300	478	180Q
12301	478	183P
12302	478	186K
12303	478	193Pi
12304	478	199A
12305	478	207G
12306	478	211A
12307	478	219R
12308	478	246A
12309	478	248V
12310	478	253E
12311	478	261V
12312	478	267P
12313	478	269P
12314	478	273R
12315	478	275E
12316	478	282Vp
12317	478	285V
12318	479	9D
12319	479	11Am
12320	479	14R
12321	479	16Gr
12322	479	41T
12323	479	45Ma
12324	479	56G
12325	479	59Y
12326	479	62Re
12327	479	66qIs
12328	479	70tNt
12329	479	74Y
12330	479	76En
12331	479	80rTAlr
12332	479	90A
12333	479	105P
12334	479	107G
12335	479	127N
12336	479	131S
12337	479	138T
12338	479	142I
12339	479	144tQl
12340	479	147W
12341	479	150aArv
12342	479	156L
12343	479	158A
12344	479	163E
12345	479	166Ew
12346	479	171Y
12347	479	177Et
12348	479	180Q
12349	479	183P
12350	479	186K
12351	479	193Pi
12352	479	199A
12353	479	207G
12354	479	211A
12355	479	219R
12356	479	246A
12357	479	248V
12358	479	253E
12359	479	261V
12360	479	267P
12361	479	269P
12362	479	273R
12363	479	275E
12364	479	282Vp
12365	479	285V
12366	480	9D
12367	480	11Am
12368	480	14R
12369	480	16Gr
12370	480	41T
12371	480	45Ma
12372	480	56G
12373	480	59Y
12374	480	62Re
12375	480	66qIs
12376	480	70tNt
12377	480	74Y
12378	480	76En
12379	480	80rTAlr
12380	480	90A
12381	480	105P
12382	480	107G
12383	480	127N
12384	480	131S
12385	480	138T
12386	480	142I
12387	480	144tQr
12388	480	147W
12389	480	150aArv
12390	480	156L
12391	480	158A
12392	480	163L
12393	480	166Ew
12394	480	171Y
12395	480	177Et
12396	480	180Q
12397	480	183P
12398	480	186K
12399	480	193Pi
12400	480	199A
12401	480	207G
12402	480	211A
12403	480	219R
12404	480	246A
12405	480	248V
12406	480	253E
12407	480	261V
12408	480	267P
12409	480	269P
12410	480	273R
12411	480	275E
12412	480	282Vp
12413	480	285V
12414	481	9D
12415	481	11Am
12416	481	14R
12417	481	16Gr
12418	481	41T
12419	481	45Ma
12420	481	56G
12421	481	59Y
12422	481	62Re
12423	481	66qIs
12424	481	70tNt
12425	481	74Y
12426	481	76En
12427	481	80rTAlr
12428	481	90A
12429	481	105P
12430	481	107G
12431	481	127N
12432	481	131S
12433	481	138T
12434	481	142I
12435	481	144tQr
12436	481	147W
12437	481	150aArv
12438	481	156L
12439	481	158A
12440	481	163L
12441	481	166Ew
12442	481	171Y
12443	481	177Et
12444	481	180Q
12445	481	183P
12446	481	186K
12447	481	193Pi
12448	481	199A
12449	481	207G
12450	481	211A
12451	481	219R
12452	481	246A
12453	481	248V
12454	481	253E
12455	481	261V
12456	481	267P
12457	481	269P
12458	481	273R
12459	481	275E
12460	481	282Vp
12461	481	285V
12462	482	9D
12463	482	11Am
12464	482	14R
12465	482	16Gr
12466	482	41T
12467	482	45Ma
12468	482	56G
12469	482	59Y
12470	482	62Re
12471	482	66qIs
12472	482	70tNt
12473	482	74Y
12474	482	76En
12475	482	80rTAlr
12476	482	90A
12477	482	105P
12478	482	107G
12479	482	127N
12480	482	131S
12481	482	138T
12482	482	142I
12483	482	144tQl
12484	482	147W
12485	482	150aArv
12486	482	156L
12487	482	158A
12488	482	163L
12489	482	166Ew
12490	482	171Y
12491	482	177Et
12492	482	180Q
12493	483	9Y
12494	483	11Sv
12495	483	14R
12496	483	16Gr
12497	483	41A
12498	483	45Ee
12499	483	56G
12500	483	59Y
12501	483	62Rn
12502	483	66qIc
12503	483	70tNt
12504	483	74D
12505	483	76Es
12506	483	80rNLrg
12507	483	90A
12508	483	105P
12509	483	107G
12510	483	127N
12511	483	131S
12512	483	138T
12513	483	142I
12514	483	144tQr
12515	483	147W
12516	483	150aARe
12517	483	156L
12518	483	158A
12519	483	163T
12520	483	166Ew
12521	483	171H
12522	483	177Et
12523	483	180Q
12524	483	183P
12525	483	186K
12526	483	193Pi
12527	483	199A
12528	483	207G
12529	483	211A
12530	483	219R
12531	483	246A
12532	483	248V
12533	483	253E
12534	483	261V
12535	483	267P
12536	483	269P
12537	483	273R
12538	483	275E
12539	483	282Vp
12540	483	285V
12541	484	9Y
12542	484	11Av
12543	484	14R
12544	484	16Gr
12545	484	41A
12546	484	45Ee
12547	484	56G
12548	484	59Y
12549	484	62Rn
12550	484	66qIc
12551	484	70tNt
12552	484	74D
12553	484	76Es
12554	484	80rNLrg
12555	484	90A
12556	484	105P
12557	484	107G
12558	484	127N
12559	484	131S
12560	484	138T
12561	484	142I
12562	484	144tQr
12563	484	147W
12564	484	150aARe
12565	484	156L
12566	484	158A
12567	484	163T
12568	484	166Ew
12569	484	171H
12570	484	177Et
12571	484	180Q
12572	484	183P
12573	484	186K
12574	484	193Pi
12575	484	199A
12576	484	207G
12577	484	211A
12578	484	219R
12579	484	246A
12580	484	248V
12581	484	253E
12582	484	261V
12583	484	267P
12584	484	269P
12585	484	273R
12586	484	275E
12587	484	282Vp
12588	484	285V
12589	485	9Y
12590	485	11Av
12591	485	14R
12592	485	16Gr
12593	485	41A
12594	485	45Ee
12595	485	56G
12596	485	59Y
12597	485	62Rn
12598	485	66qIc
12599	485	70tNt
12600	485	74D
12601	485	76Es
12602	485	80rNLrg
12603	485	90A
12604	485	105P
12605	485	107G
12606	485	127N
12607	485	131S
12608	485	138T
12609	485	142I
12610	485	144tQr
12611	485	147W
12612	485	150aARe
12613	485	156R
12614	485	158A
12615	485	163R
12616	485	166Ew
12617	485	171H
12618	485	177Et
12619	485	180Q
12620	486	9Y
12621	486	11Av
12622	486	14R
12623	486	16Gr
12624	486	41A
12625	486	45Ee
12626	486	56G
12627	486	59Y
12628	486	62Rn
12629	486	66qNc
12630	486	70tNt
12631	486	74D
12632	486	76Es
12633	486	80rNLrg
12634	486	90A
12635	486	105P
12636	486	107G
12637	486	127N
12638	486	131S
12639	486	138T
12640	486	142I
12641	486	144tQr
12642	486	147W
12643	486	150aARe
12644	486	156L
12645	486	158A
12646	486	163T
12647	486	166Ew
12648	486	171H
12649	486	177Et
12650	486	180Q
12651	487	9Y
12652	487	11Av
12653	487	14R
12654	487	16Gr
12655	487	41A
12656	487	45Ee
12657	487	56G
12658	487	59Y
12659	487	62Rn
12660	487	66qIc
12661	487	70tNt
12662	487	74D
12663	487	76Es
12664	487	80rNLrg
12665	487	90A
12666	487	105P
12667	487	107G
12668	487	127N
12669	487	131S
12670	487	138T
12671	487	142I
12672	487	144tQr
12673	487	147W
12674	487	150aARe
12675	487	156L
12676	487	158A
12677	487	163T
12678	487	166Ew
12679	487	171H
12680	487	177Et
12681	487	180Q
12682	488	9Y
12683	488	11Av
12684	488	14R
12685	488	16Gr
12686	488	41A
12687	488	45Ee
12688	488	56G
12689	488	59Y
12690	488	62Rn
12691	488	66qIc
12692	488	70tNt
12693	488	74D
12694	488	76Es
12695	488	80rNLrg
12696	488	90A
12697	488	105P
12698	488	107G
12699	488	127N
12700	488	131S
12701	488	138T
12702	488	142I
12703	488	144tQr
12704	488	147W
12705	488	150aARe
12706	488	156L
12707	488	158A
12708	488	163T
12709	488	166Ew
12710	488	171H
12711	488	177Et
12712	488	180Q
12713	489	9Y
12714	489	11Am
12715	489	14R
12716	489	16Gr
12717	489	41A
12718	489	45Ma
12719	489	56G
12720	489	59Y
12721	489	62Re
12722	489	66qIs
12723	489	70tNt
12724	489	74Y
12725	489	76Es
12726	489	80rNLrg
12727	489	90A
12728	489	105P
12729	489	107G
12730	489	127N
12731	489	131S
12732	489	138T
12733	489	142I
12734	489	144tQr
12735	489	147W
12736	489	150aARe
12737	489	156W
12738	489	158A
12739	489	163L
12740	489	166Ew
12741	489	171Y
12742	489	177Et
12743	489	180Q
12744	489	183P
12745	489	186K
12746	489	193Pi
12747	489	199A
12748	489	207G
12749	489	211A
12750	489	219R
12751	489	246A
12752	489	248V
12753	489	253E
12754	489	261V
12755	489	267P
12756	489	269P
12757	489	273R
12758	489	275E
12759	489	282Ip
12760	489	285V
12761	490	9Y
12762	490	11Am
12763	490	14R
12764	490	16Gr
12765	490	41A
12766	490	45Ma
12767	490	56G
12768	490	59Y
12769	490	62Rn
12770	490	66qIs
12771	490	70tNt
12772	490	74Y
12773	490	76Es
12774	490	80rNLrg
12775	490	90A
12776	490	105P
12777	490	107G
12778	490	127N
12779	490	131S
12780	490	138T
12781	490	142I
12782	490	144tQr
12783	490	147W
12784	490	150aARe
12785	490	156L
12786	490	158A
12787	490	163L
12788	490	166Ew
12789	490	171Y
12790	490	177Et
12791	490	180Q
12792	490	183P
12793	490	186K
12794	490	193Pi
12795	490	199A
12796	490	207G
12797	490	211A
12798	490	219R
12799	490	246A
12800	490	248V
12801	490	253E
12802	490	261V
12803	490	267P
12804	490	269P
12805	490	273R
12806	490	275E
12807	490	282Ip
12808	490	285V
12809	491	9Y
12810	491	11Am
12811	491	14R
12812	491	16Gr
12813	491	41A
12814	491	45Ee
12815	491	56G
12816	491	59Y
12817	491	62Re
12818	491	66qIs
12819	491	70tNt
12820	491	74Y
12821	491	76Es
12822	491	80rNLrg
12823	491	90A
12824	491	105P
12825	491	107G
12826	491	127N
12827	491	131S
12828	491	138T
12829	491	142I
12830	491	144tQr
12831	491	147W
12832	491	150aARe
12833	491	156L
12834	491	158A
12835	491	163L
12836	491	166Ew
12837	491	171Y
12838	491	177Et
12839	491	180Q
12840	491	183P
12841	491	186K
12842	491	193Pi
12843	491	199A
12844	491	207G
12845	491	211A
12846	491	219R
12847	491	246A
12848	491	248V
12849	491	253E
12850	491	261V
12851	491	267P
12852	491	269P
12853	491	273R
12854	491	275E
12855	491	282Ip
12856	491	285V
12857	492	9Y
12858	492	11Am
12859	492	14R
12860	492	16Gr
12861	492	41A
12862	492	45Ma
12863	492	56G
12864	492	59Y
12865	492	62Re
12866	492	66qIs
12867	492	70tNt
12868	492	74Y
12869	492	76Es
12870	492	80rNLrg
12871	492	90A
12872	492	105P
12873	492	107G
12874	492	127N
12875	492	131S
12876	492	138T
12877	492	142I
12878	492	144tQr
12879	492	147W
12880	492	150aARe
12881	492	156W
12882	492	158A
12883	492	163L
12884	492	166Ew
12885	492	171Y
12886	492	177Et
12887	492	180Q
12888	492	183P
12889	492	186K
12890	492	193Pi
12891	492	199A
12892	492	207G
12893	492	211A
12894	492	219R
12895	492	246A
12896	492	248V
12897	492	253E
12898	492	261V
12899	492	267P
12900	492	269P
12901	492	273R
12902	492	275E
12903	492	282Ip
12904	492	285V
12905	493	9Y
12906	493	11Am
12907	493	14R
12908	493	16Gr
12909	493	41A
12910	493	45Ma
12911	493	56G
12912	493	59Y
12913	493	62Re
12914	493	66qIs
12915	493	70tNt
12916	493	74Y
12917	493	76Es
12918	493	80rNLrg
12919	493	90A
12920	493	105P
12921	493	107G
12922	493	127N
12923	493	131S
12924	493	138T
12925	493	142I
12926	493	144tQr
12927	493	147W
12928	493	150aARv
12929	493	156L
12930	493	158A
12931	493	163L
12932	493	166Ew
12933	493	171Y
12934	493	177Et
12935	493	180Q
12936	493	183P
12937	493	186K
12938	493	193Pi
12939	493	199A
12940	493	207G
12941	493	211A
12942	493	219R
12943	493	246A
12944	493	248V
12945	493	253E
12946	493	261V
12947	493	267P
12948	493	269P
12949	493	273R
12950	493	275E
12951	493	282Ip
12952	493	285V
12953	494	9Y
12954	494	11Am
12955	494	14R
12956	494	16Gr
12957	494	41A
12958	494	45Ma
12959	494	56G
12960	494	59Y
12961	494	62Re
12962	494	66qIs
12963	494	70tNt
12964	494	74Y
12965	494	76Es
12966	494	80rNLrg
12967	494	90A
12968	494	105P
12969	494	107G
12970	494	127N
12971	494	131S
12972	494	138T
12973	494	142I
12974	494	144tQr
12975	494	147W
12976	494	150aARe
12977	494	156L
12978	494	158A
12979	494	163L
12980	494	166Ew
12981	494	171Y
12982	494	177Et
12983	494	180Q
12984	494	183P
12985	494	186K
12986	494	193Pi
12987	494	199A
12988	494	207G
12989	494	211A
12990	494	219R
12991	494	246A
12992	494	248V
12993	494	253E
12994	494	261V
12995	494	267P
12996	494	269P
12997	494	273R
12998	494	275E
12999	494	282Ip
13000	494	285V
13001	495	9Y
13002	495	11Am
13003	495	14R
13004	495	16Gr
13005	495	41A
13006	495	45Ma
13007	495	56G
13008	495	59Y
13009	495	62Re
13010	495	66qIs
13011	495	70tNt
13012	495	74Y
13013	495	76Es
13014	495	80rNLrg
13015	495	90A
13016	495	105P
13017	495	107G
13018	495	127N
13019	495	131S
13020	495	138T
13021	495	142I
13022	495	144tQr
13023	495	147W
13024	495	150aARe
13025	495	156W
13026	495	158A
13027	495	163L
13028	495	166Ew
13029	495	171Y
13030	495	177Et
13031	495	180Q
13032	495	183P
13033	495	186K
13034	495	193Pi
13035	495	199A
13036	495	207G
13037	495	211A
13038	495	219R
13039	495	246A
13040	495	248V
13041	495	253E
13042	495	261V
13043	495	267P
13044	495	269P
13045	495	273R
13046	495	275E
13047	495	282Ip
13048	495	285V
13049	496	9Y
13050	496	11Am
13051	496	14R
13052	496	16Gr
13053	496	41A
13054	496	45Ma
13055	496	56G
13056	496	59Y
13057	496	62Rn
13058	496	66qIf
13059	496	70tNt
13060	496	74Y
13061	496	76Es
13062	496	80rNLrg
13063	496	90A
13064	496	105P
13065	496	107G
13066	496	127N
13067	496	131S
13068	496	138T
13069	496	142I
13070	496	144tQr
13071	496	147W
13072	496	150aARe
13073	496	156W
13074	496	158A
13075	496	163L
13076	496	166Ew
13077	496	171Y
13078	496	177Et
13079	496	180Q
13080	496	183P
13081	496	186K
13082	496	193Pi
13083	496	199A
13084	496	207G
13085	496	211A
13086	496	219R
13087	496	246A
13088	496	248V
13089	496	253E
13090	496	261V
13091	496	267P
13092	496	269P
13093	496	273R
13094	496	275E
13095	496	282Ip
13096	496	285V
13097	497	9Y
13098	497	11Am
13099	497	14R
13100	497	16Gr
13101	497	41A
13102	497	45Ee
13103	497	56G
13104	497	59Y
13105	497	62Rn
13106	497	66qIc
13107	497	70tNt
13108	497	74Y
13109	497	76Es
13110	497	80rNLrg
13111	497	90A
13112	497	105P
13113	497	107G
13114	497	127N
13115	497	131S
13116	497	138T
13117	497	142I
13118	497	144tQr
13119	497	147W
13120	497	150aARe
13121	497	156L
13122	497	158A
13123	497	163L
13124	497	166Ew
13125	497	171Y
13126	497	177Et
13127	497	180Q
13128	497	183P
13129	497	186K
13130	497	193Pi
13131	497	199A
13132	497	207G
13133	497	211A
13134	497	219R
13135	497	246A
13136	497	248V
13137	497	253E
13138	497	261V
13139	497	267P
13140	497	269P
13141	497	273R
13142	497	275E
13143	497	282Ip
13144	497	285V
13145	498	9Y
13146	498	11Am
13147	498	14R
13148	498	16Gr
13149	498	41A
13150	498	45Ee
13151	498	56G
13152	498	59Y
13153	498	62Rn
13154	498	66qIc
13155	498	70tNt
13156	498	74Y
13157	498	76Es
13158	498	80rNLrg
13159	498	90A
13160	498	105P
13161	498	107G
13162	498	127N
13163	498	131S
13164	498	138T
13165	498	142I
13166	498	144tQr
13167	498	147W
13168	498	150aARe
13169	498	156L
13170	498	158A
13171	498	163L
13172	498	166Ew
13173	498	171Y
13174	498	177Et
13175	498	180Q
13176	498	183P
13177	498	186K
13178	498	193Pi
13179	498	199A
13180	498	207G
13181	498	211A
13182	498	219R
13183	498	246A
13184	498	248V
13185	498	253E
13186	498	261V
13187	498	267P
13188	498	269P
13189	498	273R
13190	498	275E
13191	498	282Ip
13192	498	285V
13193	499	9Y
13194	499	11Am
13195	499	14R
13196	499	16Gr
13197	499	41A
13198	499	45Ma
13199	499	56G
13200	499	59Y
13201	499	62Rn
13202	499	66qIy
13203	499	70tNt
13204	499	74Y
13205	499	76Es
13206	499	80rNLrg
13207	499	90A
13208	499	105P
13209	499	107G
13210	499	127N
13211	499	131S
13212	499	138T
13213	499	142I
13214	499	144tQr
13215	499	147W
13216	499	150aARe
13217	499	156W
13218	499	158A
13219	499	163L
13220	499	166Ew
13221	499	171Y
13222	499	177Et
13223	499	180Q
13224	499	183P
13225	499	186K
13226	499	193Pi
13227	499	199A
13228	499	207G
13229	499	211A
13230	499	219R
13231	499	246A
13232	499	248V
13233	499	253E
13234	499	261V
13235	499	267P
13236	499	269P
13237	499	273R
13238	499	275E
13239	499	282Ip
13240	499	285V
13241	500	9Y
13242	500	11Am
13243	500	14R
13244	500	16Gr
13245	500	41A
13246	500	45Ma
13247	500	56G
13248	500	59Y
13249	500	62Re
13250	500	66qIs
13251	500	70tNt
13252	500	74Y
13253	500	76Es
13254	500	80rNLrg
13255	500	90A
13256	500	105P
13257	500	107G
13258	500	127N
13259	500	131S
13260	500	138T
13261	500	142I
13262	500	144tQr
13263	500	147W
13264	500	150aARe
13265	500	156W
13266	500	158A
13267	500	163L
13268	500	166Dg
13269	500	171Y
13270	500	177Et
13271	500	180Q
13272	500	183P
13273	500	186K
13274	500	193Pi
13275	500	199A
13276	500	207G
13277	500	211A
13278	500	219R
13279	500	246A
13280	500	248V
13281	500	253E
13282	500	261V
13283	500	267P
13284	500	269P
13285	500	273R
13286	500	275E
13287	500	282Ip
13288	500	285V
13289	501	9Y
13290	501	11Am
13291	501	14R
13292	501	16Gr
13293	501	41A
13294	501	45Ma
13295	501	56G
13296	501	59Y
13297	501	62Rn
13298	501	66qIs
13299	501	70tNt
13300	501	74Y
13301	501	76En
13302	501	80rIAlr
13303	501	90A
13304	501	105P
13305	501	107G
13306	501	127N
13307	501	131S
13308	501	138T
13309	501	142I
13310	501	144tQr
13311	501	147W
13312	501	150aARe
13313	501	156L
13314	501	158A
13315	501	163L
13316	501	166Ew
13317	501	171Y
13318	501	177Et
13319	501	180Q
13320	501	183P
13321	501	186K
13322	501	193Pi
13323	501	199A
13324	501	207G
13325	501	211A
13326	501	219R
13327	501	246A
13328	501	248V
13329	501	253E
13330	501	261V
13331	501	267P
13332	501	269P
13333	501	273R
13334	501	275E
13335	501	282Ip
13336	501	285V
13337	502	9Y
13338	502	11Am
13339	502	14R
13340	502	16Gr
13341	502	41A
13342	502	45Ma
13343	502	56G
13344	502	59Y
13345	502	62Re
13346	502	66qIs
13347	502	70tNt
13348	502	74Y
13349	502	76Es
13350	502	80rNLrg
13351	502	90A
13352	502	105P
13353	502	107G
13354	502	127N
13355	502	131S
13356	502	138T
13357	502	142I
13358	502	144tQr
13359	502	147W
13360	502	150aARe
13361	502	156W
13362	502	158A
13363	502	163L
13364	502	166Ew
13365	502	171Y
13366	502	177Et
13367	502	180Q
13368	502	183P
13369	502	186K
13370	502	193Pi
13371	502	199A
13372	502	207G
13373	502	211A
13374	502	219R
13375	502	246A
13376	502	248V
13377	502	253E
13378	502	261V
13379	502	267P
13380	502	269P
13381	502	273R
13382	502	275E
13383	502	282Ip
13384	502	285V
13385	503	9Y
13386	503	11Am
13387	503	14R
13388	503	16Gr
13389	503	41A
13390	503	45Ma
13391	503	56G
13392	503	59Y
13393	503	62Rn
13394	503	66qIs
13395	503	70tNt
13396	503	74Y
13397	503	76Es
13398	503	80rNLrg
13399	503	90A
13400	503	105P
13401	503	107G
13402	503	127N
13403	503	131S
13404	503	138T
13405	503	142I
13406	503	144tQr
13407	503	147W
13408	503	150aARe
13409	503	156W
13410	503	158A
13411	503	163L
13412	503	166Ew
13413	503	171Y
13414	503	177Et
13415	503	180Q
13416	503	183P
13417	503	186K
13418	503	193Pi
13419	503	199A
13420	503	207G
13421	503	211A
13422	503	219R
13423	503	246A
13424	503	248V
13425	503	253E
13426	503	261V
13427	503	267P
13428	503	269P
13429	503	273R
13430	503	275E
13431	503	282Ip
13432	503	285V
13433	504	9Y
13434	504	11Am
13435	504	14R
13436	504	16Gr
13437	504	41A
13438	504	45Ma
13439	504	56G
13440	504	59Y
13441	504	62Re
13442	504	66rNm
13443	504	70aSa
13444	504	74Y
13445	504	76En
13446	504	80rIAlr
13447	504	90A
13448	504	105P
13449	504	107G
13450	504	127N
13451	504	131S
13452	504	138T
13453	504	142I
13454	504	144tQr
13455	504	147W
13456	504	150aARe
13457	504	156L
13458	504	158A
13459	504	163L
13460	504	166Ew
13461	504	171Y
13462	504	177Et
13463	504	180Q
13464	504	183P
13465	504	186K
13466	504	193Pi
13467	504	199A
13468	504	207G
13469	504	211A
13470	504	219R
13471	504	246A
13472	504	248V
13473	504	253E
13474	504	261V
13475	504	267P
13476	504	269P
13477	504	273R
13478	504	275E
13479	504	282Ip
13480	504	285V
13481	505	9Y
13482	505	11Am
13483	505	14R
13484	505	16Gr
13485	505	41A
13486	505	45Ma
13487	505	56G
13488	505	59Y
13489	505	62Re
13490	505	66rNm
13491	505	70aSa
13492	505	74Y
13493	505	76En
13494	505	80rIAlr
13495	505	90A
13496	505	105P
13497	505	107G
13498	505	127N
13499	505	131S
13500	505	138T
13501	505	142I
13502	505	144tQr
13503	505	147W
13504	505	150aARe
13505	505	156L
13506	505	158A
13507	505	163L
13508	505	166Ew
13509	505	171Y
13510	505	177Et
13511	505	180Q
13512	505	183P
13513	505	186K
13514	505	193Pi
13515	505	199A
13516	505	207G
13517	505	211A
13518	505	219R
13519	505	246A
13520	505	248V
13521	505	253E
13522	505	261V
13523	505	267P
13524	505	269P
13525	505	273R
13526	505	275E
13527	505	282Ip
13528	505	285V
13529	506	9Y
13530	506	11Am
13531	506	14R
13532	506	16Gr
13533	506	41A
13534	506	45Ee
13535	506	56G
13536	506	59Y
13537	506	62Rn
13538	506	66qIc
13539	506	70tNt
13540	506	74Y
13541	506	76Es
13542	506	80rNLrg
13543	506	90A
13544	506	105P
13545	506	107G
13546	506	127N
13547	506	131S
13548	506	138T
13549	506	142I
13550	506	144tQr
13551	506	147W
13552	506	150aARe
13553	506	156L
13554	506	158A
13555	506	163L
13556	506	166Ew
13557	506	171Y
13558	506	177Et
13559	506	180Q
13560	506	183P
13561	506	186K
13562	506	193Pi
13563	506	199A
13564	506	207G
13565	506	211A
13566	506	219R
13567	506	246A
13568	506	248Vl
13569	506	253E
13570	506	261V
13571	506	267P
13572	506	269P
13573	506	273R
13574	506	275E
13575	506	282Ip
13576	506	285V
13577	507	9Y
13578	507	11Am
13579	507	14R
13580	507	16Gr
13581	507	41A
13582	507	45Ma
13583	507	56G
13584	507	59Y
13585	507	62Re
13586	507	66qIs
13587	507	70tNt
13588	507	74Y
13589	507	76Es
13590	507	80rNLrg
13591	507	90A
13592	507	105P
13593	507	107G
13594	507	127N
13595	507	131S
13596	507	138T
13597	507	142I
13598	507	144tQr
13599	507	147W
13600	507	150aARe
13601	507	156W
13602	507	158A
13603	507	163L
13604	507	166Dg
13605	507	171Y
13606	507	177Et
13607	507	180Q
13608	507	183P
13609	507	186K
13610	507	193Pi
13611	507	199A
13612	507	207G
13613	507	211A
13614	507	219R
13615	507	246A
13616	507	248V
13617	507	253E
13618	507	261V
13619	507	267P
13620	507	269P
13621	507	273R
13622	507	275E
13623	507	282Ip
13624	507	285V
13625	508	9Y
13626	508	11Am
13627	508	14R
13628	508	16Gr
13629	508	41A
13630	508	45Ma
13631	508	56G
13632	508	59Y
13633	508	62Re
13634	508	66qIs
13635	508	70tNt
13636	508	74Y
13637	508	76Es
13638	508	80rNLrg
13639	508	90A
13640	508	105P
13641	508	107G
13642	508	127N
13643	508	131S
13644	508	138T
13645	508	142I
13646	508	144tQr
13647	508	147W
13648	508	150aARv
13649	508	156L
13650	508	158A
13651	508	163L
13652	508	166Ew
13653	508	171Y
13654	508	177Et
13655	508	180Q
13656	508	183P
13657	508	186K
13658	508	193Pv
13659	508	199A
13660	508	207G
13661	508	211A
13662	508	219R
13663	508	246A
13664	508	248V
13665	508	253E
13666	508	261V
13667	508	267P
13668	508	269P
13669	508	273R
13670	508	275E
13671	508	282Ip
13672	508	285V
13673	509	9Y
13674	509	11Am
13675	509	14R
13676	509	16Gr
13677	509	41A
13678	509	45Ma
13679	509	56G
13680	509	59Y
13681	509	62Rn
13682	509	66qIc
13683	509	70tNt
13684	509	74Y
13685	509	76Es
13686	509	80rNLrg
13687	509	90A
13688	509	105P
13689	509	107G
13690	509	127N
13691	509	131S
13692	509	138T
13693	509	142I
13694	509	144tQr
13695	509	147W
13696	509	150aARe
13697	509	156L
13698	509	158A
13699	509	163L
13700	509	166Ew
13701	509	171Y
13702	509	177Et
13703	509	180Q
13704	509	183P
13705	509	186K
13706	509	193Pi
13707	509	199A
13708	509	207G
13709	509	211A
13710	509	219R
13711	509	246A
13712	509	248V
13713	509	253E
13714	509	261V
13715	509	267P
13716	509	269P
13717	509	273R
13718	509	275E
13719	509	282Ip
13720	509	285V
13721	510	9Y
13722	510	11Am
13723	510	14R
13724	510	16Gr
13725	510	41A
13726	510	45Te
13727	510	56G
13728	510	59Y
13729	510	62Rn
13730	510	66qIf
13731	510	70tNt
13732	510	74Y
13733	510	76Es
13734	510	80rNLrg
13735	510	90A
13736	510	105P
13737	510	107G
13738	510	127N
13739	510	131S
13740	510	138T
13741	510	142I
13742	510	144tQr
13743	510	147W
13744	510	150aARe
13745	510	156W
13746	510	158A
13747	510	163L
13748	510	166Ew
13749	510	171Y
13750	510	177Et
13751	510	180Q
13752	510	183P
13753	510	186K
13754	510	193Pi
13755	510	199A
13756	510	207G
13757	510	211A
13758	510	219R
13759	510	246A
13760	510	248V
13761	510	253E
13762	510	261V
13763	510	267P
13764	510	269P
13765	510	273R
13766	510	275E
13767	510	282Ip
13768	510	285V
13769	511	9Y
13770	511	11Am
13771	511	14R
13772	511	16Gr
13773	511	41A
13774	511	45Ee
13775	511	56G
13776	511	59Y
13777	511	62Rn
13778	511	66qIc
13779	511	70tNt
13780	511	74Y
13781	511	76En
13782	511	80rIAlr
13783	511	90A
13784	511	105P
13785	511	107G
13786	511	127N
13787	511	131S
13788	511	138T
13789	511	142I
13790	511	144tQr
13791	511	147W
13792	511	150aARe
13793	511	156L
13794	511	158A
13795	511	163L
13796	511	166Ew
13797	511	171Y
13798	511	177Et
13799	511	180Q
13800	511	183P
13801	511	186K
13802	511	193Pi
13803	511	199A
13804	511	207G
13805	511	211A
13806	511	219R
13807	511	246A
13808	511	248V
13809	511	253E
13810	511	261V
13811	511	267P
13812	511	269P
13813	511	273R
13814	511	275E
13815	511	282Ip
13816	511	285V
13817	512	9Y
13818	512	11Am
13819	512	14R
13820	512	16Gr
13821	512	41A
13822	512	45Ma
13823	512	56G
13824	512	59Y
13825	512	62Re
13826	512	66qIs
13827	512	70tNt
13828	512	74Y
13829	512	76En
13830	512	80rIAlr
13831	512	90A
13832	512	105P
13833	512	107G
13834	512	127N
13835	512	131S
13836	512	138T
13837	512	142I
13838	512	144tQr
13839	512	147W
13840	512	150aARe
13841	512	156W
13842	512	158A
13843	512	163L
13844	512	166Ew
13845	512	171Y
13846	512	177Et
13847	512	180Q
13848	513	9Y
13849	513	11Am
13850	513	14R
13851	513	16Gr
13852	513	41A
13853	513	45Ma
13854	513	56G
13855	513	59Y
13856	513	62Re
13857	513	66qIs
13858	513	70tNt
13859	513	74Y
13860	513	76Es
13861	513	80rNLrg
13862	513	90A
13863	513	105P
13864	513	107G
13865	513	127N
13866	513	131S
13867	513	138T
13868	513	142I
13869	513	144tQr
13870	513	147W
13871	513	150aARe
13872	513	156L
13873	513	158A
13874	513	163L
13875	513	166Ew
13876	513	171Y
13877	513	177Et
13878	513	180Q
13879	513	183P
13880	513	186K
13881	513	193Pi
13882	513	199A
13883	513	207G
13884	513	211A
13885	513	219R
13886	513	246A
13887	513	248V
13888	513	253E
13889	513	261V
13890	513	267P
13891	513	269P
13892	513	273R
13893	513	275E
13894	513	282Ip
13895	513	285V
13896	514	9Y
13897	514	11Am
13898	514	14R
13899	514	16Gr
13900	514	41A
13901	514	45Ma
13902	514	56G
13903	514	59Y
13904	514	62Re
13905	514	66qIs
13906	514	70tNt
13907	514	74Y
13908	514	76Es
13909	514	80rNLrg
13910	514	90A
13911	514	105P
13912	514	107G
13913	514	127N
13914	514	131S
13915	514	138T
13916	514	142I
13917	514	144tQr
13918	514	147W
13919	514	150aARe
13920	514	156W
13921	514	158A
13922	514	163L
13923	514	166Ew
13924	514	171Y
13925	514	177Et
13926	514	180Q
13927	515	9Y
13928	515	11Am
13929	515	14R
13930	515	16Gr
13931	515	41A
13932	515	45Ma
13933	515	56G
13934	515	59Y
13935	515	62Rei
13936	515	66qIs
13937	515	70tNt
13938	515	74Y
13939	515	76Es
13940	515	80rNLrg
13941	515	90A
13942	515	105P
13943	515	107G
13944	515	127N
13945	515	131S
13946	515	138T
13947	515	142I
13948	515	144tQr
13949	515	147W
13950	515	150aARe
13951	515	156W
13952	515	158A
13953	515	163L
13954	515	166Ew
13955	515	171Y
13956	515	177Et
13957	515	180Q
13958	515	183P
13959	515	186K
13960	515	193Pi
13961	515	199A
13962	515	207G
13963	515	211A
13964	515	219R
13965	515	246A
13966	515	248V
13967	515	253E
13968	515	261V
13969	515	267P
13970	515	269P
13971	515	273R
13972	515	275E
13973	515	282Ip
13974	515	285V
13975	516	9Y
13976	516	11Am
13977	516	14R
13978	516	16Gr
13979	516	41A
13980	516	45Ee
13981	516	56G
13982	516	59Y
13983	516	62Rn
13984	516	66qIf
13985	516	70tNt
13986	516	74Y
13987	516	76Es
13988	516	80rNLrg
13989	516	90A
13990	516	105P
13991	516	107G
13992	516	127N
13993	516	131S
13994	516	138T
13995	516	142I
13996	516	144tQr
13997	516	147W
13998	516	150aARe
13999	516	156L
14000	516	158A
14001	516	163L
14002	516	166Ew
14003	516	171Y
14004	516	177Et
14005	516	180Q
14006	516	183P
14007	516	186K
14008	516	193Pi
14009	516	199A
14010	516	207G
14011	516	211A
14012	516	219R
14013	516	246A
14014	516	248V
14015	516	253E
14016	516	261V
14017	516	267P
14018	516	269P
14019	516	273R
14020	516	275E
14021	516	282Ip
14022	516	285V
14023	517	9Y
14024	517	11Am
14025	517	14R
14026	517	16Gr
14027	517	41A
14028	517	45Ma
14029	517	56G
14030	517	59Y
14031	517	62Re
14032	517	66qIs
14033	517	70tNt
14034	517	74Y
14035	517	76Es
14036	517	80rNLrg
14037	517	90A
14038	517	105P
14039	517	107G
14040	517	127N
14041	517	131S
14042	517	138T
14043	517	142I
14044	517	144tQr
14045	517	147W
14046	517	150aARe
14047	517	156W
14048	517	158A
14049	517	163L
14050	517	166Ew
14051	517	171Y
14052	517	177Et
14053	517	180Q
14054	518	9Y
14055	518	11Am
14056	518	14R
14057	518	16Gr
14058	518	41A
14059	518	45Ma
14060	518	56G
14061	518	59Y
14062	518	62Rn
14063	518	66qIs
14064	518	70tNt
14065	518	74Y
14066	518	76Es
14067	518	80rNLrg
14068	518	90A
14069	518	105P
14070	518	107G
14071	518	127N
14072	518	131S
14073	518	138T
14074	518	142I
14075	518	144tQr
14076	518	147W
14077	518	150aARv
14078	518	156L
14079	518	158A
14080	518	163L
14081	518	166Ew
14082	518	171Y
14083	518	177Et
14084	518	180Q
14085	519	9Y
14086	519	11Am
14087	519	14R
14088	519	16Gr
14089	519	41A
14090	519	45Ma
14091	519	56G
14092	519	59Y
14093	519	62Re
14094	519	66qIs
14095	519	70tNt
14096	519	74Y
14097	519	76Es
14098	519	80rNLrg
14099	519	90A
14100	519	105P
14101	519	107G
14102	519	127N
14103	519	131S
14104	519	138T
14105	519	142I
14106	519	144tQr
14107	519	147W
14108	519	150aARe
14109	519	156W
14110	519	158A
14111	519	163L
14112	519	166Ew
14113	519	171Y
14114	519	177Et
14115	519	180Q
14116	520	9Y
14117	520	11Am
14118	520	14R
14119	520	16Gr
14120	520	41A
14121	520	45Ma
14122	520	56G
14123	520	59Y
14124	520	62Re
14125	520	66qIs
14126	520	70tNt
14127	520	74Y
14128	520	76Es
14129	520	80rNLrg
14130	520	90A
14131	520	105P
14132	520	107G
14133	520	127N
14134	520	131R
14135	520	138K
14136	520	142I
14137	520	144tQr
14138	520	147W
14139	520	150aARe
14140	520	156W
14141	520	158A
14142	520	163L
14143	520	166Ew
14144	520	171Y
14145	520	177Et
14146	520	180Q
14147	521	9Y
14148	521	11Am
14149	521	14R
14150	521	16Gr
14151	521	41A
14152	521	45Ma
14153	521	56G
14154	521	59Y
14155	521	62Re
14156	521	66qIs
14157	521	70tNt
14158	521	74Y
14159	521	76Es
14160	521	80rNLrg
14161	521	90A
14162	521	105P
14163	521	107G
14164	521	127N
14165	521	131S
14166	521	138T
14167	521	142I
14168	521	144tQr
14169	521	147W
14170	521	150aARe
14171	521	156W
14172	521	158A
14173	521	163L
14174	521	166Ew
14175	521	171Y
14176	521	177Et
14177	521	180Q
14178	522	9Y
14179	522	11Am
14180	522	14R
14181	522	16Gr
14182	522	41A
14183	522	45Ma
14184	522	56G
14185	522	59Y
14186	522	62Re
14187	522	66qIs
14188	522	70tNt
14189	522	74Y
14190	522	76Es
14191	522	80rNLrg
14192	522	90A
14193	522	105P
14194	522	107G
14195	522	127N
14196	522	131S
14197	522	138T
14198	522	142I
14199	522	144tQr
14200	522	147W
14201	522	150aARe
14202	522	156W
14203	522	158A
14204	522	163L
14205	522	166Ew
14206	522	171Y
14207	522	177Et
14208	522	180Q
14209	523	9Y
14210	523	11Am
14211	523	14R
14212	523	16Gr
14213	523	41A
14214	523	45Ma
14215	523	56G
14216	523	59Y
14217	523	62Re
14218	523	66qIs
14219	523	70tNt
14220	523	74Y
14221	523	76En
14222	523	80rTAlr
14223	523	90A
14224	523	105P
14225	523	107G
14226	523	127N
14227	523	131S
14228	523	138T
14229	523	142I
14230	523	144tQr
14231	523	147W
14232	523	150aARe
14233	523	156L
14234	523	158A
14235	523	163L
14236	523	166Ew
14237	523	171Y
14238	523	177Et
14239	523	180Q
14240	524	9Y
14241	524	11Am
14242	524	14R
14243	524	16Gr
14244	524	41A
14245	524	45Ee
14246	524	56G
14247	524	59Y
14248	524	62Rn
14249	524	66qIc
14250	524	70tNt
14251	524	74Y
14252	524	76Es
14253	524	80rNLrg
14254	524	90A
14255	524	105P
14256	524	107G
14257	524	127N
14258	524	131S
14259	524	138T
14260	524	142I
14261	524	144tQr
14262	524	147W
14263	524	150aARe
14264	524	156L
14265	524	158A
14266	524	163L
14267	524	166Ew
14268	524	171H
14269	524	177Et
14270	524	180Q
14271	525	9Y
14272	525	11Am
14273	525	14R
14274	525	16Gr
14275	525	41A
14276	525	45Ma
14277	525	56G
14278	525	59Y
14279	525	62Re
14280	525	66qIs
14281	525	70tNt
14282	525	74Y
14283	525	76Es
14284	525	80rNLrg
14285	525	90A
14286	525	105P
14287	525	107G
14288	525	127N
14289	525	131S
14290	525	138T
14291	525	142I
14292	525	144tQr
14293	525	147W
14294	525	150aARe
14295	525	156W
14296	525	158A
14297	525	163L
14298	525	166Ew
14299	525	171H
14300	525	177Et
14301	525	180Q
14302	526	9Y
14303	526	11Am
14304	526	14R
14305	526	16Gr
14306	526	41A
14307	526	45Ma
14308	526	56G
14309	526	59Y
14310	526	62Re
14311	526	66qIs
14312	526	70tNt
14313	526	74Y
14314	526	76Es
14315	526	80rNLrg
14316	526	90A
14317	526	105P
14318	526	107G
14319	526	127N
14320	526	131S
14321	526	138T
14322	526	142I
14323	526	144tQr
14324	526	147W
14325	526	150aARe
14326	526	156L
14327	526	158A
14328	526	163L
14329	526	166Ew
14330	526	171Y
14331	526	177Et
14332	526	180Q
14333	527	9Y
14334	527	11Am
14335	527	14R
14336	527	16Gr
14337	527	41A
14338	527	45Ma
14339	527	56G
14340	527	59Y
14341	527	62Re
14342	527	66qIs
14343	527	70tNt
14344	527	74Y
14345	527	76Es
14346	527	80rNLrg
14347	527	90A
14348	527	105P
14349	527	107G
14350	527	127N
14351	527	131S
14352	527	138T
14353	527	142I
14354	527	144tQr
14355	527	147W
14356	527	150aARe
14357	527	156L
14358	527	158A
14359	527	163E
14360	527	166Ew
14361	527	171Y
14362	527	177Et
14363	527	180Q
14364	528	9Y
14365	528	11Am
14366	528	14R
14367	528	16Gr
14368	528	41A
14369	528	45Ma
14370	528	56G
14371	528	59Y
14372	528	62Re
14373	528	66qIs
14374	528	70tNt
14375	528	74Y
14376	528	76Es
14377	528	80rNLrg
14378	528	90A
14379	528	105P
14380	528	107G
14381	528	127N
14382	528	131S
14383	528	138T
14384	528	142I
14385	528	144tQr
14386	528	147W
14387	528	150aARe
14388	528	156L
14389	528	158A
14390	528	163T
14391	528	166Ew
14392	528	171Y
14393	528	177Et
14394	528	180Q
14395	529	9Y
14396	529	11Am
14397	529	14R
14398	529	16Gr
14399	529	41A
14400	529	45Ma
14401	529	56G
14402	529	59Y
14403	529	62Re
14404	529	66qIs
14405	529	70tNt
14406	529	74Y
14407	529	76Ed
14408	529	80rTLlr
14409	529	90A
14410	529	105P
14411	529	107G
14412	529	127N
14413	529	131S
14414	529	138T
14415	529	142I
14416	529	144tQr
14417	529	147W
14418	529	150aARe
14419	529	156W
14420	529	158A
14421	529	163L
14422	529	166Ew
14423	529	171Y
14424	529	177Et
14425	529	180Q
14426	530	9Y
14427	530	11Am
14428	530	14R
14429	530	16Gr
14430	530	41A
14431	530	45Ma
14432	530	56G
14433	530	59Y
14434	530	62Rn
14435	530	66qIc
14436	530	70tNt
14437	530	74Y
14438	530	76Es
14439	530	80rNLrg
14440	530	90A
14441	530	105P
14442	530	107G
14443	530	127N
14444	530	131S
14445	530	138T
14446	530	142I
14447	530	144tQr
14448	530	147W
14449	530	150aARe
14450	530	156L
14451	530	158A
14452	530	163T
14453	530	166Ew
14454	530	171Y
14455	530	177Et
14456	530	180Q
14457	531	9Y
14458	531	11Am
14459	531	14R
14460	531	16Gr
14461	531	41A
14462	531	45Ma
14463	531	56G
14464	531	59Y
14465	531	62Re
14466	531	66qIs
14467	531	70tNt
14468	531	74Y
14469	531	76Es
14470	531	80rNLrg
14471	531	90A
14472	531	105P
14473	531	107G
14474	531	127N
14475	531	131S
14476	531	138T
14477	531	142I
14478	531	144tQr
14479	531	147W
14480	531	150aARe
14481	531	156W
14482	531	158A
14483	531	163L
14484	531	166Ew
14485	531	171Y
14486	531	177Et
14487	531	180Q
14488	532	9Y
14489	532	11Am
14490	532	14R
14491	532	16Gr
14492	532	41T
14493	532	45Ke
14494	532	56G
14495	532	59Y
14496	532	62Re
14497	532	66qIs
14498	532	70tNt
14499	532	74Y
14500	532	76Es
14501	532	80rNLrg
14502	532	90A
14503	532	105P
14504	532	107G
14505	532	127N
14506	532	131S
14507	532	138T
14508	532	142I
14509	532	144tQr
14510	532	147W
14511	532	150aARe
14512	532	156W
14513	532	158A
14514	532	163L
14515	532	166Ew
14516	532	171Y
14517	532	177Et
14518	532	180Q
14519	533	9Y
14520	533	11Am
14521	533	14R
14522	533	16Gr
14523	533	41A
14524	533	45Ee
14525	533	56G
14526	533	59Y
14527	533	62Re
14528	533	66qIs
14529	533	70tNt
14530	533	74Y
14531	533	76Es
14532	533	80rNLrg
14533	533	90A
14534	533	105P
14535	533	107G
14536	533	127N
14537	533	131S
14538	533	138T
14539	533	142I
14540	533	144tQr
14541	533	147W
14542	533	150aARe
14543	533	156R
14544	533	158A
14545	533	163E
14546	533	166Ew
14547	533	171Y
14548	533	177Et
14549	533	180Q
14550	534	9Y
14551	534	11Am
14552	534	14R
14553	534	16Gr
14554	534	41A
14555	534	45Ma
14556	534	56G
14557	534	59Y
14558	534	62Re
14559	534	66qIs
14560	534	70tNt
14561	534	74Y
14562	534	76Es
14563	534	80rNLrg
14564	534	90A
14565	534	105P
14566	534	107G
14567	534	127N
14568	534	131S
14569	534	138T
14570	534	142I
14571	534	144tQr
14572	534	147W
14573	534	150aARv
14574	534	156L
14575	534	158A
14576	534	163L
14577	534	166Ew
14578	534	171Y
14579	534	177Et
14580	534	180Q
14581	535	9Y
14582	535	11Am
14583	535	14R
14584	535	16Gr
14585	535	41A
14586	535	45Ee
14587	535	56G
14588	535	59Y
14589	535	62Re
14590	535	66qIs
14591	535	70tNtr
14592	535	74Y
14593	535	76Es
14594	535	80rNLrg
14595	535	90A
14596	535	105P
14597	535	107G
14598	535	127N
14599	535	131S
14600	535	138T
14601	535	142I
14602	535	144tQr
14603	535	147W
14604	535	150aARe
14605	535	156R
14606	535	158A
14607	535	163E
14608	535	166Ew
14609	535	171Y
14610	535	177Et
14611	535	180Q
14612	536	9Y
14613	536	11Am
14614	536	14R
14615	536	16Gr
14616	536	41A
14617	536	45Ma
14618	536	56G
14619	536	59Y
14620	536	62Re
14621	536	66qIs
14622	536	70tNt
14623	536	74Y
14624	536	76Es
14625	536	80rNLrg
14626	536	90A
14627	536	105P
14628	536	107G
14629	536	127N
14630	536	131S
14631	536	138T
14632	536	142I
14633	536	144tQr
14634	536	147W
14635	536	150aARe
14636	536	156W
14637	536	158A
14638	536	163T
14639	536	166Ew
14640	536	171Y
14641	536	177Et
14642	536	180Q
14643	537	9Y
14644	537	11Am
14645	537	14R
14646	537	16Gr
14647	537	41A
14648	537	45Ee
14649	537	56G
14650	537	59Y
14651	537	62Rn
14652	537	66qIc
14653	537	70tNt
14654	537	74Y
14655	537	76Es
14656	537	80rNLrg
14657	537	90A
14658	537	105P
14659	537	107G
14660	537	127N
14661	537	131S
14662	537	138T
14663	537	142I
14664	537	144tQr
14665	537	147W
14666	537	150aARv
14667	537	156D
14668	537	158A
14669	537	163L
14670	537	166Ew
14671	537	171Y
14672	537	177Et
14673	537	180Q
14674	538	9Y
14675	538	11Am
14676	538	14R
14677	538	16Gr
14678	538	41A
14679	538	45Ee
14680	538	56G
14681	538	59Y
14682	538	62Rn
14683	538	66qIc
14684	538	70tNt
14685	538	74Y
14686	538	76Es
14687	538	80rNLrg
14688	538	90A
14689	538	105P
14690	538	107G
14691	538	127N
14692	538	131S
14693	538	138T
14694	538	142I
14695	538	144tQr
14696	538	147W
14697	538	150aARv
14698	538	156L
14699	538	158A
14700	538	163E
14701	538	166Ew
14702	538	171Y
14703	538	177Et
14704	538	180Q
14705	539	9Y
14706	539	11Am
14707	539	14R
14708	539	16Gr
14709	539	41T
14710	539	45Ke
14711	539	56G
14712	539	59Y
14713	539	62Re
14714	539	66qIs
14715	539	70tNt
14716	539	74Y
14717	539	76Es
14718	539	80rNLrg
14719	539	90A
14720	539	105P
14721	539	107G
14722	539	127N
14723	539	131S
14724	539	138T
14725	539	142I
14726	539	144tQr
14727	539	147W
14728	539	150aARe
14729	539	156W
14730	539	158A
14731	539	163L
14732	539	166Ew
14733	539	171Y
14734	539	177Et
14735	539	180Q
14736	540	9Y
14737	540	11Am
14738	540	14R
14739	540	16Gr
14740	540	41A
14741	540	45Ee
14742	540	56G
14743	540	59Y
14744	540	62Re
14745	540	66qIs
14746	540	70tNt
14747	540	74Y
14748	540	76Es
14749	540	80rNLrg
14750	540	90A
14751	540	105P
14752	540	107G
14753	540	127N
14754	540	131S
14755	540	138T
14756	540	142I
14757	540	144tQr
14758	540	147W
14759	540	150aARe
14760	540	156W
14761	540	158A
14762	540	163L
14763	540	166Ew
14764	540	171Y
14765	540	177Et
14766	540	180Q
14767	540	183P
14768	540	186K
14769	540	193Pi
14770	540	199A
14771	540	207G
14772	540	211A
14773	540	219R
14774	540	246A
14775	540	248V
14776	540	253E
14777	540	261V
14778	540	267P
14779	540	269P
14780	540	273R
14781	540	275E
14782	540	282Ip
14783	540	285V
14784	541	9Y
14785	541	11Am
14786	541	14R
14787	541	16Gr
14788	541	41A
14789	541	45Ma
14790	541	56G
14791	541	59Y
14792	541	62Rn
14793	541	66qIs
14794	541	70tNt
14795	541	74Y
14796	541	76Es
14797	541	80rNLrg
14798	541	90A
14799	541	105P
14800	541	107G
14801	541	127N
14802	541	131S
14803	541	138T
14804	541	142I
14805	541	144tQr
14806	541	147W
14807	541	150aARv
14808	541	156L
14809	541	158A
14810	541	163L
14811	541	166Ew
14812	541	171Y
14813	541	177Et
14814	541	180Q
14815	541	183P
14816	541	186K
14817	541	193Pi
14818	541	199A
14819	541	207G
14820	541	211A
14821	541	219R
14822	541	246A
14823	541	248V
14824	541	253E
14825	541	261V
14826	541	267P
14827	541	269P
14828	541	273R
14829	541	275E
14830	541	282Ip
14831	541	285V
14832	542	9Y
14833	542	11Am
14834	542	14R
14835	542	16Gr
14836	542	41A
14837	542	45Ma
14838	542	56G
14839	542	59Y
14840	542	62Re
14841	542	66qIf
14842	542	70tNt
14843	542	74Y
14844	542	76Es
14845	542	80rNLrg
14846	542	90A
14847	542	105P
14848	542	107G
14849	542	127N
14850	542	131S
14851	542	138T
14852	542	142I
14853	542	144tQr
14854	542	147W
14855	542	150aARe
14856	542	156W
14857	542	158A
14858	542	163L
14859	542	166Ew
14860	542	171Y
14861	542	177Et
14862	542	180Q
14863	543	9Y
14864	543	11Am
14865	543	14R
14866	543	16Gr
14867	543	41A
14868	543	45Ma
14869	543	56G
14870	543	59Y
14871	543	62Re
14872	543	66qIs
14873	543	70tNt
14874	543	74Y
14875	543	76Vn
14876	543	80rNLrg
14877	543	90A
14878	543	105P
14879	543	107G
14880	543	127N
14881	543	131S
14882	543	138T
14883	543	142I
14884	543	144tQr
14885	543	147W
14886	543	150aARe
14887	543	156W
14888	543	158A
14889	543	163L
14890	543	166Ew
14891	543	171Y
14892	543	177Et
14893	543	180Q
14894	544	9Y
14895	544	11Am
14896	544	14R
14897	544	16Gr
14898	544	41A
14899	544	45Ma
14900	544	56G
14901	544	59Y
14902	544	62Re
14903	544	66qIs
14904	544	70tNt
14905	544	74Y
14906	544	76Es
14907	544	80rNLrg
14908	544	90A
14909	544	105P
14910	544	107G
14911	544	127N
14912	544	131S
14913	544	138T
14914	544	142I
14915	544	144tQr
14916	544	147W
14917	544	150aARe
14918	544	156W
14919	544	158A
14920	544	163L
14921	544	166Ew
14922	544	171Y
14923	544	177Et
14924	544	180Q
14925	545	9Y
14926	545	11Am
14927	545	14R
14928	545	16Gr
14929	545	41A
14930	545	45Te
14931	545	56G
14932	545	59Y
14933	545	62Re
14934	545	66qIf
14935	545	70tNt
14936	545	74Y
14937	545	76Es
14938	545	80rNLrg
14939	545	90A
14940	545	105P
14941	545	107G
14942	545	127N
14943	545	131S
14944	545	138T
14945	545	142I
14946	545	144tQr
14947	545	147W
14948	545	150aARe
14949	545	156W
14950	545	158A
14951	545	163L
14952	545	166Ew
14953	545	171Y
14954	545	177Et
14955	545	180Q
14956	546	9Y
14957	546	11Am
14958	546	14R
14959	546	16Gr
14960	546	41A
14961	546	45Ma
14962	546	56G
14963	546	59Y
14964	546	62Re
14965	546	66qIs
14966	546	70tNt
14967	546	74Y
14968	546	76Es
14969	546	80rNLrg
14970	546	90A
14971	546	105P
14972	546	107G
14973	546	127N
14974	546	131S
14975	546	138T
14976	546	142I
14977	546	144tQr
14978	546	147W
14979	546	150aARe
14980	546	156W
14981	546	158A
14982	546	163L
14983	546	166Ew
14984	546	171Y
14985	546	177Et
14986	546	180Q
14987	547	9Y
14988	547	11Am
14989	547	14R
14990	547	16Gr
14991	547	41A
14992	547	45Ee
14993	547	56G
14994	547	59Y
14995	547	62Re
14996	547	66qIs
14997	547	70tNt
14998	547	74D
14999	547	76Es
15000	547	80rNLrg
15001	547	90A
15002	547	105P
15003	547	107G
15004	547	127N
15005	547	131S
15006	547	138T
15007	547	142I
15008	547	144tQr
15009	547	147W
15010	547	150aARe
15011	547	156L
15012	547	158A
15013	547	163L
15014	547	166Ew
15015	547	171Y
15016	547	177Et
15017	547	180Q
15018	548	9Y
15019	548	11Am
15020	548	14R
15021	548	16Gr
15022	548	41A
15023	548	45Ee
15024	548	56G
15025	548	59Y
15026	548	62Re
15027	548	66qIs
15028	548	70tNt
15029	548	74Y
15030	548	76Es
15031	548	80rNLrg
15032	548	90A
15033	548	105P
15034	548	107G
15035	548	127N
15036	548	131S
15037	548	138T
15038	548	142I
15039	548	144tQr
15040	548	147W
15041	548	150aARe
15042	548	156L
15043	548	158A
15044	548	163L
15045	548	166Ew
15046	548	171Y
15047	548	177Et
15048	548	180Q
15049	549	9Y
15050	549	11Am
15051	549	14R
15052	549	16Gr
15053	549	41A
15054	549	45Ma
15055	549	56G
15056	549	59Y
15057	549	62Re
15058	549	66qIs
15059	549	70tNt
15060	549	74Y
15061	549	76Es
15062	549	80rNLrg
15063	549	90A
15064	549	105P
15065	549	107G
15066	549	127N
15067	549	131S
15068	549	138T
15069	549	142I
15070	549	144tQr
15071	549	147W
15072	549	150aARe
15073	549	156W
15074	549	158A
15075	549	163L
15076	549	166Ew
15077	549	171Y
15078	549	177Et
15079	549	180Q
15080	550	9Y
15081	550	11Am
15082	550	14R
15083	550	16Gr
15084	550	41A
15085	550	45Ee
15086	550	56G
15087	550	59Y
15088	550	62Rn
15089	550	66qIs
15090	550	70tNt
15091	550	74Y
15092	550	76Es
15093	550	80rNLrg
15094	550	90A
15095	550	105P
15096	550	107G
15097	550	127N
15098	550	131S
15099	550	138T
15100	550	142I
15101	550	144tQr
15102	550	147W
15103	550	150aARe
15104	550	156L
15105	550	158A
15106	550	163L
15107	550	166Ew
15108	550	171Y
15109	550	177Et
15110	550	180Q
15111	551	9H
15112	551	11Sv
15113	551	14R
15114	551	16Gr
15115	551	41A
15116	551	45Te
15117	551	56G
15118	551	59Y
15119	551	62Rn
15120	551	66qIs
15121	551	70tNt
15122	551	74Y
15123	551	76Es
15124	551	80rNLrg
15125	551	90A
15126	551	105P
15127	551	107G
15128	551	127N
15129	551	131S
15130	551	138T
15131	551	142I
15132	551	144tQr
15133	551	147W
15134	551	150aARv
15135	551	156L
15136	551	158A
15137	551	163T
15138	551	166Ew
15139	551	171H
15140	551	177Et
15141	551	180Q
15142	551	183P
15143	551	186K
15144	551	193Pi
15145	551	199A
15146	551	207G
15147	551	211A
15148	551	219R
15149	551	246A
15150	551	248V
15151	551	253E
15152	551	261V
15153	551	267P
15154	551	269P
15155	551	273R
15156	551	275E
15157	551	282Ip
15158	551	285V
15159	552	9H
15160	552	11Sv
15161	552	14R
15162	552	16Gr
15163	552	41A
15164	552	45Te
15165	552	56G
15166	552	59Y
15167	552	62Rn
15168	552	66qIs
15169	552	70tNt
15170	552	74Y
15171	552	76Es
15172	552	80rNLrg
15173	552	90A
15174	552	105P
15175	552	107G
15176	552	127N
15177	552	131S
15178	552	138T
15179	552	142I
15180	552	144tQr
15181	552	147W
15182	552	150aARv
15183	552	156L
15184	552	158A
15185	552	163T
15186	552	166Ew
15187	552	171H
15188	552	177Et
15189	552	180Q
15190	552	183P
15191	552	186K
15192	552	193Pi
15193	552	199A
15194	552	207G
15195	552	211A
15196	552	219R
15197	552	246A
15198	552	248V
15199	552	253E
15200	552	261V
15201	552	267P
15202	552	269P
15203	552	273R
15204	552	275E
15205	552	282Ip
15206	552	285V
15207	553	9H
15208	553	11Sv
15209	553	14R
15210	553	16Gr
15211	553	41A
15212	553	45Te
15213	553	56G
15214	553	59Y
15215	553	62Rn
15216	553	66qIs
15217	553	70tNt
15218	553	74D
15219	553	76Es
15220	553	80rNLrg
15221	553	90A
15222	553	105P
15223	553	107G
15224	553	127N
15225	553	131S
15226	553	138T
15227	553	142I
15228	553	144tQr
15229	553	147W
15230	553	150aARv
15231	553	156L
15232	553	158A
15233	553	163T
15234	553	166Ew
15235	553	171H
15236	553	177Et
15237	553	180Q
15238	554	9Y
15239	554	11Am
15240	554	14R
15241	554	16Gr
15242	554	41A
15243	554	45Te
15244	554	56G
15245	554	59Y
15246	554	62Rn
15247	554	66qIs
15248	554	70tNt
15249	554	74Y
15250	554	76Es
15251	554	80rNLrg
15252	554	90A
15253	554	105P
15254	554	107G
15255	554	127N
15256	554	131S
15257	554	138T
15258	554	142I
15259	554	144tQr
15260	554	147W
15261	554	150aARv
15262	554	156L
15263	554	158A
15264	554	163T
15265	554	166Ew
15266	554	171H
15267	554	177Et
15268	554	180Q
15269	555	9H
15270	555	11Sv
15271	555	14R
15272	555	16Gr
15273	555	41A
15274	555	45Te
15275	555	56G
15276	555	59Y
15277	555	62Rn
15278	555	66qIs
15279	555	70tNt
15280	555	74Y
15281	555	76Es
15282	555	80rNLrg
15283	555	90A
15284	555	105P
15285	555	107G
15286	555	127K
15287	555	131S
15288	555	138T
15289	555	142I
15290	555	144tQr
15291	555	147W
15292	555	150aARv
15293	555	156L
15294	555	158A
15295	555	163T
15296	555	166Ew
15297	555	171H
15298	555	177Et
15299	555	180Q
15300	556	9H
15301	556	11Sv
15302	556	14R
15303	556	16Gr
15304	556	41A
15305	556	45Te
15306	556	56G
15307	556	59Y
15308	556	62Rn
15309	556	66qIs
15310	556	70tNt
15311	556	74Y
15312	556	76Vs
15313	556	80rNLrg
15314	556	90A
15315	556	105P
15316	556	107G
15317	556	127N
15318	556	131S
15319	556	138T
15320	556	142I
15321	556	144tQr
15322	556	147W
15323	556	150aARv
15324	556	156L
15325	556	158A
15326	556	163T
15327	556	166Ew
15328	556	171H
15329	556	177Et
15330	556	180Q
15331	556	183P
15332	556	186K
15333	556	193Pi
15334	556	199A
15335	556	207G
15336	556	211A
15337	556	219R
15338	556	246A
15339	556	248V
15340	556	253E
15341	556	261V
15342	556	267P
15343	556	269P
15344	556	273R
15345	556	275E
15346	556	282Ip
15347	556	285V
15348	557	9H
15349	557	11Sv
15350	557	14R
15351	557	16Gr
15352	557	41A
15353	557	45Te
15354	557	56G
15355	557	59Y
15356	557	62Rn
15357	557	66qIf
15358	557	70tNt
15359	557	74Y
15360	557	76Es
15361	557	80rNLrg
15362	557	90A
15363	557	105P
15364	557	107G
15365	557	127N
15366	557	131S
15367	557	138T
15368	557	142I
15369	557	144tQr
15370	557	147W
15371	557	150aARv
15372	557	156L
15373	557	158A
15374	557	163T
15375	557	166Ew
15376	557	171H
15377	557	177Et
15378	557	180Q
15379	558	9H
15380	558	11Sv
15381	558	14R
15382	558	16Gr
15383	558	41A
15384	558	45Te
15385	558	56G
15386	558	59Y
15387	558	62Rn
15388	558	66qIf
15389	558	70tNt
15390	558	74Y
15391	558	76Es
15392	558	80rNLrg
15393	558	90A
15394	558	105P
15395	558	107G
15396	558	127N
15397	558	131S
15398	558	138T
15399	558	142I
15400	558	144tQr
15401	558	147W
15402	558	150aARv
15403	558	156L
15404	558	158A
15405	558	163T
15406	558	166Ew
15407	558	171H
15408	558	177Et
15409	558	180Q
15410	559	9H
15411	559	11Sv
15412	559	14R
15413	559	16Gr
15414	559	41A
15415	559	45Te
15416	559	56G
15417	559	59Y
15418	559	62Rn
15419	559	66qIf
15420	559	70tNt
15421	559	74Y
15422	559	76En
15423	559	80rNLrg
15424	559	90A
15425	559	105P
15426	559	107G
15427	559	127N
15428	559	131S
15429	559	138T
15430	559	142I
15431	559	144tQr
15432	559	147W
15433	559	150aARv
15434	559	156L
15435	559	158A
15436	559	163T
15437	559	166Ew
15438	559	171H
15439	559	177Et
15440	559	180Q
15441	560	9H
15442	560	11Sv
15443	560	14R
15444	560	16Gr
15445	560	41A
15446	560	45Te
15447	560	56G
15448	560	59Y
15449	560	62Rn
15450	560	66qIf
15451	560	70tNt
15452	560	74Y
15453	560	76Es
15454	560	80rNLrg
15455	560	90A
15456	560	105P
15457	560	107G
15458	560	127N
15459	560	131S
15460	560	138T
15461	560	142I
15462	560	144tQr
15463	560	147W
15464	560	150aARv
15465	560	156L
15466	560	158A
15467	560	163E
15468	560	166Ew
15469	560	171H
15470	560	177Et
15471	560	180Q
15472	561	9H
15473	561	11Sv
15474	561	14R
15475	561	16Gr
15476	561	41A
15477	561	45Te
15478	561	56G
15479	561	59Y
15480	561	62Rn
15481	561	66qIf
15482	561	70tNt
15483	561	74Y
15484	561	76Es
15485	561	80rNLrg
15486	561	90A
15487	561	105P
15488	561	107G
15489	561	127N
15490	561	131S
15491	561	138T
15492	561	142I
15493	561	144tQr
15494	561	147W
15495	561	150aARv
15496	561	156L
15497	561	158A
15498	561	163E
15499	561	166Ew
15500	561	171Y
15501	561	177Et
15502	561	180Q
15503	562	9H
15504	562	11Sv
15505	562	14R
15506	562	16Gr
15507	562	41A
15508	562	45Te
15509	562	56G
15510	562	59Y
15511	562	62Re
15512	562	66qIf
15513	562	70tNt
15514	562	74Y
15515	562	76Es
15516	562	80rNLrg
15517	562	90A
15518	562	105P
15519	562	107G
15520	562	127N
15521	562	131S
15522	562	138T
15523	562	142I
15524	562	144tQr
15525	562	147W
15526	562	150aARv
15527	562	156L
15528	562	158A
15529	562	163T
15530	562	166Ew
15531	562	171Y
15532	562	177Et
15533	562	180Q
15534	563	9H
15535	563	11Sv
15536	563	14R
15537	563	16Gr
15538	563	41A
15539	563	45Te
15540	563	56G
15541	563	59Y
15542	563	62Re
15543	563	66qIc
15544	563	70tNt
15545	563	74Y
15546	563	76En
15547	563	80rTAlr
15548	563	90A
15549	563	105P
15550	563	107G
15551	563	127N
15552	563	131S
15553	563	138T
15554	563	142I
15555	563	144tQr
15556	563	147W
15557	563	150aARv
15558	563	156L
15559	563	158A
15560	563	163T
15561	563	166Ew
15562	563	171Y
15563	563	177Et
15564	563	180Q
15565	564	9H
15566	564	11Sv
15567	564	14R
15568	564	16Gr
15569	564	41A
15570	564	45Ee
15571	564	56G
15572	564	59Y
15573	564	62Re
15574	564	66qIc
15575	564	70aKa
15576	564	74D
15577	564	76En
15578	564	80rIAlr
15579	564	90A
15580	564	105P
15581	564	107G
15582	564	127N
15583	564	131S
15584	564	138T
15585	564	142I
15586	564	144tQr
15587	564	147W
15588	564	150aARv
15589	564	156L
15590	564	158A
15591	564	163E
15592	564	166Ew
15593	564	171Y
15594	564	177Et
15595	564	180Q
15596	564	183P
15597	564	186K
15598	564	193Pi
15599	564	199A
15600	564	207G
15601	564	211A
15602	564	219R
15603	564	246A
15604	564	248V
15605	564	253E
15606	564	261V
15607	564	267P
15608	564	269P
15609	564	273R
15610	564	275E
15611	564	282Vp
15612	564	285V
15613	565	9H
15614	565	11Sv
15615	565	14R
15616	565	16Gr
15617	565	41A
15618	565	45Ee
15619	565	56GH
15620	565	59Y
15621	565	62Re
15622	565	66qIc
15623	565	70aKa
15624	565	74D
15625	565	76Ed
15626	565	80rTLlr
15627	565	90A
15628	565	105P
15629	565	107G
15630	565	127N
15631	565	131S
15632	565	138T
15633	565	142I
15634	565	144tQr
15635	565	147W
15636	565	150aARv
15637	565	156L
15638	565	158A
15639	565	163E
15640	565	166Ew
15641	565	171Y
15642	565	177Et
15643	565	180Q
15644	565	183P
15645	565	186K
15646	565	193Pi
15647	565	199A
15648	565	207G
15649	565	211A
15650	565	219R
15651	565	246A
15652	565	248V
15653	565	253E
15654	565	261V
15655	565	267P
15656	565	269P
15657	565	273R
15658	565	275E
15659	565	282Vp
15660	565	285V
15661	566	9H
15662	566	11Sv
15663	566	14R
15664	566	16Gr
15665	566	41A
15666	566	45Ee
15667	566	56G
15668	566	59Y
15669	566	62Re
15670	566	66qIc
15671	566	70aKa
15672	566	74D
15673	566	76Es
15674	566	80rTLlr
15675	566	90A
15676	566	105P
15677	566	107G
15678	566	127N
15679	566	131S
15680	566	138T
15681	566	142I
15682	566	144tQr
15683	566	147W
15684	566	150aARe
15685	566	156L
15686	566	158A
15687	566	163E
15688	566	166Ew
15689	566	171Y
15690	566	177Et
15691	566	180Q
15692	566	183P
15693	566	186K
15694	566	193Pi
15695	566	199A
15696	566	207G
15697	566	211G
15698	566	219R
15699	566	246A
15700	566	248V
15701	566	253E
15702	566	261V
15703	566	267P
15704	566	269P
15705	566	273R
15706	566	275E
15707	566	282Vp
15708	566	285V
15709	567	9H
15710	567	11Sv
15711	567	14R
15712	567	16Gr
15713	567	41A
15714	567	45Ee
15715	567	56G
15716	567	59Y
15717	567	62Re
15718	567	66qIc
15719	567	70aKa
15720	567	74D
15721	567	76Ed
15722	567	80rTLlr
15723	567	90A
15724	567	105P
15725	567	107G
15726	567	127N
15727	567	131S
15728	567	138T
15729	567	142I
15730	567	144tQr
15731	567	147W
15732	567	150aARv
15733	567	156L
15734	567	158A
15735	567	163E
15736	567	166Ew
15737	567	171Y
15738	567	177Et
15739	567	180Q
15740	567	183P
15741	567	186K
15742	567	193Pi
15743	567	199A
15744	567	207G
15745	567	211A
15746	567	219R
15747	567	246A
15748	567	248V
15749	567	253E
15750	567	261V
15751	567	267P
15752	567	269P
15753	567	273R
15754	567	275E
15755	567	282Vp
15756	567	285V
15757	568	9H
15758	568	11Sv
15759	568	14R
15760	568	16Gr
15761	568	41A
15762	568	45Ee
15763	568	56G
15764	568	59Y
15765	568	62Re
15766	568	66qIc
15767	568	70aKa
15768	568	74D
15769	568	76Es
15770	568	80rTLlr
15771	568	90A
15772	568	105P
15773	568	107G
15774	568	127N
15775	568	131S
15776	568	138T
15777	568	142I
15778	568	144tQr
15779	568	147W
15780	568	150aARe
15781	568	156L
15782	568	158A
15783	568	163E
15784	568	166Ew
15785	568	171Y
15786	568	177Et
15787	568	180Q
15788	568	183P
15789	568	186K
15790	568	193Pi
15791	568	199A
15792	568	207G
15793	568	211A
15794	568	219R
15795	568	246A
15796	568	248V
15797	568	253E
15798	568	261V
15799	568	267P
15800	568	269P
15801	568	273R
15802	568	275E
15803	568	282Vp
15804	568	285V
15805	569	9H
15806	569	11Sv
15807	569	14R
15808	569	16Gr
15809	569	41A
15810	569	45Ee
15811	569	56G
15812	569	59Y
15813	569	62Re
15814	569	66qIc
15815	569	70aKa
15816	569	74D
15817	569	76Ed
15818	569	80rTLlr
15819	569	90A
15820	569	105P
15821	569	107G
15822	569	127N
15823	569	131R
15824	569	138T
15825	569	142I
15826	569	144tQr
15827	569	147W
15828	569	150aARv
15829	569	156L
15830	569	158A
15831	569	163E
15832	569	166Ew
15833	569	171Y
15834	569	177Et
15835	569	180Q
15836	569	183P
15837	569	186K
15838	569	193Pi
15839	569	199A
15840	569	207G
15841	569	211A
15842	569	219R
15843	569	246A
15844	569	248V
15845	569	253E
15846	569	261V
15847	569	267P
15848	569	269P
15849	569	273R
15850	569	275E
15851	569	282Vp
15852	569	285V
15853	570	9H
15854	570	11Sv
15855	570	14R
15856	570	16Gr
15857	570	41A
15858	570	45Ee
15859	570	56G
15860	570	59Y
15861	570	62Re
15862	570	66qIc
15863	570	70aKa
15864	570	74D
15865	570	76Es
15866	570	80rNLrg
15867	570	90A
15868	570	105P
15869	570	107G
15870	570	127N
15871	570	131S
15872	570	138T
15873	570	142I
15874	570	144tQr
15875	570	147W
15876	570	150aARv
15877	570	156L
15878	570	158A
15879	570	163E
15880	570	166Ew
15881	570	171Y
15882	570	177Et
15883	570	180Q
15884	570	183P
15885	570	186K
15886	570	193Pi
15887	570	199A
15888	570	207G
15889	570	211A
15890	570	219R
15891	570	246A
15892	570	248V
15893	570	253E
15894	570	261V
15895	570	267P
15896	570	269P
15897	570	273R
15898	570	275E
15899	570	282Vp
15900	570	285V
15901	571	9H
15902	571	11Sv
15903	571	14R
15904	571	16Gr
15905	571	41A
15906	571	45Ee
15907	571	56G
15908	571	59Y
15909	571	62Re
15910	571	66qIc
15911	571	70aKa
15912	571	74D
15913	571	76Ed
15914	571	80rTLlr
15915	571	90A
15916	571	105P
15917	571	107G
15918	571	127N
15919	571	131S
15920	571	138T
15921	571	142I
15922	571	144tQr
15923	571	147W
15924	571	150aARv
15925	571	156L
15926	571	158A
15927	571	163E
15928	571	166Ew
15929	571	171Y
15930	571	177Et
15931	571	180Q
15932	571	183P
15933	571	186K
15934	571	193Pi
15935	571	199A
15936	571	207G
15937	571	211A
15938	571	219R
15939	571	246A
15940	571	248V
15941	571	253E
15942	571	261V
15943	571	267P
15944	571	269P
15945	571	273R
15946	571	275E
15947	571	282Vp
15948	571	285V
15949	572	9H
15950	572	11Sv
15951	572	14R
15952	572	16Gr
15953	572	41A
15954	572	45Ee
15955	572	56G
15956	572	59Y
15957	572	62Re
15958	572	66qIc
15959	572	70aKa
15960	572	74D
15961	572	76Ed
15962	572	80rTLlr
15963	572	90A
15964	572	105P
15965	572	107G
15966	572	127N
15967	572	131S
15968	572	138T
15969	572	142I
15970	572	144tQr
15971	572	147W
15972	572	150aARe
15973	572	156L
15974	572	158A
15975	572	163E
15976	572	166Ew
15977	572	171Y
15978	572	177Et
15979	572	180Q
15980	573	9H
15981	573	11Sv
15982	573	14R
15983	573	16Gr
15984	573	41A
15985	573	45Ee
15986	573	56G
15987	573	59Y
15988	573	62Re
15989	573	66qIc
15990	573	70aKa
15991	573	74D
15992	573	76Es
15993	573	80rTLlr
15994	573	90A
15995	573	105P
15996	573	107G
15997	573	127N
15998	573	131R
15999	573	138T
16000	573	142I
16001	573	144tQr
16002	573	147W
16003	573	150aARv
16004	573	156L
16005	573	158A
16006	573	163E
16007	573	166Ew
16008	573	171Y
16009	573	177Et
16010	573	180Q
16011	573	183P
16012	573	186K
16013	573	193Pi
16014	573	199A
16015	573	207G
16016	573	211A
16017	573	219R
16018	573	246A
16019	573	248V
16020	573	253E
16021	573	261V
16022	573	267P
16023	573	269P
16024	573	273R
16025	573	275E
16026	573	282Vp
16027	573	285V
16028	574	9H
16029	574	11Sv
16030	574	14R
16031	574	16Gr
16032	574	41A
16033	574	45Ee
16034	574	56G
16035	574	59Y
16036	574	62Re
16037	574	66qIc
16038	574	70tNt
16039	574	74D
16040	574	76Es
16041	574	80rNLrg
16042	574	90A
16043	574	105P
16044	574	107G
16045	574	127N
16046	574	131S
16047	574	138T
16048	574	142I
16049	574	144tQr
16050	574	147W
16051	574	150aARv
16052	574	156L
16053	574	158A
16054	574	163E
16055	574	166Ew
16056	574	171Y
16057	574	177Et
16058	574	180Q
16059	574	183P
16060	574	186K
16061	574	193Pi
16062	574	199A
16063	574	207G
16064	574	211A
16065	574	219R
16066	574	246A
16067	574	248V
16068	574	253E
16069	574	261V
16070	574	267P
16071	574	269P
16072	574	273R
16073	574	275E
16074	574	282Vp
16075	574	285V
16076	575	9H
16077	575	11Sv
16078	575	14R
16079	575	16Gr
16080	575	41A
16081	575	45Ee
16082	575	56G
16083	575	59Y
16084	575	62Re
16085	575	66qIc
16086	575	70aKa
16087	575	74D
16088	575	76Ed
16089	575	80rTLlr
16090	575	90A
16091	575	105P
16092	575	107G
16093	575	127N
16094	575	131S
16095	575	138T
16096	575	142I
16097	575	144tQr
16098	575	147W
16099	575	150aARv
16100	575	156L
16101	575	158A
16102	575	163E
16103	575	166Ew
16104	575	171Y
16105	575	177Et
16106	575	180Q
16107	575	183P
16108	575	186K
16109	575	193Pi
16110	575	199A
16111	575	207G
16112	575	211A
16113	575	219R
16114	575	246A
16115	575	248V
16116	575	253E
16117	575	261V
16118	575	267P
16119	575	269P
16120	575	273R
16121	575	275E
16122	575	282Vp
16123	575	285V
16124	576	9H
16125	576	11Sv
16126	576	14R
16127	576	16Gr
16128	576	41A
16129	576	45Ee
16130	576	56G
16131	576	59Y
16132	576	62Re
16133	576	66qIc
16134	576	70aKa
16135	576	74D
16136	576	76Ed
16137	576	80rTLlr
16138	576	90A
16139	576	105P
16140	576	107G
16141	576	127N
16142	576	131S
16143	576	138T
16144	576	142I
16145	576	144tQr
16146	576	147W
16147	576	150aARv
16148	576	156L
16149	576	158A
16150	576	163T
16151	576	166Ew
16152	576	171Y
16153	576	177Et
16154	576	180Q
16155	577	9H
16156	577	11Sv
16157	577	14R
16158	577	16Gr
16159	577	41A
16160	577	45Ee
16161	577	56G
16162	577	59Y
16163	577	62Re
16164	577	66qIc
16165	577	70aKa
16166	577	74D
16167	577	76Es
16168	577	80rTLlr
16169	577	90A
16170	577	105P
16171	577	107G
16172	577	127N
16173	577	131S
16174	577	138T
16175	577	142I
16176	577	144tQr
16177	577	147W
16178	577	150aARe
16179	577	156L
16180	577	158A
16181	577	163E
16182	577	166Ew
16183	577	171Y
16184	577	177Et
16185	577	180Q
16186	578	9H
16187	578	11Sv
16188	578	14R
16189	578	16Gr
16190	578	41A
16191	578	45Ee
16192	578	56G
16193	578	59Y
16194	578	62Re
16195	578	66qIc
16196	578	70tNt
16197	578	74D
16198	578	76Ed
16199	578	80rTLlr
16200	578	90A
16201	578	105P
16202	578	107G
16203	578	127N
16204	578	131S
16205	578	138T
16206	578	142I
16207	578	144tQr
16208	578	147W
16209	578	150aARv
16210	578	156L
16211	578	158A
16212	578	163E
16213	578	166Ew
16214	578	171Y
16215	578	177Et
16216	578	180Q
16217	579	9H
16218	579	11Sv
16219	579	14R
16220	579	16Gr
16221	579	41A
16222	579	45Ee
16223	579	56GF
16224	579	59Y
16225	579	62Re
16226	579	66qIc
16227	579	70aKa
16228	579	74D
16229	579	76Ed
16230	579	80rTLlr
16231	579	90A
16232	579	105P
16233	579	107G
16234	579	127N
16235	579	131S
16236	579	138T
16237	579	142I
16238	579	144tQr
16239	579	147W
16240	579	150aARv
16241	579	156L
16242	579	158A
16243	579	163E
16244	579	166Ew
16245	579	171Y
16246	579	177Et
16247	579	180Q
16248	580	9H
16249	580	11Sv
16250	580	14R
16251	580	16Gr
16252	580	41A
16253	580	45Ee
16254	580	56G
16255	580	59Y
16256	580	62Re
16257	580	66qIs
16258	580	70tNt
16259	580	74Y
16260	580	76Es
16261	580	80rNLrg
16262	580	90A
16263	580	105P
16264	580	107G
16265	580	127N
16266	580	131S
16267	580	138T
16268	580	142I
16269	580	144tQr
16270	580	147W
16271	580	150aARe
16272	580	156L
16273	580	158A
16274	580	163E
16275	580	166Ew
16276	580	171Y
16277	580	177Et
16278	580	180Q
16279	581	9H
16280	581	11Sv
16281	581	14R
16282	581	16Gr
16283	581	41A
16284	581	45Ee
16285	581	56G
16286	581	59Y
16287	581	62Re
16288	581	66qIc
16289	581	70aKa
16290	581	74D
16291	581	76Ed
16292	581	80rTLlr
16293	581	90A
16294	581	105P
16295	581	107G
16296	581	127N
16297	581	131S
16298	581	138T
16299	581	142I
16300	581	144tQr
16301	581	147W
16302	581	150aARv
16303	581	156L
16304	581	158A
16305	581	163E
16306	581	166Ew
16307	581	171Y
16308	581	177Et
16309	581	180Q
16310	582	9H
16311	582	11Sv
16312	582	14R
16313	582	16Gr
16314	582	41A
16315	582	45Ee
16316	582	56G
16317	582	59Y
16318	582	62Re
16319	582	66qIc
16320	582	70aKa
16321	582	74D
16322	582	76Es
16323	582	80rTLlr
16324	582	90A
16325	582	105P
16326	582	107G
16327	582	127N
16328	582	131R
16329	582	138T
16330	582	142I
16331	582	144tQr
16332	582	147W
16333	582	150aARe
16334	582	156L
16335	582	158A
16336	582	163E
16337	582	166Ew
16338	582	171Y
16339	582	177Et
16340	582	180Q
16341	583	9H
16342	583	11Sv
16343	583	14R
16344	583	16Gr
16345	583	41A
16346	583	45Ee
16347	583	56G
16348	583	59Y
16349	583	62Re
16350	583	66qIc
16351	583	70aKa
16352	583	74D
16353	583	76Es
16354	583	80rTLlr
16355	583	90A
16356	583	105P
16357	583	107G
16358	583	127N
16359	583	131S
16360	583	138T
16361	583	142I
16362	583	144tQr
16363	583	147W
16364	583	150aARe
16365	583	156L
16366	583	158A
16367	583	163E
16368	583	166Ew
16369	583	171Y
16370	583	177Et
16371	583	180Q
16372	584	9H
16373	584	11Sv
16374	584	14R
16375	584	16Gr
16376	584	41A
16377	584	45Ee
16378	584	56G
16379	584	59Y
16380	584	62Re
16381	584	66qIc
16382	584	70aKa
16383	584	74D
16384	584	76Ed
16385	584	80rTLlr
16386	584	90A
16387	584	105P
16388	584	107G
16389	584	127N
16390	584	131S
16391	584	138T
16392	584	142I
16393	584	144tQr
16394	584	147W
16395	584	150aARe
16396	584	156L
16397	584	158A
16398	584	163E
16399	584	166Ew
16400	584	171Y
16401	584	177Et
16402	584	180Q
16403	584	183P
16404	584	186K
16405	584	193Pi
16406	584	199A
16407	584	207G
16408	584	211G
16409	584	219R
16410	584	246A
16411	584	248V
16412	584	253E
16413	584	261V
16414	584	267P
16415	584	269P
16416	584	273R
16417	584	275E
16418	584	282Vp
16419	584	285V
16420	585	9Y
16421	585	11Am
16422	585	14R
16423	585	16Gr
16424	585	41A
16425	585	45Te
16426	585	56G
16427	585	59Y
16428	585	62Rn
16429	585	66qIf
16430	585	70tNt
16431	585	74Y
16432	585	76Es
16433	585	80rNLrg
16434	585	90A
16435	585	105P
16436	585	107G
16437	585	127N
16438	585	131S
16439	585	138T
16440	585	142I
16441	585	144tQr
16442	585	147W
16443	585	150aARv
16444	585	156L
16445	585	158A
16446	585	163L
16447	585	166Ew
16448	585	171Y
16449	585	177Et
16450	585	180Q
16451	585	183P
16452	585	186K
16453	585	193Pi
16454	585	199A
16455	585	207G
16456	585	211A
16457	585	219R
16458	585	246A
16459	585	248V
16460	585	253E
16461	585	261V
16462	585	267P
16463	585	269P
16464	585	273R
16465	585	275E
16466	585	282Ip
16467	585	285V
16468	586	9Y
16469	586	11Am
16470	586	14R
16471	586	16Gr
16472	586	41A
16473	586	45Te
16474	586	56G
16475	586	59Y
16476	586	62Rn
16477	586	66qIf
16478	586	70tNt
16479	586	74Y
16480	586	76Es
16481	586	80rNLrg
16482	586	90A
16483	586	105P
16484	586	107G
16485	586	127N
16486	586	131S
16487	586	138T
16488	586	142I
16489	586	144tQr
16490	586	147W
16491	586	150aARv
16492	586	156L
16493	586	158A
16494	586	163L
16495	586	166Ew
16496	586	171Y
16497	586	177Et
16498	586	180Q
16499	586	183P
16500	586	186K
16501	586	193Pv
16502	586	199A
16503	586	207G
16504	586	211A
16505	586	219R
16506	586	246A
16507	586	248V
16508	586	253E
16509	586	261V
16510	586	267P
16511	586	269P
16512	586	273R
16513	586	275E
16514	586	282Ip
16515	586	285V
16516	587	9Y
16517	587	11Am
16518	587	14R
16519	587	16Gr
16520	587	41A
16521	587	45Te
16522	587	56G
16523	587	59Y
16524	587	62Rn
16525	587	66qIf
16526	587	70tNt
16527	587	74Y
16528	587	76Es
16529	587	80rNLrg
16530	587	90A
16531	587	105P
16532	587	107G
16533	587	127N
16534	587	131S
16535	587	138T
16536	587	142I
16537	587	144tQr
16538	587	147W
16539	587	150aARv
16540	587	156L
16541	587	158A
16542	587	163L
16543	587	166Ew
16544	587	171Y
16545	587	177Et
16546	587	180Q
16547	587	183P
16548	587	186K
16549	587	193Pv
16550	587	199A
16551	587	207G
16552	587	211A
16553	587	219R
16554	587	246A
16555	587	248V
16556	587	253E
16557	587	261V
16558	587	267P
16559	587	269P
16560	587	273R
16561	587	275E
16562	587	282Ip
16563	587	285V
16564	588	9Y
16565	588	11Am
16566	588	14R
16567	588	16Gr
16568	588	41A
16569	588	45Te
16570	588	56G
16571	588	59Y
16572	588	62Rn
16573	588	66qIf
16574	588	70tNt
16575	588	74Y
16576	588	76Es
16577	588	80rNLrg
16578	588	90A
16579	588	105P
16580	588	107G
16581	588	127N
16582	588	131S
16583	588	138T
16584	588	142I
16585	588	144tQr
16586	588	147W
16587	588	150aARv
16588	588	156L
16589	588	158A
16590	588	163L
16591	588	166Ew
16592	588	171Y
16593	588	177Et
16594	588	180Q
16595	588	183P
16596	588	186K
16597	588	193Pv
16598	588	199A
16599	588	207G
16600	588	211A
16601	588	219R
16602	588	246A
16603	588	248V
16604	588	253E
16605	588	261V
16606	588	267P
16607	588	269P
16608	588	273R
16609	588	275E
16610	588	282Ip
16611	588	285V
16612	589	9Y
16613	589	11Am
16614	589	14R
16615	589	16Gr
16616	589	41A
16617	589	45Te
16618	589	56G
16619	589	59Y
16620	589	62Rn
16621	589	66qIf
16622	589	70tNt
16623	589	74Y
16624	589	76Es
16625	589	80rNLrg
16626	589	90A
16627	589	105P
16628	589	107G
16629	589	127N
16630	589	131S
16631	589	138T
16632	589	142I
16633	589	144tQr
16634	589	147W
16635	589	150aARv
16636	589	156L
16637	589	158A
16638	589	163L
16639	589	166Ew
16640	589	171Y
16641	589	177Et
16642	589	180Q
16643	589	183P
16644	589	186K
16645	589	193Pv
16646	589	199A
16647	589	207G
16648	589	211A
16649	589	219R
16650	589	246A
16651	589	248V
16652	589	253E
16653	589	261V
16654	589	267P
16655	589	269P
16656	589	273R
16657	589	275E
16658	589	282Ip
16659	589	285V
16660	590	9Y
16661	590	11Am
16662	590	14R
16663	590	16Gr
16664	590	41A
16665	590	45Te
16666	590	56G
16667	590	59Y
16668	590	62Rn
16669	590	66qIf
16670	590	70tNt
16671	590	74Y
16672	590	76Es
16673	590	80rNLrg
16674	590	90A
16675	590	105P
16676	590	107G
16677	590	127N
16678	590	131S
16679	590	138T
16680	590	142I
16681	590	144tQr
16682	590	147W
16683	590	150aARv
16684	590	156L
16685	590	158A
16686	590	163L
16687	590	166Ew
16688	590	171Y
16689	590	177Et
16690	590	180Q
16691	590	183P
16692	590	186K
16693	590	193Pv
16694	590	199A
16695	590	207G
16696	590	211A
16697	590	219R
16698	590	246A
16699	590	248V
16700	590	253E
16701	590	261V
16702	590	267P
16703	590	269P
16704	590	273R
16705	590	275E
16706	590	282Ip
16707	590	285V
16708	591	9Y
16709	591	11Am
16710	591	14R
16711	591	16vR
16712	591	41A
16713	591	45Te
16714	591	56G
16715	591	59Y
16716	591	62Rn
16717	591	66qIf
16718	591	70tNt
16719	591	74Y
16720	591	76Es
16721	591	80rNLrg
16722	591	90A
16723	591	105P
16724	591	107G
16725	591	127N
16726	591	131S
16727	591	138T
16728	591	142I
16729	591	144tQr
16730	591	147W
16731	591	150aARv
16732	591	156L
16733	591	158A
16734	591	163L
16735	591	166Ew
16736	591	171Y
16737	591	177Et
16738	591	180Q
16739	591	183P
16740	591	186K
16741	591	193Pv
16742	591	199A
16743	591	207G
16744	591	211A
16745	591	219R
16746	591	246A
16747	591	248V
16748	591	253E
16749	591	261V
16750	591	267P
16751	591	269P
16752	591	273R
16753	591	275E
16754	591	282Ip
16755	591	285V
16756	592	9Y
16757	592	11Am
16758	592	14R
16759	592	16Gr
16760	592	41A
16761	592	45Te
16762	592	56G
16763	592	59Y
16764	592	62Rn
16765	592	66qIf
16766	592	70tNt
16767	592	74Y
16768	592	76Es
16769	592	80rNLrg
16770	592	90A
16771	592	105P
16772	592	107G
16773	592	127N
16774	592	131S
16775	592	138T
16776	592	142I
16777	592	144tQr
16778	592	147W
16779	592	150aARv
16780	592	156R
16781	592	158A
16782	592	163L
16783	592	166Ew
16784	592	171Y
16785	592	177Et
16786	592	180Q
16787	592	183P
16788	592	186K
16789	592	193Pv
16790	592	199A
16791	592	207G
16792	592	211A
16793	592	219R
16794	592	246A
16795	592	248V
16796	592	253E
16797	592	261V
16798	592	267P
16799	592	269P
16800	592	273R
16801	592	275E
16802	592	282Ip
16803	592	285V
16804	593	9Y
16805	593	11Am
16806	593	14R
16807	593	16Gr
16808	593	41A
16809	593	45Te
16810	593	56G
16811	593	59Y
16812	593	62Rn
16813	593	66qIf
16814	593	70tNt
16815	593	74Y
16816	593	76Es
16817	593	80rNLrg
16818	593	90A
16819	593	105P
16820	593	107G
16821	593	127N
16822	593	131R
16823	593	138T
16824	593	142I
16825	593	144tQr
16826	593	147W
16827	593	150aARv
16828	593	156L
16829	593	158A
16830	593	163L
16831	593	166Ew
16832	593	171Y
16833	593	177Et
16834	593	180Q
16835	593	183P
16836	593	186K
16837	593	193Pv
16838	593	199A
16839	593	207G
16840	593	211A
16841	593	219R
16842	593	246A
16843	593	248V
16844	593	253E
16845	593	261V
16846	593	267P
16847	593	269P
16848	593	273R
16849	593	275E
16850	593	282Ip
16851	593	285V
16852	594	9Y
16853	594	11Am
16854	594	14R
16855	594	16Gr
16856	594	41A
16857	594	45Te
16858	594	56G
16859	594	59Y
16860	594	62Re
16861	594	66qIf
16862	594	70tNt
16863	594	74Y
16864	594	76Es
16865	594	80rNLrg
16866	594	90A
16867	594	105P
16868	594	107G
16869	594	127N
16870	594	131S
16871	594	138T
16872	594	142I
16873	594	144tQr
16874	594	147W
16875	594	150aARv
16876	594	156L
16877	594	158A
16878	594	163L
16879	594	166Ew
16880	594	171Y
16881	595	9Y
16882	595	11Am
16883	595	14R
16884	595	16Gr
16885	595	41A
16886	595	45Te
16887	595	56G
16888	595	59Y
16889	595	62Rn
16890	595	66qIf
16891	595	70tNt
16892	595	74Y
16893	595	76Es
16894	595	80rNLrg
16895	595	90A
16896	595	105P
16897	595	107G
16898	595	127N
16899	595	131S
16900	595	138T
16901	595	142I
16902	595	144tQr
16903	595	147W
16904	595	150aARe
16905	595	156L
16906	595	158A
16907	595	163L
16908	595	166Ew
16909	595	171Y
16910	595	177Et
16911	595	180Q
16912	595	183P
16913	595	186K
16914	595	193Pv
16915	595	199A
16916	595	207G
16917	595	211A
16918	595	219R
16919	595	246A
16920	595	248V
16921	595	253E
16922	595	261V
16923	595	267P
16924	595	269P
16925	595	273R
16926	595	275E
16927	595	282Ip
16928	595	285V
16929	596	9Y
16930	596	11Am
16931	596	14R
16932	596	16Gr
16933	596	41A
16934	596	45Te
16935	596	56G
16936	596	59Y
16937	596	62Rn
16938	596	66qIf
16939	596	70tNt
16940	596	74Y
16941	596	76Es
16942	596	80rNLrg
16943	596	90A
16944	596	105P
16945	596	107G
16946	596	127N
16947	596	131S
16948	596	138T
16949	596	142I
16950	596	144tQr
16951	596	147W
16952	596	150aARv
16953	596	156L
16954	596	158A
16955	596	163L
16956	596	166Ew
16957	596	171Y
16958	596	177Et
16959	596	180Q
16960	596	183P
16961	596	186K
16962	596	193Pv
16963	596	199A
16964	596	207G
16965	596	211A
16966	596	219R
16967	596	246A
16968	596	248V
16969	596	253E
16970	596	261V
16971	596	267P
16972	596	269P
16973	596	273R
16974	596	275E
16975	596	282Ip
16976	596	285V
16977	597	9Y
16978	597	11Am
16979	597	14R
16980	597	16Gr
16981	597	41A
16982	597	45Te
16983	597	56G
16984	597	59Y
16985	597	62Re
16986	597	66qIf
16987	597	70tNt
16988	597	74Y
16989	597	76Es
16990	597	80rNLrg
16991	597	90A
16992	597	105P
16993	597	107G
16994	597	127N
16995	597	131S
16996	597	138T
16997	597	142I
16998	597	144tQr
16999	597	147W
17000	597	150aARv
17001	597	156L
17002	597	158A
17003	597	163L
17004	597	166Ew
17005	597	171Y
17006	597	177Et
17007	597	180Q
17008	598	9Y
17009	598	11Am
17010	598	14R
17011	598	16Gr
17012	598	41A
17013	598	45Te
17014	598	56G
17015	598	59Y
17016	598	62Rn
17017	598	66qIf
17018	598	70tNt
17019	598	74Y
17020	598	76Es
17021	598	80rNLrg
17022	598	90A
17023	598	105P
17024	598	107G
17025	598	127N
17026	598	131S
17027	598	138T
17028	598	142I
17029	598	144tQr
17030	598	147W
17031	598	150aARe
17032	598	156W
17033	598	158A
17034	598	163L
17035	598	166Ew
17036	598	171Y
17037	598	177Et
17038	598	180Q
17039	599	9Y
17040	599	11Am
17041	599	14R
17042	599	16Gr
17043	599	41A
17044	599	45Te
17045	599	56G
17046	599	59Y
17047	599	62Rn
17048	599	66qIf
17049	599	70tNt
17050	599	74Y
17051	599	76Es
17052	599	80rNLrg
17053	599	90A
17054	599	105P
17055	599	107G
17056	599	127N
17057	599	131S
17058	599	138T
17059	599	142I
17060	599	144tQr
17061	599	147W
17062	599	150aARv
17063	599	156L
17064	599	158A
17065	599	163E
17066	599	166Ew
17067	599	171Y
17068	599	177Et
17069	599	180Q
17070	599	183P
17071	599	186K
17072	599	193Pv
17073	599	199A
17074	599	207G
17075	599	211A
17076	599	219R
17077	599	246A
17078	599	248V
17079	599	253E
17080	599	261V
17081	599	267P
17082	599	269P
17083	599	273R
17084	599	275E
17085	599	282Ip
17086	599	285V
17087	600	9Y
17088	600	11Am
17089	600	14R
17090	600	16Gr
17091	600	41A
17092	600	45Te
17093	600	56G
17094	600	59Y
17095	600	62Re
17096	600	66qIf
17097	600	70tNt
17098	600	74Y
17099	600	76Es
17100	600	80rNLrg
17101	600	90A
17102	600	105P
17103	600	107G
17104	600	127N
17105	600	131S
17106	600	138T
17107	600	142I
17108	600	144tQr
17109	600	147W
17110	600	150aARv
17111	600	156L
17112	600	158A
17113	600	163L
17114	600	166Ew
17115	600	171Y
17116	600	177Et
17117	600	180Q
17118	601	9Y
17119	601	11Am
17120	601	14R
17121	601	16Gr
17122	601	41A
17123	601	45Te
17124	601	56G
17125	601	59Y
17126	601	62Rn
17127	601	66qIf
17128	601	70tNt
17129	601	74Y
17130	601	76Es
17131	601	80rNLrg
17132	601	90A
17133	601	105P
17134	601	107G
17135	601	127N
17136	601	131S
17137	601	138T
17138	601	142I
17139	601	144tQr
17140	601	147W
17141	601	150aARv
17142	601	156L
17143	601	158A
17144	601	163L
17145	601	166Ew
17146	601	171Y
17147	601	177Et
17148	601	180Q
17149	602	9Y
17150	602	11Am
17151	602	14R
17152	602	16Gr
17153	602	41A
17154	602	45Te
17155	602	56G
17156	602	59Y
17157	602	62Rn
17158	602	66qIf
17159	602	70tNt
17160	602	74Y
17161	602	76Es
17162	602	80rNLrg
17163	602	90A
17164	602	105P
17165	602	107G
17166	602	127N
17167	602	131R
17168	602	138T
17169	602	142I
17170	602	144tQr
17171	602	147W
17172	602	150aARv
17173	602	156R
17174	602	158A
17175	602	163L
17176	602	166Ew
17177	602	171Y
17178	602	177Et
17179	602	180Q
17180	603	9Y
17181	603	11Am
17182	603	14R
17183	603	16Gr
17184	603	41A
17185	603	45Ke
17186	603	56G
17187	603	59Y
17188	603	62Rn
17189	603	66qIf
17190	603	70tNt
17191	603	74Y
17192	603	76Es
17193	603	80rNLrg
17194	603	90A
17195	603	105P
17196	603	107G
17197	603	127N
17198	603	131S
17199	603	138T
17200	603	142I
17201	603	144tQr
17202	603	147W
17203	603	150aARv
17204	603	156L
17205	603	158A
17206	603	163L
17207	603	166Ew
17208	603	171Y
17209	603	177Et
17210	603	180Q
17211	604	9Y
17212	604	11Am
17213	604	14R
17214	604	16Gr
17215	604	41A
17216	604	45Te
17217	604	56G
17218	604	59Y
17219	604	62Rn
17220	604	66qIs
17221	604	70tNt
17222	604	74Y
17223	604	76Es
17224	604	80rNLrg
17225	604	90A
17226	604	105P
17227	604	107G
17228	604	127N
17229	604	131S
17230	604	138T
17231	604	142I
17232	604	144tQr
17233	604	147W
17234	604	150aARv
17235	604	156L
17236	604	158A
17237	604	163L
17238	604	166Ew
17239	604	171Y
17240	604	177Et
17241	604	180Q
17242	605	9Y
17243	605	11Am
17244	605	14R
17245	605	16Gr
17246	605	41A
17247	605	45Te
17248	605	56G
17249	605	59Y
17250	605	62Rn
17251	605	66qIf
17252	605	70tNt
17253	605	74Y
17254	605	76Es
17255	605	80rNLrg
17256	605	90A
17257	605	105P
17258	605	107G
17259	605	127N
17260	605	131S
17261	605	138T
17262	605	142I
17263	605	144tQr
17264	605	147W
17265	605	150aARe
17266	605	156L
17267	605	158A
17268	605	163L
17269	605	166Ew
17270	605	171H
17271	605	177Et
17272	605	180Q
17273	606	9Y
17274	606	11Am
17275	606	14R
17276	606	16Gr
17277	606	41A
17278	606	45Te
17279	606	56G
17280	606	59Y
17281	606	62Rn
17282	606	66qIf
17283	606	70tNt
17284	606	74Y
17285	606	76Es
17286	606	80rNLrg
17287	606	90A
17288	606	105P
17289	606	107G
17290	606	127N
17291	606	131S
17292	606	138T
17293	606	142I
17294	606	144tQr
17295	606	147W
17296	606	150aARv
17297	606	156L
17298	606	158A
17299	606	163L
17300	606	166Ew
17301	606	171Y
17302	606	177Et
17303	606	180Q
17304	607	9Y
17305	607	11Am
17306	607	14R
17307	607	16Gr
17308	607	41A
17309	607	45Te
17310	607	56G
17311	607	59Y
17312	607	62Rn
17313	607	66qIf
17314	607	70tNt
17315	607	74Y
17316	607	76Es
17317	607	80rNLrg
17318	607	90A
17319	607	105P
17320	607	107G
17321	607	127N
17322	607	131S
17323	607	138T
17324	607	142I
17325	607	144tQr
17326	607	147W
17327	607	150aARv
17328	607	156L
17329	607	158A
17330	607	163L
17331	607	166Ew
17332	607	171Y
17333	607	177Et
17334	607	180Q
17335	608	9Y
17336	608	11Am
17337	608	14R
17338	608	16Gr
17339	608	41A
17340	608	45Te
17341	608	56G
17342	608	59Y
17343	608	62Rn
17344	608	66qIf
17345	608	70tNt
17346	608	74Y
17347	608	76Es
17348	608	80rNLrg
17349	608	90A
17350	608	105P
17351	608	107G
17352	608	127N
17353	608	131S
17354	608	138T
17355	608	142I
17356	608	144tQr
17357	608	147W
17358	608	150aARv
17359	608	156L
17360	608	158A
17361	608	163L
17362	608	166Ew
17363	608	171H
17364	608	177Et
17365	608	180Q
17366	609	9Y
17367	609	11Am
17368	609	14R
17369	609	16Gr
17370	609	41A
17371	609	45Ee
17372	609	56G
17373	609	59Y
17374	609	62Rn
17375	609	66qIf
17376	609	70tNt
17377	609	74Y
17378	609	76Es
17379	609	80rNLrg
17380	609	90A
17381	609	105P
17382	609	107G
17383	609	127N
17384	609	131S
17385	609	138T
17386	609	142I
17387	609	144tQr
17388	609	147W
17389	609	150aARv
17390	609	156L
17391	609	158A
17392	609	163L
17393	609	166Ew
17394	609	171Y
17395	609	177Et
17396	609	180Q
17397	610	9Y
17398	610	11Am
17399	610	14R
17400	610	16Gr
17401	610	41A
17402	610	45Ee
17403	610	56G
17404	610	59Y
17405	610	62Rn
17406	610	66qIc
17407	610	70tNt
17408	610	74Y
17409	610	76Es
17410	610	80rNLrg
17411	610	90A
17412	610	105P
17413	610	107G
17414	610	127N
17415	610	131S
17416	610	138T
17417	610	142I
17418	610	144tQr
17419	610	147W
17420	610	150aARv
17421	610	156L
17422	610	158A
17423	610	163L
17424	610	166Ew
17425	610	171Y
17426	610	177Et
17427	610	180Q
17428	611	9Y
17429	611	11Am
17430	611	14R
17431	611	16Gr
17432	611	41A
17433	611	45Te
17434	611	56G
17435	611	59Y
17436	611	62Rn
17437	611	66qIf
17438	611	70tNt
17439	611	74Y
17440	611	76En
17441	611	80rNLrg
17442	611	90A
17443	611	105P
17444	611	107G
17445	611	127N
17446	611	131S
17447	611	138T
17448	611	142I
17449	611	144tQr
17450	611	147W
17451	611	150aARv
17452	611	156L
17453	611	158A
17454	611	163L
17455	611	166Ew
17456	611	171Y
17457	611	177Et
17458	611	180Q
17459	612	9Y
17460	612	11Am
17461	612	14R
17462	612	16Gr
17463	612	41A
17464	612	45Te
17465	612	56G
17466	612	59Y
17467	612	62Re
17468	612	66qIs
17469	612	70tNt
17470	612	74Y
17471	612	76Es
17472	612	80rNLrg
17473	612	90A
17474	612	105P
17475	612	107G
17476	612	127N
17477	612	131S
17478	612	138T
17479	612	142I
17480	612	144tQr
17481	612	147W
17482	612	150aARv
17483	612	156L
17484	612	158A
17485	612	163L
17486	612	166Ew
17487	612	171Y
17488	612	177Et
17489	612	180Q
17490	613	9Y
17491	613	11Am
17492	613	14R
17493	613	16Gr
17494	613	41A
17495	613	45Te
17496	613	56G
17497	613	59Y
17498	613	62Rn
17499	613	66qIf
17500	613	70tNt
17501	613	74D
17502	613	76Es
17503	613	80rNLrg
17504	613	90A
17505	613	105P
17506	613	107G
17507	613	127N
17508	613	131S
17509	613	138T
17510	613	142I
17511	613	144tQr
17512	613	147W
17513	613	150aARv
17514	613	156L
17515	613	158A
17516	613	163L
17517	613	166Ew
17518	613	171Y
17519	613	177Et
17520	613	180Q
17521	614	9Y
17522	614	11Am
17523	614	14R
17524	614	16Gr
17525	614	41A
17526	614	45Te
17527	614	56G
17528	614	59Y
17529	614	62Rn
17530	614	66qIf
17531	614	70tNt
17532	614	74Y
17533	614	76Es
17534	614	80rNLrg
17535	614	90A
17536	614	105P
17537	614	107G
17538	614	127N
17539	614	131S
17540	614	138T
17541	614	142I
17542	614	144tQr
17543	614	147W
17544	614	150aARv
17545	614	156L
17546	614	158A
17547	614	163L
17548	614	166Ew
17549	614	171Y
17550	614	177Et
17551	614	180Q
17552	615	9Y
17553	615	11Am
17554	615	14R
17555	615	16Gr
17556	615	41A
17557	615	45Te
17558	615	56G
17559	615	59Y
17560	615	62Rn
17561	615	66qIf
17562	615	70tNt
17563	615	74Y
17564	615	76Es
17565	615	80rNLrg
17566	615	90A
17567	615	105P
17568	615	107G
17569	615	127N
17570	615	131R
17571	615	138T
17572	615	142I
17573	615	144tQr
17574	615	147W
17575	615	150aARv
17576	615	156L
17577	615	158A
17578	615	163E
17579	615	166Ew
17580	615	171Y
17581	615	177Et
17582	615	180Q
17583	615	183P
17584	615	186K
17585	615	193Pv
17586	615	199A
17587	615	207G
17588	615	211A
17589	615	219R
17590	615	246A
17591	615	248V
17592	615	253E
17593	615	261V
17594	615	267P
17595	615	269P
17596	615	273R
17597	615	275E
17598	615	282Vp
17599	615	285V
17600	616	9Y
17601	616	11Am
17602	616	14R
17603	616	16Gr
17604	616	41A
17605	616	45Te
17606	616	56G
17607	616	59Y
17608	616	62Rn
17609	616	66qIf
17610	616	70tNt
17611	616	74Y
17612	616	76Es
17613	616	80rNLrg
17614	616	90A
17615	616	105P
17616	616	107G
17617	616	127N
17618	616	131S
17619	616	138T
17620	616	142I
17621	616	144tQr
17622	616	147W
17623	616	150aARv
17624	616	156L
17625	616	158A
17626	616	163L
17627	616	166Ew
17628	616	171Y
17629	616	177Et
17630	616	180Q
17631	617	9Y
17632	617	11Am
17633	617	14R
17634	617	16Gr
17635	617	41A
17636	617	45Te
17637	617	56G
17638	617	59Y
17639	617	62Rn
17640	617	66qIf
17641	617	70tNt
17642	617	74Y
17643	617	76Es
17644	617	80rNLrg
17645	617	90A
17646	617	105P
17647	617	107G
17648	617	127N
17649	617	131S
17650	617	138T
17651	617	142I
17652	617	144tQr
17653	617	147W
17654	617	150aARv
17655	617	156L
17656	617	158A
17657	617	163E
17658	617	166Ew
17659	617	171Y
17660	617	177Et
17661	617	180Q
17662	618	9Y
17663	618	11Am
17664	618	14R
17665	618	16Gr
17666	618	41A
17667	618	45Te
17668	618	56G
17669	618	59Y
17670	618	62Rn
17671	618	66qIf
17672	618	70tNt
17673	618	74Y
17674	618	76Es
17675	618	80rNLrg
17676	618	90A
17677	618	105P
17678	618	107G
17679	618	127N
17680	618	131S
17681	618	138T
17682	618	142I
17683	618	144tQr
17684	618	147W
17685	618	150aARv
17686	618	156L
17687	618	158A
17688	618	163L
17689	618	166Ew
17690	618	171Y
17691	618	177Et
17692	618	180Q
17693	619	9Y
17694	619	11Am
17695	619	14R
17696	619	16Gr
17697	619	41A
17698	619	45Te
17699	619	56G
17700	619	59Y
17701	619	62Rn
17702	619	66qIf
17703	619	70tNt
17704	619	74Y
17705	619	76Es
17706	619	80rNLrg
17707	619	90A
17708	619	105P
17709	619	107G
17710	619	127N
17711	619	131S
17712	619	138T
17713	619	142I
17714	619	144tQr
17715	619	147W
17716	619	150aARv
17717	619	156LT
17718	619	158A
17719	619	163L
17720	619	166Ew
17721	619	171Y
17722	619	177Et
17723	619	180Q
17724	620	9Y
17725	620	11Am
17726	620	14R
17727	620	16Gr
17728	620	41A
17729	620	45Te
17730	620	56G
17731	620	59Y
17732	620	62Rn
17733	620	66qIf
17734	620	70tNt
17735	620	74Y
17736	620	76Es
17737	620	80rNLrgd
17738	620	90A
17739	620	105P
17740	620	107G
17741	620	127N
17742	620	131S
17743	620	138T
17744	620	142I
17745	620	144tQr
17746	620	147W
17747	620	150aARv
17748	620	156L
17749	620	158A
17750	620	163L
17751	620	166Ew
17752	620	171Y
17753	620	177Et
17754	620	180Q
17755	621	9Y
17756	621	11Am
17757	621	14R
17758	621	16Gr
17759	621	41A
17760	621	45Te
17761	621	56G
17762	621	59Y
17763	621	62Rn
17764	621	66qIf
17765	621	70tNt
17766	621	74Y
17767	621	76Es
17768	621	80rNLrg
17769	621	90A
17770	621	105P
17771	621	107G
17772	621	127N
17773	621	131S
17774	621	138T
17775	621	142I
17776	621	144tQr
17777	621	147W
17778	621	150aARv
17779	621	156L
17780	621	158A
17781	621	163L
17782	621	166Ew
17783	621	171Y
17784	621	177Et
17785	621	180Q
17786	622	9H
17787	622	11Sv
17788	622	14R
17789	622	16Gr
17790	622	41A
17791	622	45Te
17792	622	56G
17793	622	59Y
17794	622	62Re
17795	622	66qIs
17796	622	70tNt
17797	622	74Y
17798	622	76Ed
17799	622	80rTLlr
17800	622	90A
17801	622	105P
17802	622	107G
17803	622	127N
17804	622	131S
17805	622	138T
17806	622	142I
17807	622	144tQr
17808	622	147W
17809	622	150aARv
17810	622	156D
17811	622	158A
17812	622	163T
17813	622	166Ew
17814	622	171Y
17815	622	177Et
17816	622	180Q
17817	622	183P
17818	622	186K
17819	622	193Pi
17820	622	199A
17821	622	207G
17822	622	211A
17823	622	219R
17824	622	246A
17825	622	248V
17826	622	253E
17827	622	261V
17828	622	267P
17829	622	269P
17830	622	273R
17831	622	275E
17832	622	282Ip
17833	622	285V
17834	623	9H
17835	623	11Sv
17836	623	14R
17837	623	16Gr
17838	623	41A
17839	623	45Te
17840	623	56G
17841	623	59Y
17842	623	62Re
17843	623	66qIs
17844	623	70tNt
17845	623	74Y
17846	623	76Ed
17847	623	80rTLlr
17848	623	90A
17849	623	105P
17850	623	107G
17851	623	127N
17852	623	131S
17853	623	138T
17854	623	142I
17855	623	144tQr
17856	623	147W
17857	623	150aARv
17858	623	156L
17859	623	158A
17860	623	163E
17861	623	166Ew
17862	623	171Y
17863	623	177Et
17864	623	180Q
17865	623	183P
17866	623	186K
17867	623	193Pi
17868	623	199A
17869	623	207G
17870	623	211A
17871	623	219R
17872	623	246A
17873	623	248V
17874	623	253E
17875	623	261V
17876	623	267P
17877	623	269P
17878	623	273R
17879	623	275E
17880	623	282Vp
17881	623	285V
17882	624	9Y
17883	624	11Sv
17884	624	14R
17885	624	16Gr
17886	624	41A
17887	624	45Ee
17888	624	56G
17889	624	59Y
17890	624	62Rn
17891	624	66qIc
17892	624	70tNt
17893	624	74Y
17894	624	76En
17895	624	80rIAlr
17896	624	90A
17897	624	105P
17898	624	107G
17899	624	127N
17900	624	131S
17901	624	138T
17902	624	142I
17903	624	144tQr
17904	624	147W
17905	624	150aARv
17906	624	156L
17907	624	158T
17908	624	163T
17909	624	166Ew
17910	624	171Y
17911	624	177Et
17912	624	180Q
17913	624	183P
17914	624	186K
17915	624	193Pi
17916	624	199A
17917	624	207G
17918	624	211A
17919	624	219R
17920	624	246A
17921	624	248V
17922	624	253E
17923	624	261V
17924	624	267P
17925	624	269P
17926	624	273R
17927	624	275E
17928	624	282Vp
17929	624	285V
17930	625	9Y
17931	625	11Sv
17932	625	14R
17933	625	16Gr
17934	625	41A
17935	625	45Ee
17936	625	56G
17937	625	59Y
17938	625	62Rn
17939	625	66qIc
17940	625	70tNt
17941	625	74Y
17942	625	76En
17943	625	80rTAlr
17944	625	90A
17945	625	105P
17946	625	107G
17947	625	127N
17948	625	131S
17949	625	138T
17950	625	142I
17951	625	144tQr
17952	625	147W
17953	625	150aARv
17954	625	156L
17955	625	158T
17956	625	163T
17957	625	166Ew
17958	625	171Y
17959	625	177Et
17960	625	180Q
17961	626	9Y
17962	626	11Sv
17963	626	14R
17964	626	16Gr
17965	626	41A
17966	626	45Ee
17967	626	56G
17968	626	59Y
17969	626	62Re
17970	626	66qIs
17971	626	70tNt
17972	626	74D
17973	626	76Es
17974	626	80rTAlr
17975	626	90A
17976	626	105P
17977	626	107G
17978	626	127N
17979	626	131S
17980	626	138T
17981	626	142I
17982	626	144tQr
17983	626	147W
17984	626	150aARv
17985	626	156L
17986	626	158T
17987	626	163T
17988	626	166Ew
17989	626	171Y
17990	626	177Et
17991	626	180Q
17992	627	9Y
17993	627	11Sv
17994	627	14R
17995	627	16Gr
17996	627	41A
17997	627	45Ee
17998	627	56G
17999	627	59Y
18000	627	62Re
18001	627	66qIc
18002	627	70tNt
18003	627	74Y
18004	627	76En
18005	627	80rTAlr
18006	627	90A
18007	627	105P
18008	627	107G
18009	627	127N
18010	627	131S
18011	627	138T
18012	627	142I
18013	627	144tQr
18014	627	147W
18015	627	150aARv
18016	627	156L
18017	627	158T
18018	627	163T
18019	627	166Ew
18020	627	171Y
18021	627	177Et
18022	627	180Q
18023	628	9Y
18024	628	11Av
18025	628	14R
18026	628	16Gr
18027	628	41A
18028	628	45Ee
18029	628	56G
18030	628	59Y
18031	628	62Rn
18032	628	66qIc
18033	628	70tNt
18034	628	74Y
18035	628	76En
18036	628	80rIAlr
18037	628	90A
18038	628	105P
18039	628	107G
18040	628	127N
18041	628	131S
18042	628	138T
18043	628	142I
18044	628	144tQr
18045	628	147W
18046	628	150aARv
18047	628	156L
18048	628	158T
18049	628	163T
18050	628	166Ew
18051	628	171Y
18052	628	177Et
18053	628	180Q
18054	628	183P
18055	628	186K
18056	628	193Pi
18057	628	199A
18058	628	207G
18059	628	211A
18060	628	219R
18061	628	246A
18062	628	248V
18063	628	253E
18064	628	261V
18065	628	267P
18066	628	269P
18067	628	273R
18068	629	9Y
18069	629	11Sv
18070	629	14R
18071	629	16Gr
18072	629	41A
18073	629	45Te
18074	629	56G
18075	629	59Y
18076	629	62Rn
18077	629	66qIf
18078	629	70tNt
18079	629	74Y
18080	629	76En
18081	629	80rIAlr
18082	629	90A
18083	629	105P
18084	629	107G
18085	629	127N
18086	629	131S
18087	629	138T
18088	629	142I
18089	629	144tQr
18090	629	147W
18091	629	150aARv
18092	629	156L
18093	629	158T
18094	629	163T
18095	629	166Ew
18096	629	171Y
18097	629	177Et
18098	629	180Q
18099	630	9Y
18100	630	11Sv
18101	630	14R
18102	630	16Gr
18103	630	41A
18104	630	45Ee
18105	630	56G
18106	630	59Y
18107	630	62Rn
18108	630	66qIc
18109	630	70tNt
18110	630	74D
18111	630	76Es
18112	630	80rNLrg
18113	630	90A
18114	630	105P
18115	630	107G
18116	630	127N
18117	630	131S
18118	630	138T
18119	630	142I
18120	630	144tQr
18121	630	147W
18122	630	150aARv
18123	630	156L
18124	630	158T
18125	630	163T
18126	630	166Ew
18127	630	171Y
18128	630	177Et
18129	630	180Q
18130	630	183P
18131	630	186K
18132	630	193Pi
18133	630	199A
18134	630	207G
18135	630	211A
18136	630	219R
18137	630	246A
18138	630	248V
18139	630	253E
18140	630	261V
18141	630	267P
18142	630	269P
18143	630	273R
18144	630	275E
18145	630	282Ip
18146	630	285V
18147	631	9Y
18148	631	11Sv
18149	631	14R
18150	631	16Gr
18151	631	41A
18152	631	45Ee
18153	631	56G
18154	631	59Y
18155	631	62Re
18156	631	66qIs
18157	631	70tNt
18158	631	74D
18159	631	76Es
18160	631	80rNLrg
18161	631	90A
18162	631	105P
18163	631	107G
18164	631	127N
18165	631	131S
18166	631	138T
18167	631	142I
18168	631	144tQr
18169	631	147W
18170	631	150aARv
18171	631	156L
18172	631	158T
18173	631	163T
18174	631	166Ew
18175	631	171Y
18176	631	177Et
18177	631	180Q
18178	631	183P
18179	631	186K
18180	631	193Pi
18181	631	199A
18182	631	207G
18183	631	211A
18184	631	219R
18185	631	246A
18186	631	248V
18187	631	253E
18188	631	261V
18189	631	267P
18190	631	269P
18191	631	273R
18192	631	275E
18193	631	282Ip
18194	631	285V
18195	632	9Y
18196	632	11Sv
18197	632	14R
18198	632	16Gr
18199	632	41A
18200	632	45Ee
18201	632	56G
18202	632	59Y
18203	632	62Rn
18204	632	66qIc
18205	632	70tNt
18206	632	74D
18207	632	76Es
18208	632	80rNLrg
18209	632	90A
18210	632	105P
18211	632	107G
18212	632	127N
18213	632	131S
18214	632	138T
18215	632	142I
18216	632	144tQr
18217	632	147W
18218	632	150aARv
18219	632	156L
18220	632	158T
18221	632	163T
18222	632	166Ew
18223	632	171Y
18224	632	177Et
18225	632	180Q
18226	632	183P
18227	632	186K
18228	632	193Pi
18229	632	199A
18230	632	207G
18231	632	211A
18232	632	219R
18233	632	246A
18234	632	248V
18235	632	253E
18236	632	261V
18237	632	267P
18238	632	269P
18239	632	273R
18240	632	275E
18241	632	282Ip
18242	632	285V
18243	633	9Y
18244	633	11Am
18245	633	14R
18246	633	16Gr
18247	633	41A
18248	633	45Ee
18249	633	56G
18250	633	59Y
18251	633	62Rn
18252	633	66qIc
18253	633	70tNt
18254	633	74D
18255	633	76Es
18256	633	80rNLrg
18257	633	90A
18258	633	105P
18259	633	107G
18260	633	127N
18261	633	131S
18262	633	138T
18263	633	142I
18264	633	144tQr
18265	633	147W
18266	633	150aARv
18267	633	156L
18268	633	158T
18269	633	163T
18270	633	166Ew
18271	633	171Y
18272	633	177Et
18273	633	180Q
18274	633	183P
18275	633	186K
18276	633	193Pi
18277	633	199A
18278	633	207G
18279	633	211A
18280	633	219R
18281	633	246A
18282	633	248V
18283	633	253E
18284	633	261V
18285	633	267P
18286	633	269P
18287	633	273R
18288	633	275E
18289	633	282Ip
18290	633	285V
18291	634	9Y
18292	634	11Sv
18293	634	14R
18294	634	16Gr
18295	634	41A
18296	634	45Ee
18297	634	56G
18298	634	59Y
18299	634	62Rn
18300	634	66qIc
18301	634	70tNt
18302	634	74Y
18303	634	76Es
18304	634	80rNLrg
18305	634	90A
18306	634	105P
18307	634	107G
18308	634	127N
18309	634	131S
18310	634	138T
18311	634	142I
18312	634	144tQr
18313	634	147W
18314	634	150aARv
18315	634	156L
18316	634	158T
18317	634	163T
18318	634	166Ew
18319	634	171Y
18320	634	177Et
18321	634	180Q
18322	634	183P
18323	634	186K
18324	634	193Pi
18325	634	199A
18326	634	207G
18327	634	211A
18328	634	219R
18329	634	246A
18330	634	248V
18331	634	253E
18332	634	261V
18333	634	267P
18334	634	269P
18335	634	273R
18336	634	275E
18337	634	282Ip
18338	634	285V
18339	635	9Y
18340	635	11Sv
18341	635	14R
18342	635	16Gr
18343	635	41A
18344	635	45Ee
18345	635	56G
18346	635	59Y
18347	635	62Rn
18348	635	66qIc
18349	635	70tNt
18350	635	74D
18351	635	76Es
18352	635	80rNLrg
18353	635	90A
18354	635	105P
18355	635	107G
18356	635	127N
18357	635	131S
18358	635	138T
18359	635	142I
18360	635	144tQr
18361	635	147W
18362	635	150aARv
18363	635	156L
18364	635	158T
18365	635	163T
18366	635	166Ew
18367	635	171Y
18368	635	177Et
18369	635	180Q
18370	635	183P
18371	635	186K
18372	635	193Pi
18373	635	199A
18374	635	207G
18375	635	211A
18376	635	219R
18377	635	246A
18378	635	248V
18379	635	253E
18380	635	261V
18381	635	267P
18382	635	269P
18383	635	273R
18384	635	275E
18385	635	282Ip
18386	635	285V
18387	636	9Y
18388	636	11Sv
18389	636	14R
18390	636	16Gr
18391	636	41A
18392	636	45Ee
18393	636	56G
18394	636	59Y
18395	636	62Rn
18396	636	66qIc
18397	636	70tNt
18398	636	74Y
18399	636	76Es
18400	636	80rNLrg
18401	636	90A
18402	636	105P
18403	636	107G
18404	636	127N
18405	636	131S
18406	636	138T
18407	636	142I
18408	636	144tQr
18409	636	147W
18410	636	150aARv
18411	636	156L
18412	636	158T
18413	636	163T
18414	636	166Ew
18415	636	171Y
18416	636	177Et
18417	636	180Q
18418	637	9Y
18419	637	11Sv
18420	637	14R
18421	637	16Gr
18422	637	41A
18423	637	45Ee
18424	637	56G
18425	637	59Y
18426	637	62Re
18427	637	66qIs
18428	637	70tNt
18429	637	74Y
18430	637	76Es
18431	637	80rNLrg
18432	637	90A
18433	637	105P
18434	637	107G
18435	637	127N
18436	637	131S
18437	637	138T
18438	637	142I
18439	637	144tQr
18440	637	147W
18441	637	150aARv
18442	637	156R
18443	637	158T
18444	637	163T
18445	637	166Ew
18446	637	171Y
18447	637	177Et
18448	637	180Q
18449	637	183P
18450	637	186K
18451	637	193Pi
18452	637	199A
18453	637	207G
18454	637	211A
18455	637	219R
18456	637	246A
18457	637	248V
18458	637	253E
18459	637	261V
18460	637	267P
18461	637	269P
18462	637	273R
18463	637	275E
18464	637	282Ip
18465	637	285V
18466	638	9Y
18467	638	11Sv
18468	638	14R
18469	638	16Gr
18470	638	41A
18471	638	45Ee
18472	638	56G
18473	638	59Y
18474	638	62Rn
18475	638	66qIc
18476	638	70tNt
18477	638	74D
18478	638	76Es
18479	638	80rNLrg
18480	638	90A
18481	638	105P
18482	638	107G
18483	638	127N
18484	638	131S
18485	638	138T
18486	638	142I
18487	638	144tQr
18488	638	147W
18489	638	150aARv
18490	638	156L
18491	638	158T
18492	638	163T
18493	638	166Ew
18494	638	171Y
18495	638	177Et
18496	638	180Q
18497	638	183P
18498	638	186K
18499	638	193Pi
18500	638	199A
18501	638	207G
18502	638	211A
18503	638	219R
18504	638	246A
18505	638	248V
18506	638	253E
18507	638	261V
18508	638	267P
18509	638	269P
18510	638	273R
18511	638	275E
18512	638	282Ip
18513	638	285V
18514	639	9Y
18515	639	11Sv
18516	639	14R
18517	639	16Gr
18518	639	41A
18519	639	45Ee
18520	639	56G
18521	639	59Y
18522	639	62Rn
18523	639	66qIy
18524	639	70tNt
18525	639	74D
18526	639	76Es
18527	639	80rNLrg
18528	639	90A
18529	639	105P
18530	639	107G
18531	639	127N
18532	639	131S
18533	639	138T
18534	639	142I
18535	639	144tQr
18536	639	147W
18537	639	150aARv
18538	639	156L
18539	639	158T
18540	639	163T
18541	639	166Ew
18542	639	171Y
18543	639	177Et
18544	639	180Q
18545	639	183P
18546	639	186K
18547	639	193Pi
18548	639	199A
18549	639	207G
18550	639	211A
18551	639	219R
18552	639	246A
18553	639	248V
18554	639	253E
18555	639	261V
18556	639	267P
18557	639	269P
18558	639	273R
18559	639	275E
18560	639	282Ip
18561	639	285V
18562	640	9Y
18563	640	11Sv
18564	640	14R
18565	640	16Gr
18566	640	41A
18567	640	45Ee
18568	640	56G
18569	640	59Y
18570	640	62Rn
18571	640	66qIc
18572	640	70tNt
18573	640	74Y
18574	640	76Es
18575	640	80rNLrg
18576	640	90A
18577	640	105P
18578	640	107G
18579	640	127N
18580	640	131S
18581	640	138T
18582	640	142I
18583	640	144tQr
18584	640	147W
18585	640	150aARv
18586	640	156R
18587	640	158T
18588	640	163T
18589	640	166Ew
18590	640	171Y
18591	640	177Et
18592	640	180Q
18593	640	183P
18594	640	186K
18595	640	193Pi
18596	640	199A
18597	640	207G
18598	641	9D
18599	641	11Av
18600	641	14R
18601	641	16Gr
18602	641	41A
18603	641	45Ee
18604	641	56G
18605	641	59Y
18606	641	62Rn
18607	641	66qIc
18608	641	70tNt
18609	641	74D
18610	641	76Es
18611	641	80rNLrg
18612	641	90A
18613	641	105P
18614	641	107G
18615	641	127N
18616	641	131S
18617	641	138T
18618	641	142I
18619	641	144tQr
18620	641	147W
18621	641	150aARv
18622	641	156L
18623	641	158T
18624	641	163T
18625	641	166Ew
18626	641	171Y
18627	641	177Et
18628	641	180Q
18629	642	9Y
18630	642	11Sv
18631	642	14R
18632	642	16Gr
18633	642	41A
18634	642	45Ee
18635	642	56G
18636	642	59Y
18637	642	62Re
18638	642	66qIs
18639	642	70tNt
18640	642	74Y
18641	642	76Es
18642	642	80rNLrg
18643	642	90A
18644	642	105P
18645	642	107G
18646	642	127N
18647	642	131S
18648	642	138T
18649	642	142I
18650	642	144tQr
18651	642	147W
18652	642	150aARv
18653	642	156L
18654	642	158T
18655	642	163T
18656	642	166Ew
18657	642	171Y
18658	642	177Et
18659	642	180Q
18660	643	9Y
18661	643	11Sv
18662	643	14R
18663	643	16Gr
18664	643	41A
18665	643	45Ee
18666	643	56G
18667	643	59Y
18668	643	62Rn
18669	643	66qIc
18670	643	70tNt
18671	643	74D
18672	643	76Es
18673	643	80rNLrg
18674	643	90A
18675	643	105P
18676	643	107G
18677	643	127N
18678	643	131S
18679	643	138T
18680	643	142I
18681	643	144tQr
18682	643	147W
18683	643	150aARv
18684	643	156L
18685	643	158T
18686	643	163T
18687	643	166Ew
18688	643	171Y
18689	643	177Et
18690	643	180Q
18691	644	9Y
18692	644	11Sv
18693	644	14R
18694	644	16Gr
18695	644	41A
18696	644	45Ee
18697	644	56G
18698	644	59Y
18699	644	62Rn
18700	644	66qIc
18701	644	70tNt
18702	644	74D
18703	644	76Es
18704	644	80rNLrg
18705	644	90A
18706	644	105P
18707	644	107G
18708	644	127N
18709	644	131S
18710	644	138T
18711	644	142I
18712	644	144tQr
18713	644	147W
18714	644	150aARv
18715	644	156L
18716	644	158T
18717	644	163T
18718	644	166Ew
18719	644	171Y
18720	644	177Et
18721	644	180Q
18722	645	9Y
18723	645	11Sv
18724	645	14R
18725	645	16Gr
18726	645	41A
18727	645	45Ee
18728	645	56G
18729	645	59Y
18730	645	62Rn
18731	645	66qIy
18732	645	70tNt
18733	645	74D
18734	645	76Es
18735	645	80rNLrg
18736	645	90A
18737	645	105P
18738	645	107G
18739	645	127N
18740	645	131S
18741	645	138T
18742	645	142I
18743	645	144tQr
18744	645	147W
18745	645	150aARv
18746	645	156L
18747	645	158T
18748	645	163T
18749	645	166Ew
18750	645	171Y
18751	645	177Et
18752	645	180Q
18753	646	9Y
18754	646	11Sv
18755	646	14R
18756	646	16Gr
18757	646	41A
18758	646	45Ee
18759	646	56G
18760	646	59Y
18761	646	62Rn
18762	646	66qIy
18763	646	70tNt
18764	646	74D
18765	646	76Es
18766	646	80rNLrg
18767	646	90A
18768	646	105P
18769	646	107G
18770	646	127N
18771	646	131S
18772	646	138T
18773	646	142I
18774	646	144tQr
18775	646	147W
18776	646	150aARv
18777	646	156L
18778	646	158T
18779	646	163T
18780	646	166Ew
18781	646	171Y
18782	646	177Et
18783	646	180Q
18784	647	9Y
18785	647	11Sv
18786	647	14R
18787	647	16Gr
18788	647	41A
18789	647	45Ee
18790	647	56G
18791	647	59Y
18792	647	62Rn
18793	647	66qIc
18794	647	70tNt
18795	647	74D
18796	647	76Es
18797	647	80rNLrg
18798	647	90A
18799	647	105P
18800	647	107G
18801	647	127N
18802	647	131S
18803	647	138T
18804	647	142I
18805	647	144tQr
18806	647	147W
18807	647	150aARe
18808	647	156W
18809	647	158T
18810	647	163T
18811	647	166Ew
18812	647	171Y
18813	647	177Et
18814	647	180Q
18815	648	9Y
18816	648	11Sv
18817	648	14R
18818	648	16Gr
18819	648	41A
18820	648	45Te
18821	648	56G
18822	648	59Y
18823	648	62Rn
18824	648	66qIc
18825	648	70tNt
18826	648	74D
18827	648	76Es
18828	648	80rNLrg
18829	648	90A
18830	648	105P
18831	648	107G
18832	648	127N
18833	648	131S
18834	648	138T
18835	648	142I
18836	648	144tQr
18837	648	147W
18838	648	150aARv
18839	648	156L
18840	648	158T
18841	648	163T
18842	648	166Ew
18843	648	171Y
18844	648	177Et
18845	648	180Q
18846	649	9Y
18847	649	11Sv
18848	649	14R
18849	649	16Gr
18850	649	41A
18851	649	45Ee
18852	649	56G
18853	649	59Y
18854	649	62Rn
18855	649	66qIy
18856	649	70tNt
18857	649	74Y
18858	649	76En
18859	649	80rNLrg
18860	649	90A
18861	649	105P
18862	649	107G
18863	649	127N
18864	649	131S
18865	649	138T
18866	649	142I
18867	649	144tQr
18868	649	147W
18869	649	150aARv
18870	649	156L
18871	649	158T
18872	649	163T
18873	649	166Ew
18874	649	171Y
18875	649	177Et
18876	649	180Q
18877	650	9Y
18878	650	11Sv
18879	650	14R
18880	650	16Gr
18881	650	41A
18882	650	45Ee
18883	650	56G
18884	650	59Y
18885	650	62Rn
18886	650	66qIc
18887	650	70tNt
18888	650	74D
18889	650	76Es
18890	650	80rNLrg
18891	650	90A
18892	650	105P
18893	650	107G
18894	650	127N
18895	650	131S
18896	650	138T
18897	650	142I
18898	650	144tQr
18899	650	147W
18900	650	150aARv
18901	650	156L
18902	650	158A
18903	650	163T
18904	650	166Ew
18905	650	171Y
18906	650	177Et
18907	650	180Q
18908	651	9Y
18909	651	11Sv
18910	651	14R
18911	651	16Gr
18912	651	41A
18913	651	45Ee
18914	651	56G
18915	651	59Y
18916	651	62Re
18917	651	66qIc
18918	651	70tNt
18919	651	74D
18920	651	76Es
18921	651	80rNLrg
18922	651	90A
18923	651	105P
18924	651	107G
18925	651	127N
18926	651	131S
18927	651	138T
18928	651	142I
18929	651	144tQr
18930	651	147W
18931	651	150aARv
18932	651	156L
18933	651	158T
18934	651	163T
18935	651	166Ew
18936	651	171Y
18937	651	177Et
18938	651	180Q
18939	652	9Y
18940	652	11Sv
18941	652	14R
18942	652	16Gr
18943	652	41A
18944	652	45Ee
18945	652	56G
18946	652	59Y
18947	652	62Re
18948	652	66qIs
18949	652	70tNt
18950	652	74D
18951	652	76Es
18952	652	80rNLrg
18953	652	90A
18954	652	105P
18955	652	107G
18956	652	127N
18957	652	131S
18958	652	138T
18959	652	142I
18960	652	144tRr
18961	652	147W
18962	652	150aARv
18963	652	156L
18964	652	158
18965	652	163T
18966	652	166Ew
18967	652	171Y
18968	652	177Et
18969	652	180Q
18970	653	9Y
18971	653	11Sv
18972	653	14R
18973	653	16Gr
18974	653	41A
18975	653	45Ee
18976	653	56G
18977	653	59Y
18978	653	62Rn
18979	653	66qIc
18980	653	70tNt
18981	653	74D
18982	653	76Es
18983	653	80rNLrg
18984	653	90A
18985	653	105P
18986	653	107G
18987	653	127N
18988	653	131S
18989	653	138T
18990	653	142I
18991	653	144tQr
18992	653	147W
18993	653	150aARv
18994	653	156L
18995	653	158T
18996	653	163T
18997	653	166Ew
18998	653	171Y
18999	653	177Et
19000	653	180Q
19001	653	183P
19002	653	186K
19003	653	193Pi
19004	653	199A
19005	653	207G
19006	653	211A
19007	653	219R
19008	653	246A
19009	653	248V
19010	653	253E
19011	653	261V
19012	653	267P
19013	653	269P
19014	653	273R
19015	654	9H
19016	654	11Am
19017	654	14R
19018	654	16Gr
19019	654	41T
19020	654	45Ke
19021	654	56G
19022	654	59Y
19023	654	62Re
19024	654	66qIs
19025	654	70tNt
19026	654	74Y
19027	654	76Es
19028	654	80rNLrg
19029	654	90A
19030	654	105P
19031	654	107G
19032	654	127N
19033	654	131R
19034	654	138T
19035	654	142I
19036	654	144SQr
19037	654	147L
19038	654	150aARv
19039	654	156L
19040	654	158A
19041	654	163E
19042	654	166Ew
19043	654	171Y
19044	654	177Dk
19045	654	180E
19046	654	183P
19047	654	186K
19048	654	193Pi
19049	654	199A
19050	654	207G
19051	654	211A
19052	654	219R
19053	654	246A
19054	654	248V
19055	654	253E
19056	654	261V
19057	654	267P
19058	654	269P
19059	654	273R
19060	654	275E
19061	654	282Vp
19062	654	285V
19063	655	9H
19064	655	11Sv
19065	655	14R
19066	655	16Gr
19067	655	41T
19068	655	45Ke
19069	655	56G
19070	655	59Y
19071	655	62Re
19072	655	66qIs
19073	655	70tNt
19074	655	74Y
19075	655	76Es
19076	655	80rNLrg
19077	655	90A
19078	655	105P
19079	655	107G
19080	655	127N
19081	655	131R
19082	655	138T
19083	655	142I
19084	655	144tQr
19085	655	147W
19086	655	150aARv
19087	655	156L
19088	655	158A
19089	655	163E
19090	655	166Ew
19091	655	171Y
19092	655	177Et
19093	655	180Q
19094	655	183P
19095	655	186K
19096	655	193Pi
19097	655	199A
19098	655	207G
19099	655	211A
19100	655	219R
19101	655	246A
19102	655	248V
19103	655	253E
19104	655	261V
19105	655	267P
19106	655	269P
19107	655	273R
19108	655	275E
19109	655	282Vp
19110	655	285V
19111	656	9H
19112	656	11Sv
19113	656	14R
19114	656	16Gr
19115	656	41T
19116	656	45Ke
19117	656	56G
19118	656	59Y
19119	656	62Re
19120	656	66qIs
19121	656	70tNt
19122	656	74Y
19123	656	76Es
19124	656	80rNLrg
19125	656	90A
19126	656	105P
19127	656	107G
19128	656	127N
19129	656	131R
19130	656	138T
19131	656	142I
19132	656	144tQr
19133	656	147W
19134	656	150aARv
19135	656	156L
19136	656	158A
19137	656	163E
19138	656	166Ew
19139	656	171Y
19140	656	177Et
19141	656	180Q
19142	656	183P
19143	656	186K
19144	656	193Pi
19145	656	199A
19146	656	207G
19147	656	211A
19148	656	219R
19149	656	246A
19150	656	248V
19151	656	253E
19152	656	261V
19153	656	267P
19154	656	269P
19155	656	273R
19156	656	275E
19157	656	282Vp
19158	656	285V
19159	657	9H
19160	657	11Sv
19161	657	14R
19162	657	16Gr
19163	657	41T
19164	657	45Ke
19165	657	56G
19166	657	59Y
19167	657	62Re
19168	657	66qIs
19169	657	70tNt
19170	657	74Y
19171	657	76Es
19172	657	80rNLrg
19173	657	90A
19174	657	105P
19175	657	107G
19176	657	127N
19177	657	131R
19178	657	138T
19179	657	142I
19180	657	144tQr
19181	657	147W
19182	657	150aARv
19183	657	156L
19184	657	158A
19185	657	163E
19186	657	166Ew
19187	657	171Y
19188	657	177Et
19189	657	180Q
19190	657	183P
19191	657	186K
19192	657	193Pi
19193	657	199A
19194	657	207G
19195	657	211A
19196	657	219R
19197	657	246A
19198	657	248V
19199	657	253E
19200	657	261V
19201	657	267P
19202	657	269P
19203	657	273R
19204	657	275E
19205	657	282Vp
19206	657	285V
19207	658	9H
19208	658	11Sv
19209	658	14R
19210	658	16Gr
19211	658	41T
19212	658	45Ke
19213	658	56G
19214	658	59Y
19215	658	62Re
19216	658	66qIs
19217	658	70tNt
19218	658	74Y
19219	658	76Es
19220	658	80rNLrg
19221	658	90A
19222	658	105P
19223	658	107G
19224	658	127N
19225	658	131R
19226	658	138T
19227	658	142I
19228	658	144tQr
19229	658	147W
19230	658	150aARe
19231	658	156L
19232	658	158A
19233	658	163L
19234	658	166Ew
19235	658	171Y
19236	658	177Et
19237	658	180Q
19238	658	183P
19239	658	186K
19240	658	193Pi
19241	658	199A
19242	658	207G
19243	658	211A
19244	658	219R
19245	658	246A
19246	658	248V
19247	658	253E
19248	658	261V
19249	658	267P
19250	658	269P
19251	658	273R
19252	658	275E
19253	658	282Vp
19254	658	285V
19255	659	9H
19256	659	11Sv
19257	659	14R
19258	659	16Gr
19259	659	41T
19260	659	45Ke
19261	659	56G
19262	659	59Y
19263	659	62Re
19264	659	66qIs
19265	659	70tNt
19266	659	74Y
19267	659	76Es
19268	659	80rNLrg
19269	659	90A
19270	659	105P
19271	659	107G
19272	659	127N
19273	659	131R
19274	659	138T
19275	659	142I
19276	659	144tQr
19277	659	147W
19278	659	150aARv
19279	659	156L
19280	659	158A
19281	659	163E
19282	659	166Ew
19283	659	171Y
19284	659	177Et
19285	659	180Q
19286	659	183P
19287	659	186K
19288	659	193Pi
19289	659	199A
19290	659	207G
19291	659	211A
19292	659	219R
19293	659	246A
19294	659	248V
19295	659	253E
19296	659	261V
19297	659	267P
19298	659	269P
19299	659	273R
19300	659	275E
19301	659	282Vp
19302	659	285V
19303	660	9H
19304	660	11Am
19305	660	14R
19306	660	16Gr
19307	660	41T
19308	660	45Ke
19309	660	56G
19310	660	59Y
19311	660	62Re
19312	660	66qIf
19313	660	70tNt
19314	660	74Y
19315	660	76Es
19316	660	80rNLrg
19317	660	90A
19318	660	105P
19319	660	107G
19320	660	127N
19321	660	131R
19322	660	138T
19323	660	142I
19324	660	144SQr
19325	660	147L
19326	660	150aARv
19327	660	156L
19328	660	158A
19329	660	163E
19330	660	166Ew
19331	660	171Y
19332	660	177Dk
19333	660	180E
19334	660	183P
19335	660	186K
19336	660	193Pi
19337	660	199A
19338	660	207G
19339	660	211A
19340	660	219R
19341	660	246A
19342	660	248V
19343	660	253E
19344	660	261V
19345	660	267P
19346	660	269P
19347	660	273R
19348	660	275E
19349	660	282Vp
19350	660	285V
19351	661	9H
19352	661	11Sv
19353	661	14R
19354	661	16Gr
19355	661	41T
19356	661	45Ke
19357	661	56G
19358	661	59Y
19359	661	62Rn
19360	661	66qIf
19361	661	70tNt
19362	661	74Y
19363	661	76Es
19364	661	80rNLrg
19365	661	90A
19366	661	105P
19367	661	107G
19368	661	127N
19369	661	131R
19370	661	138T
19371	661	142I
19372	661	144tQr
19373	661	147W
19374	661	150aARv
19375	661	156L
19376	661	158A
19377	661	163E
19378	661	166Ew
19379	661	171Y
19380	661	177Et
19381	661	180Q
19382	661	183P
19383	661	186K
19384	661	193Pi
19385	661	199A
19386	661	207G
19387	661	211A
19388	661	219R
19389	661	246A
19390	661	248V
19391	661	253E
19392	661	261V
19393	661	267P
19394	661	269P
19395	661	273R
19396	661	275E
19397	661	282Vp
19398	661	285V
19399	662	9H
19400	662	11Sv
19401	662	14R
19402	662	16Gr
19403	662	41T
19404	662	45Ke
19405	662	56G
19406	662	59Y
19407	662	62Re
19408	662	66qIs
19409	662	70tNt
19410	662	74Y
19411	662	76Es
19412	662	80rNLrg
19413	662	90A
19414	662	105P
19415	662	107G
19416	662	127N
19417	662	131R
19418	662	138T
19419	662	142I
19420	662	144tQr
19421	662	147W
19422	662	150aARv
19423	662	156L
19424	662	158A
19425	662	163E
19426	662	166Ew
19427	662	171Y
19428	662	177Et
19429	662	180Q
19430	663	9Y
19431	663	11Am
19432	663	14R
19433	663	16Gr
19434	663	41T
19435	663	45Ke
19436	663	56G
19437	663	59Y
19438	663	62Re
19439	663	66qIs
19440	663	70tNt
19441	663	74Y
19442	663	76Es
19443	663	80rNLrg
19444	663	90A
19445	663	105P
19446	663	107G
19447	663	127N
19448	663	131R
19449	663	138T
19450	663	142I
19451	663	144SQr
19452	663	147L
19453	663	150aARv
19454	663	156L
19455	663	158A
19456	663	163E
19457	663	166Ew
19458	663	171Y
19459	663	177Dk
19460	663	180E
19461	664	9H
19462	664	11Sv
19463	664	14R
19464	664	16Gr
19465	664	41T
19466	664	45Ke
19467	664	56G
19468	664	59Y
19469	664	62Re
19470	664	66qIs
19471	664	70tNt
19472	664	74Y
19473	664	76Es
19474	664	80rNLrg
19475	664	90A
19476	664	105P
19477	664	107G
19478	664	127N
19479	664	131R
19480	664	138T
19481	664	142I
19482	664	144tQr
19483	664	147W
19484	664	150aARv
19485	664	156L
19486	664	158A
19487	664	163E
19488	664	166Ew
19489	664	171Y
19490	664	177Et
19491	664	180Q
19492	665	9Y
19493	665	11Am
19494	665	14R
19495	665	16Gr
19496	665	41A
19497	665	45Ee
19498	665	56G
19499	665	59Y
19500	665	62Re
19501	665	66qIs
19502	665	70tNt
19503	665	74Y
19504	665	76Es
19505	665	80rNLrg
19506	665	90A
19507	665	105P
19508	665	107G
19509	665	127N
19510	665	131R
19511	665	138T
19512	665	142I
19513	665	144sQr
19514	665	147L
19515	665	150aARv
19516	665	156L
19517	665	158A
19518	665	163E
19519	665	166Ew
19520	665	171Y
19521	665	177Dk
19522	665	180E
19523	666	9H
19524	666	11Sv
19525	666	14R
19526	666	16Gr
19527	666	41T
19528	666	45Ke
19529	666	56G
19530	666	59Y
19531	666	62Re
19532	666	66qIf
19533	666	70tNt
19534	666	74Y
19535	666	76En
19536	666	80rIAlr
19537	666	90A
19538	666	105P
19539	666	107G
19540	666	127N
19541	666	131R
19542	666	138T
19543	666	142I
19544	666	144tQr
19545	666	147W
19546	666	150aARv
19547	666	156L
19548	666	158A
19549	666	163E
19550	666	166Ew
19551	666	171Y
19552	666	177Et
19553	666	180Q
19554	667	9H
19555	667	11Am
19556	667	14R
19557	667	16Gr
19558	667	41T
19559	667	45Ke
19560	667	56G
19561	667	59Y
19562	667	62Re
19563	667	66qIs
19564	667	70tNt
19565	667	74Y
19566	667	76Es
19567	667	80rNLrg
19568	667	90A
19569	667	105P
19570	667	107G
19571	667	127N
19572	667	131R
19573	667	138T
19574	667	142I
19575	667	144tQr
19576	667	147W
19577	667	150aARv
19578	667	156L
19579	667	158A
19580	667	163E
19581	667	166Ew
19582	667	171Y
19583	667	177Dk
19584	667	180E
19585	668	9H
19586	668	11Am
19587	668	14R
19588	668	16Gr
19589	668	41T
19590	668	45Ke
19591	668	56G
19592	668	59Y
19593	668	62Re
19594	668	66qIs
19595	668	70tNt
19596	668	74Y
19597	668	76Es
19598	668	80rNLrg
19599	668	90A
19600	668	105P
19601	668	107G
19602	668	127N
19603	668	131R
19604	668	138T
19605	668	142I
19606	668	144tQr
19607	668	147W
19608	668	150aARe
19609	668	156R
19610	668	158A
19611	668	163E
19612	668	166Dw
19613	668	171Y
19614	668	177Dk
19615	668	180E
19616	669	9H
19617	669	11Am
19618	669	14R
19619	669	16Gr
19620	669	41T
19621	669	45Ke
19622	669	56G
19623	669	59Y
19624	669	62Re
19625	669	66qIs
19626	669	70tNt
19627	669	74Y
19628	669	76Es
19629	669	80rNLrg
19630	669	90A
19631	669	105P
19632	669	107G
19633	669	127N
19634	669	131R
19635	669	138T
19636	669	142I
19637	669	144tQr
19638	669	147W
19639	669	150aARe
19640	669	156R
19641	669	158A
19642	669	163E
19643	669	166Ew
19644	669	171Y
19645	669	177Dk
19646	669	180E
19647	670	9H
19648	670	11Sv
19649	670	14R
19650	670	16Gr
19651	670	41T
19652	670	45Ke
19653	670	56G
19654	670	59Y
19655	670	62Re
19656	670	66qIs
19657	670	70tNt
19658	670	74Y
19659	670	76Es
19660	670	80rNLrg
19661	670	90A
19662	670	105P
19663	670	107G
19664	670	127N
19665	670	131R
19666	670	138T
19667	670	142I
19668	670	144tQr
19669	670	147W
19670	670	150aARv
19671	670	156L
19672	670	158A
19673	670	163E
19674	670	166Ew
19675	670	171Y
19676	670	177Et
19677	670	180Q
19678	671	9H
19679	671	11Sv
19680	671	14R
19681	671	16Gr
19682	671	41T
19683	671	45Ke
19684	671	56G
19685	671	59Y
19686	671	62Re
19687	671	66qIs
19688	671	70tNt
19689	671	74Y
19690	671	76En
19691	671	80rIAlr
19692	671	90A
19693	671	105P
19694	671	107G
19695	671	127N
19696	671	131R
19697	671	138T
19698	671	142I
19699	671	144tQr
19700	671	147W
19701	671	150aARv
19702	671	156L
19703	671	158A
19704	671	163E
19705	671	166Ew
19706	671	171Y
19707	671	177Et
19708	671	180Q
19709	672	9H
19710	672	11Sv
19711	672	14R
19712	672	16Gr
19713	672	41T
19714	672	45Ke
19715	672	56G
19716	672	59Y
19717	672	62Re
19718	672	66qIs
19719	672	70tNt
19720	672	74Y
19721	672	76Es
19722	672	80rNLrg
19723	672	90A
19724	672	105P
19725	672	107G
19726	672	127N
19727	672	131R
19728	672	138T
19729	672	142I
19730	672	144tQr
19731	672	147W
19732	672	150aARv
19733	672	156L
19734	672	158A
19735	672	163E
19736	672	166Ew
19737	672	171Y
19738	672	177Et
19739	672	180Q
19740	673	9Y
19741	673	11Am
19742	673	14R
19743	673	16Gr
19744	673	41T
19745	673	45Ma
19746	673	56G
19747	673	59Y
19748	673	62Re
19749	673	66qIs
19750	673	70tNt
19751	673	74Y
19752	673	76Es
19753	673	80rNLrg
19754	673	90A
19755	673	105P
19756	673	107G
19757	673	127N
19758	673	131R
19759	673	138T
19760	673	142I
19761	673	144sQr
19762	673	147L
19763	673	150aARv
19764	673	156L
19765	673	158A
19766	673	163E
19767	673	166Ew
19768	673	171Y
19769	673	177Dk
19770	673	180E
19771	674	9H
19772	674	11Am
19773	674	14R
19774	674	16Gr
19775	674	41T
19776	674	45Ke
19777	674	56G
19778	674	59Y
19779	674	62Re
19780	674	66qIs
19781	674	70tNt
19782	674	74Y
19783	674	76Es
19784	674	80rNLrg
19785	674	90A
19786	674	105P
19787	674	107G
19788	674	127N
19789	674	131R
19790	674	138T
19791	674	142I
19792	674	144sQr
19793	674	147W
19794	674	150aARe
19795	674	156R
19796	674	158A
19797	674	163E
19798	674	166Ew
19799	674	171Y
19800	674	177Dk
19801	674	180E
19802	675	9H
19803	675	11Sv
19804	675	14R
19805	675	16Gr
19806	675	41T
19807	675	45Ke
19808	675	56G
19809	675	59Y
19810	675	62Re
19811	675	66qIs
19812	675	70tNt
19813	675	74Y
19814	675	76Es
19815	675	80rNLrg
19816	675	90A
19817	675	105P
19818	675	107G
19819	675	127N
19820	675	131R
19821	675	138T
19822	675	142I
19823	675	144tQr
19824	675	147W
19825	675	150aARv
19826	675	156L
19827	675	158A
19828	675	163E
19829	675	166Ew
19830	675	171Y
19831	675	177Et
19832	675	180Q
19833	676	9H
19834	676	11Am
19835	676	14R
19836	676	16Gr
19837	676	41T
19838	676	45Ke
19839	676	56G
19840	676	59Y
19841	676	62Rn
19842	676	66qIs
19843	676	70tNt
19844	676	74Y
19845	676	76Es
19846	676	80rNLrg
19847	676	90A
19848	676	105P
19849	676	107G
19850	676	127N
19851	676	131R
19852	676	138T
19853	676	142I
19854	676	144sQr
19855	676	147L
19856	676	150aARv
19857	676	156L
19858	676	158A
19859	676	163E
19860	676	166Ew
19861	676	171Y
19862	676	177Dk
19863	676	180E
19864	677	9H
19865	677	11Sv
19866	677	14R
19867	677	16Gr
19868	677	41T
19869	677	45Ke
19870	677	56G
19871	677	59Y
19872	677	62Re
19873	677	66qIs
19874	677	70tNt
19875	677	74Y
19876	677	76Es
19877	677	80rNLrg
19878	677	90A
19879	677	105P
19880	677	107G
19881	677	127N
19882	677	131R
19883	677	138T
19884	677	142I
19885	677	144tQr
19886	677	147W
19887	677	150aARe
19888	677	156L
19889	677	158A
19890	677	163L
19891	677	166Ew
19892	677	171Y
19893	677	177Et
19894	677	180Q
19895	678	9H
19896	678	11Sv
19897	678	14R
19898	678	16Gr
19899	678	41T
19900	678	45Ke
19901	678	56G
19902	678	59Y
19903	678	62Re
19904	678	66qIs
19905	678	70tNt
19906	678	74Y
19907	678	76Es
19908	678	80rNLrg
19909	678	90A
19910	678	105P
19911	678	107G
19912	678	127N
19913	678	131R
19914	678	138T
19915	678	142I
19916	678	144tQr
19917	678	147W
19918	678	150aARv
19919	678	156L
19920	678	158A
19921	678	163E
19922	678	166Ew
19923	678	171H
19924	678	177Et
19925	678	180Q
19926	679	9H
19927	679	11Sv
19928	679	14R
19929	679	16Gr
19930	679	41T
19931	679	45Ke
19932	679	56G
19933	679	59Y
19934	679	62Re
19935	679	66qIs
19936	679	70tNt
19937	679	74Y
19938	679	76Es
19939	679	80rNLrg
19940	679	90A
19941	679	105P
19942	679	107G
19943	679	127N
19944	679	131R
19945	679	138T
19946	679	142I
19947	679	144tQr
19948	679	147W
19949	679	150aARe
19950	679	156L
19951	679	158A
19952	679	163L
19953	679	166Ew
19954	679	171Y
19955	679	177Et
19956	679	180Q
19957	680	9H
19958	680	11Sv
19959	680	14R
19960	680	16Gr
19961	680	41T
19962	680	45Ke
19963	680	56G
19964	680	59Y
19965	680	62Pe
19966	680	66qIs
19967	680	70tNt
19968	680	74Y
19969	680	76Es
19970	680	80rNLrg
19971	680	90A
19972	680	105P
19973	680	107G
19974	680	127N
19975	680	131R
19976	680	138T
19977	680	142I
19978	680	144tQr
19979	680	147W
19980	680	150aARv
19981	680	156L
19982	680	158A
19983	680	163E
19984	680	166Ew
19985	680	171Y
19986	680	177Et
19987	680	180Q
19988	681	9H
19989	681	11Sv
19990	681	14R
19991	681	16Gr
19992	681	41T
19993	681	45Ke
19994	681	56G
19995	681	59Y
19996	681	62Re
19997	681	66qIs
19998	681	70tNt
19999	681	74Y
20000	681	76Es
20001	681	80rNLrg
20002	681	90A
20003	681	105P
20004	681	107G
20005	681	127N
20006	681	131R
20007	681	138T
20008	681	142I
20009	681	144sQr
20010	681	147L
20011	681	150aARv
20012	681	156L
20013	681	158A
20014	681	163E
20015	681	166Ew
20016	681	171Y
20017	681	177Dk
20018	681	180E
20019	682	9H
20020	682	11Sv
20021	682	14R
20022	682	16Gr
20023	682	41T
20024	682	45Ke
20025	682	56G
20026	682	59Y
20027	682	62Re
20028	682	66qIs
20029	682	70tNt
20030	682	74Y
20031	682	76Es
20032	682	80rNLrg
20033	682	90A
20034	682	105P
20035	682	107G
20036	682	127N
20037	682	131R
20038	682	138T
20039	682	142I
20040	682	144sQr
20041	682	147L
20042	682	150aARv
20043	682	156L
20044	682	158A
20045	682	163E
20046	682	166Ew
20047	682	171Y
20048	682	177Dk
20049	682	180E
20050	683	9H
20051	683	11Sv
20052	683	14R
20053	683	16Gr
20054	683	41T
20055	683	45Ke
20056	683	56G
20057	683	59Y
20058	683	62Re
20059	683	66qIs
20060	683	70tNt
20061	683	74Y
20062	683	76Es
20063	683	80rNLrg
20064	683	90A
20065	683	105P
20130	685	131R
20131	685	138T
20132	685	142I
20133	685	144sQr
20134	685	147L
20135	685	150aARv
20136	685	156L
20137	685	158A
20138	685	163E
20139	685	166Ew
20140	685	171Y
20141	685	177Dk
20142	685	180E
20143	686	9H
20144	686	11Am
20145	686	14R
20146	686	16Gr
20147	686	41T
20148	686	45Ke
20149	686	56G
20150	686	59Y
20151	686	62Re
20152	686	66qIs
20153	686	70tNt
20154	686	74Y
20155	686	76Es
20156	686	80rNLrg
20157	686	90A
20158	686	105P
20159	686	107G
20160	686	127N
20161	686	131R
20162	686	138T
20163	686	142I
20164	686	144tQr
20165	686	147W
20166	686	150aARv
20167	686	156 D
20168	686	158A
20169	686	163T
20170	686	166Ew
20171	686	171Y
20172	686	177Dt
20173	686	180E
20174	686	183P
20175	686	186K
20176	686	193Pi
20177	686	199A
20178	686	207G
20179	686	211A
20180	686	219R
20181	686	246A
20182	686	248V
20183	686	253E
20184	686	261V
20185	686	267P
20186	686	269P
20187	686	273R
20188	686	275E
20189	686	282Vp
20190	686	285V
20191	687	9H
20192	687	11Am
20193	687	14R
20194	687	16Gr
20195	687	41T
20196	687	45Ke
20197	687	56G
20198	687	59Y
20199	687	62Re
20200	687	66qIs
20201	687	70tNt
20202	687	74Y
20203	687	76Es
20204	687	80rNLrg
20205	687	90A
20206	687	105P
20207	687	107G
20208	687	127N
20209	687	131R
20210	687	138T
20211	687	142I
20212	687	144tQr
20213	687	147W
20214	687	150aARv
20215	687	156D
20216	687	158A
20217	687	163T
20218	687	166Ew
20219	687	171Y
20220	687	177Dt
20221	687	180E
20222	687	183P
20223	687	186K
20224	687	193Pi
20225	687	199A
20226	687	207G
20227	687	211A
20228	687	219R
20229	687	246A
20230	687	248V
20231	687	253E
20232	687	261V
\.


--
-- Data for Name: Warteliste; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Warteliste" ("ID", "PatientID", "StartWarteliste", "EndeWarteliste", "WartenAktiviert", "Prioritaet", "KpAbDatum", "Narkosefrom", "KeratoplastikAuge", "KeratoplastikGesamt", "Auge", "Bemerkungen", "MaxHLAMismatches", "GrundExitWL", "BIS", "BISNR", "Privatpatient", "TransplantationenGesamt", "TransfusionenGesamt", "SchwangerschaftenGesamt", "IDZentrum", "IDOperateur", "TrepanTp", "TrepanPat", "IDOrgankultur", "IDOPArt", "IDTrepanart", "IDOPIndikationsdiagnose", "IDMeldenderArzt", "ExternGemeldet", "IDVermittelndesZentrum", "MMBestaetigt", "RADiagnosenText", "LADiagnosenText", "RABefundText", "LABefundText", "EpikriseText", "SchlussText", "BADiagnosenText", "AllgemeindiagnosenText", "RAVisus", "LAVisus", "RADruck", "LADruck", "RAFundusText", "LAFundusText", "IDOberarzt", "HHWeggefroren", pachy1, pachy2, pachy3, pachy4, "FSLposteriorDiameter", "FSLanteriorDiameter", "FSLalignment_incisions", "BISTP", fancy_nummer, datum_anaesthesie, status_anaesthesie, status_hla_blut) FROM stdin;
\.


--
-- Data for Name: WartelisteZentren; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "WartelisteZentren" ("ID", "ZentrumName", "MeldetPatienten", "PreisRandom", "PreisMatch", "PreisTektonisch", "KostentraegerTransport", "VermitteltPatienten", "RegistryEmail", land) FROM stdin;
1	Freiburg	t	2000	2000	\N	f	t	<siehe GlobalSettings>	Deutschland
\.


--
-- Data for Name: Warteliste_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Warteliste_log" ("ID", "PatientID", "StartWarteliste", "EndeWarteliste", "WartenAktiviert", "Prioritaet", "KpAbDatum", "Narkosefrom", "KeratoplastikAuge", "KeratoplastikGesamt", "Auge", "Bemerkungen", "MaxHLAMismatches", "GrundExitWL", "BIS", "BISNR", "Privatpatient", "TransplantationenGesamt", "TransfusionenGesamt", "SchwangerschaftenGesamt", "IDZentrum", "IDOperateur", "TrepanTp", "TrepanPat", "IDOrgankultur", "IDOPArt", "IDTrepanart", "IDOPIndikationsdiagnose", "IDMeldenderArzt", "ExternGemeldet", "IDVermittelndesZentrum", "MMBestaetigt", "RADiagnosenText", "LADiagnosenText", "RABefundText", "LABefundText", "EpikriseText", "SchlussText", "BADiagnosenText", "AllgemeindiagnosenText", "RAVisus", "LAVisus", "RADruck", "LADruck", "RAFundusText", "LAFundusText", "IDOberarzt", "HHWeggefroren", pachy1, pachy2, pachy3, pachy4, "FSLposteriorDiameter", "FSLanteriorDiameter", "FSLalignment_incisions", "BISTP", fancy_nummer, datum_anaesthesie, status_anaesthesie, status_hla_blut, trigger_mode, trigger_tuple, trigger_changed, trigger_id, trigger_user) FROM stdin;
\.


--
-- Data for Name: Zentrumsanschrift; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Zentrumsanschrift" ("ID", "Anrede", "Titel", "Name", "Anschrift1", "Anschrift2", "PLZ", "Ort", "Land", "Kurzname", "Langanrede", "Typ", "Tel", "Fax", "IDZentrum") FROM stdin;
2	Herr	Dr.	Gross	Killianstr. 5	\N	79106	Freiburg	\N	\N	\N	4	\N	\N	1
10	Herr	Dr.	Maier	Killianstr. 5	\N	79106	Freiburg	\N	\N	\N	5	\N	\N	1
1	Herr	Dr.	Maier	Killianstr. 5	\N	79106	Freiburg	\N	Maier		1	\N	\N	1
\.


--
-- Data for Name: eplets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY eplets (alleles, epitope) FROM stdin;
A*0101	1G
A*0101	273R
A*0101	3H
A*0101	246A
A*0101	7Y
A*0101	195S
A*0101	12V
A*0101	199A
A*0101	23I
A*0101	193P
A*0101	13S
A*0101	190T
A*0101	24A
A*0101	197H
A*0101	14R
A*0101	191H
A*0101	25V
A*0101	198E
A*0101	26G
A*0101	194I
A*0101	27Y
A*0101	248V
A*0101	5M
A*0101	267P
A*0101	8F
A*0101	196D
A*0101	15P
A*0101	270L
A*0101	28V
A*0101	275E
A*0101	29D
A*0101	207G
A*0101	30D
A*0101	187T
A*0101	9F
A*0101	192H
A*0101	16G
A*0101	245A
A*0101	31T
A*0101	189M
A*0101	17R
A*0101	253E
A*0101	32Q
A*0101	268K
A*0101	2S
A*0101	188H
A*0101	6R
A*0101	261V
A*0101	18G
A*0101	276L
A*0101	33F
A*0101	219R
A*0101	34V
A*0101	57P
A*0101	35R
A*0101	61D
A*0101	10T
A*0101	97I
A*0101	19E
A*0101	45M
A*0101	36F
A*0101	69A
A*0101	37D
A*0101	68K
A*0101	38S
A*0101	74D
A*0101	4S
A*0101	85Y
A*0101	11S
A*0101	90D
A*0101	20P
A*0101	46E
A*0101	39D
A*0101	72Q
A*0101	21R
A*0101	102D
A*0101	40A
A*0101	98M
A*0101	22F
A*0101	59Y
A*0101	41A
A*0101	99Y
A*0101	42S
A*0101	101C
A*0101	43Q
A*0101	100G
A*0101	111R
A*0101	65R
A*0101	135A
A*0101	44K
A*0101	141Q
A*0101	93H
A*0101	150V
A*0101	53E
A*0101	122D
A*0101	76A
A*0101	161E
A*0101	56G
A*0101	140A
A*0101	84Y
A*0101	171Y
A*0101	58E
A*0101	142I
A*0101	63E
A*0101	132S
A*0101	66N
A*0101	147W
A*0101	48R
A*0101	168L
A*0101	71S
A*0101	148E
A*0101	106D
A*0101	144K
A*0101	87Q
A*0101	149A
A*0101	52I
A*0101	143T
A*0101	94T
A*0101	128E
A*0101	67M
A*0101	145R
A*0101	75R
A*0101	169R
A*0101	49A
A*0101	170R
A*0101	51W
A*0101	160L
A*0101	47P
A*0101	114R
A*0101	83G
A*0101	127N
A*0101	55E
A*0101	172L
A*0101	77N
A*0101	146K
A*0101	91G
A*0101	109F
A*0101	89E
A*0101	110L
A*0101	95I
A*0101	159Y
A*0101	86N
A*0101	116D
A*0101	105P
A*0101	133W
A*0101	73T
A*0101	118Y
A*0101	82R
A*0101	125A
A*0101	50P
A*0101	157R
A*0101	54Q
A*0101	158V
A*0101	70H
A*0101	120G
A*0101	78L
A*0101	129D
A*0101	103V
A*0101	134T
A*0101	79G
A*0101	113Y
A*0101	81L
A*0101	167G
A*0101	80T
A*0101	151H
A*0101	62Q
A*0101	139A
A*0101	96Q
A*0101	156R
A*0101	92S
A*0101	166D
A*0101	60W
A*0101	182T
A*0101	104G
A*0101	123Y
A*0101	64T
A*0101	154E
A*0101	107G
A*0101	115Q
A*0101	108R
A*0101	124I
A*0101	88S
A*0101	176K
A*0101	165V
A*0101	136A
A*0101	155Q
A*0101	183D
A*0101	126L
A*0101	184P
A*0101	178T
A*0101	179L
A*0101	177E
A*0101	175G
A*0101	137D
A*0101	130L
A*0101	112G
A*0101	180Q
A*0101	181R
A*0101	162G
A*0101	163R
A*0101	131R
A*0101	152A
A*0101	121K
A*0101	153A
A*0101	164C
A*0101	119D
A*0101	117A
A*0101	138M
A*0101	174N
A*0101	185P
A*0101	186K
A*0101	173E
A*0102	197H
A*0102	168L
A*0102	207G
A*0102	140A
A*0102	187T
A*0102	161E
A*0102	199A
A*0102	150V
A*0102	196D
A*0102	142I
A*0102	273R
A*0102	171Y
A*0102	190T
A*0102	111R
A*0102	198E
A*0102	132S
A*0102	191H
A*0102	139A
A*0102	188H
A*0102	160L
A*0102	275E
A*0102	141Q
A*0102	276L
A*0102	144K
A*0102	267P
A*0102	169R
A*0102	246A
A*0102	170R
A*0102	248V
A*0102	128E
A*0102	193P
A*0102	143T
A*0102	270L
A*0102	145R
A*0102	245A
A*0102	149A
A*0102	192H
A*0102	148E
A*0102	194I
A*0102	114R
A*0102	195S
A*0102	147W
A*0102	253E
A*0102	159Y
A*0102	261V
A*0102	110L
A*0102	219R
A*0102	109F
A*0102	268K
A*0102	146K
A*0102	189M
A*0102	116D
A*0102	44K
A*0102	118Y
A*0102	46E
A*0102	122D
A*0102	55E
A*0102	133W
A*0102	69A
A*0102	129D
A*0102	72Q
A*0102	158V
A*0102	97I
A*0102	120G
A*0102	98M
A*0102	125A
A*0102	102D
A*0102	134T
A*0102	85Y
A*0102	167G
A*0102	90D
A*0102	157R
A*0102	100G
A*0102	113Y
A*0102	101C
A*0102	115Q
A*0102	99Y
A*0102	166D
A*0102	65R
A*0102	154E
A*0102	74D
A*0102	135A
A*0102	107G
A*0102	156R
A*0102	53E
A*0102	183D
A*0102	76A
A*0102	184P
A*0102	93H
A*0102	176K
A*0102	56G
A*0102	155Q
A*0102	59Y
A*0102	123Y
A*0102	84Y
A*0102	126L
A*0102	68K
A*0102	165V
A*0102	57P
A*0102	136A
A*0102	45M
A*0102	181R
A*0102	48R
A*0102	177E
A*0102	58E
A*0102	175G
A*0102	63E
A*0102	137D
A*0102	66N
A*0102	179L
A*0102	52I
A*0102	112G
A*0102	87Q
A*0102	182T
A*0102	106D
A*0102	178T
A*0102	67M
A*0102	180Q
A*0102	71S
A*0102	130L
A*0102	94T
A*0102	163R
A*0102	75R
A*0102	119D
A*0102	91G
A*0102	121K
A*0102	61D
A*0102	124I
A*0102	77N
A*0102	172L
A*0102	86N
A*0102	117A
A*0102	103V
A*0102	153A
A*0102	95I
A*0102	164C
A*0102	83G
A*0102	138M
A*0102	89E
A*0102	174N
A*0102	73T
A*0102	185P
A*0102	50P
A*0102	186K
A*0102	49A
A*0102	173E
A*0102	51W
A*0102	131R
A*0102	105P
A*0102	152A
A*0102	78L
A*0102	151H
A*0102	54Q
A*0102	162G
A*0102	70H
A*0102	127N
A*0102	82R
A*0102	12V
A*0102	96Q
A*0102	1G
A*0102	79G
A*0102	23I
A*0102	81L
A*0102	24A
A*0102	80T
A*0102	7Y
A*0102	47P
A*0102	13S
A*0102	64T
A*0102	25V
A*0102	92S
A*0102	26G
A*0102	60W
A*0102	14R
A*0102	104G
A*0102	3H
A*0102	108R
A*0102	27Y
A*0102	62Q
A*0102	8F
A*0102	88S
A*0102	28V
A*0102	5M
A*0102	15P
A*0102	29D
A*0102	30D
A*0102	16G
A*0102	31T
A*0102	32Q
A*0102	9S
A*0102	17S
A*0102	33F
A*0102	34V
A*0102	18G
A*0102	35R
A*0102	36F
A*0102	10T
A*0102	19E
A*0102	37D
A*0102	38S
A*0102	20P
A*0102	39D
A*0102	11S
A*0102	6R
A*0102	40A
A*0102	21R
A*0102	41A
A*0102	2S
A*0102	4S
A*0102	42S
A*0102	22F
A*0102	43Q
A*0103	102D
A*0103	12V
A*0103	98M
A*0103	23I
A*0103	55E
A*0103	7Y
A*0103	69A
A*0103	24A
A*0103	103V
A*0103	13S
A*0103	96Q
A*0103	25V
A*0103	85Y
A*0103	26G
A*0103	97M
A*0103	3H
A*0103	90D
A*0103	14R
A*0103	53E
A*0103	27Y
A*0103	99Y
A*0103	8F
A*0103	62Q
A*0103	28V
A*0103	76A
A*0103	15P
A*0103	65R
A*0103	5M
A*0103	74D
A*0103	29D
A*0103	72Q
A*0103	30D
A*0103	107G
A*0103	16G
A*0103	46E
A*0103	31T
A*0103	100G
A*0103	9F
A*0103	101C
A*0103	32Q
A*0103	56G
A*0103	17R
A*0103	93H
A*0103	33F
A*0103	59Y
A*0103	34V
A*0103	68K
A*0103	18G
A*0103	45M
A*0103	35R
A*0103	48R
A*0103	10T
A*0103	57P
A*0103	36F
A*0103	44K
A*0103	19E
A*0103	52I
A*0103	37D
A*0103	63E
A*0103	38S
A*0103	58E
A*0103	6R
A*0103	66N
A*0103	20P
A*0103	84Y
A*0103	39D
A*0103	106D
A*0103	11S
A*0103	75R
A*0103	40A
A*0103	87Q
A*0103	21R
A*0103	94T
A*0103	41A
A*0103	71S
A*0103	42S
A*0103	67M
A*0103	22F
A*0103	95I
A*0103	2S
A*0103	50P
A*0103	4S
A*0103	61D
A*0103	43Q
A*0103	91G
A*0103	142I
A*0103	83G
A*0103	132S
A*0103	77N
A*0103	171Y
A*0103	88S
A*0103	161E
A*0103	89E
A*0103	150V
A*0103	78L
A*0103	173E
A*0103	70H
A*0103	111R
A*0103	105P
A*0103	139A
A*0103	54Q
A*0103	169R
A*0103	49A
A*0103	128E
A*0103	51W
A*0103	143T
A*0103	73T
A*0103	145R
A*0103	82R
A*0103	140A
A*0103	47P
A*0103	144K
A*0103	80T
A*0103	149A
A*0103	64T
A*0103	170R
A*0103	86N
A*0103	147W
A*0103	79G
A*0103	160L
A*0103	60W
A*0103	159Y
A*0103	92S
A*0103	114R
A*0103	81L
A*0103	148E
A*0103	104G
A*0103	109F
A*0103	108R
A*0103	110L
A*0103	141Q
A*0103	146K
A*0103	122D
A*0103	168L
A*0103	116D
A*0103	131R
A*0103	133W
A*0103	118Y
A*0103	125A
A*0103	158V
A*0103	134T
A*0103	157R
A*0103	120G
A*0103	129D
A*0103	167G
A*0103	113Y
A*0103	166D
A*0103	135A
A*0103	156R
A*0103	124I
A*0103	172L
A*0103	136A
A*0103	112G
A*0103	126L
A*0103	137D
A*0103	181R
A*0103	176K
A*0103	155Q
A*0103	123Y
A*0103	165V
A*0103	180Q
A*0103	182T
A*0103	130L
A*0103	179L
A*0103	175G
A*0103	177E
A*0103	178T
A*0103	164C
A*0103	154E
A*0103	115Q
A*0103	153A
A*0103	163R
A*0103	138M
A*0103	121K
A*0103	174N
A*0103	152A
A*0103	117A
A*0103	151H
A*0103	119D
A*0103	127N
A*0103	162G
A*0106	12V
A*0106	139A
A*0106	23I
A*0106	161E
A*0106	7Y
A*0106	124I
A*0106	24A
A*0106	172L
A*0106	13S
A*0106	150V
A*0106	25V
A*0106	111R
A*0106	26G
A*0106	143T
A*0106	14R
A*0106	145R
A*0106	3H
A*0106	128E
A*0106	27Y
A*0106	132S
A*0106	8F
A*0106	142I
A*0106	28V
A*0106	159Y
A*0106	15P
A*0106	144K
A*0106	29D
A*0106	149A
A*0106	5M
A*0106	171Y
A*0106	30D
A*0106	170R
A*0106	16G
A*0106	169R
A*0106	31T
A*0106	140A
A*0106	9F
A*0106	160L
A*0106	32Q
A*0106	109F
A*0106	17R
A*0106	148E
A*0106	33F
A*0106	110L
A*0106	34V
A*0106	147W
A*0106	18G
A*0106	141Q
A*0106	35R
A*0106	146K
A*0106	10T
A*0106	114R
A*0106	36F
A*0106	122D
A*0106	19E
A*0106	168L
A*0106	37D
A*0106	133W
A*0106	38S
A*0106	116D
A*0106	6R
A*0106	134T
A*0106	20P
A*0106	158A
A*0106	39D
A*0106	118Y
A*0106	11S
A*0106	120G
A*0106	40A
A*0106	129D
A*0106	21R
A*0106	113Y
A*0106	2S
A*0106	167G
A*0106	41A
A*0106	125A
A*0106	42S
A*0106	157R
A*0106	22F
A*0106	181R
A*0106	43Q
A*0106	137D
A*0106	4S
A*0106	112G
A*0106	69A
A*0106	166D
A*0106	85Y
A*0106	135A
A*0106	76A
A*0106	156L
A*0106	103V
A*0106	180Q
A*0106	52I
A*0106	165V
A*0106	53E
A*0106	123Y
A*0106	90D
A*0106	176K
A*0106	97I
A*0106	155Q
A*0106	55E
A*0106	182T
A*0106	56G
A*0106	126L
A*0106	46E
A*0106	136A
A*0106	107G
A*0106	175G
A*0106	98M
A*0106	130L
A*0106	102D
A*0106	177E
A*0106	72Q
A*0106	178T
A*0106	101C
A*0106	179L
A*0106	59Y
A*0106	152A
A*0106	99Y
A*0106	153A
A*0106	100G
A*0106	163R
A*0106	93H
A*0106	154E
A*0106	74D
A*0106	164C
A*0106	65R
A*0106	115Q
A*0106	44K
A*0106	121K
A*0106	57P
A*0106	174N
A*0106	68K
A*0106	151H
A*0106	58E
A*0106	119D
A*0106	66N
A*0106	138M
A*0106	45M
A*0106	117A
A*0106	75R
A*0106	127N
A*0106	84Y
A*0106	131R
A*0106	48R
A*0106	162G
A*0106	63E
A*0106	173E
A*0106	87Q
A*0106	106D
A*0106	67M
A*0106	71S
A*0106	94T
A*0106	70H
A*0106	78L
A*0106	61D
A*0106	77N
A*0106	91G
A*0106	89E
A*0106	83G
A*0106	95I
A*0106	105P
A*0106	82R
A*0106	54Q
A*0106	49A
A*0106	51W
A*0106	73T
A*0106	92S
A*0106	50P
A*0106	88S
A*0106	86N
A*0106	60W
A*0106	104G
A*0106	80T
A*0106	81L
A*0106	47P
A*0106	79G
A*0106	108R
A*0106	96Q
A*0106	64T
A*0106	62Q
A*0201	159Y
A*0201	56G
A*0201	150A
A*0201	90A
A*0201	172L
A*0201	69A
A*0201	138M
A*0201	103V
A*0201	124I
A*0201	55E
A*0201	111R
A*0201	97R
A*0201	161E
A*0201	107W
A*0201	142T
A*0201	98M
A*0201	149A
A*0201	102D
A*0201	110L
A*0201	59Y
A*0201	171Y
A*0201	72Q
A*0201	141Q
A*0201	85Y
A*0201	139A
A*0201	93H
A*0201	132S
A*0201	99Y
A*0201	170R
A*0201	101C
A*0201	144K
A*0201	46E
A*0201	145H
A*0201	74H
A*0201	169R
A*0201	100G
A*0201	160L
A*0201	65R
A*0201	140A
A*0201	75R
A*0201	146K
A*0201	66K
A*0201	148E
A*0201	76V
A*0201	114H
A*0201	53E
A*0201	128E
A*0201	45M
A*0201	147W
A*0201	57P
A*0201	143T
A*0201	58E
A*0201	122D
A*0201	68K
A*0201	168L
A*0201	44R
A*0201	133W
A*0201	84Y
A*0201	116Y
A*0201	63E
A*0201	113Y
A*0201	48R
A*0201	158A
A*0201	106D
A*0201	118Y
A*0201	71S
A*0201	134T
A*0201	67V
A*0201	129D
A*0201	94T
A*0201	125A
A*0201	87Q
A*0201	120G
A*0201	92S
A*0201	167W
A*0201	61D
A*0201	157R
A*0201	88S
A*0201	184A
A*0201	77D
A*0201	180Q
A*0201	52I
A*0201	151H
A*0201	89E
A*0201	135A
A*0201	91G
A*0201	156L
A*0201	83G
A*0201	166E
A*0201	105S
A*0201	182T
A*0201	54Q
A*0201	165V
A*0201	82R
A*0201	123Y
A*0201	49A
A*0201	130L
A*0201	51W
A*0201	176K
A*0201	95V
A*0201	175G
A*0201	73T
A*0201	183D
A*0201	104G
A*0201	126L
A*0201	70H
A*0201	155Q
A*0201	86N
A*0201	136A
A*0201	78L
A*0201	178T
A*0201	81L
A*0201	179L
A*0201	79G
A*0201	177E
A*0201	80T
A*0201	154E
A*0201	47P
A*0201	181R
A*0201	108R
A*0201	174N
A*0201	50P
A*0201	112G
A*0201	60W
A*0201	127K
A*0201	64T
A*0201	163T
A*0201	109F
A*0201	153A
A*0201	62G
A*0201	121K
A*0201	96Q
A*0201	164C
A*0201	12V
A*0201	115Q
A*0201	23I
A*0201	185P
A*0201	7Y
A*0201	137D
A*0201	24A
A*0201	186K
A*0201	13S
A*0201	187T
A*0201	25V
A*0201	117A
A*0201	26G
A*0201	131R
A*0201	14R
A*0201	173E
A*0201	27Y
A*0201	162G
A*0201	3H
A*0201	152V
A*0201	8F
A*0201	119D
A*0201	28V
A*0201	273R
A*0201	15P
A*0201	219R
A*0201	29D
A*0201	275E
A*0201	30D
A*0201	198E
A*0201	16G
A*0201	199A
A*0201	31T
A*0201	194V
A*0201	5M
A*0201	189M
A*0201	9F
A*0201	245A
A*0201	32Q
A*0201	270L
A*0201	17R
A*0201	193A
A*0201	33F
A*0201	253Q
A*0201	34V
A*0201	261V
A*0201	18G
A*0201	191H
A*0201	35R
A*0201	190T
A*0201	10T
A*0201	248V
A*0201	36F
A*0201	188H
A*0201	19E
A*0201	276P
A*0201	37D
A*0201	197H
A*0201	38S
A*0201	268K
A*0201	6R
A*0201	195S
A*0201	20P
A*0201	192H
A*0201	39D
A*0201	246A
A*0201	11S
A*0201	207S
A*0201	40A
A*0201	196D
A*0201	21R
A*0201	267P
A*0201	41A
A*0201	1G
A*0201	2S
A*0201	42S
A*0201	22F
A*0201	43Q
A*0201	4S
A*0202	268K
A*0202	12V
A*0202	196D
A*0202	23I
A*0202	270L
A*0202	7Y
A*0202	253Q
A*0202	24A
A*0202	189M
A*0202	13S
A*0202	219R
A*0202	25V
A*0202	192H
A*0202	26G
A*0202	246A
A*0202	14R
A*0202	195S
A*0202	27Y
A*0202	194V
A*0202	3H
A*0202	199A
A*0202	8F
A*0202	197H
A*0202	28V
A*0202	267P
A*0202	15P
A*0202	190T
A*0202	29D
A*0202	198E
A*0202	30D
A*0202	273R
A*0202	5M
A*0202	207S
A*0202	16G
A*0202	191H
A*0202	31T
A*0202	188H
A*0202	9F
A*0202	245A
A*0202	32Q
A*0202	193A
A*0202	17R
A*0202	248V
A*0202	33F
A*0202	261V
A*0202	34V
A*0202	90A
A*0202	18G
A*0202	88S
A*0202	35R
A*0202	59Y
A*0202	10T
A*0202	75R
A*0202	36F
A*0202	55E
A*0202	19E
A*0202	97R
A*0202	37D
A*0202	69A
A*0202	6R
A*0202	103V
A*0202	38S
A*0202	72Q
A*0202	20P
A*0202	93H
A*0202	39D
A*0202	85Y
A*0202	11S
A*0202	102D
A*0202	40A
A*0202	107W
A*0202	21R
A*0202	46E
A*0202	41A
A*0202	99Y
A*0202	42S
A*0202	98M
A*0202	22F
A*0202	74H
A*0202	2S
A*0202	100G
A*0202	43R
A*0202	65R
A*0202	4S
A*0202	101C
A*0202	110L
A*0202	45M
A*0202	151H
A*0202	56G
A*0202	141Q
A*0202	76V
A*0202	172L
A*0202	44R
A*0202	150A
A*0202	58E
A*0202	111R
A*0202	57P
A*0202	161E
A*0202	68K
A*0202	124I
A*0202	53E
A*0202	139A
A*0202	71S
A*0202	173E
A*0202	63E
A*0202	144K
A*0202	84Y
A*0202	142T
A*0202	67V
A*0202	132S
A*0202	66K
A*0202	170R
A*0202	94T
A*0202	140A
A*0202	48R
A*0202	171Y
A*0202	87Q
A*0202	146K
A*0202	106D
A*0202	174N
A*0202	82R
A*0202	160L
A*0202	54Q
A*0202	149A
A*0202	49A
A*0202	169R
A*0202	51W
A*0202	148E
A*0202	92S
A*0202	145H
A*0202	83G
A*0202	114H
A*0202	52I
A*0202	128E
A*0202	61D
A*0202	143T
A*0202	89E
A*0202	147W
A*0202	104G
A*0202	113Y
A*0202	91G
A*0202	159Y
A*0202	77D
A*0202	116Y
A*0202	95L
A*0202	122D
A*0202	73T
A*0202	133W
A*0202	105S
A*0202	168L
A*0202	79G
A*0202	158A
A*0202	70H
A*0202	118Y
A*0202	86N
A*0202	162G
A*0202	47P
A*0202	129D
A*0202	62G
A*0202	167W
A*0202	78L
A*0202	134T
A*0202	64T
A*0202	120G
A*0202	108R
A*0202	157R
A*0202	81L
A*0202	125A
A*0202	80T
A*0202	175G
A*0202	50P
A*0202	127K
A*0202	109F
A*0202	182T
A*0202	60W
A*0202	130L
A*0202	96Q
A*0202	156W
A*0202	135A
A*0202	166E
A*0202	176K
A*0202	183D
A*0202	179L
A*0202	123Y
A*0202	136A
A*0202	165V
A*0202	126L
A*0202	178T
A*0202	177E
A*0202	155Q
A*0202	180Q
A*0202	154E
A*0202	184A
A*0202	181R
A*0202	138M
A*0202	153A
A*0202	163T
A*0202	164C
A*0202	115Q
A*0202	185P
A*0202	137D
A*0202	121K
A*0202	112G
A*0202	186K
A*0202	187T
A*0202	131R
A*0202	119D
A*0202	117A
A*0202	152V
A*0203	268K
A*0203	161E
A*0203	253Q
A*0203	172L
A*0203	270L
A*0203	127K
A*0203	276P
A*0203	111R
A*0203	261V
A*0203	113Y
A*0203	198E
A*0203	151H
A*0203	189M
A*0203	150A
A*0203	207S
A*0203	124I
A*0203	219R
A*0203	144K
A*0203	190T
A*0203	132S
A*0203	191H
A*0203	146K
A*0203	196D
A*0203	170R
A*0203	245A
A*0203	142T
A*0203	193A
A*0203	160L
A*0203	267P
A*0203	147W
A*0203	248V
A*0203	149T
A*0203	246A
A*0203	171Y
A*0203	273R
A*0203	139A
A*0203	275E
A*0203	174N
A*0203	199A
A*0203	148E
A*0203	197H
A*0203	114H
A*0203	194V
A*0203	169R
A*0203	192H
A*0203	140A
A*0203	195S
A*0203	143T
A*0203	93H
A*0203	128E
A*0203	88S
A*0203	145H
A*0203	97R
A*0203	116Y
A*0203	69A
A*0203	110L
A*0203	55E
A*0203	141Q
A*0203	103V
A*0203	133W
A*0203	46E
A*0203	168L
A*0203	90A
A*0203	159Y
A*0203	85Y
A*0203	122D
A*0203	72Q
A*0203	129D
A*0203	65R
A*0203	167W
A*0203	99Y
A*0203	118Y
A*0203	107W
A*0203	120G
A*0203	100G
A*0203	157R
A*0203	74H
A*0203	134T
A*0203	102D
A*0203	158A
A*0203	98M
A*0203	125A
A*0203	101C
A*0203	138M
A*0203	71S
A*0203	156W
A*0203	76V
A*0203	135A
A*0203	58E
A*0203	166E
A*0203	44R
A*0203	179L
A*0203	96Q
A*0203	176K
A*0203	57P
A*0203	183D
A*0203	56G
A*0203	155Q
A*0203	59Y
A*0203	136A
A*0203	53E
A*0203	123Y
A*0203	68K
A*0203	178T
A*0203	63E
A*0203	177E
A*0203	45M
A*0203	126L
A*0203	67V
A*0203	165V
A*0203	84Y
A*0203	175G
A*0203	66K
A*0203	182T
A*0203	94T
A*0203	162G
A*0203	87Q
A*0203	131R
A*0203	48R
A*0203	181R
A*0203	106D
A*0203	184A
A*0203	89E
A*0203	173E
A*0203	75R
A*0203	154E
A*0203	52I
A*0203	130L
A*0203	83G
A*0203	180Q
A*0203	92S
A*0203	153A
A*0203	62G
A*0203	163T
A*0203	91G
A*0203	185P
A*0203	77D
A*0203	112G
A*0203	61D
A*0203	115Q
A*0203	73T
A*0203	137D
A*0203	95V
A*0203	164C
A*0203	105S
A*0203	121K
A*0203	86N
A*0203	186K
A*0203	49A
A*0203	187T
A*0203	54Q
A*0203	119D
A*0203	82R
A*0203	188H
A*0203	51W
A*0203	152E
A*0203	78L
A*0203	117A
A*0203	70H
A*0203	12V
A*0203	81L
A*0203	23I
A*0203	80T
A*0203	7Y
A*0203	108R
A*0203	24A
A*0203	50P
A*0203	13S
A*0203	79G
A*0203	25V
A*0203	109F
A*0203	26G
A*0203	60W
A*0203	14R
A*0203	104G
A*0203	27Y
A*0203	64T
A*0203	1G
A*0203	47P
A*0203	3H
A*0203	8F
A*0203	28V
A*0203	15P
A*0203	29D
A*0203	30D
A*0203	5M
A*0203	16G
A*0203	31T
A*0203	9F
A*0203	32Q
A*0203	17R
A*0203	33F
A*0203	34V
A*0203	18G
A*0203	35R
A*0203	10T
A*0203	36F
A*0203	19E
A*0203	37D
A*0203	38S
A*0203	6R
A*0203	20P
A*0203	39D
A*0203	11S
A*0203	40A
A*0203	21R
A*0203	41A
A*0203	42S
A*0203	2S
A*0203	22F
A*0203	43Q
A*0203	4S
A*0204	69A
A*0204	12V
A*0204	97M
A*0204	23I
A*0204	88S
A*0204	4S
A*0204	46E
A*0204	7Y
A*0204	55E
A*0204	24A
A*0204	71S
A*0204	13S
A*0204	103V
A*0204	25V
A*0204	62G
A*0204	26G
A*0204	100G
A*0204	14R
A*0204	65R
A*0204	27Y
A*0204	90A
A*0204	3H
A*0204	74H
A*0204	8F
A*0204	101C
A*0204	28V
A*0204	85Y
A*0204	15P
A*0204	98M
A*0204	29D
A*0204	102D
A*0204	1G
A*0204	72Q
A*0204	30D
A*0204	107W
A*0204	5M
A*0204	99Y
A*0204	16G
A*0204	67V
A*0204	31T
A*0204	93H
A*0204	9F
A*0204	68K
A*0204	32Q
A*0204	53E
A*0204	17R
A*0204	57P
A*0204	33F
A*0204	56G
A*0204	34V
A*0204	59Y
A*0204	18G
A*0204	76V
A*0204	35R
A*0204	94T
A*0204	10T
A*0204	44R
A*0204	36F
A*0204	45M
A*0204	19E
A*0204	48R
A*0204	37D
A*0204	84Y
A*0204	38S
A*0204	58E
A*0204	6R
A*0204	87Q
A*0204	20P
A*0204	106D
A*0204	39D
A*0204	63E
A*0204	11S
A*0204	66K
A*0204	40A
A*0204	91G
A*0204	21R
A*0204	77D
A*0204	41A
A*0204	73T
A*0204	42S
A*0204	75R
A*0204	2S
A*0204	104G
A*0204	43Q
A*0204	61D
A*0204	22F
A*0204	83G
A*0204	267P
A*0204	89E
A*0204	189M
A*0204	52I
A*0204	195S
A*0204	95V
A*0204	261V
A*0204	105S
A*0204	246A
A*0204	49A
A*0204	198E
A*0204	80T
A*0204	196D
A*0204	51W
A*0204	253Q
A*0204	108R
A*0204	194V
A*0204	81L
A*0204	199A
A*0204	78L
A*0204	270L
A*0204	54Q
A*0204	190T
A*0204	82R
A*0204	197H
A*0204	50P
A*0204	192H
A*0204	86N
A*0204	275E
A*0204	70H
A*0204	191H
A*0204	79G
A*0204	219R
A*0204	109F
A*0204	273R
A*0204	64T
A*0204	276P
A*0204	47P
A*0204	245A
A*0204	60W
A*0204	193A
A*0204	96Q
A*0204	248V
A*0204	92S
A*0204	207S
A*0204	138M
A*0204	268K
A*0204	127K
A*0204	146K
A*0204	151H
A*0204	172L
A*0204	150A
A*0204	124I
A*0204	148E
A*0204	142T
A*0204	170R
A*0204	111R
A*0204	147W
A*0204	161E
A*0204	114H
A*0204	171Y
A*0204	144K
A*0204	140A
A*0204	128E
A*0204	132S
A*0204	143T
A*0204	149A
A*0204	169R
A*0204	139A
A*0204	145H
A*0204	160L
A*0204	129D
A*0204	133W
A*0204	141Q
A*0204	110L
A*0204	167W
A*0204	122D
A*0204	168L
A*0204	159Y
A*0204	116Y
A*0204	120G
A*0204	157R
A*0204	158A
A*0204	134T
A*0204	125A
A*0204	118Y
A*0204	162G
A*0204	131R
A*0204	179L
A*0204	173E
A*0204	113Y
A*0204	135A
A*0204	166E
A*0204	176K
A*0204	136A
A*0204	155Q
A*0204	156L
A*0204	178T
A*0204	123Y
A*0204	126L
A*0204	183D
A*0204	177E
A*0204	165V
A*0204	184A
A*0204	181R
A*0204	182T
A*0204	185P
A*0204	130L
A*0204	119D
A*0204	180Q
A*0204	154E
A*0204	153A
A*0204	112G
A*0204	175G
A*0204	121K
A*0204	115Q
A*0204	137D
A*0204	163T
A*0204	164C
A*0204	186K
A*0204	187T
A*0204	188H
A*0204	152V
A*0204	174N
A*0204	117A
A*0205	4S
A*0205	187T
A*0205	12V
A*0205	148E
A*0205	23I
A*0205	129D
A*0205	7Y
A*0205	147W
A*0205	24A
A*0205	150A
A*0205	13S
A*0205	173E
A*0205	25V
A*0205	162G
A*0205	26G
A*0205	151H
A*0205	14R
A*0205	186K
A*0205	27Y
A*0205	127K
A*0205	3H
A*0205	131R
A*0205	8F
A*0205	167W
A*0205	28V
A*0205	138M
A*0205	15P
A*0205	114H
A*0205	29D
A*0205	124I
A*0205	30D
A*0205	172L
A*0205	5M
A*0205	128E
A*0205	16G
A*0205	143T
A*0205	31T
A*0205	142T
A*0205	9Y
A*0205	161E
A*0205	32Q
A*0205	169R
A*0205	17R
A*0205	132S
A*0205	33F
A*0205	140A
A*0205	34V
A*0205	111R
A*0205	18G
A*0205	149A
A*0205	35R
A*0205	170R
A*0205	1G
A*0205	171Y
A*0205	10T
A*0205	144K
A*0205	36F
A*0205	160L
A*0205	19E
A*0205	145H
A*0205	37D
A*0205	139A
A*0205	38S
A*0205	122D
A*0205	6R
A*0205	146K
A*0205	20P
A*0205	120G
A*0205	39D
A*0205	141Q
A*0205	11S
A*0205	110L
A*0205	40A
A*0205	157R
A*0205	21R
A*0205	159Y
A*0205	41A
A*0205	168L
A*0205	42S
A*0205	133W
A*0205	2S
A*0205	116Y
A*0205	22F
A*0205	125A
A*0205	43R
A*0205	118Y
A*0205	245A
A*0205	158A
A*0205	276P
A*0205	134T
A*0205	268K
A*0205	136A
A*0205	189M
A*0205	119D
A*0205	270L
A*0205	155Q
A*0205	194V
A*0205	135A
A*0205	195S
A*0205	166E
A*0205	267P
A*0205	113Y
A*0205	196D
A*0205	178T
A*0205	246A
A*0205	156W
A*0205	219R
A*0205	126L
A*0205	198E
A*0205	123Y
A*0205	273R
A*0205	176K
A*0205	275E
A*0205	165V
A*0205	190T
A*0205	177E
A*0205	197H
A*0205	183D
A*0205	199A
A*0205	175G
A*0205	207S
A*0205	121K
A*0205	193A
A*0205	130L
A*0205	191H
A*0205	153A
A*0205	253Q
A*0205	137D
A*0205	261V
A*0205	154E
A*0205	192H
A*0205	112G
A*0205	248V
A*0205	179L
A*0205	67V
A*0205	180Q
A*0205	103V
A*0205	152V
A*0205	74H
A*0205	115Q
A*0205	88S
A*0205	181R
A*0205	100G
A*0205	184A
A*0205	65R
A*0205	182T
A*0205	62G
A*0205	163T
A*0205	55E
A*0205	164C
A*0205	101C
A*0205	188H
A*0205	97R
A*0205	117A
A*0205	69A
A*0205	185P
A*0205	90A
A*0205	174N
A*0205	102D
A*0205	98M
A*0205	107W
A*0205	72Q
A*0205	99Y
A*0205	85Y
A*0205	80T
A*0205	46E
A*0205	59Y
A*0205	57P
A*0205	48R
A*0205	93H
A*0205	94T
A*0205	56G
A*0205	76V
A*0205	53E
A*0205	68K
A*0205	45M
A*0205	87Q
A*0205	84Y
A*0205	44R
A*0205	58E
A*0205	106D
A*0205	66K
A*0205	63E
A*0205	61D
A*0205	71S
A*0205	75R
A*0205	83G
A*0205	91G
A*0205	77D
A*0205	89E
A*0205	52I
A*0205	95L
A*0205	105S
A*0205	73T
A*0205	78L
A*0205	82R
A*0205	54Q
A*0205	86N
A*0205	64T
A*0205	49A
A*0205	70H
A*0205	51W
A*0205	108R
A*0205	109F
A*0205	50P
A*0205	60W
A*0205	79G
A*0205	81L
A*0205	104G
A*0205	47P
A*0205	96Q
A*0205	92S
A*0206	4S
A*0206	94T
A*0206	12V
A*0206	48R
A*0206	23I
A*0206	101C
A*0206	7Y
A*0206	88S
A*0206	24A
A*0206	62G
A*0206	13S
A*0206	97R
A*0206	25V
A*0206	69A
A*0206	26G
A*0206	103V
A*0206	14R
A*0206	90A
A*0206	27Y
A*0206	99Y
A*0206	3H
A*0206	102D
A*0206	8F
A*0206	55E
A*0206	28V
A*0206	72Q
A*0206	15P
A*0206	85Y
A*0206	29D
A*0206	107W
A*0206	30D
A*0206	98M
A*0206	5M
A*0206	87Q
A*0206	16G
A*0206	46E
A*0206	31T
A*0206	100G
A*0206	9Y
A*0206	93H
A*0206	32Q
A*0206	74H
A*0206	17R
A*0206	56G
A*0206	33F
A*0206	108R
A*0206	34V
A*0206	65R
A*0206	18G
A*0206	109F
A*0206	35R
A*0206	76V
A*0206	10T
A*0206	59Y
A*0206	36F
A*0206	106D
A*0206	19E
A*0206	58E
A*0206	37D
A*0206	84Y
A*0206	38S
A*0206	44R
A*0206	6R
A*0206	57P
A*0206	20P
A*0206	53E
A*0206	39D
A*0206	63E
A*0206	11S
A*0206	66K
A*0206	40A
A*0206	68K
A*0206	21R
A*0206	45M
A*0206	41A
A*0206	67V
A*0206	1G
A*0206	64T
A*0206	42S
A*0206	75R
A*0206	22F
A*0206	71S
A*0206	2S
A*0206	77D
A*0206	43Q
A*0206	61D
A*0206	143T
A*0206	89E
A*0206	157R
A*0206	83G
A*0206	173E
A*0206	91G
A*0206	127K
A*0206	105S
A*0206	140A
A*0206	52I
A*0206	128E
A*0206	95V
A*0206	151H
A*0206	60W
A*0206	142T
A*0206	73T
A*0206	131R
A*0206	70H
A*0206	138M
A*0206	86N
A*0206	187T
A*0206	78L
A*0206	120G
A*0206	82R
A*0206	124I
A*0206	49A
A*0206	162G
A*0206	54Q
A*0206	119D
A*0206	51W
A*0206	172L
A*0206	104G
A*0206	169R
A*0206	47P
A*0206	149A
A*0206	96Q
A*0206	161E
A*0206	81L
A*0206	150A
A*0206	79G
A*0206	170R
A*0206	92S
A*0206	144K
A*0206	80T
A*0206	171Y
A*0206	50P
A*0206	139A
A*0206	191H
A*0206	160L
A*0206	199A
A*0206	145H
A*0206	268K
A*0206	111R
A*0206	248V
A*0206	132S
A*0206	261V
A*0206	159Y
A*0206	207S
A*0206	147W
A*0206	196D
A*0206	114H
A*0206	267P
A*0206	148E
A*0206	253Q
A*0206	146K
A*0206	190T
A*0206	110L
A*0206	192H
A*0206	168L
A*0206	245A
A*0206	141Q
A*0206	193A
A*0206	175G
A*0206	273R
A*0206	125A
A*0206	198E
A*0206	122D
A*0206	246A
A*0206	133W
A*0206	270L
A*0206	116Y
A*0206	275E
A*0206	118Y
A*0206	194V
A*0206	134T
A*0206	219R
A*0206	158A
A*0206	197H
A*0206	178T
A*0206	276P
A*0206	167W
A*0206	195S
A*0206	129D
A*0206	152V
A*0206	135A
A*0206	113Y
A*0206	166E
A*0206	126L
A*0206	156L
A*0206	177E
A*0206	183D
A*0206	165V
A*0206	123Y
A*0206	176K
A*0206	185P
A*0206	154E
A*0206	115Q
A*0206	117A
A*0206	179L
A*0206	155Q
A*0206	180Q
A*0206	136A
A*0206	153A
A*0206	181R
A*0206	163T
A*0206	130L
A*0206	182T
A*0206	164C
A*0206	184A
A*0206	188H
A*0206	121K
A*0206	189M
A*0206	112G
A*0206	186K
A*0206	174N
A*0206	137D
A*0207	4S
A*0207	187T
A*0207	1G
A*0207	149A
A*0207	12V
A*0207	124I
A*0207	23I
A*0207	127K
A*0207	7Y
A*0207	173E
A*0207	24A
A*0207	169R
A*0207	13S
A*0207	151H
A*0207	25V
A*0207	131R
A*0207	26G
A*0207	152V
A*0207	14R
A*0207	119D
A*0207	27Y
A*0207	172L
A*0207	8F
A*0207	138M
A*0207	28V
A*0207	162G
A*0207	15P
A*0207	150A
A*0207	29D
A*0207	139A
A*0207	3H
A*0207	144K
A*0207	30D
A*0207	160L
A*0207	5M
A*0207	171Y
A*0207	16G
A*0207	161E
A*0207	31T
A*0207	174N
A*0207	9F
A*0207	145H
A*0207	32Q
A*0207	170R
A*0207	17R
A*0207	132S
A*0207	33F
A*0207	111R
A*0207	34V
A*0207	128E
A*0207	18G
A*0207	147W
A*0207	35R
A*0207	148E
A*0207	10T
A*0207	168L
A*0207	36F
A*0207	142T
A*0207	19E
A*0207	146K
A*0207	37D
A*0207	175G
A*0207	38S
A*0207	143T
A*0207	6R
A*0207	125A
A*0207	20P
A*0207	114H
A*0207	39D
A*0207	141Q
A*0207	11S
A*0207	140A
A*0207	40A
A*0207	122D
A*0207	21R
A*0207	159Y
A*0207	41A
A*0207	118Y
A*0207	42S
A*0207	133W
A*0207	2S
A*0207	134T
A*0207	22F
A*0207	116Y
A*0207	43Q
A*0207	158A
A*0207	197H
A*0207	135A
A*0207	195S
A*0207	167W
A*0207	253Q
A*0207	166E
A*0207	248V
A*0207	126L
A*0207	270L
A*0207	113Y
A*0207	268K
A*0207	157R
A*0207	245A
A*0207	120G
A*0207	276P
A*0207	117A
A*0207	267P
A*0207	129D
A*0207	190T
A*0207	177E
A*0207	275E
A*0207	156L
A*0207	191H
A*0207	183D
A*0207	261V
A*0207	165V
A*0207	246A
A*0207	123Y
A*0207	207S
A*0207	176K
A*0207	194V
A*0207	136A
A*0207	196D
A*0207	163T
A*0207	273R
A*0207	180Q
A*0207	198E
A*0207	178T
A*0207	193A
A*0207	155Q
A*0207	219R
A*0207	179L
A*0207	192H
A*0207	181R
A*0207	199A
A*0207	130L
A*0207	88S
A*0207	154E
A*0207	87Q
A*0207	182T
A*0207	64T
A*0207	184A
A*0207	62G
A*0207	164C
A*0207	97R
A*0207	188H
A*0207	99C
A*0207	189M
A*0207	103V
A*0207	185P
A*0207	92S
A*0207	115Q
A*0207	69A
A*0207	153A
A*0207	90A
A*0207	137D
A*0207	72Q
A*0207	186K
A*0207	85Y
A*0207	121K
A*0207	102D
A*0207	112G
A*0207	55E
A*0207	107W
A*0207	98M
A*0207	106D
A*0207	100G
A*0207	56G
A*0207	93H
A*0207	101C
A*0207	63E
A*0207	81L
A*0207	74H
A*0207	46E
A*0207	76V
A*0207	65R
A*0207	109F
A*0207	66K
A*0207	53E
A*0207	57P
A*0207	59Y
A*0207	44R
A*0207	58E
A*0207	84Y
A*0207	68K
A*0207	45M
A*0207	60W
A*0207	67V
A*0207	75R
A*0207	94T
A*0207	48R
A*0207	71S
A*0207	61D
A*0207	105S
A*0207	89E
A*0207	77D
A*0207	83G
A*0207	91G
A*0207	52I
A*0207	95V
A*0207	96Q
A*0207	47P
A*0207	70H
A*0207	49A
A*0207	78L
A*0207	73T
A*0207	86N
A*0207	51W
A*0207	82R
A*0207	54Q
A*0207	79G
A*0207	110L
A*0207	80T
A*0207	108R
A*0207	50P
A*0207	104G
A*0208	4S
A*0208	64T
A*0208	12V
A*0208	99Y
A*0208	23I
A*0208	106D
A*0208	7Y
A*0208	63E
A*0208	24A
A*0208	60W
A*0208	13S
A*0208	88S
A*0208	25V
A*0208	62G
A*0208	26G
A*0208	103V
A*0208	14R
A*0208	69A
A*0208	27Y
A*0208	72Q
A*0208	1G
A*0208	85Y
A*0208	3H
A*0208	90A
A*0208	8F
A*0208	97R
A*0208	28V
A*0208	107W
A*0208	15P
A*0208	102D
A*0208	29D
A*0208	55E
A*0208	30D
A*0208	98M
A*0208	5M
A*0208	76V
A*0208	16G
A*0208	93H
A*0208	31T
A*0208	46E
A*0208	9Y
A*0208	74H
A*0208	32Q
A*0208	101C
A*0208	17R
A*0208	66N
A*0208	33F
A*0208	100G
A*0208	34V
A*0208	108R
A*0208	18G
A*0208	65R
A*0208	35R
A*0208	109F
A*0208	10T
A*0208	57P
A*0208	36F
A*0208	53E
A*0208	19E
A*0208	59Y
A*0208	37D
A*0208	56G
A*0208	38S
A*0208	84Y
A*0208	6R
A*0208	45M
A*0208	20P
A*0208	58E
A*0208	39D
A*0208	68K
A*0208	11S
A*0208	44R
A*0208	40A
A*0208	75R
A*0208	21R
A*0208	96Q
A*0208	41A
A*0208	105S
A*0208	43R
A*0208	94T
A*0208	42S
A*0208	87Q
A*0208	22F
A*0208	48R
A*0208	2S
A*0208	47P
A*0208	151H
A*0208	71S
A*0208	119D
A*0208	67V
A*0208	173E
A*0208	77D
A*0208	139A
A*0208	83G
A*0208	131R
A*0208	91G
A*0208	125A
A*0208	95L
A*0208	172L
A*0208	52I
A*0208	138M
A*0208	61D
A*0208	152V
A*0208	89E
A*0208	162G
A*0208	92S
A*0208	127K
A*0208	49A
A*0208	124I
A*0208	51W
A*0208	160L
A*0208	78L
A*0208	117A
A*0208	73T
A*0208	145H
A*0208	82R
A*0208	161E
A*0208	86N
A*0208	150A
A*0208	54Q
A*0208	171Y
A*0208	70H
A*0208	111R
A*0208	110L
A*0208	170R
A*0208	80T
A*0208	132S
A*0208	79G
A*0208	144K
A*0208	81L
A*0208	149A
A*0208	50P
A*0208	169R
A*0208	104G
A*0208	142T
A*0208	118Y
A*0208	128E
A*0208	147W
A*0208	146K
A*0208	148E
A*0208	114H
A*0208	140A
A*0208	137D
A*0208	141Q
A*0208	143T
A*0208	168L
A*0208	159Y
A*0208	134T
A*0208	122D
A*0208	133W
A*0208	163T
A*0208	158A
A*0208	116Y
A*0208	157R
A*0208	129D
A*0208	165V
A*0208	177E
A*0208	123Y
A*0208	167W
A*0208	120G
A*0208	113Y
A*0208	135A
A*0208	166E
A*0208	176K
A*0208	156W
A*0208	174N
A*0208	178T
A*0208	179L
A*0208	126L
A*0208	154E
A*0208	130L
A*0208	180Q
A*0208	155Q
A*0208	181R
A*0208	136A
A*0208	164C
A*0208	115Q
A*0208	112G
A*0208	121K
A*0208	153A
A*0208	175G
A*0209	60W
A*0209	160L
A*0209	85Y
A*0209	172L
A*0209	47P
A*0209	118Y
A*0209	96Q
A*0209	138M
A*0209	66K
A*0209	131R
A*0209	72Q
A*0209	152V
A*0209	88S
A*0209	151H
A*0209	62G
A*0209	162G
A*0209	64T
A*0209	173E
A*0209	90A
A*0209	127K
A*0209	97R
A*0209	117A
A*0209	55E
A*0209	111R
A*0209	69A
A*0209	187T
A*0209	107W
A*0209	119D
A*0209	103V
A*0209	145H
A*0209	98M
A*0209	124I
A*0209	102D
A*0209	171Y
A*0209	74H
A*0209	188H
A*0209	79G
A*0209	132S
A*0209	101C
A*0209	150A
A*0209	99Y
A*0209	144K
A*0209	100G
A*0209	161E
A*0209	109F
A*0209	170R
A*0209	46E
A*0209	140A
A*0209	93H
A*0209	149A
A*0209	65R
A*0209	139A
A*0209	76V
A*0209	128E
A*0209	45M
A*0209	147W
A*0209	56G
A*0209	146K
A*0209	59Y
A*0209	134T
A*0209	68K
A*0209	169R
A*0209	84Y
A*0209	148E
A*0209	44R
A*0209	141Q
A*0209	57P
A*0209	114H
A*0209	53E
A*0209	142T
A*0209	58E
A*0209	143T
A*0209	106D
A*0209	159Y
A*0209	63E
A*0209	122D
A*0209	92S
A*0209	133W
A*0209	48R
A*0209	168L
A*0209	87Q
A*0209	116Y
A*0209	94T
A*0209	158A
A*0209	71S
A*0209	186K
A*0209	67V
A*0209	183D
A*0209	95V
A*0209	167W
A*0209	91G
A*0209	120G
A*0209	75R
A*0209	174N
A*0209	83G
A*0209	125A
A*0209	52I
A*0209	157R
A*0209	61D
A*0209	135A
A*0209	77D
A*0209	176K
A*0209	89E
A*0209	129D
A*0209	82R
A*0209	113Y
A*0209	108R
A*0209	156L
A*0209	105S
A*0209	166E
A*0209	80T
A*0209	123Y
A*0209	86N
A*0209	177E
A*0209	54Q
A*0209	179L
A*0209	73T
A*0209	126L
A*0209	78L
A*0209	165V
A*0209	49A
A*0209	137D
A*0209	110L
A*0209	178T
A*0209	51W
A*0209	180Q
A*0209	81L
A*0209	182T
A*0209	50P
A*0209	185P
A*0209	70H
A*0209	136A
A*0209	104G
A*0209	130L
A*0209	4S
A*0209	184A
A*0209	12V
A*0209	155Q
A*0209	23I
A*0209	181R
A*0209	7Y
A*0209	154E
A*0209	24A
A*0209	164C
A*0209	13S
A*0209	189M
A*0209	25V
A*0209	112G
A*0209	26G
A*0209	115Q
A*0209	14R
A*0209	190T
A*0209	27Y
A*0209	121K
A*0209	1G
A*0209	163T
A*0209	3H
A*0209	153A
A*0209	8F
A*0209	175G
A*0209	28V
A*0209	192H
A*0209	15P
A*0209	191H
A*0209	29D
A*0209	248V
A*0209	30D
A*0209	196D
A*0209	5M
A*0209	268K
A*0209	16G
A*0209	253Q
A*0209	31T
A*0209	245A
A*0209	9F
A*0209	273R
A*0209	32Q
A*0209	275E
A*0209	17R
A*0209	261V
A*0209	33F
A*0209	195S
A*0209	34V
A*0209	193A
A*0209	18G
A*0209	207S
A*0209	35R
A*0209	270L
A*0209	10T
A*0209	246A
A*0209	36F
A*0209	199A
A*0209	19E
A*0209	198E
A*0209	37D
A*0209	276P
A*0209	38S
A*0209	219R
A*0209	6R
A*0209	197H
A*0209	20P
A*0209	194V
A*0209	39D
A*0209	267P
A*0209	11S
A*0209	40A
A*0209	21R
A*0209	41A
A*0209	42S
A*0209	22F
A*0209	43Q
A*0209	2S
A*0210	62G
A*0210	2S
A*0210	92S
A*0210	4S
A*0210	64T
A*0210	12V
A*0210	60W
A*0210	23I
A*0210	47P
A*0210	7Y
A*0210	96Q
A*0210	24A
A*0210	88S
A*0210	13S
A*0210	107G
A*0210	25V
A*0210	55E
A*0210	26G
A*0210	97R
A*0210	14R
A*0210	98M
A*0210	27Y
A*0210	103V
A*0210	3H
A*0210	90A
A*0210	8F
A*0210	102D
A*0210	28V
A*0210	69A
A*0210	15P
A*0210	65R
A*0210	29D
A*0210	85Y
A*0210	30D
A*0210	101C
A*0210	1G
A*0210	82R
A*0210	5M
A*0210	72Q
A*0210	16G
A*0210	99F
A*0210	31T
A*0210	45M
A*0210	9Y
A*0210	109F
A*0210	32Q
A*0210	93H
A*0210	17R
A*0210	100G
A*0210	33F
A*0210	74H
A*0210	34V
A*0210	46E
A*0210	18G
A*0210	56G
A*0210	35R
A*0210	58E
A*0210	10T
A*0210	59Y
A*0210	36F
A*0210	68K
A*0210	19E
A*0210	76V
A*0210	37D
A*0210	44R
A*0210	38S
A*0210	84Y
A*0210	6R
A*0210	57P
A*0210	20P
A*0210	53E
A*0210	39D
A*0210	48R
A*0210	11S
A*0210	80T
A*0210	40A
A*0210	52I
A*0210	21R
A*0210	63E
A*0210	41A
A*0210	66K
A*0210	42S
A*0210	95V
A*0210	22F
A*0210	108R
A*0210	43Q
A*0210	71S
A*0210	199A
A*0210	106D
A*0210	268K
A*0210	94T
A*0210	194V
A*0210	87Q
A*0210	197H
A*0210	67V
A*0210	275E
A*0210	83G
A*0210	245A
A*0210	75R
A*0210	248V
A*0210	91G
A*0210	191H
A*0210	77D
A*0210	196D
A*0210	61D
A*0210	253Q
A*0210	89E
A*0210	273R
A*0210	86N
A*0210	246A
A*0210	54Q
A*0210	193A
A*0210	105S
A*0210	267P
A*0210	78L
A*0210	270L
A*0210	73T
A*0210	276P
A*0210	49A
A*0210	192H
A*0210	110L
A*0210	261V
A*0210	50P
A*0210	195S
A*0210	81L
A*0210	219R
A*0210	104G
A*0210	198E
A*0210	79G
A*0210	207S
A*0210	70H
A*0210	162G
A*0210	51W
A*0210	134T
A*0210	131R
A*0210	111R
A*0210	145H
A*0210	151H
A*0210	152V
A*0210	174N
A*0210	173E
A*0210	127K
A*0210	119D
A*0210	187T
A*0210	124I
A*0210	117A
A*0210	172L
A*0210	138M
A*0210	132S
A*0210	144K
A*0210	188H
A*0210	171Y
A*0210	150A
A*0210	170R
A*0210	161E
A*0210	160L
A*0210	169R
A*0210	147W
A*0210	149A
A*0210	146K
A*0210	139A
A*0210	141Q
A*0210	128E
A*0210	143T
A*0210	148E
A*0210	114H
A*0210	142T
A*0210	122D
A*0210	133W
A*0210	140A
A*0210	159Y
A*0210	116Y
A*0210	158A
A*0210	163T
A*0210	168L
A*0210	176K
A*0210	167W
A*0210	120G
A*0210	137D
A*0210	157R
A*0210	118Y
A*0210	125A
A*0210	129D
A*0210	113Y
A*0210	135A
A*0210	156L
A*0210	166E
A*0210	183D
A*0210	179L
A*0210	177E
A*0210	182T
A*0210	126L
A*0210	112G
A*0210	186K
A*0210	121K
A*0210	165V
A*0210	123Y
A*0210	178T
A*0210	180Q
A*0210	136A
A*0210	184A
A*0210	155Q
A*0210	181R
A*0210	130L
A*0210	164C
A*0210	154E
A*0210	153A
A*0210	189M
A*0210	190T
A*0210	115Q
A*0210	175G
A*0210	185P
A*0211	64T
A*0211	132S
A*0211	107W
A*0211	137D
A*0211	45M
A*0211	151H
A*0211	80T
A*0211	127K
A*0211	92S
A*0211	152V
A*0211	108R
A*0211	174N
A*0211	55E
A*0211	173E
A*0211	96Q
A*0211	131R
A*0211	47P
A*0211	187T
A*0211	60W
A*0211	172L
A*0211	88S
A*0211	162G
A*0211	62G
A*0211	144K
A*0211	98M
A*0211	117A
A*0211	97R
A*0211	119D
A*0211	103V
A*0211	138M
A*0211	90A
A*0211	124I
A*0211	69A
A*0211	188H
A*0211	102D
A*0211	150A
A*0211	81L
A*0211	170R
A*0211	99Y
A*0211	161E
A*0211	58E
A*0211	171Y
A*0211	68K
A*0211	146K
A*0211	72Q
A*0211	111R
A*0211	44R
A*0211	143T
A*0211	85Y
A*0211	147W
A*0211	101C
A*0211	128E
A*0211	46E
A*0211	139A
A*0211	100G
A*0211	149A
A*0211	74D
A*0211	145H
A*0211	93H
A*0211	160L
A*0211	76V
A*0211	148E
A*0211	65R
A*0211	169R
A*0211	109F
A*0211	163T
A*0211	59Y
A*0211	114H
A*0211	56G
A*0211	142T
A*0211	57P
A*0211	141Q
A*0211	53E
A*0211	158A
A*0211	84Y
A*0211	140A
A*0211	63E
A*0211	159Y
A*0211	66K
A*0211	116Y
A*0211	71S
A*0211	133W
A*0211	67V
A*0211	168L
A*0211	104G
A*0211	122D
A*0211	106D
A*0211	121K
A*0211	94T
A*0211	120G
A*0211	87Q
A*0211	157R
A*0211	48R
A*0211	112G
A*0211	91G
A*0211	134T
A*0211	75R
A*0211	186K
A*0211	77D
A*0211	167W
A*0211	89E
A*0211	125A
A*0211	83G
A*0211	118Y
A*0211	61D
A*0211	182T
A*0211	95V
A*0211	135A
A*0211	52I
A*0211	129D
A*0211	105S
A*0211	113Y
A*0211	50P
A*0211	166E
A*0211	73I
A*0211	156L
A*0211	78L
A*0211	153A
A*0211	110L
A*0211	184A
A*0211	54Q
A*0211	123Y
A*0211	86N
A*0211	165V
A*0211	49A
A*0211	178T
A*0211	51W
A*0211	136A
A*0211	79G
A*0211	130L
A*0211	70H
A*0211	180Q
A*0211	82R
A*0211	177E
A*0211	2S
A*0211	183D
A*0211	4S
A*0211	179L
A*0211	12V
A*0211	154E
A*0211	23I
A*0211	164C
A*0211	7Y
A*0211	176K
A*0211	24A
A*0211	181R
A*0211	13S
A*0211	126L
A*0211	25V
A*0211	155Q
A*0211	26G
A*0211	189M
A*0211	14R
A*0211	190T
A*0211	27Y
A*0211	175G
A*0211	3H
A*0211	185P
A*0211	8F
A*0211	115Q
A*0211	28V
A*0211	273R
A*0211	15P
A*0211	194V
A*0211	29D
A*0211	261V
A*0211	30D
A*0211	248V
A*0211	5M
A*0211	191H
A*0211	16G
A*0211	197H
A*0211	31T
A*0211	270L
A*0211	9F
A*0211	207S
A*0211	32Q
A*0211	199A
A*0211	17R
A*0211	192H
A*0211	33F
A*0211	276P
A*0211	34V
A*0211	267P
A*0211	1G
A*0211	268K
A*0211	18G
A*0211	196D
A*0211	35R
A*0211	195S
A*0211	10T
A*0211	198E
A*0211	36F
A*0211	246A
A*0211	19E
A*0211	219R
A*0211	37D
A*0211	245A
A*0211	38S
A*0211	275E
A*0211	6R
A*0211	253Q
A*0211	20P
A*0211	193A
A*0211	39D
A*0211	11S
A*0211	40A
A*0211	21R
A*0211	41A
A*0211	42S
A*0211	22F
A*0211	43Q
A*0212	58E
A*0212	2S
A*0212	80T
A*0212	4S
A*0212	68K
A*0212	12V
A*0212	92S
A*0212	23I
A*0212	44R
A*0212	7Y
A*0212	98M
A*0212	24A
A*0212	108R
A*0212	13S
A*0212	96Q
A*0212	25V
A*0212	60W
A*0212	26G
A*0212	47P
A*0212	14R
A*0212	88S
A*0212	27Y
A*0212	97R
A*0212	3H
A*0212	62G
A*0212	8F
A*0212	64T
A*0212	28V
A*0212	69A
A*0212	15P
A*0212	102D
A*0212	29D
A*0212	90A
A*0212	30D
A*0212	103V
A*0212	5M
A*0212	46E
A*0212	16G
A*0212	85Y
A*0212	31T
A*0212	72Q
A*0212	9F
A*0212	107W
A*0212	32Q
A*0212	100G
A*0212	17R
A*0212	55E
A*0212	33F
A*0212	99Y
A*0212	34V
A*0212	93H
A*0212	18G
A*0212	74H
A*0212	35R
A*0212	101C
A*0212	10T
A*0212	76V
A*0212	36F
A*0212	109F
A*0212	19E
A*0212	65R
A*0212	1G
A*0212	53E
A*0212	37D
A*0212	84Y
A*0212	38S
A*0212	57P
A*0212	6R
A*0212	59Y
A*0212	20P
A*0212	56G
A*0212	39D
A*0212	66K
A*0212	11S
A*0212	67V
A*0212	40A
A*0212	50P
A*0212	43Q
A*0212	63E
A*0212	21R
A*0212	106D
A*0212	41A
A*0212	94T
A*0212	42S
A*0212	45M
A*0212	22F
A*0212	87Q
A*0212	194V
A*0212	89E
A*0212	273R
A*0212	91G
A*0212	246A
A*0212	71S
A*0212	267P
A*0212	75R
A*0212	195S
A*0212	48R
A*0212	248V
A*0212	77D
A*0212	196D
A*0212	83G
A*0212	207S
A*0212	61D
A*0212	275E
A*0212	104G
A*0212	253Q
A*0212	81L
A*0212	198E
A*0212	95V
A*0212	197H
A*0212	105S
A*0212	276P
A*0212	73T
A*0212	261V
A*0212	78L
A*0212	219R
A*0212	52I
A*0212	192H
A*0212	110L
A*0212	193A
A*0212	54Q
A*0212	270L
A*0212	79G
A*0212	199A
A*0212	51W
A*0212	268K
A*0212	86N
A*0212	245A
A*0212	70H
A*0212	137D
A*0212	49A
A*0212	121K
A*0212	82R
A*0212	144K
A*0212	190T
A*0212	127K
A*0212	112G
A*0212	186K
A*0212	152V
A*0212	174N
A*0212	131R
A*0212	173E
A*0212	151H
A*0212	119D
A*0212	138M
A*0212	117A
A*0212	162G
A*0212	124I
A*0212	187T
A*0212	150A
A*0212	172L
A*0212	170R
A*0212	188H
A*0212	161E
A*0212	171Y
A*0212	116Y
A*0212	147W
A*0212	149A
A*0212	145H
A*0212	158A
A*0212	160L
A*0212	139A
A*0212	128E
A*0212	132S
A*0212	111R
A*0212	114H
A*0212	169R
A*0212	148E
A*0212	142T
A*0212	146K
A*0212	168L
A*0212	159Y
A*0212	140A
A*0212	141Q
A*0212	143T
A*0212	122D
A*0212	133W
A*0212	135A
A*0212	182T
A*0212	153A
A*0212	134T
A*0212	167W
A*0212	120G
A*0212	118Y
A*0212	125A
A*0212	129D
A*0212	157R
A*0212	166E
A*0212	156Q
A*0212	113Y
A*0212	184A
A*0212	176K
A*0212	123Y
A*0212	130L
A*0212	178T
A*0212	163T
A*0212	179L
A*0212	164C
A*0212	154E
A*0212	180Q
A*0212	165V
A*0212	181R
A*0212	155Q
A*0212	126L
A*0212	183D
A*0212	177E
A*0212	189M
A*0212	175G
A*0212	191H
A*0212	136A
A*0212	185P
A*0212	115Q
A*0213	60W
A*0213	174N
A*0213	108R
A*0213	124I
A*0213	69A
A*0213	112G
A*0213	47P
A*0213	186K
A*0213	80T
A*0213	116Y
A*0213	50P
A*0213	153A
A*0213	92S
A*0213	158A
A*0213	96Q
A*0213	121K
A*0213	88S
A*0213	173E
A*0213	62G
A*0213	131R
A*0213	64T
A*0213	152E
A*0213	102D
A*0213	137D
A*0213	97R
A*0213	151H
A*0213	103V
A*0213	162G
A*0213	90A
A*0213	170R
A*0213	72Q
A*0213	127K
A*0213	85Y
A*0213	150A
A*0213	110L
A*0213	117A
A*0213	98M
A*0213	189M
A*0213	107W
A*0213	187T
A*0213	93H
A*0213	172L
A*0213	55E
A*0213	119D
A*0213	74H
A*0213	161E
A*0213	99Y
A*0213	188H
A*0213	101C
A*0213	171Y
A*0213	100G
A*0213	138M
A*0213	86N
A*0213	128E
A*0213	46E
A*0213	132S
A*0213	65R
A*0213	139A
A*0213	57P
A*0213	168L
A*0213	109F
A*0213	114H
A*0213	76V
A*0213	190T
A*0213	59Y
A*0213	144K
A*0213	53E
A*0213	176K
A*0213	84Y
A*0213	145H
A*0213	56G
A*0213	147W
A*0213	58E
A*0213	149A
A*0213	66K
A*0213	142T
A*0213	104G
A*0213	146K
A*0213	89E
A*0213	160L
A*0213	94T
A*0213	169R
A*0213	68K
A*0213	148E
A*0213	81L
A*0213	159Y
A*0213	45M
A*0213	140A
A*0213	44R
A*0213	141Q
A*0213	106D
A*0213	133W
A*0213	63E
A*0213	122D
A*0213	87Q
A*0213	143T
A*0213	67V
A*0213	163T
A*0213	61D
A*0213	134T
A*0213	71S
A*0213	118Y
A*0213	75R
A*0213	167W
A*0213	83G
A*0213	125A
A*0213	91G
A*0213	120G
A*0213	48R
A*0213	156Q
A*0213	77D
A*0213	157R
A*0213	73T
A*0213	129D
A*0213	78L
A*0213	113Y
A*0213	79G
A*0213	166E
A*0213	70H
A*0213	178T
A*0213	51W
A*0213	154E
A*0213	105S
A*0213	164C
A*0213	95V
A*0213	135A
A*0213	52I
A*0213	177E
A*0213	82R
A*0213	180Q
A*0213	111R
A*0213	123Y
A*0213	49A
A*0213	165V
A*0213	54Q
A*0213	181R
A*0213	4S
A*0213	155Q
A*0213	2S
A*0213	179L
A*0213	12V
A*0213	175G
A*0213	23I
A*0213	185P
A*0213	7Y
A*0213	183D
A*0213	24A
A*0213	126L
A*0213	13S
A*0213	130L
A*0213	25V
A*0213	115Q
A*0213	26G
A*0213	191H
A*0213	14R
A*0213	136A
A*0213	27Y
A*0213	184A
A*0213	3H
A*0213	182T
A*0213	8F
A*0213	268K
A*0213	28V
A*0213	276P
A*0213	15P
A*0213	198E
A*0213	29D
A*0213	197H
A*0213	30D
A*0213	267P
A*0213	5M
A*0213	192H
A*0213	16G
A*0213	193A
A*0213	31T
A*0213	246A
A*0213	9F
A*0213	207S
A*0213	32Q
A*0213	261V
A*0213	17R
A*0213	253Q
A*0213	33F
A*0213	195S
A*0213	34V
A*0213	196D
A*0213	18G
A*0213	245A
A*0213	35R
A*0213	270L
A*0213	10T
A*0213	275E
A*0213	36F
A*0213	194V
A*0213	19E
A*0213	273R
A*0213	37D
A*0213	219R
A*0213	38S
A*0213	248V
A*0213	1G
A*0213	199A
A*0213	6R
A*0213	20P
A*0213	39D
A*0213	11S
A*0213	40A
A*0213	21R
A*0213	41A
A*0213	42S
A*0213	22F
A*0213	43Q
A*0214	81L
A*0214	4S
A*0214	104G
A*0214	12V
A*0214	88S
A*0214	2S
A*0214	80T
A*0214	23I
A*0214	108R
A*0214	7Y
A*0214	92S
A*0214	24A
A*0214	96Q
A*0214	13S
A*0214	50P
A*0214	25V
A*0214	60W
A*0214	26G
A*0214	102D
A*0214	14R
A*0214	64T
A*0214	27Y
A*0214	47P
A*0214	3H
A*0214	62G
A*0214	8F
A*0214	97R
A*0214	28V
A*0214	103V
A*0214	15P
A*0214	90A
A*0214	29D
A*0214	69A
A*0214	30D
A*0214	98M
A*0214	5M
A*0214	93H
A*0214	16G
A*0214	74H
A*0214	31T
A*0214	57P
A*0214	9Y
A*0214	107W
A*0214	32Q
A*0214	55E
A*0214	17R
A*0214	85Y
A*0214	33F
A*0214	72Q
A*0214	34V
A*0214	99Y
A*0214	18G
A*0214	101C
A*0214	35R
A*0214	100G
A*0214	10T
A*0214	65R
A*0214	36F
A*0214	84Y
A*0214	19E
A*0214	46E
A*0214	37D
A*0214	53E
A*0214	38S
A*0214	110L
A*0214	6R
A*0214	59Y
A*0214	20P
A*0214	56G
A*0214	39D
A*0214	109F
A*0214	11S
A*0214	76V
A*0214	40A
A*0214	58E
A*0214	21R
A*0214	45M
A*0214	41A
A*0214	61D
A*0214	1G
A*0214	68K
A*0214	42S
A*0214	79G
A*0214	22F
A*0214	70H
A*0214	43R
A*0214	44R
A*0214	196D
A*0214	51W
A*0214	270L
A*0214	66K
A*0214	197H
A*0214	63E
A*0214	248V
A*0214	106D
A*0214	199A
A*0214	87Q
A*0214	194V
A*0214	75R
A*0214	253Q
A*0214	94T
A*0214	219R
A*0214	67V
A*0214	276P
A*0214	71S
A*0214	192H
A*0214	48R
A*0214	275E
A*0214	91G
A*0214	245A
A*0214	83G
A*0214	198E
A*0214	77D
A*0214	246A
A*0214	105S
A*0214	207S
A*0214	89E
A*0214	195S
A*0214	95L
A*0214	273R
A*0214	52I
A*0214	267P
A*0214	78L
A*0214	193A
A*0214	111R
A*0214	261V
A*0214	73T
A*0214	268K
A*0214	54Q
A*0214	150A
A*0214	49A
A*0214	112G
A*0214	86N
A*0214	173E
A*0214	82R
A*0214	168L
A*0214	186K
A*0214	163T
A*0214	153A
A*0214	131R
A*0214	170R
A*0214	121K
A*0214	152V
A*0214	137D
A*0214	151H
A*0214	117A
A*0214	127K
A*0214	189M
A*0214	174N
A*0214	161E
A*0214	187T
A*0214	119D
A*0214	171Y
A*0214	188H
A*0214	162G
A*0214	172L
A*0214	138M
A*0214	142T
A*0214	124I
A*0214	144K
A*0214	190T
A*0214	128E
A*0214	147W
A*0214	132S
A*0214	149A
A*0214	169R
A*0214	146K
A*0214	139A
A*0214	148E
A*0214	145H
A*0214	160L
A*0214	114H
A*0214	159Y
A*0214	141Q
A*0214	133W
A*0214	122D
A*0214	140A
A*0214	143T
A*0214	125A
A*0214	156L
A*0214	118Y
A*0214	158A
A*0214	175G
A*0214	134T
A*0214	116Y
A*0214	167W
A*0214	120G
A*0214	157R
A*0214	166E
A*0214	113Y
A*0214	129D
A*0214	177E
A*0214	115Q
A*0214	185P
A*0214	154E
A*0214	155Q
A*0214	135A
A*0214	184A
A*0214	181R
A*0214	123Y
A*0214	178T
A*0214	165V
A*0214	126L
A*0214	180Q
A*0214	179L
A*0214	183D
A*0214	191H
A*0214	164C
A*0214	182T
A*0214	136A
A*0214	176K
A*0214	130L
A*0216	81L
A*0216	163E
A*0216	88S
A*0216	153A
A*0216	79G
A*0216	161E
A*0216	51W
A*0216	175G
A*0216	70H
A*0216	112G
A*0216	57P
A*0216	186K
A*0216	104G
A*0216	151H
A*0216	102D
A*0216	121K
A*0216	92S
A*0216	137D
A*0216	80T
A*0216	152V
A*0216	108R
A*0216	173E
A*0216	50P
A*0216	171Y
A*0216	96Q
A*0216	174N
A*0216	60W
A*0216	127K
A*0216	47P
A*0216	131R
A*0216	62G
A*0216	187T
A*0216	64T
A*0216	172L
A*0216	78L
A*0216	162G
A*0216	90A
A*0216	188H
A*0216	97R
A*0216	189M
A*0216	103V
A*0216	117A
A*0216	84Y
A*0216	138M
A*0216	53E
A*0216	119D
A*0216	55E
A*0216	176K
A*0216	98M
A*0216	170R
A*0216	59Y
A*0216	144K
A*0216	107W
A*0216	124I
A*0216	72Q
A*0216	150A
A*0216	99Y
A*0216	190T
A*0216	101C
A*0216	132S
A*0216	85Y
A*0216	169R
A*0216	69A
A*0216	160L
A*0216	100G
A*0216	149A
A*0216	74H
A*0216	147W
A*0216	86N
A*0216	148E
A*0216	93H
A*0216	128E
A*0216	110L
A*0216	139A
A*0216	56G
A*0216	145H
A*0216	65R
A*0216	146K
A*0216	46E
A*0216	177E
A*0216	76V
A*0216	122D
A*0216	109F
A*0216	114H
A*0216	58E
A*0216	142T
A*0216	63E
A*0216	133W
A*0216	48R
A*0216	140A
A*0216	68K
A*0216	159Y
A*0216	87Q
A*0216	143T
A*0216	66K
A*0216	141Q
A*0216	106D
A*0216	134T
A*0216	71S
A*0216	115Q
A*0216	94T
A*0216	185P
A*0216	44R
A*0216	116Y
A*0216	45M
A*0216	167W
A*0216	67V
A*0216	168L
A*0216	75R
A*0216	158A
A*0216	91G
A*0216	120G
A*0216	83G
A*0216	181R
A*0216	77D
A*0216	125A
A*0216	105S
A*0216	166E
A*0216	73T
A*0216	118Y
A*0216	61D
A*0216	157R
A*0216	52I
A*0216	129D
A*0216	95V
A*0216	113Y
A*0216	89E
A*0216	135A
A*0216	54Q
A*0216	183D
A*0216	111R
A*0216	156L
A*0216	49A
A*0216	126L
A*0216	82R
A*0216	179L
A*0216	4S
A*0216	165V
A*0216	1G
A*0216	178T
A*0216	12V
A*0216	180Q
A*0216	2S
A*0216	123Y
A*0216	23I
A*0216	191H
A*0216	7Y
A*0216	155Q
A*0216	24A
A*0216	192H
A*0216	13S
A*0216	164C
A*0216	25V
A*0216	182T
A*0216	26G
A*0216	154E
A*0216	14R
A*0216	136A
A*0216	27Y
A*0216	130L
A*0216	8F
A*0216	184A
A*0216	3H
A*0216	193A
A*0216	28V
A*0216	261V
A*0216	15P
A*0216	267P
A*0216	29D
A*0216	268K
A*0216	30D
A*0216	248V
A*0216	5M
A*0216	276P
A*0216	16G
A*0216	198E
A*0216	31T
A*0216	195S
A*0216	9F
A*0216	194V
A*0216	32Q
A*0216	275E
A*0216	17R
A*0216	245A
A*0216	33F
A*0216	196D
A*0216	34V
A*0216	253Q
A*0216	18G
A*0216	207S
A*0216	35R
A*0216	199A
A*0216	10T
A*0216	273R
A*0216	36F
A*0216	270L
A*0216	19E
A*0216	246A
A*0216	37D
A*0216	219R
A*0216	38S
A*0216	197H
A*0216	6R
A*0216	20P
A*0216	39D
A*0216	11S
A*0216	40A
A*0216	21R
A*0216	41A
A*0216	42S
A*0216	22F
A*0216	43Q
A*0217	59Y
A*0217	4S
A*0217	70H
A*0217	12V
A*0217	104G
A*0217	2S
A*0217	79G
A*0217	23I
A*0217	50P
A*0217	1G
A*0217	84Y
A*0217	7Y
A*0217	81L
A*0217	24A
A*0217	80T
A*0217	13S
A*0217	51W
A*0217	25V
A*0217	108R
A*0217	26G
A*0217	53E
A*0217	14R
A*0217	96Q
A*0217	27Y
A*0217	92S
A*0217	8F
A*0217	60W
A*0217	3H
A*0217	62G
A*0217	28V
A*0217	88S
A*0217	15P
A*0217	64T
A*0217	29D
A*0217	90A
A*0217	30D
A*0217	47P
A*0217	5M
A*0217	97M
A*0217	16G
A*0217	103V
A*0217	31T
A*0217	56G
A*0217	9F
A*0217	98M
A*0217	32Q
A*0217	102D
A*0217	17R
A*0217	107W
A*0217	33F
A*0217	101C
A*0217	34V
A*0217	72Q
A*0217	18G
A*0217	69A
A*0217	35R
A*0217	100G
A*0217	10T
A*0217	85Y
A*0217	36F
A*0217	99F
A*0217	19E
A*0217	110L
A*0217	43Q
A*0217	93H
A*0217	37D
A*0217	55E
A*0217	38S
A*0217	74H
A*0217	6R
A*0217	76V
A*0217	20P
A*0217	46E
A*0217	39D
A*0217	109F
A*0217	11S
A*0217	65R
A*0217	40A
A*0217	57P
A*0217	21R
A*0217	87Q
A*0217	41A
A*0217	106D
A*0217	42S
A*0217	68K
A*0217	22F
A*0217	66K
A*0217	261V
A*0217	58E
A*0217	267P
A*0217	63E
A*0217	276P
A*0217	94T
A*0217	196D
A*0217	67V
A*0217	193A
A*0217	44R
A*0217	248V
A*0217	45M
A*0217	219R
A*0217	83G
A*0217	275E
A*0217	71S
A*0217	273R
A*0217	91G
A*0217	198E
A*0217	75R
A*0217	207S
A*0217	77D
A*0217	194V
A*0217	61D
A*0217	245A
A*0217	86N
A*0217	268K
A*0217	54Q
A*0217	199A
A*0217	95L
A*0217	195S
A*0217	89E
A*0217	253Q
A*0217	48R
A*0217	246A
A*0217	105S
A*0217	197H
A*0217	111R
A*0217	270L
A*0217	52I
A*0217	185P
A*0217	49A
A*0217	171Y
A*0217	82R
A*0217	175G
A*0217	73T
A*0217	115Q
A*0217	78L
A*0217	151H
A*0217	112G
A*0217	163T
A*0217	186K
A*0217	137D
A*0217	153A
A*0217	152V
A*0217	121K
A*0217	131R
A*0217	173E
A*0217	187T
A*0217	174N
A*0217	127K
A*0217	138M
A*0217	117A
A*0217	189M
A*0217	119D
A*0217	172L
A*0217	188H
A*0217	162G
A*0217	169R
A*0217	139A
A*0217	144K
A*0217	124I
A*0217	122D
A*0217	170R
A*0217	161E
A*0217	190T
A*0217	150A
A*0217	177E
A*0217	132S
A*0217	160L
A*0217	149A
A*0217	148E
A*0217	128E
A*0217	145H
A*0217	147W
A*0217	146K
A*0217	114H
A*0217	142T
A*0217	164C
A*0217	141Q
A*0217	143T
A*0217	159Y
A*0217	154E
A*0217	133W
A*0217	140A
A*0217	166E
A*0217	168L
A*0217	134T
A*0217	120G
A*0217	116Y
A*0217	182T
A*0217	158A
A*0217	181R
A*0217	167W
A*0217	125A
A*0217	118Y
A*0217	129D
A*0217	157R
A*0217	113Y
A*0217	183D
A*0217	156L
A*0217	126L
A*0217	176K
A*0217	135A
A*0217	179L
A*0217	178T
A*0217	165V
A*0217	180Q
A*0217	123Y
A*0217	191H
A*0217	192H
A*0217	155Q
A*0217	184A
A*0217	136A
A*0217	130L
A*0219	104G
A*0219	151H
A*0219	79G
A*0219	122D
A*0219	108R
A*0219	115Q
A*0219	70H
A*0219	112G
A*0219	81L
A*0219	163T
A*0219	51W
A*0219	175G
A*0219	80T
A*0219	137D
A*0219	92S
A*0219	121K
A*0219	96Q
A*0219	152V
A*0219	56G
A*0219	153A
A*0219	90A
A*0219	138M
A*0219	50P
A*0219	127K
A*0219	64T
A*0219	173E
A*0219	88S
A*0219	131R
A*0219	103V
A*0219	174N
A*0219	62G
A*0219	119D
A*0219	47P
A*0219	162G
A*0219	97R
A*0219	117A
A*0219	60W
A*0219	172L
A*0219	107W
A*0219	161E
A*0219	98M
A*0219	149A
A*0219	101C
A*0219	160L
A*0219	102D
A*0219	148E
A*0219	100G
A*0219	171Y
A*0219	69A
A*0219	170R
A*0219	85Y
A*0219	150A
A*0219	72Q
A*0219	128E
A*0219	99Y
A*0219	145R
A*0219	74H
A*0219	124I
A*0219	76V
A*0219	146K
A*0219	93H
A*0219	144K
A*0219	46E
A*0219	132S
A*0219	55E
A*0219	147W
A*0219	109F
A*0219	139A
A*0219	110L
A*0219	169R
A*0219	65R
A*0219	114H
A*0219	54Q
A*0219	142I
A*0219	57P
A*0219	141Q
A*0219	86N
A*0219	143T
A*0219	59Y
A*0219	140A
A*0219	87Q
A*0219	133W
A*0219	84Y
A*0219	159Y
A*0219	66K
A*0219	176K
A*0219	106D
A*0219	168L
A*0219	68K
A*0219	120G
A*0219	53E
A*0219	116Y
A*0219	58E
A*0219	134T
A*0219	67V
A*0219	158A
A*0219	94T
A*0219	167G
A*0219	83G
A*0219	129D
A*0219	63E
A*0219	125A
A*0219	44R
A*0219	118Y
A*0219	45M
A*0219	113Y
A*0219	91G
A*0219	157R
A*0219	75R
A*0219	179L
A*0219	77D
A*0219	154E
A*0219	71S
A*0219	178T
A*0219	95V
A*0219	166D
A*0219	48R
A*0219	135A
A*0219	89E
A*0219	180Q
A*0219	49A
A*0219	156Q
A*0219	61D
A*0219	123Y
A*0219	105S
A*0219	165V
A*0219	111R
A*0219	126L
A*0219	52I
A*0219	136A
A*0219	82R
A*0219	155Q
A*0219	78L
A*0219	182T
A*0219	73T
A*0219	181R
A*0219	4S
A*0219	177E
A*0219	12V
A*0219	130L
A*0219	2S
A*0219	164C
A*0219	23I
A*0219	7Y
A*0219	24A
A*0219	13S
A*0219	25V
A*0219	26G
A*0219	14R
A*0219	27Y
A*0219	8F
A*0219	3H
A*0219	28V
A*0219	15P
A*0219	29D
A*0219	30D
A*0219	5M
A*0219	16G
A*0219	31T
A*0219	9F
A*0219	32Q
A*0219	17R
A*0219	33F
A*0219	34V
A*0219	18G
A*0219	35R
A*0219	10T
A*0219	36F
A*0219	19E
A*0219	37D
A*0219	38S
A*0219	6R
A*0219	20P
A*0219	39D
A*0219	11S
A*0219	40A
A*0219	21R
A*0219	41A
A*0219	42S
A*0219	22F
A*0219	43Q
A*0220	176K
A*0220	4S
A*0220	138M
A*0220	12V
A*0220	115Q
A*0220	2S
A*0220	137D
A*0220	23I
A*0220	185P
A*0220	7Y
A*0220	121K
A*0220	24A
A*0220	152V
A*0220	13S
A*0220	175G
A*0220	25V
A*0220	163T
A*0220	26G
A*0220	153A
A*0220	14R
A*0220	186K
A*0220	27Y
A*0220	112G
A*0220	8F
A*0220	187T
A*0220	3H
A*0220	119D
A*0220	28V
A*0220	174N
A*0220	15P
A*0220	151H
A*0220	29D
A*0220	189M
A*0220	30D
A*0220	173E
A*0220	5M
A*0220	131R
A*0220	16G
A*0220	127K
A*0220	31T
A*0220	188H
A*0220	9F
A*0220	117A
A*0220	32Q
A*0220	162G
A*0220	17R
A*0220	172L
A*0220	33F
A*0220	145H
A*0220	34V
A*0220	128E
A*0220	18G
A*0220	190T
A*0220	35R
A*0220	150A
A*0220	10T
A*0220	171Y
A*0220	36F
A*0220	161E
A*0220	19E
A*0220	147W
A*0220	37D
A*0220	124I
A*0220	38S
A*0220	146K
A*0220	6R
A*0220	177E
A*0220	20P
A*0220	132S
A*0220	39D
A*0220	144K
A*0220	11S
A*0220	170R
A*0220	40A
A*0220	169R
A*0220	21R
A*0220	141Q
A*0220	41A
A*0220	148E
A*0220	42S
A*0220	149A
A*0220	22F
A*0220	178T
A*0220	43Q
A*0220	114H
A*0220	90A
A*0220	142T
A*0220	86N
A*0220	139A
A*0220	70H
A*0220	160L
A*0220	79G
A*0220	133W
A*0220	80T
A*0220	140A
A*0220	92S
A*0220	159Y
A*0220	108R
A*0220	143T
A*0220	104G
A*0220	179L
A*0220	81L
A*0220	168L
A*0220	96Q
A*0220	154E
A*0220	51W
A*0220	122D
A*0220	54Q
A*0220	129D
A*0220	50P
A*0220	116Y
A*0220	103V
A*0220	158A
A*0220	47P
A*0220	134T
A*0220	88S
A*0220	120G
A*0220	60W
A*0220	118Y
A*0220	97R
A*0220	167W
A*0220	62G
A*0220	113Y
A*0220	64T
A*0220	125A
A*0220	100G
A*0220	157R
A*0220	102D
A*0220	180Q
A*0220	76V
A*0220	166E
A*0220	46E
A*0220	136A
A*0220	98M
A*0220	184A
A*0220	107W
A*0220	165V
A*0220	69A
A*0220	156L
A*0220	99Y
A*0220	123Y
A*0220	72Q
A*0220	135A
A*0220	85Y
A*0220	191H
A*0220	109F
A*0220	192H
A*0220	101C
A*0220	155Q
A*0220	55E
A*0220	193A
A*0220	93H
A*0220	130L
A*0220	74H
A*0220	183D
A*0220	110L
A*0220	181R
A*0220	65R
A*0220	164C
A*0220	57P
A*0220	182T
A*0220	66N
A*0220	126L
A*0220	59Y
A*0220	253Q
A*0220	106D
A*0220	219R
A*0220	83G
A*0220	270L
A*0220	68K
A*0220	199A
A*0220	84Y
A*0220	245A
A*0220	58E
A*0220	246A
A*0220	49A
A*0220	197H
A*0220	56G
A*0220	198E
A*0220	53E
A*0220	196D
A*0220	63E
A*0220	261V
A*0220	44R
A*0220	195S
A*0220	45M
A*0220	268K
A*0220	87Q
A*0220	248V
A*0220	75R
A*0220	194V
A*0220	94T
A*0220	273R
A*0220	91G
A*0220	207S
A*0220	67V
A*0220	267P
A*0220	77D
A*0220	71S
A*0220	89E
A*0220	48R
A*0220	82R
A*0220	95V
A*0220	61D
A*0220	105S
A*0220	78L
A*0220	111R
A*0220	73T
A*0220	52I
A*0222	4S
A*0222	86N
A*0222	12V
A*0222	80T
A*0222	2S
A*0222	46E
A*0222	23I
A*0222	92S
A*0222	7Y
A*0222	47P
A*0222	24A
A*0222	103V
A*0222	13S
A*0222	81L
A*0222	1G
A*0222	79G
A*0222	25V
A*0222	51W
A*0222	26G
A*0222	96Q
A*0222	14R
A*0222	108R
A*0222	27Y
A*0222	104G
A*0222	8F
A*0222	76V
A*0222	28V
A*0222	70H
A*0222	3H
A*0222	54Q
A*0222	15P
A*0222	49A
A*0222	29D
A*0222	50P
A*0222	30D
A*0222	88S
A*0222	5M
A*0222	97R
A*0222	16G
A*0222	60W
A*0222	31T
A*0222	62G
A*0222	9F
A*0222	64T
A*0222	32Q
A*0222	102D
A*0222	17R
A*0222	69A
A*0222	33F
A*0222	90A
A*0222	34V
A*0222	109F
A*0222	18G
A*0222	111R
A*0222	35R
A*0222	99Y
A*0222	10T
A*0222	85Y
A*0222	36F
A*0222	72Q
A*0222	19E
A*0222	107W
A*0222	37D
A*0222	98M
A*0222	38S
A*0222	55E
A*0222	6R
A*0222	100G
A*0222	20P
A*0222	93H
A*0222	39D
A*0222	101C
A*0222	11S
A*0222	74H
A*0222	40A
A*0222	65R
A*0222	21R
A*0222	110L
A*0222	41A
A*0222	44R
A*0222	42S
A*0222	59Y
A*0222	22F
A*0222	82R
A*0222	43Q
A*0222	58E
A*0222	245A
A*0222	84Y
A*0222	268K
A*0222	53E
A*0222	270L
A*0222	45M
A*0222	267P
A*0222	57P
A*0222	198E
A*0222	56G
A*0222	199A
A*0222	77D
A*0222	261V
A*0222	66K
A*0222	246A
A*0222	106D
A*0222	195S
A*0222	68K
A*0222	248V
A*0222	75R
A*0222	194V
A*0222	91G
A*0222	273R
A*0222	87Q
A*0222	276P
A*0222	94T
A*0222	207S
A*0222	67V
A*0222	197H
A*0222	63E
A*0222	275E
A*0222	71S
A*0222	219R
A*0222	83G
A*0222	253Q
A*0222	78L
A*0222	196D
A*0222	61D
A*0222	154E
A*0222	89E
A*0222	121K
A*0222	95V
A*0222	152V
A*0222	48R
A*0222	176K
A*0222	105S
A*0222	119D
A*0222	73T
A*0222	153A
A*0222	112G
A*0222	186K
A*0222	52I
A*0222	163T
A*0222	115Q
A*0222	185P
A*0222	175G
A*0222	151H
A*0222	174N
A*0222	137D
A*0222	117A
A*0222	131R
A*0222	127K
A*0222	187T
A*0222	162G
A*0222	172L
A*0222	188H
A*0222	173E
A*0222	189M
A*0222	150A
A*0222	146K
A*0222	191H
A*0222	147W
A*0222	190T
A*0222	138M
A*0222	144K
A*0222	171Y
A*0222	141Q
A*0222	124I
A*0222	161E
A*0222	132S
A*0222	170R
A*0222	114H
A*0222	160L
A*0222	142T
A*0222	149A
A*0222	139A
A*0222	133W
A*0222	148E
A*0222	169R
A*0222	178T
A*0222	140A
A*0222	145H
A*0222	159Y
A*0222	143T
A*0222	128E
A*0222	113Y
A*0222	180Q
A*0222	136A
A*0222	122D
A*0222	168L
A*0222	116Y
A*0222	158A
A*0222	134T
A*0222	167W
A*0222	118Y
A*0222	120G
A*0222	183D
A*0222	125A
A*0222	157R
A*0222	184A
A*0222	129D
A*0222	166E
A*0222	165V
A*0222	123Y
A*0222	177E
A*0222	130L
A*0222	156W
A*0222	135A
A*0222	192H
A*0222	193A
A*0222	179L
A*0222	181R
A*0222	155Q
A*0222	182T
A*0222	164C
A*0222	126L
A*0224	4S
A*0224	141Q
A*0224	12V
A*0224	176K
A*0224	23I
A*0224	154E
A*0224	2S
A*0224	136A
A*0224	7Y
A*0224	186K
A*0224	24A
A*0224	175G
A*0224	13S
A*0224	163T
A*0224	25V
A*0224	115Q
A*0224	26G
A*0224	185P
A*0224	14R
A*0224	117A
A*0224	1G
A*0224	152V
A*0224	27Y
A*0224	162G
A*0224	8F
A*0224	153A
A*0224	3H
A*0224	137D
A*0224	28V
A*0224	121K
A*0224	15P
A*0224	151H
A*0224	29D
A*0224	127N
A*0224	30D
A*0224	173E
A*0224	5M
A*0224	131R
A*0224	16G
A*0224	174N
A*0224	31T
A*0224	172L
A*0224	9F
A*0224	187T
A*0224	32Q
A*0224	188H
A*0224	17R
A*0224	189M
A*0224	33F
A*0224	191H
A*0224	43Q
A*0224	133W
A*0224	34V
A*0224	140A
A*0224	18G
A*0224	119D
A*0224	35R
A*0224	171Y
A*0224	10T
A*0224	150A
A*0224	36F
A*0224	190T
A*0224	19E
A*0224	138M
A*0224	37D
A*0224	161E
A*0224	38S
A*0224	170R
A*0224	6R
A*0224	132S
A*0224	20P
A*0224	124I
A*0224	39D
A*0224	145H
A*0224	11S
A*0224	169R
A*0224	40A
A*0224	143T
A*0224	21R
A*0224	148E
A*0224	41A
A*0224	146K
A*0224	42S
A*0224	128E
A*0224	22F
A*0224	147W
A*0224	109F
A*0224	149A
A*0224	96Q
A*0224	159Y
A*0224	51W
A*0224	142T
A*0224	82R
A*0224	139A
A*0224	79G
A*0224	114H
A*0224	86N
A*0224	160L
A*0224	104G
A*0224	144K
A*0224	54Q
A*0224	130L
A*0224	70H
A*0224	184A
A*0224	49A
A*0224	177E
A*0224	81L
A*0224	122D
A*0224	108R
A*0224	158A
A*0224	80T
A*0224	134T
A*0224	50P
A*0224	168L
A*0224	92S
A*0224	116Y
A*0224	88S
A*0224	120G
A*0224	64T
A*0224	125A
A*0224	97R
A*0224	167W
A*0224	60W
A*0224	157R
A*0224	62G
A*0224	118Y
A*0224	111R
A*0224	113Y
A*0224	47P
A*0224	129D
A*0224	103V
A*0224	166E
A*0224	90A
A*0224	135A
A*0224	102D
A*0224	156L
A*0224	99Y
A*0224	192H
A*0224	72Q
A*0224	193A
A*0224	85Y
A*0224	164C
A*0224	107W
A*0224	165V
A*0224	98M
A*0224	179L
A*0224	93H
A*0224	180Q
A*0224	69A
A*0224	123Y
A*0224	100G
A*0224	182T
A*0224	101C
A*0224	178T
A*0224	65R
A*0224	183D
A*0224	74H
A*0224	181R
A*0224	55E
A*0224	126L
A*0224	110L
A*0224	155Q
A*0224	58E
A*0224	268K
A*0224	91G
A*0224	199A
A*0224	75R
A*0224	195S
A*0224	78L
A*0224	276P
A*0224	59Y
A*0224	219R
A*0224	77D
A*0224	198E
A*0224	76V
A*0224	275E
A*0224	84Y
A*0224	270L
A*0224	46E
A*0224	245A
A*0224	56G
A*0224	273R
A*0224	53E
A*0224	196D
A*0224	57P
A*0224	267P
A*0224	87Q
A*0224	194V
A*0224	68K
A*0224	261V
A*0224	106D
A*0224	197H
A*0224	66K
A*0224	246A
A*0224	63E
A*0224	253Q
A*0224	67V
A*0224	248V
A*0224	71S
A*0224	207S
A*0224	94T
A*0224	61D
A*0224	73T
A*0224	44R
A*0224	83G
A*0224	45M
A*0224	48R
A*0224	95V
A*0224	105S
A*0224	89E
A*0224	52I
A*0224	112G
A*0227	4S
A*0227	82R
A*0227	12V
A*0227	104G
A*0227	23I
A*0227	54Q
A*0227	2S
A*0227	78L
A*0227	7Y
A*0227	49A
A*0227	24A
A*0227	86N
A*0227	13S
A*0227	81L
A*0227	25V
A*0227	70H
A*0227	26G
A*0227	79G
A*0227	14R
A*0227	108R
A*0227	27Y
A*0227	50P
A*0227	8F
A*0227	96Q
A*0227	28V
A*0227	92S
A*0227	3H
A*0227	88S
A*0227	15P
A*0227	80T
A*0227	29D
A*0227	51W
A*0227	30D
A*0227	62G
A*0227	5M
A*0227	97R
A*0227	16G
A*0227	64T
A*0227	31T
A*0227	60W
A*0227	9F
A*0227	72Q
A*0227	32Q
A*0227	85Y
A*0227	17R
A*0227	99Y
A*0227	33F
A*0227	90A
A*0227	34V
A*0227	103V
A*0227	18G
A*0227	107W
A*0227	35R
A*0227	102D
A*0227	10T
A*0227	98M
A*0227	36F
A*0227	47P
A*0227	19E
A*0227	65R
A*0227	37D
A*0227	100G
A*0227	42S
A*0227	111R
A*0227	38S
A*0227	101C
A*0227	6R
A*0227	69A
A*0227	20P
A*0227	110L
A*0227	39D
A*0227	93H
A*0227	11S
A*0227	55E
A*0227	40A
A*0227	74H
A*0227	21R
A*0227	59Y
A*0227	41A
A*0227	84Y
A*0227	22F
A*0227	73T
A*0227	43Q
A*0227	76V
A*0227	117A
A*0227	46E
A*0227	175G
A*0227	53E
A*0227	136A
A*0227	109F
A*0227	154E
A*0227	57P
A*0227	176K
A*0227	56G
A*0227	162G
A*0227	68K
A*0227	140A
A*0227	58E
A*0227	133W
A*0227	66K
A*0227	177E
A*0227	106D
A*0227	130L
A*0227	71S
A*0227	163T
A*0227	87Q
A*0227	115Q
A*0227	63E
A*0227	137D
A*0227	67V
A*0227	172L
A*0227	94T
A*0227	173E
A*0227	75R
A*0227	153A
A*0227	45M
A*0227	121K
A*0227	91G
A*0227	152A
A*0227	44R
A*0227	174N
A*0227	83G
A*0227	151H
A*0227	52I
A*0227	131R
A*0227	48R
A*0227	127K
A*0227	105S
A*0227	119D
A*0227	77D
A*0227	128E
A*0227	95V
A*0227	159Y
A*0227	89E
A*0227	171Y
A*0227	61D
A*0227	170R
A*0227	112G
A*0227	161E
A*0227	124I
A*0227	143T
A*0227	138M
A*0227	132S
A*0227	150A
A*0227	165V
A*0227	147W
A*0227	146K
A*0227	149A
A*0227	148E
A*0227	169R
A*0227	179L
A*0227	139A
A*0227	160L
A*0227	142T
A*0227	144K
A*0227	145H
A*0227	114H
A*0227	134T
A*0227	158A
A*0227	122D
A*0227	180Q
A*0227	141Q
A*0227	168L
A*0227	116Y
A*0227	157R
A*0227	120G
A*0227	118Y
A*0227	167W
A*0227	125A
A*0227	129D
A*0227	164C
A*0227	135A
A*0227	166E
A*0227	113Y
A*0227	156Q
A*0227	182T
A*0227	178T
A*0227	123Y
A*0227	126L
A*0227	181R
A*0227	155Q
A*0228	78L
A*0228	154E
A*0228	88S
A*0228	176K
A*0228	49A
A*0228	172L
A*0228	81L
A*0228	177E
A*0228	73T
A*0228	143T
A*0228	82R
A*0228	159Y
A*0228	86N
A*0228	128E
A*0228	70H
A*0228	173E
A*0228	79G
A*0228	115Q
A*0228	108R
A*0228	130L
A*0228	51W
A*0228	136A
A*0228	54Q
A*0228	163T
A*0228	60W
A*0228	153A
A*0228	97R
A*0228	175G
A*0228	62G
A*0228	121K
A*0228	64T
A*0228	152V
A*0228	104G
A*0228	151H
A*0228	92S
A*0228	137D
A*0228	80T
A*0228	127K
A*0228	96Q
A*0228	131R
A*0228	50P
A*0228	174N
A*0228	65R
A*0228	161E
A*0228	103V
A*0228	124I
A*0228	107W
A*0228	171Y
A*0228	98M
A*0228	162G
A*0228	47P
A*0228	170R
A*0228	102D
A*0228	117A
A*0228	90A
A*0228	119D
A*0228	110L
A*0228	132S
A*0228	69A
A*0228	138M
A*0228	99Y
A*0228	150A
A*0228	85Y
A*0228	146K
A*0228	72Q
A*0228	149A
A*0228	101C
A*0228	147W
A*0228	111R
A*0228	144K
A*0228	100G
A*0228	148E
A*0228	55E
A*0228	142T
A*0228	93H
A*0228	139A
A*0228	74H
A*0228	169R
A*0228	46E
A*0228	145H
A*0228	53E
A*0228	160L
A*0228	76V
A*0228	114H
A*0228	52I
A*0228	122D
A*0228	56S
A*0228	141Q
A*0228	57P
A*0228	157R
A*0228	109F
A*0228	164C
A*0228	59Y
A*0228	133W
A*0228	71S
A*0228	140A
A*0228	84Y
A*0228	168L
A*0228	66K
A*0228	181R
A*0228	106D
A*0228	116Y
A*0228	87Q
A*0228	134T
A*0228	94T
A*0228	158A
A*0228	58E
A*0228	118Y
A*0228	68K
A*0228	120G
A*0228	63E
A*0228	125A
A*0228	67V
A*0228	167W
A*0228	48R
A*0228	182T
A*0228	105S
A*0228	135A
A*0228	95V
A*0228	178T
A*0228	91G
A*0228	129D
A*0228	75R
A*0228	166E
A*0228	77D
A*0228	113Y
A*0228	89E
A*0228	156L
A*0228	44R
A*0228	165V
A*0228	83G
A*0228	126L
A*0228	45M
A*0228	179L
A*0228	61D
A*0228	155Q
A*0228	112G
A*0228	123Y
A*0228	12V
A*0228	180Q
A*0228	4S
A*0228	23I
A*0228	2S
A*0228	7Y
A*0228	24A
A*0228	13S
A*0228	25V
A*0228	26G
A*0228	14R
A*0228	27Y
A*0228	8F
A*0228	28V
A*0228	3H
A*0228	15P
A*0228	29D
A*0228	30D
A*0228	5M
A*0228	16G
A*0228	31T
A*0228	9Y
A*0228	32Q
A*0228	17R
A*0228	33F
A*0228	34V
A*0228	18G
A*0228	35R
A*0228	10T
A*0228	36F
A*0228	19E
A*0228	37D
A*0228	38S
A*0228	6R
A*0228	20P
A*0228	39D
A*0228	11S
A*0228	40A
A*0228	21R
A*0228	41A
A*0228	42S
A*0228	22F
A*0228	43Q
A*0230	115Q
A*0230	12V
A*0230	177E
A*0230	4S
A*0230	164C
A*0230	23I
A*0230	184A
A*0230	2S
A*0230	130L
A*0230	7Y
A*0230	176K
A*0230	24A
A*0230	185P
A*0230	13S
A*0230	154E
A*0230	25V
A*0230	163T
A*0230	26G
A*0230	136A
A*0230	14R
A*0230	175G
A*0230	27Y
A*0230	137D
A*0230	1G
A*0230	151H
A*0230	8F
A*0230	186K
A*0230	28V
A*0230	152V
A*0230	3Q
A*0230	153A
A*0230	15P
A*0230	188H
A*0230	29D
A*0230	187T
A*0230	30D
A*0230	121K
A*0230	5M
A*0230	131R
A*0230	16G
A*0230	189M
A*0230	31T
A*0230	174N
A*0230	9F
A*0230	127K
A*0230	32Q
A*0230	171Y
A*0230	17R
A*0230	172L
A*0230	33F
A*0230	132S
A*0230	34V
A*0230	192H
A*0230	18G
A*0230	173E
A*0230	35R
A*0230	191H
A*0230	10T
A*0230	162G
A*0230	36F
A*0230	144K
A*0230	19E
A*0230	119D
A*0230	37D
A*0230	138M
A*0230	38S
A*0230	150A
A*0230	6R
A*0230	190T
A*0230	20P
A*0230	117A
A*0230	39D
A*0230	148E
A*0230	11S
A*0230	161E
A*0230	40A
A*0230	170R
A*0230	21R
A*0230	169R
A*0230	41A
A*0230	165V
A*0230	42S
A*0230	142T
A*0230	22F
A*0230	147W
A*0230	43Q
A*0230	124I
A*0230	81L
A*0230	145H
A*0230	97R
A*0230	149A
A*0230	62G
A*0230	146K
A*0230	60W
A*0230	114H
A*0230	65R
A*0230	160L
A*0230	64T
A*0230	139A
A*0230	70H
A*0230	182T
A*0230	82R
A*0230	141Q
A*0230	86N
A*0230	178T
A*0230	79G
A*0230	143T
A*0230	78L
A*0230	140A
A*0230	52I
A*0230	159Y
A*0230	108R
A*0230	133W
A*0230	73T
A*0230	135A
A*0230	92S
A*0230	128E
A*0230	80T
A*0230	122D
A*0230	104G
A*0230	168L
A*0230	96Q
A*0230	116Y
A*0230	49A
A*0230	158A
A*0230	50P
A*0230	125A
A*0230	51W
A*0230	167W
A*0230	54Q
A*0230	134T
A*0230	110L
A*0230	118Y
A*0230	105S
A*0230	120G
A*0230	107W
A*0230	126L
A*0230	103V
A*0230	157R
A*0230	88S
A*0230	129D
A*0230	98M
A*0230	155Q
A*0230	47P
A*0230	181R
A*0230	90A
A*0230	166E
A*0230	102D
A*0230	156L
A*0230	101C
A*0230	113Y
A*0230	85Y
A*0230	193A
A*0230	111R
A*0230	194V
A*0230	95V
A*0230	179L
A*0230	100G
A*0230	180Q
A*0230	99Y
A*0230	123Y
A*0230	69A
A*0230	183D
A*0230	72Q
A*0230	275E
A*0230	55E
A*0230	246A
A*0230	93H
A*0230	196D
A*0230	74H
A*0230	245A
A*0230	56G
A*0230	207S
A*0230	76V
A*0230	199A
A*0230	57P
A*0230	276P
A*0230	71S
A*0230	273R
A*0230	109F
A*0230	248V
A*0230	59Y
A*0230	253Q
A*0230	63E
A*0230	268K
A*0230	66K
A*0230	261V
A*0230	106D
A*0230	197H
A*0230	84Y
A*0230	219R
A*0230	46E
A*0230	267P
A*0230	94T
A*0230	198E
A*0230	53E
A*0230	270L
A*0230	58E
A*0230	195S
A*0230	68K
A*0230	67V
A*0230	87Q
A*0230	75R
A*0230	89E
A*0230	91G
A*0230	44R
A*0230	45M
A*0230	77D
A*0230	83G
A*0230	112G
A*0230	48R
A*0230	61D
A*0234	248V
A*0234	79G
A*0234	253Q
A*0234	110L
A*0234	261V
A*0234	108R
A*0234	197H
A*0234	78L
A*0234	270L
A*0234	73T
A*0234	207S
A*0234	52I
A*0234	267P
A*0234	82R
A*0234	219R
A*0234	86N
A*0234	245A
A*0234	50P
A*0234	268K
A*0234	49A
A*0234	199A
A*0234	70Q
A*0234	198E
A*0234	96Q
A*0234	196D
A*0234	81L
A*0234	273R
A*0234	104G
A*0234	246A
A*0234	80T
A*0234	12V
A*0234	92S
A*0234	4S
A*0234	89E
A*0234	23I
A*0234	54Q
A*0234	2S
A*0234	51W
A*0234	7Y
A*0234	103V
A*0234	24A
A*0234	98M
A*0234	13S
A*0234	64T
A*0234	25V
A*0234	97R
A*0234	26G
A*0234	88S
A*0234	14R
A*0234	47P
A*0234	27Y
A*0234	90A
A*0234	8F
A*0234	60W
A*0234	28V
A*0234	62G
A*0234	3H
A*0234	102D
A*0234	15P
A*0234	107W
A*0234	29D
A*0234	100G
A*0234	30D
A*0234	99Y
A*0234	5M
A*0234	55E
A*0234	16G
A*0234	85Y
A*0234	31T
A*0234	69A
A*0234	9F
A*0234	72Q
A*0234	32Q
A*0234	101C
A*0234	17R
A*0234	111R
A*0234	33F
A*0234	93H
A*0234	34V
A*0234	74H
A*0234	18G
A*0234	94T
A*0234	35R
A*0234	63E
A*0234	10T
A*0234	65R
A*0234	36F
A*0234	59Y
A*0234	19E
A*0234	76V
A*0234	37D
A*0234	109F
A*0234	38S
A*0234	84Y
A*0234	6R
A*0234	56G
A*0234	20P
A*0234	46E
A*0234	39D
A*0234	68K
A*0234	11S
A*0234	67V
A*0234	40A
A*0234	106D
A*0234	21R
A*0234	57P
A*0234	41A
A*0234	53E
A*0234	42S
A*0234	66K
A*0234	22F
A*0234	58E
A*0234	43Q
A*0234	87Q
A*0234	130L
A*0234	44R
A*0234	176K
A*0234	91G
A*0234	151H
A*0234	45M
A*0234	144K
A*0234	71S
A*0234	182T
A*0234	75R
A*0234	137D
A*0234	77D
A*0234	163T
A*0234	83G
A*0234	136A
A*0234	112G
A*0234	164C
A*0234	105S
A*0234	184A
A*0234	113Y
A*0234	177E
A*0234	61D
A*0234	185P
A*0234	95V
A*0234	154E
A*0234	48R
A*0234	178T
A*0234	188H
A*0234	186K
A*0234	115Q
A*0234	152V
A*0234	153A
A*0234	175G
A*0234	131R
A*0234	127K
A*0234	174N
A*0234	121K
A*0234	189M
A*0234	187T
A*0234	172L
A*0234	142T
A*0234	191H
A*0234	162G
A*0234	169R
A*0234	173E
A*0234	192H
A*0234	171Y
A*0234	150A
A*0234	119D
A*0234	190T
A*0234	138M
A*0234	117A
A*0234	170R
A*0234	114H
A*0234	145H
A*0234	160L
A*0234	132S
A*0234	161E
A*0234	124I
A*0234	147W
A*0234	148E
A*0234	146K
A*0234	139A
A*0234	149A
A*0234	159Y
A*0234	133W
A*0234	126L
A*0234	140A
A*0234	181R
A*0234	168L
A*0234	128E
A*0234	143T
A*0234	141Q
A*0234	116Y
A*0234	122D
A*0234	158A
A*0234	125A
A*0234	167W
A*0234	118Y
A*0234	134T
A*0234	120G
A*0234	179L
A*0234	129D
A*0234	157R
A*0234	155Q
A*0234	180Q
A*0234	166E
A*0234	156L
A*0234	193A
A*0234	194V
A*0234	195S
A*0234	123Y
A*0234	183D
A*0234	135A
A*0234	165V
A*0235	112G
A*0235	163T
A*0235	108R
A*0235	136A
A*0235	45M
A*0235	142T
A*0235	50P
A*0235	169R
A*0235	86N
A*0235	182T
A*0235	73T
A*0235	126L
A*0235	52I
A*0235	164C
A*0235	78L
A*0235	181R
A*0235	82R
A*0235	154E
A*0235	104G
A*0235	177E
A*0235	96Q
A*0235	178T
A*0235	51W
A*0235	115Q
A*0235	70Q
A*0235	127K
A*0235	81L
A*0235	131R
A*0235	79G
A*0235	175G
A*0235	54Q
A*0235	153A
A*0235	80T
A*0235	130L
A*0235	92S
A*0235	176K
A*0235	49A
A*0235	152V
A*0235	88S
A*0235	174N
A*0235	97R
A*0235	121K
A*0235	90A
A*0235	151H
A*0235	55E
A*0235	137D
A*0235	103V
A*0235	145H
A*0235	60W
A*0235	114H
A*0235	64T
A*0235	162G
A*0235	62G
A*0235	160L
A*0235	102D
A*0235	150A
A*0235	85Y
A*0235	173E
A*0235	98M
A*0235	172L
A*0235	47P
A*0235	171Y
A*0235	95V
A*0235	119D
A*0235	99Y
A*0235	138M
A*0235	107W
A*0235	117A
A*0235	101C
A*0235	132S
A*0235	93H
A*0235	161E
A*0235	111R
A*0235	124I
A*0235	74D
A*0235	147W
A*0235	69A
A*0235	170R
A*0235	100G
A*0235	148E
A*0235	72Q
A*0235	139A
A*0235	59Y
A*0235	146K
A*0235	65R
A*0235	149A
A*0235	109F
A*0235	125A
A*0235	76V
A*0235	168L
A*0235	110L
A*0235	155Q
A*0235	67V
A*0235	128E
A*0235	56G
A*0235	179L
A*0235	84Y
A*0235	144K
A*0235	106D
A*0235	180Q
A*0235	66K
A*0235	141Q
A*0235	46E
A*0235	140A
A*0235	53E
A*0235	116Y
A*0235	58E
A*0235	159Y
A*0235	57P
A*0235	143T
A*0235	68K
A*0235	122D
A*0235	87Q
A*0235	133W
A*0235	77D
A*0235	118Y
A*0235	94T
A*0235	167W
A*0235	83G
A*0235	158A
A*0235	91G
A*0235	120G
A*0235	75R
A*0235	134T
A*0235	63E
A*0235	156L
A*0235	71S
A*0235	123Y
A*0235	61D
A*0235	129D
A*0235	113Y
A*0235	166E
A*0235	44R
A*0235	157R
A*0235	105S
A*0235	135A
A*0235	89E
A*0235	165V
A*0235	48R
A*0235	12V
A*0235	4S
A*0235	23I
A*0235	2S
A*0235	7Y
A*0235	24A
A*0235	13S
A*0235	25V
A*0235	26G
A*0235	14R
A*0235	27Y
A*0235	8F
A*0235	28V
A*0235	3H
A*0235	15P
A*0235	29D
A*0235	30D
A*0235	5M
A*0235	16G
A*0235	31T
A*0235	9F
A*0235	32Q
A*0235	17R
A*0235	33F
A*0235	34V
A*0235	18G
A*0235	35R
A*0235	10T
A*0235	36F
A*0235	19E
A*0235	42S
A*0235	37D
A*0235	38S
A*0235	6R
A*0235	20P
A*0235	39D
A*0235	11S
A*0235	40A
A*0235	21R
A*0235	41A
A*0235	22F
A*0235	43Q
A*0236	127K
A*0236	12V
A*0236	155Q
A*0236	4S
A*0236	182T
A*0236	23I
A*0236	160L
A*0236	2S
A*0236	131R
A*0236	7Y
A*0236	145H
A*0236	24A
A*0236	126L
A*0236	13S
A*0236	178T
A*0236	25V
A*0236	181R
A*0236	26G
A*0236	154E
A*0236	14R
A*0236	179L
A*0236	27Y
A*0236	114H
A*0236	8F
A*0236	177E
A*0236	28V
A*0236	180Q
A*0236	3H
A*0236	164C
A*0236	15P
A*0236	175G
A*0236	29D
A*0236	156L
A*0236	30D
A*0236	174N
A*0236	5M
A*0236	153A
A*0236	16G
A*0236	176K
A*0236	31T
A*0236	130L
A*0236	9F
A*0236	121K
A*0236	32Q
A*0236	115Q
A*0236	17R
A*0236	152V
A*0236	33F
A*0236	136A
A*0236	34V
A*0236	163T
A*0236	18G
A*0236	135A
A*0236	35R
A*0236	151H
A*0236	10T
A*0236	172L
A*0236	36F
A*0236	137D
A*0236	19E
A*0236	173E
A*0236	37D
A*0236	138M
A*0236	38S
A*0236	119D
A*0236	6R
A*0236	162G
A*0236	20P
A*0236	171Y
A*0236	39D
A*0236	117A
A*0236	11S
A*0236	150A
A*0236	40A
A*0236	139A
A*0236	21R
A*0236	147W
A*0236	41A
A*0236	124I
A*0236	42S
A*0236	161E
A*0236	22F
A*0236	170R
A*0236	43Q
A*0236	132S
A*0236	86N
A*0236	146K
A*0236	52I
A*0236	149A
A*0236	51W
A*0236	148E
A*0236	55E
A*0236	118Y
A*0236	73T
A*0236	167G
A*0236	78L
A*0236	123Y
A*0236	82R
A*0236	116Y
A*0236	54Q
A*0236	144K
A*0236	108R
A*0236	140A
A*0236	79G
A*0236	169R
A*0236	81L
A*0236	122D
A*0236	70H
A*0236	142T
A*0236	104G
A*0236	159Y
A*0236	96Q
A*0236	133W
A*0236	92S
A*0236	141Q
A*0236	49A
A*0236	143T
A*0236	80T
A*0236	168L
A*0236	112G
A*0236	128E
A*0236	102D
A*0236	120G
A*0236	50P
A*0236	134T
A*0236	97R
A*0236	158A
A*0236	103V
A*0236	125A
A*0236	60W
A*0236	129D
A*0236	62G
A*0236	157R
A*0236	64T
A*0236	166D
A*0236	88S
A*0236	165V
A*0236	93H
A*0236	98M
A*0236	90A
A*0236	99Y
A*0236	47P
A*0236	107W
A*0236	74H
A*0236	85Y
A*0236	111R
A*0236	101C
A*0236	69A
A*0236	100G
A*0236	72Q
A*0236	109F
A*0236	65R
A*0236	67V
A*0236	76V
A*0236	110L
A*0236	84Y
A*0236	59Y
A*0236	46E
A*0236	58E
A*0236	87Q
A*0236	66K
A*0236	53E
A*0236	106D
A*0236	57P
A*0236	56G
A*0236	68K
A*0236	83G
A*0236	94T
A*0236	95V
A*0236	63E
A*0236	91G
A*0236	75R
A*0236	71S
A*0236	113Y
A*0236	105S
A*0236	77D
A*0236	89E
A*0236	48R
A*0236	61D
A*0236	44R
A*0236	45M
A*0238	12V
A*0238	78L
A*0238	4S
A*0238	54Q
A*0238	23I
A*0238	82R
A*0238	2S
A*0238	81L
A*0238	7Y
A*0238	108R
A*0238	24A
A*0238	70H
A*0238	13S
A*0238	79G
A*0238	25V
A*0238	86N
A*0238	26G
A*0238	73T
A*0238	14R
A*0238	52I
A*0238	27Y
A*0238	104G
A*0238	8F
A*0238	96Q
A*0238	28V
A*0238	92S
A*0238	3H
A*0238	49A
A*0238	15P
A*0238	80T
A*0238	29D
A*0238	112G
A*0238	30D
A*0238	93H
A*0238	16G
A*0238	60W
A*0238	5M
A*0238	50P
A*0238	31T
A*0238	51W
A*0238	9F
A*0238	103V
A*0238	32Q
A*0238	97R
A*0238	17R
A*0238	64T
A*0238	33F
A*0238	105S
A*0238	34V
A*0238	62G
A*0238	18G
A*0238	88S
A*0238	35R
A*0238	102D
A*0238	10T
A*0238	99Y
A*0238	36F
A*0238	74H
A*0238	19E
A*0238	98M
A*0238	37D
A*0238	90A
A*0238	38S
A*0238	107W
A*0238	6R
A*0238	47P
A*0238	20P
A*0238	69A
A*0238	39D
A*0238	72Q
A*0238	11S
A*0238	85Y
A*0238	40A
A*0238	111R
A*0238	21R
A*0238	100G
A*0238	41A
A*0238	101C
A*0238	42S
A*0238	58E
A*0238	22F
A*0238	46E
A*0238	43Q
A*0238	65R
A*0238	126L
A*0238	95V
A*0238	174N
A*0238	110L
A*0238	178T
A*0238	76V
A*0238	177E
A*0238	55E
A*0238	182T
A*0238	87Q
A*0238	155Q
A*0238	109F
A*0238	180Q
A*0238	59Y
A*0238	123Y
A*0238	57P
A*0238	181R
A*0238	53E
A*0238	164C
A*0238	56G
A*0238	179L
A*0238	84Y
A*0238	176K
A*0238	106D
A*0238	152E
A*0238	66K
A*0238	154E
A*0238	68K
A*0238	121K
A*0238	94T
A*0238	130L
A*0238	67V
A*0238	153A
A*0238	63E
A*0238	115Q
A*0238	91G
A*0238	175G
A*0238	75R
A*0238	136A
A*0238	71S
A*0238	163R
A*0238	48R
A*0238	138M
A*0238	113Y
A*0238	151H
A*0238	77D
A*0238	172L
A*0238	89E
A*0238	131R
A*0238	83G
A*0238	173E
A*0238	45M
A*0238	127K
A*0238	61D
A*0238	137D
A*0238	44R
A*0238	139A
A*0238	119D
A*0238	171Y
A*0238	117A
A*0238	162G
A*0238	146K
A*0238	150A
A*0238	170R
A*0238	132S
A*0238	124I
A*0238	161E
A*0238	147W
A*0238	148E
A*0238	149T
A*0238	122D
A*0238	144K
A*0238	160L
A*0238	142T
A*0238	145H
A*0238	133W
A*0238	159Y
A*0238	140A
A*0238	169R
A*0238	141Q
A*0238	114H
A*0238	143T
A*0238	128E
A*0238	120G
A*0238	168L
A*0238	116Y
A*0238	158A
A*0238	134T
A*0238	135A
A*0238	125A
A*0238	167W
A*0238	118Y
A*0238	129D
A*0238	157R
A*0238	166E
A*0238	165V
A*0238	156Q
A*0244	83G
A*0244	121K
A*0244	95V
A*0244	180Q
A*0244	93H
A*0244	139A
A*0244	82R
A*0244	181R
A*0244	92S
A*0244	152V
A*0244	52I
A*0244	155Q
A*0244	70H
A*0244	126L
A*0244	108R
A*0244	182T
A*0244	78L
A*0244	123Y
A*0244	86N
A*0244	164C
A*0244	73T
A*0244	179L
A*0244	49A
A*0244	178T
A*0244	79G
A*0244	154E
A*0244	81L
A*0244	177E
A*0244	96Q
A*0244	153A
A*0244	80T
A*0244	130L
A*0244	104G
A*0244	176K
A*0244	112G
A*0244	165V
A*0244	74H
A*0244	175G
A*0244	62G
A*0244	115Q
A*0244	54Q
A*0244	163T
A*0244	51W
A*0244	136A
A*0244	50P
A*0244	151H
A*0244	97R
A*0244	146K
A*0244	103V
A*0244	171Y
A*0244	64T
A*0244	174N
A*0244	88S
A*0244	131R
A*0244	98M
A*0244	172L
A*0244	69A
A*0244	137D
A*0244	107W
A*0244	127K
A*0244	100G
A*0244	173E
A*0244	72Q
A*0244	119D
A*0244	90A
A*0244	162G
A*0244	60W
A*0244	117A
A*0244	102D
A*0244	150A
A*0244	99Y
A*0244	170R
A*0244	47P
A*0244	138M
A*0244	85Y
A*0244	132S
A*0244	101C
A*0244	147W
A*0244	111R
A*0244	161E
A*0244	110L
A*0244	149A
A*0244	87Q
A*0244	148E
A*0244	57P
A*0244	124I
A*0244	65R
A*0244	160L
A*0244	55E
A*0244	135A
A*0244	76V
A*0244	120G
A*0244	109F
A*0244	145R
A*0244	84Y
A*0244	144K
A*0244	106D
A*0244	133W
A*0244	56G
A*0244	141Q
A*0244	59Y
A*0244	142I
A*0244	66K
A*0244	169R
A*0244	68K
A*0244	143T
A*0244	53E
A*0244	114H
A*0244	48R
A*0244	140A
A*0244	75R
A*0244	159Y
A*0244	58E
A*0244	168L
A*0244	94T
A*0244	122D
A*0244	46E
A*0244	158A
A*0244	67V
A*0244	128E
A*0244	71S
A*0244	134T
A*0244	91G
A*0244	116Y
A*0244	113Y
A*0244	167W
A*0244	89E
A*0244	118Y
A*0244	63E
A*0244	166E
A*0244	45M
A*0244	125A
A*0244	77D
A*0244	129D
A*0244	61D
A*0244	157R
A*0244	105S
A*0244	156Q
A*0244	12V
A*0244	4S
A*0244	23I
A*0244	2S
A*0244	7Y
A*0244	24A
A*0244	13S
A*0244	25V
A*0244	26G
A*0244	14R
A*0244	27Y
A*0244	8F
A*0244	28V
A*0244	3H
A*0244	15P
A*0244	29D
A*0244	30D
A*0244	43Q
A*0244	16G
A*0244	5M
A*0244	31T
A*0244	9Y
A*0244	32Q
A*0244	17R
A*0244	33F
A*0244	34V
A*0244	18G
A*0244	35R
A*0244	10T
A*0244	36F
A*0244	19E
A*0244	37D
A*0244	38S
A*0244	6R
A*0244	20P
A*0244	39D
A*0244	40A
A*0244	11S
A*0244	21R
A*0244	41A
A*0244	42S
A*0244	22F
A*0244	44R
A*0260	155Q
A*0260	12V
A*0260	146K
A*0260	4S
A*0260	135A
A*0260	23I
A*0260	179L
A*0260	2S
A*0260	126L
A*0260	7Y
A*0260	182T
A*0260	24A
A*0260	164C
A*0260	13S
A*0260	123Y
A*0260	25V
A*0260	177E
A*0260	26G
A*0260	178T
A*0260	14R
A*0260	153A
A*0260	27Y
A*0260	181R
A*0260	8F
A*0260	180Q
A*0260	28V
A*0260	130L
A*0260	3H
A*0260	154E
A*0260	15P
A*0260	115Q
A*0260	29D
A*0260	176K
A*0260	30D
A*0260	163T
A*0260	16G
A*0260	136A
A*0260	5M
A*0260	175G
A*0260	31T
A*0260	174N
A*0260	9F
A*0260	162G
A*0260	32Q
A*0260	119D
A*0260	17R
A*0260	152V
A*0260	33F
A*0260	127K
A*0260	34V
A*0260	117A
A*0260	42S
A*0260	137D
A*0260	18G
A*0260	173E
A*0260	35R
A*0260	131R
A*0260	10T
A*0260	172L
A*0260	36F
A*0260	121K
A*0260	19E
A*0260	151H
A*0260	37D
A*0260	138M
A*0260	38S
A*0260	147W
A*0260	6R
A*0260	171Y
A*0260	20P
A*0260	161E
A*0260	39D
A*0260	132S
A*0260	11S
A*0260	170R
A*0260	40A
A*0260	150A
A*0260	21R
A*0260	149A
A*0260	41A
A*0260	124I
A*0260	44R
A*0260	148E
A*0260	22F
A*0260	133W
A*0260	43Q
A*0260	139A
A*0260	74H
A*0260	141Q
A*0260	82R
A*0260	160L
A*0260	92S
A*0260	142T
A*0260	49A
A*0260	143T
A*0260	95V
A*0260	140A
A*0260	80T
A*0260	114H
A*0260	73T
A*0260	159Y
A*0260	86N
A*0260	145H
A*0260	78L
A*0260	144K
A*0260	108R
A*0260	169R
A*0260	96Q
A*0260	122D
A*0260	79G
A*0260	158A
A*0260	70H
A*0260	168L
A*0260	81L
A*0260	134T
A*0260	52I
A*0260	128E
A*0260	112G
A*0260	116F
A*0260	104G
A*0260	120G
A*0260	100G
A*0260	167W
A*0260	69A
A*0260	166E
A*0260	72Q
A*0260	165V
A*0260	50P
A*0260	118Y
A*0260	97R
A*0260	129D
A*0260	54Q
A*0260	157R
A*0260	88S
A*0260	125A
A*0260	103V
A*0260	156L
A*0260	64T
A*0260	51W
A*0260	98M
A*0260	60W
A*0260	102D
A*0260	62G
A*0260	107W
A*0260	111R
A*0260	90A
A*0260	99Y
A*0260	101C
A*0260	47P
A*0260	85Y
A*0260	48R
A*0260	93H
A*0260	55E
A*0260	76V
A*0260	65R
A*0260	110L
A*0260	56G
A*0260	109F
A*0260	53E
A*0260	59Y
A*0260	68K
A*0260	84Y
A*0260	66K
A*0260	106D
A*0260	46E
A*0260	67V
A*0260	45M
A*0260	71S
A*0260	87Q
A*0260	58E
A*0260	94T
A*0260	91G
A*0260	57P
A*0260	113Y
A*0260	63E
A*0260	75R
A*0260	83G
A*0260	61D
A*0260	77D
A*0260	105S
A*0260	89E
A*0301	12V
A*0301	72Q
A*0301	4S
A*0301	80T
A*0301	23I
A*0301	100G
A*0301	2S
A*0301	95I
A*0301	7Y
A*0301	69A
A*0301	24A
A*0301	48R
A*0301	13S
A*0301	73T
A*0301	25V
A*0301	86N
A*0301	26G
A*0301	78L
A*0301	14R
A*0301	82R
A*0301	27Y
A*0301	108R
A*0301	8F
A*0301	112G
A*0301	28V
A*0301	79G
A*0301	3H
A*0301	70Q
A*0301	15P
A*0301	81L
A*0301	29D
A*0301	96Q
A*0301	30D
A*0301	52I
A*0301	1G
A*0301	104G
A*0301	16G
A*0301	50P
A*0301	5M
A*0301	92S
A*0301	31T
A*0301	49A
A*0301	9F
A*0301	97I
A*0301	32Q
A*0301	88S
A*0301	17R
A*0301	54Q
A*0301	33F
A*0301	64T
A*0301	34V
A*0301	103V
A*0301	18G
A*0301	51W
A*0301	35R
A*0301	62Q
A*0301	10T
A*0301	111R
A*0301	36F
A*0301	101C
A*0301	19E
A*0301	47P
A*0301	41A
A*0301	102D
A*0301	37D
A*0301	98M
A*0301	38S
A*0301	60W
A*0301	6R
A*0301	107G
A*0301	20P
A*0301	90A
A*0301	39D
A*0301	99Y
A*0301	11S
A*0301	85Y
A*0301	40A
A*0301	56G
A*0301	21R
A*0301	93H
A*0301	44R
A*0301	55E
A*0301	42S
A*0301	74D
A*0301	22F
A*0301	45M
A*0301	43Q
A*0301	65R
A*0301	179L
A*0301	76V
A*0301	188H
A*0301	68K
A*0301	135A
A*0301	71S
A*0301	126L
A*0301	109F
A*0301	155Q
A*0301	53E
A*0301	182T
A*0301	110L
A*0301	185P
A*0301	66N
A*0301	184P
A*0301	59Y
A*0301	164C
A*0301	84Y
A*0301	123Y
A*0301	106D
A*0301	115Q
A*0301	87Q
A*0301	178T
A*0301	75R
A*0301	130L
A*0301	57P
A*0301	153A
A*0301	67V
A*0301	186K
A*0301	46E
A*0301	180Q
A*0301	91G
A*0301	181R
A*0301	94T
A*0301	154E
A*0301	58E
A*0301	189M
A*0301	113Y
A*0301	176K
A*0301	61D
A*0301	163T
A*0301	114R
A*0301	187T
A*0301	63E
A*0301	136A
A*0301	83G
A*0301	177E
A*0301	77D
A*0301	175G
A*0301	105S
A*0301	161D
A*0301	89E
A*0301	137D
A*0301	275E
A*0301	127N
A*0301	207G
A*0301	173E
A*0301	253E
A*0301	147W
A*0301	267P
A*0301	121K
A*0301	197H
A*0301	174N
A*0301	276L
A*0301	131R
A*0301	246A
A*0301	192H
A*0301	245A
A*0301	172L
A*0301	268K
A*0301	191H
A*0301	199A
A*0301	152E
A*0301	248V
A*0301	193P
A*0301	219R
A*0301	190T
A*0301	273R
A*0301	151H
A*0301	270L
A*0301	132S
A*0301	198E
A*0301	170R
A*0301	261V
A*0301	171Y
A*0301	117A
A*0301	119D
A*0301	150A
A*0301	162G
A*0301	149A
A*0301	148E
A*0301	138M
A*0301	124I
A*0301	160L
A*0301	142I
A*0301	158A
A*0301	165V
A*0301	139A
A*0301	159Y
A*0301	140A
A*0301	143T
A*0301	146K
A*0301	144K
A*0301	145R
A*0301	169R
A*0301	133W
A*0301	141Q
A*0301	134T
A*0301	168L
A*0301	128E
A*0301	116D
A*0301	122D
A*0301	118Y
A*0301	129D
A*0301	157R
A*0301	120G
A*0301	167W
A*0301	125A
A*0301	194I
A*0301	195S
A*0301	196D
A*0301	156L
A*0301	166E
A*0301	183D
A*0302	12V
A*0302	185P
A*0302	4S
A*0302	161D
A*0302	23I
A*0302	157R
A*0302	2S
A*0302	135A
A*0302	7Y
A*0302	115Q
A*0302	24A
A*0302	164C
A*0302	13S
A*0302	123Y
A*0302	25V
A*0302	126L
A*0302	26G
A*0302	147W
A*0302	14R
A*0302	184P
A*0302	27Y
A*0302	165V
A*0302	8F
A*0302	182T
A*0302	28V
A*0302	155Q
A*0302	3H
A*0302	130L
A*0302	15P
A*0302	189M
A*0302	29D
A*0302	153A
A*0302	30D
A*0302	179L
A*0302	1G
A*0302	163T
A*0302	16G
A*0302	176K
A*0302	5M
A*0302	175G
A*0302	31T
A*0302	180Q
A*0302	9F
A*0302	186K
A*0302	32Q
A*0302	181R
A*0302	17R
A*0302	166E
A*0302	33F
A*0302	154E
A*0302	34V
A*0302	136A
A*0302	18G
A*0302	187T
A*0302	35R
A*0302	177E
A*0302	10T
A*0302	178T
A*0302	36F
A*0302	172L
A*0302	19E
A*0302	131R
A*0302	37D
A*0302	174N
A*0302	38S
A*0302	192H
A*0302	6R
A*0302	121K
A*0302	20P
A*0302	188H
A*0302	39D
A*0302	191H
A*0302	11S
A*0302	190T
A*0302	40A
A*0302	193P
A*0302	21R
A*0302	173E
A*0302	44R
A*0302	137D
A*0302	41A
A*0302	152V
A*0302	42S
A*0302	127N
A*0302	22F
A*0302	151H
A*0302	43Q
A*0302	149A
A*0302	246A
A*0302	171Y
A*0302	275E
A*0302	117A
A*0302	207G
A*0302	148E
A*0302	248V
A*0302	119D
A*0302	270L
A*0302	162G
A*0302	267P
A*0302	150A
A*0302	276L
A*0302	170R
A*0302	268K
A*0302	124I
A*0302	219R
A*0302	138M
A*0302	198E
A*0302	132S
A*0302	199A
A*0302	143T
A*0302	273R
A*0302	140A
A*0302	261V
A*0302	159Y
A*0302	253E
A*0302	134T
A*0302	245A
A*0302	139A
A*0302	95I
A*0302	169R
A*0302	45M
A*0302	144K
A*0302	48R
A*0302	146K
A*0302	52I
A*0302	160L
A*0302	82R
A*0302	145R
A*0302	112G
A*0302	133W
A*0302	108R
A*0302	141Q
A*0302	81L
A*0302	142I
A*0302	78L
A*0302	122D
A*0302	86N
A*0302	183D
A*0302	73T
A*0302	128E
A*0302	96Q
A*0302	116D
A*0302	79G
A*0302	168L
A*0302	104G
A*0302	158A
A*0302	70Q
A*0302	120G
A*0302	49A
A*0302	156Q
A*0302	88S
A*0302	118Y
A*0302	111R
A*0302	167W
A*0302	80T
A*0302	125A
A*0302	54Q
A*0302	194I
A*0302	47P
A*0302	195S
A*0302	101C
A*0302	196D
A*0302	92S
A*0302	197H
A*0302	51W
A*0302	129D
A*0302	103V
A*0302	64T
A*0302	105S
A*0302	97I
A*0302	98M
A*0302	60W
A*0302	102D
A*0302	50P
A*0302	62Q
A*0302	99Y
A*0302	107G
A*0302	90A
A*0302	85Y
A*0302	53E
A*0302	55E
A*0302	69A
A*0302	72Q
A*0302	68K
A*0302	93H
A*0302	100G
A*0302	76V
A*0302	74D
A*0302	65R
A*0302	66N
A*0302	109F
A*0302	110L
A*0302	59Y
A*0302	106D
A*0302	84Y
A*0302	87Q
A*0302	61D
A*0302	57P
A*0302	58E
A*0302	67V
A*0302	46E
A*0302	91G
A*0302	94T
A*0302	56G
A*0302	113Y
A*0302	114R
A*0302	77D
A*0302	63E
A*0302	83G
A*0302	89E
A*0302	75R
A*0302	71S
A*0305	12V
A*0305	95I
A*0305	4S
A*0305	52I
A*0305	23I
A*0305	47P
A*0305	7Y
A*0305	101C
A*0305	24A
A*0305	112G
A*0305	2S
A*0305	111R
A*0305	13S
A*0305	48R
A*0305	25V
A*0305	45M
A*0305	26G
A*0305	108R
A*0305	14R
A*0305	82R
A*0305	27Y
A*0305	78L
A*0305	43Q
A*0305	79G
A*0305	8F
A*0305	81L
A*0305	28V
A*0305	104G
A*0305	3H
A*0305	96Q
A*0305	15P
A*0305	86N
A*0305	29D
A*0305	89E
A*0305	30D
A*0305	73T
A*0305	16G
A*0305	70Q
A*0305	5M
A*0305	80T
A*0305	31T
A*0305	103V
A*0305	1G
A*0305	63E
A*0305	9F
A*0305	64T
A*0305	32Q
A*0305	51W
A*0305	17R
A*0305	92S
A*0305	33F
A*0305	97I
A*0305	34V
A*0305	49A
A*0305	18G
A*0305	88S
A*0305	35R
A*0305	99Y
A*0305	10T
A*0305	50P
A*0305	36F
A*0305	54Q
A*0305	19E
A*0305	107G
A*0305	37D
A*0305	98M
A*0305	38S
A*0305	102D
A*0305	6R
A*0305	90A
A*0305	20P
A*0305	60W
A*0305	39D
A*0305	62Q
A*0305	11S
A*0305	85Y
A*0305	40A
A*0305	93H
A*0305	44R
A*0305	76V
A*0305	21R
A*0305	61D
A*0305	41A
A*0305	100G
A*0305	42S
A*0305	66N
A*0305	22F
A*0305	65R
A*0305	123Y
A*0305	69A
A*0305	135A
A*0305	72Q
A*0305	175G
A*0305	74D
A*0305	163T
A*0305	55E
A*0305	189M
A*0305	110L
A*0305	164C
A*0305	109F
A*0305	176K
A*0305	106D
A*0305	126L
A*0305	59Y
A*0305	184P
A*0305	84Y
A*0305	155Q
A*0305	87Q
A*0305	165V
A*0305	113Y
A*0305	182T
A*0305	77D
A*0305	180Q
A*0305	83G
A*0305	185P
A*0305	105S
A*0305	136A
A*0305	46E
A*0305	181R
A*0305	68K
A*0305	186K
A*0305	53E
A*0305	179L
A*0305	58E
A*0305	130L
A*0305	91G
A*0305	153A
A*0305	94T
A*0305	154E
A*0305	56G
A*0305	177E
A*0305	67V
A*0305	187T
A*0305	114R
A*0305	178T
A*0305	57P
A*0305	191H
A*0305	71S
A*0305	190T
A*0305	75R
A*0305	148E
A*0305	268K
A*0305	149A
A*0305	267P
A*0305	115Q
A*0305	245A
A*0305	121K
A*0305	198E
A*0305	131R
A*0305	253E
A*0305	192H
A*0305	246A
A*0305	174N
A*0305	270L
A*0305	127N
A*0305	199A
A*0305	137D
A*0305	219R
A*0305	173E
A*0305	248V
A*0305	172L
A*0305	273R
A*0305	152E
A*0305	261V
A*0305	193P
A*0305	207G
A*0305	151H
A*0305	188H
A*0305	124I
A*0305	150A
A*0305	117A
A*0305	171Y
A*0305	119D
A*0305	170R
A*0305	138M
A*0305	132S
A*0305	162G
A*0305	161E
A*0305	144K
A*0305	146K
A*0305	169R
A*0305	116D
A*0305	139A
A*0305	147W
A*0305	156L
A*0305	160L
A*0305	145R
A*0305	140A
A*0305	143T
A*0305	133W
A*0305	142I
A*0305	159Y
A*0305	141Q
A*0305	168L
A*0305	122D
A*0305	128E
A*0305	183D
A*0305	120G
A*0305	158A
A*0305	118Y
A*0305	125A
A*0305	167W
A*0305	134T
A*0305	194I
A*0305	195S
A*0305	196D
A*0305	197H
A*0305	129D
A*0305	157R
A*0305	166E
A*0307	12V
A*0307	165V
A*0307	4S
A*0307	148E
A*0307	23I
A*0307	155Q
A*0307	7Y
A*0307	156L
A*0307	24A
A*0307	182T
A*0307	2S
A*0307	149A
A*0307	13S
A*0307	126L
A*0307	25V
A*0307	136A
A*0307	26G
A*0307	135A
A*0307	14R
A*0307	123Y
A*0307	27Y
A*0307	179L
A*0307	8F
A*0307	164C
A*0307	28V
A*0307	130L
A*0307	3H
A*0307	178T
A*0307	15P
A*0307	177E
A*0307	29D
A*0307	181R
A*0307	30D
A*0307	154E
A*0307	16G
A*0307	180Q
A*0307	5M
A*0307	153A
A*0307	31T
A*0307	163T
A*0307	9F
A*0307	127N
A*0307	32Q
A*0307	115Q
A*0307	17R
A*0307	175G
A*0307	33F
A*0307	124I
A*0307	34V
A*0307	151H
A*0307	18G
A*0307	174N
A*0307	35R
A*0307	172L
A*0307	10T
A*0307	152V
A*0307	36F
A*0307	176K
A*0307	19E
A*0307	131R
A*0307	37D
A*0307	137D
A*0307	38S
A*0307	173E
A*0307	6R
A*0307	121K
A*0307	20P
A*0307	170R
A*0307	39D
A*0307	150A
A*0307	11S
A*0307	119D
A*0307	40A
A*0307	171Y
A*0307	44R
A*0307	117A
A*0307	21R
A*0307	132S
A*0307	41A
A*0307	138M
A*0307	42S
A*0307	162G
A*0307	22F
A*0307	160L
A*0307	43Q
A*0307	145R
A*0307	48R
A*0307	161D
A*0307	95I
A*0307	147W
A*0307	61D
A*0307	139A
A*0307	45M
A*0307	169R
A*0307	108R
A*0307	142I
A*0307	82R
A*0307	140A
A*0307	79G
A*0307	168L
A*0307	104G
A*0307	143T
A*0307	96Q
A*0307	144K
A*0307	70Q
A*0307	146K
A*0307	73T
A*0307	141Q
A*0307	86N
A*0307	159Y
A*0307	78L
A*0307	133W
A*0307	81L
A*0307	128E
A*0307	80T
A*0307	122D
A*0307	97I
A*0307	120G
A*0307	99Y
A*0307	158A
A*0307	112G
A*0307	129D
A*0307	92S
A*0307	134T
A*0307	52I
A*0307	116D
A*0307	49A
A*0307	125A
A*0307	103V
A*0307	167W
A*0307	88S
A*0307	118Y
A*0307	51W
A*0307	166E
A*0307	50P
A*0307	157R
A*0307	54Q
A*0307	60W
A*0307	64T
A*0307	98M
A*0307	102D
A*0307	90A
A*0307	62Q
A*0307	107G
A*0307	85Y
A*0307	65R
A*0307	100G
A*0307	111R
A*0307	105S
A*0307	77D
A*0307	101C
A*0307	83G
A*0307	113Y
A*0307	74D
A*0307	69A
A*0307	72Q
A*0307	93H
A*0307	47P
A*0307	106D
A*0307	76V
A*0307	110L
A*0307	109F
A*0307	59Y
A*0307	55E
A*0307	84Y
A*0307	89E
A*0307	91G
A*0307	53E
A*0307	66N
A*0307	68K
A*0307	56G
A*0307	87Q
A*0307	94T
A*0307	67V
A*0307	114R
A*0307	57P
A*0307	58E
A*0307	71S
A*0307	63E
A*0307	75R
A*0307	46E
A*0308	182T
A*0308	61D
A*0308	124I
A*0308	99Y
A*0308	179L
A*0308	83G
A*0308	156L
A*0308	113Y
A*0308	126L
A*0308	105S
A*0308	135A
A*0308	79G
A*0308	165V
A*0308	48R
A*0308	155Q
A*0308	58E
A*0308	164C
A*0308	77D
A*0308	178T
A*0308	95I
A*0308	177E
A*0308	45M
A*0308	123Y
A*0308	70H
A*0308	154E
A*0308	104G
A*0308	181R
A*0308	96Q
A*0308	130L
A*0308	82R
A*0308	180Q
A*0308	73T
A*0308	153A
A*0308	108R
A*0308	151H
A*0308	86N
A*0308	163T
A*0308	78L
A*0308	170R
A*0308	81L
A*0308	175G
A*0308	112G
A*0308	136A
A*0308	92S
A*0308	172L
A*0308	80T
A*0308	152E
A*0308	49A
A*0308	115Q
A*0308	60W
A*0308	131R
A*0308	52I
A*0308	174N
A*0308	54Q
A*0308	176K
A*0308	97I
A*0308	137D
A*0308	50P
A*0308	173E
A*0308	90A
A*0308	121K
A*0308	103V
A*0308	119D
A*0308	51W
A*0308	117A
A*0308	64T
A*0308	132S
A*0308	62Q
A*0308	171Y
A*0308	98M
A*0308	138M
A*0308	88S
A*0308	127N
A*0308	102D
A*0308	150A
A*0308	85Y
A*0308	162G
A*0308	107G
A*0308	145R
A*0308	89E
A*0308	149A
A*0308	106D
A*0308	168L
A*0308	109F
A*0308	161D
A*0308	72Q
A*0308	148E
A*0308	111R
A*0308	147W
A*0308	101C
A*0308	139A
A*0308	100G
A*0308	160L
A*0308	47P
A*0308	141Q
A*0308	74D
A*0308	143T
A*0308	69A
A*0308	144K
A*0308	93H
A*0308	159Y
A*0308	59Y
A*0308	169R
A*0308	65R
A*0308	133W
A*0308	76V
A*0308	146K
A*0308	84Y
A*0308	140A
A*0308	55E
A*0308	142I
A*0308	110L
A*0308	128E
A*0308	68K
A*0308	122D
A*0308	56G
A*0308	158A
A*0308	87Q
A*0308	125A
A*0308	66N
A*0308	134T
A*0308	53E
A*0308	120G
A*0308	67V
A*0308	167W
A*0308	94T
A*0308	116D
A*0308	114R
A*0308	118Y
A*0308	91G
A*0308	129D
A*0308	71S
A*0308	157R
A*0308	57P
A*0308	166E
A*0308	63E
A*0308	12V
A*0308	75R
A*0308	4S
A*0308	46E
A*0308	23I
A*0308	7Y
A*0308	24A
A*0308	2S
A*0308	13S
A*0308	25V
A*0308	26G
A*0308	14R
A*0308	27Y
A*0308	8F
A*0308	28V
A*0308	3H
A*0308	15P
A*0308	29D
A*0308	30D
A*0308	16G
A*0308	5M
A*0308	31T
A*0308	9F
A*0308	32Q
A*0308	17R
A*0308	33F
A*0308	34V
A*0308	41A
A*0308	18G
A*0308	35R
A*0308	10T
A*0308	36F
A*0308	19E
A*0308	37D
A*0308	38S
A*0308	20P
A*0308	6R
A*0308	39D
A*0308	11S
A*0308	40A
A*0308	44R
A*0308	21R
A*0308	42S
A*0308	22F
A*0308	43Q
A*0309	105S
A*0309	12V
A*0309	96Q
A*0309	4S
A*0309	104G
A*0309	23I
A*0309	83G
A*0309	44R
A*0309	89E
A*0309	7Y
A*0309	45M
A*0309	24A
A*0309	60W
A*0309	2S
A*0309	70Q
A*0309	13S
A*0309	95I
A*0309	25V
A*0309	113Y
A*0309	26G
A*0309	77D
A*0309	14R
A*0309	48R
A*0309	27Y
A*0309	91G
A*0309	8F
A*0309	61D
A*0309	28V
A*0309	73T
A*0309	3H
A*0309	86N
A*0309	15P
A*0309	81L
A*0309	29D
A*0309	108R
A*0309	30D
A*0309	82R
A*0309	16G
A*0309	78L
A*0309	5M
A*0309	90A
A*0309	31T
A*0309	92S
A*0309	9F
A*0309	79G
A*0309	32Q
A*0309	80T
A*0309	17R
A*0309	49A
A*0309	33F
A*0309	52I
A*0309	34V
A*0309	62Q
A*0309	18G
A*0309	112G
A*0309	35R
A*0309	97I
A*0309	10T
A*0309	64T
A*0309	36F
A*0309	103V
A*0309	19E
A*0309	51W
A*0309	37D
A*0309	85Y
A*0309	38S
A*0309	102D
A*0309	20P
A*0309	54Q
A*0309	6R
A*0309	107G
A*0309	39D
A*0309	88S
A*0309	11S
A*0309	98M
A*0309	40A
A*0309	50P
A*0309	21R
A*0309	99Y
A*0309	41A
A*0309	59Y
A*0309	42S
A*0309	111R
A*0309	22F
A*0309	101C
A*0309	43Q
A*0309	47P
A*0309	178T
A*0309	100G
A*0309	177E
A*0309	69A
A*0309	156L
A*0309	74H
A*0309	170R
A*0309	93H
A*0309	126L
A*0309	84Y
A*0309	135A
A*0309	76V
A*0309	155Q
A*0309	65R
A*0309	165V
A*0309	72Q
A*0309	164C
A*0309	110L
A*0309	123Y
A*0309	55E
A*0309	154E
A*0309	106D
A*0309	180Q
A*0309	71S
A*0309	153A
A*0309	109F
A*0309	130L
A*0309	66N
A*0309	181R
A*0309	68K
A*0309	182T
A*0309	87Q
A*0309	132S
A*0309	94T
A*0309	136A
A*0309	67V
A*0309	179L
A*0309	53E
A*0309	175G
A*0309	57P
A*0309	163T
A*0309	114R
A*0309	131R
A*0309	56G
A*0309	121K
A*0309	63E
A*0309	176K
A*0309	58E
A*0309	174N
A*0309	46E
A*0309	152E
A*0309	75R
A*0309	173E
A*0309	172L
A*0309	137D
A*0309	115Q
A*0309	151H
A*0309	117A
A*0309	171Y
A*0309	119D
A*0309	127N
A*0309	138M
A*0309	150A
A*0309	162G
A*0309	124I
A*0309	139A
A*0309	147W
A*0309	129D
A*0309	149A
A*0309	161D
A*0309	148E
A*0309	160L
A*0309	146K
A*0309	143T
A*0309	144K
A*0309	145R
A*0309	169R
A*0309	133W
A*0309	122D
A*0309	142I
A*0309	128E
A*0309	140A
A*0309	159Y
A*0309	141Q
A*0309	168L
A*0309	167W
A*0309	118Y
A*0309	158A
A*0309	116D
A*0309	120G
A*0309	125A
A*0309	166E
A*0309	134T
A*0309	157R
A*1101	12V
A*1101	135A
A*1101	44R
A*1101	132S
A*1101	4S
A*1101	156Q
A*1101	23I
A*1101	184P
A*1101	7Y
A*1101	153A
A*1101	24A
A*1101	185P
A*1101	2S
A*1101	180Q
A*1101	13S
A*1101	164C
A*1101	25V
A*1101	186K
A*1101	26G
A*1101	126L
A*1101	43Q
A*1101	165V
A*1101	14R
A*1101	155Q
A*1101	27Y
A*1101	154E
A*1101	8F
A*1101	167W
A*1101	28V
A*1101	181R
A*1101	3H
A*1101	130L
A*1101	15P
A*1101	187T
A*1101	29D
A*1101	182T
A*1101	30D
A*1101	123Y
A*1101	16G
A*1101	175G
A*1101	5M
A*1101	178T
A*1101	31T
A*1101	136A
A*1101	9Y
A*1101	121K
A*1101	32Q
A*1101	189M
A*1101	17R
A*1101	163R
A*1101	1G
A*1101	179L
A*1101	33F
A*1101	177E
A*1101	34V
A*1101	191H
A*1101	18G
A*1101	152A
A*1101	35R
A*1101	176K
A*1101	36F
A*1101	174N
A*1101	10T
A*1101	137D
A*1101	19E
A*1101	131R
A*1101	37D
A*1101	192H
A*1101	38S
A*1101	172L
A*1101	20P
A*1101	193P
A*1101	6R
A*1101	188H
A*1101	39D
A*1101	173E
A*1101	11S
A*1101	195S
A*1101	40A
A*1101	138M
A*1101	21R
A*1101	151H
A*1101	41A
A*1101	171Y
A*1101	42S
A*1101	127N
A*1101	22F
A*1101	190T
A*1101	86N
A*1101	150A
A*1101	73T
A*1101	117A
A*1101	89E
A*1101	162G
A*1101	62Q
A*1101	119D
A*1101	83G
A*1101	183D
A*1101	105P
A*1101	149A
A*1101	113Y
A*1101	170R
A*1101	90D
A*1101	124I
A*1101	95I
A*1101	160L
A*1101	77D
A*1101	161E
A*1101	45M
A*1101	148E
A*1101	81L
A*1101	139A
A*1101	61D
A*1101	122D
A*1101	108R
A*1101	141Q
A*1101	82R
A*1101	128E
A*1101	48R
A*1101	147W
A*1101	78L
A*1101	144K
A*1101	79G
A*1101	133W
A*1101	80T
A*1101	169R
A*1101	96Q
A*1101	145R
A*1101	104G
A*1101	196D
A*1101	52I
A*1101	142I
A*1101	92S
A*1101	159Y
A*1101	112G
A*1101	143T
A*1101	70Q
A*1101	140A
A*1101	51W
A*1101	146K
A*1101	64T
A*1101	194I
A*1101	107G
A*1101	168L
A*1101	85Y
A*1101	158A
A*1101	97I
A*1101	120G
A*1101	49A
A*1101	116D
A*1101	103V
A*1101	197H
A*1101	102D
A*1101	166E
A*1101	50P
A*1101	198E
A*1101	54Q
A*1101	125A
A*1101	98M
A*1101	129D
A*1101	88S
A*1101	118Y
A*1101	99Y
A*1101	134T
A*1101	101C
A*1101	157R
A*1101	84Y
A*1101	270L
A*1101	74D
A*1101	246A
A*1101	47P
A*1101	199A
A*1101	111R
A*1101	245A
A*1101	60W
A*1101	219R
A*1101	71S
A*1101	261V
A*1101	69A
A*1101	267P
A*1101	93H
A*1101	248V
A*1101	100G
A*1101	273R
A*1101	65R
A*1101	253E
A*1101	76V
A*1101	207G
A*1101	72Q
A*1101	275E
A*1101	110L
A*1101	268K
A*1101	114R
A*1101	276L
A*1101	55E
A*1101	109F
A*1101	63E
A*1101	106D
A*1101	59Y
A*1101	57P
A*1101	67V
A*1101	68K
A*1101	94T
A*1101	53E
A*1101	87Q
A*1101	66N
A*1101	46E
A*1101	56G
A*1101	115Q
A*1101	58E
A*1101	75R
A*1101	91G
A*1102	12V
A*1102	83G
A*1102	4S
A*1102	81L
A*1102	23I
A*1102	71S
A*1102	7Y
A*1102	105P
A*1102	24A
A*1102	89E
A*1102	2S
A*1102	95I
A*1102	13S
A*1102	77D
A*1102	44R
A*1102	113Y
A*1102	25V
A*1102	61D
A*1102	26G
A*1102	82R
A*1102	14R
A*1102	108R
A*1102	27Y
A*1102	45M
A*1102	8F
A*1102	48R
A*1102	28V
A*1102	78L
A*1102	15P
A*1102	107G
A*1102	3H
A*1102	85Y
A*1102	29D
A*1102	86N
A*1102	30D
A*1102	96Q
A*1102	16G
A*1102	73T
A*1102	5M
A*1102	104G
A*1102	42S
A*1102	79G
A*1102	31T
A*1102	80T
A*1102	9Y
A*1102	52I
A*1102	32Q
A*1102	92S
A*1102	17R
A*1102	70Q
A*1102	33F
A*1102	112G
A*1102	34V
A*1102	49A
A*1102	1G
A*1102	103V
A*1102	18G
A*1102	97I
A*1102	35R
A*1102	50P
A*1102	10T
A*1102	54Q
A*1102	36F
A*1102	98M
A*1102	19K
A*1102	64T
A*1102	37D
A*1102	88S
A*1102	38S
A*1102	102D
A*1102	20P
A*1102	51W
A*1102	6R
A*1102	93H
A*1102	39D
A*1102	110L
A*1102	11S
A*1102	57P
A*1102	40A
A*1102	62Q
A*1102	21R
A*1102	63E
A*1102	41A
A*1102	90D
A*1102	22F
A*1102	99Y
A*1102	43Q
A*1102	60W
A*1102	261V
A*1102	100G
A*1102	219R
A*1102	111R
A*1102	246A
A*1102	101C
A*1102	270L
A*1102	69A
A*1102	267P
A*1102	47P
A*1102	253E
A*1102	55E
A*1102	273R
A*1102	72Q
A*1102	245A
A*1102	74D
A*1102	268K
A*1102	76V
A*1102	248V
A*1102	65R
A*1102	207G
A*1102	114R
A*1102	164C
A*1102	106D
A*1102	183D
A*1102	67V
A*1102	153A
A*1102	75R
A*1102	180Q
A*1102	53E
A*1102	156Q
A*1102	59Y
A*1102	184P
A*1102	84Y
A*1102	185P
A*1102	94T
A*1102	126L
A*1102	58E
A*1102	186K
A*1102	46E
A*1102	135A
A*1102	68K
A*1102	165V
A*1102	66N
A*1102	181R
A*1102	109F
A*1102	123Y
A*1102	87Q
A*1102	187T
A*1102	115Q
A*1102	130L
A*1102	91G
A*1102	154E
A*1102	56G
A*1102	155Q
A*1102	182T
A*1102	137D
A*1102	163R
A*1102	152A
A*1102	138M
A*1102	179L
A*1102	127N
A*1102	177E
A*1102	189M
A*1102	175G
A*1102	172L
A*1102	194I
A*1102	176K
A*1102	174N
A*1102	125A
A*1102	136A
A*1102	193P
A*1102	178T
A*1102	191H
A*1102	192H
A*1102	173E
A*1102	131R
A*1102	188H
A*1102	150A
A*1102	171Y
A*1102	121K
A*1102	190T
A*1102	195S
A*1102	151H
A*1102	162G
A*1102	119D
A*1102	117A
A*1102	170R
A*1102	132S
A*1102	141Q
A*1102	148E
A*1102	122D
A*1102	128E
A*1102	124I
A*1102	160L
A*1102	149A
A*1102	161E
A*1102	133W
A*1102	139A
A*1102	196D
A*1102	169R
A*1102	147W
A*1102	144K
A*1102	145R
A*1102	146K
A*1102	140A
A*1102	143T
A*1102	159Y
A*1102	142I
A*1102	166E
A*1102	129D
A*1102	168L
A*1102	120G
A*1102	116D
A*1102	158A
A*1102	197H
A*1102	198E
A*1102	134T
A*1102	199A
A*1102	167W
A*1102	157R
A*1102	118Y
A*1103	12V
A*1103	138M
A*1103	4S
A*1103	127N
A*1103	23I
A*1103	156Q
A*1103	24A
A*1103	123Y
A*1103	7Y
A*1103	126L
A*1103	2S
A*1103	182T
A*1103	13S
A*1103	135A
A*1103	25V
A*1103	165V
A*1103	26G
A*1103	181R
A*1103	14R
A*1103	154E
A*1103	44R
A*1103	130L
A*1103	27Y
A*1103	155Q
A*1103	8F
A*1103	179L
A*1103	28V
A*1103	172L
A*1103	15P
A*1103	150A
A*1103	3H
A*1103	177E
A*1103	29D
A*1103	164C
A*1103	30D
A*1103	136A
A*1103	16G
A*1103	153A
A*1103	5M
A*1103	174N
A*1103	31T
A*1103	163R
A*1103	41A
A*1103	173E
A*1103	9Y
A*1103	178T
A*1103	32Q
A*1103	180Q
A*1103	17R
A*1103	175G
A*1103	33F
A*1103	176K
A*1103	34V
A*1103	131R
A*1103	18G
A*1103	137D
A*1103	35R
A*1103	152E
A*1103	10T
A*1103	121K
A*1103	36F
A*1103	151R
A*1103	19E
A*1103	162G
A*1103	37D
A*1103	119D
A*1103	38S
A*1103	171Y
A*1103	20P
A*1103	117A
A*1103	6R
A*1103	132S
A*1103	39D
A*1103	166E
A*1103	11S
A*1103	129D
A*1103	40A
A*1103	160L
A*1103	21R
A*1103	170R
A*1103	45M
A*1103	124I
A*1103	42S
A*1103	149A
A*1103	22F
A*1103	161E
A*1103	43Q
A*1103	145R
A*1103	85Y
A*1103	169R
A*1103	63E
A*1103	148E
A*1103	107G
A*1103	139A
A*1103	57P
A*1103	144K
A*1103	105P
A*1103	147W
A*1103	71S
A*1103	159Y
A*1103	83G
A*1103	143T
A*1103	89E
A*1103	146K
A*1103	77D
A*1103	142I
A*1103	95I
A*1103	140A
A*1103	113Y
A*1103	133W
A*1103	94T
A*1103	128E
A*1103	61D
A*1103	141Q
A*1103	82R
A*1103	116D
A*1103	48R
A*1103	134T
A*1103	108R
A*1103	168L
A*1103	78L
A*1103	122D
A*1103	81L
A*1103	158A
A*1103	86N
A*1103	157R
A*1103	73T
A*1103	167W
A*1103	52I
A*1103	120G
A*1103	79G
A*1103	125A
A*1103	104G
A*1103	118Y
A*1103	92S
A*1103	96Q
A*1103	70Q
A*1103	80T
A*1103	112G
A*1103	50P
A*1103	49A
A*1103	103V
A*1103	97I
A*1103	54Q
A*1103	102D
A*1103	51W
A*1103	88S
A*1103	98M
A*1103	64T
A*1103	90D
A*1103	55E
A*1103	58E
A*1103	62Q
A*1103	75R
A*1103	99Y
A*1103	60W
A*1103	101C
A*1103	100G
A*1103	46E
A*1103	111R
A*1103	72Q
A*1103	69A
A*1103	74D
A*1103	93H
A*1103	47P
A*1103	114R
A*1103	65R
A*1103	76V
A*1103	110L
A*1103	66N
A*1103	84Y
A*1103	106D
A*1103	109F
A*1103	87Q
A*1103	59Y
A*1103	68K
A*1103	91G
A*1103	115Q
A*1103	67V
A*1103	53E
A*1103	56G
A*1104	181R
A*1104	57P
A*1104	123Y
A*1104	105P
A*1104	166E
A*1104	71S
A*1104	182T
A*1104	77D
A*1104	183D
A*1104	113Y
A*1104	150A
A*1104	58E
A*1104	129D
A*1104	89E
A*1104	156Q
A*1104	46E
A*1104	184P
A*1104	83G
A*1104	197H
A*1104	75R
A*1104	165V
A*1104	95I
A*1104	135A
A*1104	63E
A*1104	185P
A*1104	48R
A*1104	186K
A*1104	61D
A*1104	187T
A*1104	82R
A*1104	126L
A*1104	78L
A*1104	130L
A*1104	108R
A*1104	154E
A*1104	70Q
A*1104	155Q
A*1104	73T
A*1104	162G
A*1104	50P
A*1104	177E
A*1104	104G
A*1104	189M
A*1104	79G
A*1104	164C
A*1104	81L
A*1104	180Q
A*1104	86N
A*1104	179L
A*1104	96Q
A*1104	163T
A*1104	80T
A*1104	193P
A*1104	92S
A*1104	188H
A*1104	112G
A*1104	173E
A*1104	102D
A*1104	192H
A*1104	54Q
A*1104	194I
A*1104	97I
A*1104	131R
A*1104	52I
A*1104	174N
A*1104	103V
A*1104	191H
A*1104	51W
A*1104	136A
A*1104	98M
A*1104	176K
A*1104	64T
A*1104	175G
A*1104	49A
A*1104	178T
A*1104	88S
A*1104	153A
A*1104	107G
A*1104	151H
A*1104	85Y
A*1104	137D
A*1104	99Y
A*1104	121K
A*1104	60W
A*1104	152A
A*1104	100G
A*1104	195S
A*1104	101C
A*1104	119D
A*1104	90D
A*1104	172L
A*1104	62Q
A*1104	117A
A*1104	111R
A*1104	190T
A*1104	69A
A*1104	171Y
A*1104	74D
A*1104	170R
A*1104	93H
A*1104	134T
A*1104	114R
A*1104	127N
A*1104	47P
A*1104	196D
A*1104	65R
A*1104	138M
A*1104	72Q
A*1104	132S
A*1104	76V
A*1104	149A
A*1104	84Y
A*1104	124I
A*1104	87Q
A*1104	161E
A*1104	106D
A*1104	160L
A*1104	55E
A*1104	143T
A*1104	110L
A*1104	144K
A*1104	68K
A*1104	159Y
A*1104	53E
A*1104	147W
A*1104	59Y
A*1104	148E
A*1104	109F
A*1104	139A
A*1104	115Q
A*1104	133W
A*1104	56G
A*1104	169R
A*1104	67V
A*1104	142I
A*1104	66N
A*1104	146K
A*1104	94T
A*1104	145R
A*1104	91G
A*1104	140A
A*1104	12V
A*1104	157R
A*1104	4S
A*1104	128E
A*1104	23I
A*1104	118Y
A*1104	24A
A*1104	141Q
A*1104	7Y
A*1104	168L
A*1104	2S
A*1104	158A
A*1104	13S
A*1104	122D
A*1104	25V
A*1104	198E
A*1104	26G
A*1104	199A
A*1104	44R
A*1104	120G
A*1104	14R
A*1104	167W
A*1104	27Y
A*1104	116D
A*1104	8F
A*1104	125A
A*1104	28V
A*1104	246A
A*1104	15P
A*1104	275E
A*1104	3H
A*1104	248V
A*1104	29D
A*1104	273R
A*1104	30D
A*1104	267P
A*1104	16G
A*1104	207G
A*1104	5M
A*1104	261V
A*1104	31T
A*1104	219R
A*1104	9Y
A*1104	268K
A*1104	32Q
A*1104	253E
A*1104	17R
A*1104	276L
A*1104	33F
A*1104	245A
A*1104	34V
A*1104	270L
A*1104	18G
A*1104	35R
A*1104	1G
A*1104	10T
A*1104	36F
A*1104	19E
A*1104	37D
A*1104	38S
A*1104	20P
A*1104	6R
A*1104	39D
A*1104	11S
A*1104	40A
A*1104	21R
A*1104	41A
A*1104	45M
A*1104	42S
A*1104	22F
A*1104	43Q
A*1105	219R
A*1105	12V
A*1105	253E
A*1105	43Q
A*1105	270L
A*1105	4S
A*1105	245A
A*1105	23I
A*1105	275E
A*1105	24A
A*1105	273R
A*1105	7Y
A*1105	248V
A*1105	13S
A*1105	261V
A*1105	2S
A*1105	268K
A*1105	25V
A*1105	246A
A*1105	44R
A*1105	276L
A*1105	26G
A*1105	267P
A*1105	14R
A*1105	50P
A*1105	27Y
A*1105	82R
A*1105	28V
A*1105	87Q
A*1105	8F
A*1105	113Y
A*1105	15P
A*1105	48R
A*1105	3H
A*1105	58E
A*1105	29D
A*1105	77D
A*1105	30D
A*1105	105P
A*1105	16G
A*1105	89E
A*1105	5M
A*1105	83G
A*1105	31T
A*1105	95I
A*1105	9Y
A*1105	57P
A*1105	32Q
A*1105	75R
A*1105	17R
A*1105	46E
A*1105	33F
A*1105	71S
A*1105	34V
A*1105	63E
A*1105	18G
A*1105	78L
A*1105	35R
A*1105	61D
A*1105	10T
A*1105	108R
A*1105	36F
A*1105	79G
A*1105	19E
A*1105	104G
A*1105	37D
A*1105	102D
A*1105	1G
A*1105	86N
A*1105	38S
A*1105	81L
A*1105	20P
A*1105	54Q
A*1105	6R
A*1105	112G
A*1105	39D
A*1105	96Q
A*1105	11S
A*1105	73T
A*1105	40A
A*1105	92S
A*1105	21R
A*1105	80T
A*1105	45M
A*1105	97I
A*1105	41A
A*1105	70Q
A*1105	42S
A*1105	51W
A*1105	22F
A*1105	52I
A*1105	162G
A*1105	103V
A*1105	166E
A*1105	98M
A*1105	183D
A*1105	64T
A*1105	134T
A*1105	67V
A*1105	156Q
A*1105	49A
A*1105	129D
A*1105	88S
A*1105	197H
A*1105	99Y
A*1105	184P
A*1105	85Y
A*1105	185P
A*1105	60W
A*1105	187T
A*1105	107G
A*1105	186K
A*1105	100G
A*1105	126L
A*1105	101C
A*1105	135A
A*1105	90D
A*1105	154E
A*1105	111R
A*1105	165V
A*1105	62Q
A*1105	130L
A*1105	65R
A*1105	155Q
A*1105	93H
A*1105	188H
A*1105	47P
A*1105	123Y
A*1105	114R
A*1105	173E
A*1105	74D
A*1105	189M
A*1105	76V
A*1105	180Q
A*1105	72Q
A*1105	193P
A*1105	69A
A*1105	119D
A*1105	106D
A*1105	164C
A*1105	56G
A*1105	182T
A*1105	53E
A*1105	181R
A*1105	55E
A*1105	177E
A*1105	84Y
A*1105	131R
A*1105	110L
A*1105	179L
A*1105	59Y
A*1105	176K
A*1105	68K
A*1105	191H
A*1105	109F
A*1105	136A
A*1105	115Q
A*1105	163R
A*1105	66N
A*1105	175G
A*1105	94T
A*1105	178T
A*1105	91G
A*1105	153A
A*1105	194I
A*1105	174N
A*1105	192H
A*1105	152A
A*1105	195S
A*1105	137D
A*1105	172L
A*1105	121K
A*1105	117A
A*1105	151H
A*1105	190T
A*1105	171Y
A*1105	150A
A*1105	159Y
A*1105	157R
A*1105	118Y
A*1105	127N
A*1105	138M
A*1105	143T
A*1105	124I
A*1105	132S
A*1105	161E
A*1105	149A
A*1105	160L
A*1105	142I
A*1105	133W
A*1105	170R
A*1105	139A
A*1105	147W
A*1105	144E
A*1105	169R
A*1105	148E
A*1105	146K
A*1105	145R
A*1105	140A
A*1105	158A
A*1105	141Q
A*1105	196D
A*1105	168L
A*1105	128E
A*1105	122D
A*1105	198E
A*1105	199A
A*1105	116D
A*1105	207G
A*1105	125A
A*1105	167W
A*1105	120G
A*1106	78L
A*1106	118Y
A*1106	54Q
A*1106	157R
A*1106	94T
A*1106	119D
A*1106	83G
A*1106	156Q
A*1106	102D
A*1106	166E
A*1106	105P
A*1106	134T
A*1106	46E
A*1106	129D
A*1106	75R
A*1106	154E
A*1106	95I
A*1106	130L
A*1106	57P
A*1106	165V
A*1106	63E
A*1106	155Q
A*1106	89E
A*1106	126L
A*1106	71S
A*1106	135A
A*1106	113Y
A*1106	164C
A*1106	58E
A*1106	131R
A*1106	77D
A*1106	182T
A*1106	66N
A*1106	123Y
A*1106	108R
A*1106	181R
A*1106	61D
A*1106	176K
A*1106	79G
A*1106	136A
A*1106	112G
A*1106	179L
A*1106	104G
A*1106	163R
A*1106	82R
A*1106	175G
A*1106	86N
A*1106	178T
A*1106	48R
A*1106	177E
A*1106	81L
A*1106	153A
A*1106	51W
A*1106	174N
A*1106	73T
A*1106	180Q
A*1106	92S
A*1106	117A
A*1106	80T
A*1106	137D
A*1106	96Q
A*1106	173E
A*1106	98M
A*1106	172L
A*1106	70Q
A*1106	152A
A*1106	64T
A*1106	121K
A*1106	52I
A*1106	151H
A*1106	97I
A*1106	171Y
A*1106	49A
A*1106	127N
A*1106	88S
A*1106	138M
A*1106	103V
A*1106	133W
A*1106	47P
A*1106	124I
A*1106	56G
A*1106	142I
A*1106	60W
A*1106	162G
A*1106	65R
A*1106	150A
A*1106	114R
A*1106	161E
A*1106	53E
A*1106	149A
A*1106	99Y
A*1106	158A
A*1106	90D
A*1106	132S
A*1106	111R
A*1106	160L
A*1106	107G
A*1106	170R
A*1106	85Y
A*1106	139A
A*1106	101C
A*1106	169R
A*1106	50P
A*1106	147W
A*1106	62Q
A*1106	140A
A*1106	100G
A*1106	144K
A*1106	76V
A*1106	146K
A*1106	93H
A*1106	148E
A*1106	74H
A*1106	145R
A*1106	69A
A*1106	141Q
A*1106	72Q
A*1106	143T
A*1106	59Y
A*1106	168L
A*1106	55E
A*1106	159Y
A*1106	68K
A*1106	128E
A*1106	106D
A*1106	122D
A*1106	110L
A*1106	125A
A*1106	109F
A*1106	167W
A*1106	84Y
A*1106	120G
A*1106	115Q
A*1106	12V
A*1106	91G
A*1106	44R
A*1106	87Q
A*1106	4S
A*1106	116D
A*1106	23I
A*1106	67V
A*1106	24A
A*1106	7Y
A*1106	13S
A*1106	2S
A*1106	25V
A*1106	26G
A*1106	14R
A*1106	27Y
A*1106	28V
A*1106	8F
A*1106	15P
A*1106	3H
A*1106	29D
A*1106	42S
A*1106	30D
A*1106	16G
A*1106	5M
A*1106	31T
A*1106	9Y
A*1106	32Q
A*1106	17R
A*1106	33F
A*1106	34V
A*1106	18G
A*1106	35R
A*1106	10T
A*1106	36F
A*1106	19E
A*1106	37D
A*1106	38S
A*1106	20P
A*1106	6R
A*1106	39D
A*1106	11S
A*1106	40A
A*1106	21R
A*1106	45M
A*1106	41A
A*1106	22F
A*1106	43Q
A*1108	118Y
A*1108	12V
A*1108	130L
A*1108	23I
A*1108	157R
A*1108	4S
A*1108	166E
A*1108	24A
A*1108	134T
A*1108	7Y
A*1108	154E
A*1108	13S
A*1108	129D
A*1108	2S
A*1108	156R
A*1108	25V
A*1108	155Q
A*1108	26G
A*1108	165V
A*1108	14R
A*1108	126L
A*1108	27Y
A*1108	135A
A*1108	28V
A*1108	117A
A*1108	8F
A*1108	176K
A*1108	44R
A*1108	136A
A*1108	15P
A*1108	182T
A*1108	3H
A*1108	175G
A*1108	29D
A*1108	179L
A*1108	30D
A*1108	153A
A*1108	16G
A*1108	123Y
A*1108	5M
A*1108	178T
A*1108	31T
A*1108	181R
A*1108	32Q
A*1108	177E
A*1108	9Y
A*1108	174N
A*1108	17R
A*1108	163R
A*1108	33F
A*1108	164C
A*1108	34V
A*1108	131R
A*1108	18G
A*1108	137D
A*1108	35R
A*1108	180Q
A*1108	36F
A*1108	172L
A*1108	10T
A*1108	173E
A*1108	19E
A*1108	171Y
A*1108	37D
A*1108	151H
A*1108	38S
A*1108	152E
A*1108	20P
A*1108	121K
A*1108	6R
A*1108	149A
A*1108	39D
A*1108	161E
A*1108	11S
A*1108	138M
A*1108	40A
A*1108	162G
A*1108	45M
A*1108	119D
A*1108	21R
A*1108	132S
A*1108	41A
A*1108	150A
A*1108	42S
A*1108	127N
A*1108	22F
A*1108	139A
A*1108	43Q
A*1108	170R
A*1108	75R
A*1108	124I
A*1108	51W
A*1108	160L
A*1108	46E
A*1108	169R
A*1108	95I
A*1108	140A
A*1108	57P
A*1108	147W
A*1108	105P
A*1108	146K
A*1108	63E
A*1108	144K
A*1108	71S
A*1108	145R
A*1108	53E
A*1108	148E
A*1108	89E
A*1108	128E
A*1108	56G
A*1108	141Q
A*1108	58E
A*1108	159Y
A*1108	77D
A*1108	142I
A*1108	83G
A*1108	133W
A*1108	113Y
A*1108	143T
A*1108	108R
A*1108	168L
A*1108	61D
A*1108	122D
A*1108	78L
A*1108	120G
A*1108	92S
A*1108	158A
A*1108	81L
A*1108	125A
A*1108	82R
A*1108	167W
A*1108	98M
A*1108	64T
A*1108	48R
A*1108	104G
A*1108	86N
A*1108	73T
A*1108	80T
A*1108	96Q
A*1108	79G
A*1108	52I
A*1108	112G
A*1108	70Q
A*1108	49A
A*1108	88S
A*1108	97I
A*1108	103V
A*1108	76V
A*1108	111R
A*1108	54Q
A*1108	62Q
A*1108	99Y
A*1108	107G
A*1108	90D
A*1108	85Y
A*1108	50P
A*1108	101C
A*1108	60W
A*1108	100G
A*1108	102D
A*1108	93H
A*1108	69A
A*1108	74D
A*1108	72Q
A*1108	68K
A*1108	47P
A*1108	91G
A*1108	55E
A*1108	114R
A*1108	109F
A*1108	110L
A*1108	84Y
A*1108	65R
A*1108	106D
A*1108	115Q
A*1108	87Q
A*1108	116D
A*1108	59Y
A*1108	67V
A*1108	66N
A*1108	94T
A*2301	12V
A*2301	98M
A*2301	23I
A*2301	63E
A*2301	4S
A*2301	64T
A*2301	24A
A*2301	71S
A*2301	7Y
A*2301	105S
A*2301	13S
A*2301	53E
A*2301	2S
A*2301	56G
A*2301	25V
A*2301	89E
A*2301	26G
A*2301	58E
A*2301	14R
A*2301	77N
A*2301	27Y
A*2301	57P
A*2301	44R
A*2301	75R
A*2301	28V
A*2301	95L
A*2301	45M
A*2301	108R
A*2301	8F
A*2301	113Y
A*2301	15P
A*2301	83R
A*2301	3H
A*2301	46E
A*2301	29D
A*2301	61D
A*2301	30D
A*2301	80I
A*2301	16G
A*2301	78L
A*2301	5M
A*2301	82L
A*2301	31T
A*2301	86N
A*2301	32Q
A*2301	104G
A*2301	9S
A*2301	96Q
A*2301	17R
A*2301	79R
A*2301	33F
A*2301	48R
A*2301	34V
A*2301	81A
A*2301	18G
A*2301	73T
A*2301	35R
A*2301	49A
A*2301	36F
A*2301	52I
A*2301	10T
A*2301	92S
A*2301	19E
A*2301	70H
A*2301	37D
A*2301	88S
A*2301	1G
A*2301	115Q
A*2301	38S
A*2301	112G
A*2301	20P
A*2301	103V
A*2301	6R
A*2301	97M
A*2301	39D
A*2301	91G
A*2301	40A
A*2301	54Q
A*2301	11S
A*2301	62E
A*2301	21R
A*2301	85Y
A*2301	41A
A*2301	50P
A*2301	42S
A*2301	99F
A*2301	22F
A*2301	107G
A*2301	43Q
A*2301	102D
A*2301	166D
A*2301	101C
A*2301	158A
A*2301	100G
A*2301	134T
A*2301	51W
A*2301	187T
A*2301	90A
A*2301	157R
A*2301	60W
A*2301	183D
A*2301	111R
A*2301	118Y
A*2301	74D
A*2301	129D
A*2301	69A
A*2301	117A
A*2301	72Q
A*2301	197H
A*2301	93H
A*2301	184P
A*2301	47P
A*2301	186K
A*2301	109F
A*2301	156L
A*2301	67V
A*2301	185P
A*2301	55E
A*2301	165V
A*2301	76E
A*2301	155Q
A*2301	65G
A*2301	135A
A*2301	84Y
A*2301	126L
A*2301	114H
A*2301	182T
A*2301	110L
A*2301	178T
A*2301	106D
A*2301	175G
A*2301	116Y
A*2301	154E
A*2301	59Y
A*2301	130L
A*2301	68K
A*2301	153A
A*2301	66K
A*2301	181R
A*2301	87Q
A*2301	191H
A*2301	94T
A*2301	123Y
A*2301	276P
A*2301	174N
A*2301	253E
A*2301	189M
A*2301	248V
A*2301	194I
A*2301	261V
A*2301	179L
A*2301	273R
A*2301	177E
A*2301	245A
A*2301	199A
A*2301	267P
A*2301	164C
A*2301	246A
A*2301	163T
A*2301	275E
A*2301	192H
A*2301	268K
A*2301	176K
A*2301	270L
A*2301	136A
A*2301	195S
A*2301	137D
A*2301	171Y
A*2301	193P
A*2301	188H
A*2301	172L
A*2301	180Q
A*2301	173E
A*2301	131R
A*2301	190T
A*2301	121K
A*2301	151R
A*2301	152V
A*2301	169R
A*2301	162G
A*2301	119D
A*2301	132S
A*2301	138M
A*2301	127K
A*2301	150A
A*2301	149A
A*2301	140A
A*2301	161E
A*2301	124I
A*2301	146K
A*2301	170R
A*2301	139A
A*2301	160L
A*2301	144Q
A*2301	148E
A*2301	145R
A*2301	147W
A*2301	142I
A*2301	159Y
A*2301	196D
A*2301	133W
A*2301	143T
A*2301	120G
A*2301	141Q
A*2301	122D
A*2301	128E
A*2301	168L
A*2301	198E
A*2301	207G
A*2301	219R
A*2301	167G
A*2301	125A
A*2302	12V
A*2302	134T
A*2302	23I
A*2302	165V
A*2302	4S
A*2302	129D
A*2302	24A
A*2302	155Q
A*2302	7Y
A*2302	157R
A*2302	13S
A*2302	118Y
A*2302	2S
A*2302	166D
A*2302	25V
A*2302	126L
A*2302	26G
A*2302	156W
A*2302	14R
A*2302	135A
A*2302	27Y
A*2302	171Y
A*2302	28V
A*2302	174N
A*2302	8F
A*2302	130L
A*2302	15P
A*2302	154E
A*2302	3H
A*2302	182T
A*2302	29D
A*2302	164C
A*2302	45M
A*2302	179L
A*2302	44R
A*2302	163T
A*2302	30D
A*2302	123Y
A*2302	16G
A*2302	177E
A*2302	5M
A*2302	181R
A*2302	31T
A*2302	178T
A*2302	32Q
A*2302	136A
A*2302	9S
A*2302	172L
A*2302	17R
A*2302	180Q
A*2302	33F
A*2302	176K
A*2302	34V
A*2302	175G
A*2302	18G
A*2302	153A
A*2302	43Q
A*2302	173E
A*2302	35R
A*2302	151R
A*2302	36F
A*2302	131R
A*2302	10T
A*2302	152V
A*2302	19E
A*2302	121K
A*2302	37D
A*2302	137D
A*2302	38S
A*2302	132S
A*2302	20P
A*2302	162G
A*2302	6R
A*2302	117A
A*2302	39D
A*2302	120G
A*2302	40A
A*2302	119D
A*2302	11S
A*2302	140A
A*2302	21R
A*2302	138M
A*2302	41A
A*2302	127K
A*2302	42S
A*2302	150A
A*2302	22F
A*2302	144Q
A*2302	108R
A*2302	148E
A*2302	91G
A*2302	146K
A*2302	53E
A*2302	124I
A*2302	105S
A*2302	161E
A*2302	56G
A*2302	139A
A*2302	89E
A*2302	149A
A*2302	57P
A*2302	145R
A*2302	61D
A*2302	147W
A*2302	46E
A*2302	160L
A*2302	63E
A*2302	170R
A*2302	71S
A*2302	159Y
A*2302	75R
A*2302	122D
A*2302	77N
A*2302	169R
A*2302	113Y
A*2302	141Q
A*2302	95L
A*2302	143T
A*2302	83R
A*2302	128E
A*2302	58E
A*2302	133W
A*2302	88S
A*2302	142I
A*2302	49A
A*2302	168L
A*2302	78L
A*2302	167G
A*2302	82L
A*2302	125A
A*2302	86N
A*2302	158A
A*2302	104G
A*2302	96Q
A*2302	109F
A*2302	79R
A*2302	73T
A*2302	81A
A*2302	48R
A*2302	112G
A*2302	80I
A*2302	103V
A*2302	92S
A*2302	115Q
A*2302	70H
A*2302	97M
A*2302	52I
A*2302	50P
A*2302	64T
A*2302	67V
A*2302	98M
A*2302	85Y
A*2302	107G
A*2302	101C
A*2302	102D
A*2302	100G
A*2302	60W
A*2302	51W
A*2302	90A
A*2302	54Q
A*2302	99F
A*2302	62E
A*2302	74D
A*2302	69A
A*2302	111R
A*2302	72Q
A*2302	93H
A*2302	65G
A*2302	84Y
A*2302	76E
A*2302	55E
A*2302	47P
A*2302	114H
A*2302	110L
A*2302	106D
A*2302	116Y
A*2302	68K
A*2302	94T
A*2302	59Y
A*2302	66K
A*2302	87Q
A*2402	157R
A*2402	88S
A*2402	183D
A*2402	91G
A*2402	197H
A*2402	61D
A*2402	184P
A*2402	49A
A*2402	171Y
A*2402	89E
A*2402	120G
A*2402	105S
A*2402	134T
A*2402	67V
A*2402	166D
A*2402	56G
A*2402	118Y
A*2402	57P
A*2402	129D
A*2402	71S
A*2402	126L
A*2402	113Y
A*2402	185P
A*2402	63E
A*2402	156Q
A*2402	95L
A*2402	186K
A*2402	77N
A*2402	135A
A*2402	83R
A*2402	198E
A*2402	53E
A*2402	179L
A*2402	75R
A*2402	164C
A*2402	46E
A*2402	154E
A*2402	58E
A*2402	155Q
A*2402	78L
A*2402	182T
A*2402	96Q
A*2402	191H
A*2402	103V
A*2402	163T
A*2402	108R
A*2402	130L
A*2402	82L
A*2402	165V
A*2402	48R
A*2402	189M
A*2402	79R
A*2402	123Y
A*2402	73T
A*2402	194I
A*2402	81A
A*2402	187T
A*2402	86N
A*2402	199A
A*2402	104G
A*2402	177E
A*2402	80I
A*2402	192H
A*2402	92S
A*2402	136A
A*2402	97M
A*2402	151H
A*2402	115Q
A*2402	178T
A*2402	112G
A*2402	174N
A*2402	70H
A*2402	190T
A*2402	52I
A*2402	193P
A*2402	101C
A*2402	175G
A*2402	98M
A*2402	153A
A*2402	64T
A*2402	181R
A*2402	69A
A*2402	173E
A*2402	74D
A*2402	176K
A*2402	102D
A*2402	180Q
A*2402	60W
A*2402	195S
A*2402	90A
A*2402	172L
A*2402	100G
A*2402	188H
A*2402	51W
A*2402	152V
A*2402	107G
A*2402	131R
A*2402	54Q
A*2402	137D
A*2402	99F
A*2402	121K
A*2402	72Q
A*2402	148E
A*2402	85Y
A*2402	144K
A*2402	111R
A*2402	119D
A*2402	62E
A*2402	146K
A*2402	50P
A*2402	162G
A*2402	93H
A*2402	150A
A*2402	76E
A*2402	117A
A*2402	110L
A*2402	138M
A*2402	84Y
A*2402	127K
A*2402	106D
A*2402	147W
A*2402	47P
A*2402	145R
A*2402	114H
A*2402	132S
A*2402	55E
A*2402	124I
A*2402	116Y
A*2402	161E
A*2402	68K
A*2402	139A
A*2402	65G
A*2402	170R
A*2402	66K
A*2402	160L
A*2402	94T
A*2402	149A
A*2402	109F
A*2402	143T
A*2402	59Y
A*2402	168L
A*2402	87Q
A*2402	167G
A*2402	276P
A*2402	140A
A*2402	248V
A*2402	169R
A*2402	246A
A*2402	141Q
A*2402	270L
A*2402	133W
A*2402	273R
A*2402	142I
A*2402	267P
A*2402	128E
A*2402	261V
A*2402	196D
A*2402	268K
A*2402	159Y
A*2402	275E
A*2402	207G
A*2402	245A
A*2402	219R
A*2402	253E
A*2402	125A
A*2402	12V
A*2402	122D
A*2402	23I
A*2402	158A
A*2402	4S
A*2402	24A
A*2402	7Y
A*2402	13S
A*2402	25V
A*2402	2S
A*2402	26G
A*2402	42S
A*2402	14R
A*2402	27Y
A*2402	28V
A*2402	8F
A*2402	15P
A*2402	45M
A*2402	44R
A*2402	3H
A*2402	29D
A*2402	30D
A*2402	16G
A*2402	5M
A*2402	31T
A*2402	32Q
A*2402	9S
A*2402	17R
A*2402	33F
A*2402	34V
A*2402	18G
A*2402	35R
A*2402	36F
A*2402	10T
A*2402	19E
A*2402	37D
A*2402	38S
A*2402	20P
A*2402	6R
A*2402	39D
A*2402	1G
A*2402	40A
A*2402	11S
A*2402	21R
A*2402	41A
A*2402	22F
A*2402	43Q
A*2403	197H
A*2403	12V
A*2403	183D
A*2403	23I
A*2403	184P
A*2403	4S
A*2403	126L
A*2403	24A
A*2403	134T
A*2403	7Y
A*2403	157R
A*2403	1G
A*2403	166E
A*2403	13S
A*2403	120G
A*2403	25V
A*2403	118Y
A*2403	2S
A*2403	129D
A*2403	26G
A*2403	185P
A*2403	14R
A*2403	135A
A*2403	27Y
A*2403	198E
A*2403	41A
A*2403	156Q
A*2403	44R
A*2403	186K
A*2403	45M
A*2403	194I
A*2403	28V
A*2403	155Q
A*2403	8F
A*2403	190T
A*2403	15P
A*2403	123Y
A*2403	29D
A*2403	151H
A*2403	3H
A*2403	130L
A*2403	30D
A*2403	165V
A*2403	16G
A*2403	187T
A*2403	5M
A*2403	189M
A*2403	31T
A*2403	154E
A*2403	32Q
A*2403	199A
A*2403	9S
A*2403	177E
A*2403	17R
A*2403	192H
A*2403	33F
A*2403	152V
A*2403	34V
A*2403	164C
A*2403	18G
A*2403	179L
A*2403	35R
A*2403	173E
A*2403	36F
A*2403	153A
A*2403	10T
A*2403	193P
A*2403	19E
A*2403	174N
A*2403	37D
A*2403	178T
A*2403	38S
A*2403	136A
A*2403	20P
A*2403	182T
A*2403	6R
A*2403	181R
A*2403	39D
A*2403	191H
A*2403	40A
A*2403	180Q
A*2403	11S
A*2403	163T
A*2403	21R
A*2403	175G
A*2403	42S
A*2403	176K
A*2403	22F
A*2403	137D
A*2403	43Q
A*2403	131R
A*2403	103V
A*2403	188H
A*2403	89E
A*2403	172L
A*2403	91G
A*2403	121K
A*2403	56G
A*2403	195S
A*2403	67V
A*2403	171Y
A*2403	105S
A*2403	167W
A*2403	95L
A*2403	145R
A*2403	63E
A*2403	150A
A*2403	77N
A*2403	147W
A*2403	71S
A*2403	119D
A*2403	53E
A*2403	117A
A*2403	75R
A*2403	162G
A*2403	83R
A*2403	158A
A*2403	58E
A*2403	138M
A*2403	46E
A*2403	127K
A*2403	57P
A*2403	124I
A*2403	113Y
A*2403	161E
A*2403	82L
A*2403	139A
A*2403	73T
A*2403	149A
A*2403	79R
A*2403	160L
A*2403	48R
A*2403	132S
A*2403	108R
A*2403	170R
A*2403	78L
A*2403	169R
A*2403	81A
A*2403	125A
A*2403	61D
A*2403	148E
A*2403	86N
A*2403	141Q
A*2403	104G
A*2403	146K
A*2403	92S
A*2403	140A
A*2403	80I
A*2403	144K
A*2403	96Q
A*2403	196D
A*2403	70H
A*2403	143T
A*2403	52I
A*2403	159Y
A*2403	112G
A*2403	128E
A*2403	97M
A*2403	142I
A*2403	115Q
A*2403	207G
A*2403	100G
A*2403	219R
A*2403	51W
A*2403	122D
A*2403	88S
A*2403	245A
A*2403	90A
A*2403	133W
A*2403	60W
A*2403	168L
A*2403	64T
A*2403	248V
A*2403	72Q
A*2403	246A
A*2403	98M
A*2403	261V
A*2403	49A
A*2403	273R
A*2403	107G
A*2403	253E
A*2403	99F
A*2403	275E
A*2403	54Q
A*2403	276P
A*2403	62E
A*2403	270L
A*2403	101C
A*2403	268K
A*2403	85Y
A*2403	267P
A*2403	102D
A*2403	93H
A*2403	50P
A*2403	111R
A*2403	69A
A*2403	66K
A*2403	110L
A*2403	55E
A*2403	74D
A*2403	94T
A*2403	76E
A*2403	47P
A*2403	106D
A*2403	114H
A*2403	116Y
A*2403	59Y
A*2403	109F
A*2403	65G
A*2403	87Q
A*2403	68K
A*2403	84Y
A*2404	276P
A*2404	91G
A*2404	261V
A*2404	105S
A*2404	268K
A*2404	83G
A*2404	267P
A*2404	58E
A*2404	273R
A*2404	56G
A*2404	270L
A*2404	67V
A*2404	275E
A*2404	71S
A*2404	248V
A*2404	89E
A*2404	246A
A*2404	63E
A*2404	253E
A*2404	75R
A*2404	12V
A*2404	77N
A*2404	23I
A*2404	57P
A*2404	4S
A*2404	95L
A*2404	24A
A*2404	53E
A*2404	7Y
A*2404	113Y
A*2404	13S
A*2404	81L
A*2404	25V
A*2404	108R
A*2404	2S
A*2404	82R
A*2404	26G
A*2404	61D
A*2404	14R
A*2404	104G
A*2404	27Y
A*2404	109F
A*2404	28V
A*2404	86N
A*2404	8F
A*2404	78L
A*2404	15P
A*2404	110L
A*2404	29D
A*2404	73T
A*2404	3H
A*2404	79G
A*2404	30D
A*2404	80T
A*2404	16G
A*2404	70H
A*2404	44R
A*2404	48R
A*2404	45M
A*2404	96Q
A*2404	5M
A*2404	55E
A*2404	31T
A*2404	112G
A*2404	32Q
A*2404	92S
A*2404	9S
A*2404	115Q
A*2404	17R
A*2404	52I
A*2404	33F
A*2404	97M
A*2404	34V
A*2404	93H
A*2404	18G
A*2404	94T
A*2404	35R
A*2404	66K
A*2404	36F
A*2404	103V
A*2404	10T
A*2404	88S
A*2404	19E
A*2404	54Q
A*2404	37D
A*2404	64T
A*2404	38S
A*2404	49A
A*2404	20P
A*2404	98M
A*2404	6R
A*2404	99F
A*2404	39D
A*2404	107G
A*2404	40A
A*2404	90A
A*2404	11S
A*2404	101C
A*2404	21R
A*2404	100G
A*2404	41A
A*2404	102D
A*2404	46E
A*2404	60W
A*2404	1G
A*2404	51W
A*2404	42S
A*2404	85Y
A*2404	22F
A*2404	111R
A*2404	43Q
A*2404	50P
A*2404	190T
A*2404	62E
A*2404	167G
A*2404	74D
A*2404	151H
A*2404	59Y
A*2404	120G
A*2404	106D
A*2404	183D
A*2404	76A
A*2404	157R
A*2404	69A
A*2404	134T
A*2404	72Q
A*2404	118Y
A*2404	114H
A*2404	166D
A*2404	116Y
A*2404	197H
A*2404	87Q
A*2404	129D
A*2404	47P
A*2404	135A
A*2404	117A
A*2404	185P
A*2404	65G
A*2404	198E
A*2404	84Y
A*2404	184P
A*2404	68K
A*2404	156Q
A*2404	186K
A*2404	130L
A*2404	152V
A*2404	189M
A*2404	126L
A*2404	155Q
A*2404	165V
A*2404	177E
A*2404	192H
A*2404	187T
A*2404	154E
A*2404	199A
A*2404	174N
A*2404	137D
A*2404	178T
A*2404	182T
A*2404	164C
A*2404	179L
A*2404	193P
A*2404	194I
A*2404	163T
A*2404	176K
A*2404	123Y
A*2404	181R
A*2404	180Q
A*2404	191H
A*2404	175G
A*2404	153A
A*2404	136A
A*2404	131R
A*2404	121K
A*2404	188H
A*2404	173E
A*2404	195S
A*2404	172L
A*2404	162G
A*2404	125A
A*2404	119D
A*2404	127K
A*2404	171Y
A*2404	138M
A*2404	161E
A*2404	150A
A*2404	132S
A*2404	170R
A*2404	124I
A*2404	139A
A*2404	149A
A*2404	160L
A*2404	141Q
A*2404	145R
A*2404	144K
A*2404	148E
A*2404	147W
A*2404	140A
A*2404	146K
A*2404	158A
A*2404	143T
A*2404	169R
A*2404	196D
A*2404	128E
A*2404	159Y
A*2404	142I
A*2404	207G
A*2404	219R
A*2404	245A
A*2404	168L
A*2404	122D
A*2404	133W
A*2405	12V
A*2405	125A
A*2405	23I
A*2405	152V
A*2405	4S
A*2405	135A
A*2405	24A
A*2405	156Q
A*2405	7Y
A*2405	120G
A*2405	13S
A*2405	157R
A*2405	25V
A*2405	118Y
A*2405	2S
A*2405	167G
A*2405	26G
A*2405	134T
A*2405	14R
A*2405	166D
A*2405	27Y
A*2405	129D
A*2405	28V
A*2405	168L
A*2405	8F
A*2405	177E
A*2405	15P
A*2405	155Q
A*2405	29D
A*2405	137D
A*2405	3H
A*2405	130L
A*2405	30D
A*2405	165V
A*2405	45M
A*2405	154E
A*2405	44R
A*2405	126L
A*2405	16G
A*2405	181R
A*2405	31T
A*2405	164C
A*2405	5M
A*2405	121K
A*2405	32Q
A*2405	180Q
A*2405	9S
A*2405	163T
A*2405	17R
A*2405	175G
A*2405	33F
A*2405	176K
A*2405	34V
A*2405	179L
A*2405	18G
A*2405	123Y
A*2405	35R
A*2405	178T
A*2405	36F
A*2405	174N
A*2405	10T
A*2405	173E
A*2405	19E
A*2405	172L
A*2405	37D
A*2405	136A
A*2405	38S
A*2405	131R
A*2405	20P
A*2405	153A
A*2405	6R
A*2405	182T
A*2405	39D
A*2405	151H
A*2405	40A
A*2405	158A
A*2405	11S
A*2405	119D
A*2405	21R
A*2405	127K
A*2405	46E
A*2405	171Y
A*2405	41A
A*2405	138M
A*2405	42S
A*2405	132S
A*2405	22F
A*2405	161E
A*2405	43Q
A*2405	170R
A*2405	66K
A*2405	149A
A*2405	58E
A*2405	162G
A*2405	105S
A*2405	150A
A*2405	91G
A*2405	160L
A*2405	94T
A*2405	139A
A*2405	106D
A*2405	124I
A*2405	63E
A*2405	143T
A*2405	56G
A*2405	140A
A*2405	71S
A*2405	147W
A*2405	67V
A*2405	146K
A*2405	89E
A*2405	148E
A*2405	57P
A*2405	128E
A*2405	83R
A*2405	144Q
A*2405	95L
A*2405	141Q
A*2405	53E
A*2405	169R
A*2405	113Y
A*2405	145R
A*2405	75R
A*2405	159Y
A*2405	77N
A*2405	142I
A*2405	108R
A*2405	122D
A*2405	70H
A*2405	133W
A*2405	104G
A*2405	82L
A*2405	61D
A*2405	78L
A*2405	86N
A*2405	112G
A*2405	81A
A*2405	79R
A*2405	96Q
A*2405	48R
A*2405	52I
A*2405	73T
A*2405	80I
A*2405	115Q
A*2405	97M
A*2405	92S
A*2405	49A
A*2405	54Q
A*2405	59Y
A*2405	103V
A*2405	107G
A*2405	99F
A*2405	98M
A*2405	64T
A*2405	88S
A*2405	90A
A*2405	102D
A*2405	85Y
A*2405	50P
A*2405	101C
A*2405	60W
A*2405	100G
A*2405	51W
A*2405	62E
A*2405	111R
A*2405	72Q
A*2405	93H
A*2405	69A
A*2405	87Q
A*2405	114H
A*2405	74D
A*2405	76E
A*2405	116Y
A*2405	117A
A*2405	65G
A*2405	109F
A*2405	84Y
A*2405	68K
A*2405	55E
A*2405	110L
A*2405	47P
A*2406	158A
A*2406	105S
A*2406	137D
A*2406	70H
A*2406	118Y
A*2406	91G
A*2406	125A
A*2406	116Y
A*2406	167G
A*2406	94T
A*2406	157R
A*2406	106D
A*2406	134T
A*2406	66K
A*2406	166D
A*2406	59Y
A*2406	129D
A*2406	89E
A*2406	120G
A*2406	67V
A*2406	121K
A*2406	71S
A*2406	156W
A*2406	56G
A*2406	155Q
A*2406	53E
A*2406	135A
A*2406	75R
A*2406	154E
A*2406	63E
A*2406	126L
A*2406	113Y
A*2406	165V
A*2406	95L
A*2406	130L
A*2406	57P
A*2406	177E
A*2406	83R
A*2406	175G
A*2406	77N
A*2406	164C
A*2406	104G
A*2406	174N
A*2406	58E
A*2406	179L
A*2406	112G
A*2406	178T
A*2406	52I
A*2406	123Y
A*2406	86N
A*2406	173E
A*2406	78L
A*2406	181R
A*2406	82L
A*2406	176K
A*2406	61D
A*2406	172L
A*2406	108R
A*2406	180Q
A*2406	81A
A*2406	136A
A*2406	79R
A*2406	131R
A*2406	73T
A*2406	153A
A*2406	114H
A*2406	163T
A*2406	96Q
A*2406	182T
A*2406	97M
A*2406	171Y
A*2406	80I
A*2406	170R
A*2406	115Q
A*2406	132S
A*2406	92S
A*2406	152V
A*2406	48R
A*2406	149A
A*2406	107G
A*2406	127K
A*2406	50P
A*2406	151H
A*2406	99F
A*2406	138M
A*2406	64T
A*2406	150A
A*2406	103V
A*2406	160L
A*2406	87Q
A*2406	119D
A*2406	88S
A*2406	162G
A*2406	98M
A*2406	161E
A*2406	90A
A*2406	124I
A*2406	85Y
A*2406	139A
A*2406	102D
A*2406	128E
A*2406	101C
A*2406	147W
A*2406	100G
A*2406	146K
A*2406	49A
A*2406	148E
A*2406	111R
A*2406	140A
A*2406	60W
A*2406	169R
A*2406	62E
A*2406	144K
A*2406	51W
A*2406	141Q
A*2406	54Q
A*2406	145R
A*2406	69A
A*2406	159Y
A*2406	93H
A*2406	142I
A*2406	74D
A*2406	143T
A*2406	109F
A*2406	168L
A*2406	72Q
A*2406	133W
A*2406	76E
A*2406	122D
A*2406	84Y
A*2406	12V
A*2406	65G
A*2406	23I
A*2406	55E
A*2406	4S
A*2406	117A
A*2406	24A
A*2406	68K
A*2406	7Y
A*2406	47P
A*2406	13S
A*2406	110L
A*2406	25V
A*2406	2S
A*2406	26G
A*2406	14R
A*2406	27Y
A*2406	28V
A*2406	8F
A*2406	15P
A*2406	29D
A*2406	3H
A*2406	30D
A*2406	16G
A*2406	31T
A*2406	5M
A*2406	44R
A*2406	45M
A*2406	32Q
A*2406	9S
A*2406	17R
A*2406	33F
A*2406	34V
A*2406	18G
A*2406	35R
A*2406	36F
A*2406	10T
A*2406	19E
A*2406	37D
A*2406	38S
A*2406	20P
A*2406	6R
A*2406	39D
A*2406	40A
A*2406	11S
A*2406	21R
A*2406	46E
A*2406	41A
A*2406	42S
A*2406	22F
A*2406	43Q
A*2407	112G
A*2407	1G
A*2407	66K
A*2407	12V
A*2407	87Q
A*2407	23I
A*2407	94T
A*2407	4S
A*2407	52I
A*2407	24A
A*2407	59Y
A*2407	7Y
A*2407	116Y
A*2407	13S
A*2407	91G
A*2407	25V
A*2407	89E
A*2407	2S
A*2407	53E
A*2407	26G
A*2407	56G
A*2407	41A
A*2407	113Y
A*2407	14R
A*2407	67V
A*2407	27Y
A*2407	75R
A*2407	28V
A*2407	105S
A*2407	8F
A*2407	71S
A*2407	15P
A*2407	63E
A*2407	29D
A*2407	77N
A*2407	3H
A*2407	95L
A*2407	30D
A*2407	57P
A*2407	16G
A*2407	83R
A*2407	31T
A*2407	78L
A*2407	5M
A*2407	86N
A*2407	45M
A*2407	58E
A*2407	32Q
A*2407	61D
A*2407	9S
A*2407	108R
A*2407	44R
A*2407	82L
A*2407	17R
A*2407	81A
A*2407	33F
A*2407	97M
A*2407	34V
A*2407	73T
A*2407	18G
A*2407	96Q
A*2407	35R
A*2407	115Q
A*2407	36F
A*2407	104G
A*2407	10T
A*2407	92S
A*2407	19E
A*2407	48R
A*2407	37D
A*2407	79R
A*2407	38S
A*2407	80I
A*2407	20P
A*2407	109F
A*2407	6R
A*2407	70Q
A*2407	39D
A*2407	103V
A*2407	40A
A*2407	88S
A*2407	11S
A*2407	98M
A*2407	46E
A*2407	111R
A*2407	21R
A*2407	62E
A*2407	42S
A*2407	102D
A*2407	22F
A*2407	64T
A*2407	43Q
A*2407	99F
A*2407	133W
A*2407	51W
A*2407	198E
A*2407	90A
A*2407	121K
A*2407	100G
A*2407	125A
A*2407	101C
A*2407	158A
A*2407	107G
A*2407	167G
A*2407	85Y
A*2407	134T
A*2407	49A
A*2407	183D
A*2407	54Q
A*2407	166D
A*2407	60W
A*2407	157R
A*2407	84Y
A*2407	185P
A*2407	93H
A*2407	197H
A*2407	50P
A*2407	184P
A*2407	68K
A*2407	118Y
A*2407	74D
A*2407	120G
A*2407	55E
A*2407	129D
A*2407	72Q
A*2407	186K
A*2407	69A
A*2407	126L
A*2407	76E
A*2407	156Q
A*2407	117A
A*2407	135A
A*2407	114H
A*2407	192H
A*2407	106D
A*2407	130L
A*2407	47P
A*2407	155Q
A*2407	65G
A*2407	207G
A*2407	110L
A*2407	199A
A*2407	267P
A*2407	165V
A*2407	261V
A*2407	174N
A*2407	273R
A*2407	172L
A*2407	253E
A*2407	191H
A*2407	275E
A*2407	164C
A*2407	276P
A*2407	177E
A*2407	270L
A*2407	193P
A*2407	268K
A*2407	187T
A*2407	248V
A*2407	189M
A*2407	178T
A*2407	154E
A*2407	194I
A*2407	123Y
A*2407	179L
A*2407	175G
A*2407	188H
A*2407	131R
A*2407	180Q
A*2407	181R
A*2407	195S
A*2407	176K
A*2407	173E
A*2407	182T
A*2407	153A
A*2407	136A
A*2407	163T
A*2407	190T
A*2407	137D
A*2407	152V
A*2407	160L
A*2407	151H
A*2407	138M
A*2407	143T
A*2407	162G
A*2407	119D
A*2407	219R
A*2407	127K
A*2407	150A
A*2407	171Y
A*2407	161E
A*2407	139A
A*2407	124I
A*2407	148E
A*2407	149A
A*2407	159Y
A*2407	146K
A*2407	147W
A*2407	170R
A*2407	196D
A*2407	132S
A*2407	140A
A*2407	141Q
A*2407	169R
A*2407	145R
A*2407	142I
A*2407	144K
A*2407	245A
A*2407	246A
A*2407	128E
A*2407	168L
A*2407	122D
A*2408	253E
A*2408	134T
A*2408	248V
A*2408	166D
A*2408	261V
A*2408	167G
A*2408	267P
A*2408	158A
A*2408	268K
A*2408	183D
A*2408	275E
A*2408	125A
A*2408	276P
A*2408	157R
A*2408	273R
A*2408	118Y
A*2408	270L
A*2408	197H
A*2408	12V
A*2408	184P
A*2408	1G
A*2408	129D
A*2408	23I
A*2408	185P
A*2408	4S
A*2408	120G
A*2408	24A
A*2408	186K
A*2408	7Y
A*2408	172L
A*2408	13S
A*2408	192H
A*2408	25V
A*2408	156Q
A*2408	2S
A*2408	198E
A*2408	26G
A*2408	135A
A*2408	14R
A*2408	130L
A*2408	27Y
A*2408	207G
A*2408	28V
A*2408	155Q
A*2408	8F
A*2408	159Y
A*2408	15P
A*2408	165V
A*2408	29D
A*2408	199A
A*2408	3Q
A*2408	131R
A*2408	30D
A*2408	187T
A*2408	16G
A*2408	194I
A*2408	31T
A*2408	179L
A*2408	5M
A*2408	154E
A*2408	44R
A*2408	193P
A*2408	32Q
A*2408	123Y
A*2408	9S
A*2408	178T
A*2408	45M
A*2408	195S
A*2408	17R
A*2408	126L
A*2408	33F
A*2408	177E
A*2408	34V
A*2408	189M
A*2408	18G
A*2408	180Q
A*2408	35R
A*2408	182T
A*2408	36F
A*2408	174N
A*2408	10T
A*2408	163T
A*2408	19E
A*2408	181R
A*2408	37D
A*2408	153A
A*2408	38S
A*2408	164C
A*2408	20P
A*2408	176K
A*2408	6R
A*2408	191H
A*2408	39D
A*2408	136A
A*2408	40A
A*2408	188H
A*2408	11S
A*2408	175G
A*2408	46E
A*2408	173E
A*2408	21R
A*2408	137D
A*2408	41A
A*2408	138M
A*2408	42S
A*2408	190T
A*2408	22F
A*2408	121K
A*2408	43Q
A*2408	152V
A*2408	53E
A*2408	151H
A*2408	113Y
A*2408	150A
A*2408	75R
A*2408	162G
A*2408	94T
A*2408	119D
A*2408	87Q
A*2408	219R
A*2408	109F
A*2408	127K
A*2408	59Y
A*2408	124I
A*2408	106D
A*2408	171Y
A*2408	116Y
A*2408	161E
A*2408	91G
A*2408	139A
A*2408	77N
A*2408	133W
A*2408	66K
A*2408	149A
A*2408	71S
A*2408	132S
A*2408	105S
A*2408	147W
A*2408	95L
A*2408	160L
A*2408	56G
A*2408	142I
A*2408	67V
A*2408	170R
A*2408	83R
A*2408	145R
A*2408	89E
A*2408	141Q
A*2408	57P
A*2408	148E
A*2408	63E
A*2408	140A
A*2408	97M
A*2408	146K
A*2408	115Q
A*2408	144K
A*2408	58E
A*2408	169R
A*2408	108R
A*2408	245A
A*2408	82L
A*2408	246A
A*2408	92S
A*2408	128E
A*2408	114H
A*2408	143T
A*2408	78L
A*2408	168L
A*2408	86N
A*2408	122D
A*2408	73T
A*2408	196D
A*2408	48R
A*2408	96Q
A*2408	61D
A*2408	104G
A*2408	81A
A*2408	80I
A*2408	79R
A*2408	111R
A*2408	103V
A*2408	51W
A*2408	55E
A*2408	70H
A*2408	62G
A*2408	68K
A*2408	84Y
A*2408	88S
A*2408	98M
A*2408	112G
A*2408	52I
A*2408	99F
A*2408	101C
A*2408	100G
A*2408	90A
A*2408	64T
A*2408	102D
A*2408	107G
A*2408	54Q
A*2408	85Y
A*2408	49A
A*2408	60W
A*2408	74D
A*2408	76E
A*2408	93H
A*2408	50P
A*2408	69A
A*2408	72Q
A*2408	117A
A*2408	47P
A*2408	65R
A*2408	110L
A*2410	12V
A*2410	59Y
A*2410	23I
A*2410	97M
A*2410	4S
A*2410	84Y
A*2410	24A
A*2410	55E
A*2410	7Y
A*2410	115Q
A*2410	13S
A*2410	77N
A*2410	25V
A*2410	87Q
A*2410	2S
A*2410	91G
A*2410	26G
A*2410	109F
A*2410	14R
A*2410	68K
A*2410	27Y
A*2410	116Y
A*2410	28V
A*2410	94T
A*2410	8F
A*2410	83R
A*2410	15P
A*2410	71S
A*2410	29D
A*2410	105S
A*2410	3H
A*2410	66K
A*2410	30D
A*2410	67V
A*2410	44R
A*2410	95L
A*2410	16G
A*2410	57P
A*2410	31T
A*2410	56G
A*2410	5M
A*2410	89E
A*2410	45M
A*2410	63E
A*2410	32Q
A*2410	92S
A*2410	9S
A*2410	58E
A*2410	17R
A*2410	48R
A*2410	33F
A*2410	113Y
A*2410	34V
A*2410	53E
A*2410	18G
A*2410	75R
A*2410	35R
A*2410	110L
A*2410	36F
A*2410	108R
A*2410	10T
A*2410	82L
A*2410	19E
A*2410	104G
A*2410	37D
A*2410	96Q
A*2410	38S
A*2410	61D
A*2410	20P
A*2410	78L
A*2410	6R
A*2410	86N
A*2410	39D
A*2410	73T
A*2410	43Q
A*2410	81A
A*2410	40A
A*2410	80I
A*2410	11S
A*2410	79R
A*2410	46E
A*2410	88S
A*2410	21R
A*2410	117A
A*2410	41A
A*2410	98M
A*2410	42S
A*2410	70H
A*2410	22F
A*2410	52I
A*2410	172L
A*2410	112G
A*2410	166E
A*2410	103V
A*2410	125A
A*2410	64T
A*2410	158A
A*2410	102D
A*2410	167W
A*2410	49A
A*2410	157R
A*2410	90A
A*2410	129D
A*2410	107G
A*2410	134T
A*2410	60W
A*2410	120G
A*2410	99F
A*2410	118Y
A*2410	100G
A*2410	130L
A*2410	54Q
A*2410	131R
A*2410	101C
A*2410	156Q
A*2410	85Y
A*2410	165V
A*2410	93H
A*2410	135A
A*2410	111R
A*2410	155Q
A*2410	62E
A*2410	163R
A*2410	47P
A*2410	178T
A*2410	65G
A*2410	179L
A*2410	51W
A*2410	154E
A*2410	74D
A*2410	123Y
A*2410	72Q
A*2410	126L
A*2410	69A
A*2410	153A
A*2410	50P
A*2410	182T
A*2410	76E
A*2410	136A
A*2410	114H
A*2410	173E
A*2410	106D
A*2410	176K
A*2410	181R
A*2410	177E
A*2410	174N
A*2410	164C
A*2410	180Q
A*2410	175G
A*2410	121K
A*2410	133W
A*2410	152V
A*2410	150A
A*2410	137D
A*2410	151H
A*2410	124I
A*2410	139A
A*2410	162G
A*2410	138M
A*2410	119D
A*2410	127K
A*2410	161E
A*2410	171Y
A*2410	145R
A*2410	147W
A*2410	142I
A*2410	168L
A*2410	160L
A*2410	149A
A*2410	141Q
A*2410	146K
A*2410	170R
A*2410	148E
A*2410	144K
A*2410	132S
A*2410	169R
A*2410	140A
A*2410	122D
A*2410	143T
A*2410	159Y
A*2410	128E
A*2413	84Y
A*2413	125A
A*2413	83R
A*2413	131R
A*2413	92S
A*2413	133W
A*2413	48R
A*2413	158A
A*2413	55E
A*2413	167G
A*2413	68K
A*2413	157R
A*2413	91G
A*2413	129D
A*2413	116Y
A*2413	166D
A*2413	109F
A*2413	134T
A*2413	87Q
A*2413	120G
A*2413	94T
A*2413	153A
A*2413	59Y
A*2413	182T
A*2413	105S
A*2413	163T
A*2413	66K
A*2413	165V
A*2413	71S
A*2413	156L
A*2413	89E
A*2413	135A
A*2413	57P
A*2413	155Q
A*2413	95L
A*2413	173E
A*2413	56G
A*2413	130L
A*2413	67V
A*2413	123Y
A*2413	63E
A*2413	179L
A*2413	77N
A*2413	154E
A*2413	113Y
A*2413	136A
A*2413	75R
A*2413	164C
A*2413	53E
A*2413	174N
A*2413	58E
A*2413	181R
A*2413	82L
A*2413	180Q
A*2413	108R
A*2413	177E
A*2413	78L
A*2413	175G
A*2413	86N
A*2413	126L
A*2413	79R
A*2413	176K
A*2413	96Q
A*2413	178T
A*2413	104G
A*2413	168L
A*2413	81A
A*2413	172L
A*2413	80I
A*2413	139A
A*2413	61D
A*2413	124I
A*2413	73T
A*2413	152V
A*2413	115Q
A*2413	151H
A*2413	60W
A*2413	137D
A*2413	49A
A*2413	121K
A*2413	65G
A*2413	138M
A*2413	97M
A*2413	119D
A*2413	70H
A*2413	162G
A*2413	52I
A*2413	127K
A*2413	47P
A*2413	145R
A*2413	103V
A*2413	171Y
A*2413	112G
A*2413	161E
A*2413	117A
A*2413	150A
A*2413	88S
A*2413	146K
A*2413	90A
A*2413	160L
A*2413	98M
A*2413	149A
A*2413	54Q
A*2413	122D
A*2413	107G
A*2413	147W
A*2413	100G
A*2413	132S
A*2413	102D
A*2413	144K
A*2413	99F
A*2413	170R
A*2413	101C
A*2413	148E
A*2413	64T
A*2413	169R
A*2413	85Y
A*2413	140A
A*2413	110L
A*2413	141Q
A*2413	51W
A*2413	143T
A*2413	62E
A*2413	142I
A*2413	72Q
A*2413	128E
A*2413	93H
A*2413	159Y
A*2413	111R
A*2413	12V
A*2413	69A
A*2413	23I
A*2413	50P
A*2413	4S
A*2413	74D
A*2413	24A
A*2413	114H
A*2413	7Y
A*2413	118Y
A*2413	13S
A*2413	106D
A*2413	25V
A*2413	76E
A*2413	2S
A*2413	26G
A*2413	14R
A*2413	27Y
A*2413	46E
A*2413	28V
A*2413	8F
A*2413	44R
A*2413	15P
A*2413	29D
A*2413	3H
A*2413	30D
A*2413	45M
A*2413	16G
A*2413	31T
A*2413	5M
A*2413	32Q
A*2413	9S
A*2413	17R
A*2413	33F
A*2413	34V
A*2413	18G
A*2413	42S
A*2413	35R
A*2413	36F
A*2413	10T
A*2413	19E
A*2413	37D
A*2413	38S
A*2413	20P
A*2413	6R
A*2413	39D
A*2413	40A
A*2413	11S
A*2413	21R
A*2413	41A
A*2413	22F
A*2413	43Q
A*2414	163T
A*2414	44R
A*2414	168L
A*2414	12V
A*2414	182T
A*2414	23I
A*2414	153A
A*2414	4S
A*2414	133W
A*2414	41A
A*2414	158A
A*2414	24A
A*2414	157R
A*2414	7Y
A*2414	167G
A*2414	13S
A*2414	125A
A*2414	25V
A*2414	134T
A*2414	2S
A*2414	129D
A*2414	26G
A*2414	166D
A*2414	14R
A*2414	120G
A*2414	27Y
A*2414	136A
A*2414	28V
A*2414	156Q
A*2414	8F
A*2414	173E
A*2414	45M
A*2414	155Q
A*2414	15P
A*2414	135A
A*2414	29D
A*2414	165V
A*2414	3H
A*2414	130L
A*2414	30D
A*2414	175G
A*2414	16G
A*2414	180Q
A*2414	46E
A*2414	123Y
A*2414	31T
A*2414	164C
A*2414	5M
A*2414	179L
A*2414	32Q
A*2414	174N
A*2414	9S
A*2414	181R
A*2414	17R
A*2414	176K
A*2414	33F
A*2414	126L
A*2414	34V
A*2414	178T
A*2414	18G
A*2414	177E
A*2414	35R
A*2414	154E
A*2414	36F
A*2414	151H
A*2414	10T
A*2414	152V
A*2414	19E
A*2414	122D
A*2414	37D
A*2414	172L
A*2414	38S
A*2414	131R
A*2414	20P
A*2414	137D
A*2414	39D
A*2414	121K
A*2414	6R
A*2414	162G
A*2414	40A
A*2414	138M
A*2414	11S
A*2414	119D
A*2414	21R
A*2414	171Y
A*2414	42S
A*2414	161E
A*2414	22F
A*2414	127K
A*2414	43Q
A*2414	124I
A*2414	91G
A*2414	160L
A*2414	116Y
A*2414	149A
A*2414	65G
A*2414	132S
A*2414	87Q
A*2414	144K
A*2414	84Y
A*2414	150A
A*2414	109F
A*2414	139A
A*2414	94T
A*2414	169R
A*2414	55E
A*2414	140A
A*2414	47P
A*2414	147W
A*2414	59Y
A*2414	148E
A*2414	68K
A*2414	141Q
A*2414	66K
A*2414	170R
A*2414	56G
A*2414	146K
A*2414	57P
A*2414	128E
A*2414	63E
A*2414	145R
A*2414	71S
A*2414	142I
A*2414	95V
A*2414	143T
A*2414	105S
A*2414	159Y
A*2414	89E
A*2414	67V
A*2414	72Q
A*2414	83R
A*2414	75R
A*2414	77N
A*2414	58E
A*2414	82L
A*2414	113Y
A*2414	53E
A*2414	108R
A*2414	86N
A*2414	79R
A*2414	61D
A*2414	104G
A*2414	80I
A*2414	81A
A*2414	78L
A*2414	96Q
A*2414	73T
A*2414	54Q
A*2414	110L
A*2414	97R
A*2414	52I
A*2414	115Q
A*2414	92S
A*2414	48R
A*2414	103V
A*2414	70H
A*2414	112G
A*2414	88S
A*2414	90A
A*2414	117A
A*2414	107W
A*2414	98M
A*2414	85Y
A*2414	100G
A*2414	101C
A*2414	99Y
A*2414	102D
A*2414	64T
A*2414	60W
A*2414	69A
A*2414	49A
A*2414	111R
A*2414	50P
A*2414	93H
A*2414	62E
A*2414	74D
A*2414	51W
A*2414	118Y
A*2414	106D
A*2414	76E
A*2414	114H
A*2415	45M
A*2415	65G
A*2415	12V
A*2415	87Q
A*2415	23I
A*2415	110L
A*2415	4S
A*2415	84Y
A*2415	24A
A*2415	109F
A*2415	7Y
A*2415	94T
A*2415	13S
A*2415	47P
A*2415	25V
A*2415	106D
A*2415	2S
A*2415	55E
A*2415	26G
A*2415	89E
A*2415	14R
A*2415	56G
A*2415	27Y
A*2415	57P
A*2415	28V
A*2415	95L
A*2415	8F
A*2415	59Y
A*2415	15P
A*2415	63E
A*2415	29D
A*2415	68K
A*2415	3H
A*2415	69A
A*2415	30D
A*2415	116Y
A*2415	16G
A*2415	91G
A*2415	46E
A*2415	67V
A*2415	31T
A*2415	105P
A*2415	5M
A*2415	71S
A*2415	32Q
A*2415	66K
A*2415	9S
A*2415	75R
A*2415	17R
A*2415	83R
A*2415	33F
A*2415	82L
A*2415	34V
A*2415	79R
A*2415	18G
A*2415	61D
A*2415	44R
A*2415	53E
A*2415	35R
A*2415	58E
A*2415	36F
A*2415	113Y
A*2415	10T
A*2415	77N
A*2415	19E
A*2415	108R
A*2415	37D
A*2415	80I
A*2415	38S
A*2415	78L
A*2415	20P
A*2415	96Q
A*2415	39D
A*2415	86N
A*2415	6R
A*2415	73T
A*2415	40A
A*2415	104G
A*2415	11S
A*2415	81A
A*2415	21R
A*2415	115Q
A*2415	41A
A*2415	103V
A*2415	42S
A*2415	92S
A*2415	22F
A*2415	70H
A*2415	43Q
A*2415	112G
A*2415	158A
A*2415	97M
A*2415	173E
A*2415	48R
A*2415	168L
A*2415	85Y
A*2415	122D
A*2415	107G
A*2415	133W
A*2415	88S
A*2415	157R
A*2415	52I
A*2415	167G
A*2415	98M
A*2415	136A
A*2415	117A
A*2415	134T
A*2415	101C
A*2415	125A
A*2415	102D
A*2415	129D
A*2415	99Y
A*2415	166D
A*2415	90A
A*2415	120G
A*2415	64T
A*2415	156Q
A*2415	100G
A*2415	155Q
A*2415	49A
A*2415	135A
A*2415	111R
A*2415	180Q
A*2415	93H
A*2415	175G
A*2415	54Q
A*2415	130L
A*2415	60W
A*2415	164C
A*2415	74D
A*2415	165V
A*2415	51W
A*2415	123Y
A*2415	62E
A*2415	181R
A*2415	50P
A*2415	178T
A*2415	118Y
A*2415	177E
A*2415	114H
A*2415	126L
A*2415	72Q
A*2415	179L
A*2415	76E
A*2415	174N
A*2415	176K
A*2415	154E
A*2415	152V
A*2415	182T
A*2415	163T
A*2415	153A
A*2415	172L
A*2415	137D
A*2415	131R
A*2415	121K
A*2415	151H
A*2415	162G
A*2415	138M
A*2415	119D
A*2415	171Y
A*2415	161E
A*2415	146K
A*2415	127K
A*2415	140A
A*2415	128E
A*2415	169R
A*2415	124I
A*2415	139A
A*2415	150A
A*2415	149A
A*2415	160L
A*2415	148E
A*2415	141Q
A*2415	170R
A*2415	147W
A*2415	132S
A*2415	145R
A*2415	144K
A*2415	159Y
A*2415	143T
A*2415	142I
A*2417	89E
A*2417	122D
A*2417	110L
A*2417	133W
A*2417	56G
A*2417	168L
A*2417	79R
A*2417	157R
A*2417	95L
A*2417	167G
A*2417	57P
A*2417	158A
A*2417	109F
A*2417	134T
A*2417	61D
A*2417	125A
A*2417	63E
A*2417	120G
A*2417	84Y
A*2417	166D
A*2417	94T
A*2417	129D
A*2417	55E
A*2417	180Q
A*2417	65G
A*2417	175G
A*2417	67V
A*2417	164C
A*2417	68K
A*2417	135A
A*2417	116D
A*2417	156Q
A*2417	87Q
A*2417	165V
A*2417	91G
A*2417	130L
A*2417	105S
A*2417	155Q
A*2417	71S
A*2417	177E
A*2417	59Y
A*2417	126L
A*2417	66K
A*2417	178T
A*2417	80I
A*2417	176K
A*2417	53E
A*2417	181R
A*2417	83R
A*2417	154E
A*2417	58E
A*2417	123Y
A*2417	113Y
A*2417	174N
A*2417	108R
A*2417	179L
A*2417	75R
A*2417	173E
A*2417	77N
A*2417	163T
A*2417	82L
A*2417	153A
A*2417	96Q
A*2417	131R
A*2417	86N
A*2417	172L
A*2417	73T
A*2417	136A
A*2417	104G
A*2417	182T
A*2417	81A
A*2417	152V
A*2417	78L
A*2417	121K
A*2417	115Q
A*2417	128E
A*2417	70H
A*2417	137D
A*2417	92S
A*2417	144K
A*2417	85Y
A*2417	162G
A*2417	112G
A*2417	138M
A*2417	48R
A*2417	171Y
A*2417	97M
A*2417	151H
A*2417	103V
A*2417	161E
A*2417	64T
A*2417	119D
A*2417	76E
A*2417	127K
A*2417	88S
A*2417	124I
A*2417	117A
A*2417	140A
A*2417	98M
A*2417	159Y
A*2417	52I
A*2417	139A
A*2417	90A
A*2417	150A
A*2417	99F
A*2417	149A
A*2417	102D
A*2417	141Q
A*2417	107G
A*2417	160L
A*2417	101C
A*2417	170R
A*2417	100G
A*2417	147W
A*2417	106D
A*2417	148E
A*2417	74D
A*2417	146K
A*2417	93H
A*2417	145R
A*2417	54Q
A*2417	132S
A*2417	111R
A*2417	169R
A*2417	60W
A*2417	143T
A*2417	51W
A*2417	142I
A*2417	49A
A*2417	12V
A*2417	62E
A*2417	23I
A*2417	114R
A*2417	4S
A*2417	118Y
A*2417	24A
A*2417	69A
A*2417	7Y
A*2417	72Q
A*2417	13S
A*2417	50P
A*2417	25V
A*2417	2S
A*2417	26G
A*2417	14R
A*2417	27Y
A*2417	28V
A*2417	8F
A*2417	15P
A*2417	29D
A*2417	3H
A*2417	30D
A*2417	16G
A*2417	46E
A*2417	31T
A*2417	5M
A*2417	32Q
A*2417	9S
A*2417	17R
A*2417	33F
A*2417	45M
A*2417	34V
A*2417	44R
A*2417	18G
A*2417	35R
A*2417	36F
A*2417	10T
A*2417	19E
A*2417	37D
A*2417	38S
A*2417	20P
A*2417	39D
A*2417	6R
A*2417	40A
A*2417	11S
A*2417	21R
A*2417	41A
A*2417	47P
A*2417	42S
A*2417	22F
A*2417	43Q
A*2420	128E
A*2420	12V
A*2420	168L
A*2420	23I
A*2420	175G
A*2420	4S
A*2420	164C
A*2420	24A
A*2420	133W
A*2420	7Y
A*2420	180Q
A*2420	13S
A*2420	122D
A*2420	25V
A*2420	157R
A*2420	26G
A*2420	167G
A*2420	2S
A*2420	158A
A*2420	14R
A*2420	120G
A*2420	27Y
A*2420	125A
A*2420	28V
A*2420	166D
A*2420	8F
A*2420	129D
A*2420	15P
A*2420	134T
A*2420	29D
A*2420	156Q
A*2420	3Q
A*2420	178T
A*2420	30D
A*2420	155Q
A*2420	46E
A*2420	165V
A*2420	16G
A*2420	130L
A*2420	31T
A*2420	176K
A*2420	5M
A*2420	126L
A*2420	32Q
A*2420	177E
A*2420	9S
A*2420	135A
A*2420	17R
A*2420	154E
A*2420	45M
A*2420	181R
A*2420	33F
A*2420	179L
A*2420	44R
A*2420	123Y
A*2420	34V
A*2420	174N
A*2420	18G
A*2420	159Y
A*2420	35R
A*2420	163T
A*2420	36F
A*2420	153A
A*2420	10T
A*2420	121K
A*2420	19E
A*2420	171Y
A*2420	37D
A*2420	172L
A*2420	38S
A*2420	136A
A*2420	20P
A*2420	182T
A*2420	39D
A*2420	152V
A*2420	6R
A*2420	173E
A*2420	40A
A*2420	137D
A*2420	11S
A*2420	138M
A*2420	21R
A*2420	162G
A*2420	47P
A*2420	131R
A*2420	41A
A*2420	151H
A*2420	42S
A*2420	127K
A*2420	22F
A*2420	161E
A*2420	43Q
A*2420	146K
A*2420	80I
A*2420	119D
A*2420	94T
A*2420	141Q
A*2420	67V
A*2420	139A
A*2420	55E
A*2420	150A
A*2420	84Y
A*2420	170R
A*2420	110L
A*2420	160L
A*2420	65G
A*2420	124I
A*2420	116Y
A*2420	147W
A*2420	68K
A*2420	149A
A*2420	109F
A*2420	148E
A*2420	87Q
A*2420	145R
A*2420	91G
A*2420	140A
A*2420	66K
A*2420	144K
A*2420	71S
A*2420	143T
A*2420	59Y
A*2420	132S
A*2420	105S
A*2420	142I
A*2420	95L
A*2420	169R
A*2420	89E
A*2420	63E
A*2420	83R
A*2420	113Y
A*2420	58E
A*2420	77N
A*2420	57P
A*2420	56G
A*2420	108R
A*2420	75R
A*2420	53E
A*2420	82L
A*2420	73T
A*2420	86N
A*2420	81A
A*2420	78L
A*2420	104G
A*2420	96Q
A*2420	61D
A*2420	112G
A*2420	115Q
A*2420	79R
A*2420	92S
A*2420	64T
A*2420	106D
A*2420	48R
A*2420	97M
A*2420	70H
A*2420	103V
A*2420	117A
A*2420	88S
A*2420	98M
A*2420	107G
A*2420	52I
A*2420	102D
A*2420	100G
A*2420	99F
A*2420	101C
A*2420	90A
A*2420	93H
A*2420	114H
A*2420	51W
A*2420	76E
A*2420	85Y
A*2420	54Q
A*2420	62E
A*2420	111R
A*2420	60W
A*2420	49A
A*2420	118Y
A*2420	74D
A*2420	69A
A*2420	72Q
A*2420	50P
A*2422	12V
A*2422	65G
A*2422	23I
A*2422	106D
A*2422	4S
A*2422	55E
A*2422	1G
A*2422	110L
A*2422	24A
A*2422	84Y
A*2422	7Y
A*2422	109F
A*2422	13S
A*2422	94T
A*2422	25V
A*2422	91G
A*2422	26G
A*2422	66K
A*2422	2S
A*2422	87Q
A*2422	14R
A*2422	68K
A*2422	27Y
A*2422	59Y
A*2422	28V
A*2422	71S
A*2422	8F
A*2422	116Y
A*2422	15P
A*2422	105S
A*2422	29D
A*2422	77N
A*2422	3H
A*2422	83R
A*2422	30D
A*2422	89E
A*2422	16G
A*2422	95L
A*2422	31T
A*2422	75R
A*2422	5M
A*2422	58E
A*2422	32Q
A*2422	56G
A*2422	46E
A*2422	57P
A*2422	9S
A*2422	113Y
A*2422	17R
A*2422	63E
A*2422	33F
A*2422	67V
A*2422	34V
A*2422	53E
A*2422	18G
A*2422	81A
A*2422	35R
A*2422	78L
A*2422	45M
A*2422	73T
A*2422	44R
A*2422	82L
A*2422	36F
A*2422	108R
A*2422	10T
A*2422	104G
A*2422	19E
A*2422	74D
A*2422	37D
A*2422	96Q
A*2422	38S
A*2422	86N
A*2422	20P
A*2422	115Q
A*2422	39D
A*2422	48R
A*2422	6R
A*2422	92S
A*2422	40A
A*2422	61D
A*2422	11S
A*2422	76E
A*2422	21R
A*2422	114H
A*2422	47P
A*2422	79R
A*2422	41A
A*2422	80I
A*2422	42S
A*2422	97M
A*2422	22F
A*2422	112G
A*2422	43Q
A*2422	117A
A*2422	168L
A*2422	98M
A*2422	120G
A*2422	103V
A*2422	159Y
A*2422	70H
A*2422	128E
A*2422	88S
A*2422	183D
A*2422	99F
A*2422	133W
A*2422	100G
A*2422	122D
A*2422	52I
A*2422	167W
A*2422	90A
A*2422	197H
A*2422	107G
A*2422	125A
A*2422	101C
A*2422	158V
A*2422	102D
A*2422	184P
A*2422	62E
A*2422	157R
A*2422	54Q
A*2422	166E
A*2422	111R
A*2422	129D
A*2422	85Y
A*2422	186K
A*2422	64T
A*2422	134T
A*2422	93H
A*2422	185P
A*2422	49A
A*2422	207G
A*2422	60W
A*2422	176K
A*2422	118Y
A*2422	195S
A*2422	51W
A*2422	178T
A*2422	69A
A*2422	198E
A*2422	119D
A*2422	177E
A*2422	72Q
A*2422	126L
A*2422	50P
A*2422	156W
A*2422	261V
A*2422	199A
A*2422	275E
A*2422	194I
A*2422	268K
A*2422	189M
A*2422	267P
A*2422	154E
A*2422	270L
A*2422	181R
A*2422	276P
A*2422	193P
A*2422	273R
A*2422	192H
A*2422	135A
A*2422	123Y
A*2422	174N
A*2422	179L
A*2422	130L
A*2422	188H
A*2422	191H
A*2422	187T
A*2422	155Q
A*2422	165V
A*2422	172L
A*2422	180Q
A*2422	175G
A*2422	136A
A*2422	164C
A*2422	182T
A*2422	137D
A*2422	153A
A*2422	173E
A*2422	190T
A*2422	152V
A*2422	163T
A*2422	127K
A*2422	121K
A*2422	161E
A*2422	219R
A*2422	131R
A*2422	151H
A*2422	138M
A*2422	162G
A*2422	147W
A*2422	150A
A*2422	170R
A*2422	171Y
A*2422	124I
A*2422	160L
A*2422	139A
A*2422	148E
A*2422	149A
A*2422	245A
A*2422	246A
A*2422	248V
A*2422	253E
A*2422	143T
A*2422	169R
A*2422	140A
A*2422	144K
A*2422	141Q
A*2422	196D
A*2422	145R
A*2422	142I
A*2422	132S
A*2422	146K
A*2423	12V
A*2423	159Y
A*2423	23I
A*2423	177E
A*2423	4S
A*2423	178T
A*2423	24A
A*2423	176K
A*2423	7Y
A*2423	168L
A*2423	13S
A*2423	128E
A*2423	25V
A*2423	126L
A*2423	26G
A*2423	133W
A*2423	2S
A*2423	125A
A*2423	14R
A*2423	167W
A*2423	27Y
A*2423	122D
A*2423	28V
A*2423	158A
A*2423	8F
A*2423	170R
A*2423	15P
A*2423	166D
A*2423	29D
A*2423	129D
A*2423	3H
A*2423	157R
A*2423	30D
A*2423	134T
A*2423	16G
A*2423	154E
A*2423	31T
A*2423	120G
A*2423	5M
A*2423	181R
A*2423	46E
A*2423	156Q
A*2423	32Q
A*2423	179L
A*2423	9S
A*2423	174N
A*2423	17R
A*2423	123Y
A*2423	33F
A*2423	135A
A*2423	34V
A*2423	130L
A*2423	18G
A*2423	141Q
A*2423	35R
A*2423	155Q
A*2423	36F
A*2423	165V
A*2423	10T
A*2423	161E
A*2423	44R
A*2423	180Q
A*2423	45M
A*2423	136A
A*2423	19E
A*2423	127K
A*2423	37D
A*2423	164C
A*2423	38S
A*2423	175G
A*2423	20P
A*2423	182T
A*2423	39D
A*2423	137D
A*2423	6R
A*2423	172L
A*2423	40A
A*2423	153A
A*2423	11S
A*2423	152V
A*2423	47P
A*2423	163T
A*2423	21R
A*2423	173E
A*2423	41A
A*2423	151H
A*2423	42S
A*2423	131R
A*2423	22F
A*2423	121K
A*2423	43Q
A*2423	162G
A*2423	114H
A*2423	138M
A*2423	110L
A*2423	144K
A*2423	66K
A*2423	169R
A*2423	106D
A*2423	143T
A*2423	84Y
A*2423	171Y
A*2423	111R
A*2423	147W
A*2423	76E
A*2423	149A
A*2423	94T
A*2423	148E
A*2423	55E
A*2423	150A
A*2423	118Y
A*2423	139A
A*2423	59Y
A*2423	160L
A*2423	71S
A*2423	124I
A*2423	65G
A*2423	140A
A*2423	116Y
A*2423	145R
A*2423	68K
A*2423	142I
A*2423	91G
A*2423	146K
A*2423	87Q
A*2423	132S
A*2423	109F
A*2423	105S
A*2423	78L
A*2423	75R
A*2423	83R
A*2423	58E
A*2423	81A
A*2423	73T
A*2423	89E
A*2423	113Y
A*2423	95L
A*2423	57P
A*2423	63E
A*2423	56G
A*2423	67V
A*2423	82L
A*2423	104G
A*2423	108R
A*2423	77N
A*2423	53E
A*2423	86N
A*2423	96Q
A*2423	61D
A*2423	80I
A*2423	92S
A*2423	115Q
A*2423	79R
A*2423	97M
A*2423	99F
A*2423	112G
A*2423	100G
A*2423	88S
A*2423	103V
A*2423	48R
A*2423	70H
A*2423	117A
A*2423	90A
A*2423	98M
A*2423	52I
A*2423	101C
A*2423	102D
A*2423	107G
A*2423	85Y
A*2423	49A
A*2423	54Q
A*2423	64T
A*2423	93H
A*2423	60W
A*2423	62E
A*2423	119D
A*2423	50P
A*2423	72Q
A*2423	69A
A*2423	74D
A*2423	51W
A*2425	181R
A*2425	59Y
A*2425	168L
A*2425	81A
A*2425	159Y
A*2425	84Y
A*2425	128E
A*2425	71S
A*2425	154E
A*2425	106D
A*2425	133W
A*2425	118Y
A*2425	129D
A*2425	78L
A*2425	157R
A*2425	73T
A*2425	167G
A*2425	76E
A*2425	158A
A*2425	110L
A*2425	122D
A*2425	116Y
A*2425	134T
A*2425	65G
A*2425	166D
A*2425	94T
A*2425	125A
A*2425	114H
A*2425	174N
A*2425	55E
A*2425	179L
A*2425	91G
A*2425	123Y
A*2425	105S
A*2425	120G
A*2425	87Q
A*2425	156Q
A*2425	109F
A*2425	135A
A*2425	68K
A*2425	155Q
A*2425	104G
A*2425	130L
A*2425	89E
A*2425	165V
A*2425	95L
A*2425	178T
A*2425	56G
A*2425	126L
A*2425	83R
A*2425	182T
A*2425	57P
A*2425	169R
A*2425	63E
A*2425	164C
A*2425	67V
A*2425	143T
A*2425	66K
A*2425	172L
A*2425	96Q
A*2425	175G
A*2425	86N
A*2425	144K
A*2425	108R
A*2425	176K
A*2425	77N
A*2425	153A
A*2425	113Y
A*2425	163T
A*2425	58E
A*2425	180Q
A*2425	75R
A*2425	136A
A*2425	82L
A*2425	177E
A*2425	53E
A*2425	152V
A*2425	99F
A*2425	173E
A*2425	100G
A*2425	137D
A*2425	61D
A*2425	151H
A*2425	80I
A*2425	131R
A*2425	97M
A*2425	162G
A*2425	115Q
A*2425	121K
A*2425	92S
A*2425	138M
A*2425	79R
A*2425	149A
A*2425	90A
A*2425	148E
A*2425	112G
A*2425	161E
A*2425	52I
A*2425	127K
A*2425	103V
A*2425	145R
A*2425	70H
A*2425	171Y
A*2425	88S
A*2425	160L
A*2425	101C
A*2425	124I
A*2425	98M
A*2425	139A
A*2425	48R
A*2425	150A
A*2425	117A
A*2425	142I
A*2425	102D
A*2425	170R
A*2425	107G
A*2425	146K
A*2425	72Q
A*2425	141Q
A*2425	85Y
A*2425	140A
A*2425	50P
A*2425	147W
A*2425	60W
A*2425	132S
A*2425	64T
A*2425	12V
A*2425	54Q
A*2425	23I
A*2425	93H
A*2425	4S
A*2425	119D
A*2425	24A
A*2425	49A
A*2425	7C
A*2425	74D
A*2425	13S
A*2425	51W
A*2425	25V
A*2425	69A
A*2425	26G
A*2425	62E
A*2425	2S
A*2425	111R
A*2425	14R
A*2425	27Y
A*2425	28V
A*2425	8F
A*2425	15P
A*2425	29D
A*2425	3H
A*2425	30D
A*2425	46E
A*2425	16G
A*2425	31T
A*2425	5M
A*2425	32Q
A*2425	9S
A*2425	17R
A*2425	33F
A*2425	34V
A*2425	18G
A*2425	35R
A*2425	43Q
A*2425	36F
A*2425	10T
A*2425	19E
A*2425	45M
A*2425	44R
A*2425	37D
A*2425	38S
A*2425	20P
A*2425	39D
A*2425	6R
A*2425	40A
A*2425	11S
A*2425	47P
A*2425	21R
A*2425	41A
A*2425	42S
A*2425	22F
A*2428	104G
A*2428	12V
A*2428	106D
A*2428	23I
A*2428	116Y
A*2428	4S
A*2428	76V
A*2428	24A
A*2428	105S
A*2428	7Y
A*2428	55E
A*2428	13S
A*2428	65G
A*2428	25V
A*2428	84Y
A*2428	26G
A*2428	94T
A*2428	2S
A*2428	114H
A*2428	14R
A*2428	110L
A*2428	27Y
A*2428	87Q
A*2428	28V
A*2428	68K
A*2428	8F
A*2428	109F
A*2428	46E
A*2428	91G
A*2428	15P
A*2428	118Y
A*2428	29D
A*2428	95L
A*2428	3H
A*2428	57P
A*2428	30D
A*2428	96Q
A*2428	16G
A*2428	86N
A*2428	31T
A*2428	63E
A*2428	5M
A*2428	71S
A*2428	32Q
A*2428	67V
A*2428	9S
A*2428	59Y
A*2428	17R
A*2428	66K
A*2428	33F
A*2428	83G
A*2428	34V
A*2428	56G
A*2428	18G
A*2428	89E
A*2428	35R
A*2428	108R
A*2428	44R
A*2428	77D
A*2428	45M
A*2428	58E
A*2428	36F
A*2428	75R
A*2428	10T
A*2428	113Y
A*2428	19E
A*2428	82R
A*2428	37D
A*2428	53E
A*2428	38S
A*2428	97M
A*2428	42S
A*2428	78L
A*2428	20P
A*2428	115Q
A*2428	39D
A*2428	50P
A*2428	6R
A*2428	90A
A*2428	40A
A*2428	52I
A*2428	11S
A*2428	61D
A*2428	47P
A*2428	80T
A*2428	21R
A*2428	81L
A*2428	41A
A*2428	72Q
A*2428	22F
A*2428	73T
A*2428	43Q
A*2428	79G
A*2428	179L
A*2428	92S
A*2428	157R
A*2428	101C
A*2428	174N
A*2428	112G
A*2428	129D
A*2428	70H
A*2428	166D
A*2428	103V
A*2428	123Y
A*2428	117A
A*2428	169R
A*2428	48R
A*2428	143T
A*2428	88S
A*2428	144K
A*2428	98M
A*2428	128E
A*2428	102D
A*2428	133W
A*2428	107G
A*2428	159Y
A*2428	64T
A*2428	168L
A*2428	60W
A*2428	122D
A*2428	100G
A*2428	134T
A*2428	99F
A*2428	158A
A*2428	54Q
A*2428	167G
A*2428	85Y
A*2428	125A
A*2428	93H
A*2428	120G
A*2428	119D
A*2428	156Q
A*2428	49A
A*2428	135A
A*2428	51W
A*2428	155Q
A*2428	74H
A*2428	165V
A*2428	111R
A*2428	130L
A*2428	69A
A*2428	163T
A*2428	62E
A*2428	178T
A*2428	145R
A*2428	176K
A*2428	181R
A*2428	175G
A*2428	126L
A*2428	152V
A*2428	180Q
A*2428	154E
A*2428	182T
A*2428	136A
A*2428	177E
A*2428	164C
A*2428	173E
A*2428	153A
A*2428	131R
A*2428	137D
A*2428	162G
A*2428	151H
A*2428	138M
A*2428	172L
A*2428	121K
A*2428	146K
A*2428	161E
A*2428	160L
A*2428	127K
A*2428	142I
A*2428	171Y
A*2428	150A
A*2428	124I
A*2428	139A
A*2428	170R
A*2428	148E
A*2428	149A
A*2428	140A
A*2428	147W
A*2428	132S
A*2428	141Q
A*2432	46E
A*2432	133W
A*2432	12V
A*2432	144K
A*2432	23I
A*2432	145R
A*2432	4S
A*2432	134T
A*2432	24A
A*2432	169R
A*2432	7Y
A*2432	143T
A*2432	13S
A*2432	128E
A*2432	25V
A*2432	159Y
A*2432	47P
A*2432	168L
A*2432	26G
A*2432	158A
A*2432	2S
A*2432	167G
A*2432	14R
A*2432	125A
A*2432	27Y
A*2432	122D
A*2432	28V
A*2432	166D
A*2432	8F
A*2432	156Q
A*2432	15P
A*2432	157R
A*2432	29D
A*2432	129D
A*2432	3H
A*2432	120G
A*2432	30D
A*2432	165V
A*2432	16G
A*2432	135A
A*2432	31T
A*2432	155Q
A*2432	5M
A*2432	130L
A*2432	32Q
A*2432	175G
A*2432	9S
A*2432	174N
A*2432	17R
A*2432	178T
A*2432	44R
A*2432	176K
A*2432	33F
A*2432	152V
A*2432	34V
A*2432	181R
A*2432	18G
A*2432	179L
A*2432	45M
A*2432	131R
A*2432	35R
A*2432	142I
A*2432	36F
A*2432	126L
A*2432	10T
A*2432	136A
A*2432	19E
A*2432	154E
A*2432	37D
A*2432	123Y
A*2432	38S
A*2432	182T
A*2432	20P
A*2432	146K
A*2432	39D
A*2432	180Q
A*2432	6R
A*2432	177E
A*2432	40A
A*2432	173E
A*2432	11S
A*2432	160L
A*2432	21R
A*2432	153A
A*2432	41A
A*2432	164C
A*2432	42S
A*2432	172L
A*2432	22F
A*2432	163T
A*2432	43Q
A*2432	137D
A*2432	86N
A*2432	138M
A*2432	105S
A*2432	151H
A*2432	106D
A*2432	121K
A*2432	96Q
A*2432	162G
A*2432	72Q
A*2432	161E
A*2432	50P
A*2432	171Y
A*2432	76E
A*2432	127K
A*2432	111R
A*2432	124I
A*2432	94T
A*2432	150A
A*2432	84Y
A*2432	139A
A*2432	68K
A*2432	149A
A*2432	110L
A*2432	148E
A*2432	114H
A*2432	147W
A*2432	65G
A*2432	140A
A*2432	109F
A*2432	141Q
A*2432	87Q
A*2432	170R
A*2432	55E
A*2432	132S
A*2432	91G
A*2432	71S
A*2432	116Y
A*2432	67V
A*2432	56G
A*2432	118Y
A*2432	95L
A*2432	59Y
A*2432	66K
A*2432	83R
A*2432	89E
A*2432	58E
A*2432	75R
A*2432	63E
A*2432	57P
A*2432	113Y
A*2432	77S
A*2432	108R
A*2432	82L
A*2432	53E
A*2432	104G
A*2432	101C
A*2432	81A
A*2432	79R
A*2432	69A
A*2432	73T
A*2432	78L
A*2432	61D
A*2432	80I
A*2432	92S
A*2432	117A
A*2432	70H
A*2432	97M
A*2432	48R
A*2432	112G
A*2432	115Q
A*2432	103V
A*2432	88S
A*2432	107G
A*2432	102D
A*2432	98M
A*2432	74D
A*2432	52I
A*2432	90A
A*2432	100G
A*2432	99F
A*2432	51W
A*2432	93H
A*2432	85Y
A*2432	119D
A*2432	54Q
A*2432	62E
A*2432	60W
A*2432	64T
A*2432	49A
A*2433	144K
A*2433	76E
A*2433	142I
A*2433	68K
A*2433	146K
A*2433	106D
A*2433	145R
A*2433	72Q
A*2433	143T
A*2433	50P
A*2433	169R
A*2433	84Y
A*2433	195S
A*2433	87Q
A*2433	128E
A*2433	110L
A*2433	159Y
A*2433	114H
A*2433	183D
A*2433	94T
A*2433	168L
A*2433	109F
A*2433	197H
A*2433	91G
A*2433	125A
A*2433	55E
A*2433	133W
A*2433	65G
A*2433	167W
A*2433	116Y
A*2433	184A
A*2433	66K
A*2433	158A
A*2433	105S
A*2433	186K
A*2433	56G
A*2433	185P
A*2433	89E
A*2433	122D
A*2433	59Y
A*2433	198E
A*2433	95L
A*2433	157R
A*2433	71S
A*2433	134T
A*2433	83R
A*2433	166E
A*2433	118Y
A*2433	199A
A*2433	67V
A*2433	129D
A*2433	75R
A*2433	120G
A*2433	57P
A*2433	193A
A*2433	113Y
A*2433	188H
A*2433	63E
A*2433	156Q
A*2433	82L
A*2433	192H
A*2433	77N
A*2433	165V
A*2433	108R
A*2433	207S
A*2433	53E
A*2433	155Q
A*2433	58E
A*2433	187T
A*2433	48R
A*2433	130L
A*2433	86N
A*2433	191H
A*2433	117A
A*2433	135A
A*2433	73T
A*2433	194V
A*2433	81A
A*2433	189M
A*2433	74D
A*2433	178T
A*2433	96Q
A*2433	179L
A*2433	104G
A*2433	181R
A*2433	80I
A*2433	126L
A*2433	61D
A*2433	172L
A*2433	78L
A*2433	174N
A*2433	92S
A*2433	175G
A*2433	51W
A*2433	176K
A*2433	97M
A*2433	182T
A*2433	79R
A*2433	123Y
A*2433	112G
A*2433	180Q
A*2433	115Q
A*2433	136A
A*2433	103V
A*2433	173E
A*2433	102D
A*2433	153A
A*2433	107G
A*2433	177E
A*2433	98M
A*2433	190T
A*2433	88S
A*2433	154E
A*2433	70H
A*2433	164C
A*2433	100G
A*2433	137D
A*2433	69A
A*2433	138M
A*2433	99F
A*2433	152V
A*2433	93H
A*2433	245A
A*2433	62E
A*2433	163T
A*2433	111R
A*2433	121K
A*2433	90A
A*2433	219R
A*2433	85Y
A*2433	162G
A*2433	101C
A*2433	151H
A*2433	52I
A*2433	196D
A*2433	119D
A*2433	147W
A*2433	54Q
A*2433	124I
A*2433	64T
A*2433	171Y
A*2433	60W
A*2433	150A
A*2433	49A
A*2433	131R
A*2433	12V
A*2433	161E
A*2433	47P
A*2433	127K
A*2433	23I
A*2433	139A
A*2433	4S
A*2433	246A
A*2433	24A
A*2433	248V
A*2433	7Y
A*2433	253Q
A*2433	13S
A*2433	261V
A*2433	25V
A*2433	267P
A*2433	26G
A*2433	141Q
A*2433	2S
A*2433	132S
A*2433	14R
A*2433	148E
A*2433	27Y
A*2433	149A
A*2433	28V
A*2433	160L
A*2433	8F
A*2433	170R
A*2433	15P
A*2433	140A
A*2433	29D
A*2433	270L
A*2433	3H
A*2433	268K
A*2433	30D
A*2433	273R
A*2433	16G
A*2433	31T
A*2433	5M
A*2433	32Q
A*2433	9S
A*2433	17R
A*2433	33F
A*2433	34V
A*2433	46E
A*2433	18G
A*2433	35R
A*2433	36F
A*2433	10T
A*2433	19E
A*2433	37D
A*2433	38S
A*2433	44R
A*2433	45M
A*2433	20P
A*2433	39D
A*2433	6R
A*2433	40A
A*2433	11S
A*2433	21R
A*2433	41A
A*2433	42S
A*2433	22F
A*2433	43Q
A*2501	87Q
A*2501	12V
A*2501	74D
A*2501	23I
A*2501	106D
A*2501	4S
A*2501	51W
A*2501	24A
A*2501	50P
A*2501	1G
A*2501	72Q
A*2501	7Y
A*2501	110L
A*2501	13S
A*2501	76E
A*2501	25V
A*2501	84Y
A*2501	26G
A*2501	94T
A*2501	2S
A*2501	114Q
A*2501	14R
A*2501	91G
A*2501	27Y
A*2501	55E
A*2501	47P
A*2501	109F
A*2501	28V
A*2501	65R
A*2501	8F
A*2501	68K
A*2501	15P
A*2501	116D
A*2501	29D
A*2501	89E
A*2501	3H
A*2501	59Y
A*2501	30D
A*2501	105P
A*2501	16G
A*2501	95I
A*2501	31T
A*2501	71S
A*2501	5M
A*2501	83R
A*2501	32Q
A*2501	118Y
A*2501	9Y
A*2501	113Y
A*2501	17R
A*2501	82L
A*2501	33F
A*2501	57P
A*2501	43Q
A*2501	66N
A*2501	46E
A*2501	60W
A*2501	34V
A*2501	56G
A*2501	18G
A*2501	63N
A*2501	35R
A*2501	108R
A*2501	36F
A*2501	67V
A*2501	10T
A*2501	77S
A*2501	19E
A*2501	75R
A*2501	37D
A*2501	53E
A*2501	44R
A*2501	58E
A*2501	45M
A*2501	69A
A*2501	38S
A*2501	62R
A*2501	20P
A*2501	86N
A*2501	39D
A*2501	96Q
A*2501	6R
A*2501	80I
A*2501	40A
A*2501	104G
A*2501	11S
A*2501	111R
A*2501	21R
A*2501	92S
A*2501	41A
A*2501	78L
A*2501	48R
A*2501	61D
A*2501	42S
A*2501	81A
A*2501	22F
A*2501	73T
A*2501	268K
A*2501	115Q
A*2501	273R
A*2501	102D
A*2501	270L
A*2501	107G
A*2501	276P
A*2501	79R
A*2501	275E
A*2501	103V
A*2501	125A
A*2501	97R
A*2501	143T
A*2501	98M
A*2501	169R
A*2501	112G
A*2501	144Q
A*2501	70H
A*2501	146K
A*2501	88S
A*2501	142I
A*2501	117A
A*2501	145R
A*2501	90D
A*2501	159Y
A*2501	119D
A*2501	183D
A*2501	99Y
A*2501	128E
A*2501	100G
A*2501	168L
A*2501	101C
A*2501	167W
A*2501	85Y
A*2501	184A
A*2501	52I
A*2501	186K
A*2501	49A
A*2501	133W
A*2501	93H
A*2501	197H
A*2501	54Q
A*2501	122D
A*2501	120G
A*2501	185P
A*2501	64T
A*2501	158A
A*2501	165V
A*2501	199A
A*2501	188H
A*2501	134T
A*2501	157R
A*2501	198E
A*2501	129D
A*2501	166E
A*2501	155Q
A*2501	130L
A*2501	191H
A*2501	207S
A*2501	156W
A*2501	192H
A*2501	135A
A*2501	194V
A*2501	193A
A*2501	189M
A*2501	187T
A*2501	246S
A*2501	138M
A*2501	195S
A*2501	126L
A*2501	190T
A*2501	196D
A*2501	178T
A*2501	147W
A*2501	175G
A*2501	136A
A*2501	253Q
A*2501	123Y
A*2501	182T
A*2501	176K
A*2501	173E
A*2501	181R
A*2501	153A
A*2501	180Q
A*2501	174N
A*2501	177E
A*2501	179L
A*2501	154E
A*2501	160L
A*2501	164C
A*2501	121K
A*2501	152E
A*2501	163R
A*2501	219R
A*2501	162G
A*2501	137D
A*2501	151H
A*2501	245A
A*2501	141Q
A*2501	124I
A*2501	172L
A*2501	150A
A*2501	131R
A*2501	161E
A*2501	139A
A*2501	171Y
A*2501	132S
A*2501	127N
A*2501	248V
A*2501	261V
A*2501	267P
A*2501	148E
A*2501	149T
A*2501	170R
A*2501	140A
A*2502	50P
A*2502	196D
A*2502	62R
A*2502	188H
A*2502	69A
A*2502	165V
A*2502	111R
A*2502	186K
A*2502	72Q
A*2502	169R
A*2502	106D
A*2502	147W
A*2502	51W
A*2502	142I
A*2502	74D
A*2502	159Y
A*2502	76E
A*2502	144Q
A*2502	84Y
A*2502	145R
A*2502	55E
A*2502	146K
A*2502	65R
A*2502	128E
A*2502	91G
A*2502	183D
A*2502	114Q
A*2502	168L
A*2502	110L
A*2502	143T
A*2502	109F
A*2502	170R
A*2502	94T
A*2502	185P
A*2502	105P
A*2502	133W
A*2502	87Q
A*2502	197H
A*2502	82L
A*2502	122D
A*2502	116D
A*2502	158A
A*2502	118Y
A*2502	184A
A*2502	68K
A*2502	167W
A*2502	71S
A*2502	155Q
A*2502	83R
A*2502	130L
A*2502	95I
A*2502	166E
A*2502	89E
A*2502	191H
A*2502	59Y
A*2502	134T
A*2502	53E
A*2502	125A
A*2502	63N
A*2502	129D
A*2502	56G
A*2502	198E
A*2502	58E
A*2502	157R
A*2502	66N
A*2502	207S
A*2502	75R
A*2502	199A
A*2502	113Y
A*2502	156W
A*2502	108R
A*2502	135A
A*2502	67V
A*2502	189M
A*2502	57P
A*2502	192H
A*2502	77S
A*2502	194V
A*2502	92S
A*2502	187T
A*2502	96Q
A*2502	193A
A*2502	104G
A*2502	195S
A*2502	102D
A*2502	121K
A*2502	107G
A*2502	153A
A*2502	86N
A*2502	141Q
A*2502	81A
A*2502	136A
A*2502	73T
A*2502	173E
A*2502	78L
A*2502	178T
A*2502	61D
A*2502	132S
A*2502	103V
A*2502	253Q
A*2502	79R
A*2502	181R
A*2502	80I
A*2502	123Y
A*2502	98M
A*2502	180Q
A*2502	97R
A*2502	182T
A*2502	115Q
A*2502	176K
A*2502	88S
A*2502	126L
A*2502	70Q
A*2502	175G
A*2502	112G
A*2502	177E
A*2502	90D
A*2502	164C
A*2502	52I
A*2502	174N
A*2502	117A
A*2502	179L
A*2502	49A
A*2502	154E
A*2502	60W
A*2502	152E
A*2502	119D
A*2502	163R
A*2502	101C
A*2502	162G
A*2502	100G
A*2502	190T
A*2502	85Y
A*2502	137D
A*2502	99Y
A*2502	219R
A*2502	120G
A*2502	151H
A*2502	93H
A*2502	245A
A*2502	64T
A*2502	160L
A*2502	54Q
A*2502	138M
A*2502	12V
A*2502	172L
A*2502	23I
A*2502	139A
A*2502	4S
A*2502	161E
A*2502	24A
A*2502	131R
A*2502	7Y
A*2502	171Y
A*2502	13S
A*2502	248V
A*2502	1G
A*2502	127N
A*2502	25V
A*2502	261V
A*2502	26G
A*2502	267P
A*2502	2S
A*2502	148E
A*2502	14R
A*2502	149T
A*2502	27Y
A*2502	150A
A*2502	28V
A*2502	124I
A*2502	8F
A*2502	140A
A*2502	15P
A*2502	246S
A*2502	29D
A*2502	268K
A*2502	3H
A*2502	275E
A*2502	47P
A*2502	273R
A*2502	30D
A*2502	276P
A*2502	16G
A*2502	270L
A*2502	31T
A*2502	5M
A*2502	32Q
A*2502	9Y
A*2502	46E
A*2502	17R
A*2502	33F
A*2502	34V
A*2502	18G
A*2502	35R
A*2502	36F
A*2502	10T
A*2502	19E
A*2502	37D
A*2502	38S
A*2502	20P
A*2502	39D
A*2502	6R
A*2502	44R
A*2502	45M
A*2502	40A
A*2502	11S
A*2502	21R
A*2502	48R
A*2502	41A
A*2502	42S
A*2502	22F
A*2502	43Q
A*2503	82L
A*2503	12V
A*2503	62R
A*2503	23I
A*2503	69A
A*2503	4S
A*2503	111R
A*2503	24A
A*2503	72Q
A*2503	7Y
A*2503	74D
A*2503	13S
A*2503	51W
A*2503	25V
A*2503	106D
A*2503	26G
A*2503	55E
A*2503	14R
A*2503	84Y
A*2503	2S
A*2503	65R
A*2503	27Y
A*2503	91G
A*2503	28V
A*2503	76E
A*2503	8F
A*2503	50P
A*2503	15P
A*2503	109F
A*2503	29D
A*2503	94T
A*2503	47P
A*2503	114Q
A*2503	3H
A*2503	110L
A*2503	30D
A*2503	53E
A*2503	16G
A*2503	118Y
A*2503	31T
A*2503	87Q
A*2503	5M
A*2503	58E
A*2503	32Q
A*2503	116D
A*2503	9F
A*2503	105P
A*2503	17R
A*2503	71S
A*2503	33F
A*2503	68K
A*2503	34V
A*2503	83R
A*2503	18G
A*2503	95I
A*2503	35R
A*2503	89E
A*2503	36F
A*2503	59Y
A*2503	46E
A*2503	56G
A*2503	10T
A*2503	66N
A*2503	19E
A*2503	63N
A*2503	37D
A*2503	113Y
A*2503	38S
A*2503	77S
A*2503	41A
A*2503	75R
A*2503	20P
A*2503	67V
A*2503	39D
A*2503	108R
A*2503	6R
A*2503	57P
A*2503	44R
A*2503	98M
A*2503	45M
A*2503	60W
A*2503	40A
A*2503	86N
A*2503	11S
A*2503	73T
A*2503	21R
A*2503	49A
A*2503	48R
A*2503	96Q
A*2503	42S
A*2503	81A
A*2503	22F
A*2503	104G
A*2503	43Q
A*2503	61D
A*2503	155Q
A*2503	78L
A*2503	159Y
A*2503	70H
A*2503	145R
A*2503	88S
A*2503	132S
A*2503	97R
A*2503	141Q
A*2503	92S
A*2503	122D
A*2503	80I
A*2503	130L
A*2503	115Q
A*2503	142I
A*2503	103V
A*2503	146K
A*2503	79R
A*2503	144Q
A*2503	112G
A*2503	128E
A*2503	102D
A*2503	143T
A*2503	117A
A*2503	147W
A*2503	107G
A*2503	168L
A*2503	85Y
A*2503	169R
A*2503	119D
A*2503	133W
A*2503	100G
A*2503	158A
A*2503	90D
A*2503	167W
A*2503	101C
A*2503	134T
A*2503	99Y
A*2503	129D
A*2503	93H
A*2503	157R
A*2503	120G
A*2503	166E
A*2503	52I
A*2503	125A
A*2503	64T
A*2503	156W
A*2503	54Q
A*2503	135A
A*2503	177E
A*2503	162G
A*2503	180Q
A*2503	178T
A*2503	165V
A*2503	160L
A*2503	154E
A*2503	126L
A*2503	175G
A*2503	164C
A*2503	179L
A*2503	182T
A*2503	176K
A*2503	123Y
A*2503	181R
A*2503	174N
A*2503	153A
A*2503	136A
A*2503	152E
A*2503	151H
A*2503	173E
A*2503	163R
A*2503	137D
A*2503	170R
A*2503	139A
A*2503	138M
A*2503	148E
A*2503	121K
A*2503	171Y
A*2503	172L
A*2503	131R
A*2503	161E
A*2503	127N
A*2503	124I
A*2503	150A
A*2503	140A
A*2503	149T
A*2601	270L
A*2601	128E
A*2601	273R
A*2601	158A
A*2601	276P
A*2601	185P
A*2601	275E
A*2601	141Q
A*2601	62R
A*2601	196D
A*2601	72Q
A*2601	132S
A*2601	60W
A*2601	191H
A*2601	65R
A*2601	160L
A*2601	91G
A*2601	183D
A*2601	69A
A*2601	168L
A*2601	58E
A*2601	143T
A*2601	55E
A*2601	144Q
A*2601	74D
A*2601	169R
A*2601	51W
A*2601	142I
A*2601	111R
A*2601	147W
A*2601	53E
A*2601	146K
A*2601	49A
A*2601	145R
A*2601	106D
A*2601	167W
A*2601	50P
A*2601	159Y
A*2601	76A
A*2601	197H
A*2601	94T
A*2601	184A
A*2601	109F
A*2601	133W
A*2601	84Y
A*2601	122D
A*2601	110L
A*2601	134T
A*2601	114Q
A*2601	198E
A*2601	87Q
A*2601	129D
A*2601	71S
A*2601	186K
A*2601	105P
A*2601	157R
A*2601	116D
A*2601	125A
A*2601	68K
A*2601	199A
A*2601	83G
A*2601	189M
A*2601	95I
A*2601	166E
A*2601	63N
A*2601	156W
A*2601	77N
A*2601	207S
A*2601	118Y
A*2601	267P
A*2601	89E
A*2601	187T
A*2601	66N
A*2601	192H
A*2601	59Y
A*2601	135A
A*2601	67V
A*2601	194V
A*2601	56G
A*2601	193A
A*2601	57P
A*2601	164C
A*2601	113Y
A*2601	154E
A*2601	108R
A*2601	155Q
A*2601	75R
A*2601	151H
A*2601	88S
A*2601	165V
A*2601	86N
A*2601	130L
A*2601	61D
A*2601	126L
A*2601	70H
A*2601	188H
A*2601	82R
A*2601	175G
A*2601	104G
A*2601	170R
A*2601	96Q
A*2601	178T
A*2601	81L
A*2601	195S
A*2601	78L
A*2601	253Q
A*2601	73T
A*2601	148E
A*2601	80T
A*2601	176K
A*2601	92S
A*2601	181R
A*2601	97R
A*2601	123Y
A*2601	115Q
A*2601	182T
A*2601	79G
A*2601	179L
A*2601	103V
A*2601	174N
A*2601	112G
A*2601	152E
A*2601	102D
A*2601	180Q
A*2601	117A
A*2601	136A
A*2601	85Y
A*2601	177E
A*2601	98M
A*2601	190T
A*2601	107G
A*2601	153A
A*2601	64T
A*2601	163R
A*2601	90D
A*2601	137D
A*2601	99Y
A*2601	173E
A*2601	101C
A*2601	219R
A*2601	119D
A*2601	245A
A*2601	100G
A*2601	138M
A*2601	120G
A*2601	172L
A*2601	54Q
A*2601	121K
A*2601	93H
A*2601	162G
A*2601	52I
A*2601	150A
A*2601	12V
A*2601	248V
A*2601	23I
A*2601	127N
A*2601	4S
A*2601	161E
A*2601	24A
A*2601	131R
A*2601	7Y
A*2601	261V
A*2601	13S
A*2601	140A
A*2601	25V
A*2601	268K
A*2601	1G
A*2601	124I
A*2601	26G
A*2601	139A
A*2601	14R
A*2601	171Y
A*2601	2S
A*2601	149T
A*2601	27Y
A*2601	246S
A*2601	28V
A*2601	8F
A*2601	15P
A*2601	47P
A*2601	29D
A*2601	3H
A*2601	30D
A*2601	16G
A*2601	31T
A*2601	5M
A*2601	32Q
A*2601	9Y
A*2601	17R
A*2601	33F
A*2601	34V
A*2601	18G
A*2601	35R
A*2601	36F
A*2601	10T
A*2601	46E
A*2601	19E
A*2601	37D
A*2601	38S
A*2601	44R
A*2601	45M
A*2601	20P
A*2601	39D
A*2601	6R
A*2601	40A
A*2601	11S
A*2601	48R
A*2601	21R
A*2601	41A
A*2601	42S
A*2601	22F
A*2601	43Q
A*2602	275E
A*2602	12V
A*2602	276P
A*2602	23I
A*2602	270L
A*2602	4S
A*2602	273R
A*2602	24A
A*2602	183D
A*2602	7Y
A*2602	196D
A*2602	13S
A*2602	170R
A*2602	25V
A*2602	143T
A*2602	26G
A*2602	160L
A*2602	1G
A*2602	168L
A*2602	14R
A*2602	167W
A*2602	27Y
A*2602	132S
A*2602	2S
A*2602	148E
A*2602	28V
A*2602	141Q
A*2602	8F
A*2602	169R
A*2602	44R
A*2602	144Q
A*2602	47P
A*2602	142I
A*2602	15P
A*2602	147W
A*2602	29D
A*2602	146K
A*2602	45M
A*2602	145R
A*2602	3H
A*2602	128E
A*2602	30D
A*2602	197H
A*2602	16G
A*2602	159Y
A*2602	31T
A*2602	184A
A*2602	5M
A*2602	133W
A*2602	43Q
A*2602	186K
A*2602	32Q
A*2602	158A
A*2602	9Y
A*2602	189M
A*2602	17R
A*2602	122D
A*2602	33F
A*2602	185P
A*2602	34V
A*2602	198E
A*2602	18G
A*2602	157R
A*2602	35R
A*2602	134T
A*2602	36F
A*2602	129D
A*2602	10T
A*2602	156W
A*2602	19E
A*2602	166E
A*2602	46E
A*2602	199A
A*2602	37D
A*2602	125A
A*2602	38S
A*2602	135A
A*2602	20P
A*2602	207S
A*2602	39D
A*2602	187T
A*2602	6R
A*2602	267P
A*2602	40A
A*2602	192H
A*2602	11S
A*2602	194V
A*2602	48R
A*2602	193A
A*2602	21R
A*2602	188H
A*2602	41A
A*2602	155Q
A*2602	42S
A*2602	165V
A*2602	22F
A*2602	191H
A*2602	69A
A*2602	130L
A*2602	74D
A*2602	178T
A*2602	51W
A*2602	181R
A*2602	111R
A*2602	123Y
A*2602	62R
A*2602	195S
A*2602	49A
A*2602	253Q
A*2602	60W
A*2602	126L
A*2602	106D
A*2602	174N
A*2602	72Q
A*2602	182T
A*2602	76A
A*2602	175G
A*2602	94T
A*2602	176K
A*2602	109F
A*2602	179L
A*2602	110L
A*2602	180Q
A*2602	50P
A*2602	173E
A*2602	114Q
A*2602	136A
A*2602	84Y
A*2602	177E
A*2602	71S
A*2602	164C
A*2602	87Q
A*2602	154E
A*2602	77N
A*2602	153A
A*2602	91G
A*2602	219R
A*2602	65R
A*2602	190T
A*2602	55E
A*2602	152E
A*2602	116N
A*2602	163R
A*2602	95I
A*2602	137D
A*2602	83G
A*2602	245A
A*2602	68K
A*2602	248V
A*2602	105P
A*2602	127N
A*2602	89E
A*2602	161E
A*2602	67V
A*2602	261V
A*2602	108R
A*2602	140A
A*2602	118Y
A*2602	162G
A*2602	57P
A*2602	121K
A*2602	63N
A*2602	172L
A*2602	75R
A*2602	138M
A*2602	59Y
A*2602	131R
A*2602	66N
A*2602	151H
A*2602	113Y
A*2602	268K
A*2602	56G
A*2602	139A
A*2602	115Q
A*2602	171Y
A*2602	58E
A*2602	149T
A*2602	64T
A*2602	150A
A*2602	82R
A*2602	246S
A*2602	86N
A*2602	124I
A*2602	78L
A*2602	81L
A*2602	104G
A*2602	96Q
A*2602	53E
A*2602	61D
A*2602	73T
A*2602	112G
A*2602	92S
A*2602	97R
A*2602	80T
A*2602	79G
A*2602	103V
A*2602	70H
A*2602	99Y
A*2602	88S
A*2602	98M
A*2602	107G
A*2602	102D
A*2602	90D
A*2602	117A
A*2602	101C
A*2602	100G
A*2602	85Y
A*2602	119D
A*2602	54Q
A*2602	120G
A*2602	93H
A*2602	52I
A*2603	189M
A*2603	77D
A*2603	169R
A*2603	109F
A*2603	132S
A*2603	64T
A*2603	148E
A*2603	94T
A*2603	141Q
A*2603	111R
A*2603	196D
A*2603	49A
A*2603	146K
A*2603	60W
A*2603	147W
A*2603	69A
A*2603	144Q
A*2603	62R
A*2603	142I
A*2603	106D
A*2603	170R
A*2603	74H
A*2603	160L
A*2603	110L
A*2603	184A
A*2603	72Q
A*2603	183D
A*2603	51W
A*2603	143T
A*2603	76V
A*2603	168L
A*2603	50P
A*2603	145R
A*2603	84Y
A*2603	128E
A*2603	114Q
A*2603	197H
A*2603	83G
A*2603	133W
A*2603	87Q
A*2603	159Y
A*2603	68K
A*2603	171Y
A*2603	65R
A*2603	167W
A*2603	91G
A*2603	185P
A*2603	95I
A*2603	122D
A*2603	55E
A*2603	198E
A*2603	105P
A*2603	158A
A*2603	116D
A*2603	157R
A*2603	67V
A*2603	134T
A*2603	71S
A*2603	129D
A*2603	89E
A*2603	135A
A*2603	108R
A*2603	186K
A*2603	75R
A*2603	267P
A*2603	118Y
A*2603	156W
A*2603	63N
A*2603	187T
A*2603	57P
A*2603	166E
A*2603	56G
A*2603	199A
A*2603	66N
A*2603	125A
A*2603	113Y
A*2603	193A
A*2603	59Y
A*2603	192H
A*2603	58E
A*2603	207S
A*2603	82R
A*2603	194V
A*2603	112G
A*2603	253Q
A*2603	78L
A*2603	155Q
A*2603	81L
A*2603	165V
A*2603	86N
A*2603	123Y
A*2603	96Q
A*2603	181R
A*2603	53E
A*2603	173E
A*2603	104G
A*2603	178T
A*2603	73T
A*2603	140A
A*2603	61D
A*2603	195S
A*2603	92S
A*2603	191H
A*2603	97R
A*2603	130L
A*2603	103V
A*2603	174N
A*2603	79G
A*2603	179L
A*2603	80T
A*2603	182T
A*2603	107G
A*2603	175G
A*2603	117A
A*2603	176K
A*2603	88S
A*2603	126L
A*2603	119D
A*2603	188H
A*2603	54Q
A*2603	177E
A*2603	115Q
A*2603	136A
A*2603	102D
A*2603	164C
A*2603	98M
A*2603	153A
A*2603	100G
A*2603	154E
A*2603	70H
A*2603	180Q
A*2603	90D
A*2603	163R
A*2603	101C
A*2603	152E
A*2603	120G
A*2603	245A
A*2603	99Y
A*2603	190T
A*2603	121K
A*2603	219R
A*2603	93H
A*2603	137D
A*2603	52I
A*2603	162G
A*2603	85Y
A*2603	138M
A*2603	273R
A*2603	246S
A*2603	275E
A*2603	172L
A*2603	276P
A*2603	151H
A*2603	12V
A*2603	131R
A*2603	44R
A*2603	149T
A*2603	23I
A*2603	268K
A*2603	4S
A*2603	261V
A*2603	24A
A*2603	270L
A*2603	7Y
A*2603	248V
A*2603	13S
A*2603	161E
A*2603	25V
A*2603	127N
A*2603	26G
A*2603	150A
A*2603	1G
A*2603	124I
A*2603	14R
A*2603	139A
A*2603	2S
A*2603	27Y
A*2603	28V
A*2603	8F
A*2603	15P
A*2603	29D
A*2603	3H
A*2603	30D
A*2603	16G
A*2603	31T
A*2603	47P
A*2603	5M
A*2603	32Q
A*2603	9Y
A*2603	17R
A*2603	33F
A*2603	34V
A*2603	18G
A*2603	35R
A*2603	46E
A*2603	36F
A*2603	10T
A*2603	19E
A*2603	42S
A*2603	37D
A*2603	38S
A*2603	20P
A*2603	39D
A*2603	6R
A*2603	40A
A*2603	11S
A*2603	48R
A*2603	21R
A*2603	41A
A*2603	22F
A*2603	45M
A*2603	43Q
A*2605	146K
A*2605	12V
A*2605	148E
A*2605	23I
A*2605	184A
A*2605	4S
A*2605	147W
A*2605	24A
A*2605	141Q
A*2605	7Y
A*2605	140A
A*2605	13S
A*2605	160L
A*2605	25V
A*2605	142I
A*2605	26G
A*2605	170R
A*2605	14R
A*2605	132S
A*2605	27Y
A*2605	144Q
A*2605	2S
A*2605	196D
A*2605	1G
A*2605	169R
A*2605	28V
A*2605	143T
A*2605	8F
A*2605	145R
A*2605	15P
A*2605	183D
A*2605	29D
A*2605	128E
A*2605	3H
A*2605	168L
A*2605	30D
A*2605	133W
A*2605	16G
A*2605	197H
A*2605	47P
A*2605	159Y
A*2605	31T
A*2605	135A
A*2605	5M
A*2605	267P
A*2605	32Q
A*2605	185P
A*2605	9Y
A*2605	167W
A*2605	17R
A*2605	122D
A*2605	46E
A*2605	158A
A*2605	33F
A*2605	129D
A*2605	34V
A*2605	198E
A*2605	18G
A*2605	187T
A*2605	35R
A*2605	157R
A*2605	36F
A*2605	134T
A*2605	10T
A*2605	199A
A*2605	19E
A*2605	166E
A*2605	37D
A*2605	193A
A*2605	38S
A*2605	186K
A*2605	20P
A*2605	125A
A*2605	41A
A*2605	156W
A*2605	48R
A*2605	192H
A*2605	39D
A*2605	194V
A*2605	6R
A*2605	207S
A*2605	40A
A*2605	189M
A*2605	11S
A*2605	174N
A*2605	21R
A*2605	155Q
A*2605	42S
A*2605	126L
A*2605	44R
A*2605	182T
A*2605	45M
A*2605	179L
A*2605	22F
A*2605	165V
A*2605	43Q
A*2605	176K
A*2605	64T
A*2605	191H
A*2605	111R
A*2605	130L
A*2605	110L
A*2605	175G
A*2605	49A
A*2605	161E
A*2605	60W
A*2605	195S
A*2605	106D
A*2605	177E
A*2605	62R
A*2605	181R
A*2605	69A
A*2605	164C
A*2605	74D
A*2605	123Y
A*2605	72Q
A*2605	153A
A*2605	51W
A*2605	136A
A*2605	117A
A*2605	178T
A*2605	76E
A*2605	253Q
A*2605	114Q
A*2605	245A
A*2605	84Y
A*2605	180Q
A*2605	50P
A*2605	154E
A*2605	109F
A*2605	188H
A*2605	95I
A*2605	190T
A*2605	65R
A*2605	219R
A*2605	67V
A*2605	152E
A*2605	94T
A*2605	163R
A*2605	91G
A*2605	137D
A*2605	87Q
A*2605	246S
A*2605	55E
A*2605	149T
A*2605	108R
A*2605	173E
A*2605	105P
A*2605	162G
A*2605	116D
A*2605	138M
A*2605	57P
A*2605	131R
A*2605	63N
A*2605	151H
A*2605	75R
A*2605	172L
A*2605	83G
A*2605	268K
A*2605	120G
A*2605	270L
A*2605	68K
A*2605	124I
A*2605	119D
A*2605	127N
A*2605	66N
A*2605	248V
A*2605	118Y
A*2605	171Y
A*2605	71S
A*2605	261V
A*2605	89E
A*2605	139A
A*2605	59Y
A*2605	150A
A*2605	56G
A*2605	275E
A*2605	113Y
A*2605	276P
A*2605	58E
A*2605	273R
A*2605	54Q
A*2605	77N
A*2605	86N
A*2605	82R
A*2605	53E
A*2605	104G
A*2605	96Q
A*2605	61D
A*2605	78L
A*2605	81L
A*2605	73T
A*2605	97R
A*2605	103V
A*2605	92S
A*2605	79G
A*2605	80T
A*2605	100G
A*2605	88S
A*2605	102D
A*2605	115Q
A*2605	98M
A*2605	112G
A*2605	70H
A*2605	107G
A*2605	101C
A*2605	90D
A*2605	93H
A*2605	52I
A*2605	121K
A*2605	99Y
A*2605	85Y
A*2606	12V
A*2606	67V
A*2606	23I
A*2606	60W
A*2606	4S
A*2606	108R
A*2606	24A
A*2606	106D
A*2606	7Y
A*2606	62R
A*2606	13S
A*2606	69A
A*2606	25V
A*2606	64T
A*2606	26G
A*2606	54Q
A*2606	14R
A*2606	49A
A*2606	27Y
A*2606	51W
A*2606	2S
A*2606	72Q
A*2606	28V
A*2606	114Q
A*2606	8F
A*2606	84Y
A*2606	15P
A*2606	111R
A*2606	29D
A*2606	74H
A*2606	30D
A*2606	50P
A*2606	3H
A*2606	76V
A*2606	47P
A*2606	117A
A*2606	16G
A*2606	75R
A*2606	31T
A*2606	91G
A*2606	5M
A*2606	55E
A*2606	32Q
A*2606	57P
A*2606	9Y
A*2606	63N
A*2606	17R
A*2606	110L
A*2606	33F
A*2606	94T
A*2606	34V
A*2606	65R
A*2606	18G
A*2606	105P
A*2606	35R
A*2606	109F
A*2606	36F
A*2606	116D
A*2606	10T
A*2606	87Q
A*2606	19E
A*2606	66N
A*2606	37D
A*2606	95I
A*2606	38S
A*2606	68K
A*2606	46E
A*2606	120G
A*2606	20P
A*2606	119D
A*2606	39D
A*2606	83G
A*2606	6R
A*2606	59Y
A*2606	40A
A*2606	113Y
A*2606	11S
A*2606	56G
A*2606	48R
A*2606	118Y
A*2606	21R
A*2606	71S
A*2606	41A
A*2606	89E
A*2606	45M
A*2606	58E
A*2606	44R
A*2606	86N
A*2606	42S
A*2606	53E
A*2606	22F
A*2606	77D
A*2606	43Q
A*2606	104G
A*2606	140A
A*2606	82R
A*2606	160L
A*2606	96Q
A*2606	133W
A*2606	103V
A*2606	141Q
A*2606	81L
A*2606	170R
A*2606	78L
A*2606	135A
A*2606	92S
A*2606	148E
A*2606	79G
A*2606	132S
A*2606	61D
A*2606	144Q
A*2606	73T
A*2606	142I
A*2606	97R
A*2606	143T
A*2606	80T
A*2606	146K
A*2606	102D
A*2606	169R
A*2606	115R
A*2606	145R
A*2606	93H
A*2606	128E
A*2606	98M
A*2606	168L
A*2606	52I
A*2606	147W
A*2606	101C
A*2606	159Y
A*2606	88S
A*2606	129D
A*2606	107G
A*2606	122D
A*2606	90D
A*2606	134T
A*2606	112G
A*2606	167W
A*2606	100G
A*2606	158A
A*2606	70H
A*2606	157R
A*2606	99Y
A*2606	166E
A*2606	121K
A*2606	156W
A*2606	85Y
A*2606	125A
A*2606	126L
A*2606	149T
A*2606	155Q
A*2606	179L
A*2606	182T
A*2606	175G
A*2606	176K
A*2606	130L
A*2606	165V
A*2606	136A
A*2606	123Y
A*2606	164C
A*2606	180Q
A*2606	177E
A*2606	181R
A*2606	154E
A*2606	178T
A*2606	174N
A*2606	153A
A*2606	137D
A*2606	152E
A*2606	163R
A*2606	162G
A*2606	124I
A*2606	138M
A*2606	131R
A*2606	173E
A*2606	151H
A*2606	172L
A*2606	127N
A*2606	171Y
A*2606	139A
A*2606	161E
A*2606	150A
A*2607	106D
A*2607	187T
A*2607	57P
A*2607	170R
A*2607	62G
A*2607	267P
A*2607	114Q
A*2607	140A
A*2607	84Y
A*2607	141Q
A*2607	75R
A*2607	149T
A*2607	63E
A*2607	148E
A*2607	64T
A*2607	132S
A*2607	69A
A*2607	142I
A*2607	54Q
A*2607	196D
A*2607	50P
A*2607	144Q
A*2607	60W
A*2607	128E
A*2607	111R
A*2607	160L
A*2607	76A
A*2607	169R
A*2607	72Q
A*2607	145R
A*2607	51W
A*2607	143T
A*2607	74D
A*2607	146K
A*2607	49A
A*2607	183D
A*2607	105P
A*2607	147W
A*2607	94T
A*2607	168L
A*2607	66K
A*2607	159Y
A*2607	110L
A*2607	197H
A*2607	91G
A*2607	184A
A*2607	109F
A*2607	185P
A*2607	116D
A*2607	193A
A*2607	87Q
A*2607	134T
A*2607	65R
A*2607	133W
A*2607	113Y
A*2607	158A
A*2607	120G
A*2607	122D
A*2607	56G
A*2607	198E
A*2607	119D
A*2607	167W
A*2607	83G
A*2607	157R
A*2607	95I
A*2607	129D
A*2607	55E
A*2607	192H
A*2607	59Y
A*2607	186K
A*2607	68K
A*2607	207S
A*2607	89E
A*2607	194V
A*2607	71S
A*2607	166E
A*2607	118Y
A*2607	199A
A*2607	52I
A*2607	125A
A*2607	93H
A*2607	156W
A*2607	53E
A*2607	175G
A*2607	103V
A*2607	245A
A*2607	104G
A*2607	124I
A*2607	67V
A*2607	176K
A*2607	108R
A*2607	130L
A*2607	82R
A*2607	246S
A*2607	96Q
A*2607	135A
A*2607	77N
A*2607	155Q
A*2607	58E
A*2607	189M
A*2607	78L
A*2607	165V
A*2607	81L
A*2607	195S
A*2607	86N
A*2607	191H
A*2607	79G
A*2607	180Q
A*2607	92S
A*2607	179L
A*2607	80T
A*2607	136A
A*2607	61D
A*2607	126L
A*2607	97R
A*2607	190T
A*2607	73T
A*2607	154E
A*2607	101C
A*2607	181R
A*2607	98M
A*2607	178T
A*2607	115Q
A*2607	174N
A*2607	70H
A*2607	253Q
A*2607	88S
A*2607	182T
A*2607	90D
A*2607	123Y
A*2607	102D
A*2607	164C
A*2607	85Y
A*2607	177E
A*2607	112G
A*2607	219R
A*2607	107G
A*2607	188H
A*2607	121K
A*2607	152E
A*2607	117A
A*2607	163R
A*2607	99Y
A*2607	137D
A*2607	100G
A*2607	153A
A*2607	275E
A*2607	171Y
A*2607	276P
A*2607	131R
A*2607	12V
A*2607	162G
A*2607	23I
A*2607	151H
A*2607	4S
A*2607	172L
A*2607	24A
A*2607	173E
A*2607	7Y
A*2607	138M
A*2607	13S
A*2607	268K
A*2607	25V
A*2607	270L
A*2607	44R
A*2607	273R
A*2607	26G
A*2607	139A
A*2607	14R
A*2607	150A
A*2607	27Y
A*2607	248V
A*2607	2S
A*2607	261V
A*2607	43Q
A*2607	127N
A*2607	28V
A*2607	161E
A*2607	1G
A*2607	8F
A*2607	15P
A*2607	29D
A*2607	45M
A*2607	30D
A*2607	3H
A*2607	16G
A*2607	31T
A*2607	5M
A*2607	47P
A*2607	32Q
A*2607	9Y
A*2607	17R
A*2607	33F
A*2607	34V
A*2607	18G
A*2607	35R
A*2607	36F
A*2607	10T
A*2607	19E
A*2607	37D
A*2607	46E
A*2607	38S
A*2607	20P
A*2607	39D
A*2607	6R
A*2607	40A
A*2607	11S
A*2607	48R
A*2607	21R
A*2607	41A
A*2607	42S
A*2607	22F
A*2608	66N
A*2608	12V
A*2608	50P
A*2608	23I
A*2608	69A
A*2608	4S
A*2608	93H
A*2608	24A
A*2608	64T
A*2608	7Y
A*2608	54Q
A*2608	13S
A*2608	52I
A*2608	25V
A*2608	106D
A*2608	26G
A*2608	60W
A*2608	14R
A*2608	62R
A*2608	27Y
A*2608	76A
A*2608	2S
A*2608	111R
A*2608	28V
A*2608	72Q
A*2608	8F
A*2608	51W
A*2608	15P
A*2608	74D
A*2608	1G
A*2608	117A
A*2608	29D
A*2608	94T
A*2608	3H
A*2608	114Q
A*2608	30D
A*2608	84Y
A*2608	16G
A*2608	113Y
A*2608	31T
A*2608	110L
A*2608	5M
A*2608	116D
A*2608	47P
A*2608	56G
A*2608	32Q
A*2608	59Y
A*2608	9Y
A*2608	65R
A*2608	17R
A*2608	91G
A*2608	33F
A*2608	87Q
A*2608	34V
A*2608	109F
A*2608	42S
A*2608	83G
A*2608	18G
A*2608	105P
A*2608	35R
A*2608	95I
A*2608	36F
A*2608	55E
A*2608	10T
A*2608	120G
A*2608	19E
A*2608	71S
A*2608	37D
A*2608	89E
A*2608	38S
A*2608	68K
A*2608	20P
A*2608	118Y
A*2608	44R
A*2608	57P
A*2608	45M
A*2608	75R
A*2608	39D
A*2608	108R
A*2608	6R
A*2608	79G
A*2608	40A
A*2608	67V
A*2608	46E
A*2608	96Q
A*2608	11S
A*2608	63N
A*2608	21R
A*2608	77N
A*2608	41A
A*2608	82R
A*2608	49A
A*2608	58E
A*2608	48R
A*2608	86N
A*2608	22F
A*2608	80T
A*2608	43Q
A*2608	104G
A*2608	132S
A*2608	78L
A*2608	124I
A*2608	53E
A*2608	149T
A*2608	97R
A*2608	193A
A*2608	61D
A*2608	268K
A*2608	73T
A*2608	246S
A*2608	92S
A*2608	140A
A*2608	81L
A*2608	141Q
A*2608	103V
A*2608	142I
A*2608	90D
A*2608	148E
A*2608	98M
A*2608	144Q
A*2608	85Y
A*2608	196D
A*2608	70H
A*2608	183D
A*2608	115Q
A*2608	170R
A*2608	88S
A*2608	169R
A*2608	101C
A*2608	151H
A*2608	102D
A*2608	168L
A*2608	112G
A*2608	143T
A*2608	99Y
A*2608	147W
A*2608	107G
A*2608	146K
A*2608	121K
A*2608	145R
A*2608	119D
A*2608	160L
A*2608	100G
A*2608	128E
A*2608	276P
A*2608	159Y
A*2608	275E
A*2608	197H
A*2608	133W
A*2608	192H
A*2608	158A
A*2608	157R
A*2608	122D
A*2608	161E
A*2608	167W
A*2608	198E
A*2608	185P
A*2608	184A
A*2608	129D
A*2608	134T
A*2608	194V
A*2608	207S
A*2608	186K
A*2608	199A
A*2608	166E
A*2608	125A
A*2608	156Q
A*2608	171Y
A*2608	190T
A*2608	135A
A*2608	267P
A*2608	165V
A*2608	191H
A*2608	187T
A*2608	189M
A*2608	195S
A*2608	155Q
A*2608	181R
A*2608	152E
A*2608	178T
A*2608	126L
A*2608	219R
A*2608	130L
A*2608	177E
A*2608	136A
A*2608	253Q
A*2608	164C
A*2608	174N
A*2608	175G
A*2608	182T
A*2608	176K
A*2608	179L
A*2608	123Y
A*2608	188H
A*2608	154E
A*2608	163R
A*2608	137D
A*2608	180Q
A*2608	153A
A*2608	245A
A*2608	172L
A*2608	139A
A*2608	173E
A*2608	138M
A*2608	162G
A*2608	270L
A*2608	131R
A*2608	273R
A*2608	248V
A*2608	150A
A*2608	261V
A*2608	127N
A*2609	93H
A*2609	124I
A*2609	59Y
A*2609	140A
A*2609	76A
A*2609	171Y
A*2609	113Y
A*2609	142I
A*2609	54Q
A*2609	141Q
A*2609	52I
A*2609	144Q
A*2609	56G
A*2609	148E
A*2609	111R
A*2609	149T
A*2609	64T
A*2609	168L
A*2609	106D
A*2609	170R
A*2609	60W
A*2609	146K
A*2609	62R
A*2609	169R
A*2609	69A
A*2609	147W
A*2609	51W
A*2609	132S
A*2609	74D
A*2609	143T
A*2609	72Q
A*2609	145R
A*2609	84Y
A*2609	160L
A*2609	110L
A*2609	159Y
A*2609	50P
A*2609	128E
A*2609	114Q
A*2609	157R
A*2609	94T
A*2609	122D
A*2609	87Q
A*2609	167W
A*2609	65R
A*2609	133W
A*2609	109F
A*2609	129D
A*2609	91G
A*2609	166E
A*2609	55E
A*2609	158A
A*2609	89E
A*2609	134T
A*2609	105P
A*2609	156W
A*2609	71S
A*2609	125A
A*2609	116D
A*2609	165V
A*2609	95I
A*2609	135A
A*2609	68K
A*2609	152E
A*2609	118Y
A*2609	139A
A*2609	120G
A*2609	155Q
A*2609	83G
A*2609	164C
A*2609	108R
A*2609	136A
A*2609	96Q
A*2609	123Y
A*2609	77N
A*2609	177E
A*2609	63N
A*2609	174N
A*2609	75R
A*2609	175G
A*2609	85Y
A*2609	182T
A*2609	66N
A*2609	163T
A*2609	80T
A*2609	126L
A*2609	57P
A*2609	176K
A*2609	67V
A*2609	179L
A*2609	82R
A*2609	153A
A*2609	58E
A*2609	137D
A*2609	97R
A*2609	130L
A*2609	104G
A*2609	181R
A*2609	86N
A*2609	178T
A*2609	73T
A*2609	180Q
A*2609	61D
A*2609	154E
A*2609	53E
A*2609	150A
A*2609	78L
A*2609	161E
A*2609	81L
A*2609	138M
A*2609	92S
A*2609	162G
A*2609	103V
A*2609	173E
A*2609	79G
A*2609	127N
A*2609	102D
A*2609	172L
A*2609	107G
A*2609	131R
A*2609	88S
A*2609	151H
A*2609	112G
A*2609	12V
A*2609	98M
A*2609	23I
A*2609	115Q
A*2609	4S
A*2609	121K
A*2609	24A
A*2609	101C
A*2609	7Y
A*2609	70H
A*2609	13S
A*2609	99Y
A*2609	25V
A*2609	119D
A*2609	26G
A*2609	100G
A*2609	14R
A*2609	90D
A*2609	27Y
A*2609	117A
A*2609	2S
A*2609	28V
A*2609	8F
A*2609	15P
A*2609	29D
A*2609	30D
A*2609	3H
A*2609	47P
A*2609	16G
A*2609	31T
A*2609	5M
A*2609	32Q
A*2609	9Y
A*2609	17R
A*2609	33F
A*2609	34V
A*2609	45M
A*2609	18G
A*2609	44R
A*2609	35R
A*2609	36F
A*2609	10T
A*2609	19E
A*2609	37D
A*2609	38S
A*2609	20P
A*2609	39D
A*2609	6R
A*2609	46E
A*2609	40A
A*2609	11S
A*2609	21R
A*2609	49A
A*2609	41A
A*2609	48R
A*2609	42S
A*2609	22F
A*2609	43Q
A*2612	93H
A*2612	12V
A*2612	52I
A*2612	23I
A*2612	54Q
A*2612	4S
A*2612	85Y
A*2612	44R
A*2612	62R
A*2612	45M
A*2612	69A
A*2612	24A
A*2612	51W
A*2612	7Y
A*2612	60W
A*2612	13S
A*2612	64T
A*2612	25V
A*2612	106D
A*2612	26G
A*2612	74D
A*2612	14R
A*2612	72Q
A*2612	27Y
A*2612	111R
A*2612	2S
A*2612	65R
A*2612	28V
A*2612	76A
A*2612	47P
A*2612	89E
A*2612	8F
A*2612	87Q
A*2612	15P
A*2612	84Y
A*2612	29D
A*2612	71S
A*2612	30D
A*2612	114Q
A*2612	3H
A*2612	50P
A*2612	16G
A*2612	91G
A*2612	31T
A*2612	110L
A*2612	5M
A*2612	109F
A*2612	32Q
A*2612	94T
A*2612	9Y
A*2612	116D
A*2612	17R
A*2612	105P
A*2612	33F
A*2612	68K
A*2612	34V
A*2612	118Y
A*2612	18G
A*2612	95I
A*2612	35R
A*2612	83G
A*2612	36F
A*2612	120G
A*2612	10T
A*2612	55E
A*2612	19E
A*2612	97R
A*2612	37D
A*2612	59Y
A*2612	38S
A*2612	66N
A*2612	20P
A*2612	75R
A*2612	46E
A*2612	67V
A*2612	39D
A*2612	56G
A*2612	6R
A*2612	82R
A*2612	40A
A*2612	108R
A*2612	11S
A*2612	58E
A*2612	21R
A*2612	113Y
A*2612	49A
A*2612	57P
A*2612	48R
A*2612	96Q
A*2612	41A
A*2612	104G
A*2612	42S
A*2612	73T
A*2612	22F
A*2612	77N
A*2612	43Q
A*2612	81L
A*2612	124I
A*2612	86N
A*2612	142I
A*2612	61D
A*2612	141Q
A*2612	63N
A*2612	144Q
A*2612	53E
A*2612	139A
A*2612	78L
A*2612	148E
A*2612	92S
A*2612	171Y
A*2612	112G
A*2612	170R
A*2612	80T
A*2612	159Y
A*2612	79G
A*2612	149T
A*2612	103V
A*2612	132S
A*2612	121K
A*2612	146K
A*2612	101C
A*2612	160L
A*2612	107G
A*2612	143T
A*2612	102D
A*2612	169R
A*2612	98M
A*2612	172L
A*2612	115Q
A*2612	145R
A*2612	88S
A*2612	140A
A*2612	100G
A*2612	147W
A*2612	119D
A*2612	168L
A*2612	122D
A*2612	128E
A*2612	70H
A*2612	166E
A*2612	99Y
A*2612	167W
A*2612	117A
A*2612	133W
A*2612	90D
A*2612	158A
A*2612	157R
A*2612	156W
A*2612	129D
A*2612	134T
A*2612	125A
A*2612	161E
A*2612	135A
A*2612	150A
A*2612	163R
A*2612	155Q
A*2612	175G
A*2612	182T
A*2612	153A
A*2612	137D
A*2612	165V
A*2612	176K
A*2612	179L
A*2612	126L
A*2612	181R
A*2612	180Q
A*2612	177E
A*2612	178T
A*2612	123Y
A*2612	130L
A*2612	174N
A*2612	136A
A*2612	154E
A*2612	164C
A*2612	162G
A*2612	152V
A*2612	127N
A*2612	138M
A*2612	173E
A*2612	151H
A*2612	131R
A*2616	71S
A*2616	144Q
A*2616	51W
A*2616	159Y
A*2616	89E
A*2616	139A
A*2616	85Y
A*2616	148E
A*2616	93H
A*2616	166E
A*2616	54Q
A*2616	150A
A*2616	106D
A*2616	171Y
A*2616	64T
A*2616	141Q
A*2616	52I
A*2616	124I
A*2616	62R
A*2616	161E
A*2616	74D
A*2616	170R
A*2616	60W
A*2616	146K
A*2616	69A
A*2616	132S
A*2616	72Q
A*2616	160L
A*2616	111R
A*2616	149T
A*2616	117A
A*2616	143T
A*2616	68K
A*2616	169R
A*2616	109F
A*2616	142I
A*2616	91G
A*2616	145R
A*2616	114Q
A*2616	147W
A*2616	84Y
A*2616	140A
A*2616	118Y
A*2616	162G
A*2616	50P
A*2616	168L
A*2616	110L
A*2616	128E
A*2616	76A
A*2616	156W
A*2616	94T
A*2616	138M
A*2616	95I
A*2616	133W
A*2616	87Q
A*2616	157R
A*2616	105P
A*2616	129D
A*2616	65R
A*2616	158A
A*2616	83G
A*2616	167W
A*2616	116D
A*2616	134T
A*2616	120G
A*2616	125A
A*2616	55E
A*2616	155Q
A*2616	82R
A*2616	127N
A*2616	61D
A*2616	153A
A*2616	75R
A*2616	137D
A*2616	59Y
A*2616	135A
A*2616	66N
A*2616	180Q
A*2616	81L
A*2616	179L
A*2616	73T
A*2616	165V
A*2616	58E
A*2616	176K
A*2616	113Y
A*2616	126L
A*2616	108R
A*2616	123Y
A*2616	56G
A*2616	181R
A*2616	57P
A*2616	130L
A*2616	67V
A*2616	174N
A*2616	77N
A*2616	178T
A*2616	70H
A*2616	175G
A*2616	63N
A*2616	182T
A*2616	86N
A*2616	177E
A*2616	96Q
A*2616	154E
A*2616	104G
A*2616	136A
A*2616	53E
A*2616	164C
A*2616	92S
A*2616	163R
A*2616	78L
A*2616	173E
A*2616	119D
A*2616	152E
A*2616	80T
A*2616	131R
A*2616	121K
A*2616	172L
A*2616	107G
A*2616	151H
A*2616	79G
A*2616	47P
A*2616	97R
A*2616	12V
A*2616	103V
A*2616	23I
A*2616	100G
A*2616	4S
A*2616	115Q
A*2616	44R
A*2616	88S
A*2616	24A
A*2616	102D
A*2616	7Y
A*2616	98M
A*2616	45M
A*2616	99Y
A*2616	13S
A*2616	122D
A*2616	25V
A*2616	101C
A*2616	26G
A*2616	90D
A*2616	46E
A*2616	112G
A*2616	14R
A*2616	27Y
A*2616	2S
A*2616	43Q
A*2616	28V
A*2616	8F
A*2616	15P
A*2616	29D
A*2616	30D
A*2616	3H
A*2616	16G
A*2616	31T
A*2616	5M
A*2616	32Q
A*2616	9S
A*2616	17R
A*2616	33F
A*2616	34V
A*2616	18G
A*2616	35R
A*2616	36F
A*2616	10T
A*2616	19E
A*2616	37D
A*2616	38S
A*2616	48R
A*2616	20P
A*2616	39D
A*2616	6R
A*2616	40A
A*2616	11S
A*2616	49A
A*2616	21R
A*2616	41A
A*2616	42S
A*2616	22F
A*2901	74D
A*2901	12V
A*2901	118Y
A*2901	23I
A*2901	85Y
A*2901	4S
A*2901	68K
A*2901	24A
A*2901	93H
A*2901	7Y
A*2901	52I
A*2901	44R
A*2901	106D
A*2901	45M
A*2901	62L
A*2901	13S
A*2901	64T
A*2901	25V
A*2901	72Q
A*2901	26G
A*2901	111R
A*2901	14R
A*2901	54Q
A*2901	46E
A*2901	60W
A*2901	27Y
A*2901	69A
A*2901	2S
A*2901	84Y
A*2901	28V
A*2901	51W
A*2901	8F
A*2901	114R
A*2901	15P
A*2901	50P
A*2901	29D
A*2901	94T
A*2901	1G
A*2901	110L
A*2901	30D
A*2901	76A
A*2901	3H
A*2901	87Q
A*2901	16G
A*2901	65R
A*2901	31T
A*2901	105S
A*2901	5M
A*2901	91G
A*2901	42S
A*2901	109F
A*2901	32Q
A*2901	120G
A*2901	9T
A*2901	116D
A*2901	17R
A*2901	95I
A*2901	48R
A*2901	55E
A*2901	33F
A*2901	83G
A*2901	47P
A*2901	75R
A*2901	34V
A*2901	58E
A*2901	18G
A*2901	59Y
A*2901	35R
A*2901	100G
A*2901	36F
A*2901	113Y
A*2901	10T
A*2901	89E
A*2901	19E
A*2901	108R
A*2901	37D
A*2901	57P
A*2901	38S
A*2901	119D
A*2901	20P
A*2901	66N
A*2901	39D
A*2901	67V
A*2901	6R
A*2901	71S
A*2901	40A
A*2901	56G
A*2901	11S
A*2901	63Q
A*2901	49A
A*2901	77N
A*2901	21R
A*2901	82R
A*2901	41A
A*2901	92S
A*2901	22F
A*2901	104G
A*2901	43Q
A*2901	96Q
A*2901	268K
A*2901	86N
A*2901	171Y
A*2901	53E
A*2901	192H
A*2901	78L
A*2901	150A
A*2901	73T
A*2901	127N
A*2901	81L
A*2901	156L
A*2901	99Y
A*2901	196D
A*2901	61D
A*2901	246S
A*2901	117A
A*2901	124I
A*2901	103V
A*2901	141Q
A*2901	97M
A*2901	270L
A*2901	80T
A*2901	161E
A*2901	115Q
A*2901	139A
A*2901	79G
A*2901	143T
A*2901	88S
A*2901	149A
A*2901	98M
A*2901	144Q
A*2901	107G
A*2901	145R
A*2901	102H
A*2901	142I
A*2901	121K
A*2901	170R
A*2901	122D
A*2901	169R
A*2901	90A
A*2901	148E
A*2901	112G
A*2901	132S
A*2901	101C
A*2901	147W
A*2901	70Q
A*2901	146K
A*2901	160L
A*2901	173E
A*2901	183D
A*2901	197H
A*2901	168L
A*2901	128E
A*2901	140A
A*2901	194V
A*2901	159Y
A*2901	207S
A*2901	198E
A*2901	133W
A*2901	185P
A*2901	184A
A*2901	129D
A*2901	134T
A*2901	186K
A*2901	158A
A*2901	167W
A*2901	125A
A*2901	199A
A*2901	157R
A*2901	267P
A*2901	219R
A*2901	166E
A*2901	193A
A*2901	195S
A*2901	180Q
A*2901	191H
A*2901	189M
A*2901	135A
A*2901	187T
A*2901	126L
A*2901	174N
A*2901	253Q
A*2901	155Q
A*2901	130L
A*2901	165V
A*2901	176K
A*2901	182T
A*2901	178T
A*2901	154E
A*2901	136A
A*2901	177E
A*2901	179L
A*2901	164C
A*2901	123Y
A*2901	181R
A*2901	175G
A*2901	188H
A*2901	137D
A*2901	153A
A*2901	248V
A*2901	163T
A*2901	190T
A*2901	245A
A*2901	152V
A*2901	273R
A*2901	275E
A*2901	131R
A*2901	261V
A*2901	172L
A*2901	138M
A*2901	162G
A*2901	151R
A*2901	276P
A*2902	119D
A*2902	150A
A*2902	85Y
A*2902	127N
A*2902	72Q
A*2902	161E
A*2902	100G
A*2902	141Q
A*2902	93H
A*2902	124I
A*2902	64T
A*2902	145R
A*2902	106D
A*2902	144Q
A*2902	62L
A*2902	142I
A*2902	111R
A*2902	149A
A*2902	69A
A*2902	169R
A*2902	52I
A*2902	148E
A*2902	54Q
A*2902	139A
A*2902	60W
A*2902	170R
A*2902	94T
A*2902	171Y
A*2902	114R
A*2902	160L
A*2902	51W
A*2902	128E
A*2902	74D
A*2902	168L
A*2902	110L
A*2902	143T
A*2902	76A
A*2902	132S
A*2902	84Y
A*2902	140A
A*2902	109F
A*2902	146K
A*2902	105S
A*2902	147W
A*2902	91G
A*2902	159Y
A*2902	87Q
A*2902	133W
A*2902	50P
A*2902	125A
A*2902	120G
A*2902	167W
A*2902	65R
A*2902	158A
A*2902	55E
A*2902	129D
A*2902	116D
A*2902	134T
A*2902	83G
A*2902	157R
A*2902	95I
A*2902	174N
A*2902	68K
A*2902	166E
A*2902	57P
A*2902	130L
A*2902	67V
A*2902	156L
A*2902	118Y
A*2902	135A
A*2902	92S
A*2902	154E
A*2902	117A
A*2902	136A
A*2902	89E
A*2902	176K
A*2902	99Y
A*2902	155Q
A*2902	75R
A*2902	165V
A*2902	56G
A*2902	126L
A*2902	71S
A*2902	164C
A*2902	66N
A*2902	177E
A*2902	108R
A*2902	179L
A*2902	59Y
A*2902	178T
A*2902	82R
A*2902	182T
A*2902	113Y
A*2902	181R
A*2902	86N
A*2902	175G
A*2902	77N
A*2902	123Y
A*2902	53E
A*2902	163T
A*2902	96Q
A*2902	131R
A*2902	58E
A*2902	180Q
A*2902	104G
A*2902	172L
A*2902	63Q
A*2902	152V
A*2902	78L
A*2902	137D
A*2902	88S
A*2902	153A
A*2902	115Q
A*2902	138M
A*2902	98M
A*2902	173E
A*2902	103V
A*2902	151R
A*2902	90A
A*2902	162G
A*2902	97M
A*2902	12V
A*2902	73T
A*2902	41A
A*2902	81L
A*2902	23I
A*2902	61D
A*2902	4S
A*2902	79G
A*2902	44R
A*2902	80T
A*2902	45M
A*2902	102D
A*2902	24A
A*2902	121K
A*2902	7Y
A*2902	122D
A*2902	48R
A*2902	101C
A*2902	13S
A*2902	107G
A*2902	25V
A*2902	70Q
A*2902	26G
A*2902	112G
A*2902	14R
A*2902	27Y
A*2902	2S
A*2902	28V
A*2902	8F
A*2902	15P
A*2902	29D
A*2902	30D
A*2902	3H
A*2902	16G
A*2902	31T
A*2902	5M
A*2902	32Q
A*2902	9T
A*2902	17R
A*2902	33F
A*2902	34V
A*2902	18G
A*2902	47P
A*2902	35R
A*2902	36F
A*2902	10T
A*2902	19E
A*2902	37D
A*2902	38S
A*2902	20P
A*2902	39D
A*2902	6R
A*2902	40A
A*2902	11S
A*2902	49A
A*2902	21R
A*2902	46E
A*2902	42S
A*2902	22F
A*2902	43Q
A*2903	100G
A*2903	12V
A*2903	111R
A*2903	44R
A*2903	99Y
A*2903	45M
A*2903	119D
A*2903	23I
A*2903	117A
A*2903	4S
A*2903	115Q
A*2903	24A
A*2903	85Y
A*2903	48R
A*2903	93H
A*2903	7Y
A*2903	69A
A*2903	13S
A*2903	54Q
A*2903	25V
A*2903	64T
A*2903	26G
A*2903	106D
A*2903	14R
A*2903	60W
A*2903	27Y
A*2903	52I
A*2903	2S
A*2903	62L
A*2903	28V
A*2903	76A
A*2903	8F
A*2903	110L
A*2903	49A
A*2903	72Q
A*2903	15P
A*2903	74D
A*2903	29D
A*2903	51W
A*2903	30D
A*2903	114R
A*2903	1G
A*2903	84Y
A*2903	3H
A*2903	105S
A*2903	16G
A*2903	91G
A*2903	31T
A*2903	87Q
A*2903	5M
A*2903	94T
A*2903	32Q
A*2903	50P
A*2903	9T
A*2903	120G
A*2903	17R
A*2903	55E
A*2903	33F
A*2903	65R
A*2903	34V
A*2903	109F
A*2903	47P
A*2903	116D
A*2903	18G
A*2903	83G
A*2903	35R
A*2903	95I
A*2903	36F
A*2903	118Y
A*2903	10T
A*2903	90A
A*2903	19E
A*2903	53E
A*2903	37D
A*2903	56G
A*2903	38S
A*2903	89E
A*2903	20P
A*2903	68K
A*2903	39D
A*2903	75R
A*2903	6R
A*2903	71S
A*2903	40A
A*2903	108R
A*2903	11S
A*2903	66N
A*2903	21R
A*2903	59Y
A*2903	41A
A*2903	86N
A*2903	42S
A*2903	67V
A*2903	46E
A*2903	113Y
A*2903	22F
A*2903	82R
A*2903	43Q
A*2903	96Q
A*2903	127N
A*2903	77N
A*2903	194V
A*2903	104G
A*2903	196D
A*2903	57P
A*2903	161E
A*2903	78L
A*2903	125A
A*2903	58E
A*2903	207S
A*2903	63Q
A*2903	270L
A*2903	97M
A*2903	150A
A*2903	101C
A*2903	246S
A*2903	92S
A*2903	124I
A*2903	73T
A*2903	141Q
A*2903	112G
A*2903	148E
A*2903	81L
A*2903	168L
A*2903	107G
A*2903	169R
A*2903	79G
A*2903	128E
A*2903	103V
A*2903	268K
A*2903	80T
A*2903	149A
A*2903	102D
A*2903	139A
A*2903	61D
A*2903	170R
A*2903	122D
A*2903	144Q
A*2903	98M
A*2903	171Y
A*2903	121K
A*2903	160L
A*2903	70Q
A*2903	197H
A*2903	88S
A*2903	143T
A*2903	142I
A*2903	145R
A*2903	147W
A*2903	140A
A*2903	183D
A*2903	146K
A*2903	132S
A*2903	185P
A*2903	159Y
A*2903	198E
A*2903	184A
A*2903	133W
A*2903	158A
A*2903	199A
A*2903	134T
A*2903	186K
A*2903	167G
A*2903	157R
A*2903	129D
A*2903	189M
A*2903	192H
A*2903	166D
A*2903	154E
A*2903	136A
A*2903	172L
A*2903	248V
A*2903	131R
A*2903	267P
A*2903	156L
A*2903	135A
A*2903	187T
A*2903	193A
A*2903	176K
A*2903	191H
A*2903	195S
A*2903	165V
A*2903	164C
A*2903	155Q
A*2903	179L
A*2903	177E
A*2903	126L
A*2903	181R
A*2903	253Q
A*2903	182T
A*2903	178T
A*2903	175G
A*2903	123Y
A*2903	188H
A*2903	152V
A*2903	261V
A*2903	138M
A*2903	153A
A*2903	130L
A*2903	245A
A*2903	219R
A*2903	180Q
A*2903	190T
A*2903	163T
A*2903	151R
A*2903	137D
A*2903	174N
A*2903	273R
A*2903	275E
A*2903	276P
A*2903	173E
A*2903	162G
A*3001	99Y
A*3001	168L
A*3001	69A
A*3001	270L
A*3001	85Y
A*3001	172L
A*3001	100G
A*3001	131R
A*3001	90A
A*3001	246A
A*3001	117A
A*3001	150A
A*3001	119D
A*3001	128E
A*3001	93H
A*3001	141Q
A*3001	52I
A*3001	248V
A*3001	54Q
A*3001	124I
A*3001	106D
A*3001	127N
A*3001	64T
A*3001	149A
A*3001	60W
A*3001	197H
A*3001	62Q
A*3001	142I
A*3001	72Q
A*3001	183D
A*3001	74D
A*3001	161E
A*3001	120G
A*3001	171Y
A*3001	111R
A*3001	170R
A*3001	51W
A*3001	196D
A*3001	114E
A*3001	144Q
A*3001	55E
A*3001	139A
A*3001	84Y
A*3001	140A
A*3001	116H
A*3001	147W
A*3001	94T
A*3001	145R
A*3001	76V
A*3001	160L
A*3001	50P
A*3001	148E
A*3001	122D
A*3001	169R
A*3001	110L
A*3001	268K
A*3001	87Q
A*3001	146K
A*3001	105S
A*3001	143T
A*3001	95I
A*3001	132S
A*3001	83G
A*3001	199A
A*3001	91G
A*3001	159Y
A*3001	109F
A*3001	184P
A*3001	65R
A*3001	133W
A*3001	101C
A*3001	158A
A*3001	89E
A*3001	185P
A*3001	112G
A*3001	198E
A*3001	108R
A*3001	129D
A*3001	68K
A*3001	186K
A*3001	118Y
A*3001	157R
A*3001	75R
A*3001	167W
A*3001	59Y
A*3001	134T
A*3001	71S
A*3001	151R
A*3001	66N
A*3001	166E
A*3001	67V
A*3001	138M
A*3001	78L
A*3001	261V
A*3001	96Q
A*3001	164C
A*3001	82R
A*3001	194I
A*3001	56R
A*3001	192H
A*3001	77D
A*3001	125A
A*3001	86N
A*3001	207G
A*3001	113Y
A*3001	187T
A*3001	57P
A*3001	267P
A*3001	58E
A*3001	156L
A*3001	63E
A*3001	193P
A*3001	104G
A*3001	135A
A*3001	92S
A*3001	165V
A*3001	81L
A*3001	189M
A*3001	53E
A*3001	181R
A*3001	103V
A*3001	155Q
A*3001	97I
A*3001	126L
A*3001	73T
A*3001	182T
A*3001	79G
A*3001	195S
A*3001	102D
A*3001	175G
A*3001	61D
A*3001	191H
A*3001	80T
A*3001	176K
A*3001	115Q
A*3001	177E
A*3001	70Q
A*3001	179L
A*3001	123Y
A*3001	253E
A*3001	88S
A*3001	178T
A*3001	98M
A*3001	188H
A*3001	121K
A*3001	130L
A*3001	107G
A*3001	245A
A*3001	12V
A*3001	136A
A*3001	23I
A*3001	153A
A*3001	4S
A*3001	180Q
A*3001	48R
A*3001	190T
A*3001	24A
A*3001	154E
A*3001	7Y
A*3001	219R
A*3001	13S
A*3001	163T
A*3001	43Q
A*3001	137D
A*3001	45M
A*3001	174N
A*3001	44R
A*3001	273R
A*3001	25V
A*3001	275E
A*3001	26G
A*3001	276L
A*3001	14R
A*3001	152W
A*3001	27Y
A*3001	173E
A*3001	49A
A*3001	162G
A*3001	2S
A*3001	28V
A*3001	8F
A*3001	15P
A*3001	29D
A*3001	30D
A*3001	3H
A*3001	1G
A*3001	16G
A*3001	31T
A*3001	5M
A*3001	32Q
A*3001	9S
A*3001	17S
A*3001	33F
A*3001	47P
A*3001	34V
A*3001	18G
A*3001	35R
A*3001	36F
A*3001	10T
A*3001	19E
A*3001	37D
A*3001	38S
A*3001	20P
A*3001	39D
A*3001	6R
A*3001	40A
A*3001	11S
A*3001	21R
A*3001	41A
A*3001	42S
A*3001	46E
A*3001	22F
A*3002	138M
A*3002	12V
A*3002	197H
A*3002	23I
A*3002	141Q
A*3002	48R
A*3002	142I
A*3002	4S
A*3002	131R
A*3002	24A
A*3002	172L
A*3002	7Y
A*3002	151R
A*3002	13S
A*3002	183D
A*3002	25V
A*3002	150A
A*3002	26G
A*3002	199A
A*3002	45M
A*3002	124I
A*3002	14R
A*3002	276L
A*3002	44R
A*3002	273R
A*3002	27Y
A*3002	248V
A*3002	2S
A*3002	261V
A*3002	28V
A*3002	246A
A*3002	8F
A*3002	127N
A*3002	15P
A*3002	140A
A*3002	29D
A*3002	270L
A*3002	30D
A*3002	268K
A*3002	3H
A*3002	161E
A*3002	16G
A*3002	171Y
A*3002	49A
A*3002	144Q
A*3002	31T
A*3002	196D
A*3002	1G
A*3002	147W
A*3002	5M
A*3002	170R
A*3002	32Q
A*3002	149A
A*3002	9S
A*3002	145R
A*3002	17S
A*3002	160L
A*3002	47P
A*3002	148E
A*3002	33F
A*3002	132S
A*3002	34V
A*3002	139A
A*3002	18G
A*3002	143T
A*3002	35R
A*3002	146K
A*3002	36F
A*3002	169R
A*3002	10T
A*3002	168L
A*3002	19E
A*3002	128E
A*3002	37D
A*3002	184P
A*3002	38S
A*3002	133W
A*3002	20P
A*3002	159Y
A*3002	39D
A*3002	186K
A*3002	6R
A*3002	129D
A*3002	40A
A*3002	198E
A*3002	11S
A*3002	157R
A*3002	21R
A*3002	158A
A*3002	41A
A*3002	185P
A*3002	50P
A*3002	134T
A*3002	46E
A*3002	167W
A*3002	42S
A*3002	194I
A*3002	22F
A*3002	192H
A*3002	43Q
A*3002	125A
A*3002	112G
A*3002	207G
A*3002	101C
A*3002	135A
A*3002	120G
A*3002	156L
A*3002	52I
A*3002	181R
A*3002	54Q
A*3002	267P
A*3002	55E
A*3002	166E
A*3002	119D
A*3002	193P
A*3002	90A
A*3002	175G
A*3002	99Y
A*3002	182T
A*3002	93H
A*3002	155Q
A*3002	100G
A*3002	187T
A*3002	117A
A*3002	253E
A*3002	85Y
A*3002	191H
A*3002	60W
A*3002	165V
A*3002	62Q
A*3002	179L
A*3002	106D
A*3002	176K
A*3002	64T
A*3002	126L
A*3002	116H
A*3002	189M
A*3002	111R
A*3002	188H
A*3002	72Q
A*3002	178T
A*3002	51W
A*3002	195S
A*3002	74D
A*3002	177E
A*3002	69A
A*3002	136A
A*3002	84Y
A*3002	245A
A*3002	114E
A*3002	153A
A*3002	76E
A*3002	180Q
A*3002	122D
A*3002	154E
A*3002	83G
A*3002	190T
A*3002	95I
A*3002	219R
A*3002	110L
A*3002	164C
A*3002	94T
A*3002	130L
A*3002	87Q
A*3002	137D
A*3002	105S
A*3002	163T
A*3002	91G
A*3002	174N
A*3002	65R
A*3002	275E
A*3002	109F
A*3002	152R
A*3002	78L
A*3002	162G
A*3002	59Y
A*3002	173E
A*3002	108R
A*3002	66N
A*3002	89E
A*3002	75R
A*3002	118Y
A*3002	71S
A*3002	68K
A*3002	63E
A*3002	82R
A*3002	67V
A*3002	77N
A*3002	96Q
A*3002	57P
A*3002	58E
A*3002	56R
A*3002	113Y
A*3002	104G
A*3002	86N
A*3002	81L
A*3002	53E
A*3002	92S
A*3002	70H
A*3002	80T
A*3002	102D
A*3002	61D
A*3002	73T
A*3002	79G
A*3002	97I
A*3002	103V
A*3002	123Y
A*3002	115Q
A*3002	88S
A*3002	107G
A*3002	121K
A*3002	98M
A*3003	124I
A*3003	93H
A*3003	131R
A*3003	119D
A*3003	147W
A*3003	101C
A*3003	140A
A*3003	117A
A*3003	151R
A*3003	60W
A*3003	172L
A*3003	116H
A*3003	248V
A*3003	99Y
A*3003	246A
A*3003	100G
A*3003	138M
A*3003	85Y
A*3003	127N
A*3003	112G
A*3003	150A
A*3003	90A
A*3003	161E
A*3003	62Q
A*3003	171Y
A*3003	106D
A*3003	144Q
A*3003	64T
A*3003	196D
A*3003	83G
A*3003	170R
A*3003	84Y
A*3003	132S
A*3003	95I
A*3003	160L
A*3003	111R
A*3003	148E
A*3003	52I
A*3003	145R
A*3003	51W
A*3003	146K
A*3003	54Q
A*3003	139A
A*3003	72Q
A*3003	143T
A*3003	114E
A*3003	141Q
A*3003	69A
A*3003	173E
A*3003	74D
A*3003	169R
A*3003	110L
A*3003	149A
A*3003	87Q
A*3003	197H
A*3003	94T
A*3003	128E
A*3003	122D
A*3003	133W
A*3003	105S
A*3003	168L
A*3003	76E
A*3003	142I
A*3003	65R
A*3003	129D
A*3003	91G
A*3003	186K
A*3003	109F
A*3003	159Y
A*3003	71S
A*3003	183D
A*3003	63E
A*3003	185P
A*3003	66N
A*3003	198E
A*3003	120G
A*3003	184P
A*3003	70H
A*3003	158A
A*3003	68K
A*3003	157R
A*3003	89E
A*3003	134T
A*3003	75R
A*3003	167W
A*3003	118Y
A*3003	125A
A*3003	55E
A*3003	193P
A*3003	77N
A*3003	182T
A*3003	108R
A*3003	135A
A*3003	57P
A*3003	156L
A*3003	59Y
A*3003	207G
A*3003	58E
A*3003	175G
A*3003	67V
A*3003	199A
A*3003	96Q
A*3003	166E
A*3003	56G
A*3003	194I
A*3003	86N
A*3003	192H
A*3003	113Y
A*3003	253E
A*3003	82R
A*3003	179L
A*3003	104G
A*3003	126L
A*3003	79G
A*3003	187T
A*3003	80T
A*3003	176K
A*3003	102D
A*3003	188H
A*3003	61D
A*3003	191H
A*3003	78L
A*3003	189M
A*3003	92S
A*3003	178T
A*3003	98M
A*3003	195S
A*3003	81L
A*3003	165V
A*3003	97I
A*3003	177E
A*3003	53E
A*3003	155Q
A*3003	73T
A*3003	180Q
A*3003	103V
A*3003	154E
A*3003	107G
A*3003	190T
A*3003	123Y
A*3003	137D
A*3003	121K
A*3003	219R
A*3003	115Q
A*3003	164C
A*3003	88S
A*3003	181R
A*3003	12V
A*3003	153A
A*3003	23I
A*3003	174N
A*3003	4S
A*3003	136A
A*3003	24A
A*3003	163T
A*3003	7Y
A*3003	130L
A*3003	13S
A*3003	245A
A*3003	25V
A*3003	152R
A*3003	48R
A*3003	162G
A*3003	26G
A*3003	44R
A*3003	14R
A*3003	45M
A*3003	27Y
A*3003	28V
A*3003	2S
A*3003	8F
A*3003	15P
A*3003	29D
A*3003	30D
A*3003	3H
A*3003	49A
A*3003	16G
A*3003	31T
A*3003	5M
A*3003	1G
A*3003	32Q
A*3003	9S
A*3003	41A
A*3003	17S
A*3003	33F
A*3003	34V
A*3003	18G
A*3003	35R
A*3003	47P
A*3003	36F
A*3003	10T
A*3003	19E
A*3003	37D
A*3003	38S
A*3003	20P
A*3003	39D
A*3003	6R
A*3003	40A
A*3003	11S
A*3003	21R
A*3003	50P
A*3003	46E
A*3003	42S
A*3003	22F
A*3003	43Q
A*3004	172L
A*3004	12V
A*3004	151H
A*3004	23I
A*3004	127N
A*3004	4S
A*3004	129D
A*3004	24A
A*3004	131R
A*3004	7Y
A*3004	150A
A*3004	13S
A*3004	138M
A*3004	48R
A*3004	144Q
A*3004	25V
A*3004	124I
A*3004	44R
A*3004	161E
A*3004	26G
A*3004	132S
A*3004	45M
A*3004	170R
A*3004	14R
A*3004	141Q
A*3004	27Y
A*3004	148E
A*3004	28V
A*3004	160L
A*3004	2S
A*3004	143T
A*3004	8F
A*3004	146K
A*3004	15P
A*3004	171Y
A*3004	29D
A*3004	139A
A*3004	49A
A*3004	169R
A*3004	30D
A*3004	145R
A*3004	3H
A*3004	149A
A*3004	16G
A*3004	140A
A*3004	31T
A*3004	147W
A*3004	5M
A*3004	168L
A*3004	32Q
A*3004	128E
A*3004	9S
A*3004	142I
A*3004	17S
A*3004	159Y
A*3004	33F
A*3004	133W
A*3004	34V
A*3004	157R
A*3004	18G
A*3004	167W
A*3004	35R
A*3004	158A
A*3004	36F
A*3004	134T
A*3004	10T
A*3004	179L
A*3004	47P
A*3004	126L
A*3004	19E
A*3004	125A
A*3004	37D
A*3004	166E
A*3004	38S
A*3004	135A
A*3004	20P
A*3004	156W
A*3004	46E
A*3004	155Q
A*3004	39D
A*3004	165V
A*3004	6R
A*3004	177E
A*3004	40A
A*3004	176K
A*3004	11S
A*3004	178T
A*3004	50P
A*3004	164C
A*3004	21R
A*3004	162G
A*3004	41A
A*3004	181R
A*3004	42S
A*3004	182T
A*3004	22F
A*3004	174N
A*3004	43Q
A*3004	173E
A*3004	115Q
A*3004	180Q
A*3004	70H
A*3004	153A
A*3004	83G
A*3004	136A
A*3004	80T
A*3004	154E
A*3004	85Y
A*3004	163T
A*3004	101C
A*3004	175G
A*3004	62Q
A*3004	130L
A*3004	95I
A*3004	137D
A*3004	99Y
A*3004	152V
A*3004	112G
A*3004	100G
A*3004	90A
A*3004	119D
A*3004	117A
A*3004	93H
A*3004	106D
A*3004	64T
A*3004	111R
A*3004	52I
A*3004	114E
A*3004	51W
A*3004	72Q
A*3004	60W
A*3004	69A
A*3004	74D
A*3004	54Q
A*3004	87Q
A*3004	84Y
A*3004	94T
A*3004	110L
A*3004	91G
A*3004	76E
A*3004	65R
A*3004	109F
A*3004	105S
A*3004	122D
A*3004	57P
A*3004	58E
A*3004	68K
A*3004	120G
A*3004	75R
A*3004	116H
A*3004	118Y
A*3004	89E
A*3004	55E
A*3004	71S
A*3004	86N
A*3004	108R
A*3004	67V
A*3004	59Y
A*3004	66N
A*3004	104G
A*3004	113Y
A*3004	96Q
A*3004	56R
A*3004	77N
A*3004	82R
A*3004	107G
A*3004	98M
A*3004	78L
A*3004	102D
A*3004	121K
A*3004	92S
A*3004	63E
A*3004	81L
A*3004	73T
A*3004	53E
A*3004	97I
A*3004	103V
A*3004	123Y
A*3004	79G
A*3004	61D
A*3004	88S
A*3007	141Q
A*3007	70H
A*3007	127N
A*3007	101C
A*3007	151R
A*3007	112G
A*3007	172L
A*3007	90A
A*3007	132S
A*3007	99Y
A*3007	131R
A*3007	100G
A*3007	150A
A*3007	106D
A*3007	138M
A*3007	85Y
A*3007	146K
A*3007	119D
A*3007	143T
A*3007	93H
A*3007	161E
A*3007	117A
A*3007	170R
A*3007	64T
A*3007	139A
A*3007	51W
A*3007	149A
A*3007	114E
A*3007	124I
A*3007	52I
A*3007	144Q
A*3007	54Q
A*3007	171Y
A*3007	72Q
A*3007	169R
A*3007	69A
A*3007	145R
A*3007	62E
A*3007	160L
A*3007	74D
A*3007	148E
A*3007	111R
A*3007	128E
A*3007	60W
A*3007	147W
A*3007	84Y
A*3007	168L
A*3007	94T
A*3007	140A
A*3007	91G
A*3007	142I
A*3007	65G
A*3007	159Y
A*3007	76E
A*3007	133W
A*3007	87Q
A*3007	157R
A*3007	122D
A*3007	158A
A*3007	109F
A*3007	167W
A*3007	105S
A*3007	134T
A*3007	110L
A*3007	152R
A*3007	86N
A*3007	162G
A*3007	75R
A*3007	173E
A*3007	83G
A*3007	129D
A*3007	95I
A*3007	125A
A*3007	121K
A*3007	166E
A*3007	107G
A*3007	156L
A*3007	120G
A*3007	135A
A*3007	98M
A*3007	177E
A*3007	116H
A*3007	165V
A*3007	118Y
A*3007	176K
A*3007	89E
A*3007	178T
A*3007	55E
A*3007	155Q
A*3007	67V
A*3007	181R
A*3007	104G
A*3007	175G
A*3007	68K
A*3007	179L
A*3007	59Y
A*3007	182T
A*3007	79G
A*3007	163T
A*3007	56R
A*3007	164C
A*3007	66K
A*3007	126L
A*3007	71S
A*3007	180Q
A*3007	108R
A*3007	153A
A*3007	113Y
A*3007	154E
A*3007	82R
A*3007	130L
A*3007	96Q
A*3007	136A
A*3007	77N
A*3007	174N
A*3007	78L
A*3007	137D
A*3007	92S
A*3007	12V
A*3007	57P
A*3007	44R
A*3007	58E
A*3007	23I
A*3007	81L
A*3007	4S
A*3007	73T
A*3007	43Q
A*3007	53E
A*3007	24A
A*3007	97I
A*3007	7Y
A*3007	63E
A*3007	13S
A*3007	103V
A*3007	25V
A*3007	123Y
A*3007	45M
A*3007	61D
A*3007	26G
A*3007	115Q
A*3007	48R
A*3007	102D
A*3007	14R
A*3007	80T
A*3007	27Y
A*3007	88S
A*3007	28V
A*3007	2S
A*3007	8F
A*3007	15P
A*3007	29D
A*3007	30D
A*3007	3H
A*3007	16G
A*3007	31T
A*3007	5M
A*3007	32Q
A*3007	49A
A*3007	9S
A*3007	17S
A*3007	33F
A*3007	34V
A*3007	18G
A*3007	46E
A*3007	35R
A*3007	36F
A*3007	10T
A*3007	19E
A*3007	47P
A*3007	37D
A*3007	38S
A*3007	20P
A*3007	39D
A*3007	6R
A*3007	40A
A*3007	11S
A*3007	50P
A*3007	21R
A*3007	41A
A*3007	42S
A*3007	22F
A*3009	121K
A*3009	43Q
A*3009	98M
A*3009	12V
A*3009	107G
A*3009	45M
A*3009	106D
A*3009	23I
A*3009	90A
A*3009	4S
A*3009	112G
A*3009	46E
A*3009	70H
A*3009	24A
A*3009	101C
A*3009	7Y
A*3009	99Y
A*3009	13S
A*3009	100G
A*3009	25V
A*3009	119D
A*3009	26G
A*3009	93H
A*3009	14R
A*3009	64T
A*3009	48R
A*3009	117A
A*3009	27Y
A*3009	85Y
A*3009	42S
A*3009	69A
A*3009	28V
A*3009	91G
A*3009	2S
A*3009	74D
A*3009	8F
A*3009	54Q
A*3009	44R
A*3009	65R
A*3009	15P
A*3009	62Q
A*3009	29D
A*3009	111R
A*3009	30D
A*3009	52I
A*3009	3H
A*3009	60W
A*3009	16G
A*3009	72Q
A*3009	31T
A*3009	114E
A*3009	5M
A*3009	122D
A*3009	49A
A*3009	84Y
A*3009	32Q
A*3009	109F
A*3009	9S
A*3009	51W
A*3009	17S
A*3009	87Q
A*3009	33F
A*3009	94T
A*3009	34V
A*3009	105S
A*3009	18G
A*3009	76E
A*3009	35R
A*3009	110L
A*3009	47P
A*3009	118Y
A*3009	36F
A*3009	56R
A*3009	10T
A*3009	120G
A*3009	19E
A*3009	104G
A*3009	37D
A*3009	55E
A*3009	38S
A*3009	95I
A*3009	20P
A*3009	83G
A*3009	39D
A*3009	89E
A*3009	6R
A*3009	116H
A*3009	40A
A*3009	82R
A*3009	11S
A*3009	68K
A*3009	50P
A*3009	75R
A*3009	21R
A*3009	71S
A*3009	41A
A*3009	66N
A*3009	22F
A*3009	108R
A*3009	138M
A*3009	59Y
A*3009	150A
A*3009	113Y
A*3009	162G
A*3009	67V
A*3009	172L
A*3009	96Q
A*3009	139A
A*3009	77N
A*3009	143T
A*3009	115Q
A*3009	146K
A*3009	92S
A*3009	151R
A*3009	57P
A*3009	131R
A*3009	58E
A*3009	173E
A*3009	86N
A*3009	170R
A*3009	73T
A*3009	127N
A*3009	81L
A*3009	169R
A*3009	78L
A*3009	149A
A*3009	97I
A*3009	160L
A*3009	103V
A*3009	145R
A*3009	53E
A*3009	124I
A*3009	63E
A*3009	144Q
A*3009	123Y
A*3009	161E
A*3009	61D
A*3009	171Y
A*3009	88S
A*3009	148E
A*3009	79G
A*3009	147W
A*3009	80T
A*3009	142I
A*3009	102D
A*3009	141Q
A*3009	140A
A*3009	132S
A*3009	157R
A*3009	168L
A*3009	159Y
A*3009	128E
A*3009	137D
A*3009	167W
A*3009	133W
A*3009	134T
A*3009	158A
A*3009	129D
A*3009	125A
A*3009	166E
A*3009	155Q
A*3009	135A
A*3009	156L
A*3009	176K
A*3009	177E
A*3009	165V
A*3009	178T
A*3009	182T
A*3009	152V
A*3009	179L
A*3009	164C
A*3009	180Q
A*3009	153A
A*3009	126L
A*3009	163T
A*3009	136A
A*3009	130L
A*3009	181R
A*3009	154E
A*3009	175G
A*3009	174N
A*3010	98M
A*3010	248V
A*3010	90A
A*3010	268K
A*3010	107G
A*3010	169R
A*3010	91G
A*3010	172L
A*3010	65R
A*3010	186K
A*3010	64T
A*3010	157R
A*3010	99H
A*3010	149A
A*3010	121K
A*3010	246A
A*3010	101C
A*3010	151R
A*3010	70H
A*3010	273R
A*3010	100G
A*3010	131R
A*3010	112G
A*3010	162G
A*3010	117A
A*3010	261V
A*3010	119D
A*3010	173E
A*3010	85Y
A*3010	196D
A*3010	93H
A*3010	145R
A*3010	122D
A*3010	160L
A*3010	109F
A*3010	127N
A*3010	60W
A*3010	270L
A*3010	106D
A*3010	150A
A*3010	111R
A*3010	138M
A*3010	52I
A*3010	148E
A*3010	62Q
A*3010	170R
A*3010	72Q
A*3010	144Q
A*3010	54Q
A*3010	161E
A*3010	69A
A*3010	171Y
A*3010	74D
A*3010	141Q
A*3010	51W
A*3010	146K
A*3010	114E
A*3010	159Y
A*3010	84Y
A*3010	185P
A*3010	87Q
A*3010	197H
A*3010	94T
A*3010	140A
A*3010	105S
A*3010	147W
A*3010	110L
A*3010	175G
A*3010	76E
A*3010	132S
A*3010	55E
A*3010	139A
A*3010	115Q
A*3010	167W
A*3010	82R
A*3010	143T
A*3010	120G
A*3010	142I
A*3010	89E
A*3010	128E
A*3010	95I
A*3010	168L
A*3010	83G
A*3010	183D
A*3010	116H
A*3010	134T
A*3010	68K
A*3010	133W
A*3010	75R
A*3010	184P
A*3010	71S
A*3010	158A
A*3010	118Y
A*3010	198E
A*3010	66N
A*3010	207G
A*3010	108R
A*3010	253E
A*3010	59Y
A*3010	199A
A*3010	67V
A*3010	152R
A*3010	77N
A*3010	155Q
A*3010	113Y
A*3010	267P
A*3010	96Q
A*3010	125A
A*3010	81L
A*3010	166E
A*3010	104G
A*3010	194I
A*3010	73T
A*3010	192H
A*3010	88S
A*3010	177E
A*3010	79G
A*3010	176K
A*3010	86N
A*3010	188H
A*3010	53E
A*3010	187T
A*3010	92S
A*3010	129D
A*3010	63E
A*3010	165V
A*3010	103V
A*3010	193P
A*3010	78L
A*3010	156L
A*3010	97I
A*3010	191H
A*3010	57P
A*3010	178T
A*3010	56R
A*3010	195S
A*3010	58E
A*3010	189M
A*3010	123Y
A*3010	135A
A*3010	124I
A*3010	219R
A*3010	80T
A*3010	137D
A*3010	61D
A*3010	153A
A*3010	102D
A*3010	179L
A*3010	12V
A*3010	164C
A*3010	23I
A*3010	130L
A*3010	4S
A*3010	182T
A*3010	43Q
A*3010	136A
A*3010	24A
A*3010	190T
A*3010	7Y
A*3010	126L
A*3010	46E
A*3010	180Q
A*3010	13S
A*3010	154E
A*3010	25V
A*3010	181R
A*3010	26G
A*3010	163T
A*3010	48R
A*3010	245A
A*3010	14R
A*3010	174N
A*3010	27Y
A*3010	44R
A*3010	41A
A*3010	45M
A*3010	28V
A*3010	2S
A*3010	8F
A*3010	15P
A*3010	29D
A*3010	30D
A*3010	3H
A*3010	16G
A*3010	31T
A*3010	5M
A*3010	21R
A*3010	32Q
A*3010	49A
A*3010	9S
A*3010	47P
A*3010	17S
A*3010	33F
A*3010	34V
A*3010	18G
A*3010	35R
A*3010	36F
A*3010	10T
A*3010	19E
A*3010	37D
A*3010	38S
A*3010	20P
A*3010	39D
A*3010	6R
A*3010	40A
A*3010	11S
A*3010	50P
A*3010	42S
A*3010	22F
A*3101	131R
A*3101	12V
A*3101	273R
A*3101	23I
A*3101	185P
A*3101	43Q
A*3101	152V
A*3101	4S
A*3101	167W
A*3101	46E
A*3101	246S
A*3101	24A
A*3101	175G
A*3101	7Y
A*3101	276P
A*3101	13S
A*3101	160L
A*3101	25V
A*3101	145R
A*3101	48R
A*3101	261V
A*3101	26G
A*3101	172L
A*3101	14R
A*3101	151R
A*3101	27Y
A*3101	173E
A*3101	28V
A*3101	275E
A*3101	2S
A*3101	162G
A*3101	8F
A*3101	150A
A*3101	15P
A*3101	148E
A*3101	45M
A*3101	127N
A*3101	29D
A*3101	138M
A*3101	44R
A*3101	248V
A*3101	30D
A*3101	270L
A*3101	3H
A*3101	196D
A*3101	16G
A*3101	174N
A*3101	31T
A*3101	144Q
A*3101	49A
A*3101	170R
A*3101	5M
A*3101	171Y
A*3101	32Q
A*3101	161E
A*3101	9T
A*3101	197H
A*3101	21R
A*3101	146K
A*3101	1G
A*3101	149A
A*3101	17R
A*3101	134T
A*3101	33F
A*3101	169R
A*3101	34V
A*3101	147W
A*3101	18G
A*3101	132S
A*3101	35R
A*3101	139A
A*3101	36F
A*3101	141Q
A*3101	10T
A*3101	140A
A*3101	19E
A*3101	268K
A*3101	37D
A*3101	128E
A*3101	38S
A*3101	183D
A*3101	47P
A*3101	142I
A*3101	20P
A*3101	168L
A*3101	39D
A*3101	143T
A*3101	6R
A*3101	133W
A*3101	40A
A*3101	159Y
A*3101	11S
A*3101	158A
A*3101	50P
A*3101	184P
A*3101	41A
A*3101	198E
A*3101	42S
A*3101	166E
A*3101	22F
A*3101	188H
A*3101	115Q
A*3101	176K
A*3101	107G
A*3101	177E
A*3101	98M
A*3101	186K
A*3101	122D
A*3101	191H
A*3101	101C
A*3101	165V
A*3101	99Y
A*3101	194V
A*3101	109F
A*3101	137D
A*3101	112G
A*3101	157R
A*3101	100G
A*3101	199A
A*3101	70H
A*3101	207S
A*3101	121K
A*3101	192H
A*3101	90A
A*3101	267P
A*3101	119D
A*3101	125A
A*3101	85Y
A*3101	178T
A*3101	117A
A*3101	195S
A*3101	93H
A*3101	156L
A*3101	62Q
A*3101	129D
A*3101	106D
A*3101	193A
A*3101	52I
A*3101	187T
A*3101	64T
A*3101	135A
A*3101	72Q
A*3101	189M
A*3101	111R
A*3101	130L
A*3101	51W
A*3101	179L
A*3101	81L
A*3101	136A
A*3101	74D
A*3101	253Q
A*3101	114Q
A*3101	180Q
A*3101	84Y
A*3101	190T
A*3101	54Q
A*3101	126L
A*3101	69A
A*3101	219R
A*3101	60W
A*3101	155Q
A*3101	94T
A*3101	164C
A*3101	105S
A*3101	154E
A*3101	110L
A*3101	181R
A*3101	76V
A*3101	182T
A*3101	87Q
A*3101	245A
A*3101	91G
A*3101	163T
A*3101	88S
A*3101	153A
A*3101	89E
A*3101	65R
A*3101	73I
A*3101	120G
A*3101	83G
A*3101	95I
A*3101	116D
A*3101	108R
A*3101	118Y
A*3101	68K
A*3101	55E
A*3101	66N
A*3101	75R
A*3101	71S
A*3101	113Y
A*3101	96Q
A*3101	77D
A*3101	59Y
A*3101	67V
A*3101	97M
A*3101	103V
A*3101	63E
A*3101	104G
A*3101	82R
A*3101	86N
A*3101	58E
A*3101	57P
A*3101	78L
A*3101	123Y
A*3101	92S
A*3101	56R
A*3101	53E
A*3101	124I
A*3101	80T
A*3101	102D
A*3101	61D
A*3101	79G
A*3102	137D
A*3102	98M
A*3102	148E
A*3102	99Y
A*3102	152V
A*3102	101C
A*3102	134T
A*3102	88S
A*3102	172L
A*3102	107G
A*3102	151R
A*3102	112G
A*3102	162G
A*3102	121K
A*3102	173E
A*3102	100G
A*3102	138M
A*3102	115Q
A*3102	127N
A*3102	70H
A*3102	131R
A*3102	90A
A*3102	150A
A*3102	93H
A*3102	144Q
A*3102	117A
A*3102	171Y
A*3102	119D
A*3102	170R
A*3102	85Y
A*3102	161E
A*3102	106D
A*3102	139A
A*3102	72Q
A*3102	149A
A*3102	64T
A*3102	132S
A*3102	111R
A*3102	160L
A*3102	52I
A*3102	145R
A*3102	105S
A*3102	146K
A*3102	69A
A*3102	147W
A*3102	74D
A*3102	142I
A*3102	54Q
A*3102	169R
A*3102	60W
A*3102	141Q
A*3102	84Y
A*3102	143T
A*3102	62Q
A*3102	140A
A*3102	110L
A*3102	128E
A*3102	114Q
A*3102	168L
A*3102	76V
A*3102	159Y
A*3102	94T
A*3102	158A
A*3102	51W
A*3102	133W
A*3102	87Q
A*3102	178T
A*3102	97M
A*3102	157R
A*3102	122D
A*3102	167W
A*3102	65R
A*3102	125A
A*3102	91G
A*3102	166E
A*3102	109F
A*3102	135A
A*3102	120G
A*3102	129D
A*3102	83G
A*3102	156L
A*3102	95I
A*3102	174N
A*3102	116D
A*3102	165V
A*3102	66K
A*3102	177E
A*3102	77D
A*3102	179L
A*3102	96Q
A*3102	155Q
A*3102	89E
A*3102	154E
A*3102	113Y
A*3102	163T
A*3102	118Y
A*3102	126L
A*3102	68K
A*3102	182T
A*3102	75R
A*3102	180Q
A*3102	59Y
A*3102	164C
A*3102	55E
A*3102	176K
A*3102	108R
A*3102	181R
A*3102	71S
A*3102	130L
A*3102	67V
A*3102	136A
A*3102	80T
A*3102	153A
A*3102	58E
A*3102	175G
A*3102	57P
A*3102	46E
A*3102	86N
A*3102	12V
A*3102	102D
A*3102	48R
A*3102	104G
A*3102	23I
A*3102	56R
A*3102	50P
A*3102	82R
A*3102	4S
A*3102	92S
A*3102	24A
A*3102	123Y
A*3102	7Y
A*3102	78L
A*3102	13S
A*3102	53E
A*3102	25V
A*3102	124I
A*3102	26G
A*3102	63E
A*3102	14R
A*3102	103V
A*3102	27Y
A*3102	79G
A*3102	28V
A*3102	81L
A*3102	8F
A*3102	73I
A*3102	2S
A*3102	61D
A*3102	15P
A*3102	29D
A*3102	44R
A*3102	45M
A*3102	30D
A*3102	49A
A*3102	3H
A*3102	16G
A*3102	31T
A*3102	5M
A*3102	32Q
A*3102	9T
A*3102	17R
A*3102	33F
A*3102	34V
A*3102	43Q
A*3102	18G
A*3102	35R
A*3102	36F
A*3102	10T
A*3102	19E
A*3102	37D
A*3102	47P
A*3102	38S
A*3102	20P
A*3102	39D
A*3102	6R
A*3102	40A
A*3102	11S
A*3102	21R
A*3102	41A
A*3102	42S
A*3102	22F
A*3106	107G
A*3106	12V
A*3106	98M
A*3106	22F
A*3106	100G
A*3106	23I
A*3106	121K
A*3106	4S
A*3106	88S
A*3106	24A
A*3106	112G
A*3106	7Y
A*3106	70H
A*3106	43Q
A*3106	115Q
A*3106	13S
A*3106	99Y
A*3106	25V
A*3106	101C
A*3106	46E
A*3106	90A
A*3106	26G
A*3106	119D
A*3106	42S
A*3106	117A
A*3106	14R
A*3106	85Y
A*3106	27Y
A*3106	93H
A*3106	28V
A*3106	105S
A*3106	49A
A*3106	106D
A*3106	8F
A*3106	72Q
A*3106	2S
A*3106	110L
A*3106	45M
A*3106	111R
A*3106	15P
A*3106	52I
A*3106	44R
A*3106	64T
A*3106	48R
A*3106	54Q
A*3106	29D
A*3106	76V
A*3106	30D
A*3106	84Y
A*3106	3H
A*3106	74D
A*3106	16G
A*3106	60W
A*3106	31T
A*3106	62Q
A*3106	5M
A*3106	69A
A*3106	32Q
A*3106	114R
A*3106	9T
A*3106	94T
A*3106	17R
A*3106	87Q
A*3106	33F
A*3106	96Q
A*3106	34V
A*3106	109F
A*3106	18G
A*3106	77D
A*3106	50P
A*3106	102D
A*3106	35R
A*3106	91G
A*3106	36F
A*3106	113Y
A*3106	10T
A*3106	65R
A*3106	19E
A*3106	80T
A*3106	37D
A*3106	122D
A*3106	38S
A*3106	83G
A*3106	20P
A*3106	95I
A*3106	39D
A*3106	116D
A*3106	6R
A*3106	120G
A*3106	47P
A*3106	75R
A*3106	40A
A*3106	118Y
A*3106	11S
A*3106	89E
A*3106	21R
A*3106	68K
A*3106	41A
A*3106	108R
A*3106	51W
A*3106	55E
A*3106	152V
A*3106	66N
A*3106	137D
A*3106	67V
A*3106	162G
A*3106	59Y
A*3106	172L
A*3106	71S
A*3106	151R
A*3106	104G
A*3106	173E
A*3106	56R
A*3106	131R
A*3106	86N
A*3106	127N
A*3106	97M
A*3106	138M
A*3106	78L
A*3106	171Y
A*3106	92S
A*3106	161E
A*3106	123Y
A*3106	144Q
A*3106	82R
A*3106	150A
A*3106	63E
A*3106	170R
A*3106	124I
A*3106	132S
A*3106	58E
A*3106	160L
A*3106	57P
A*3106	147W
A*3106	103V
A*3106	146K
A*3106	81L
A*3106	145R
A*3106	79G
A*3106	142I
A*3106	61D
A*3106	149A
A*3106	73I
A*3106	143T
A*3106	53E
A*3106	140A
A*3106	128E
A*3106	148E
A*3106	169R
A*3106	139A
A*3106	168L
A*3106	141Q
A*3106	158A
A*3106	133W
A*3106	159Y
A*3106	135A
A*3106	174N
A*3106	157R
A*3106	134T
A*3106	167W
A*3106	125A
A*3106	166E
A*3106	129D
A*3106	156L
A*3106	154E
A*3106	165V
A*3106	179L
A*3106	178T
A*3106	163T
A*3106	126L
A*3106	182T
A*3106	176K
A*3106	180Q
A*3106	164C
A*3106	177E
A*3106	155Q
A*3106	181R
A*3106	130L
A*3106	136A
A*3106	175G
A*3106	153A
A*3108	110L
A*3108	174N
A*3108	112G
A*3108	162G
A*3108	105S
A*3108	152V
A*3108	100G
A*3108	173E
A*3108	107G
A*3108	151R
A*3108	121K
A*3108	172L
A*3108	102D
A*3108	137D
A*3108	80I
A*3108	127N
A*3108	88S
A*3108	131R
A*3108	98M
A*3108	138M
A*3108	70H
A*3108	144Q
A*3108	115Q
A*3108	161E
A*3108	99Y
A*3108	150A
A*3108	101C
A*3108	171Y
A*3108	90A
A*3108	170R
A*3108	119D
A*3108	145R
A*3108	85Y
A*3108	146K
A*3108	117A
A*3108	147W
A*3108	93H
A*3108	140A
A*3108	52I
A*3108	128E
A*3108	76E
A*3108	143T
A*3108	111R
A*3108	158A
A*3108	106D
A*3108	149A
A*3108	64T
A*3108	139A
A*3108	74D
A*3108	169R
A*3108	60W
A*3108	141Q
A*3108	62E
A*3108	148E
A*3108	72Q
A*3108	132S
A*3108	84Y
A*3108	168L
A*3108	87Q
A*3108	160L
A*3108	94T
A*3108	142I
A*3108	54Q
A*3108	159Y
A*3108	69A
A*3108	133W
A*3108	114Q
A*3108	125A
A*3108	91G
A*3108	134T
A*3108	109F
A*3108	157R
A*3108	122D
A*3108	167W
A*3108	120G
A*3108	129D
A*3108	83R
A*3108	166E
A*3108	95I
A*3108	156L
A*3108	116D
A*3108	182T
A*3108	65G
A*3108	163T
A*3108	67V
A*3108	126L
A*3108	68K
A*3108	165V
A*3108	118Y
A*3108	179L
A*3108	89E
A*3108	135A
A*3108	75R
A*3108	176K
A*3108	55E
A*3108	178T
A*3108	66K
A*3108	177E
A*3108	59Y
A*3108	181R
A*3108	71S
A*3108	164C
A*3108	108R
A*3108	155Q
A*3108	104G
A*3108	180Q
A*3108	97M
A*3108	154E
A*3108	77N
A*3108	153A
A*3108	96Q
A*3108	175G
A*3108	123Y
A*3108	136A
A*3108	113Y
A*3108	130L
A*3108	78L
A*3108	12V
A*3108	82L
A*3108	23I
A*3108	92S
A*3108	49A
A*3108	86N
A*3108	43Q
A*3108	124I
A*3108	4S
A*3108	57P
A*3108	24A
A*3108	58E
A*3108	7Y
A*3108	56G
A*3108	13S
A*3108	61D
A*3108	25V
A*3108	103V
A*3108	46E
A*3108	79R
A*3108	26G
A*3108	81A
A*3108	14R
A*3108	53E
A*3108	27Y
A*3108	63E
A*3108	44R
A*3108	73T
A*3108	45M
A*3108	28V
A*3108	8F
A*3108	2S
A*3108	15P
A*3108	29D
A*3108	48R
A*3108	30D
A*3108	3H
A*3108	16G
A*3108	31T
A*3108	5M
A*3108	32Q
A*3108	9T
A*3108	17R
A*3108	33F
A*3108	34V
A*3108	50P
A*3108	18G
A*3108	35R
A*3108	36F
A*3108	10T
A*3108	19E
A*3108	37D
A*3108	38S
A*3108	22F
A*3108	20P
A*3108	39D
A*3108	6R
A*3108	40A
A*3108	47P
A*3108	11S
A*3108	21R
A*3108	51W
A*3108	41A
A*3108	42S
A*3201	102D
A*3201	43Q
A*3201	80I
A*3201	12V
A*3201	107G
A*3201	23I
A*3201	76E
A*3201	4S
A*3201	115Q
A*3201	24A
A*3201	70H
A*3201	7Y
A*3201	88S
A*3201	13S
A*3201	98M
A*3201	25V
A*3201	85Y
A*3201	26G
A*3201	100G
A*3201	14R
A*3201	99Y
A*3201	46E
A*3201	121K
A*3201	27Y
A*3201	112G
A*3201	28V
A*3201	90A
A*3201	8F
A*3201	101C
A*3201	21R
A*3201	119D
A*3201	2S
A*3201	93H
A*3201	15P
A*3201	117A
A*3201	29D
A*3201	106D
A*3201	48R
A*3201	64T
A*3201	30D
A*3201	111R
A*3201	45M
A*3201	72Q
A*3201	3H
A*3201	52I
A*3201	44R
A*3201	84Y
A*3201	16G
A*3201	87Q
A*3201	31T
A*3201	74D
A*3201	5M
A*3201	60W
A*3201	32Q
A*3201	69A
A*3201	9F
A*3201	54Q
A*3201	17R
A*3201	94T
A*3201	33F
A*3201	114Q
A*3201	1G
A*3201	62Q
A*3201	50P
A*3201	120G
A*3201	34V
A*3201	103V
A*3201	18G
A*3201	67V
A*3201	49A
A*3201	97M
A*3201	35R
A*3201	105P
A*3201	36F
A*3201	83R
A*3201	10T
A*3201	91G
A*3201	19E
A*3201	110L
A*3201	37D
A*3201	95I
A*3201	38S
A*3201	122D
A*3201	20P
A*3201	109L
A*3201	47P
A*3201	116D
A*3201	39D
A*3201	65R
A*3201	6R
A*3201	89E
A*3201	40A
A*3201	55E
A*3201	11S
A*3201	59Y
A*3201	51W
A*3201	75R
A*3201	22F
A*3201	66N
A*3201	41A
A*3201	118Y
A*3201	42S
A*3201	71S
A*3201	158A
A*3201	108R
A*3201	261V
A*3201	68K
A*3201	174N
A*3201	81A
A*3201	152V
A*3201	61D
A*3201	173E
A*3201	123Y
A*3201	151R
A*3201	78L
A*3201	172L
A*3201	79R
A*3201	137D
A*3201	96Q
A*3201	276P
A*3201	104G
A*3201	131R
A*3201	77S
A*3201	273R
A*3201	82L
A*3201	270L
A*3201	92S
A*3201	162G
A*3201	113Y
A*3201	246S
A*3201	86N
A*3201	127N
A*3201	57P
A*3201	248V
A*3201	124I
A*3201	196D
A*3201	125A
A*3201	144Q
A*3201	53E
A*3201	161E
A*3201	73T
A*3201	138M
A*3201	56G
A*3201	170R
A*3201	63E
A*3201	150A
A*3201	58E
A*3201	171Y
A*3201	141Q
A*3201	268K
A*3201	168L
A*3201	139A
A*3201	149A
A*3201	197H
A*3201	176K
A*3201	147W
A*3201	132S
A*3201	183D
A*3201	145R
A*3201	146K
A*3201	148E
A*3201	169R
A*3201	160L
A*3201	143T
A*3201	128E
A*3201	142I
A*3201	184A
A*3201	140A
A*3201	133W
A*3201	198E
A*3201	159Y
A*3201	157R
A*3201	195S
A*3201	185P
A*3201	192H
A*3201	186K
A*3201	134T
A*3201	199A
A*3201	267P
A*3201	207S
A*3201	167W
A*3201	194V
A*3201	193A
A*3201	187T
A*3201	166E
A*3201	156L
A*3201	189M
A*3201	129D
A*3201	188H
A*3201	179L
A*3201	178T
A*3201	253Q
A*3201	191H
A*3201	153A
A*3201	135A
A*3201	219R
A*3201	177E
A*3201	165V
A*3201	181R
A*3201	245A
A*3201	190T
A*3201	164C
A*3201	155Q
A*3201	180Q
A*3201	126L
A*3201	163T
A*3201	175G
A*3201	182T
A*3201	154E
A*3201	275E
A*3201	130L
A*3201	136A
A*3202	115Q
A*3202	174N
A*3202	85Y
A*3202	173E
A*3202	102D
A*3202	172L
A*3202	80I
A*3202	152V
A*3202	97M
A*3202	137D
A*3202	70H
A*3202	151H
A*3202	107G
A*3202	161E
A*3202	88S
A*3202	276P
A*3202	98M
A*3202	144Q
A*3202	112G
A*3202	270L
A*3202	121K
A*3202	162G
A*3202	99Y
A*3202	273R
A*3202	100G
A*3202	246S
A*3202	90A
A*3202	127N
A*3202	101C
A*3202	261V
A*3202	93H
A*3202	248V
A*3202	117A
A*3202	170R
A*3202	119D
A*3202	131R
A*3202	64T
A*3202	150A
A*3202	123Y
A*3202	171Y
A*3202	124I
A*3202	138M
A*3202	106D
A*3202	196D
A*3202	87Q
A*3202	183D
A*3202	52I
A*3202	197H
A*3202	111R
A*3202	149A
A*3202	60W
A*3202	184A
A*3202	94T
A*3202	145R
A*3202	69A
A*3202	146K
A*3202	72Q
A*3202	147W
A*3202	114Q
A*3202	148E
A*3202	74D
A*3202	132S
A*3202	84Y
A*3202	169R
A*3202	54Q
A*3202	160L
A*3202	62Q
A*3202	139A
A*3202	95I
A*3202	141Q
A*3202	55E
A*3202	128E
A*3202	59Y
A*3202	168L
A*3202	61D
A*3202	268K
A*3202	76E
A*3202	142I
A*3202	105P
A*3202	140A
A*3202	81A
A*3202	133W
A*3202	116D
A*3202	198E
A*3202	109L
A*3202	143T
A*3202	79R
A*3202	159Y
A*3202	91G
A*3202	185P
A*3202	122D
A*3202	153A
A*3202	65R
A*3202	158A
A*3202	110L
A*3202	199A
A*3202	120G
A*3202	167W
A*3202	89E
A*3202	267P
A*3202	83R
A*3202	207S
A*3202	66N
A*3202	134T
A*3202	118Y
A*3202	186K
A*3202	71S
A*3202	189M
A*3202	108R
A*3202	192H
A*3202	75R
A*3202	157R
A*3202	68K
A*3202	156Q
A*3202	77S
A*3202	166E
A*3202	73T
A*3202	187T
A*3202	96Q
A*3202	129D
A*3202	57P
A*3202	193A
A*3202	67V
A*3202	194V
A*3202	82L
A*3202	181R
A*3202	104G
A*3202	175G
A*3202	53E
A*3202	163T
A*3202	92S
A*3202	253Q
A*3202	63E
A*3202	178T
A*3202	113Y
A*3202	195S
A*3202	86N
A*3202	188H
A*3202	125A
A*3202	135A
A*3202	78L
A*3202	177E
A*3202	103V
A*3202	191H
A*3202	56G
A*3202	219R
A*3202	58E
A*3202	179L
A*3202	12V
A*3202	165V
A*3202	23I
A*3202	245A
A*3202	11S
A*3202	155Q
A*3202	4S
A*3202	190T
A*3202	24A
A*3202	180Q
A*3202	7Y
A*3202	164C
A*3202	13S
A*3202	154E
A*3202	43Q
A*3202	182T
A*3202	25V
A*3202	275E
A*3202	26G
A*3202	130L
A*3202	46E
A*3202	136A
A*3202	14R
A*3202	126L
A*3202	27Y
A*3202	176K
A*3202	28V
A*3202	8F
A*3202	15P
A*3202	2S
A*3202	29D
A*3202	48R
A*3202	30D
A*3202	44R
A*3202	45M
A*3202	3H
A*3202	16G
A*3202	31T
A*3202	5M
A*3202	32Q
A*3202	9F
A*3202	50P
A*3202	17R
A*3202	33F
A*3202	34V
A*3202	1G
A*3202	49A
A*3202	18G
A*3202	35R
A*3202	36F
A*3202	10T
A*3202	19E
A*3202	37D
A*3202	38S
A*3202	20P
A*3202	39D
A*3202	47P
A*3202	6R
A*3202	40A
A*3202	51W
A*3202	21R
A*3202	41A
A*3202	42S
A*3202	22F
A*3203	144Q
A*3203	12V
A*3203	153A
A*3203	23I
A*3203	172L
A*3203	42S
A*3203	161E
A*3203	4S
A*3203	174N
A*3203	24A
A*3203	137D
A*3203	7Y
A*3203	151R
A*3203	13S
A*3203	152V
A*3203	46E
A*3203	173E
A*3203	25V
A*3203	170R
A*3203	26G
A*3203	127N
A*3203	14R
A*3203	162G
A*3203	43Q
A*3203	150A
A*3203	27Y
A*3203	131R
A*3203	28V
A*3203	138M
A*3203	8F
A*3203	171Y
A*3203	48R
A*3203	160L
A*3203	15P
A*3203	149A
A*3203	2S
A*3203	169R
A*3203	11S
A*3203	145R
A*3203	29D
A*3203	146K
A*3203	30D
A*3203	147W
A*3203	16G
A*3203	148E
A*3203	3H
A*3203	132S
A*3203	31T
A*3203	140A
A*3203	44R
A*3203	142I
A*3203	5M
A*3203	139A
A*3203	45M
A*3203	141Q
A*3203	32Q
A*3203	143T
A*3203	9F
A*3203	168L
A*3203	17R
A*3203	159Y
A*3203	33F
A*3203	128E
A*3203	49A
A*3203	133W
A*3203	34V
A*3203	181R
A*3203	18G
A*3203	163T
A*3203	35R
A*3203	158A
A*3203	50P
A*3203	175G
A*3203	36F
A*3203	167W
A*3203	10T
A*3203	134T
A*3203	19E
A*3203	182T
A*3203	37D
A*3203	156L
A*3203	38S
A*3203	157R
A*3203	20P
A*3203	129D
A*3203	39D
A*3203	166E
A*3203	6R
A*3203	135A
A*3203	47P
A*3203	155Q
A*3203	40A
A*3203	165V
A*3203	51W
A*3203	178T
A*3203	21R
A*3203	180Q
A*3203	41A
A*3203	179L
A*3203	22F
A*3203	164C
A*3203	61D
A*3203	154E
A*3203	97M
A*3203	136A
A*3203	80I
A*3203	177E
A*3203	107G
A*3203	130L
A*3203	79R
A*3203	176K
A*3203	81A
A*3203	126L
A*3203	102D
A*3203	98M
A*3203	88S
A*3203	93H
A*3203	90A
A*3203	99Y
A*3203	100G
A*3203	70H
A*3203	101C
A*3203	117A
A*3203	121K
A*3203	119D
A*3203	115Q
A*3203	112G
A*3203	87Q
A*3203	85Y
A*3203	60W
A*3203	82L
A*3203	124I
A*3203	123Y
A*3203	106D
A*3203	114Q
A*3203	52I
A*3203	69A
A*3203	64T
A*3203	94T
A*3203	111R
A*3203	62Q
A*3203	72Q
A*3203	54Q
A*3203	74D
A*3203	84Y
A*3203	105P
A*3203	53E
A*3203	116D
A*3203	73T
A*3203	57P
A*3203	76E
A*3203	109L
A*3203	65R
A*3203	91G
A*3203	122D
A*3203	110L
A*3203	83R
A*3203	71S
A*3203	95I
A*3203	120G
A*3203	118Y
A*3203	89E
A*3203	66N
A*3203	108R
A*3203	68K
A*3203	75R
A*3203	92S
A*3203	67V
A*3203	63E
A*3203	55E
A*3203	104G
A*3203	59Y
A*3203	96Q
A*3203	77N
A*3203	86N
A*3203	113Y
A*3203	125A
A*3203	58E
A*3203	78L
A*3203	103V
A*3203	56G
A*3204	163T
A*3204	60W
A*3204	150A
A*3204	93H
A*3204	175G
A*3204	80I
A*3204	170R
A*3204	97I
A*3204	137D
A*3204	98M
A*3204	174N
A*3204	81A
A*3204	176K
A*3204	107G
A*3204	153A
A*3204	87Q
A*3204	151H
A*3204	79R
A*3204	152E
A*3204	53E
A*3204	138M
A*3204	57P
A*3204	173E
A*3204	102D
A*3204	172L
A*3204	61D
A*3204	162G
A*3204	88S
A*3204	171Y
A*3204	73T
A*3204	127N
A*3204	119D
A*3204	131R
A*3204	78L
A*3204	161D
A*3204	90A
A*3204	160L
A*3204	99Y
A*3204	144K
A*3204	100G
A*3204	169R
A*3204	101C
A*3204	149A
A*3204	117A
A*3204	146K
A*3204	70H
A*3204	132S
A*3204	121K
A*3204	147W
A*3204	112G
A*3204	148E
A*3204	115Q
A*3204	145R
A*3204	85Y
A*3204	139A
A*3204	114R
A*3204	141Q
A*3204	94T
A*3204	168L
A*3204	62Q
A*3204	142I
A*3204	124I
A*3204	133W
A*3204	69A
A*3204	128E
A*3204	92S
A*3204	159Y
A*3204	106D
A*3204	140A
A*3204	54Q
A*3204	143T
A*3204	64T
A*3204	156L
A*3204	111R
A*3204	167W
A*3204	72Q
A*3204	158A
A*3204	52I
A*3204	134T
A*3204	74D
A*3204	157R
A*3204	84Y
A*3204	129D
A*3204	76E
A*3204	166E
A*3204	63E
A*3204	136A
A*3204	71S
A*3204	135A
A*3204	65R
A*3204	130L
A*3204	105S
A*3204	155Q
A*3204	91G
A*3204	180Q
A*3204	110L
A*3204	178T
A*3204	109F
A*3204	165V
A*3204	122D
A*3204	164C
A*3204	120G
A*3204	179L
A*3204	95I
A*3204	177E
A*3204	83R
A*3204	154E
A*3204	108R
A*3204	181R
A*3204	118Y
A*3204	182T
A*3204	66N
A*3204	126L
A*3204	68K
A*3204	12V
A*3204	75R
A*3204	46E
A*3204	116D
A*3204	23I
A*3204	89E
A*3204	4S
A*3204	55E
A*3204	24A
A*3204	58E
A*3204	7Y
A*3204	67V
A*3204	13S
A*3204	104G
A*3204	25V
A*3204	77S
A*3204	26G
A*3204	113Y
A*3204	43Q
A*3204	86N
A*3204	14R
A*3204	96Q
A*3204	41A
A*3204	59Y
A*3204	27Y
A*3204	56G
A*3204	11S
A*3204	125A
A*3204	28V
A*3204	103V
A*3204	48R
A*3204	82L
A*3204	8F
A*3204	123Y
A*3204	15P
A*3204	2S
A*3204	29D
A*3204	30D
A*3204	16G
A*3204	3H
A*3204	31T
A*3204	5M
A*3204	32Q
A*3204	9F
A*3204	44R
A*3204	45M
A*3204	49A
A*3204	17R
A*3204	33F
A*3204	34V
A*3204	18G
A*3204	35R
A*3204	36F
A*3204	10T
A*3204	50P
A*3204	19E
A*3204	37D
A*3204	38S
A*3204	20P
A*3204	39D
A*3204	22F
A*3204	6R
A*3204	40A
A*3204	51W
A*3204	21R
A*3204	42S
A*3204	47P
A*3206	114Q
A*3206	11S
A*3206	79R
A*3206	12V
A*3206	107G
A*3206	23I
A*3206	69A
A*3206	4S
A*3206	81A
A*3206	24A
A*3206	119D
A*3206	7Y
A*3206	57P
A*3206	13S
A*3206	63E
A*3206	25V
A*3206	62Q
A*3206	43Q
A*3206	117A
A*3206	26G
A*3206	94T
A*3206	14R
A*3206	88S
A*3206	27Y
A*3206	97M
A*3206	46E
A*3206	80I
A*3206	28V
A*3206	61D
A*3206	8F
A*3206	53E
A*3206	15P
A*3206	73T
A*3206	2S
A*3206	102D
A*3206	29D
A*3206	100G
A*3206	30D
A*3206	98M
A*3206	16G
A*3206	101C
A*3206	48R
A*3206	70H
A*3206	3H
A*3206	121K
A*3206	31T
A*3206	99Y
A*3206	44R
A*3206	90A
A*3206	5M
A*3206	115Q
A*3206	45M
A*3206	112G
A*3206	32Q
A*3206	85Y
A*3206	9F
A*3206	54Q
A*3206	17R
A*3206	93H
A*3206	33F
A*3206	106D
A*3206	34V
A*3206	124I
A*3206	18G
A*3206	111R
A*3206	35R
A*3206	64T
A*3206	36F
A*3206	72Q
A*3206	49A
A*3206	74D
A*3206	10T
A*3206	84Y
A*3206	19E
A*3206	52I
A*3206	50P
A*3206	58E
A*3206	37D
A*3206	65R
A*3206	38S
A*3206	60W
A*3206	20P
A*3206	91G
A*3206	39D
A*3206	87Q
A*3206	6R
A*3206	122D
A*3206	22F
A*3206	76E
A*3206	40A
A*3206	105P
A*3206	51W
A*3206	110L
A*3206	21R
A*3206	109L
A*3206	41A
A*3206	95I
A*3206	42S
A*3206	108R
A*3206	47P
A*3206	120G
A*3206	175G
A*3206	83R
A*3206	137D
A*3206	68K
A*3206	171Y
A*3206	75R
A*3206	163T
A*3206	116D
A*3206	138M
A*3206	118Y
A*3206	151H
A*3206	66N
A*3206	152V
A*3206	89E
A*3206	153A
A*3206	86N
A*3206	174N
A*3206	67V
A*3206	162G
A*3206	104G
A*3206	172L
A*3206	113Y
A*3206	173E
A*3206	56G
A*3206	131R
A*3206	71S
A*3206	127N
A*3206	77S
A*3206	170R
A*3206	96Q
A*3206	144Q
A*3206	55E
A*3206	150A
A*3206	59Y
A*3206	161E
A*3206	125A
A*3206	132S
A*3206	78L
A*3206	149A
A*3206	92S
A*3206	145R
A*3206	123Y
A*3206	148E
A*3206	82L
A*3206	146K
A*3206	103V
A*3206	147W
A*3206	128E
A*3206	169R
A*3206	141Q
A*3206	139A
A*3206	160L
A*3206	168L
A*3206	133W
A*3206	142I
A*3206	159Y
A*3206	143T
A*3206	140A
A*3206	134T
A*3206	158A
A*3206	136A
A*3206	129D
A*3206	130L
A*3206	167W
A*3206	157R
A*3206	166E
A*3206	180Q
A*3206	176K
A*3206	156L
A*3206	165V
A*3206	178T
A*3206	135A
A*3206	179L
A*3206	164C
A*3206	155Q
A*3206	177E
A*3206	126L
A*3206	154E
A*3206	181R
A*3206	182T
A*3207	88S
A*3207	151R
A*3207	63E
A*3207	163T
A*3207	58E
A*3207	130L
A*3207	54Q
A*3207	153A
A*3207	53E
A*3207	136A
A*3207	61D
A*3207	152V
A*3207	97M
A*3207	174N
A*3207	73T
A*3207	180Q
A*3207	107G
A*3207	175G
A*3207	80I
A*3207	137D
A*3207	79R
A*3207	172L
A*3207	81A
A*3207	131R
A*3207	102D
A*3207	173E
A*3207	101C
A*3207	162G
A*3207	57P
A*3207	127N
A*3207	98M
A*3207	171Y
A*3207	70H
A*3207	150A
A*3207	99Y
A*3207	149A
A*3207	100G
A*3207	138M
A*3207	90A
A*3207	168L
A*3207	112G
A*3207	132S
A*3207	115Q
A*3207	128E
A*3207	121K
A*3207	161E
A*3207	119D
A*3207	170R
A*3207	85Y
A*3207	145R
A*3207	93H
A*3207	144Q
A*3207	117A
A*3207	177E
A*3207	106D
A*3207	148E
A*3207	124I
A*3207	147W
A*3207	74D
A*3207	146K
A*3207	64T
A*3207	160L
A*3207	84Y
A*3207	169R
A*3207	52I
A*3207	133W
A*3207	111R
A*3207	139A
A*3207	72Q
A*3207	142I
A*3207	56G
A*3207	159Y
A*3207	122D
A*3207	140A
A*3207	108R
A*3207	143T
A*3207	60W
A*3207	141Q
A*3207	62Q
A*3207	158A
A*3207	94T
A*3207	176K
A*3207	114Q
A*3207	166E
A*3207	91G
A*3207	134T
A*3207	110L
A*3207	167W
A*3207	109L
A*3207	157R
A*3207	69A
A*3207	178T
A*3207	76E
A*3207	156L
A*3207	87Q
A*3207	129D
A*3207	105P
A*3207	179L
A*3207	68K
A*3207	164C
A*3207	120G
A*3207	135A
A*3207	83R
A*3207	165V
A*3207	75R
A*3207	155Q
A*3207	95I
A*3207	154E
A*3207	65R
A*3207	182T
A*3207	113Y
A*3207	181R
A*3207	89E
A*3207	12V
A*3207	118Y
A*3207	23I
A*3207	66N
A*3207	43Q
A*3207	116D
A*3207	4S
A*3207	78L
A*3207	24A
A*3207	104G
A*3207	7Y
A*3207	59Y
A*3207	13S
A*3207	77S
A*3207	25V
A*3207	71S
A*3207	26G
A*3207	67V
A*3207	14R
A*3207	96Q
A*3207	27Y
A*3207	55E
A*3207	28V
A*3207	125A
A*3207	8F
A*3207	86N
A*3207	15P
A*3207	92S
A*3207	46E
A*3207	103V
A*3207	11S
A*3207	82L
A*3207	29D
A*3207	123Y
A*3207	2S
A*3207	126L
A*3207	30D
A*3207	44R
A*3207	16G
A*3207	45M
A*3207	3H
A*3207	31T
A*3207	5M
A*3207	48R
A*3207	32Q
A*3207	9S
A*3207	17R
A*3207	33F
A*3207	51W
A*3207	34V
A*3207	18G
A*3207	35R
A*3207	36F
A*3207	50P
A*3207	10T
A*3207	49A
A*3207	19E
A*3207	37D
A*3207	38S
A*3207	20P
A*3207	39D
A*3207	6R
A*3207	40A
A*3207	21R
A*3207	41A
A*3207	42S
A*3207	47P
A*3207	22F
A*3301	73I
A*3301	12V
A*3301	81L
A*3301	23I
A*3301	79G
A*3301	4S
A*3301	107G
A*3301	24A
A*3301	58E
A*3301	7Y
A*3301	63N
A*3301	13S
A*3301	102D
A*3301	25V
A*3301	80T
A*3301	26G
A*3301	56G
A*3301	14R
A*3301	97M
A*3301	27Y
A*3301	53E
A*3301	28V
A*3301	57P
A*3301	44R
A*3301	61D
A*3301	8F
A*3301	70H
A*3301	43Q
A*3301	98M
A*3301	45M
A*3301	88S
A*3301	11S
A*3301	100G
A*3301	15P
A*3301	101C
A*3301	29D
A*3301	112G
A*3301	2S
A*3301	115Q
A*3301	46E
A*3301	121K
A*3301	30D
A*3301	99Y
A*3301	16G
A*3301	90A
A*3301	31T
A*3301	85Y
A*3301	3H
A*3301	119D
A*3301	5M
A*3301	93H
A*3301	32Q
A*3301	74D
A*3301	48R
A*3301	106D
A*3301	9T
A*3301	117A
A*3301	22F
A*3301	84Y
A*3301	51W
A*3301	124I
A*3301	17R
A*3301	86N
A*3301	50P
A*3301	64T
A*3301	33F
A*3301	72Q
A*3301	34V
A*3301	111R
A*3301	1G
A*3301	109F
A*3301	18G
A*3301	78L
A*3301	35R
A*3301	68K
A*3301	36F
A*3301	110L
A*3301	10T
A*3301	114Q
A*3301	19E
A*3301	94T
A*3301	49A
A*3301	75R
A*3301	37D
A*3301	62R
A*3301	38S
A*3301	60W
A*3301	20P
A*3301	69A
A*3301	39D
A*3301	76V
A*3301	6R
A*3301	105S
A*3301	40A
A*3301	54Q
A*3301	21R
A*3301	87Q
A*3301	47P
A*3301	66N
A*3301	41A
A*3301	91G
A*3301	52I
A*3301	116D
A*3301	42S
A*3301	89E
A*3301	136A
A*3301	118Y
A*3301	163T
A*3301	95I
A*3301	184P
A*3301	122D
A*3301	153A
A*3301	65R
A*3301	174N
A*3301	120G
A*3301	152V
A*3301	83G
A*3301	130L
A*3301	59Y
A*3301	176K
A*3301	77D
A*3301	168L
A*3301	108R
A*3301	128E
A*3301	96Q
A*3301	175G
A*3301	67V
A*3301	151R
A*3301	71S
A*3301	137D
A*3301	104G
A*3301	248V
A*3301	55E
A*3301	276P
A*3301	125A
A*3301	273R
A*3301	126L
A*3301	261V
A*3301	113Y
A*3301	246S
A*3301	82R
A*3301	172L
A*3301	92S
A*3301	173E
A*3301	103V
A*3301	270L
A*3301	123Y
A*3301	162G
A*3301	131R
A*3301	127N
A*3301	196D
A*3301	145R
A*3301	133W
A*3301	161E
A*3301	144Q
A*3301	171H
A*3301	150A
A*3301	148E
A*3301	138M
A*3301	147W
A*3301	197H
A*3301	146K
A*3301	170R
A*3301	177E
A*3301	198E
A*3301	159Y
A*3301	268K
A*3301	142I
A*3301	149A
A*3301	132S
A*3301	139A
A*3301	169R
A*3301	160L
A*3301	183D
A*3301	140A
A*3301	141Q
A*3301	143T
A*3301	185P
A*3301	189M
A*3301	166E
A*3301	158A
A*3301	207S
A*3301	199A
A*3301	267P
A*3301	192H
A*3301	186R
A*3301	134T
A*3301	167W
A*3301	193A
A*3301	187T
A*3301	194V
A*3301	157R
A*3301	179L
A*3301	245A
A*3301	129D
A*3301	275E
A*3301	164C
A*3301	154E
A*3301	191H
A*3301	188H
A*3301	195S
A*3301	219R
A*3301	156L
A*3301	253Q
A*3301	190T
A*3301	135A
A*3301	165V
A*3301	178T
A*3301	155Q
A*3301	180Q
A*3301	182T
A*3301	181R
A*3303	74D
A*3303	130L
A*3303	78L
A*3303	248V
A*3303	79G
A*3303	133W
A*3303	107G
A*3303	176K
A*3303	63N
A*3303	163T
A*3303	102D
A*3303	175G
A*3303	97M
A*3303	174N
A*3303	56G
A*3303	152V
A*3303	80T
A*3303	153A
A*3303	81L
A*3303	276P
A*3303	58E
A*3303	273R
A*3303	70H
A*3303	261V
A*3303	53E
A*3303	137D
A*3303	112G
A*3303	151R
A*3303	57P
A*3303	246S
A*3303	121K
A*3303	270L
A*3303	61D
A*3303	131R
A*3303	115Q
A*3303	173E
A*3303	98M
A*3303	136A
A*3303	73I
A*3303	127N
A*3303	88S
A*3303	172L
A*3303	99Y
A*3303	196D
A*3303	90A
A*3303	162G
A*3303	100G
A*3303	148E
A*3303	101C
A*3303	147W
A*3303	106D
A*3303	142I
A*3303	93H
A*3303	159Y
A*3303	84Y
A*3303	171Y
A*3303	119D
A*3303	150A
A*3303	85Y
A*3303	198E
A*3303	117A
A*3303	146K
A*3303	72Q
A*3303	138M
A*3303	64T
A*3303	197H
A*3303	124I
A*3303	161E
A*3303	96Q
A*3303	170R
A*3303	111R
A*3303	139A
A*3303	118Y
A*3303	169R
A*3303	94T
A*3303	132S
A*3303	89E
A*3303	178T
A*3303	116D
A*3303	149A
A*3303	114Q
A*3303	144Q
A*3303	66N
A*3303	268K
A*3303	76V
A*3303	179L
A*3303	60W
A*3303	145R
A*3303	54Q
A*3303	140A
A*3303	87Q
A*3303	183D
A*3303	105S
A*3303	160L
A*3303	69A
A*3303	141Q
A*3303	62R
A*3303	143T
A*3303	65R
A*3303	128E
A*3303	122D
A*3303	168L
A*3303	91G
A*3303	185P
A*3303	110L
A*3303	184P
A*3303	83G
A*3303	219R
A*3303	95I
A*3303	207S
A*3303	109F
A*3303	275E
A*3303	125A
A*3303	154E
A*3303	120G
A*3303	199A
A*3303	68K
A*3303	158A
A*3303	77D
A*3303	267P
A*3303	55E
A*3303	186K
A*3303	108R
A*3303	193A
A*3303	75R
A*3303	167W
A*3303	104G
A*3303	134T
A*3303	67V
A*3303	187T
A*3303	71S
A*3303	194V
A*3303	103V
A*3303	192H
A*3303	126L
A*3303	157R
A*3303	82R
A*3303	166E
A*3303	123Y
A*3303	195S
A*3303	59Y
A*3303	191H
A*3303	113Y
A*3303	189M
A*3303	92S
A*3303	245A
A*3303	86N
A*3303	177E
A*3303	44R
A*3303	188H
A*3303	12V
A*3303	156L
A*3303	45M
A*3303	253Q
A*3303	23I
A*3303	165V
A*3303	24A
A*3303	129D
A*3303	4S
A*3303	135A
A*3303	41A
A*3303	190T
A*3303	7Y
A*3303	155Q
A*3303	13S
A*3303	180Q
A*3303	25V
A*3303	182T
A*3303	26G
A*3303	164C
A*3303	14R
A*3303	181R
A*3303	27Y
A*3303	43Q
A*3303	11S
A*3303	28V
A*3303	8F
A*3303	15P
A*3303	29D
A*3303	46E
A*3303	2S
A*3303	30D
A*3303	16G
A*3303	31T
A*3303	3H
A*3303	48R
A*3303	5M
A*3303	32Q
A*3303	9T
A*3303	17R
A*3303	33F
A*3303	34V
A*3303	18G
A*3303	35R
A*3303	1G
A*3303	22F
A*3303	49A
A*3303	36F
A*3303	51W
A*3303	10T
A*3303	19E
A*3303	37D
A*3303	50P
A*3303	38S
A*3303	20P
A*3303	47P
A*3303	39D
A*3303	6R
A*3303	40A
A*3303	52I
A*3303	21R
A*3303	42S
A*3305	142I
A*3305	12V
A*3305	159Y
A*3305	23I
A*3305	175G
A*3305	24A
A*3305	176K
A*3305	4S
A*3305	163T
A*3305	7Y
A*3305	130L
A*3305	13S
A*3305	154E
A*3305	25V
A*3305	173E
A*3305	26G
A*3305	131R
A*3305	14R
A*3305	152V
A*3305	27Y
A*3305	127N
A*3305	46E
A*3305	153A
A*3305	28V
A*3305	151R
A*3305	8F
A*3305	174N
A*3305	15P
A*3305	162G
A*3305	29D
A*3305	136A
A*3305	2S
A*3305	137D
A*3305	43Q
A*3305	172L
A*3305	11S
A*3305	146K
A*3305	30D
A*3305	150A
A*3305	48R
A*3305	171H
A*3305	16G
A*3305	161E
A*3305	31T
A*3305	170R
A*3305	3H
A*3305	138M
A*3305	5M
A*3305	148E
A*3305	32Q
A*3305	169R
A*3305	9T
A*3305	132S
A*3305	17R
A*3305	144Q
A*3305	49A
A*3305	147W
A*3305	33F
A*3305	149A
A*3305	47P
A*3305	140A
A*3305	45M
A*3305	139A
A*3305	34V
A*3305	143T
A*3305	44R
A*3305	141Q
A*3305	18G
A*3305	179L
A*3305	35R
A*3305	145R
A*3305	36F
A*3305	160L
A*3305	22F
A*3305	168L
A*3305	10T
A*3305	177E
A*3305	51W
A*3305	133W
A*3305	19E
A*3305	158A
A*3305	37D
A*3305	128E
A*3305	38S
A*3305	167W
A*3305	20P
A*3305	134T
A*3305	39D
A*3305	157R
A*3305	6R
A*3305	165V
A*3305	40A
A*3305	166E
A*3305	50P
A*3305	135A
A*3305	52I
A*3305	129D
A*3305	21R
A*3305	156L
A*3305	41A
A*3305	180Q
A*3305	42S
A*3305	182T
A*3305	58E
A*3305	181R
A*3305	115Q
A*3305	178T
A*3305	84Y
A*3305	164C
A*3305	78L
A*3305	155Q
A*3305	112G
A*3305	121K
A*3305	79G
A*3305	107G
A*3305	102D
A*3305	63N
A*3305	56G
A*3305	80T
A*3305	81L
A*3305	97M
A*3305	61D
A*3305	73I
A*3305	88S
A*3305	98M
A*3305	57P
A*3305	99Y
A*3305	70H
A*3305	100G
A*3305	90A
A*3305	53E
A*3305	101C
A*3305	72Q
A*3305	119D
A*3305	93H
A*3305	85Y
A*3305	117A
A*3305	124I
A*3305	106D
A*3305	64T
A*3305	111R
A*3305	96Q
A*3305	114Q
A*3305	74D
A*3305	54R
A*3305	62R
A*3305	76V
A*3305	94T
A*3305	105S
A*3305	69A
A*3305	87Q
A*3305	60W
A*3305	110L
A*3305	122D
A*3305	125A
A*3305	91G
A*3305	113Y
A*3305	95I
A*3305	65R
A*3305	120G
A*3305	109F
A*3305	83G
A*3305	103V
A*3305	118Y
A*3305	82R
A*3305	116D
A*3305	89E
A*3305	92S
A*3305	123Y
A*3305	108R
A*3305	68K
A*3305	66N
A*3305	71S
A*3305	75R
A*3305	104G
A*3305	67V
A*3305	126L
A*3305	77D
A*3305	55E
A*3305	59Y
A*3305	86N
A*3401	176K
A*3401	72Q
A*3401	127N
A*3401	99Y
A*3401	173E
A*3401	102D
A*3401	137D
A*3401	63N
A*3401	131R
A*3401	80T
A*3401	198E
A*3401	107G
A*3401	177E
A*3401	97R
A*3401	163T
A*3401	81L
A*3401	130L
A*3401	78L
A*3401	154E
A*3401	56G
A*3401	275E
A*3401	79G
A*3401	153A
A*3401	98M
A*3401	246S
A*3401	61D
A*3401	261V
A*3401	58E
A*3401	151H
A*3401	73T
A*3401	162G
A*3401	88S
A*3401	276P
A*3401	57P
A*3401	175G
A*3401	100G
A*3401	152E
A*3401	70Q
A*3401	174N
A*3401	90D
A*3401	273R
A*3401	101C
A*3401	196D
A*3401	53E
A*3401	136A
A*3401	115Q
A*3401	270L
A*3401	111R
A*3401	172L
A*3401	119D
A*3401	171Y
A*3401	121K
A*3401	140A
A*3401	112G
A*3401	248V
A*3401	117A
A*3401	161E
A*3401	93H
A*3401	197H
A*3401	85Y
A*3401	150A
A*3401	106D
A*3401	170R
A*3401	124I
A*3401	138M
A*3401	64T
A*3401	144Q
A*3401	74D
A*3401	268K
A*3401	125A
A*3401	143T
A*3401	103V
A*3401	146K
A*3401	123Y
A*3401	141Q
A*3401	54Q
A*3401	149T
A*3401	62R
A*3401	147W
A*3401	92S
A*3401	148E
A*3401	82R
A*3401	132S
A*3401	114Q
A*3401	169R
A*3401	76V
A*3401	160L
A*3401	94T
A*3401	145R
A*3401	69A
A*3401	139A
A*3401	105P
A*3401	183D
A*3401	84Y
A*3401	133W
A*3401	87Q
A*3401	199A
A*3401	60W
A*3401	184A
A*3401	109F
A*3401	168L
A*3401	122D
A*3401	142I
A*3401	91G
A*3401	159Y
A*3401	120G
A*3401	193A
A*3401	110L
A*3401	219R
A*3401	65R
A*3401	185P
A*3401	95I
A*3401	158A
A*3401	59Y
A*3401	267P
A*3401	83G
A*3401	186K
A*3401	116D
A*3401	128E
A*3401	71S
A*3401	207S
A*3401	86N
A*3401	194V
A*3401	108R
A*3401	157R
A*3401	118Y
A*3401	167W
A*3401	89E
A*3401	134T
A*3401	104G
A*3401	192H
A*3401	66K
A*3401	187T
A*3401	75R
A*3401	189M
A*3401	68K
A*3401	182T
A*3401	67V
A*3401	188H
A*3401	126L
A*3401	166E
A*3401	55E
A*3401	191H
A*3401	77D
A*3401	129D
A*3401	113Y
A*3401	195S
A*3401	96Q
A*3401	156W
A*3401	12V
A*3401	253Q
A*3401	23I
A*3401	190T
A*3401	24A
A*3401	178T
A*3401	4S
A*3401	245A
A*3401	7Y
A*3401	165V
A*3401	47P
A*3401	181R
A*3401	13S
A*3401	164C
A*3401	25V
A*3401	135A
A*3401	26G
A*3401	180Q
A*3401	14R
A*3401	179L
A*3401	27Y
A*3401	155Q
A*3401	48R
A*3401	28V
A*3401	8F
A*3401	43Q
A*3401	15P
A*3401	29D
A*3401	2S
A*3401	30D
A*3401	46E
A*3401	22F
A*3401	16G
A*3401	31T
A*3401	3H
A*3401	5M
A*3401	32Q
A*3401	9Y
A*3401	45M
A*3401	17R
A*3401	33F
A*3401	44R
A*3401	34V
A*3401	11S
A*3401	18G
A*3401	35R
A*3401	1G
A*3401	36F
A*3401	10T
A*3401	19E
A*3401	51W
A*3401	37D
A*3401	38S
A*3401	21R
A*3401	20P
A*3401	49A
A*3401	39D
A*3401	6R
A*3401	50P
A*3401	40A
A*3401	52I
A*3401	41A
A*3401	42S
A*3402	140A
A*3402	48R
A*3402	154E
A*3402	12V
A*3402	162G
A*3402	23I
A*3402	177E
A*3402	24A
A*3402	275E
A*3402	4S
A*3402	176K
A*3402	47P
A*3402	163T
A*3402	7Y
A*3402	130L
A*3402	13S
A*3402	153A
A*3402	25V
A*3402	152E
A*3402	26G
A*3402	174N
A*3402	14R
A*3402	273R
A*3402	27Y
A*3402	276P
A*3402	43Q
A*3402	175G
A*3402	28V
A*3402	196D
A*3402	8F
A*3402	246S
A*3402	15P
A*3402	261V
A*3402	29D
A*3402	270L
A*3402	2S
A*3402	151H
A*3402	30D
A*3402	136A
A*3402	16G
A*3402	172L
A*3402	46E
A*3402	131R
A*3402	31T
A*3402	180Q
A*3402	3H
A*3402	143T
A*3402	5M
A*3402	173E
A*3402	32Q
A*3402	127N
A*3402	9Y
A*3402	141Q
A*3402	17R
A*3402	248V
A*3402	33F
A*3402	137D
A*3402	34V
A*3402	171Y
A*3402	18G
A*3402	197H
A*3402	11S
A*3402	150A
A*3402	35R
A*3402	170R
A*3402	44R
A*3402	268K
A*3402	45M
A*3402	183D
A*3402	51W
A*3402	138M
A*3402	36F
A*3402	160L
A*3402	1G
A*3402	161E
A*3402	10T
A*3402	149T
A*3402	19E
A*3402	146K
A*3402	37D
A*3402	147W
A*3402	38S
A*3402	132S
A*3402	49A
A*3402	148E
A*3402	20P
A*3402	169R
A*3402	39D
A*3402	145R
A*3402	50P
A*3402	144Q
A*3402	6R
A*3402	139A
A*3402	40A
A*3402	142I
A*3402	52I
A*3402	194V
A*3402	21R
A*3402	159Y
A*3402	41A
A*3402	168L
A*3402	42S
A*3402	182T
A*3402	22F
A*3402	133W
A*3402	82R
A*3402	198E
A*3402	80T
A*3402	184A
A*3402	92S
A*3402	158A
A*3402	97I
A*3402	185P
A*3402	81L
A*3402	267P
A*3402	123Y
A*3402	128E
A*3402	111R
A*3402	199A
A*3402	56G
A*3402	186K
A*3402	107G
A*3402	157R
A*3402	79G
A*3402	207S
A*3402	78L
A*3402	167W
A*3402	103V
A*3402	192H
A*3402	58E
A*3402	134T
A*3402	102D
A*3402	187T
A*3402	90D
A*3402	164C
A*3402	63N
A*3402	166E
A*3402	100G
A*3402	181R
A*3402	57P
A*3402	189M
A*3402	53E
A*3402	193A
A*3402	101C
A*3402	178T
A*3402	88S
A*3402	188H
A*3402	98M
A*3402	245A
A*3402	70Q
A*3402	191H
A*3402	61D
A*3402	129D
A*3402	73T
A*3402	195S
A*3402	112G
A*3402	190T
A*3402	99Y
A*3402	253Q
A*3402	117A
A*3402	156L
A*3402	119D
A*3402	165V
A*3402	121K
A*3402	179L
A*3402	115Q
A*3402	219R
A*3402	93H
A*3402	155Q
A*3402	85Y
A*3402	135A
A*3402	106D
A*3402	124I
A*3402	64T
A*3402	69A
A*3402	71S
A*3402	105S
A*3402	109F
A*3402	86N
A*3402	72Q
A*3402	74D
A*3402	114R
A*3402	87Q
A*3402	94T
A*3402	84Y
A*3402	76V
A*3402	60W
A*3402	120G
A*3402	62R
A*3402	54Q
A*3402	91G
A*3402	122D
A*3402	110L
A*3402	65R
A*3402	83G
A*3402	95I
A*3402	125A
A*3402	118Y
A*3402	108R
A*3402	89E
A*3402	116D
A*3402	68K
A*3402	75R
A*3402	67V
A*3402	66N
A*3402	104G
A*3402	126L
A*3402	77D
A*3402	113Y
A*3402	96Q
A*3402	59Y
A*3402	55E
A*3403	177E
A*3403	86N
A*3403	143T
A*3403	100G
A*3403	141Q
A*3403	90D
A*3403	176K
A*3403	123Y
A*3403	182T
A*3403	82R
A*3403	163T
A*3403	92S
A*3403	130L
A*3403	79G
A*3403	174N
A*3403	78L
A*3403	154E
A*3403	107G
A*3403	153A
A*3403	103V
A*3403	175G
A*3403	53E
A*3403	151H
A*3403	58E
A*3403	152E
A*3403	80T
A*3403	172L
A*3403	57P
A*3403	136A
A*3403	56G
A*3403	160L
A*3403	63N
A*3403	170R
A*3403	97I
A*3403	162G
A*3403	101C
A*3403	131R
A*3403	81L
A*3403	171Y
A*3403	102D
A*3403	173E
A*3403	98M
A*3403	137D
A*3403	88S
A*3403	138M
A*3403	73T
A*3403	150A
A*3403	61D
A*3403	146K
A*3403	70Q
A*3403	144Q
A*3403	99Y
A*3403	161E
A*3403	119D
A*3403	169R
A*3403	121K
A*3403	132S
A*3403	115Q
A*3403	148E
A*3403	112G
A*3403	147W
A*3403	85Y
A*3403	139A
A*3403	93H
A*3403	149A
A*3403	106D
A*3403	145R
A*3403	117A
A*3403	157R
A*3403	64T
A*3403	178T
A*3403	124I
A*3403	140A
A*3403	120G
A*3403	159Y
A*3403	72Q
A*3403	168L
A*3403	111R
A*3403	164C
A*3403	87Q
A*3403	133W
A*3403	84Y
A*3403	181R
A*3403	114R
A*3403	142I
A*3403	94T
A*3403	158A
A*3403	74D
A*3403	128E
A*3403	76V
A*3403	134T
A*3403	60W
A*3403	167W
A*3403	69A
A*3403	179L
A*3403	105S
A*3403	180Q
A*3403	122D
A*3403	166E
A*3403	91G
A*3403	129D
A*3403	54Q
A*3403	156L
A*3403	62R
A*3403	135A
A*3403	95I
A*3403	165V
A*3403	83G
A*3403	155Q
A*3403	65R
A*3403	12V
A*3403	110L
A*3403	23I
A*3403	125A
A*3403	47P
A*3403	108R
A*3403	24A
A*3403	118Y
A*3403	4S
A*3403	89E
A*3403	7Y
A*3403	113Y
A*3403	13S
A*3403	109F
A*3403	25V
A*3403	96Q
A*3403	26G
A*3403	66N
A*3403	14R
A*3403	116D
A*3403	27Y
A*3403	67V
A*3403	28V
A*3403	75R
A*3403	8F
A*3403	68K
A*3403	15P
A*3403	104G
A*3403	29D
A*3403	126L
A*3403	2S
A*3403	77D
A*3403	30D
A*3403	127N
A*3403	43Q
A*3403	71S
A*3403	16G
A*3403	55E
A*3403	46E
A*3403	59Y
A*3403	31T
A*3403	3H
A*3403	5M
A*3403	32Q
A*3403	22F
A*3403	9Y
A*3403	17R
A*3403	51W
A*3403	33F
A*3403	34V
A*3403	41A
A*3403	18G
A*3403	48R
A*3403	35R
A*3403	21R
A*3403	45M
A*3403	36F
A*3403	10T
A*3403	44R
A*3403	19E
A*3403	37D
A*3403	49A
A*3403	38S
A*3403	50P
A*3403	20P
A*3403	39D
A*3403	6R
A*3403	40A
A*3403	11S
A*3403	52I
A*3403	42S
A*3601	79G
A*3601	12V
A*3601	123Y
A*3601	23I
A*3601	86N
A*3601	47P
A*3601	92S
A*3601	50P
A*3601	82R
A*3601	24A
A*3601	53E
A*3601	4S
A*3601	101C
A*3601	7Y
A*3601	78L
A*3601	13S
A*3601	103V
A*3601	25V
A*3601	107G
A*3601	26G
A*3601	56G
A*3601	14R
A*3601	63E
A*3601	27Y
A*3601	97I
A*3601	28V
A*3601	80T
A*3601	8F
A*3601	81L
A*3601	15P
A*3601	102D
A*3601	29D
A*3601	57P
A*3601	2S
A*3601	70H
A*3601	30D
A*3601	88S
A*3601	43Q
A*3601	98M
A*3601	46E
A*3601	73T
A*3601	16G
A*3601	61D
A*3601	31T
A*3601	58E
A*3601	3H
A*3601	121K
A*3601	32Q
A*3601	100G
A*3601	5M
A*3601	99Y
A*3601	22F
A*3601	115Q
A*3601	9F
A*3601	90D
A*3601	17R
A*3601	119D
A*3601	11S
A*3601	112G
A*3601	33F
A*3601	93H
A*3601	34V
A*3601	85Y
A*3601	48R
A*3601	64T
A*3601	52I
A*3601	106D
A*3601	18G
A*3601	117A
A*3601	35R
A*3601	124I
A*3601	36F
A*3601	114R
A*3601	10T
A*3601	113Y
A*3601	44K
A*3601	87Q
A*3601	45M
A*3601	84Y
A*3601	21R
A*3601	111R
A*3601	19E
A*3601	77N
A*3601	37D
A*3601	96Q
A*3601	1G
A*3601	60W
A*3601	51W
A*3601	72Q
A*3601	38S
A*3601	76A
A*3601	20P
A*3601	74D
A*3601	39D
A*3601	94T
A*3601	6R
A*3601	105P
A*3601	49A
A*3601	62Q
A*3601	40A
A*3601	65R
A*3601	41A
A*3601	122D
A*3601	42S
A*3601	91G
A*3601	181R
A*3601	95I
A*3601	268K
A*3601	54Q
A*3601	160L
A*3601	69A
A*3601	196D
A*3601	83G
A*3601	183D
A*3601	110L
A*3601	178T
A*3601	89E
A*3601	182T
A*3601	120G
A*3601	164C
A*3601	75R
A*3601	130L
A*3601	66N
A*3601	177E
A*3601	125A
A*3601	163T
A*3601	109F
A*3601	275E
A*3601	67M
A*3601	176K
A*3601	118Y
A*3601	246A
A*3601	108R
A*3601	151H
A*3601	104G
A*3601	270L
A*3601	116D
A*3601	154E
A*3601	68K
A*3601	273R
A*3601	126L
A*3601	276L
A*3601	127N
A*3601	153A
A*3601	55E
A*3601	152A
A*3601	59Y
A*3601	174N
A*3601	71S
A*3601	172L
A*3601	261V
A*3601	175G
A*3601	136A
A*3601	248V
A*3601	169R
A*3601	131R
A*3601	171Y
A*3601	173E
A*3601	144K
A*3601	162G
A*3601	137D
A*3601	145R
A*3601	150V
A*3601	138M
A*3601	197H
A*3601	132S
A*3601	147W
A*3601	148E
A*3601	170R
A*3601	139A
A*3601	146K
A*3601	161E
A*3601	191H
A*3601	149A
A*3601	143T
A*3601	140A
A*3601	180Q
A*3601	179L
A*3601	168L
A*3601	159Y
A*3601	141Q
A*3601	184P
A*3601	198E
A*3601	133W
A*3601	185P
A*3601	267P
A*3601	142I
A*3601	158V
A*3601	128E
A*3601	207G
A*3601	192H
A*3601	186K
A*3601	199A
A*3601	134T
A*3601	187T
A*3601	167W
A*3601	193P
A*3601	188H
A*3601	195S
A*3601	189M
A*3601	157R
A*3601	135A
A*3601	156R
A*3601	129D
A*3601	166E
A*3601	194I
A*3601	190T
A*3601	253E
A*3601	155Q
A*3601	245A
A*3601	219R
A*3601	165V
A*3603	82R
A*3603	130L
A*3603	78L
A*3603	151H
A*3603	92S
A*3603	270L
A*3603	96Q
A*3603	164C
A*3603	113Y
A*3603	145R
A*3603	86N
A*3603	144K
A*3603	123Y
A*3603	169R
A*3603	103V
A*3603	178T
A*3603	107G
A*3603	182T
A*3603	56G
A*3603	179L
A*3603	88S
A*3603	181R
A*3603	70H
A*3603	177E
A*3603	63E
A*3603	163T
A*3603	97M
A*3603	275E
A*3603	81L
A*3603	246A
A*3603	102D
A*3603	180Q
A*3603	80T
A*3603	172L
A*3603	79G
A*3603	276L
A*3603	73T
A*3603	273R
A*3603	58E
A*3603	176K
A*3603	61D
A*3603	153A
A*3603	57P
A*3603	154E
A*3603	98M
A*3603	136A
A*3603	115Q
A*3603	152A
A*3603	64T
A*3603	175G
A*3603	100G
A*3603	261V
A*3603	101C
A*3603	174N
A*3603	99Y
A*3603	196D
A*3603	90D
A*3603	138M
A*3603	119D
A*3603	171Y
A*3603	112G
A*3603	150V
A*3603	53E
A*3603	139A
A*3603	121K
A*3603	173E
A*3603	85Y
A*3603	162G
A*3603	93H
A*3603	131R
A*3603	117A
A*3603	137D
A*3603	106D
A*3603	197H
A*3603	124I
A*3603	248V
A*3603	60W
A*3603	170R
A*3603	65R
A*3603	161E
A*3603	111R
A*3603	146K
A*3603	95L
A*3603	148E
A*3603	76A
A*3603	149A
A*3603	72Q
A*3603	147W
A*3603	74D
A*3603	132S
A*3603	94T
A*3603	192H
A*3603	84Y
A*3603	160L
A*3603	83G
A*3603	168L
A*3603	105P
A*3603	185P
A*3603	69A
A*3603	268K
A*3603	87Q
A*3603	183D
A*3603	114R
A*3603	135A
A*3603	110L
A*3603	159Y
A*3603	54Q
A*3603	267P
A*3603	62Q
A*3603	158V
A*3603	91G
A*3603	133W
A*3603	122D
A*3603	143T
A*3603	109F
A*3603	140A
A*3603	125A
A*3603	198E
A*3603	71S
A*3603	142I
A*3603	55E
A*3603	219R
A*3603	59Y
A*3603	141Q
A*3603	89E
A*3603	184P
A*3603	120G
A*3603	195S
A*3603	68K
A*3603	134T
A*3603	108R
A*3603	207G
A*3603	104G
A*3603	186K
A*3603	116D
A*3603	128E
A*3603	118Y
A*3603	199A
A*3603	126L
A*3603	187T
A*3603	127N
A*3603	167W
A*3603	75R
A*3603	155Q
A*3603	66N
A*3603	129D
A*3603	67M
A*3603	188H
A*3603	77N
A*3603	156R
A*3603	12V
A*3603	189M
A*3603	23I
A*3603	157R
A*3603	24A
A*3603	166E
A*3603	4S
A*3603	191H
A*3603	7Y
A*3603	193P
A*3603	13S
A*3603	190T
A*3603	25V
A*3603	253E
A*3603	47P
A*3603	194I
A*3603	26G
A*3603	245A
A*3603	14R
A*3603	165V
A*3603	27Y
A*3603	28V
A*3603	50P
A*3603	8F
A*3603	15P
A*3603	29D
A*3603	2S
A*3603	30D
A*3603	16G
A*3603	31T
A*3603	3H
A*3603	43Q
A*3603	46E
A*3603	32Q
A*3603	5M
A*3603	9F
A*3603	17R
A*3603	33F
A*3603	48R
A*3603	34V
A*3603	18G
A*3603	52I
A*3603	35R
A*3603	36F
A*3603	10T
A*3603	45M
A*3603	19E
A*3603	44K
A*3603	37D
A*3603	1G
A*3603	38S
A*3603	20P
A*3603	39D
A*3603	6R
A*3603	51W
A*3603	40A
A*3603	49A
A*3603	11S
A*3603	21R
A*3603	41A
A*3603	42S
A*3603	22F
A*4301	139A
A*4301	12V
A*4301	178T
A*4301	23I
A*4301	275E
A*4301	24A
A*4301	172L
A*4301	4S
A*4301	182T
A*4301	7Y
A*4301	181R
A*4301	13S
A*4301	179L
A*4301	47P
A*4301	163R
A*4301	25V
A*4301	253Q
A*4301	26G
A*4301	177E
A*4301	14R
A*4301	164C
A*4301	27Y
A*4301	180Q
A*4301	28V
A*4301	135A
A*4301	8F
A*4301	261V
A*4301	22F
A*4301	176K
A*4301	15P
A*4301	130L
A*4301	29D
A*4301	136A
A*4301	2S
A*4301	153A
A*4301	30D
A*4301	154E
A*4301	16G
A*4301	175G
A*4301	31T
A*4301	276P
A*4301	3H
A*4301	152E
A*4301	46E
A*4301	273R
A*4301	32Q
A*4301	174N
A*4301	5M
A*4301	162G
A*4301	43Q
A*4301	173E
A*4301	9Y
A*4301	246S
A*4301	48R
A*4301	270L
A*4301	17R
A*4301	196D
A*4301	33F
A*4301	131R
A*4301	34V
A*4301	137D
A*4301	52I
A*4301	151H
A*4301	18G
A*4301	171Y
A*4301	35R
A*4301	197H
A*4301	44R
A*4301	248V
A*4301	45M
A*4301	138M
A*4301	36F
A*4301	161E
A*4301	21R
A*4301	170R
A*4301	10T
A*4301	150A
A*4301	19E
A*4301	148E
A*4301	37D
A*4301	147W
A*4301	38S
A*4301	132S
A*4301	1G
A*4301	149T
A*4301	20P
A*4301	146K
A*4301	39D
A*4301	267P
A*4301	42S
A*4301	134T
A*4301	6R
A*4301	168L
A*4301	49A
A*4301	158A
A*4301	40A
A*4301	144Q
A*4301	51W
A*4301	268K
A*4301	11S
A*4301	159Y
A*4301	41A
A*4301	183D
A*4301	53E
A*4301	142I
A*4301	50P
A*4301	143T
A*4301	103V
A*4301	160L
A*4301	113Y
A*4301	169R
A*4301	86N
A*4301	145R
A*4301	96Q
A*4301	155Q
A*4301	88S
A*4301	140A
A*4301	70H
A*4301	198E
A*4301	64T
A*4301	141Q
A*4301	107G
A*4301	133W
A*4301	82R
A*4301	184A
A*4301	123Y
A*4301	128E
A*4301	92S
A*4301	185P
A*4301	126L
A*4301	187T
A*4301	66N
A*4301	186K
A*4301	81L
A*4301	199A
A*4301	97R
A*4301	167W
A*4301	73T
A*4301	207S
A*4301	56G
A*4301	156W
A*4301	78L
A*4301	192H
A*4301	102D
A*4301	157R
A*4301	80T
A*4301	190T
A*4301	79G
A*4301	189M
A*4301	58E
A*4301	219R
A*4301	61D
A*4301	193A
A*4301	63Q
A*4301	188H
A*4301	57P
A*4301	191H
A*4301	98M
A*4301	166E
A*4301	99Y
A*4301	245A
A*4301	101C
A*4301	194V
A*4301	90D
A*4301	129D
A*4301	100G
A*4301	195S
A*4301	93H
A*4301	165V
A*4301	121K
A*4301	115Q
A*4301	85Y
A*4301	119D
A*4301	112G
A*4301	124I
A*4301	117A
A*4301	106D
A*4301	111R
A*4301	55E
A*4301	59Y
A*4301	76A
A*4301	110L
A*4301	83G
A*4301	71S
A*4301	72Q
A*4301	74D
A*4301	67V
A*4301	94T
A*4301	60W
A*4301	105P
A*4301	69A
A*4301	114Q
A*4301	84Y
A*4301	87Q
A*4301	91G
A*4301	54Q
A*4301	62L
A*4301	122D
A*4301	109F
A*4301	125A
A*4301	65R
A*4301	95I
A*4301	118Y
A*4301	120G
A*4301	68K
A*4301	89E
A*4301	116D
A*4301	104G
A*4301	108R
A*4301	127N
A*4301	75R
A*4301	77N
A*6601	177E
A*6601	107G
A*6601	181R
A*6601	55E
A*6601	261V
A*6601	59Y
A*6601	136A
A*6601	73T
A*6601	182T
A*6601	71S
A*6601	155Q
A*6601	92S
A*6601	180Q
A*6601	126L
A*6601	135A
A*6601	82R
A*6601	164C
A*6601	96Q
A*6601	178T
A*6601	86N
A*6601	179L
A*6601	123Y
A*6601	130L
A*6601	113Y
A*6601	275E
A*6601	102D
A*6601	190T
A*6601	56G
A*6601	152E
A*6601	58E
A*6601	154E
A*6601	61D
A*6601	175G
A*6601	97R
A*6601	153A
A*6601	80T
A*6601	273R
A*6601	78L
A*6601	176K
A*6601	79G
A*6601	276P
A*6601	103V
A*6601	163R
A*6601	81L
A*6601	174N
A*6601	98M
A*6601	151H
A*6601	57P
A*6601	131R
A*6601	63N
A*6601	137D
A*6601	70Q
A*6601	197H
A*6601	99Y
A*6601	248V
A*6601	88S
A*6601	172L
A*6601	85Y
A*6601	196D
A*6601	93H
A*6601	270L
A*6601	90D
A*6601	173E
A*6601	101C
A*6601	246S
A*6601	100G
A*6601	162G
A*6601	124I
A*6601	171Y
A*6601	119D
A*6601	170R
A*6601	115Q
A*6601	138M
A*6601	112G
A*6601	150A
A*6601	121K
A*6601	132S
A*6601	117A
A*6601	148E
A*6601	106D
A*6601	161E
A*6601	74D
A*6601	146K
A*6601	64T
A*6601	147W
A*6601	72Q
A*6601	149T
A*6601	111R
A*6601	142I
A*6601	94T
A*6601	183D
A*6601	84Y
A*6601	144Q
A*6601	87Q
A*6601	268K
A*6601	76V
A*6601	187T
A*6601	54Q
A*6601	139A
A*6601	122D
A*6601	219R
A*6601	105P
A*6601	159Y
A*6601	60W
A*6601	169R
A*6601	62R
A*6601	141Q
A*6601	69A
A*6601	160L
A*6601	114Q
A*6601	133W
A*6601	91G
A*6601	140A
A*6601	68K
A*6601	168L
A*6601	125A
A*6601	145R
A*6601	118Y
A*6601	198E
A*6601	65R
A*6601	184A
A*6601	110L
A*6601	143T
A*6601	83G
A*6601	267P
A*6601	95I
A*6601	185P
A*6601	89E
A*6601	167W
A*6601	104G
A*6601	158A
A*6601	116D
A*6601	186K
A*6601	109F
A*6601	195S
A*6601	120G
A*6601	199A
A*6601	108R
A*6601	128E
A*6601	127N
A*6601	207S
A*6601	77D
A*6601	245A
A*6601	75R
A*6601	189M
A*6601	66N
A*6601	134T
A*6601	67V
A*6601	188H
A*6601	22F
A*6601	194V
A*6601	12V
A*6601	157R
A*6601	23I
A*6601	253Q
A*6601	24A
A*6601	193A
A*6601	4S
A*6601	166E
A*6601	7Y
A*6601	192H
A*6601	13S
A*6601	191H
A*6601	25V
A*6601	129D
A*6601	26G
A*6601	156W
A*6601	14R
A*6601	165V
A*6601	47P
A*6601	27Y
A*6601	21R
A*6601	28V
A*6601	8F
A*6601	15P
A*6601	29D
A*6601	2S
A*6601	30D
A*6601	16G
A*6601	46E
A*6601	31T
A*6601	3H
A*6601	43Q
A*6601	32Q
A*6601	5M
A*6601	9Y
A*6601	44R
A*6601	17R
A*6601	33F
A*6601	52I
A*6601	34V
A*6601	45M
A*6601	18G
A*6601	35R
A*6601	36F
A*6601	48R
A*6601	10T
A*6601	19E
A*6601	37D
A*6601	38S
A*6601	20P
A*6601	39D
A*6601	1G
A*6601	49A
A*6601	6R
A*6601	51W
A*6601	40A
A*6601	11S
A*6601	53E
A*6601	41A
A*6601	42S
A*6601	50P
A*6602	152E
A*6602	12V
A*6602	175G
A*6602	23I
A*6602	219R
A*6602	24A
A*6602	180Q
A*6602	4S
A*6602	181R
A*6602	7Y
A*6602	182T
A*6602	13S
A*6602	135A
A*6602	25V
A*6602	179L
A*6602	22F
A*6602	155Q
A*6602	26G
A*6602	164C
A*6602	47P
A*6602	178T
A*6602	14R
A*6602	273R
A*6602	27Y
A*6602	154E
A*6602	46E
A*6602	275E
A*6602	28V
A*6602	130L
A*6602	8F
A*6602	153A
A*6602	15P
A*6602	176K
A*6602	29D
A*6602	276P
A*6602	2S
A*6602	177E
A*6602	30D
A*6602	174N
A*6602	21R
A*6602	163E
A*6602	43Q
A*6602	136A
A*6602	16G
A*6602	172L
A*6602	31T
A*6602	261V
A*6602	3H
A*6602	196D
A*6602	32Q
A*6602	173E
A*6602	5M
A*6602	151H
A*6602	9Y
A*6602	246S
A*6602	52I
A*6602	137D
A*6602	17R
A*6602	131R
A*6602	33F
A*6602	171Y
A*6602	34V
A*6602	162G
A*6602	18G
A*6602	270L
A*6602	35R
A*6602	150A
A*6602	36F
A*6602	170R
A*6602	48R
A*6602	132S
A*6602	10T
A*6602	197H
A*6602	19E
A*6602	146K
A*6602	37D
A*6602	248V
A*6602	38S
A*6602	147W
A*6602	44R
A*6602	138M
A*6602	45M
A*6602	161E
A*6602	49A
A*6602	148E
A*6602	20P
A*6602	149T
A*6602	39D
A*6602	167W
A*6602	51W
A*6602	159Y
A*6602	1G
A*6602	133W
A*6602	6R
A*6602	198E
A*6602	40A
A*6602	141Q
A*6602	11S
A*6602	139A
A*6602	53E
A*6602	160L
A*6602	41A
A*6602	144Q
A*6602	42S
A*6602	168L
A*6602	50P
A*6602	183D
A*6602	59Y
A*6602	140A
A*6602	124I
A*6602	145R
A*6602	126L
A*6602	268K
A*6602	58E
A*6602	184A
A*6602	61D
A*6602	143T
A*6602	86N
A*6602	169R
A*6602	123Y
A*6602	245A
A*6602	96Q
A*6602	185P
A*6602	82R
A*6602	186K
A*6602	92S
A*6602	199A
A*6602	113Y
A*6602	142I
A*6602	71S
A*6602	267P
A*6602	55E
A*6602	158A
A*6602	79G
A*6602	207S
A*6602	78L
A*6602	187T
A*6602	80T
A*6602	194V
A*6602	97R
A*6602	134T
A*6602	103V
A*6602	157R
A*6602	107G
A*6602	189M
A*6602	81L
A*6602	188H
A*6602	102D
A*6602	192H
A*6602	98M
A*6602	193A
A*6602	57P
A*6602	191H
A*6602	56G
A*6602	166E
A*6602	63N
A*6602	190T
A*6602	88S
A*6602	165V
A*6602	73T
A*6602	195S
A*6602	101C
A*6602	156W
A*6602	119D
A*6602	129D
A*6602	90A
A*6602	253Q
A*6602	100G
A*6602	99Y
A*6602	121K
A*6602	112G
A*6602	70Q
A*6602	115Q
A*6602	85Y
A*6602	93H
A*6602	117A
A*6602	68K
A*6602	106D
A*6602	94T
A*6602	111R
A*6602	64T
A*6602	74D
A*6602	87Q
A*6602	118Y
A*6602	72Q
A*6602	122D
A*6602	84Y
A*6602	76V
A*6602	54Q
A*6602	105P
A*6602	60W
A*6602	114Q
A*6602	62R
A*6602	91G
A*6602	69A
A*6602	77D
A*6602	116D
A*6602	104G
A*6602	83G
A*6602	95I
A*6602	65R
A*6602	110L
A*6602	120G
A*6602	89E
A*6602	125A
A*6602	109F
A*6602	108R
A*6602	127N
A*6602	75R
A*6602	128E
A*6602	67V
A*6602	66N
A*6603	135A
A*6603	113Y
A*6603	179L
A*6603	123Y
A*6603	182T
A*6603	82R
A*6603	155Q
A*6603	96Q
A*6603	181R
A*6603	55E
A*6603	164C
A*6603	59Y
A*6603	178T
A*6603	71S
A*6603	174N
A*6603	92S
A*6603	153A
A*6603	86N
A*6603	130L
A*6603	126L
A*6603	180Q
A*6603	97R
A*6603	177E
A*6603	103V
A*6603	154E
A*6603	107G
A*6603	176K
A*6603	78L
A*6603	163E
A*6603	63N
A*6603	146K
A*6603	79G
A*6603	175G
A*6603	98M
A*6603	132S
A*6603	57P
A*6603	172L
A*6603	80T
A*6603	152E
A*6603	81L
A*6603	136A
A*6603	102D
A*6603	137D
A*6603	56G
A*6603	171Y
A*6603	100G
A*6603	162G
A*6603	112G
A*6603	131R
A*6603	58E
A*6603	151H
A*6603	88S
A*6603	173E
A*6603	61D
A*6603	161E
A*6603	73T
A*6603	147W
A*6603	101C
A*6603	170R
A*6603	121K
A*6603	150A
A*6603	90A
A*6603	148E
A*6603	99Y
A*6603	138M
A*6603	70H
A*6603	149T
A*6603	115Q
A*6603	139A
A*6603	93H
A*6603	145R
A*6603	85Y
A*6603	144Q
A*6603	119D
A*6603	160L
A*6603	127N
A*6603	143T
A*6603	117A
A*6603	168L
A*6603	106D
A*6603	169R
A*6603	54Q
A*6603	140A
A*6603	77D
A*6603	159Y
A*6603	122D
A*6603	133W
A*6603	124I
A*6603	141Q
A*6603	64T
A*6603	142I
A*6603	116D
A*6603	158A
A*6603	111R
A*6603	167W
A*6603	72Q
A*6603	134T
A*6603	84Y
A*6603	157R
A*6603	94T
A*6603	166E
A*6603	76V
A*6603	165V
A*6603	74D
A*6603	156W
A*6603	60W
A*6603	129D
A*6603	114Q
A*6603	46E
A*6603	87Q
A*6603	12V
A*6603	62R
A*6603	23I
A*6603	91G
A*6603	24A
A*6603	69A
A*6603	4S
A*6603	105P
A*6603	7Y
A*6603	95I
A*6603	13S
A*6603	120G
A*6603	25V
A*6603	110L
A*6603	47P
A*6603	83G
A*6603	26G
A*6603	109F
A*6603	14R
A*6603	89E
A*6603	27Y
A*6603	108R
A*6603	43Q
A*6603	65R
A*6603	28V
A*6603	125A
A*6603	8F
A*6603	104G
A*6603	15P
A*6603	128E
A*6603	29D
A*6603	67V
A*6603	30D
A*6603	68K
A*6603	2S
A*6603	66N
A*6603	16G
A*6603	118Y
A*6603	31T
A*6603	75R
A*6603	3H
A*6603	49A
A*6603	32Q
A*6603	5M
A*6603	9Y
A*6603	17R
A*6603	33F
A*6603	34V
A*6603	18G
A*6603	35R
A*6603	52I
A*6603	36F
A*6603	10T
A*6603	19E
A*6603	48R
A*6603	37D
A*6603	45M
A*6603	44R
A*6603	38S
A*6603	20P
A*6603	51W
A*6603	39D
A*6603	6R
A*6603	40A
A*6603	53E
A*6603	11S
A*6603	21R
A*6603	41A
A*6603	50P
A*6603	42S
A*6603	22F
A*6801	82R
A*6801	43Q
A*6801	71S
A*6801	12V
A*6801	96Q
A*6801	47P
A*6801	77D
A*6801	23I
A*6801	55E
A*6801	24A
A*6801	59Y
A*6801	4S
A*6801	92S
A*6801	7Y
A*6801	123Y
A*6801	13S
A*6801	86N
A*6801	25V
A*6801	103V
A*6801	26G
A*6801	57P
A*6801	22F
A*6801	63N
A*6801	14R
A*6801	113Y
A*6801	27Y
A*6801	98M
A*6801	28V
A*6801	126L
A*6801	8F
A*6801	107G
A*6801	15P
A*6801	102D
A*6801	29D
A*6801	97M
A*6801	30D
A*6801	78L
A*6801	2S
A*6801	80T
A*6801	16G
A*6801	81L
A*6801	31T
A*6801	56G
A*6801	3H
A*6801	79G
A*6801	49A
A*6801	121K
A*6801	32Q
A*6801	58E
A*6801	5M
A*6801	61D
A*6801	9Y
A*6801	73T
A*6801	51W
A*6801	88S
A*6801	42S
A*6801	115Q
A*6801	17R
A*6801	70Q
A*6801	33F
A*6801	99Y
A*6801	34V
A*6801	100G
A*6801	46E
A*6801	101C
A*6801	18G
A*6801	90A
A*6801	35R
A*6801	93H
A*6801	48R
A*6801	85Y
A*6801	36F
A*6801	119D
A*6801	10T
A*6801	112G
A*6801	52I
A*6801	127K
A*6801	19E
A*6801	117A
A*6801	37D
A*6801	106D
A*6801	38S
A*6801	104G
A*6801	20P
A*6801	64T
A*6801	39D
A*6801	124I
A*6801	44R
A*6801	111R
A*6801	45M
A*6801	72Q
A*6801	6R
A*6801	62R
A*6801	40A
A*6801	74D
A*6801	53E
A*6801	94T
A*6801	11S
A*6801	114R
A*6801	1G
A*6801	84Y
A*6801	50P
A*6801	76V
A*6801	21R
A*6801	87Q
A*6801	41A
A*6801	91G
A*6801	219R
A*6801	69A
A*6801	273R
A*6801	60W
A*6801	132S
A*6801	105S
A*6801	179L
A*6801	95I
A*6801	174N
A*6801	67V
A*6801	146K
A*6801	122D
A*6801	164C
A*6801	120G
A*6801	155Q
A*6801	54Q
A*6801	245V
A*6801	65R
A*6801	182T
A*6801	83G
A*6801	181R
A*6801	110L
A*6801	178T
A*6801	125A
A*6801	153A
A*6801	89E
A*6801	135A
A*6801	109F
A*6801	180Q
A*6801	108R
A*6801	130L
A*6801	128E
A*6801	275E
A*6801	66N
A*6801	190T
A*6801	68K
A*6801	176K
A*6801	116D
A*6801	154E
A*6801	118Y
A*6801	163T
A*6801	75R
A*6801	276P
A*6801	177E
A*6801	147W
A*6801	171Y
A*6801	261V
A*6801	136A
A*6801	196D
A*6801	172L
A*6801	161E
A*6801	162G
A*6801	175G
A*6801	152V
A*6801	131R
A*6801	151H
A*6801	173E
A*6801	246A
A*6801	137D
A*6801	270L
A*6801	197H
A*6801	170R
A*6801	248V
A*6801	148E
A*6801	150A
A*6801	149A
A*6801	138M
A*6801	139A
A*6801	160L
A*6801	183D
A*6801	184A
A*6801	168L
A*6801	268K
A*6801	144K
A*6801	143T
A*6801	140A
A*6801	145H
A*6801	159Y
A*6801	169R
A*6801	141Q
A*6801	142T
A*6801	198E
A*6801	267P
A*6801	133W
A*6801	185P
A*6801	199A
A*6801	186K
A*6801	158A
A*6801	207S
A*6801	167W
A*6801	187T
A*6801	157R
A*6801	193A
A*6801	165V
A*6801	189M
A*6801	166E
A*6801	192H
A*6801	134T
A*6801	188H
A*6801	191H
A*6801	194V
A*6801	156W
A*6801	129D
A*6801	195S
A*6801	253Q
A*6802	98M
A*6802	181R
A*6802	63N
A*6802	164C
A*6802	55E
A*6802	155Q
A*6802	57P
A*6802	147W
A*6802	71S
A*6802	161E
A*6802	86N
A*6802	178T
A*6802	123Y
A*6802	219R
A*6802	59Y
A*6802	182T
A*6802	92S
A*6802	245V
A*6802	77D
A*6802	180Q
A*6802	82R
A*6802	176K
A*6802	96Q
A*6802	179L
A*6802	56G
A*6802	130L
A*6802	126L
A*6802	135A
A*6802	113Y
A*6802	275E
A*6802	107G
A*6802	153A
A*6802	103V
A*6802	154E
A*6802	80T
A*6802	163T
A*6802	81L
A*6802	276P
A*6802	79G
A*6802	177E
A*6802	78L
A*6802	193A
A*6802	97R
A*6802	273R
A*6802	102D
A*6802	174N
A*6802	73T
A*6802	152V
A*6802	115Q
A*6802	136A
A*6802	88S
A*6802	196D
A*6802	70Q
A*6802	172L
A*6802	90A
A*6802	175G
A*6802	99Y
A*6802	261V
A*6802	100G
A*6802	151H
A*6802	58E
A*6802	270L
A*6802	61D
A*6802	137D
A*6802	101C
A*6802	173E
A*6802	75R
A*6802	246A
A*6802	127K
A*6802	131R
A*6802	119D
A*6802	197H
A*6802	121K
A*6802	171Y
A*6802	85Y
A*6802	170R
A*6802	112G
A*6802	162G
A*6802	93H
A*6802	148E
A*6802	106D
A*6802	150A
A*6802	117A
A*6802	149A
A*6802	114H
A*6802	248V
A*6802	67V
A*6802	138M
A*6802	62R
A*6802	188H
A*6802	124I
A*6802	165V
A*6802	111R
A*6802	143T
A*6802	64T
A*6802	184A
A*6802	74D
A*6802	168L
A*6802	69A
A*6802	132S
A*6802	94T
A*6802	139A
A*6802	91G
A*6802	183D
A*6802	84Y
A*6802	268K
A*6802	72Q
A*6802	140A
A*6802	76V
A*6802	145H
A*6802	118Y
A*6802	144K
A*6802	60W
A*6802	146K
A*6802	105P
A*6802	160L
A*6802	87Q
A*6802	159Y
A*6802	65R
A*6802	169R
A*6802	54Q
A*6802	198E
A*6802	122D
A*6802	267P
A*6802	66N
A*6802	185P
A*6802	109F
A*6802	133W
A*6802	89E
A*6802	141Q
A*6802	125A
A*6802	186K
A*6802	83G
A*6802	158A
A*6802	95I
A*6802	142T
A*6802	120G
A*6802	199A
A*6802	108R
A*6802	207S
A*6802	110L
A*6802	166E
A*6802	128E
A*6802	167W
A*6802	104G
A*6802	187T
A*6802	116Y
A*6802	134T
A*6802	68K
A*6802	189M
A*6802	12M
A*6802	191H
A*6802	51W
A*6802	192H
A*6802	23I
A*6802	156W
A*6802	24A
A*6802	129D
A*6802	4S
A*6802	157R
A*6802	22F
A*6802	190T
A*6802	7Y
A*6802	195S
A*6802	13S
A*6802	253Q
A*6802	25V
A*6802	194V
A*6802	26G
A*6802	14R
A*6802	27Y
A*6802	47P
A*6802	28V
A*6802	8F
A*6802	15P
A*6802	29D
A*6802	30D
A*6802	2S
A*6802	21R
A*6802	16G
A*6802	31T
A*6802	3H
A*6802	32Q
A*6802	5M
A*6802	9Y
A*6802	48R
A*6802	17R
A*6802	33F
A*6802	46E
A*6802	34V
A*6802	43Q
A*6802	18G
A*6802	35R
A*6802	36F
A*6802	10T
A*6802	19E
A*6802	52I
A*6802	37D
A*6802	38S
A*6802	41A
A*6802	50P
A*6802	20P
A*6802	39D
A*6802	44R
A*6802	45M
A*6802	40A
A*6802	6R
A*6802	53E
A*6802	11S
A*6802	1G
A*6802	42S
A*6802	49A
A*6803	165V
A*6803	12V
A*6803	178T
A*6803	23I
A*6803	176K
A*6803	24A
A*6803	245V
A*6803	4S
A*6803	182T
A*6803	22F
A*6803	219R
A*6803	7Y
A*6803	164C
A*6803	13S
A*6803	181R
A*6803	25V
A*6803	155Q
A*6803	26G
A*6803	130L
A*6803	14R
A*6803	135A
A*6803	27Y
A*6803	275E
A*6803	28V
A*6803	180Q
A*6803	8F
A*6803	153A
A*6803	15P
A*6803	154E
A*6803	29D
A*6803	163T
A*6803	47P
A*6803	190T
A*6803	30D
A*6803	177E
A*6803	2S
A*6803	179L
A*6803	16G
A*6803	276P
A*6803	31T
A*6803	152V
A*6803	53E
A*6803	174N
A*6803	3H
A*6803	261V
A*6803	32Q
A*6803	196D
A*6803	5M
A*6803	193A
A*6803	9Y
A*6803	273R
A*6803	46E
A*6803	172L
A*6803	17R
A*6803	175G
A*6803	33F
A*6803	136A
A*6803	43Q
A*6803	270L
A*6803	34V
A*6803	137D
A*6803	50P
A*6803	246A
A*6803	18G
A*6803	131R
A*6803	35R
A*6803	151H
A*6803	36F
A*6803	173E
A*6803	10T
A*6803	171Y
A*6803	52I
A*6803	170R
A*6803	19E
A*6803	162G
A*6803	37D
A*6803	197H
A*6803	38S
A*6803	149A
A*6803	48R
A*6803	248V
A*6803	44R
A*6803	138M
A*6803	45M
A*6803	148E
A*6803	20P
A*6803	150A
A*6803	39D
A*6803	146K
A*6803	40A
A*6803	145H
A*6803	6R
A*6803	161E
A*6803	11S
A*6803	147W
A*6803	51W
A*6803	132S
A*6803	21R
A*6803	140A
A*6803	41A
A*6803	159Y
A*6803	1G
A*6803	183D
A*6803	42S
A*6803	139A
A*6803	49A
A*6803	169R
A*6803	86N
A*6803	268K
A*6803	123Y
A*6803	144K
A*6803	92S
A*6803	160L
A*6803	56G
A*6803	184A
A*6803	59Y
A*6803	143T
A*6803	67V
A*6803	133W
A*6803	77D
A*6803	141Q
A*6803	82R
A*6803	158A
A*6803	96Q
A*6803	168L
A*6803	55E
A*6803	198E
A*6803	71S
A*6803	185P
A*6803	79G
A*6803	267P
A*6803	126L
A*6803	142T
A*6803	113Y
A*6803	186K
A*6803	107G
A*6803	207S
A*6803	80T
A*6803	199A
A*6803	103V
A*6803	134T
A*6803	97M
A*6803	156W
A*6803	78L
A*6803	129D
A*6803	102D
A*6803	167W
A*6803	81L
A*6803	191H
A*6803	90A
A*6803	187T
A*6803	98M
A*6803	192H
A*6803	63N
A*6803	189M
A*6803	88S
A*6803	188H
A*6803	127K
A*6803	166E
A*6803	100G
A*6803	157R
A*6803	58E
A*6803	253Q
A*6803	57P
A*6803	195S
A*6803	61D
A*6803	194V
A*6803	73T
A*6803	101C
A*6803	99Y
A*6803	112G
A*6803	121K
A*6803	70H
A*6803	93H
A*6803	115Q
A*6803	106D
A*6803	85Y
A*6803	117A
A*6803	119D
A*6803	69A
A*6803	111R
A*6803	91G
A*6803	66N
A*6803	124I
A*6803	76V
A*6803	84Y
A*6803	60W
A*6803	72Q
A*6803	64T
A*6803	105S
A*6803	94T
A*6803	74D
A*6803	87Q
A*6803	83G
A*6803	62R
A*6803	125A
A*6803	89E
A*6803	114R
A*6803	75R
A*6803	109F
A*6803	118Y
A*6803	108R
A*6803	110L
A*6803	122D
A*6803	95I
A*6803	54Q
A*6803	128E
A*6803	104G
A*6803	116D
A*6803	120G
A*6803	68K
A*6803	65R
A*6805	165V
A*6805	79G
A*6805	182T
A*6805	127K
A*6805	130L
A*6805	67V
A*6805	163T
A*6805	77D
A*6805	155Q
A*6805	82R
A*6805	135A
A*6805	96Q
A*6805	154E
A*6805	66N
A*6805	181R
A*6805	125A
A*6805	178T
A*6805	55E
A*6805	179L
A*6805	126L
A*6805	164C
A*6805	80T
A*6805	177E
A*6805	113Y
A*6805	153A
A*6805	89E
A*6805	180Q
A*6805	59Y
A*6805	149A
A*6805	71S
A*6805	175G
A*6805	107G
A*6805	172L
A*6805	86N
A*6805	174N
A*6805	92S
A*6805	176K
A*6805	97M
A*6805	137D
A*6805	78L
A*6805	136A
A*6805	103V
A*6805	152V
A*6805	81L
A*6805	131R
A*6805	102D
A*6805	151H
A*6805	123Y
A*6805	173E
A*6805	98M
A*6805	148E
A*6805	56G
A*6805	171Y
A*6805	57P
A*6805	138M
A*6805	58E
A*6805	170R
A*6805	73T
A*6805	162G
A*6805	61D
A*6805	150A
A*6805	63N
A*6805	132S
A*6805	100G
A*6805	147W
A*6805	101C
A*6805	161E
A*6805	88S
A*6805	159Y
A*6805	99Y
A*6805	158A
A*6805	70H
A*6805	156W
A*6805	90A
A*6805	139A
A*6805	117A
A*6805	144K
A*6805	93H
A*6805	160L
A*6805	115Q
A*6805	169R
A*6805	106D
A*6805	143T
A*6805	121K
A*6805	133W
A*6805	119D
A*6805	145H
A*6805	112G
A*6805	146K
A*6805	85Y
A*6805	140A
A*6805	60W
A*6805	141Q
A*6805	118Y
A*6805	168L
A*6805	75R
A*6805	142T
A*6805	124I
A*6805	167W
A*6805	72Q
A*6805	157R
A*6805	105S
A*6805	166E
A*6805	64T
A*6805	134T
A*6805	111R
A*6805	12V
A*6805	84Y
A*6805	45M
A*6805	94T
A*6805	23I
A*6805	76V
A*6805	24A
A*6805	74H
A*6805	4S
A*6805	87Q
A*6805	50P
A*6805	69A
A*6805	7Y
A*6805	110L
A*6805	13S
A*6805	108R
A*6805	25V
A*6805	91G
A*6805	26G
A*6805	114R
A*6805	14R
A*6805	62R
A*6805	27Y
A*6805	122D
A*6805	28V
A*6805	120G
A*6805	8F
A*6805	83G
A*6805	15P
A*6805	95I
A*6805	29D
A*6805	128E
A*6805	47P
A*6805	109F
A*6805	44R
A*6805	65R
A*6805	30D
A*6805	116D
A*6805	2S
A*6805	68K
A*6805	16G
A*6805	104G
A*6805	31T
A*6805	129D
A*6805	3H
A*6805	53E
A*6805	32Q
A*6805	5M
A*6805	9Y
A*6805	17R
A*6805	33F
A*6805	34V
A*6805	18G
A*6805	35R
A*6805	52I
A*6805	43Q
A*6805	46E
A*6805	36F
A*6805	10T
A*6805	19E
A*6805	37D
A*6805	38S
A*6805	51W
A*6805	20P
A*6805	39D
A*6805	48R
A*6805	6R
A*6805	40A
A*6805	11S
A*6805	21R
A*6805	54Q
A*6805	41A
A*6805	49A
A*6805	42S
A*6805	22F
A*6806	82R
A*6806	21R
A*6806	80T
A*6806	22F
A*6806	75R
A*6806	12V
A*6806	96Q
A*6806	23I
A*6806	118Y
A*6806	50P
A*6806	66N
A*6806	24A
A*6806	77D
A*6806	4S
A*6806	107G
A*6806	7Y
A*6806	59Y
A*6806	13S
A*6806	71S
A*6806	45M
A*6806	67V
A*6806	25V
A*6806	86N
A*6806	26G
A*6806	55E
A*6806	14R
A*6806	92S
A*6806	27Y
A*6806	126L
A*6806	28V
A*6806	113Y
A*6806	8F
A*6806	81L
A*6806	47P
A*6806	103V
A*6806	15P
A*6806	78L
A*6806	29D
A*6806	102D
A*6806	30D
A*6806	97M
A*6806	2S
A*6806	123Y
A*6806	16G
A*6806	109F
A*6806	31T
A*6806	108R
A*6806	3H
A*6806	79G
A*6806	32Q
A*6806	106D
A*6806	5M
A*6806	56G
A*6806	53E
A*6806	61D
A*6806	9Y
A*6806	98M
A*6806	17R
A*6806	117A
A*6806	52I
A*6806	99Y
A*6806	33F
A*6806	101C
A*6806	34V
A*6806	73T
A*6806	51W
A*6806	63N
A*6806	18G
A*6806	100G
A*6806	35R
A*6806	57P
A*6806	43Q
A*6806	88S
A*6806	36F
A*6806	58E
A*6806	10T
A*6806	70Q
A*6806	46E
A*6806	90A
A*6806	19E
A*6806	121K
A*6806	37D
A*6806	93H
A*6806	38S
A*6806	119D
A*6806	20P
A*6806	112G
A*6806	39D
A*6806	115Q
A*6806	48R
A*6806	85Y
A*6806	40A
A*6806	105S
A*6806	6R
A*6806	124I
A*6806	11S
A*6806	127K
A*6806	54Q
A*6806	64T
A*6806	49A
A*6806	111R
A*6806	41A
A*6806	74D
A*6806	42S
A*6806	72Q
A*6806	44R
A*6806	87Q
A*6806	149A
A*6806	84Y
A*6806	163T
A*6806	94T
A*6806	156W
A*6806	65R
A*6806	182T
A*6806	76V
A*6806	165V
A*6806	91G
A*6806	135A
A*6806	60W
A*6806	179L
A*6806	69A
A*6806	155Q
A*6806	95I
A*6806	130L
A*6806	114E
A*6806	177E
A*6806	122D
A*6806	180Q
A*6806	62R
A*6806	164C
A*6806	120G
A*6806	166E
A*6806	128E
A*6806	181R
A*6806	125A
A*6806	154E
A*6806	129D
A*6806	153A
A*6806	89E
A*6806	178T
A*6806	83G
A*6806	176K
A*6806	110L
A*6806	148E
A*6806	116H
A*6806	136A
A*6806	104G
A*6806	174N
A*6806	68K
A*6806	138M
A*6806	131R
A*6806	151H
A*6806	172L
A*6806	175G
A*6806	152V
A*6806	173E
A*6806	171Y
A*6806	137D
A*6806	170R
A*6806	162G
A*6806	150A
A*6806	144K
A*6806	139A
A*6806	169R
A*6806	161E
A*6806	132S
A*6806	160L
A*6806	147W
A*6806	141Q
A*6806	146K
A*6806	140A
A*6806	168L
A*6806	159Y
A*6806	145H
A*6806	143T
A*6806	133W
A*6806	142T
A*6806	167W
A*6806	158A
A*6806	134T
A*6806	157R
A*6807	96Q
A*6807	182T
A*6807	66N
A*6807	138M
A*6807	106D
A*6807	148E
A*6807	77D
A*6807	156W
A*6807	117A
A*6807	179L
A*6807	75R
A*6807	165V
A*6807	118Y
A*6807	180Q
A*6807	55E
A*6807	164C
A*6807	81L
A*6807	155Q
A*6807	82R
A*6807	153A
A*6807	59Y
A*6807	178T
A*6807	67V
A*6807	177E
A*6807	86N
A*6807	135A
A*6807	92S
A*6807	130L
A*6807	71S
A*6807	181R
A*6807	107G
A*6807	154E
A*6807	102D
A*6807	174N
A*6807	126L
A*6807	136A
A*6807	113Y
A*6807	151H
A*6807	97M
A*6807	131R
A*6807	123Y
A*6807	163T
A*6807	103V
A*6807	172L
A*6807	78L
A*6807	175G
A*6807	79G
A*6807	176K
A*6807	101C
A*6807	173E
A*6807	99Y
A*6807	152V
A*6807	80T
A*6807	170R
A*6807	98M
A*6807	171Y
A*6807	63N
A*6807	137D
A*6807	57P
A*6807	150A
A*6807	56G
A*6807	162G
A*6807	73T
A*6807	160L
A*6807	88S
A*6807	161E
A*6807	100G
A*6807	147W
A*6807	58E
A*6807	132S
A*6807	90A
A*6807	149A
A*6807	119D
A*6807	145H
A*6807	121K
A*6807	144K
A*6807	61D
A*6807	140A
A*6807	70Q
A*6807	139A
A*6807	112G
A*6807	159Y
A*6807	93H
A*6807	169R
A*6807	115Q
A*6807	133W
A*6807	85Y
A*6807	168L
A*6807	104G
A*6807	146K
A*6807	127K
A*6807	142T
A*6807	116H
A*6807	143T
A*6807	74D
A*6807	141Q
A*6807	124I
A*6807	134T
A*6807	111R
A*6807	158A
A*6807	87Q
A*6807	167W
A*6807	64T
A*6807	166E
A*6807	84Y
A*6807	157R
A*6807	76V
A*6807	50P
A*6807	94T
A*6807	12V
A*6807	72Q
A*6807	23I
A*6807	128E
A*6807	51W
A*6807	95I
A*6807	24A
A*6807	60W
A*6807	4S
A*6807	83G
A*6807	7Y
A*6807	105S
A*6807	21R
A*6807	69A
A*6807	13S
A*6807	91G
A*6807	25V
A*6807	114R
A*6807	26G
A*6807	62R
A*6807	14R
A*6807	122D
A*6807	27Y
A*6807	109F
A*6807	28V
A*6807	129D
A*6807	47P
A*6807	120G
A*6807	8F
A*6807	110L
A*6807	15P
A*6807	125A
A*6807	29D
A*6807	89E
A*6807	30D
A*6807	65R
A*6807	2S
A*6807	108R
A*6807	16G
A*6807	68K