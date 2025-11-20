# 📦 Users

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->

> Schema package for table **users** (repo: `users`).

## Files
```
schema/
  001_table.sql
  020_indexes.sql
  # (no foreign keys declared in map)
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/020_indexes.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/020_indexes.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/020_indexes.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT | — | AS | PK |
| email_hash | BYTEA | YES | — |  |
| email_hash_key_version | VARCHAR(64) | YES | — |  |
| password_hash | VARCHAR(255) | NO | — |  |
| password_algo | VARCHAR(64) | YES | — |  |
| password_key_version | VARCHAR(64) | YES | — |  |
| is_active | BOOLEAN | NO | FALSE |  |
| is_locked | BOOLEAN | NO | FALSE |  |
| failed_logins | INTEGER | NO | 0 |  |
| must_change_password | BOOLEAN | NO | FALSE |  |
| last_login_at | TIMESTAMPTZ(6) | YES | — |  |
| last_login_ip_hash | BYTEA | YES | — |  |
| last_login_ip_key_version | VARCHAR(64) | YES | — |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| version | INTEGER | NO | 0 |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — |  |
| actor_role | TEXT | NO | 'customer' |  |

## Relationships
- No outgoing foreign keys.

```mermaid
erDiagram
  USERS {
    INT id PK
    BYTEA email_hash
    VARCHAR email_hash_key_version
    VARCHAR password_hash
    VARCHAR password_algo
    VARCHAR password_key_version
    BOOLEAN is_active
    BOOLEAN is_locked
    INTEGER failed_logins
    BOOLEAN must_change_password
    TIMESTAMPTZ last_login_at
    BYTEA last_login_ip_hash
    VARCHAR last_login_ip_key_version
    TIMESTAMPTZ created_at
    TIMESTAMPTZ updated_at
    INTEGER version
    TIMESTAMPTZ deleted_at
    VARCHAR actor_role
  }
```

## Indexes
- 5 deferred index statement(s) in schema/020_indexes.sql.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.
