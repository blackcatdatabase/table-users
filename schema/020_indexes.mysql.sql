-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  users
CREATE UNIQUE INDEX ux_users_email_hash_live ON users (email_hash);
