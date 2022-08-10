create table requests(
    id serial,primary key (id),
    name character varying (100),
    dni character varying (100),
    career character varying (100),
    type character varying (100),
    reason character varying (100),
    description character varying (100),
    phoneContact character varying (100),
    registerDate timestamp with time zone,
    scoreReply integer,
    active boolean
);

CREATE TABLE requests
(
    id serial NOT NULL ,
    name character varying(100),
    dni character varying(100),
    career character varying(100),
    type character varying(100),
    reason character varying(100),
    description character varying(100),
    phonecontact character varying(100),
    registerdate timestamp without time zone,
    scorereply integer,
    active boolean,
    CONSTRAINT requests_pkey PRIMARY KEY (id)
)
    
 insert into requests (name,dni,career,type,reason,description,phoneContact,registerDate,scoreReply,active)values
 ('name','dni','career','type','reason','description','phoneContact',now(),3,true);