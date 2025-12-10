# 📦 Users

> Auto-generated from [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) (map@sha1:5221bb5c65d0fbe010594635f9efb6fc13c307b2). Do not edit manually.
> Targets: PHP 8.3; MySQL 8.x / MariaDB 10.4; Postgres 15+.

![PHP](https://img.shields.io/badge/PHP-8.3-blueviolet) ![DB](https://img.shields.io/badge/DB-MySQL%20%7C%20MariaDB%20%7C%20Postgres-informational) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-success)

![Docs](https://img.shields.io/badge/Docs-ready-success) ![Changelog](https://img.shields.io/badge/Changelog-ok-success) ![Changelog%20freshness](https://img.shields.io/badge/Changelog%20freshness-fresh-success) ![Seeds](https://img.shields.io/badge/Seeds-missing-critical) ![Views](https://img.shields.io/badge/Views-ok-success) ![Lineage](https://img.shields.io/badge/Lineage-linked-success) ![Drift](https://img.shields.io/badge/Drift-clean-success) ![Index%20coverage](https://img.shields.io/badge/Index%20coverage-ready-success) ![PII](https://img.shields.io/badge/PII-review-critical)

> 🔥 Lineage hotspot: 32 FK links detected. Make sure cascades/nullability are intentional.

✅ No engine drift detected

> **Schema snapshot**
> Map: [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) · Docs: [docs/definitions.md](docs/definitions.md) · Drift warnings: 0
> Lineage: 0 outbound / 32 inbound · ✅ No engine drift detected · Index coverage: ready · PII flags: 8 · Changelog: fresh

## Quick Links
| What | Link | Notes |
| --- | --- | --- |
| Schema map | [schema-map-postgres.yaml](https://github.com/blackcatacademy/blackcat-database/blob/main/scripts/schema/schema-map-postgres.yaml) | Source for table metadata |
| Pkg folder | [packages\users](https://github.com/blackcatacademy/blackcat-database/blob/main/packages\users) | Repo location |
| Definitions | [docs/definitions.md](docs/definitions.md) | Column/index/FK docs |
| Engine differences | [docs/definitions.md#engine-differences](docs/definitions.md#engine-differences) | Drift section in definitions |
| Changelog | [CHANGELOG.md](CHANGELOG.md) | Recent changes |

## Contents
| Section | Purpose |
| --- | --- |
| [Quick Links](#quick-links) | Jump to definitions/changelog/tooling |
| [At a Glance](#at-a-glance) | Key counts (columns/indexes/views) |
| [Summary](#summary) | Compact status matrix for this package |
| [Relationship Graph](#relationship-graph) | FK lineage snapshot |
| [Engine Matrix](#engine-matrix) | MySQL/Postgres coverage |
| [Engine Drift](#engine-drift) | Cross-engine diffs |
| [Constraints Snapshot](#constraints-snapshot) | Defaults/enums/checks |
| [Compliance Notes](#compliance-notes) | PII/secret hints |
| [Schema Files](#schema-files) | Scripts by engine |
| [Views](#views) | View definitions |
| [Seeds](#seeds) | Fixtures/smoke data |
| [Usage](#usage) | Runnable commands |
| [Quality Gates](#quality-gates) | Readiness checklist |
| [Regeneration](#regeneration) | Rebuild docs/readme |

## At a Glance
| Metric | Count |
| --- | --- |
| Columns | **19** |
| Indexes | **7** |
| Foreign keys | **0** |
| Unique keys | **3** |
| Outbound links (FK targets) | **0** |
| Inbound links (tables depending on this) | **32** |
| Views | **4** |
| Seeds | **0** |
| Drift warnings | **0** |
| PII flags | **8** |

## Summary
| Item | Value |
| --- | --- |
| Table | users |
| Schema files | **8** |
| Views | **4** |
| Seeds | **0** |
| Docs | **present** |
| Changelog | **present** |
| Changelog freshness | fresh (threshold 45 d) |
| Lineage | outbound **0** / inbound **32** |
| Index coverage | **ready** |
| Engine targets | PHP 8.3; MySQL/MariaDB/Postgres |

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
- `is_active` – default=mysql: 0 / postgres: FALSE
- `is_locked` – default=mysql: 0 / postgres: FALSE

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
```bash
# Install/upgrade schema
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Migrate-DryRun.ps1 -Package users -Apply
# Split schema to packages
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Split-SchemaToPackages.ps1
# Generate PHP DTO/Repo from schema
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Generate-PhpFromSchema.ps1 -SchemaDir scripts/schema -TemplatesRoot scripts/templates/php -ModulesRoot packages -NameResolution detect -Force
# Validate SQL across packages
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Lint-Sql.ps1 -PackagesDir packages
```

- PHPUnit (full DB matrix):
```bash
BC_DB=mysql vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
BC_DB=postgres vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
BC_DB=mariadb vendor/bin/phpunit --configuration tests/phpunit.xml.dist --testsuite "DB Integration"
```

## Quality Gates
- [x] Definitions present
- [x] Changelog present
- [x] Changelog fresh
- [x] Index coverage (PK + index)
- [ ] Outbound lineage captured
- [x] Inbound lineage mapped
- [x] ERD renderable (mermaid)
- [ ] Seeds available – add smoke data seeds

## Maintenance Checklist
- [ ] Update schema map and split: Split-SchemaToPackages.ps1
- [ ] Regenerate PHP DTO/Repo: Generate-PhpFromSchema.ps1
- [ ] Rebuild definitions + README + docs index
- [ ] Ensure seeds/smoke data are present (if applicable)
- [ ] Lint SQL + run full PHPUnit DB matrix

## Regeneration
```bash
# Rebuild definitions (docs/definitions.md)
pwsh -NoLogo -NoProfile -File scripts/schema-tools/Build-Definitions.ps1 -Force
# Regenerate package READMEs
pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageReadmes.ps1 -Force
# Regenerate docs index
pwsh -NoLogo -NoProfile -File scripts/docs/New-DocsIndex.ps1 -Force
# Regenerate package changelogs
pwsh -NoLogo -NoProfile -File scripts/docs/New-PackageChangelogs.ps1 -Force
```

---
> ⚖️ License: BlackCat Proprietary – detailed terms in [LICENSE](https://github.com/blackcatacademy/blackcat-database/blob/main/LICENSE).
