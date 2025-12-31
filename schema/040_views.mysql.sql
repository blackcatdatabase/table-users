-- Auto-generated from schema-views-mysql.yaml (map@sha1:9417D8642843C7C690617409574FC6783895880D)
-- engine: mysql
-- table:  users

-- Contract view for [users]
-- Adds HEX helpers for hashes. Includes password_* for auth flows (do not expose externally).
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_users AS
SELECT
  id,
  email_hash,
  CAST(LPAD(HEX(email_hash), 64, '0') AS CHAR(64)) AS email_hash_hex,
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
  CAST(LPAD(HEX(last_login_ip_hash), 64, '0') AS CHAR(64)) AS last_login_ip_hash_hex,
  last_login_ip_key_version,
  created_at,
  updated_at,
  version,
  deleted_at,
  actor_role
FROM users;
