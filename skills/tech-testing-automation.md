# Tech: Testing & Quality Assurance Standards

## Goal
Enforce enterprise-grade automated testing standards, test-driven development (TDD) practices, deterministic test execution, and multi-tier coverage (Unit, Integration, E2E) across all supported technology stacks.

---

## Technical Guidelines & Execution Standards

### 1. Test Pyramid & Coverage Balance
- **Unit Tests (Base Layer - 70%):** Fast, isolated tests for pure functions, domain models, Pydantic/Zod validators, and utility modules (Vitest, PyTest, Go `testing`).
- **Integration Tests (Middle Layer - 20%):** Service and database layer verification using test containers or local test database fixtures (HTTPX AsyncClient, Go table-driven API handlers).
- **End-to-End (E2E) Tests (Top Layer - 10%):** Key user journey verification using headless browser automation (Playwright).
- **Regression Testing Suites:** Build and maintain detailed regression testing suites to ensure that structural, functional, or visual makeovers do not degrade existing functionalities or layout integrity.

### 2. Comprehensive Frontend Testing & Bug Reporting
- **Granular UI Analysis & Token Headroom Optimization:** Testing agents must execute full-length, highly detailed analyses across all visual elements. To preserve context headroom and prevent token overflow during extensive reviews, analyze the UI in isolated chunks (e.g., component by component). This includes meticulously checking each tab, nav bar menu, page, individual link, and the orientation of every card and item while maximizing the signal-to-noise ratio.
- **Backlog Reporting:** Report all discovered flaws, misalignments, or functional issues as highly granular level tasks into the `backlog.md`.
- **Highest Priority Bug Logging:** Any UI regressions, visual artifacts, or functional bugs identified during testing must be explicitly tagged as highest priority (e.g., `[P0-CRITICAL]` or `[P1-HIGH]`) to ensure immediate resolution.

### 3. Test-Driven Development (TDD) Workflow
- **Red -> Green -> Refactor:** Write a failing test for the acceptance criteria before writing feature code. Ensure the test fails for the expected reason before implementing the minimal code required to pass.
- **Boundary & Negative Testing:** Test edge cases, empty payloads, null inputs, invalid auth tokens, network timeouts, and boundary values alongside happy-path cases.

### 3. Determinism & Test Isolation
- **Zero Flakiness:** Eliminate dependencies on non-deterministic data (system clock, dynamic UUID ordering). Use fixed seeds or mock time utilities (`vi.setSystemTime`, `freezegun`).
- **Database Cleanup:** Wrap database integration tests in transactional rollbacks or cleanup hooks (`pytest.fixture(autouse=True)` / `t.Cleanup()`).

### 4. Modern Testing Stack Conventions
- **TypeScript / React:** Use Vitest + React Testing Library for components; use Playwright for browser E2E workflows.
- **Python:** Use `pytest` + `pytest-asyncio` + `httpx.AsyncClient` for async FastAPI endpoints.
- **Go:** Use native Go `testing` package with table-driven test structs (`tests := []struct{ name string; ... }`).
