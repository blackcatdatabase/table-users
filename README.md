# 📦 Users

> Auto-generated from [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) (map@sha1:5221bb5c65d0fbe010594635f9efb6fc13c307b2). Do not edit manually.
> Targets: PHP 8.3; MySQL 8.x / MariaDB 10.4; Postgres 15+.

![PHP](https://img.shields.io/badge/PHP-8.3-blueviolet) ![DB](https://img.shields.io/badge/DB-MySQL%20%7C%20MariaDB%20%7C%20Postgres-informational) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-success)

![Docs](https://img.shields.io/badge/Docs-ready-success) ![Changelog](https://img.shields.io/badge/Changelog-ok-success) ![Changelog%20freshness](https://img.shields.io/badge/Changelog%20freshness-fresh-success) ![Seeds](https://img.shields.io/badge/Seeds-missing-critical) ![Views](https://img.shields.io/badge/Views-ok-success) ![Lineage](https://img.shields.io/badge/Lineage-linked-success) ![Drift](https://img.shields.io/badge/Drift-clean-success) ![Index%20coverage](https://img.shields.io/badge/Index%20coverage-ready-success) ![PII](https://img.shields.io/badge/PII-review-critical)

> 🔥 Lineage hotspot: 32 FK links detected. Make sure cascades/nullability are intentional.

✅ No engine drift detected

<div style='margin:12px 0 18px;padding:14px 16px;border-radius:14px;background:linear-gradient(120deg,#0b1021 0%,#111827 40%,#312e81 100%);color:#e2e8f0;border:1px solid #1f2937;box-shadow:0 18px 55px rgba(49,46,129,0.35);'>
<div style='font-weight:700;letter-spacing:0.4px;font-size:14px;'>Schema vibe</div>
<div style='font-size:13px;opacity:0.95;'>Map: <a href='https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml' style='color:#a5b4fc;'>schema-map-postgres.yaml</a> · Docs: <a href='docs/definitions.md'>definitions</a> · Drift warnings: 0</div>
<div style='font-size:13px;opacity:0.92;'>Lineage heat: 0 outbound / 32 inbound · ✅ No engine drift detected · Index coverage: ready · PII: 8 · Changelog: fresh (18 d)</div>
</div>

## Quick Links
- Schema map: [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml)
- Pkg folder: [packages\users](https://github.com/blackcatacademy/blackcat-database/blob/main/packages\users)
- Definitions: [docs/definitions.md](docs/definitions.md)
- Engine differences: [docs/definitions.md#engine-differences](docs/definitions.md#engine-differences)
- Changelog: [CHANGELOG.md](CHANGELOG.md)

> ERD preview: auto-rendered from docs/definitions.md (mermaid).
```mermaid
graph LR
  %% Neon lineage view (auto-parsed from docs/definitions.md)
  classDef center fill:#0b1021,stroke:#ff6b6b,stroke-width:3px,color:#fefefe;
  classDef link fill:#0a1f33,stroke:#64dfdf,stroke-width:2px,color:#e8f7ff;
  classDef accent fill:#1d1b4c,stroke:#a855f7,stroke-width:2px,color:#f5e1ff;
  classDef inbound fill:#0f172a,stroke:#10b981,stroke-width:2px,color:#e2fcef;
  users["users"]:::center
  api_keys["api_keys"]:::inbound -->|FK| users
  app_settings["app_settings"]:::inbound -->|FK| users
  audit_log["audit_log"]:::inbound -->|FK| users
  auth_events["auth_events"]:::inbound -->|FK| users
  carts["carts"]:::inbound -->|FK| users
  coupon_redemptions["coupon_redemptions"]:::inbound -->|FK| users
  crypto_keys["crypto_keys"]:::inbound -->|FK| users
  deletion_jobs["deletion_jobs"]:::inbound -->|FK| users
  device_fingerprints["device_fingerprints"]:::inbound -->|FK| users
  email_verifications["email_verifications"]:::inbound -->|FK| users
  jwt_tokens["jwt_tokens"]:::inbound -->|FK| users
  key_events["key_events"]:::inbound -->|FK| users
  key_rotation_jobs["key_rotation_jobs"]:::inbound -->|FK| users
  login_attempts["login_attempts"]:::inbound -->|FK| users
  newsletter_subscribers["newsletter_subscribers"]:::inbound -->|FK| users
  notifications["notifications"]:::inbound -->|FK| users
  orders["orders"]:::inbound -->|FK| users
  pq_migration_jobs["pq_migration_jobs"]:::inbound -->|FK| users
  privacy_requests["privacy_requests"]:::inbound -->|FK| users
  rbac_user_permissions["rbac_user_permissions"]:::inbound -->|FK| users
  rbac_user_roles["rbac_user_roles"]:::inbound -->|FK| users
  register_events["register_events"]:::inbound -->|FK| users
  reviews["reviews"]:::inbound -->|FK| users
  session_audit["session_audit"]:::inbound -->|FK| users
  sessions["sessions"]:::inbound -->|FK| users
  signing_keys["signing_keys"]:::inbound -->|FK| users
  system_errors["system_errors"]:::inbound -->|FK| users
  two_factor["two_factor"]:::inbound -->|FK| users
  user_consents["user_consents"]:::inbound -->|FK| users
  user_identities["user_identities"]:::inbound -->|FK| users
  user_profiles["user_profiles"]:::inbound -->|FK| users
  verify_events["verify_events"]:::inbound -->|FK| users
  linkStyle 0 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 1 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 2 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 3 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 4 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 5 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 6 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 7 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 8 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 9 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 10 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 11 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 12 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 13 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 14 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 15 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 16 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 17 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 18 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 19 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 20 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 21 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 22 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 23 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 24 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 25 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 26 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 27 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 28 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 29 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 30 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 31 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
```

## Contents
- [Quick Links](#quick-links)
- [At a Glance](#at-a-glance)
- [Summary](#summary)
- [Relationship Graph](#relationship-graph)
- [Engine Matrix](#engine-matrix)
- [Engine Drift](#engine-drift)
- [Constraints Snapshot](#constraints-snapshot)
- [Compliance Notes](#compliance-notes)
- [Schema Files](#schema-files)
- [Views](#views)
- [Seeds](#seeds)
- [Usage](#usage)
- [Quality Gates](#quality-gates)
- [Regeneration](#regeneration)

## At a Glance
| Metric | Count |
| --- | --- |
| Columns | 19 |
| Indexes | 7 |
| Foreign keys | 0 |
| Unique keys | 3 |
| Outbound links (FK targets) | 0 |
| Inbound links (tables depending on this) | 32 |
| Views | 4 |
| Seeds | 0 |
| Drift warnings | 0 |
| PII flags | 8 |

## Summary
- Table: users
- Schema files: 8
- Views: 4
- Seeds: 0
- Docs: present
- Changelog: present
- Changelog freshness: fresh (18 days old; threshold 45)
- Outbound FK targets: none
- Inbound FK sources: 32
- Index coverage: ready
- Engine targets: PHP 8.3; MySQL/MariaDB/Postgres

## Relationship Graph
> ⚡ Neon FK map below is parsed straight from docs/definitions.md for quick orientation.
```mermaid
graph LR
  %% Neon lineage view (auto-parsed from docs/definitions.md)
  classDef center fill:#0b1021,stroke:#ff6b6b,stroke-width:3px,color:#fefefe;
  classDef link fill:#0a1f33,stroke:#64dfdf,stroke-width:2px,color:#e8f7ff;
  classDef accent fill:#1d1b4c,stroke:#a855f7,stroke-width:2px,color:#f5e1ff;
  classDef inbound fill:#0f172a,stroke:#10b981,stroke-width:2px,color:#e2fcef;
  users["users"]:::center
  api_keys["api_keys"]:::inbound -->|FK| users
  app_settings["app_settings"]:::inbound -->|FK| users
  audit_log["audit_log"]:::inbound -->|FK| users
  auth_events["auth_events"]:::inbound -->|FK| users
  carts["carts"]:::inbound -->|FK| users
  coupon_redemptions["coupon_redemptions"]:::inbound -->|FK| users
  crypto_keys["crypto_keys"]:::inbound -->|FK| users
  deletion_jobs["deletion_jobs"]:::inbound -->|FK| users
  device_fingerprints["device_fingerprints"]:::inbound -->|FK| users
  email_verifications["email_verifications"]:::inbound -->|FK| users
  jwt_tokens["jwt_tokens"]:::inbound -->|FK| users
  key_events["key_events"]:::inbound -->|FK| users
  key_rotation_jobs["key_rotation_jobs"]:::inbound -->|FK| users
  login_attempts["login_attempts"]:::inbound -->|FK| users
  newsletter_subscribers["newsletter_subscribers"]:::inbound -->|FK| users
  notifications["notifications"]:::inbound -->|FK| users
  orders["orders"]:::inbound -->|FK| users
  pq_migration_jobs["pq_migration_jobs"]:::inbound -->|FK| users
  privacy_requests["privacy_requests"]:::inbound -->|FK| users
  rbac_user_permissions["rbac_user_permissions"]:::inbound -->|FK| users
  rbac_user_roles["rbac_user_roles"]:::inbound -->|FK| users
  register_events["register_events"]:::inbound -->|FK| users
  reviews["reviews"]:::inbound -->|FK| users
  session_audit["session_audit"]:::inbound -->|FK| users
  sessions["sessions"]:::inbound -->|FK| users
  signing_keys["signing_keys"]:::inbound -->|FK| users
  system_errors["system_errors"]:::inbound -->|FK| users
  two_factor["two_factor"]:::inbound -->|FK| users
  user_consents["user_consents"]:::inbound -->|FK| users
  user_identities["user_identities"]:::inbound -->|FK| users
  user_profiles["user_profiles"]:::inbound -->|FK| users
  verify_events["verify_events"]:::inbound -->|FK| users
  linkStyle 0 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 1 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 2 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 3 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 4 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 5 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 6 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 7 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 8 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 9 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 10 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 11 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 12 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 13 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 14 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 15 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 16 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 17 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 18 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 19 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 20 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 21 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 22 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 23 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 24 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 25 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 26 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
  linkStyle 27 stroke:#a855f7,stroke-width:3px,opacity:0.92;
  linkStyle 28 stroke:#ffd166,stroke-width:3px,opacity:0.92;
  linkStyle 29 stroke:#4ade80,stroke-width:3px,opacity:0.92;
  linkStyle 30 stroke:#ff6b6b,stroke-width:3px,opacity:0.92;
  linkStyle 31 stroke:#64dfdf,stroke-width:3px,opacity:0.92;
```

- Outbound (depends on): _none_
- Inbound (relies on this): "api_keys", "app_settings", "audit_log", "auth_events", "carts", "coupon_redemptions", "crypto_keys", "deletion_jobs", "device_fingerprints", "email_verifications", "jwt_tokens", "key_events", "key_rotation_jobs", "login_attempts", "newsletter_subscribers", "notifications", "orders", "pq_migration_jobs", "privacy_requests", "rbac_user_permissions", "rbac_user_roles", "register_events", "reviews", "session_audit", "sessions", "signing_keys", "system_errors", "two_factor", "user_consents", "user_identities", "user_profiles", "verify_events"
- Legend: central node = this table, teal/purple arrows = outbound FK targets, green arrows = inbound FK sources.

## Engine Matrix
| Engine | Support |
| --- | --- |
| mysql | ✅ schema(4)<br/>✅ views(2)<br/>⚠️ seeds |
| postgres | ✅ schema(4)<br/>✅ views(2)<br/>⚠️ seeds |

## Engine Drift
_No engine differences detected._

## Constraints Snapshot
- `actor_role` – default=customer, enum
- `created_at` – default=CURRENT_TIMESTAMP(6)
- `failed_logins` – default=0
- `is_active` – default=FALSE
- `is_locked` – default=FALSE

## Schema Files
| File | Engine |
| --- | --- |
| [001_table.mysql.sql](schema/001_table.mysql.sql) | mysql |
| [001_table.postgres.sql](schema/001_table.postgres.sql) | postgres |
| [020_indexes.mysql.sql](schema/020_indexes.mysql.sql) | mysql |
| [020_indexes.postgres.sql](schema/020_indexes.postgres.sql) | postgres |
| [040_views.mysql.sql](schema/040_views.mysql.sql) | mysql |
| [040_views.postgres.sql](schema/040_views.postgres.sql) | postgres |
| [040_views_modules.mysql.sql](schema/modules/blackcat-auth/040_views_modules.mysql.sql) | mysql |
| [040_views_modules.postgres.sql](schema/modules/blackcat-auth/040_views_modules.postgres.sql) | postgres |

## Views
| File | Engine | Source |
| --- | --- | --- |
| [040_views.mysql.sql](schema/040_views.mysql.sql) | mysql | package |
| [040_views.postgres.sql](schema/040_views.postgres.sql) | postgres | package |
| [040_views_modules.mysql.sql](schema/modules/blackcat-auth/040_views_modules.mysql.sql) | mysql | package |
| [040_views_modules.postgres.sql](schema/modules/blackcat-auth/040_views_modules.postgres.sql) | postgres | package |

## Seeds
_No seed files found._

## Compliance Notes
> ⚠️ Potential PII/secret fields – review retention/encryption policies:
- email_hash (email)
- email_hash_key_version (email)
- id (key)
- last_login_ip_key_version (key)
- must_change_password (password)
- password_algo (password)
- password_hash (password)
- password_key_version (password)

## Usage
- Install/upgrade schema: pwsh -NoLogo -NoProfile -File scripts/schema-tools/Migrate-DryRun.ps1 -Package users -Apply
- Split schema: pwsh -NoLogo -NoProfile -File scripts/schema-tools/Split-SchemaToPackages.ps1
- Generate PHP DTO/Repo: pwsh -NoLogo -NoProfile -File scripts/schema-tools/Generate-PhpFromSchema.ps1 -SchemaDir scripts/schema -TemplatesRoot scripts/templates/php -ModulesRoot packages -NameResolution detect -Force
- Validate SQL: pwsh -NoLogo -NoProfile -File scripts/schema-tools/Lint-Sql.ps1 -PackagesDir packages
- PHPUnit (full DB matrix): set BC_DB=mysql|postgres|mariadb then run `vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"`

## Quality Gates
[x] Definitions present
[x] Changelog present
[x] Changelog fresh
[x] Index coverage (PK + index)
[ ] Outbound lineage captured
[x] Inbound lineage mapped
[x] ERD renderable (mermaid)
[ ] Seeds available – add smoke data seeds

## Maintenance Checklist
- [ ] Update schema map and split: Split-SchemaToPackages.ps1
- [ ] Regenerate PHP DTO/Repo: Generate-PhpFromSchema.ps1
- [ ] Rebuild definitions + README + docs index
- [ ] Lint SQL + run full PHPUnit DB matrix

## Regeneration
- Definitions: pwsh -NoLogo -NoProfile -File scripts/schema-tools/Build-Definitions.ps1 -Force
- Pkg README: pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageReadmes.ps1 -Force
- Docs index: pwsh -NoLogo -NoProfile -File scripts/docs/New-DocsIndex.ps1 -Force
- Pkg changelog: pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageChangelogs.ps1 -Force

---
Generated by scripts/docs/New-PackageReadmes.ps1 (map@sha1:5221bb5c65d0fbe010594635f9efb6fc13c307b2)
⚖️ License: Proprietary – see [LICENSE](https://github.com/blackcatacademy/blackcat-database/blob/main/LICENSE).
