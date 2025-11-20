-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  users
-- Contract view for [users]
-- Hides password_* columns. Adds HEX helpers for hashes.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_users AS
SELECT
  id,
  email_hash,
  CAST(LPAD(HEX(email_hash), 64, '0') AS CHAR(64)) AS email_hash_hex,
  email_hash_key_version,
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

-- Auto-generated from schema-views-feature-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  users_rbac_access_summary
-- Per-user summary: roles + effective permissions
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_user_access_summary AS
SELECT
  u.id AS user_id,
  COUNT(DISTINCT CASE
      WHEN ur.status = 'active' AND (ur.expires_at IS NULL OR ur.expires_at > NOW())
      THEN ur.role_id END) AS active_roles,
  COUNT(DISTINCT ep.permission_id) AS effective_permissions
FROM users u
LEFT JOIN rbac_user_roles ur ON ur.user_id = u.id
LEFT JOIN vw_rbac_effective_permissions ep ON ep.user_id = u.id
GROUP BY u.id;

