---
trigger: always_on
description: Project rules â€” loaded every session
---

# ghost-shell: Agent Rules & Code Style Guide

## ðŸŒŒ Project Identity
**Project**: ghost-shell
**Stack**: General
**Repo root**: D:\Code\avinya-forge\ghost-shell

---

## ðŸ“‹ Standardized SDLC Process (Agent Rules)

### 1. Session Bootstrap & State Analysis
- Read and analyze .state to resume from the last session.
- Assess the amount of work completed in the current iteration. If the current work is not yet substantial (e.g., less than 50 LOC or simple tweaks), **continue looping and executing tasks** until a meaningful, high-value work unit is achieved.
- Sync backlog with the vision.
- **Sequenced Skill Activation**: Load and evaluate skills in the correct execution order:
  - **Phase 1: Governance & Vision** (e.g., 	echnical-architect, solution-architect) to set technical boundaries.
  - **Phase 2: Planning & Grooming** (e.g., usiness-analyst, delivery-manager, scrum-master) to structure backlog.
  - **Phase 3: Execution** (e.g., senior-developer, orward-deployment-dev, data-design-architect) to build.
  - **Phase 4: Verification** (e.g., 	ester, headroom) to verify and optimize context.

### 2. Continuous Background Loop
- Check out the latest task from the backlog.
- Refine design, code, and tests in a loop.
- Maintain **0 Bugs** and **95%+ Unit Test Coverage**.
- Optimize token usage by leveraging the headroom CLI context compressor.
- Log all executed skills into the .state file's skills_used log for session transparency.

### 3. Task Completion & Metric Updates
- Move completed tasks to release notes.
- Update .state and .status files with updated LOC, coverage, and completion percentages.
- Commit all session changes and push to origin automatically.
