![Flutter](https://img.shields.io/badge/Flutter-3.13-blue)
![Build](https://img.shields.io/github/actions/workflow/status/jassim-bashir/ultimate-flutter-project-template/flutter_ci.yml)
![License](https://img.shields.io/badge/License-MIT-green)

# Ultimate Flutter Project Template

> A reference-grade, production-ready Flutter engineering platform  
> Suitable for MVPs, startups, scale-ups, and enterprise-grade applications

---

## OVERVIEW

This repository is **not** a starter kit, demo app, or tutorial.  
It is a **Flutter Engineering Platform** designed to support **any Flutter application**, from small consumer apps to large, long-lived, regulated enterprise systems.

If used correctly, this template:
- Eliminates architectural rewrites
- Prevents long-term technical debt
- Scales safely with team size and app complexity

---

## TABLE OF CONTENTS

1. Purpose & Philosophy  
2. What This Template Is / Is Not  
3. Architectural Overview  
4. Core Engineering Principles  
5. Complete Project Structure  
6. Application Layer (`lib/app`)  
7. Core Infrastructure Layer (`lib/core`)  
8. Feature Architecture (`lib/features`)  
9. Design System (`lib/design_system`)  
10. Shared Layer (`lib/shared`)  
11. State Management & Data Flow  
12. Navigation, Routing & App Shell  
13. Networking, Persistence & Offline Strategy  
14. Security, Privacy & Compliance  
15. App Lifecycle & System Pages  
16. Observability, Debugging & Monitoring  
17. Assets & Fonts  
18. Testing  
19. Flutter Engineering Best Practices Handbook  
20. Decision Tree (What to Use / Delete)  
21. How to Start a New App  
22. What NOT to Change  
23. What You MAY Customize  
24. Repository Checklist  
25. Final Notes

---

## 1. PURPOSE & PHILOSOPHY

This template exists to solve **long-term Flutter engineering problems**, not short-term convenience.

### Guiding Philosophy
- Explicit architecture over hidden magic
- Predictability over cleverness
- Scalability over shortcuts
- Maintainability over minimalism
- Clear ownership of responsibility

These principles are derived from real-world systems used in **banking, healthcare, SaaS, fintech, and government-grade applications**.

---

## 2. WHAT THIS TEMPLATE IS / IS NOT

### This Template IS
- Based on Clean Architecture
- Feature-first and domain-driven
- Enterprise-ready
- Testable by design
- Suitable for large teams
- Safe for long-lived products

### This Template IS NOT
- A UI showcase
- A tutorial project
- Opinionated about business logic
- Coupled to any backend, vendor, or industry
- Optimized for hacks or throwaway apps

---

## 3. ARCHITECTURAL OVERVIEW

The architecture follows **strict layered Clean Architecture**:

> Presentation (UI) → Application / State → Domain (Business Logic) → Data (APIs, Databases, External Systems)

### Dependency Rules (Mandatory)
- Dependencies flow downward only
- UI never communicates directly with APIs
- Domain contains no Flutter imports
- Data depends on Domain, never the opposite

This guarantees testability, replaceability, and long-term stability.

---

## 4. CORE ENGINEERING PRINCIPLES

These rules are **non-negotiable**:

- One responsibility per file
- No shared mutable state
- Explicit dependency injection
- No hidden singletons
- No cross-feature imports
- No hardcoded UI values
- Errors are modeled as data, not crashes

Violating these principles degrades the platform.

---

## 5. COMPLETE PROJECT STRUCTURE

**lib/**
- → app
- → core
- → design_system
- → features
- → shared
- → main_dev.dart
- → main_staging.dart
- → main_prod.dart

**assets/**
- → images (PNG, JPG, SVG, icons)
- → fonts (Custom fonts)
- → lottie (Lottie animations)
- → translations (JSON/ARB for i18n)
- → videos (Video assets)
- → audio (Sounds/music)

**test/**
- → unit (Unit tests dummy)
- → widget (Widget tests dummy)
- → integration (Integration tests dummy)

Each top-level folder has exactly **one responsibility**.

---

## 6. APPLICATION LAYER (`lib/app`)

**Purpose:** Global application behavior and orchestration.

Includes:
- app_bootstrap – Application startup
- app_shell – Persistent UI shell
- app_lifecycle – Foreground/background handling
- error_boundary – Global UI crash safety

Why it exists:
- Centralizes app-wide concerns
- Prevents duplication
- Enables lifecycle-aware logic

---

## 7. CORE INFRASTRUCTURE LAYER (`lib/core`)

**Purpose:** Shared infrastructure for all features.

Includes:
- network – HTTP clients, interceptors, retries
- storage – Secure and local storage
- env – Environment configuration
- di – Dependency registration
- security – Authorization & permissions
- domain_events – Decoupled cross-feature events
- privacy – GDPR & consent handling
- monitoring – Health checks
- background – Background jobs

Prevents infrastructure duplication and tight coupling.

---

## 8. FEATURE ARCHITECTURE (`lib/features`)

Each feature is **fully isolated and independently removable**.

- feature_name
  - → data
  - → domain
  - → presentation

**Domain**
- Entities
- Use cases
- Repository interfaces

**Data**
- API / DB implementations
- DTOs
- Mappers

**Presentation**
- Pages
- Controllers / Providers
- UI state

Rule: Features must never import each other’s internals.

---

## 9. DESIGN SYSTEM (`lib/design_system`)

**Purpose:** Visual consistency and scalable UI development.

Includes:
- Color tokens
- Typography tokens
- Spacing system
- Light & dark themes
- Motion patterns

Rules:
- No hardcoded colors
- No inline text styles
- No magic spacing values

All UI must consume the design system.

---

## 10. SHARED LAYER (`lib/shared`)

**Purpose:** Reusable, feature-agnostic utilities.

Includes:
- Common widgets
- Form helpers
- Validators
- Formatters

This layer must remain generic.

---

## 11. STATE MANAGEMENT & DATA FLOW

- Riverpod-based state management
- Unidirectional data flow
- Immutable state objects
- Intent-based actions

Ensures predictable behavior and safe refactoring.

---

## 12. NAVIGATION, ROUTING & APP SHELL

- Declarative routing
- Centralized route definitions
- Route guards (auth & permissions)
- Persistent application shell

Direct navigation calls inside widgets are prohibited.

---

## 13. NETWORKING, PERSISTENCE & OFFLINE STRATEGY

- Repository-based networking
- Dio HTTP client
- Typed error translation
- Offline-aware design
- Background synchronization support

UI never communicates directly with HTTP clients.

---

## 14. SECURITY, PRIVACY & COMPLIANCE

Includes:
- Secure storage
- Token lifecycle management
- Role-based UI access
- Input validation
- GDPR & consent enforcement
- Force update & minimum version enforcement

Required for enterprise and regulated apps.

---

## 15. APP LIFECYCLE & SYSTEM PAGES

Built-in system flows:
- No Internet
- Maintenance Mode
- Force Update
- Global Application Error

Mandatory for production resilience.

---

## 16. OBSERVABILITY, DEBUGGING & MONITORING

- Structured logging
- Crash reporting hooks
- Internal debug menu
- Health monitoring
- Feature flags

Enables safe production diagnostics.

---

## 17. ASSETS & FONTS

All static resources are organized in the assets folder:

- images, fonts, lottie, translations, videos, audio

Use them by referencing paths inside your Flutter widgets.

---

## 18. TESTING

Dummy tests included for CI:

- unit → Unit tests  
- widget → Widget tests  
- integration → Integration tests  

Run all tests with:

> flutter test test

Replace dummy tests with real feature tests.

---

## 19. FLUTTER ENGINEERING BEST PRACTICES HANDBOOK

**Architecture**
- UI never depends on data
- Domain has no Flutter imports
- Features are independent modules

**State**
- One state holder per screen or flow
- No business logic in widgets
- Immutable state only

**UI**
- Design system only
- Accessibility by default
- Skeletons instead of spinners

**Navigation**
- Centralized routing
- Guarded flows
- Deep-link safe

**Errors**
- Typed failures
- Explicit error UI
- Global error boundary as fallback

**Networking**
- Repository-only access
- Interceptors for auth & logging
- Timeouts and retries

**Performance**
- Avoid rebuild storms
- Prefer const constructors
- Lazy list rendering

**Security**
- No plain-text secrets
- Role checks at UI and domain level
- Obfuscated release builds

**Testing**
- Domain tests first
- Mock repositories
- Test error paths

**Team Process**
- Mandatory code reviews
- Small, focused pull requests
- Tests required
- Changelog discipline

---

## 20. DECISION TREE (WHAT TO USE / DELETE)

Small MVP:
- Keep architecture
- Optional: remove background jobs, domain events

Enterprise / Long-Lived App:
- Keep everything

No Offline Requirement:
- Remove caching and sync layers

No Roles or Permissions:
- Remove permission system only

Delete consciously. Never randomly.

---

## 21. HOW TO START A NEW APP

1. Clone repository  
2. Set app name and bundle ID  
3. Configure environments  
4. Remove unused optional systems  
5. Create first feature  
6. Build strictly within feature boundaries

---

## 22. WHAT NOT TO CHANGE

- Folder structure  
- Layer responsibilities  
- Dependency direction  
- Error handling strategy  
- Feature isolation rules

Breaking these compromises platform guarantees.

---

## 23. WHAT YOU MAY CUSTOMIZE

- Design system values  
- Feature implementations  
- API clients  
- Environment configurations

---

## 24. REPOSITORY CHECKLIST

- README.md (this file)  
- LICENSE  
- CONTRIBUTING.md (recommended)  
- analysis_options.yaml  
- pubspec.yaml documented  
- CI configuration (optional)

---

## 25. FINAL NOTES

This template is intentionally comprehensive.

Do not add additional architecture unless there is a **measurable, repeatable requirement**.

Used correctly, this platform:
- Prevents rewrites  
- Scales with teams  
- Survives years of change

