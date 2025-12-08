# users

User accounts and authentication attributes.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| actor_role | TEXT | NO | customer | Role within application. (enum: customer, admin) |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| deleted_at | TIMESTAMPTZ(6) | YES |  | Soft delete timestamp. |
| email_hash | BYTEA | YES |  | Hashed email (salted/peppered). UNIQUE. |
| email_hash_key_version | VARCHAR(64) | YES |  | Key version for email_hash. |
| failed_logins | INTEGER | NO | 0 | Failed login counter. |
| id | BIGINT | NO |  | Surrogate primary key. |
| is_active | BOOLEAN | NO | FALSE | Account enabled flag. |
| is_locked |  | NO | FALSE | Lock flag (manual/automatic). |
| last_login_at | TIMESTAMPTZ(6) | YES |  | Last successful login (UTC). |
| last_login_ip_hash | BYTEA | YES |  | Hashed last login IP. |
| last_login_ip_key_version | VARCHAR(64) | YES |  | Key version for last_login_ip_hash. |
| must_change_password | BOOLEAN | NO | FALSE | Force password change at next login. |
| password_algo | VARCHAR(64) | YES |  | Password hash algorithm id. |
| password_hash | VARCHAR(255) | NO |  | Password hash string. |
| password_key_version | VARCHAR(64) | YES |  | Key/pepper version for passwords. |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_users_email_hash | email_hash |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_users_actor_role | actor_role | CREATE INDEX idx_users_actor_role ON users (actor_role) |
| idx_users_is_active | is_active | CREATE INDEX idx_users_is_active ON users (is_active) |
| idx_users_last_login_at | last_login_at | CREATE INDEX idx_users_last_login_at ON users (last_login_at) |
| idx_users_last_login_ip_hash | last_login_ip_hash | CREATE INDEX idx_users_last_login_ip_hash ON users (last_login_ip_hash) |
| ux_users_email_hash | email_hash | UNIQUE KEY ux_users_email_hash (email_hash) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_users_email_hash | email_hash |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_users_actor_role | actor_role | CREATE INDEX IF NOT EXISTS idx_users_actor_role ON users (actor_role) |
| idx_users_is_active | is_active | CREATE INDEX IF NOT EXISTS idx_users_is_active ON users (is_active) |
| idx_users_last_login_at | last_login_at | CREATE INDEX IF NOT EXISTS idx_users_last_login_at ON users (last_login_at) |
| idx_users_last_login_ip_hash | last_login_ip_hash | CREATE INDEX IF NOT EXISTS idx_users_last_login_ip_hash ON users (last_login_ip_hash) |
| ux_users_email_hash | email_hash | CREATE UNIQUE INDEX IF NOT EXISTS ux_users_email_hash ON users (email_hash) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_users | mysql | algorithm=MERGE, security=INVOKER | [packages\users\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/users/schema/040_views.mysql.sql) |
| vw_users | postgres |  | [packages\users\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/users/schema/040_views.postgres.sql) |
