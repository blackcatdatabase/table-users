-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-10-24T09:13:35Z)
-- engine: mysql
-- table:  users
CREATE UNIQUE INDEX ux_users_email_hash ON users (email_hash);
