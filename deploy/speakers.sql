-- Deploy speakers
-- requires: v1schema

BEGIN;

CREATE TABLE "1".speakers
(
  id serial,
  name character varying NOT NULL,
  twitter character varying,
  avatar_url character varying NOT NULL,
  bio text,
  featured boolean NOT NULL DEFAULT FALSE
)
WITH (
  OIDS = FALSE
);

ALTER TABLE "1".speakers
  ADD CONSTRAINT speakers_pkey PRIMARY KEY(id);

COMMIT;
