# Tech: Git Hooks & Local CI/CD Pipeline Validations

## Goal
Guarantee that the remote CI/CD pipeline always stays green. Never push broken code, linting errors, or failing tests to the remote repository. Ensure the AI agent enforces local pipeline replication before every commit.

## Core Directives

### 1. Mandatory Pre-Commit Hooks
All projects must implement local pre-commit hooks to simulate the CI/CD pipeline locally before a commit is allowed.
- **Node.js/TypeScript:** Install and configure husky and lint-staged.
- **Python:** Use the pre-commit framework with .pre-commit-config.yaml.
- **Go:** Use native .git/hooks/pre-commit enforcing golangci-lint and go test.

### 2. The Local Pre-Commit Pipeline Steps
The git hook must sequentially execute the following commands. If any step fails, the hook MUST exit with a non-zero status (exit 1), aborting the commit.
1. **Cleanup & Formatting:** Auto-format code (e.g., prettier --write, lack).
2. **Lint Auto-Fixing:** Run linter with auto-fix (e.g., eslint --fix, uff check --fix).
3. **Type Checking:** Run strict type checks (e.g., 	sc --noEmit, mypy).
4. **Build Replication:** Run the production build command (e.g., 
pm run build, go build) to catch build-time errors that CI would catch.
5. **Unit Tests:** Run local test suites (e.g., 
pm test, pytest).

### 3. Agent Execution Directive
As an autonomous agent, if you trigger a commit and the hook blocks it, you must read the hook's error output, fix the underlying lint, type, or build issue, and attempt the commit again. Do not disable or bypass the hooks (--no-verify is strictly forbidden).
