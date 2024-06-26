DROP TABLE IF EXISTS order_log;

DROP SEQUENCE IF EXISTS order_log_seq;
CREATE SEQUENCE order_log_seq;
-- SELECT setval('order_log_seq', 0, true); -- last inserted id by sample data


CREATE TABLE order_log (
  "order_log_id" int check ("order_log_id" > 0) NOT NULL DEFAULT NEXTVAL ('order_log_seq'),
  "order_id" int check ("order_id" > 0) NOT NULL,
  "order_status_id" int check ("order_status_id" > 0) NOT NULL,
  "notify" smallint NOT NULL DEFAULT 0,
  "public" smallint NOT NULL DEFAULT 0,
  "note" text NOT NULL,
  "created_at" timestamp(0) NOT NULL DEFAULT now(),
  PRIMARY KEY ("order_log_id")
);
