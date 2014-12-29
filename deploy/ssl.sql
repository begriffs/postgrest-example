-- Deploy ssl

BEGIN;

create extension if not exists sslinfo;

COMMIT;
