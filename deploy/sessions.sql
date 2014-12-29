-- Deploy sessions
-- requires: speakers

BEGIN;

CREATE TABLE "1".sessions
(
  id serial,
  speaker_id integer,
  start_time time with time zone not NULL,
  end_time time with time zone not NULL,
  location character varying,

  CONSTRAINT speaker_id FOREIGN KEY (speaker_id)
      REFERENCES "1".speakers (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT
)
WITH (
  OIDS = FALSE
);

ALTER TABLE "1".sessions
  ADD CONSTRAINT sessions_pkey PRIMARY KEY(id);

ALTER TABLE "1".sessions
  ADD CONSTRAINT start_end_in_order
  CHECK (start_time < end_time);

ALTER TABLE "1".sessions
  ADD CONSTRAINT during_normal_hours
  CHECK ('6:00am' < start_time and end_time < '10:00pm');

COMMIT;
