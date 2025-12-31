# users

User accounts and authentication attributes.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| email_hash | mysql: BINARY(32) / postgres: BYTEA | YES |  | Hashed email (salted/peppered). UNIQUE. |
| email_hash_key_version | VARCHAR(64) | YES |  | Key version for email_hash. |
| password_hash | VARCHAR(255) | NO |  | Password hash string. |
| password_algo | VARCHAR(64) | YES |  | Password hash algorithm id. |
| password_key_version | VARCHAR(64) | YES |  | Key/pepper version for passwords. |
| is_active | BOOLEAN | NO | mysql: 0 / postgres: FALSE | Account enabled flag. |
| is_locked | BOOLEAN | NO | mysql: 0 / postgres: FALSE | Lock flag (manual/automatic). |
| failed_logins | mysql: INT / postgres: INTEGER | NO | 0 | Failed login counter. |
| must_change_password | BOOLEAN | NO | mysql: 0 / postgres: FALSE | Force password change at next login. |
| last_login_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Last successful login (UTC). |
| last_login_ip_hash | mysql: BINARY(32) / postgres: BYTEA | YES |  | Hashed last login IP. |
| last_login_ip_key_version | VARCHAR(64) | YES |  | Key version for last_login_ip_hash. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |
| deleted_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Soft delete timestamp. |
| actor_role | mysql: ENUM('customer','admin') / postgres: TEXT | NO | customer | Role within application. (enum: customer, admin) |

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
| vw_users | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_users | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
