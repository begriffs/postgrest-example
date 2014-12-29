-- Deploy sponsors
-- requires: v1schema

BEGIN;

CREATE TABLE "1".sponsors
(
  id serial,
  name character varying NOT NULL,
  site_url character varying NOT NULL,
  logo_url character varying NOT NULL
)
WITH (
  OIDS = FALSE
);

ALTER TABLE "1".sponsors
  ADD CONSTRAINT sponsors_pkey PRIMARY KEY(id);

COMMIT;
