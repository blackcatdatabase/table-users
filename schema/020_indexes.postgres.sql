-- Auto-generated from schema-map-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  users
CREATE INDEX IF NOT EXISTS idx_users_last_login_at ON users (last_login_at);

CREATE INDEX IF NOT EXISTS idx_users_is_active ON users (is_active);

CREATE INDEX IF NOT EXISTS idx_users_actor_role ON users (actor_role);

CREATE INDEX IF NOT EXISTS idx_users_last_login_ip_hash ON users (last_login_ip_hash);

CREATE UNIQUE INDEX IF NOT EXISTS ux_users_email_hash ON users (email_hash);
