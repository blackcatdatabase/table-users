-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  users

CREATE UNIQUE INDEX ux_users_email_hash_live ON users (email_hash);
