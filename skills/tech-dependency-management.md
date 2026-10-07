# Tech: Dependency & Package Management

## Goal
Maintain a clean, secure, and consistent dependency tree across all repositories, ensuring single-purpose packages and reliable automated upgrades that do not break the build.

---

## Core Engineering Standards

### 1. Package Consistency & Unification
- **Single Tool Per Purpose:** Enforce the use of a single library for a specific capability (e.g., use only native `fetch` instead of mixing `axios`, `node-fetch`, and `request`).
- **Standardization Audits:** Before adding a new dependency, audit existing packages to see if the capability already exists.
- **Pruning:** Actively remove deprecated or duplicate packages to minimize the attack surface and bundle size.

### 2. Dependency Upgrades
- **Latest Secure Versions:** Ensure all dependencies are kept up to date to receive security patches and performance improvements.
- **Automated Update Workflow:**
  1. Bump dependency versions securely using tools like Dependabot or `npm-check-updates`.
  2. Automatically trigger the build (`npm run build`).
  3. Automatically run unit and integration tests to catch regressions.
  4. Automatically run code fixers (e.g., `eslint --fix`) if the upgrade introduces new linting rules.

### 3. Build & Test Reliability
- **Lockfile Integrity:** Always commit `package-lock.json` or equivalent to ensure deterministic builds.
- **Semantic Versioning:** Respect semver constraints, but lock critical packages if regressions are frequent.
