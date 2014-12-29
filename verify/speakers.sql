-- Verify speakers

BEGIN;

SELECT id, name, twitter, avatar_url, bio, featured
  FROM "1".speakers
 WHERE FALSE;

SELECT nextval('1.speakers_id_seq');

ROLLBACK;
