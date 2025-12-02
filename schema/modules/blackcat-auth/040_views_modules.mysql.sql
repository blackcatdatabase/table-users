-- Auto-generated from feature-modules-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  rbac_user_roles_access_summary

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_rbac_user_roles_access_summary AS
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
