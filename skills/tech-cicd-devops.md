# Tech: CI/CD & DevOps Standards

## Goal
Automate code integration, verification, and continuous deployment pipelines while keeping GitHub Actions lean, robust, and free of failing legacy bloat.

## Guidelines
1. **Minimal, Reliable & Passing GitHub Actions:** GitHub Actions must be explicitly scoped to run linting, type-checking, building, and testing after commits. The pipeline must *always* pass. If an agent detects a failing workflow, its immediate priority is to fix the underlying code, lint errors, or type mismatches until the build and tests succeed.
2. **Automated Integration (CI):** Run automated unit tests, strict type-checking, and build verification on every pull request and push to primary branches to catch breakages early and maintain production-ready code.
3. **Dependabot Optimization:** Enable Dependabot to keep repository dependencies secure and up-to-date, but configure it for a very low frequency to avoid noise. Create a `.github/dependabot.yml` that limits updates to `schedule.interval: "monthly"` and sets `open-pull-requests-limit: 1`.
4. **Containerization (Docker):** Write minimal, multi-stage Dockerfiles adhering to security best practices (non-root users, explicit base image tags, minimal layers).
5. **Environment Parity & Checks:** Keep development, staging, and production environments similar using declarative configurations. Ensure services implement health check endpoints (`/healthz`).
6. **Pipeline Security:** Secure CI/CD pipelines by masking secrets, scoping workflow permissions strictly (`permissions: contents: read`), and avoiding bloated third-party actions where simple scripts suffice.
7. **Gated Deployment Standard:** Use one `ci-cd.yml` per repo. The `deploy` job must declare `needs: ci` and run only on `push` to `main`. PRs run CI only. Add `concurrency` (cancel stale PR runs, never cancel a production deploy).
8. **Secrets Placement:** Deployment tokens (e.g. `VERCEL_TOKEN`, `VERCEL_ORG_ID`, `VERCEL_PROJECT_ID`) go in a GitHub **Environment** named `production`, restricted to `main`, and are referenced via `environment: production`. Application runtime secrets (API keys) live **only** in the hosting provider (e.g. Vercel Environment Variables) and are pulled at build time. Never commit tokens to workflow files, `vercel.json`, `.env*` (except placeholder-only `.env.example`), MCP configs, or commit messages; reference env vars like `${VAR}` instead.
9. **Official Tooling for Deploys:** Deploy with the provider's official CLI (e.g. `vercel pull` → `vercel build --prod` → `vercel deploy --prebuilt --prod`) rather than third-party actions that receive your token. Disable the provider's own Git auto-deploy (`"git": { "deploymentEnabled": false }`) so the CI-gated path is the only route to production.
10. **Free Hosting Defaults:** Next.js/SSR → Vercel Hobby (non-commercial). Static sites → GitHub Pages or Cloudflare Pages. Custom domains: keep the registrar's nameservers and add the A/CNAME records the host specifies; never transfer the domain unless required.

## PRIORITY ZERO (P0): CI/CD & GITHUB ACTIONS
If GitHub Actions / CI/CD pipelines are failing in the repository, fixing them is your absolute highest priority. 
- You must halt new feature development until the pipeline is green.
- Debug .github/workflows/*.yml files, fix dependency mismatches, resolve linting errors, and repair broken tests. A broken pipeline means the project is paralyzed. Fix it first.
