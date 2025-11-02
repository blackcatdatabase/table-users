-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  users
CREATE UNIQUE INDEX ux_users_email_hash ON users (email_hash);
