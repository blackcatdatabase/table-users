-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  users

CREATE TABLE IF NOT EXISTS users (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  email_hash BINARY(32) NULL,
  email_hash_key_version VARCHAR(64) NULL,
  password_hash VARCHAR(255) NOT NULL,
  password_algo VARCHAR(64) NULL,
  password_key_version VARCHAR(64) NULL,
  is_active BOOLEAN NOT NULL DEFAULT 0,
  is_locked BOOLEAN NOT NULL DEFAULT 0,
  failed_logins INT NOT NULL DEFAULT 0,
  must_change_password BOOLEAN NOT NULL DEFAULT 0,
  last_login_at DATETIME(6) NULL,
  last_login_ip_hash BINARY(32) NULL,
  last_login_ip_key_version VARCHAR(64) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  version INT UNSIGNED NOT NULL DEFAULT 0,
  deleted_at DATETIME(6) NULL,
  actor_role ENUM('customer','admin') NOT NULL DEFAULT 'customer',
  INDEX idx_users_last_login_at (last_login_at),
  INDEX idx_users_is_active (is_active),
  INDEX idx_users_actor_role (actor_role),
  INDEX idx_users_last_login_ip_hash (last_login_ip_hash),
  UNIQUE KEY ux_users_email_hash (email_hash)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
