# Skill: End-to-End Feature Execution Engine & Specification-Driven Implementation

## Trigger
Engaged automatically when the user prompts `"start implementation"`, `"build feature"`, `"execute backlog"`, or when running in autonomous loop mode (`skills/loop-engineering.md`).

---

## Objective
Provide an immutable, 8-stage execution engine for delivering features end-to-end. Every feature selected must take the software one concrete step closer to the overall project vision (`vision.md`). The engine moves rigorously from vision alignment and design thinking/spikes to architectural design (HLD/LLD), granular task decomposition, iterative implementation, test creation, code refactoring/optimization, integration auditing, OWASP security checks, and single-source-of-truth documentation synchronization before advancing to the next feature.

---

## The 8-Stage Feature Execution Lifecycle

```
 ┌────────────────────────────────────────────────────────────────────────┐
 │                   8-STAGE FEATURE EXECUTION ENGINE                     │
 └────────────────────────────────────────────────────────────────────────┘
  [STAGE 1: VISION TRIANGULATION & FEATURE SELECTION] ──► Compare vision vs backlog; expand vision.
            │
            ▼
  [STAGE 2: FEATURE VALIDATION & DESIGN THINKING / SPIKE]──► Run feasibility analysis & Design Thinking.
            │
            ▼
  [STAGE 3: HLD & LLD ARCHITECTURE & GRANULAR DECOMPOSITION]► High/Low-Level Design & sub-tasking.
            │
            ▼
  [STAGE 4: ITERATIVE IMPLEMENTATION & REFACTORED CODE]  ──► Write clean code; refactor/optimize.
            │
            ▼
  [STAGE 5: VERIFICATION & AUTOMATED UNIT/INT TESTS]     ──► Unit, integration & regression tests.
            │
            ▼
  [STAGE 6: SYSTEM INTEGRATION AUDIT]                    ──► Verify integration with existing software.
            │
            ▼
  [STAGE 7: BUG HUNT & SECURITY AUDIT]                   ──► OWASP check, race condition & bug hunting.
            │
            ▼
  [STAGE 8: SSOT SYNC & AUTONOMOUS TRANSITION]            ──► Measure `git diff --shortstat`, update docs,
                                                              and transition autonomously to next feature.
```

---

### STAGE 1: Vision Triangulation, Backlog Comparison & Vision Expansion
1. **Read Single Source of Truth:** Inspect `vision.md` (or `docs/vision.md`) and `backlog.md` (or `docs/backlog.md`).
2. **Triangulate Vision vs Backlog:** Cross-reference current codebase capabilities against the grand vision. Identify missing capabilities or roadmap gaps.
3. **Expand Vision & Backlog:** If new capabilities are needed to achieve the project vision, add explicit epics/features to `backlog.md` and refine `vision.md` to reflect long-term architectural roadmap expansions.
4. **Select High-Yield Feature:** Pick the highest-priority unblocked item in `backlog.md` that brings the project one concrete step closer to the vision.

### STAGE 2: Feature Validation, Design Thinking & Technical Spikes
1. **Design Thinking Analysis:** Evaluate *why* the user needs this feature, *what* user value it delivers, and *how* it should behave intuitively.
2. **Feature Validation:** Question implicit assumptions. Verify whether the feature is truly necessary or if existing modules can be reused/extended instead of writing redundant code.
3. **Technical Spike (If Needed):** If technical feasibility or API contracts are uncertain, perform a targeted prototype spike in a isolated local branch/file to validate feasibility before committing to full production implementation.

### STAGE 3: High-Level (HLD) & Low-Level Design (LLD) & Granular Task Breakdown
1. **High-Level Design (HLD):** Define module boundaries, system interactions, database schema alterations, external API contracts, and non-functional targets.
2. **Low-Level Design (LLD):** Define class/interface contracts, function signatures, design patterns (Strategy, Factory, Repository, etc.), and error handling schemes.
3. **Granular Task Decomposition:** Break down the design into an ordered list of atomic sub-tasks with explicit acceptance criteria (e.g., Task 1: Schema/Data Model -> Task 2: Core Domain Logic -> Task 3: API/Endpoint -> Task 4: Unit/Integration Tests).

### STAGE 4: Iterative Implementation, Refactoring & Code Reuse Optimization
1. **Sequential Implementation:** Implement granular sub-tasks cleanly, adhering to SOLID principles and DRY (`skills/coding-standards.md`).
2. **Code Cleanup & Reuse Optimization:** Actively identify opportunity to refactor, simplify, or reuse existing codebase utilities instead of duplicating logic.
3. **Adaptive Design Re-Iteration:** If implementation uncovers edge cases, adjust LLD locally while maintaining HLD architecture and vision alignment.

### STAGE 5: Verification & Automated Unit/Integration Testing
1. **Automated Test Creation:** Write comprehensive unit, integration, and E2E tests covering happy paths, edge cases, null inputs, and error states.
2. **Physical Execution:** Run `npm test`, `pytest`, `go test`, or relevant test command in the environment. Verify all tests pass physically—never hallucinate test results.
3. **Circuit Breaker Rule:** If a fix or test fails 3 consecutive times, trigger [Circuit Breaker Protocol] (`skills/circuit-breaker.md`) to revert to baseline, tag `[BLOCKED: Needs Human/Architect Review]` in `backlog.md`, and pivot.

### STAGE 6: System Integration Audit
1. **System Integration Check:** Verify that the new feature integrates seamlessly with existing modules, database schemas, and API handlers.
2. **Regression Audit:** Confirm that zero existing features or tests are broken by the new additions.

### STAGE 7: Bug Hunting, OWASP Security Audit & Edge Case Resolution
1. **Bug Hunting Routine:** Actively scan new code for race conditions, memory leaks, unhandled exceptions, and boundary value errors (`skills/bug-hunting.md`).
2. **OWASP Security Audit:** Check input sanitization, parameterized SQL/ORM queries, auth/access control, secret hygiene, and data privacy (`skills/role-security-engineer.md`).
3. **Remediation:** Fix any identified security vulnerabilities or logic bugs before completing the feature.

### STAGE 8: Single Source of Truth (SSOT) Sync & Autonomous Loop Transition
1. **Programmatic Work Measurement:** Execute `git diff --shortstat HEAD` to measure physical code output.
2. **Sync Single Source of Truth:**
   - Remove completed feature entry from `backlog.md`.
   - Append completed entry (summary, acceptance criteria met, diff stat) to `release-notes.md`.
   - Update `vision.md` or `.status` metrics if milestones were achieved.
3. **Autonomous Transition:** If session capacity permits (< 500 LOC / < 4 tasks) and unblocked backlog items remain, self-prompt and transition immediately back to **STAGE 1** for the next feature without halting.
