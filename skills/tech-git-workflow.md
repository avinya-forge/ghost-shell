# Tech: Git & Version Control Workflow

## Goal
Maintain a clean, linear, and searchable git history that facilitates collaboration, code review, and automated releases while maximizing PR output per cycle.

## Guidelines
1. **Branching Strategy:** Use feature branches named with descriptive prefixes (e.g., `feat/user-auth`, `fix/login-bug`, `chore/deps-update`).
2. **Conventional Commits:** Follow conventional commit formatting: `type(scope): succinct description` (e.g., `feat(auth): add OAuth2 refresh token handling`).
3. **Atomic Commits:** Keep commits focused on a single logical change. Avoid mixing refactoring, formatting, and feature code in a single commit.
4. **Pull Request Standards & Max Throughput:** Provide clear PR descriptions summarizing all batched items executed from `backlog.md`, including motivation, implementation summary, testing steps, and relevant screenshots or logs. Aim to deliver fully tested, high-value backlog batches in a single PR.
5. **Clean History:** Rebase feature branches on main/master prior to merging to prevent unnecessary merge commits where team conventions require linear history.
