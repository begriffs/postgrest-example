-- Verify speaker_order

BEGIN;

select lineup_order from "1".speakers where false;

ROLLBACK;
