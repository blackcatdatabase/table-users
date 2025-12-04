-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  users

CREATE UNIQUE INDEX ux_users_email_hash_live ON users (email_hash);
