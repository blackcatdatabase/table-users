-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
-- engine: postgres
-- table:  users

-- Contract view for [users]
-- Adds hex helpers. Includes password_* for auth flows (do not expose externally).
CREATE OR REPLACE VIEW vw_users AS
SELECT
  id,
  email_hash,
  UPPER(encode(email_hash,'hex')) AS email_hash_hex,
  email_hash_key_version,
  password_hash,
  password_algo,
  password_key_version,
  is_active,
  is_locked,
  failed_logins,
  must_change_password,
  last_login_at,
  last_login_ip_hash,
  UPPER(encode(last_login_ip_hash,'hex')) AS last_login_ip_hash_hex,
  last_login_ip_key_version,
  created_at,
  updated_at,
  version,
  deleted_at,
  actor_role
FROM users;
