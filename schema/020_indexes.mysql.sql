-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  users

CREATE INDEX idx_users_last_login_at ON users (last_login_at);

CREATE INDEX idx_users_is_active ON users (is_active);

CREATE INDEX idx_users_actor_role ON users (actor_role);

CREATE INDEX idx_users_last_login_ip_hash ON users (last_login_ip_hash);
