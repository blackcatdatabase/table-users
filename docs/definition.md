# Definition – users

User accounts and authentication attributes.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| email_hash | BINARY(32) | YES | — | Hashed email (salted/peppered). | PII: hashed |
| email_hash_key_version | VARCHAR(64) | YES | — | Key version for email_hash. |  |
| password_hash | VARCHAR(255) | NO | — | Password hash string. | PII: hashed |
| password_algo | VARCHAR(64) | YES | — | Password hash algorithm id. |  |
| password_key_version | VARCHAR(64) | YES | — | Key/pepper version for passwords. |  |
| is_active | BOOLEAN | NO | 0 | Account enabled flag. |  |
| is_locked | BOOLEAN | NO | 0 | Lock flag (manual/automatic). |  |
| failed_logins | INT | NO | 0 | Failed login counter. |  |
| must_change_password | BOOLEAN | NO | 0 | Force password change at next login. |  |
| last_login_at | DATETIME(6) | YES | — | Last successful login (UTC). |  |
| last_login_ip_hash | BINARY(32) | YES | — | Hashed last login IP. | PII: hashed |
| last_login_ip_key_version | VARCHAR(64) | YES | — | Key version for last_login_ip_hash. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |
| deleted_at | DATETIME(6) | YES | — | Soft delete timestamp. |  |
| actor_role | ENUM('customer','admin') | NO | ''customer'' | Role within application. | enum: customer, admin |
