<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – users

User accounts and authentication attributes.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| email_hash | BYTEA | YES | — | Hashed email (salted/peppered). UNIQUE. | PII: hashed |
| email_hash_key_version | VARCHAR(64) | YES | — | Key version for email_hash. |  |
| password_hash | VARCHAR(255) | NO | — | Password hash string. | PII: hashed |
| password_algo | VARCHAR(64) | YES | — | Password hash algorithm id. |  |
| password_key_version | VARCHAR(64) | YES | — | Key/pepper version for passwords. |  |
| is_active | BOOLEAN | NO | FALSE | Account enabled flag. |  |
| is_locked | BOOLEAN | NO | FALSE | Lock flag (manual/automatic). |  |
| failed_logins | INTEGER | NO | 0 | Failed login counter. |  |
| must_change_password | BOOLEAN | NO | FALSE | Force password change at next login. |  |
| last_login_at | TIMESTAMPTZ(6) | YES | — | Last successful login (UTC). |  |
| last_login_ip_hash | BYTEA | YES | — | Hashed last login IP. | PII: hashed |
| last_login_ip_key_version | VARCHAR(64) | YES | — | Key version for last_login_ip_hash. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — | Soft delete timestamp. |  |
| actor_role | TEXT | NO | 'customer' | Role within application. | enum: customer, admin |