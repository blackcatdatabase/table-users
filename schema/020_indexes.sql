-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: users
CREATE UNIQUE INDEX ux_users_email_hash ON users (email_hash);
