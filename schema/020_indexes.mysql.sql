-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  users

CREATE UNIQUE INDEX ux_users_email_hash_live ON users (email_hash);
