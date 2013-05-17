# Tasks schema

# --- !Ups

DROP TABLE task;
DROP SEQUENCE task_id_seq;

DROP TABLE person;
DROP SEQUENCE person_id_seq;

DROP TABLE adresse;
DROP SEQUENCE adresse_id_seq;

CREATE SEQUENCE adresse_id_seq;
CREATE TABLE adresse (
    id bigint NOT NULL DEFAULT nextval('adresse_id_seq') PRIMARY KEY,
    adressenavn varchar(255),
    postnummer varchar(4),
    poststed varchar(255)
);

CREATE SEQUENCE person_id_seq;
CREATE TABLE person (
    id bigint NOT NULL DEFAULT nextval('person_id_seq') PRIMARY KEY,
    navn varchar(63),
    fodselsdato varchar(255),
    adresseId bigint(4),
    info varchar(1023),
    FOREIGN KEY (adresseId ) REFERENCES adresse(id)

);

# --- !Downs
DROP TABLE person;
DROP SEQUENCE person_id_seq;

DROP TABLE adresse;
DROP SEQUENCE adresse_id_seq;
