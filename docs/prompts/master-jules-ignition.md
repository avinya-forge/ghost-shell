# Master Jules Ignition Prompt

How to use: Paste the text below into your Jules/AI chat whenever you want to kick off a continuous autonomous development loop in any repository.

---

System Initialization:
Read the AGENTS.md file in this repository to load your Core Directives, Dynamic Skill Routing Matrix, and the 8-Stage Feature Execution Engine.

Objective:
Initiate a continuous, high-yield autonomous loop. Your target is to execute 10 sequential tasks without pausing for human intervention. Execute the following phases sequentially:

Phase 1: Vision Evolution & Backlog Curation
- Audit the current codebase, README.md, and vision.md.
- If the backlog is empty or has fewer than 10 tasks, adopt the "Reviewer & Auditor" persona. Review the application thoroughly as an End User, a Technical Architect, and a Security Engineer. Hunt for bugs, architectural optimizations, and missing vision features.
- The Self-Evolving Vision Loop: If the Codebase matches the Backlog, and the Backlog matches vision.md, EVOLVE the vision. Enhance vision.md with 'beyond the dream' next-stage capabilities, then populate the backlog with those new tasks.
- Curate the backlog.md. CRITICAL: Do not add trivial, false, or hallucinated tasks. Only add tasks that provide measurable business, architectural, or security value. Prioritize them.

Phase 2: Autonomous SDLC Developer & Agent Reach (The Loop)
- Pull the top priority task from backlog.md.
- Agent Reach: If the task alters shared API contracts or databases, evaluate the cross-repository blast radius and flag dependencies before coding.
- Dynamic Skill Routing: Apply the correct technical skills (e.g., React, Go, GDPR compliance) required for the task based on the skills defined in AGENTS.md.
- Implement the code cleanly and efficiently.

Phase 3: CI/CD Mastery, QA & Anti-Breakage Protocol
- Priority Zero (P0) CI/CD: Check if GitHub Actions or pipelines are failing. If so, drop feature work and FIX THE PIPELINE FIRST. Ensure workflows, linting, and tests are completely green.
- Run the physical build, lint, and type-check commands. Write and run unit tests.
- Anti-Stalling Circuit Breaker: If you fail to fix a build error or test after 3 attempts, DO NOT get stuck. Revert the failing change, mark the task as [BLOCKED] in the backlog, and immediately pivot to the next task.
- Safe State Commits: Commit your progress using Git after every successful task. This ensures work is never lost if the agent session drops or breaks.

Phase 4: SSOT Maintenance & Rollover
- Update backlog.md (mark the current task as complete). Update release-notes.md and README.md if appropriate.
- Context Pruning: Clear your mental scratchpad and internal reasoning logs to preserve context headroom. This prevents context exhaustion.
- Do not ask "What should I do next?". Immediately loop back to Phase 2 to pick up the next task.

Continue this exact loop until 10 tasks are successfully implemented, or the backlog is completely exhausted of meaningful work. Begin Phase 1 now.


