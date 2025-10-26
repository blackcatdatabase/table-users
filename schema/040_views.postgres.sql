-- Auto-generated from schema-views-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  users
-- Contract view for [users]
-- Hides password_* columns. Adds hex helpers.
CREATE OR REPLACE VIEW vw_users AS
SELECT
  id,
  email_hash,
  encode(email_hash, 'hex') AS email_hash_hex,
  email_hash_key_version,
  is_active,
  is_locked,
  failed_logins,
  must_change_password,
  last_login_at,
  last_login_ip_hash,
  encode(last_login_ip_hash, 'hex') AS last_login_ip_hash_hex,
  last_login_ip_key_version,
  created_at,
  updated_at,
  deleted_at,
  actor_role
FROM users;
