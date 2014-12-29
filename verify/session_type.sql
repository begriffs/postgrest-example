-- Verify session_type

BEGIN;

SELECT session_type from "1".sessions where FALSE;

ROLLBACK;
