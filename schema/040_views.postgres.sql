-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-10-24T09:45:40Z)
-- engine: postgres
-- table:  users
-- Contract view for [users]
-- Hides password_* columns. Keeps operational flags and audit fields.
CREATE OR REPLACE VIEW vw_users AS
SELECT
  id,
  email_hash,
  email_hash_key_version,
  is_active,
  is_locked,
  failed_logins,
  must_change_password,
  last_login_at,
  last_login_ip_hash,
  last_login_ip_key_version,
  created_at,
  updated_at,
  deleted_at,
  actor_role
FROM users;
