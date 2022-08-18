
    


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
    registerdate date,
    scorereply integer,
    active boolean,
    CONSTRAINT requests_pkey PRIMARY KEY (id)
);
    

 insert into requests (name,dni,career,type,reason,description,phoneContact,registerDate,scoreReply,active)values
 ('name','dni','Software','SIAU','reason','description','phoneContact',now(),3,true);