-- Verify sessions

BEGIN;

SELECT id, speaker_id, start_time, end_time, location
  FROM "1".sessions
 WHERE FALSE;

SELECT nextval('1.sessions_id_seq');

ROLLBACK;
