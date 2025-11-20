-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  users
-- Contract view for [users]
-- Hides password_* columns. Adds hex helpers.
CREATE OR REPLACE VIEW vw_users AS
SELECT
  id,
  email_hash,
  UPPER(encode(email_hash,'hex')) AS email_hash_hex,
  email_hash_key_version,
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

-- Auto-generated from schema-views-feature-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  users_rbac_access_summary
-- Per-user summary: roles + effective permissions
CREATE OR REPLACE VIEW vw_rbac_user_access_summary AS
SELECT
  u.id AS user_id,
  COUNT(DISTINCT ur.role_id) FILTER (WHERE ur.status = ''active'' AND (ur.expires_at IS NULL OR ur.expires_at > now())) AS active_roles,
  COUNT(DISTINCT ep.permission_id) AS effective_permissions
FROM users u
LEFT JOIN rbac_user_roles ur ON ur.user_id = u.id
LEFT JOIN vw_rbac_effective_permissions ep ON ep.user_id = u.id
GROUP BY u.id;

