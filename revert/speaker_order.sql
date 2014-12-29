-- Revert speaker_order

BEGIN;

ALTER TABLE "1".speakers DROP COLUMN lineup_order;

COMMIT;
