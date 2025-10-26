-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  users
CREATE UNIQUE INDEX ux_users_email_hash ON users (email_hash);
