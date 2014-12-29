-- Deploy session_type
-- requires: sessions

BEGIN;

CREATE TYPE session_type_enum AS ENUM ('talk', 'workshop');

ALTER TABLE "1".sessions
  ADD COLUMN session_type session_type_enum NOT NULL;

COMMIT;
