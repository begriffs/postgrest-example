-- Revert session_type

BEGIN;

ALTER TABLE "1".sessions
  DROP COLUMN session_type;

DROP TYPE session_type_enum;

COMMIT;
