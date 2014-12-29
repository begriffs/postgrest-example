-- Verify sponsors

BEGIN;

SELECT id, name, site_url, logo_url FROM "1".sponsors WHERE FALSE;

ROLLBACK;
