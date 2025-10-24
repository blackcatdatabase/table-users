-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  users
CREATE INDEX idx_users_last_login_at ON users (last_login_at);

CREATE INDEX idx_users_is_active ON users (is_active);

CREATE INDEX idx_users_actor_role ON users (actor_role);

CREATE INDEX idx_users_last_login_ip_hash ON users (last_login_ip_hash);

CREATE UNIQUE INDEX ux_users_email_hash ON users (email_hash);
