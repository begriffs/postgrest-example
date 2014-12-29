-- Verify ssl

BEGIN;

SELECT ssl_is_used();

ROLLBACK;
