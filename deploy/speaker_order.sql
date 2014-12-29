-- Deploy speaker_order
-- requires: speakers

BEGIN;

ALTER TABLE "1".speakers ADD COLUMN lineup_order integer;

COMMIT;
