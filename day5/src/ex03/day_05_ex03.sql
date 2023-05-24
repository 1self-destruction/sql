CREATE INDEX IF NOT EXISTS idx_person_order_multi
ON person_order USING btree (person_id, menu_id, order_date);

--SET ENABLE_SEQSCAN TO OFF;
--EXPLAIN ANALYZE SELECT person_id, menu_id, order_date
--FROM person_order WHERE person_id = 2 AND menu_id = 13;