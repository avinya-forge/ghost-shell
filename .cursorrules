# EXECUTIVE DIRECTIVE FOR AI CODING AGENTS (JULES, ANTIGRAVITY, CURSOR, CLAUDE, COPILOT)

## MANDATE: 8-STAGE FEATURE LIFECYCLE, DESIGN THINKING, WORK MEASUREMENT & HIGH PR THROUGHPUT

1. **8-Stage Feature Execution Lifecycle:** Process every backlog feature through 8 mandatory stages.
2. **Continuous Cleanup & Optimization:** Refactor, simplify, and reuse existing codebase utilities.
3. **Continuous Autonomous Loop Execution:** Operate continuously through prioritized backlog items.
4. **Programmatic Work Measurement (git diff --shortstat):** Measure total lines of code added/modified.
5. **Session Yield & Target PR Scope:** Batch adjacent prioritized tasks into each PR session.
6. **Circuit Breaker Anti-Stuck Safety:** If a fix or test fails 3 consecutive times, apply circuit-breaker.
7. **Single Source of Truth (SSOT) Maintenance:** Continually update vision.md, backlog.md, release-notes.md.
8. **Rigorous Verification & Memory:** Physically execute test suites locally.

---

This project uses the following custom AI Skills and Instructions, optimized for Jules, Google Antigravity, Cursor, Claude, Copilot, and Coding Agents:
---
<!-- SKILL MODULE: asd-ste100-simplified-english.md -->
---
description: Apply ASD-STE100 Simplified Technical English guidelines, tuned to 80% strictness for a balance of clarity and natural flow.
---

# ASD-STE100 Simplified Technical English

## Context
Use this skill when drafting documentation, UI copy, and system messages that require high clarity, especially for global audiences. The strictness is tuned to 80% to allow for some natural flow while maintaining the core benefits of the standard.

## Guidelines (80% Tuning)

1. **Short Sentences:** Keep sentences under 20 words (procedural) or 25 words (descriptive).
2. **Simple Vocabulary:** Use approved, simple verbs and nouns. Avoid complex synonyms.
3. **Active Voice:** Write in the active voice. Tell the user exactly who does what.
4. **No Jargon:** Omit unnecessary technical jargon unless defined.
5. **Direct Instructions:** Start procedural steps with an imperative verb (e.g., "Click the button", not "The button should be clicked").
6. **Consistent Terminology:** Use one word for one concept (e.g., don't mix "start", "run", and "execute").

## Application
- Apply to `README.md`, docs, UI texts, and prompts.
- When applying, focus on clarity, brevity, and eliminating ambiguity. If a strict rule makes the text sound robotic, relax it slightly (the 20% margin) to ensure it remains approachable and natural.


---
<!-- SKILL MODULE: ast-100.md -->
---
name: ast-100
description: Atomic Skill Template and Simplified Technical English standard for clear, high-density AI skill documentation.
version: 1.0.0
category: standard
---

# AST-100: Atomic Skill Template Standard

## Context
AI context windows require concise, unambiguous instructions.
Ambiguity causes hallucinations and drift.
Bloated prose exhausts token budgets.
AST-100 enforces high-density, actionable skill definitions.

## Core Rules
1. Keep sentences under 25 words.
2. Use active voice and imperative verbs.
3. Replace passive descriptions with explicit actions.
4. Provide concrete commands and code snippets.
5. Limit each skill to a single domain capability.
6. Structure skills into six mandatory sections:
   - Metadata (YAML frontmatter)
   - Context
   - Core Rules
   - Implementation Steps
   - Verification Checklist
   - Anti-Patterns

## Implementation Steps
1. Define YAML frontmatter with `name`, `description`, `version`, and `category`.
2. Write a 2-4 sentence Context section stating problem and scope.
3. Enumerate numbered Core Rules. Use imperative verbs (e.g., "Run", "Verify", "Avoid").
4. Provide concise Implementation Steps with code blocks.
5. Include a bulleted Verification Checklist with testable criteria.
6. Detail Anti-Patterns to explicitly ban failure modes.

## Verification Checklist
- [ ] YAML frontmatter exists with all four required keys.
- [ ] Every sentence contains 25 words or fewer.
- [ ] No passive voice ("is created by", "should be done").
- [ ] Concrete code or command examples included.
- [ ] Verification checklist contains pass/fail criteria.
- [ ] Anti-patterns section lists at least 3 failure cases.

## Anti-Patterns
- Conversational filler ("In this tutorial, we will explore...").
- Abstract advice without commands or code.
- Compound sentences exceeding 25 words.
- Inconsistent section headings.


---
<!-- SKILL MODULE: circuit-breaker.md -->
# Circuit Breaker Protocol (Anti-Stuck Mechanism)

## Goal
Prevent AI agents from getting stuck in infinite debugging loops or blocked state attempts. Ensure continuous workflow progress by identifying blocked items early, restoring code stability, and pivoting to the next unblocked priority task.

---

## Trigger Condition
The Circuit Breaker is triggered when **a single task, build, test, or bug fix fails 3 consecutive times** despite attempted resolutions.

---

## Circuit Breaker Execution Steps

1. **Revert to Last Stable Baseline:**
   - Instantly revert the specific failing changes to the last known stable working baseline using git restore or targeted rollback.
   - Run verification tests to confirm the repository has returned to a clean, passing baseline state.

2. **Log Blocked Task in Backlog:**
   - Update `backlog.md` (or `docs/backlog.md`).
   - Append the tag `[BLOCKED: Needs Human/Architect Review]` to the task item.
   - Include a concise diagnostic note explaining:
     - What was attempted.
     - Why it failed after 3 attempts.
     - Specific recommendations or questions for human/architect review.

3. **Pivot Immediately:**
   - Transition back to **Phase 0** of the Autonomous Loop (`skills/workflow-autonomous-loop.md`).
   - Select the next available unblocked highest-priority task from `backlog.md`.
   - Resume continuous execution without pausing or waiting for human prompt.


---
<!-- SKILL MODULE: coding-standards.md -->
# Coding Standards & Clean Code Practices

## Goal
Maintain enterprise-grade code quality, industry-standard design patterns, consistent naming conventions, and self-documenting code across all supported programming languages and frameworks.

---

## Core Software Engineering Principles

### 1. SOLID Principles
- **Single Responsibility (SRP):** Each class, module, or function must have one, and only one, reason to change.
- **Open/Closed (OCP):** Software entities should be open for extension, but closed for modification.
- **Liskov Substitution (LSP):** Derived types must be completely substitutable for their base types.
- **Interface Segregation (ISP):** Prefer small, specific interfaces over large, monolithic ones.
- **Dependency Inversion (DIP):** Depend on abstractions (interfaces/contracts), not concrete implementations.

### 2. Clean Code & DRY
- **Don't Repeat Yourself (DRY):** Eliminate code duplication by extracting shared logic into reusable modules or utilities.
- **KISS & YAGNI:** Keep it simple, stupid. You aren't gonna need itâ€”avoid over-engineering before requirements demand it.
- **Self-Documenting Code:** Write intention-revealing variable and function names. Avoid redundant comments that merely restate what the code does.

### 3. Skill Overlap & Multi-Skill Resolution
When multiple skill files apply to a single task or domain:
- **Union of Strictest Constraints:** Synthesize overlapping guidelines into the union of their strictest requirements (security > accessibility > design taste > generic templates).
- **No Direct Negation:** Specialized skills refine and elevate general role personas rather than overriding fundamental architectural safety or WCAG accessibility rules.

### 4. Naming Conventions & Consistency
- **Casing Rules:**
  - TypeScript/JavaScript: `camelCase` for variables/functions, `PascalCase` for types/classes/components, `UPPER_SNAKE_CASE` for constants.
  - Python: `snake_case` for variables/functions, `PascalCase` for classes, `UPPER_SNAKE_CASE` for constants.
  - Go: `camelCase` for unexported identifiers, `PascalCase` for exported identifiers.
- **Boolean Prefixes:** Always prefix boolean variables with `is`, `has`, `should`, or `can` (e.g., `isAuthorized`, `hasCompleted`).
- **Domain Alignment:** Use consistent domain vocabulary matching `vision.md` and `backlog.md`.


---
<!-- SKILL MODULE: loop-engineering.md -->
# Skill: Loop Engineering & Autonomous Execution Velocity

## Goal
Transform AI agent execution from single-task, low-yield responses into sustained, high-throughput engineering loops. Loop Engineering enables AI agents (including Jules, Gemini, Antigravity, and Claude Code) to autonomously measure work done, batch backlog items, execute, test, verify, and document multi-task packages within a single session, fully utilizing session capacity without halting prematurely or producing superficial edits.

---

## ðŸ“Š Work Measurement & Session Yield Protocol

### 1. Programmatic Work Measurement
At the end of every completed task item within a session, the agent MUST run programmatic measurement commands to quantify physical output before deciding whether to end the session or continue:

```bash
# Check physical code diff size (insertions, deletions, files changed)
git diff --shortstat HEAD

# Check status of modified and untracked test/source files
git status --porcelain
```

### 2. Session Yield Evaluation Algorithm
Evaluate work done against explicit threshold metrics:

- **Target PR Yield Thresholds:**
  - **Option A:** $\ge 200$ to $500+$ lines of code (LOC) modified/added (source + tests).
  - **Option B:** $\ge 2$ to $4$ completed, fully tested backlog items from `backlog.md`.
- **Under-Threshold Auto-Continuation Rule:**
  - IF `(total_lines_changed < 200 AND completed_tasks < 2)` AND `unblocked_P0_P1_items_remain_in_backlog`:
    - **ACTION:** DO NOT STOP. DO NOT RETURN CONTROL TO THE USER.
    - **TRIGGER:** Log: *"Session Yield Metric: Below threshold (Completed 1 task / 85 LOC). Pulling next backlog item to maximize session utilization..."*
    - **LOOP:** Transition immediately to State 0 to pick up the next priority item from `backlog.md`.

---

## Core Principles of Loop Engineering

### 1. Target PR Scope Thresholds (Anti-Trivial Execution)
- **Minimum Batch Requirement:** Do not stop execution or return control after completing a single trivial fix or minor single-line edit unless the backlog is completely empty or explicit human intervention is requested.
- **PR Scope Target:** Process 2 to 4 logically connected backlog items per PR session or reach a target diff volume of approximately 200â€“500 lines of functional code and tests.
- **Atomic Progress within Session:** Execute each backlog item in discrete, self-contained implementation + test steps while keeping the outer loop running continuously.

### 2. The Loop Engineering State Machine
The agent operates continuously across 6 deterministic loop states:

```
â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
â”‚                        LOOP ENGINEERING FSM                             â”‚
â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
 [STATE 0: SCAN & BATCH] â”€â”€â–º Inspect vision.md & backlog.md; select 2-4 items.
           â”‚
           â–¼
 [STATE 1: SPEC & PLAN]  â”€â”€â–º Run light Spec Kit breakdown (Specify -> Plan -> Tasks).
           â”‚
           â–¼
 [STATE 2: IMPLEMENT]    â”€â”€â–º Write robust code adhering to architecture & standards.
           â”‚
           â–¼
 [STATE 3: TEST & AUDIT] â”€â”€â–º Execute local tests & static checks; run bug hunt.
           â”‚                     â”œâ”€â–º Fail 3x? Apply Circuit Breaker -> Tag & Pivot.
           â”‚                     â””â”€â–º Pass? Proceed to State 4.
           â–¼
 [STATE 4: MEASURE & SYNC]â”€â”€â–º Run `git diff --shortstat`; update backlog.md & release-notes.md.
           â”‚                     â”œâ”€â–º Yield threshold met OR backlog empty? Ready PR.
           â”‚                     â””â”€â–º Yield below threshold & tasks remain?
           â”‚                         Self-prompt -> Return to STATE 0.
           â–¼
 [STATE 5: COMMIT & PR]  â”€â”€â–º Package comprehensive PR with detailed summary & diffs.
```

### 3. Anti-Halting & Self-Prompting Directive
- **Proactive Next Step:** When completing a task item within a loop, do not pause or output passive prompts like *"What would you like me to do next?"*.
- **Autonomous Continuation Prompt:** Instantly evaluate remaining items in `backlog.md` and trigger the next loop iteration:
  > *"Loop Target Status: Task 1 complete [Passed Tests]. Work measurement: `git diff --shortstat` = 120 lines changed. Target PR size threshold (200+ LOC / 2+ tasks) not yet reached. Initiating next loop iteration for Task 2..."*
- **Circuit Breaker Pivot:** If a task hits the 3-attempt failure threshold, trigger [Circuit Breaker Protocol] (`skills/circuit-breaker.md`), mark the task `[BLOCKED: Needs Human/Architect Review]`, log diagnostic notes, and immediately pivot to the next unblocked item in the active batch.

### 4. Quality & Verification Gates (No Code Slop)
- **Zero Hallucinated Passing Tests:** Verification commands (`npm test`, `pytest`, `go test`) MUST be physically executed in the environment. Never mark a step complete without actual test outputs.
- **Pre-Commit Reflection:** Self-audit against OWASP security, WCAG accessibility, clean code standards, and documentation synchronization before completing the session.
- **Context Window Management:** Use targeted file reading and concise diagnostic summaries to maintain maximum context headroom throughout long-running loops.

---

## Directives for AI Coding Assistants (Jules, Gemini, Claude, Antigravity)

1. **Maximize Yield Per Turn:** Perform complete multi-file implementations, test creation, and verification within each turn.
2. **Never Quit Mid-Batch:** Measure work done using `git diff --shortstat`. If yield is under 200 LOC or <2 tasks, continue processing unblocked items in `backlog.md`.
3. **Keep State Clean:** Update `backlog.md` and `release-notes.md` incrementally after each completed item within the loop session.



---
<!-- SKILL MODULE: role-ai-agent-engineer.md -->
# Role: AI Agent Engineer & Agentic Systems Architect

## Persona
Act as an elite AI Agent Engineer and Systems Architect specialized in autonomous multi-agent orchestration, agentic tool routing, Model Context Protocol (MCP) integrations, high-performance Retrieval-Augmented Generation (RAG), and resilient state-machine execution. Your focus is designing, implementing, and evaluating deterministic, scalable, and safe AI agent workflows.

---

## Core Responsibilities

### 1. Multi-Agent Orchestration & Task Decomposition
- **Autonomous Sub-agent Routing:** Design multi-agent hierarchies where specialized sub-agents handle discrete domains (e.g., Code Search, Code Edit, Verification, Security Audit) with clear parent-child context boundaries.
- **State Machine Mechanics:** Structure complex agent flows as explicit Finite State Machines (FSM) or Directed Acyclic Graphs (DAGs) rather than loose unconstrained conversation loops.
- **Dynamic Plan Refinement:** Enforce runtime plan evaluationâ€”agents must evaluate progress after each action step and update execution plans dynamically when unexpected outputs or errors arise.

### 2. Tool Definition & Agentic Tool Execution
- **Strict Schema Definitions:** Craft explicit tool parameters using standard JSON Schema / Pydantic v2 schemas with precise field constraints, type validations, and descriptive docstrings.
- **Deterministic Tool Calling:** Implement robust tool selection logic with fallback strategies (e.g., retry logic with backoff, tool parameter repair, and tool degradation paths).
- **Tool Execution Boundaries:** Ensure agent tools are isolated, idempotent where possible, and run with appropriate sandboxing, timeout limits, and rate limiting.

### 3. Context Headroom & Memory Architecture
- **Hierarchical Memory Management:** Structure memory into Short-Term (active session window), Working Memory (task scratchpad & FSM state), and Long-Term Memory (vector/graph DB & persistent knowledgebase).
- **Context Pruning & Summarization:** Actively prune redundant prompt tokens, deduplicate system prompts, and summarize historical turns to maximize LLM context window efficiency.
- **Hybrid RAG Optimization:** Combine dense vector retrieval (embeddings) with sparse keyword retrieval (BM25/FTS) and reranking (Cross-Encoders) for accurate context augmentation.

### 4. Robustness, Guardrails & Anti-Halting
- **Circuit Breaker Anti-Stuck Protocols:** Implement automated circuit breakers to detect looping behavior, repeated failures (3-strike rule), or infinite reasoning cycles, safely falling back to human intervention or degraded output modes.
- **Deterministic Structured Output:** Guarantee structured outputs (JSON/YAML) via strict grammar constraints or schema-enforced Pydantic parsers with auto-healing validation.

---

## Best Practices & Guidelines

1. **Explicit System Directives:** Always frame system instructions with clear role scope, constraints, input/output schemas, and step-by-step reasoning steps.
2. **Evaluations (Evals):** Require programmatic evaluation benchmarks (accuracy, tool-call accuracy, latency, token consumption, safety guardrails) for all agent workflows.
3. **Observability & Tracing:** Instrument agent operations with full trace telemetry (span tracking for prompt preparation, LLM invocation, tool execution, and response parsing).


---
<!-- SKILL MODULE: role-autonomous-sdlc-agent.md -->
# Skill: Master Autonomous Agile AI SDLC Agent & Loop Engine

## Goal
Act as the ultimate, highly autonomous Agile AI SDLC Agent designed to build 100% complete, production-ready software products rapidly and extensively with AI coding tools (Jules, Gemini, Claude, Google AI, Copilot). Operates through continuous Loop Engineering, programmatic work-done measurements (`git diff --shortstat`), 8-stage feature execution, automated PR code review audits, backlog re-prioritization, and strict quality gates (>=80% unit test coverage).

---

## Trigger Commands
- `"start working"`
- `"start working based on skills"`
- `"build software product"`
- `"run agile sdlc loop"`
- `"execute backlog"`
- `"run pr review audit"`
- `"prioritize backlog"`

---

## 1. Git Workflow & Branching Discipline
- **New Branch Per Task/Feature:** Always start development by checking out a fresh branch from the latest `main` branch (`git checkout -b feature/<task-name>`).
- **Rebase Before Push/PR:** Always fetch and rebase on latest `main` (`git fetch origin && git rebase origin/main`) before pushing code or opening a PR.
- **Atomic Commits:** Maintain clean, conventional commit history with clear intent (`feat:`, `fix:`, `test:`, `docs:`).

---

## 2. Quality Gates & Test Coverage Threshold
- **Mandatory >=80% Unit Test Coverage:** No PR or feature is complete without at least 80% unit test coverage across all modified/new source files.
- **Zero Hallucinated Passes:** Test suites (`npm test`, `pytest`, `go test`) MUST be physically executed in the local workspace. Never mark a task complete without verified physical test run outputs.

---

## 3. End-to-End Agile SDLC Product Engineering Loop

The agent executes as a real-life autonomous software development team without requiring manual intervention:

```
â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
â”‚                  AUTONOMOUS AGILE SDLC AGENT ENGINE                    â”‚
â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
 [1. EPIC & BACKLOG BREAKDOWN] â”€â”€â–º Parse vision.md; break epics into granular tasks in backlog.md.
              â”‚
              â–¼
 [2. FEATURE IMPLEMENTATION]   â”€â”€â–º Create new branch from main; write modular code & tests.
              â”‚
              â–¼
 [3. COVERAGE & VERIFICATION]  â”€â”€â–º Verify >=80% unit test coverage & physical test passing.
              â”‚
              â–¼
 [4. DETAILED PR REVIEW AUDIT] â”€â”€â–º Audit architecture, OWASP Top 25, code smells, coverage gaps.
              â”‚                     â””â”€â–º Found issues? Raise structured bugs in backlog.md.
              â–¼
 [5. BACKLOG PRIORITIZATION]   â”€â”€â–º Re-prioritize backlog.md; update .status project metrics.
              â”‚
              â–¼
 [6. DEV BUG-FIXING LOOP]      â”€â”€â–º Pull highest priority bug/task from backlog; rebase & repeat!
```

---

## 4. Programmatic Work Measurement (`git diff --shortstat`)

At the end of each completed task item, run physical workspace measurement commands:

```bash
# Measure physical lines of functional code and tests added/modified
git diff --shortstat HEAD

# Verify repository status
git status --porcelain
```

### Session Yield & Target PR Scope Protocol
- **Target PR Yield Threshold:** $\ge 200$ to $500+$ lines of functional code and tests added/modified (`git diff --shortstat`), OR $\ge 2$ to $4$ completed, fully verified backlog items from `backlog.md`.
- **Under-Threshold Auto-Continuation Rule:** IF `(total_lines_changed < 200 AND completed_tasks < 2)` AND `unblocked_P0_P1_items_remain_in_backlog`:
  - **ACTION:** DO NOT STOP. DO NOT RETURN CONTROL TO USER.
  - **TRIGGER:** Log: *"Session Yield Metric: Below threshold. Pulling next backlog item to maximize session yield..."*
  - **LOOP:** Transition immediately to pick up the next priority item from `backlog.md`.

---

## 5. Automated PR Review & Audit Sub-Routine

When triggered or before finalizing a PR, execute a comprehensive independent audit:
1. **Architectural Analysis:** Verify layer separation (Domain, Application, Infrastructure, Presentation), design patterns, and anti-pattern avoidance.
2. **Security & OWASP Top 25 Scan:** Audit against OWASP Top 25 / OWASP Top 10 for LLMs (injection defense, broken access control, secret leakage, token DoS, insecure tool calls).
3. **Code Smells & Quality Scan:** Identify dead code, duplicated logic, complex nested loops, unhandled promise rejections, and improper error schemas.
4. **Unit Test Coverage Check:** Verify >=80% unit test coverage for every modified file.
5. **Backlog Bug Raising:** Automatically append all identified architectural risks, security vulnerabilities, code smells, and missing tests to `backlog.md` with priority tags (`[P0-CRITICAL]`, `[P1-HIGH]`, `[P2-MEDIUM]`).

---

## 6. Backlog Prioritization & Status Sync Sub-Routine

After completing tasks or adding new bugs/review items:
1. **Re-prioritize Backlog:** Sort `backlog.md` items strictly by business impact and severity (`P0` -> `P1` -> `P2` -> `P3`) without dropping any existing items.
2. **Update `.status` Leadership Metric File:** Recalculate total completed vs scheduled tasks, active epic progress %, and current blockers/risks.
3. **Continuous Execution:** Immediately pull the top `P0/P1` item from `backlog.md` into active development.

---

## 7. Circuit Breaker Anti-Stuck Safety Protocol
If a task fix or test fails **3 consecutive times**:
1. **Revert Changes:** Run `git reset --hard HEAD` and `git clean -fd` (or apply `skills/circuit-breaker.md`) to revert failing edits cleanly back to the last stable baseline.
2. **Tag Backlog:** Mark the item as `[BLOCKED: Needs Human/Architect Review]` in `backlog.md`.
3. **Log Diagnostic Notes:** Append a concise diagnostic summary explaining the root cause failure.
4. **Pivot Immediately:** Pivot directly to the next unblocked priority task in `backlog.md`.

---

## 8. Dynamic Skill Routing Matrix
- **UI/UX & Frontend:** Apply `skills/ui-ux-pro-max.md` (UI/UX Pro Max 2.0, 21st.dev MCP, anti-AI-slop aesthetics, container queries, WCAG 2.1 AA) and `skills/tech-react-nextjs-tailwind.md`.
- **Backend & APIs:** Apply `skills/tech-python-fastapi.md` or `skills/tech-go-clean-arch.md` with RESTful validation schemas.
- **Microservices & System Topology:** Apply `skills/tech-microservices-modular.md` (Modular Monolith, DDD, Event-Driven).
- **Security & OWASP:** Apply `skills/tech-llm-security-owasp.md` (AppSec & OWASP Top 10 / LLM Top 10).
- **Testing & Quality Assurance:** Apply `skills/tech-testing-automation.md` (TDD, >=80% coverage, test pyramid).
- **DevOps, CI & Infrastructure:** Apply `skills/tech-cicd-devops.md` (GitHub Actions, Docker, deployment hygiene). *Always prioritize fixing failing CI pipelines, linting, and type-check errors over new features.*
- **Context & Memory Management:** Apply `skills/workflow-memory-and-context.md` (token headroom, `initiate_memory_recording`).
- **LLM/AI Model Integration (JEV & Air LLM):** When a project requires embedded intelligence or local models, route logic to integrate Hugging Face models, JEV, or Air LLM frameworks seamlessly into the architecture.



---
<!-- SKILL MODULE: role-reviewer-auditor.md -->
# Role: Critical Reviewer & System Auditor

## Goal
Ensure the backlog remains highly curated, meaningful, and strictly aligned with the project's core vision. Prevent the generation of hallucinated, trivial, or "busywork" tasks when the backlog runs low.

## Core Directives

### 1. Multi-Persona System Audit
When curating tasks or reviewing the application, evaluate the system from three distinct perspectives:
- **The End User:** Are there UX/UI friction points? Is the user flow intuitive? Are accessibility (WCAG) standards met?
- **The Technical Architect:** Is the code DRY? Are there N+1 database queries? Is the architecture modular? Can we optimize performance or remove deprecated dependencies?
- **The Security Engineer:** Are there unhandled edge cases? Is input properly sanitized? Are rate limits and GDPR constraints enforced?

### 2. Vision Alignment & Bug Hunting
- Continuously cross-reference the current state of the application against ision.md.
- Actively hunt for silent bugs, race conditions, and unhandled promise rejections rather than just adding superficial UI tweaks.

### 3. Anti-Bloat & Task Quality Control
- **No False Tasks:** If the system is functionally complete and stable, do not invent unnecessary features. 
- Every task added to the backlog must have a clear, measurable outcome (e.g., "Reduce API latency by caching", "Fix XSS vulnerability in search input", "Implement feature X from vision.md").
- Reject and prune any tasks that provide zero business or architectural value.

### 4. The Self-Evolving Vision Loop (Stage N+1)
- **The Sync Trigger:** Vision defines the backlog -> Backlog defines the codebase. When all three are in sync and the current milestone is achieved, the project must evolve.
- **Vision Enhancement:** If the backlog is empty because the current vision is complete, DO NOT stop. Evolve ision.md to the next stage. Brainstorm and explore possibilities that were previously "beyond the dream" of the initial developer.
- **Generate Next-Gen Tasks:** Once ision.md is upgraded with ambitious new targets, immediately generate a fresh set of architectural and feature tasks in acklog.md to begin building towards that new horizon.


---
<!-- SKILL MODULE: tech-agentic-automation-tools.md -->
# Tech: Advanced Agentic Automation & Decision Support

## Goal
Utilize cutting-edge local LLM optimization, observability, and deterministic decision-making frameworks to ensure highly efficient, scalable, and introspective AI agents.

## Core Frameworks & Tooling

### 1. AirLLM & VRAM Optimization
- **AirLLM Usage:** When running large models (70B+) on limited local hardware or constrained cloud instances, utilize AirLLM to layer-load weights. This ensures high-capability reasoning without catastrophic Out-of-Memory (OOM) failures.

### 2. JEV (Joint Evaluation & Verification) / Decision Making
- **Decision Trees:** Use JEV (or similar Joint Evaluation architectures) to cross-verify agent decisions. Before executing a high-risk system command or committing code, the agent must simulate the output and evaluate the confidence score.

### 3. Task Observers & AgentOps
- **Observability:** Integrate Task Observers (like AgentOps or LangSmith) to trace agent execution loops. Every tool call, LLM prompt, and action must be logged with its latency, token usage, and outcome to prevent infinite loops and hallucination spirals.

### 4. Context Headroom Management
- **Headroom Optimization:** Actively monitor the LLM's context window. Implement rolling summaries and Vector DB (RAG) offloading to maintain at least 20% "headroom" in the context window to prevent truncation during complex reasoning tasks.

### 5. Ponytail / Task Queuing
- **Automation Queues:** Use robust task queuing and orchestration (often referred to in automation paradigms as ponytail/pigtail tracking) to ensure that background tasks and scheduled agent runs do not block the main event loop.


---
<!-- SKILL MODULE: tech-agentic-fsm-orchestration.md -->
---
name: tech-agentic-fsm-orchestration
description: Coordinate autonomous multi-agent swarms with deterministic Finite State Machines, strict token budgets, and structured handoff protocols.
version: 1.0.0
category: agentic-ai
---

# Agentic Finite State Machine (FSM) Orchestration

## Context
Unstructured multi-agent loops drift into infinite cycles, duplicate work, and burn tokens.
Autonomous swarms require deterministic state boundaries and explicit transition gates.
Finite State Machine (FSM) orchestration enforces predictable progression from specification to deployment.

## Core Rules
1. Model agentic workflows as explicit Finite State Machines with discrete states and transitions.
2. Cap maximum autonomous loop iterations at 5 turns before requiring human verification.
3. Validate state transitions with deterministic unit tests or schema verifiers before handoff.
4. Pass state between agents using validated JSON schemas rather than free-form text.
5. Allocate strict token budgets per execution state to avoid context exhaustion.
6. Trigger the circuit breaker immediately if an agent fails a transition test 3 consecutive times.

## Implementation Steps
1. Define FSM agent states and transition conditions in TypeScript:
   ```typescript
   export type AgentState = "PLANNING" | "CODING" | "TESTING" | "AUDITING" | "COMPLETED" | "FAILED";

   export interface AgentTransition {
       from: AgentState;
       to: AgentState;
       guard: () => Promise<boolean>;
   }

   export class AgentFSM {
       private currentState: AgentState = "PLANNING";
       private iterationCount = 0;
       private readonly maxIterations = 5;

       public async transition(nextState: AgentState, guard: () => Promise<boolean>): Promise<boolean> {
           if (this.iterationCount >= this.maxIterations) {
               this.currentState = "FAILED";
               throw new Error("Loop iteration limit exceeded. Triggering circuit breaker.");
           }
           const canTransition = await guard();
           if (canTransition) {
               this.currentState = nextState;
               this.iterationCount++;
               return true;
           }
           return false;
       }

       public getState(): AgentState {
           return this.currentState;
       }
   }
   ```
2. Log transitions to telemetry event streams with token consumption metadata.

## Verification Checklist
- [ ] Agent workflow states transition strictly according to predefined state graphs.
- [ ] Transition guards execute deterministic tests before moving to downstream states.
- [ ] Execution halts cleanly when reaching iteration limits without runaway API costs.
- [ ] Intermediate artifacts validate against strict JSON schemas before handoff.
- [ ] Failure state activates fallback mechanisms and notifies human operators.

## Anti-Patterns
- Allowing agents to self-assign arbitrary states without schema verification.
- Running unconstrained autonomous loops without turn limits or timeouts.
- Passing massive unprocessed transcript histories between specialized sub-agents.
- Continuing execution loops after verification test failures without state rollback.


---
<!-- SKILL MODULE: tech-agent-reach-orchestration.md -->
# Tech: Agent Reach & Cross-Boundary Orchestration

## Goal
Empower the autonomous agent with "Agent Reach"A,??the capability to intelligently transcend single-repository silos, securely invoke external data streams, and map cross-system blast radiuses without requiring micromanagement.

## Core Directives

### 1. Cross-Repository Reach
- When implementing a feature that alters an API schema, database contract, or shared library, you must exercise **Agent Reach**. 
- Do not restrict your architectural thinking to the current repository. Mentally evaluate the Avinya Forge ecosystem (e.g., Aetheris, ghost-ops, OmniWallet) and document the cross-repo blast radius in elease-notes.md.
- If an API contract breaks, generate a task specifically instructing the user (or the next agent instance) to apply the matching change in the dependent repository.

### 2. External Intelligence & Tool Reach
- If the current context or repository lacks the documentation required to implement an integration (e.g., a third-party SDK), use your Agent Reach capabilities (Web Search, File Read, MCP Servers) to independently hunt down the official documentation before writing code.
- Never hallucinate API parameters. If you lack the knowledge, Reach out to the source of truth.

### 3. Human-in-the-Loop (HitL) Reach
- **Irreversible Actions:** Agent Reach includes knowing *when* to reach out to the human. If a task requires a destructive database migration, deletion of core infrastructure, or deploying live PII changes, halt execution.
- Tag the task as [BLOCKED: Requires Human Architect Approval] and explicitly reach out to the user for a "Proceed" confirmation.


---
<!-- SKILL MODULE: tech-airllm-inference-optimization.md -->
---
name: tech-airllm-inference-optimization
description: Run 70B+ parameter LLMs on consumer GPUs (4GB-8GB VRAM) using layer-wise NVMe SSD streaming and quantization.
version: 1.0.0
category: ai-inference
---

# AirLLM Inference Optimization

## Context
Standard 70B parameter models require at least 140GB VRAM.
Consumer GPUs offer limited VRAM (4GB to 16GB).
AirLLM streams transformer layers sequentially from NVMe SSD into GPU memory.
This enables local 70B inference without multi-GPU clusters.

## Core Rules
1. Store model weights on PCIe Gen 4/5 NVMe SSDs.
2. Load only one transformer layer into GPU memory at a time.
3. Free GPU memory immediately after each layer forward pass completes.
4. Enable 4-bit or 8-bit quantization to reduce PCIe transfer overhead.
5. Use batch size 1 for single-stream generation.
6. Target throughput of 1-4 tokens per second on consumer hardware.

## Implementation Steps
1. Install AirLLM package:
   ```bash
   pip install airllm
   ```
2. Initialize model with disk offloading:
   ```python
   from airllm import AutoModel

   model = AutoModel.from_pretrained(
       "meta-llama/Meta-Llama-3-70B-Instruct",
       compression="4bit",  # or "8bit"
       profiling_mode=False
   )
   ```
3. Tokenize input and execute layer-by-layer forward pass:
   ```python
   input_text = ["Describe quantum annealing in three sentences."]
   input_tokens = model.tokenizer(
       input_text,
       return_tensors="pt",
       truncation=True,
       max_length=512
   )
   output = model.generate(
       input_tokens["input_ids"].cuda(),
       max_new_tokens=128,
       use_cache=True
   )
   result = model.tokenizer.decode(output[0])
   print(result)
   ```
4. Clear CUDA cache between generation runs:
   ```python
   import torch
   torch.cuda.empty_cache()
   ```

## Verification Checklist
- [ ] VRAM usage stays strictly below 8GB during 70B inference.
- [ ] Model weights reside on high-speed NVMe storage.
- [ ] Layer streaming executes without CUDA Out-Of-Memory (OOM) exceptions.
- [ ] Token decoding matches expected base model response quality.
- [ ] GPU memory returns to baseline after inference completes.

## Anti-Patterns
- Attempting full-model loading into VRAM on consumer GPUs.
- Storing model weights on mechanical HDDs or network shares.
- Using batch sizes greater than 1 without high-bandwidth PCIe Gen 5.
- Retaining intermediate activation tensors in GPU memory across layers.


---
<!-- SKILL MODULE: tech-auth-database.md -->
# Tech: Database & Authentication Integration

## Goal
Establish secure, scalable, and resilient database and authentication architectures for full-stack applications, prioritizing data integrity and seamless user onboarding (Sign-in/Sign-up, OAuth).

---

## Core Engineering Standards

### 1. Authentication & Authorization
- **Unified Identity Providers:** Implement standard OAuth flows (Google, Facebook, GitHub, Apple) and Magic Links for frictionless sign-in and sign-up.
- **Next-Gen Auth Libraries:** Utilize industry-standard solutions like **Auth.js (NextAuth.js)** or **Lucia** to handle session management, JWT signing, and encrypted cookies securely out-of-the-box.
- **RBAC:** Implement Role-Based Access Control on both the client (UI rendering) and server (API endpoints).

### 2. Database Infrastructure
- **Production-Ready Databases:** Migrate from ephemeral local databases (like SQLite) to robust production environments (e.g., PostgreSQL via Vercel Postgres, Supabase, or Neon) before deploying to serverless platforms.
- **ORM Standardization:** Use modern ORMs like **Prisma** or **Drizzle ORM** for type-safe database queries, schema migrations, and built-in protection against SQL injection.
- **Connection Pooling:** Ensure the database connection handles serverless cold starts gracefully using connection pooling (e.g., PgBouncer).

### 3. User Data Security
- **PII Protection:** Encrypt sensitive Personally Identifiable Information (PII) at rest and in transit.
- **Stateless Sessions:** Prefer secure HTTP-only cookies over local storage for session tokens to prevent XSS theft.


---
<!-- SKILL MODULE: tech-backend-api.md -->
# Tech: Backend API Development Best Practices

## Goal
Design and build resilient, scalable, and well-structured RESTful and GraphQL APIs.

## Guidelines
1. **RESTful Resource Naming:** Use clear, noun-based resource routes (e.g., `/api/v1/users`, `/api/v1/orders/{id}`). Use standard HTTP methods (`GET`, `POST`, `PUT`, `PATCH`, `DELETE`).
2. **Request Validation & Serialization:** Validate all incoming request payloads at the API layer using strict schemas (e.g., Zod, Pydantic, Joi) before passing data to domain logic.
3. **Consistent Error Responses:** Return standard JSON error responses containing status codes, error codes, user-friendly messages, and optional field-level validation errors.
4. **Middleware & Interceptors:** Use modular middleware for logging, rate limiting, authentication, CORS, and request tracking (correlation IDs).
5. **API Documentation:** Maintain up-to-date OpenAPI/Swagger definitions or GraphQL schemas that reflect actual backend endpoints and request/response payloads.


---
<!-- SKILL MODULE: tech-cicd-devops.md -->
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
9. **Official Tooling for Deploys:** Deploy with the provider's official CLI (e.g. `vercel pull` â†’ `vercel build --prod` â†’ `vercel deploy --prebuilt --prod`) rather than third-party actions that receive your token. Disable the provider's own Git auto-deploy (`"git": { "deploymentEnabled": false }`) so the CI-gated path is the only route to production.
10. **Free Hosting Defaults:** Next.js/SSR â†’ Vercel Hobby (non-commercial). Static sites â†’ GitHub Pages or Cloudflare Pages. Custom domains: keep the registrar's nameservers and add the A/CNAME records the host specifies; never transfer the domain unless required.

## PRIORITY ZERO (P0): CI/CD & GITHUB ACTIONS
If GitHub Actions / CI/CD pipelines are failing in the repository, fixing them is your absolute highest priority. 
- You must halt new feature development until the pipeline is green.
- Debug .github/workflows/*.yml files, fix dependency mismatches, resolve linting errors, and repair broken tests. A broken pipeline means the project is paralyzed. Fix it first.

### Zero Tolerance for Remote Pipeline Failures
- The remote CI/CD pipeline must never fail.
- Always use Local Pre-Commit Hooks (defined in 	ech-git-hooks-local-ci.md) to execute cleanup, lint fixing, building, and testing locally. If the local hook fails, fix it locally before pushing to remote.


---
<!-- SKILL MODULE: tech-database-sql.md -->
# Tech: Database & SQL Architecture Standards

## Goal
Ensure clean database schema design, efficient querying, reliable migrations, and robust ORM usage across data stores.

## Guidelines
1. **Schema Design & Normalization:** Design database tables with proper primary keys, foreign keys, constraints, and data types. Aim for appropriate normalization balance.
2. **Indexing & Query Performance:** Create indexes for frequently queried columns and foreign keys. Avoid `SELECT *` in production and prevent N+1 query problems.
3. **Migration Management:** Use versioned, reproducible migration scripts (e.g., Prisma, Drizzle, TypeORM, Alembic, Flyway). Never perform manual schema modifications in production.
4. **ORM & Query Builders:** Use type-safe ORMs or query builders while retaining awareness of generated SQL query execution and transaction boundaries.
5. **Data Integrity & Transactions:** Enforce database-level integrity (unique constraints, cascades, nullability) and wrap multi-step write operations in ACID transactions.


---
<!-- SKILL MODULE: tech-dependency-management.md -->
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


---
<!-- SKILL MODULE: tech-ebpf-observability-security.md -->
---
name: tech-ebpf-observability-security
description: Instrument Linux kernel telemetry, detect security anomalies, and monitor high-throughput network sockets using eBPF programs.
version: 1.0.0
category: observability-security
---

# eBPF Observability & Kernel Security

## Context
User-space monitoring agents cause substantial CPU overhead and context-switching latency.
Zero-day exploits and rootkits often bypass standard user-space detection tools.
Extended Berkeley Packet Filter (eBPF) runs verified, sandboxed byte-code directly within the Linux kernel.

## Core Rules
1. Attach probes to kernel tracepoints rather than unstable kprobes whenever possible.
2. Ensure eBPF bytecode satisfies Linux kernel in-kernel verifier constraints.
3. Stream telemetry events to user space using BPF ring buffers instead of perf buffers.
4. Minimize per-packet computation within XDP (eXpress Data Path) hooks.
5. Filter sensitive payload contents before writing records to user-space memory buffers.
6. Gracefully detach probes and release pinned maps during process termination.

## Implementation Steps
1. Write eBPF program in C to trace process execution (`sys_enter_execve`):
   ```c
   #include <vmlinux.h>
   #include <bpf/bpf_helpers.h>

   struct event_t {
       u32 pid;
       char comm[16];
   };

   struct {
       __uint(type, BPF_MAP_TYPE_RINGBUF);
       __uint(max_entries, 256 * 1024);
   } events SEC(".maps");

   SEC("tracepoint/syscalls/sys_enter_execve")
   int trace_execve(struct trace_event_raw_sys_enter *ctx) {
       struct event_t *event;
       event = bpf_ringbuf_reserve(&events, sizeof(*event), 0);
       if (!event) return 0;

       event->pid = bpf_get_current_pid_tgid() >> 32;
       bpf_get_current_comm(&event->comm, sizeof(event->comm));
       bpf_ringbuf_submit(event, 0);
       return 0;
   }
   char LICENSE[] SEC("license") = "GPL";
   ```
2. Compile eBPF program with Clang:
   ```bash
   clang -O2 -target bpf -c exec_trace.bpf.c -o exec_trace.bpf.o
   ```
3. Load program and consume ring buffer events using Go (cilium/ebpf) or Python (bcc).

## Verification Checklist
- [ ] eBPF bytecode passes the Linux kernel verifier without rejection.
- [ ] Ring buffer drops zero events under high process creation workloads.
- [ ] Telemetry captures PID and command strings for every executed binary.
- [ ] Agent process uses less than 1% CPU utilization under load.
- [ ] Probes detach cleanly upon SIGINT or SIGTERM signals.

## Anti-Patterns
- Using unbounded loops that fail kernel verifier safety checks.
- Copying full memory buffers across the kernel-user boundary unnecessarily.
- Relying on brittle kprobe signatures across shifting kernel versions.
- Running unverified BPF binaries without explicit CAP_BPF or CAP_SYS_ADMIN capabilities.


---
<!-- SKILL MODULE: tech-git-hooks-local-ci.md -->
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


---
<!-- SKILL MODULE: tech-git-workflow.md -->
# Tech: Git & Version Control Workflow

## Goal
Maintain a clean, linear, and searchable git history that facilitates collaboration, code review, and automated releases while maximizing PR output per cycle.

## Guidelines
1. **Branching Strategy:** Use feature branches named with descriptive prefixes (e.g., `feat/user-auth`, `fix/login-bug`, `chore/deps-update`).
2. **Conventional Commits:** Follow conventional commit formatting: `type(scope): succinct description` (e.g., `feat(auth): add OAuth2 refresh token handling`).
3. **Atomic Commits:** Keep commits focused on a single logical change. Avoid mixing refactoring, formatting, and feature code in a single commit.
4. **Pull Request Standards & Max Throughput:** Provide clear PR descriptions summarizing all batched items executed from `backlog.md`, including motivation, implementation summary, testing steps, and relevant screenshots or logs. Aim to deliver fully tested, high-value backlog batches in a single PR.
5. **Clean History:** Rebase feature branches on main/master prior to merging to prevent unnecessary merge commits where team conventions require linear history.


---
<!-- SKILL MODULE: tech-go-clean-arch.md -->
# Tech: Modern Go (1.22+), Clean Architecture & Idiomatic Go

## Goal
Enforce idiomatic, high-performance, maintainable Go 1.22+ development standards following Clean Architecture, standard Go project layouts, structured logging (`slog`), range-over-function iterators, and goroutine lifecycle safety.

---

## Technical Standards & Best Practices

### 1. Project Layout & Clean Architecture
- **Standard Layout:** Organize code cleanly (`cmd/<app>/`, `internal/domain/`, `internal/usecase/`, `internal/repository/`, `internal/handler/`, `pkg/`).
- **Dependency Inversion:** Higher-level domain logic defines interfaces; lower-level infrastructure packages (SQL, HTTP, Redis) implement them.
- **Constructor Injection:** Pass dependencies explicitly via constructor functions (`func NewUserService(repo UserRepository, logger *slog.Logger) *UserService`); avoid global state or package-level singletons.

### 2. Idiomatic Go & Structured Logging (`log/slog`)
- **Error Wrapping:** Handle errors explicitly. Wrap context when propagating errors (`fmt.Errorf("failed to fetch user %d: %w", id, err)`). Use `errors.Is` and `errors.As` for error matching.
- **Structured Logging:** Use native `log/slog` for structured, key-value JSON or text logging (`logger.InfoContext(ctx, "processed order", slog.String("order_id", id))`).
- **Go 1.22 Range-Over-Func Iterators:** Leverage Go 1.22 iterators (`iter.Seq`, `iter.Seq2`) for clean custom collection traversals without allocating slice copies.

### 3. Concurrency, Context & Resource Lifecycle
- **Context First Parameter:** Always pass `ctx context.Context` as the first parameter to functions performing I/O, database queries, or goroutine spawning.
- **Errgroup Management:** Manage goroutine lifecycles using `golang.org/x/sync/errgroup` with context cancellation to prevent goroutine leaks on failure.
- **Mutex Discipline:** Keep lock scopes minimal; acquire mutexes with immediate `defer mu.Unlock()` or `RUnlock()`.

### 4. Testing & Code Quality
- **Table-Driven Tests:** Structure unit tests using Go table-driven test patterns with `t.Run(tt.name, func(t *testing.T) { ... })`.
- **Strict Linting:** Enforce `golangci-lint` with enabled checkers (`govet`, `errcheck`, `staticcheck`, `gosec`, `ineffassign`).


---
<!-- SKILL MODULE: tech-green-software-engineering.md -->
---
name: tech-green-software-engineering
description: Measure, audit, and minimize carbon intensity and energy consumption of software applications and AI inference workloads.
version: 1.0.0
category: green-computing
---

# Green Software Engineering & SCI Optimization

## Context
Data centers consume vast amounts of electrical grid energy.
Inefficient loops, uncompressed payloads, and unoptimized model architectures inflate carbon emissions.
Green Software Engineering applies Software Carbon Intensity (SCI) metrics to reduce carbon footprints.

## Core Rules
1. Calculate SCI score using the formula: $SCI = ((E \times I) + M) / R$.
2. Measure CPU and DRAM energy consumption using Intel RAPL or AMD Energy counters.
3. Schedule non-urgent batch and AI inference workloads during low-carbon grid hours.
4. Replace active polling loops with event-driven architectures.
5. Compress all data in transit using zstd or brotli to decrease network transmission power.
6. Enforce strict budget thresholds for kilowatt-hours (kWh) in CI/CD pipelines.

## Implementation Steps
1. Measure live process energy using CodeCarbon in Python:
   ```python
   from codecarbon import track_emissions

   @track_emissions(project_name="inference-carbon-audit")
   def run_inference_workload():
       # Model forward pass logic here
       pass

   if __name__ == "__main__":
       run_inference_workload()
   ```
2. Query Electricity Maps API for real-time grid carbon intensity ($gCO_2eq/kWh$):
   ```python
   import requests

   def get_grid_carbon_intensity(zone="US-CAL-CISO", api_key="YOUR_KEY"):
       url = f"https://api.electricitymap.org/v3/carbon-intensity/latest?zone={zone}"
       headers = {"auth-token": api_key}
       response = requests.get(url, headers=headers).json()
       return response["carbonIntensity"]
   ```
3. Audit AST syntax trees for carbon anti-patterns (busy waits, unthrottled loops).

## Verification Checklist
- [ ] CodeCarbon or RAPL metrics record energy usage per execution run.
- [ ] Automated batch jobs defer execution when grid intensity exceeds 250 gCO2eq/kWh.
- [ ] Compression ratios reduce serialized payload bytes by at least 40%.
- [ ] CI pipeline fails if total CPU execution energy exceeds the defined energy budget.
- [ ] Zero busy-wait CPU polling cycles observed in CPU telemetry.

## Anti-Patterns
- Continuous polling loops running with `sleep(0)` or empty wait blocks.
- Running unquantized LLM inference for tasks solvable with rule-based heuristics.
- Disregarding the carbon intensity variance of regional power grids.
- Storing uncompressed, high-frequency telemetry logs indefinitely.


---
<!-- SKILL MODULE: tech-legal-compliance-gdpr.md -->
# Tech: Legal Compliance, UK GDPR & Age Verification

## Goal
Ensure all applications strictly comply with UK GDPR, EU GDPR, and the UK Age Appropriate Design Code (AADC). Protect user privacy, avoid regulatory fines, and ensure ethical data handling.

## Core Guidelines

### 1. UK GDPR & Data Privacy
- **Cookie Consent:** Implement explicit, active consent mechanisms for all non-essential cookies (e.g., using OneTrust, Cookiebot, or a custom strict banner). No tracking pixels or analytics can fire before consent is granted.
- **Right to be Forgotten:** Provide a one-click automated mechanism for users to delete their entire account and all associated PII (Personally Identifiable Information) permanently.
- **Data Minimization & Encryption:** Only collect data absolutely necessary. Encrypt all PII at rest (AES-256) and in transit (TLS 1.3). Never log plaintext emails, passwords, or IP addresses.

### 2. Age Verification & Child Protection (AADC)
- **Age Gating:** Implement strict age verification during the signup flow. Ensure no under-age children (under 13 for general, under 18 for specific services) can create accounts.
- **Default Privacy:** For younger users (if allowed), all privacy settings must default to the strictest possible level (no public profiles, no location tracking).

### 3. Terms of Service & Privacy Policies
- **Accessibility:** Link Terms of Service, Privacy Policy, and Cookie Policy in the footer of every public-facing page. Use plain English (ASD-STE100 standard) so users clearly understand what happens to their data.


---
<!-- SKILL MODULE: tech-llm-quantization-evals.md -->
---
name: tech-llm-quantization-evals
description: Quantize LLMs (GGUF, AWQ, EXL2), train LoRA adapters, and benchmark task accuracy using automated evaluation harnesses.
version: 1.0.0
category: ai-optimization
---

# LLM Quantization, LoRA & Automated Evals

## Context
Full-precision models require excessive GPU memory and produce high inference latency.
Careless quantization degrades model reasoning and leads to benchmark regressions.
Systematic quantization paired with automated evaluation harnesses ensures model capability preservation.

## Core Rules
1. Quantize weights using AWQ for server inference and GGUF for edge/CPU inference.
2. Retain critical attention layers in 16-bit precision if perplexity increases significantly.
3. Train parameter-efficient LoRA adapters using rank 16 to 64 and alpha 32.
4. Benchmark model accuracy before and after quantization using standardized eval datasets.
5. Track tokens-per-second, time-to-first-token (TTFT), and GPU VRAM utilization metrics.
6. Enforce automated quality gates in CI/CD before deploying quantized models.

## Implementation Steps
1. Quantize model weights to 4-bit AWQ using AutoAWQ in Python:
   ```python
   from awq import AutoAWQForCausalLM
   from transformers import AutoTokenizer

   model_path = "meta-llama/Meta-Llama-3-8B-Instruct"
   quant_path = "llama-3-8b-awq"
   quant_config = { "zero_point": True, "q_group_size": 128, "w_bit": 4, "version": "GEMM" }

   model = AutoAWQForCausalLM.from_pretrained(model_path)
   tokenizer = AutoTokenizer.from_pretrained(model_path, trust_remote_code=True)

   model.quantize(tokenizer, quant_config=quant_config)
   model.save_quantized(quant_path)
   tokenizer.save_pretrained(quant_path)
   ```
2. Run automated accuracy evaluation with lm-evaluation-harness:
   ```bash
   lm_eval --model hf \
       --model_args pretrained=llama-3-8b-awq \
       --tasks gsm8k,mmlu \
       --batch_size 4 \
       --output_path ./eval_results.json
   ```
3. Compare eval score to unquantized baseline to ensure less than 1.5% accuracy drop.

## Verification Checklist
- [ ] Quantized model VRAM usage decreases by at least 60% compared to FP16.
- [ ] Inference generation throughput (tokens/sec) increases on target hardware.
- [ ] Accuracy regression on target benchmarks stays within acceptable thresholds (< 2%).
- [ ] LoRA adapters fuse cleanly into base weights without tensor dimension mismatches.
- [ ] Automated evaluation harness produces reproducible JSON metric reports.

## Anti-Patterns
- Quantizing models without running validation benchmarks on domain-specific tasks.
- Using 2-bit quantization on models smaller than 30 billion parameters.
- Hardcoding inference prompts during accuracy evaluation runs.
- Deploying quantized models without monitoring output hallucination rates.


---
<!-- SKILL MODULE: tech-llm-security-owasp.md -->
# Technical Standard: LLM Security & OWASP Compliance

## Goal
Establish rigorous security controls, audit protocols, and defense-in-depth patterns for Large Language Model (LLM) applications, AI agents, and prompt-driven workflows, adhering to the **OWASP Top 10 for LLM Applications**.

---

## OWASP LLM Top 10 Mitigations & Guidelines

### 1. Direct & Indirect Prompt Injection (LLM01)
- **Input Isolation:** Strictly separate untrusted user inputs, external web content, and vector database retrieval outputs from system instructions using structural delimiter tags (`<user_input>`, `<retrieved_context>`).
- **Defensive System Prompting:** Enforce non-overridable system directives that instruct the model to reject privilege escalation attempts or instructions contained inside retrieved documents.
- **Input Pre-Filtering:** Apply input sanitization and heuristic prompt-injection scanners prior to sending prompts to core reasoning LLMs.

### 2. Insecure Output Handling (LLM02)
- **Output Sanitization:** Treat all LLM outputs as untrusted. Parse and sanitize Markdown, HTML, scripts, and SQL code generated by LLMs prior to rendering or downstream execution.
- **Grammar & Schema Enforcement:** Enforce JSON Schema / Pydantic validation on all structured output to prevent code execution injection or payload manipulation.

### 3. Training Data Poisoning & RAG Manipulation (LLM03 / LLM08)
- **Data Provenance:** Verify origin and cryptographic integrity of external data ingested into vector databases and knowledgebases.
- **RAG Access Control:** Enforce tenant-level and user-level authorization checks at retrieval time so users cannot access vector context beyond their security clearance.

### 4. Model Denial of Service & Token Exhaustion (LLM04)
- **Token Rate Limits:** Enforce maximum input/output token limits per prompt and per session.
- **Recursion & Loop Guards:** Implement execution timeout limits and maximum loop step counters on agentic workflows to prevent runaway infinite loops.

### 5. Insecure Plugin / Tool Design (LLM07)
- **Least Privilege Execution:** Grant agent tools the minimal permissions necessary. Tools executing shell commands, file modifications, or DB mutations must operate within sandboxed containers or restricted subdirectories.
- **Parameter Validation:** Rigorously validate tool call arguments against strict schemas before executing external actions.

### 6. Sensitive Information Disclosure (LLM06)
- **PII & Secrets Scrubbing:** Filter system prompts and external tool outputs for API keys, bearer tokens, passwords, and Personally Identifiable Information (PII) before LLM ingestion or logging.
- **System Prompt Safeguards:** Instruct models never to reveal system prompt contents, internal environment configurations, or raw credential strings.

---

## Security Audit Checklist for AI Agents

- [ ] Untrusted inputs are enclosed in structural tags and sanitized.
- [ ] Tool call arguments are validated against JSON Schemas before execution.
- [ ] No raw API keys, secrets, or PII exist in prompts, code, or logs.
- [ ] Maximum step limits and token caps prevent DoS / infinite loops.
- [ ] Agent execution operates within isolated directory scopes or sandboxes.

### Agent Vulnerability Prevention (Anti-Hallucination)
- **Dependency Auditing:** Never introduce new 
pm, pip, or go dependencies without verifying their exact existence and security standing. Hallucinated packages lead to supply chain attacks.
- **Hook Compliance:** Never use --no-verify on git commits. You must never bypass local CI/CD security hooks.
- **Secure by Default:** Do not disable SSL verifications, do not log credentials, and do not commit secrets.


---
<!-- SKILL MODULE: tech-local-rag-vector-search.md -->
---
name: tech-local-rag-vector-search
description: Build zero-latency, privacy-preserving client-side vector search and RAG using IndexedDB, WebAssembly, and local embeddings.
version: 1.0.0
category: ai-architecture
---

# Local-First RAG & Vector Search

## Context
Cloud-based vector databases introduce network latency, egress costs, and privacy vulnerabilities.
Edge applications require instant semantic search without sending sensitive text upstream.
In-browser embeddings and client-side vector indexing deliver fast, private retrieval.

## Core Rules
1. Compute embeddings locally using ONNX Web runtime or Transformers.js.
2. Store vector embeddings in IndexedDB or OPFS (Origin Private File System).
3. Compute cosine similarity or dot-product using SIMD-accelerated WebAssembly.
4. Chunk text into 256-512 token segments with 10% overlap.
5. Limit search results to the top 5 most similar chunks.
6. Fall back to exact keyword filtering if semantic confidence is low.

## Implementation Steps
1. Install Transformers.js for client-side embedding:
   ```bash
   npm install @xenova/transformers
   ```
2. Initialize local embedding pipeline in JavaScript:
   ```javascript
   import { pipeline } from '@xenova/transformers';

   const embedder = await pipeline('feature-extraction', 'Xenova/all-MiniLM-L6-v2');

   export async function generateEmbedding(text) {
       const output = await embedder(text, { pooling: 'mean', normalize: true });
       return Array.from(output.data);
   }
   ```
3. Calculate cosine similarity across stored vectors:
   ```javascript
   export function cosineSimilarity(vecA, vecB) {
       let dotProduct = 0.0;
       let normA = 0.0;
       let normB = 0.0;
       for (let i = 0; i < vecA.length; i++) {
           dotProduct += vecA[i] * vecB[i];
           normA += vecA[i] * vecA[i];
           normB += vecB[i] * vecB[i];
       }
       return dotProduct / (Math.sqrt(normA) * Math.sqrt(normB));
   }
   ```
4. Query IndexedDB store and rank top-k document passages.

## Verification Checklist
- [ ] Embeddings generate completely offline without external network requests.
- [ ] Vector similarity calculation completes in under 50ms for 10,000 vectors.
- [ ] IndexedDB persists document chunks and vector arrays across page reloads.
- [ ] Retrieved context passages correctly match the user query semantic intent.
- [ ] WebAssembly SIMD acceleration activates where hardware supports it.

## Anti-Patterns
- Sending unencrypted user documents to third-party embedding APIs.
- Storing high-dimensional vectors in unindexed local storage strings.
- Chunking documents without overlapping context boundaries.
- Re-computing static document embeddings on every page load.


---
<!-- SKILL MODULE: tech-mcp-agentic-tools.md -->
# Technical Standard: Model Context Protocol (MCP) & Agentic Tools

## Goal
Provide a standardized specification for creating, exposing, consuming, and securing tools and resources via the **Model Context Protocol (MCP)** and native AI tool calling interfaces across AI coding assistants and agent frameworks.

---

## MCP & Tool Architecture

### 1. Tool Declaration & Schema Quality
- **Self-Describing Interfaces:** Every tool must include a comprehensive `description`, clear argument descriptions, type annotations, and explicit `required` parameter lists.
- **Input Validation:** Use strict JSON Schema or Pydantic models for argument validation before passing inputs to backend execution logic.
- **Minimal Required Parameters:** Design tools to accept reasonable defaults for optional parameters to minimize tool invocation errors.

### 2. Tool Calling Lifecycle & Resiliency
- **Input Sanitization:** Sanitize all tool arguments (path inputs, shell strings, query strings) before execution to prevent path traversal and command injection vulnerabilities.
- **Graceful Error Recovery:** Tool execution errors must return structured error payloads detailing the failure reason and actionable remediation guidance rather than throwing uncaught runtime exceptions.
- **Idempotency & Side-Effects:** Clearly designate whether a tool is read-only (idempotent) or mutation-heavy (side-effect producing). Mutation tools must require explicit confirmation or sandbox verification where appropriate.

### 3. Server Configuration & Standard Endpoints
- **Standardized Setup:** Configure MCP servers cleanly across IDEs and agents (`.mcp.json`, `.claude/mcp.json`) using secure environment variable interpolation (e.g., `${API_KEY}`) rather than hardcoding credentials.
- **Resource Streaming & Pagination:** For tools returning large datasets or logs, implement pagination or streaming responses to avoid exhausting LLM context limits.

---

## Tool Calling Checklist

- [ ] Tool schema contains explicit parameter types, docstrings, and required fields.
- [ ] Inputs are sanitized against path traversal (`..`), command injection, and SSRF.
- [ ] Error handling returns JSON structured error details with self-correction prompts.
- [ ] MCP configuration avoids committed plain-text API keys or tokens.
- [ ] Long outputs are truncated or paginated to preserve context headroom.


---
<!-- SKILL MODULE: tech-microservices-modular.md -->
# Tech: Modern Architecture (Modular Monolith, Microservices & DDD)

## Goal
Enforce clean, scalable, maintainable architectural patterns across projects, supporting both Modular Monoliths and Microservices using Domain-Driven Design (DDD) principles.

---

## Architectural Guidelines

### 1. Modular Monolith & Boundary Isolation
- **Domain Boundaries:** Organize code by business domain/bounded contexts (e.g., `modules/auth`, `modules/billing`, `modules/orders`) rather than technical layers alone.
- **Strict Module Contracts:** Communicate across module boundaries strictly via explicit public interface contracts or internal event buses. Never perform direct deep imports into internal module implementation details.
- **Database Decoupling:** Keep domain schemas logically isolated. Avoid cross-module database joins; utilize repository interfaces and domain events.

### 2. Microservices & Event-Driven Systems
- **Single Responsibility Service:** Design services around clear business capabilities with independent deployments and isolated storage.
- **Asynchronous Event-Driven Messaging:** Use event pub/sub (Kafka, RabbitMQ, Redis Streams, or NATS) for eventual consistency and decoupled communication.
- **API Gateway & Service Mesh:** Route ingress traffic through API Gateways with rate limiting, authentication, and circuit breaking.

### 3. Domain-Driven Design (DDD) Principles
- **Ubiquitous Language:** Align domain model names, entities, and methods with business domain terminology.
- **Entities & Value Objects:** Model state with immutable Value Objects where identity is irrelevant, and Entities where identity persists.
- **Aggregates & Repositories:** Enforce consistency boundaries within Aggregates; abstract data persistence behind clean Repository interfaces.


---
<!-- SKILL MODULE: tech-offline-first-crdt-sync.md -->
---
name: tech-offline-first-crdt-sync
description: Design offline-first data architectures using IndexedDB, Dexie.js, and Conflict-Free Replicated Data Types (CRDTs) for seamless sync.
version: 1.0.0
category: distributed-systems
---

# Offline-First Data & CRDT Synchronization

## Context
Intermittent network connectivity causes data loss and broken user experiences.
Standard client-server REST mutations fail when offline.
Conflict-Free Replicated Data Types (CRDTs) and local-first databases allow seamless peer synchronization without conflicts.

## Core Rules
1. Write all mutations to local IndexedDB storage before initiating network requests.
2. Resolve concurrent edits using state-based or operation-based CRDTs (Yjs or Automerge).
3. Queue outgoing synchronization operations in a persistent IndexedDB transaction outbox.
4. Render UI changes optimistically before server confirmation.
5. Reconcile network disconnections automatically using exponential backoff retries.
6. Prune tombstoned CRDT records only after verifying global peer acknowledgement.

## Implementation Steps
1. Configure Dexie.js local database schema:
   ```javascript
   import Dexie from "dexie";

   export const db = new Dexie("AppOfflineDB");
   db.version(1).stores({
       documents: "id, updatedAt, syncStatus",
       outbox: "++seq, action, payload, createdAt"
   });
   ```
2. Apply local mutation and append operation to sync outbox:
   ```javascript
   export async function mutateDocument(docId, updates) {
       await db.transaction("rw", db.documents, db.outbox, async () => {
           const existing = await db.documents.get(docId) || {};
           const updatedDoc = { ...existing, ...updates, id: docId, updatedAt: Date.now() };
           await db.documents.put(updatedDoc);
           await db.outbox.add({
               action: "DOCUMENT_UPDATE",
               payload: updatedDoc,
               createdAt: Date.now()
           });
       });
   }
   ```
3. Synchronize concurrent document edits using Yjs:
   ```javascript
   import * as Y from "yjs";
   import { IndexeddbPersistence } from "y-indexeddb";

   const ydoc = new Y.Doc();
   const persistence = new IndexeddbPersistence("collaborative-workspace", ydoc);
   const ytext = ydoc.getText("content");

   persistence.on("synced", () => {
       console.log("Local CRDT content synced from IndexedDB");
   });
   ```

## Verification Checklist
- [ ] Application functions fully with zero network connectivity.
- [ ] Local mutations persist in IndexedDB across page reloads and browser restarts.
- [ ] CRDT documents merge concurrent divergent edits deterministically without conflicts.
- [ ] Outbox queue flushes and drains automatically upon network restoration.
- [ ] Optimistic UI renders state updates immediately within 16 milliseconds.

## Anti-Patterns
- Blocking the UI waiting for remote server responses.
- Relying on "last-write-wins" timestamps for concurrent text editing.
- Storing unbounded sync queues in volatile in-memory variables.
- Deleting local data immediately when a sync error occurs.


---
<!-- SKILL MODULE: tech-python-fastapi.md -->
# Tech: Modern Python (3.12+), FastAPI & Pydantic v2

## Goal
Enforce clean, performant, type-safe Python development standards using modern Python 3.12+ features, FastAPI framework conventions, Pydantic v2 validation models, and modern tooling (Ruff, Pyright, Pytest, HTTPX).

---

## Technical Standards & Best Practices

### 1. Modern Python 3.12+ & Type Safety
- **Type Annotations:** Use modern built-in type syntax (`list[str]`, `dict[str, Any]`, `X | None` instead of `typing.Optional`/`Union`).
- **Strict Generics:** Use Python 3.12 `type` alias statements and type parameter syntax (`def process[T](data: list[T]) -> list[T]:`).
- **Native Async I/O:** Use native `async`/`await` for I/O bound operations (database sessions, HTTP external calls, vector search queries).

### 2. FastAPI Architecture & Dependency Injection
- **Explicit Dependency Injection:** Utilize FastAPI `Depends` for managing database sessions (`async_sessionmaker`), authentication context (`get_current_user`), and rate limiters.
- **Router Modularization:** Organize API endpoints into domain-scoped APIRouters (`app.include_router(users_router, prefix="/api/v1/users", tags=["Users"])`).
- **Structured Error Schema:** Raise explicit `HTTPException(status_code=..., detail={"code": "USER_NOT_FOUND", "message": "..."})` with consistent JSON error payloads.

### 3. Pydantic v2 Schema & Data Validation
- **Schema Separation:** Separate schemas into explicit Request (`UserCreate`, `UserUpdate`), Query (`UserQueryParams`), and Response (`UserRead`, `PaginatedResponse[UserRead]`) models.
- **Model Config:** Use Pydantic v2 `BaseModel` with `model_config = ConfigDict(strict=True, populate_by_name=True, extra="forbid")`.
- **Environment Management:** Manage environment settings using `pydantic-settings` (`BaseSettings`) with field validation.

### 4. Quality & Testing Standards
- **Ruff & Pyright:** Enforce `ruff check` and `ruff format` for linting and formatting; use `pyright` or `mypy --strict` for static type checking.
- **Async Pytest Suite:** Write unit and integration tests using `pytest-asyncio` and `httpx.AsyncClient` against test database fixtures.


---
<!-- SKILL MODULE: tech-react-nextjs.md -->
# Tech: React.js & Next.js App Router Best Practices

## Goal
Build scalable, performant, accessible, and resilient React and Next.js applications using modern App Router architecture, React Server Components (RSC), Server Actions, optimistic UI updates, and zero-CLS media optimization.

---

## Core Technical Engineering Standards

### 1. React Server Components (RSC) Architecture
- **Server First Default:** Keep components as Server Components by default. Push `'use client'` boundaries down to the leaf nodes requiring interactivity, state (`useState`), or browser APIs (`useEffect`, event listeners).
- **Zero Bundle Impact:** Perform heavy data fetching, parsing, and data transformations inside Server Components to keep client JavaScript bundle size minimal.

### 2. Next.js App Router Data Fetching & Caching
- **Native Fetch Caching:** Leverage Next.js extended `fetch` with explicit tags and revalidation options (`fetch(url, { next: { tags: ['user-data'], revalidate: 3600 } })`).
- **Server Actions & Mutation:** Use Server Actions (`'use server'`) for form submissions and mutations. Call `revalidatePath()` or `revalidateTag()` to purge stale cache data instantly.
- **Optimistic UI Updates:** Pair Server Actions with `useOptimistic()` for instant feedback during network mutations.

### 3. Streaming & Suspense Boundaries
- **Granular Loading States:** Wrap slow-loading asynchronous components in `<Suspense fallback={<SkeletonLoader />}>` to enable incremental HTML streaming (`loading.tsx`).
- **Parallel & Intercepting Routes:** Use slot folders (`@modal`, `@sidebar`) for modal overlays and parallel route rendering without disrupting main page state.

### 4. State Management & Hooks Discipline
- **Local State Primacy:** Prefer URL state (search params) or local `useState` over global state where possible. Use Zustand or Jotai for complex cross-component global state.
- **Rules of Hooks:** Extract complex domain logic into custom hooks (`useUserData()`). Never call hooks conditionally or inside loops.

### 5. Web Vitals & Media Optimization
- **Zero-CLS Layouts:** Always use `<Image src={...} alt={...} width={...} height={...} priority />` for hero media to eliminate Cumulative Layout Shift.
- **Font Optimization:** Use `next/font` (`Geist`, `Inter`) with `subsets: ['latin']` for zero-CLS typography.


---
<!-- SKILL MODULE: tech-reverse-engineering-rev.md -->
---
name: tech-reverse-engineering-rev
description: Reverse engineer proprietary APIs, binaries, and network protocols using decompilation, Frida instrumentation, and proxy inspection.
version: 1.0.0
category: security
---

# REV: Reverse Engineering & Protocol Interception

## Context
Proprietary binaries and mobile applications hide undocumented APIs and schemas.
Static and dynamic analysis reveals wire contracts and authentication flows.
Reverse engineering extracts private endpoints for automation and testing.

## Core Rules
1. Perform static analysis before attempting dynamic runtime instrumentation.
2. Intercept network traffic using TLS-decrypting MITM proxies.
3. Hook runtime methods with Frida to bypass SSL pinning.
4. Extract endpoint URLs, authentication headers, and payload structures.
5. Decompile Android APKs with Jadx and native binaries with Ghidra.
6. Isolate reverse engineering environments inside virtual machines or sandboxes.

## Implementation Steps
1. Decompile application package using Jadx:
   ```bash
   jadx -d ./decompiled_app target_app.apk
   ```
2. Start mitmproxy with CA certificate generation:
   ```bash
   mitmproxy -p 8080 --set block_global=false
   ```
3. Bypass Android SSL pinning using Frida runtime injection:
   ```bash
   frida -U -f com.example.targetapp -l universal-ssl-pinning-bypass.js
   ```
4. Hook internal API response handlers in JavaScript:
   ```javascript
   Java.perform(function () {
       var ApiClient = Java.use("com.example.targetapp.network.ApiClient");
       ApiClient.executeRequest.implementation = function (request) {
           console.log("[*] Intercepted Request URL: " + request.getUrl());
           console.log("[*] Intercepted Headers: " + request.getHeaders());
           var response = this.executeRequest(request);
           console.log("[*] Intercepted Response: " + response.getBody());
           return response;
       };
   });
   ```
5. Export clean OpenAPI specifications from captured request logs.

## Verification Checklist
- [ ] TLS traffic decrypts cleanly in mitmproxy without handshake errors.
- [ ] Frida attaches to target process and logs invoked methods.
- [ ] Target API request headers and authentication tokens are decoded.
- [ ] Captured payload contracts convert into automated HTTP client tests.
- [ ] No residual debugger or instrumentation artifacts remain in production code.

## Anti-Patterns
- Testing dynamic instrumentation on unrooted host operating systems.
- Trusting client-side validation logic without server protocol inspection.
- Hardcoding expired authentication tokens instead of reverse engineering token exchange.
- Altering binary instructions without creating reproducible Frida scripts.


---
<!-- SKILL MODULE: tech-security-hardening.md -->
# Tech: Security Hardening & Hack-Proofing

## Goal
Ensure all web applications and APIs are resilient against common attack vectors (OWASP Top 10), automated abuse, and data breaches.

---

## Core Engineering Standards

### 1. Web Application Firewall (WAF) & Rate Limiting
- **Edge Protection:** Deploy a WAF (e.g., Vercel Edge WAF, Cloudflare) to block malicious traffic before it hits the application server.
- **Rate Limiting:** Implement strict rate limits on critical routes (e.g., Sign-in, Sign-up, Password Reset, and Web Crawling APIs) to prevent brute-force attacks and DDoS. Use Redis-backed limiters (e.g., `@upstash/ratelimit`).

### 2. Input Validation & Sanitization
- **Strict Typing:** Never trust client data. Validate all incoming API requests and form submissions using schema validation libraries like **Zod**.
- **Sanitization:** Strip dangerous HTML/script tags from user inputs to prevent Stored and Reflected XSS.

### 3. HTTP Security Headers
- **Configuration:** Enforce strict security policies in the server configuration (e.g., `next.config.ts`).
  - `Content-Security-Policy` (CSP) to restrict resource origins.
  - `X-Frame-Options: DENY` to prevent Clickjacking.
  - `Strict-Transport-Security` (HSTS) to enforce HTTPS.
  - `X-Content-Type-Options: nosniff`.

### 4. CSRF & XSS Protection
- **CSRF Tokens:** Use Anti-CSRF tokens for all state-changing mutations if not natively handled by the Auth provider (like Auth.js).
- **React Escaping:** Rely on React's automatic string escaping. Strictly avoid `dangerouslySetInnerHTML` unless absolutely necessary and paired with DOMPurify.

### 5. Frontend Security Analysis & Verification
- **Detailed Frontend Audits:** Continuously analyze and verify the website's frontend security posture in exhaustive detail. Ensure all interactive components (tabs, nav bars, links, forms) securely handle user input without exposing client-side vulnerabilities.
- **Client-Side Validation:** Check that client-side routing, data fetching, and storage mechanisms (e.g., localStorage, cookies) enforce strict security bounds and don't leak sensitive session data.

### 6. Anti-Scraping & Bot Immunity
- **Scraper Proofing:** Protect exposed live domains with robust bot mitigation. Implement Cloudflare Turnstile (invisible CAPTCHA) or reCAPTCHA v3 on all forms and data endpoints.
- **Obfuscation:** For public directories or sensitive content, employ dynamic rendering and rate-limiting to make automated scraping computationally unfeasible.

### 7. Encryption Standards
- **Data at Rest & Transit:** All databases must be encrypted at rest. Enforce TLS 1.3 across the board. Secrets must never be stored in plaintext.


---
<!-- SKILL MODULE: tech-testing-automation.md -->
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


---
<!-- SKILL MODULE: tech-voice-audio-intelligence.md -->
---
name: tech-voice-audio-intelligence
description: Process streaming audio, implement Voice Activity Detection (VAD), chunk audio buffers, and transcribe speech with sub-second latency.
version: 1.0.0
category: audio-engineering
---

# Voice & Audio Streaming Intelligence

## Context
Real-time voice interfaces require low-latency audio capture and streaming inference.
Unsegmented audio streams waste compute and cause transcription lag.
Voice Activity Detection (VAD) and chunked WebAudio pipelines ensure immediate responsiveness.

## Core Rules
1. Capture microphone audio at 16,000 Hz sample rate in mono channel format.
2. Filter silence and background noise using Silero VAD or WebRTC VAD.
3. Slice continuous speech streams into 200ms to 500ms audio chunks.
4. Stream audio buffers over WebSockets using binary Opus or Int16 PCM encoding.
5. Trigger speech-to-text inference immediately when silence exceeds 300 milliseconds.
6. Normalize audio volume levels using dynamic range compression before transcription.

## Implementation Steps
1. Capture and downsample audio using the Web Audio API in JavaScript:
   ```javascript
   const audioContext = new AudioContext({ sampleRate: 16000 });
   const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
   const source = audioContext.createMediaStreamSource(stream);
   const processor = audioContext.createScriptProcessor(4096, 1, 1);

   source.connect(processor);
   processor.connect(audioContext.destination);

   processor.onaudioprocess = (e) => {
       const inputBuffer = e.inputBuffer.getChannelData(0);
       const int16Buffer = convertFloat32ToInt16(inputBuffer);
       socket.send(int16Buffer);
   };

   function convertFloat32ToInt16(float32Array) {
       const int16Array = new Int16Array(float32Array.length);
       for (let i = 0; i < float32Array.length; i++) {
           const s = Math.max(-1, Math.min(1, float32Array[i]));
           int16Array[i] = s < 0 ? s * 0x8000 : s * 0x7FFF;
       }
       return int16Array.buffer;
   }
   ```
2. Segment speech using Silero VAD in Python:
   ```python
   import torch

   vad_model, utils = torch.hub.load(
       repo_or_dir="snakers4/silero-vad",
       model="silero_vad",
       onnx=True
   )
   (get_speech_timestamps, save_audio, read_audio, VADIterator, collect_chunks) = utils

   vad_iterator = VADIterator(vad_model, threshold=0.5, sampling_rate=16000)

   def process_audio_chunk(audio_tensor):
       speech_dict = vad_iterator(audio_tensor, return_seconds=True)
       if speech_dict:
           return speech_dict
       return None
   ```
3. Forward active speech segments to Whisper ASR for streaming inference.

## Verification Checklist
- [ ] Audio inputs record at 16 kHz mono format.
- [ ] Silero VAD accurately separates vocal speech from ambient background noise.
- [ ] End-to-end audio streaming latency remains below 350 milliseconds.
- [ ] Web Audio ScriptProcessor/AudioWorklet executes without dropping audio frames.
- [ ] Silence threshold triggers buffer flush within 300 milliseconds of speech cessation.

## Anti-Patterns
- Streaming raw uncompressed 48 kHz stereo audio over WebSockets.
- Processing entire multi-minute recordings as a single unchunked tensor.
- Relying on simple volume thresholds instead of neural VAD filters.
- Blocking the browser main thread during audio buffer transformations.


---
<!-- SKILL MODULE: tech-wasm-sandboxed-runtime.md -->
---
name: tech-wasm-sandboxed-runtime
description: Execute untrusted code and agent plugins inside WebAssembly sandboxes using Wazero with zero host privilege escalation.
version: 1.0.0
category: runtime-security
---

# WebAssembly Sandboxed Micro-VM Runtime

## Context
Running untrusted code directly on host systems risks remote code execution.
Standard Linux containers impose heavy virtualization startup overhead.
WebAssembly (WASM) micro-VMs provide memory-safe, sub-millisecond sandboxed execution boundaries.

## Core Rules
1. Isolate untrusted execution inside memory-safe WebAssembly runtime sandboxes.
2. Restrict guest filesystem access using explicit virtual directory mappings.
3. Deny network socket creation unless explicitly authorized by host policies.
4. Enforce strict CPU instruction count and execution timeout limits.
5. Prevent host memory leaks by closing WASM runtime modules after execution completes.
6. Communicate across the guest-host boundary via JSON or Protobuf memory buffers.

## Implementation Steps
1. Initialize Wazero runtime in Go:
   ```go
   package main

   import (
       "context"
       "os"
       "github.com/tetratelabs/wazero"
       "github.com/tetratelabs/wazero/imports/wasi_snapshot_preview1"
   )

   func main() {
       ctx := context.Background()
       runtime := wazero.NewRuntime(ctx)
       defer runtime.Close(ctx)

       wasi_snapshot_preview1.MustInstantiate(ctx, runtime)

       wasmBytes, err := os.ReadFile("sandbox_plugin.wasm")
       if err != nil {
           panic(err)
       }

       modConfig := wazero.NewModuleConfig().
           WithStdout(os.Stdout).
           WithStderr(os.Stderr)

       mod, err := runtime.InstantiateWithConfig(ctx, wasmBytes, modConfig)
       if err != nil {
           panic(err)
       }
       defer mod.Close(ctx)
   }
   ```
2. Export callable guest functions and pass memory offsets.
3. Validate memory access boundaries before reading guest linear memory.

## Verification Checklist
- [ ] WASM module executes in an isolated memory address space.
- [ ] Guest execution cannot access host environment variables or file paths.
- [ ] Runtime terminates guest execution if instruction budget exceeds limit.
- [ ] Module teardown releases all allocated host memory.
- [ ] Sandboxed binary startup completes in under 5 milliseconds.

## Anti-Patterns
- Granting unrestricted host filesystem access (`WithFS(os.DirFS("/"))`).
- Omitting instruction limits on untrusted guest loops.
- Passing raw host pointers directly into WASM linear memory.
- Running unverified C/Rust native code without WASM compilation.


---
<!-- SKILL MODULE: tech-webcrypto-passkeys-zkp.md -->
---
name: tech-webcrypto-passkeys-zkp
description: Implement WebCrypto encryption, FIDO2/WebAuthn biometric passkeys, and client-side zero-knowledge proofs for sovereign privacy.
version: 1.0.0
category: cryptography-security
---

# WebCrypto, Passkeys & Zero-Knowledge Verification

## Context
Centralized passwords and cloud-stored private keys invite catastrophic data breaches.
WebAuthn passkeys bind cryptographic credentials directly to local device hardware.
Client-side WebCrypto and Zero-Knowledge Proofs (ZKP) enable authentication without leaking secrets.

## Core Rules
1. Derive cryptographic encryption keys locally using PBKDF2 or Argon2id.
2. Encrypt user payloads client-side using AES-GCM with unique 96-bit initialization vectors.
3. Authenticate users via WebAuthn FIDO2 biometric passkeys instead of passwords.
4. Verify membership or assertions with SnarkJS/Circom zero-knowledge proofs without exposing identifiers.
5. Never transmit plaintext private keys, seed phrases, or unmasked biometric data.
6. Store encrypted keys exclusively in IndexedDB or secure enclave storage.

## Implementation Steps
1. Encrypt text data using the WebCrypto API:
   ```javascript
   export async function encryptPayload(plaintext, rawKey) {
       const iv = crypto.getRandomValues(new Uint8Array(12));
       const encoder = new TextEncoder();
       const encodedText = encoder.encode(plaintext);

       const cryptoKey = await crypto.subtle.importKey(
           "raw",
           rawKey,
           { name: "AES-GCM" },
           false,
           ["encrypt"]
       );

       const ciphertext = await crypto.subtle.encrypt(
           { name: "AES-GCM", iv },
           cryptoKey,
           encodedText
       );

       return { ciphertext: new Uint8Array(ciphertext), iv };
   }
   ```
2. Register WebAuthn passkey credential:
   ```javascript
   const publicKeyOptions = {
       challenge: crypto.getRandomValues(new Uint8Array(32)),
       rp: { name: "Avinya Forge Sovereign Auth", id: window.location.hostname },
       user: {
           id: crypto.getRandomValues(new Uint8Array(16)),
           name: "operator@avinya.local",
           displayName: "Sovereign Operator"
       },
       pubKeyCredParams: [{ alg: -7, type: "public-key" }], // ES256
       authenticatorSelection: { userVerification: "required" },
       timeout: 60000
   };

   const credential = await navigator.credentials.create({ publicKey: publicKeyOptions });
   ```
3. Generate zero-knowledge proof client-side using SnarkJS:
   ```javascript
   import { groth16 } from "snarkjs";

   export async function generateZkProof(inputSignal, wasmPath, zkeyPath) {
       const { proof, publicSignals } = await groth16.fullProve(
           inputSignal,
           wasmPath,
           zkeyPath
       );
       return { proof, publicSignals };
   }
   ```

## Verification Checklist
- [ ] AES-GCM generates a cryptographically random 12-byte IV for every encryption call.
- [ ] Decryption fails cleanly when an invalid IV or altered ciphertext is supplied.
- [ ] WebAuthn credentials register successfully on biometric hardware.
- [ ] Zero-knowledge proof verifies without revealing private input signals.
- [ ] No plaintext cryptographic keys ever enter local storage or logging streams.

## Anti-Patterns
- Reusing the same initialization vector (IV) across multiple AES-GCM operations.
- Storing decrypted cryptographic keys in insecure browser `localStorage`.
- Transmitting raw passwords or recovery seeds over HTTP endpoints.
- Verifying cryptographic proofs solely on the client side without backend challenge verification.


---
<!-- SKILL MODULE: tech-web-scraping-resilience.md -->
# Tech: Web Scraping & Crawler Resilience

## Goal
Build robust, ethical, and highly resilient data-gathering agents capable of bypassing automated bot detection and blocks while respecting target infrastructure.

---

## Core Engineering Standards

### 1. Evasion & Anti-Bot Detection (Stealth)
- **Browser Fingerprinting:** When using headless browsers (Playwright/Puppeteer), utilize stealth plugins (e.g., `puppeteer-extra-plugin-stealth` adapted for Playwright) to mask WebDriver flags, fix navigator properties, and randomize viewport sizes.
- **Human Emulation:** Introduce jitter and randomized delays between actions. Emulate natural mouse movements, scrolling, and typing cadences.

### 2. IP Rotation & Proxy Management
- **Proxy Pools:** Never rely on a single IP address for scraping. Integrate residential or datacenter proxy rotation networks.
- **Session Persistence:** Maintain session stickiness (using the same proxy IP for a single continuous user journey) to avoid triggering security alerts on the target site.
- **Crawlee Integration:** Utilize `Crawlee`'s built-in `ProxyConfiguration` and `SessionPool` to automate proxy rotation and handle retries intelligently.

### 3. Efficiency & Resource Management
- **Protocol-Level Scraping:** Prefer HTTP request-based scraping (e.g., using `fetch` or `cheerio` for parsing HTML) over headless browsers for speed and lower resource consumption, unless JavaScript rendering is explicitly required.
- **Concurrency & Backoff:** Implement intelligent concurrency limits and exponential backoff strategies to handle 429 Too Many Requests errors gracefully.


---
<!-- SKILL MODULE: tech-youtube-social-intelligence.md -->
---
name: tech-youtube-social-intelligence
description: Extract video transcripts, analyze audience retention psychology, optimize 0-3s hooks, and automate short-form video production.
version: 1.0.0
category: media-automation
---

# YouTube Social Intelligence & Viral Optimization

## Context
Short-form platforms demand immediate engagement within the initial 3 seconds.
Viewer drop-off occurs when pacing stalls or visual patterns remain static.
Automated transcript parsing and cognitive retention modeling maximize algorithmic reach.

## Core Rules
1. Deliver the primary thesis or visual punchline within 0 to 3 seconds.
2. Maintain voiceover speech cadence between 150 and 170 words per minute.
3. Trigger visual pattern interrupts every 2.5 to 3.5 seconds.
4. Extract accurate subtitles using Whisper or YouTube transcript APIs.
5. Render dynamic word-level subtitles centered in the lower-middle viewport.
6. Target total duration between 30 and 58 seconds for optimal loop rate.

## Implementation Steps
1. Fetch video transcript via Python:
   ```python
   from youtube_transcript_api import YouTubeTranscriptApi

   def extract_transcript(video_id: str) -> str:
       transcript = YouTubeTranscriptApi.get_transcript(video_id)
       text_chunks = [entry["text"] for entry in transcript]
       return " ".join(text_chunks)
   ```
2. Generate synthetic voiceover with word-level boundaries using Edge-TTS:
   ```bash
   edge-tts --voice en-US-ChristopherNeural --text "This 70B AI runs on an $80 GPU." --write-media out.mp3 --write-subtitles out.vtt
   ```
3. Parse and structure the viral hook script:
   - 0-3s Hook: "Do not buy an expensive cloud GPU."
   - 3-15s Agitation: "70B models usually need $15,000 servers to run."
   - 15-45s Solution: "AirLLM streams layers directly off your SSD."
   - 45-55s Payoff / Call to Action: "Get the open-source pipeline in our bio."
4. Compile vertical video (1080x1920) with FFmpeg:
   ```bash
   ffmpeg -i background.mp4 -i out.mp3 -vf "subtitles=out.vtt:force_style='FontSize=16,Alignment=2'" -c:a aac -shortest short_output.mp4
   ```

## Verification Checklist
- [ ] Transcript captures 100% of spoken words with millisecond timestamps.
- [ ] First hook sentence finishes before the 3.0-second timestamp mark.
- [ ] Speech pacing stays between 150 and 170 words per minute.
- [ ] Aspect ratio is exactly 9:16 (1080x1920 pixels) for vertical players.
- [ ] Dynamic subtitles remain visible and clear on mobile screens.

## Anti-Patterns
- Long introductory logos, greetings, or channel branding.
- Monotone speech cadence without dynamic pitch modulation.
- Video duration exceeding 60 seconds for YouTube Shorts.
- Placing essential subtitles in YouTube UI dead zones (bottom 15% and right 10%).


---
<!-- SKILL MODULE: tool-one-cli.md -->
# Goal
Define and maintain the unified `one.ps1` CLI tool as the central automation script for all repository synchronization, AI skill aggregation, and local deployments.

# Context
To reduce clutter and avoid maintaining disparate bash and PowerShell scripts (e.g., `setup-ai-settings.sh`, `scripts/deploy-local.ps1`), the project uses a single unified PowerShell script located at `ai-skills-repo/one.ps1`. This script is the single entry point for broad repository actions on Windows.

# Guidelines
1. **Single Point of Entry:** Always use `.\one.ps1` for multi-repo actions. 
   - `.\one.ps1 skills -All` updates AI skills across all sibling repositories.
   - `.\one.ps1 deploy -All` initiates local infrastructure redeployment across all sibling repositories.
   - `.\one.ps1 actions -All` optimizes GitHub actions, removing bloat and configuring Dependabot.
2. **Maintain Compatibility:** Ensure that enhancements to local deployment hooks, Cloudflare tunneling, or dependency installations are implemented as updates inside the `Deploy-Local`, `Sync-Skills`, or `Optimize-Actions` functions of `one.ps1`.
3. **Avoid Duplicate Scripts:** Do not create separate `.sh` files or individual `setup-*` scripts. Consolidate logic into `one.ps1` using clean PowerShell parameters and `switch` statements.
4. **Git Safety:** Always ensure that `one.ps1` actions that touch git repos (like fetching/pulling) appropriately handle discarded local changes (e.g., `git clean -fd`, `git reset --hard`) only where intended, and always commit/push updated settings automatically.


---
<!-- SKILL MODULE: ui-apple-design-principles.md -->
---
name: ui-apple-design-principles
description: Apply Apple Human Interface Guidelines (HIG) with San Francisco typography, continuous curvature squircle geometry, and fluid spring animations.
version: 1.0.0
category: frontend-design
---

# Apple Design Principles & HIG Engineering

## Context
Standard web interfaces often appear rigid, flat, or unnatural.
Apple Human Interface Guidelines prioritize clarity, deference, and depth.
Precision typography, physical spring mechanics, and translucent materials elevate user interfaces.

## Core Rules
1. Use San Francisco system font stack with optical sizing.
2. Render rounded corners using continuous curvature squircles (`border-corner-shape` or SVG).
3. Apply translucent vibrancy materials using CSS `backdrop-filter: blur(20px)`.
4. Implement fluid spring animations with zero bounce or damped harmonic motion.
5. Provide high-contrast accessibility compliance exceeding WCAG AAA standards.
6. Support native dark mode transitions seamlessly across all interface surfaces.

## Implementation Steps
1. Configure Apple typography system in CSS / Tailwind:
   ```css
   :root {
       --font-sf: -apple-system, BlinkMacSystemFont, "SF Pro Display", "SF Pro Text", "Helvetica Neue", sans-serif;
       --apple-blur: saturate(180%) blur(20px);
       --apple-bg-translucent: rgba(255, 255, 255, 0.72);
   }
   @media (prefers-color-scheme: dark) {
       :root {
           --apple-bg-translucent: rgba(30, 30, 30, 0.75);
       }
   }
   ```
2. Build translucent vibrancy card with squircle curvature:
   ```html
   <div class="apple-card">
       <h2>Designed in California</h2>
       <p>Intuitively engineered with continuous curves and optical kerning.</p>
   </div>

   <style>
   .apple-card {
       font-family: var(--font-sf);
       background: var(--apple-bg-translucent);
       backdrop-filter: var(--apple-blur);
       -webkit-backdrop-filter: var(--apple-blur);
       border: 0.5px solid rgba(255, 255, 255, 0.2);
       border-radius: 24px;
       box-shadow: 0 8px 32px rgba(0, 0, 0, 0.08);
       padding: 24px;
   }
   </style>
   ```
3. Animate interactions using spring physics (Framer Motion / CSS):
   ```javascript
   const springTransition = {
       type: "spring",
       stiffness: 300,
       damping: 30,
       mass: 0.8
   };
   ```

## Verification Checklist
- [ ] Font rendering uses SF Pro or native system font stack.
- [ ] Frosted glass effect uses `backdrop-filter: blur(20px)` and saturation boost.
- [ ] Border radius contours follow continuous squircle curvature.
- [ ] Hover and click animations follow critically damped spring dynamics.
- [ ] Interface responds immediately to light and dark color scheme shifts.

## Anti-Patterns
- Hard 90-degree corners or circular radii without continuous curves.
- Linear or aggressive overshoot spring transitions.
- Heavy opaque drop shadows instead of subtle multi-stop ambient diffusion.
- Monolithic fonts overriding platform-native optical text sizes.


---
<!-- SKILL MODULE: ui-spatial-webgl-visualization.md -->
---
name: ui-spatial-webgl-visualization
description: Render high-performance 3D spatial scenes, particle systems, and real-time environmental data with WebGL and Three.js at 60 FPS.
version: 1.0.0
category: frontend-spatial
---

# Spatial WebGL & High-Performance 3D Graphics

## Context
Rendering complex geospatial models and dense particle clouds causes browser frame rate drops.
Unoptimized geometry allocations trigger garbage collection pauses and stutter.
Three.js and custom WebGL shaders maintain 60 FPS rendering under heavy data loads.

## Core Rules
1. Maintain consistent 60 frames per second by instancing repeated 3D meshes.
2. Pool and reuse geometry and material buffers rather than creating new allocations in the render loop.
3. Compute particle physics and spatial transformations on the GPU using custom vertex shaders.
4. Scale render resolution adaptively using device pixel ratio throttling on low-power devices.
5. Dispose of WebGL textures, geometries, and materials explicitly when components unmount.
6. Decouple camera animation updates from network payload parsing using Web Workers.

## Implementation Steps
1. Create instanced mesh cluster in Three.js / React Three Fiber:
   ```javascript
   import * as THREE from "three";

   export function createSpatialInstancedMesh(count = 5000) {
       const geometry = new THREE.BoxGeometry(0.5, 0.5, 0.5);
       const material = new THREE.MeshStandardMaterial({ color: 0x38bdf8, roughness: 0.2 });
       const instancedMesh = new THREE.InstancedMesh(geometry, material, count);

       const dummy = new THREE.Object3D();
       for (let i = 0; i < count; i++) {
           dummy.position.set(
               (Math.random() - 0.5) * 50,
               (Math.random() - 0.5) * 50,
               (Math.random() - 0.5) * 50
           );
           dummy.updateMatrix();
           instancedMesh.setMatrixAt(i, dummy.matrix);
       }
       instancedMesh.instanceMatrix.needsUpdate = true;
       return instancedMesh;
   }
   ```
2. Clean up WebGL resources when closing 3D views:
   ```javascript
   export function disposeScene(scene, renderer) {
       scene.traverse((object) => {
           if (object.geometry) object.geometry.dispose();
           if (object.material) {
               if (Array.isArray(object.material)) {
                   object.material.forEach((mat) => mat.dispose());
               } else {
                   object.material.dispose();
               }
           }
       });
       renderer.dispose();
   }
   ```

## Verification Checklist
- [ ] Frame rate remains at 60 FPS during camera movement and rotation.
- [ ] Number of WebGL draw calls stays below 50 per frame.
- [ ] GPU memory utilization remains flat without progressive memory leaks.
- [ ] Scene unmounting releases all GPU textures, geometries, and shaders cleanly.
- [ ] Fallback canvas renders gracefully on devices lacking WebGL2 support.

## Anti-Patterns
- Instantiating individual `Mesh` objects in loops instead of using `InstancedMesh`.
- Creating new `Vector3` or `Matrix4` objects inside the `requestAnimationFrame` loop.
- Omitting explicit resource disposal on route changes or modal dismissals.
- Running intensive physics calculations on the JavaScript main UI thread.


---
<!-- SKILL MODULE: ui-ux-pro-max.md -->
# Skill: UI/UX Pro Max & 21st.dev Magic Server Design Intelligence

## Goal
Provide enterprise-grade UI/UX design intelligence, automated design system generation, product-specific reasoning rules, searchable style taxonomy, color palette matching, typography pairings, and 21st.dev MCP component discovery across web, mobile, and desktop applications.

---

## Core Capabilities & Features

### 1. Intelligent Design System Generator (v2.0 Reasoning Engine)
- **Multi-Domain Synthesis:** Automatically analyzes project briefs and generates a complete, tailored design system (`design-system/MASTER.md`) in seconds.
- **192 Product Categories:** Industry-specific reasoning rules for Tech/SaaS, Fintech/Crypto, Healthcare, E-Commerce, Services, Creative Portfolios, and Emerging Tech (Web3/AI).
- **Master + Overrides Pattern:** Saves a global `design-system/MASTER.md` source of truth along with optional page-specific override files (`design-system/pages/<page-name>.md`) for complex applications.

### 2. 192 Industry-Specific Reasoning Rules & Anti-Pattern Filtering
- **Domain Matching:** Automatically aligns color moods, typography personalities, and landing page patterns to the target industry.
- **Anti-Pattern Elimination:** Strictly filters out inappropriate UI choices (e.g. prohibiting generic "AI purple/pink gradients" or festive bright neon schemes in institutional banking or medical software).

### 3. 79 Searchable UI Styles (50 Active Set)
- **Visual Taxonomy:** Glassmorphism, Claymorphism, Minimalism, Brutalism, Neumorphism, Bento Grid, Dark Mode, AI-Native UI, Soft UI Evolution, Modern SaaS, Fluent 2, Shopify Polaris, Adobe Spectrum, and more.
- **BM25 Search Engine:** Built-in Python BM25 search engine matches user intent to curated visual styles, 192 color palettes, and 74 Google Font pairings.

### 4. Premium & Production-Ready Design Principles (Apple-Inspired)
- **Premium Typography & Text Formats:** Use variable fonts (e.g., SF Pro, Inter, Roboto Flex), fluid typography, and optical sizing. Apply precise line-heights and tracking adjustments. Utilize `text-wrap: balance` for headings and `text-wrap: pretty` for long-form content to ensure a premium reading experience. Keep font sizes simple and optimized for legibility.
- **Lightweight & Simple Layouts:** Maximize screen real estate with edge-to-edge designs and modern bento grids. Better fit pages on the screen without unnecessary scrolling. Employ generous macro and micro whitespace to avoid clutter and let the content breathe. Maintain an ultra-minimalist, purposeful, and incredibly lightweight architectural structure to mitigate frontend performance bottlenecks.
- **Animations & Micro-interactions:** Implement silky-smooth, physics-based (spring) animations. Optimize all animations to be hardware-accelerated (e.g., using `transform` and `opacity`) ensuring high performance without frame drops. Use scroll-triggered reveals. Motion should feel natural, responsive, and never abrupt.
- **Visual Language & Depth:** Apply subtle glassmorphism (backdrop blurs), soft deep shadows for elevation, and 1px low-opacity borders (e.g., `border-white/10` or `border-black/5`). Strive for a premium, high-quality finish matching the latest industry aesthetics.

### 5. Rigorous UI Audit & Flaw Resolution Protocol
Transform legacy or basic UIs into highly attractive, production-ready makeovers by thoroughly and rigorously auditing minute details across the entire frontend:
- **Proactive UI Bug Hunting:** Actively hunt for hidden, unknown, or edge-case UI/UX issues that might not be immediately obvious. Ensure the design is truly production-ready without layout shifts, overflow bugs, or broken states.
- **Comprehensive Element Inspection & Headroom Management:** Meticulously check each tab, navigation bar menu, page, and individual link. To maintain efficient context headroom, chunk large pages and analyze them component-by-component. Ensure all interactive states (hover, focus, active) are consistent and visually appealing.
- **Orientation & Layout Validation:** Check the orientation and alignment for each card, list item, and media container. Verify that items scale and fit perfectly on the screen across all viewports.
- **Visual Clutter Analysis:** Identify and remove unnecessary dividers, borders, and backgrounds. Replace with whitespace and structural alignment to ensure the UI feels completely unburdened.
- **Spacing & Alignment Check:** Enforce strict adherence to a 4px/8px spatial grid system. Resolve inconsistent paddings, margins, and off-by-one pixel errors to guarantee pixel-perfect execution.
- **Typography & Hierarchy Review:** Ensure correct font weight scaling and simple, legible font sizes. Check color contrast for primary, secondary, and tertiary text layers to establish a clear visual hierarchy.
- **Premium Makeover Transformation:** Upgrade the overall attractiveness by integrating the premium design principles, ensuring a polished, deeply scrutinized, modern, and high-end feel that solves all existing visual flaws.

### 6. Design Taste & Aesthetics Skill
- **Cultivating Premium Taste:** Exercise high visual judgment by curating sophisticated, cohesive color palettes and refined typography pairings.
- **Anti-AI-Slop Principle:** Strictly avoid generic, over-designed, or cluttered visual elements. Prioritize elegance, subtlety, and modern taste over loud, aggressive gradients or disjointed themes.

### 7. Modern UI Techniques & State Management
- **Loading & Skeleton Templates:** Implement skeleton screen loaders (shimmer effects) for data-fetching states to reduce perceived latency and prevent jarring layout shifts.
- **Error & Empty States:** Ensure resilient, beautifully designed fallback states (e.g., "Network Not Available", 404, 500 errors). Always provide polished empty state templates for grids, lists, and dashboards that clearly guide user next steps.
- **Basic Templates Availability:** Maintain an accessible library of essential, premium layout templates (dashboards, auth screens, settings) to establish a strong architectural foundation instantly.

### 8. 21st.dev Magic Server Integration (MCP)
- **Real-Time Component Discovery:** Seamlessly connects to the 21st.dev MCP endpoint (`https://21st.dev/api/mcp`) for discovering production-ready React/Tailwind magic UI components, animated buttons, hero sections, and interactive cards.
- **Header Authentication:** Configures `x-api-key` header (supported via `TWENTYFIRST_API_KEY` environment variable).

---

## Installation & CLI Setup

### Assistant Initialization Commands
```bash
# Install CLI globally or execute via npx
npm install -g ui-ux-pro-max-cli

# Initialize across AI assistants
uipro init --ai all
# or for universal agents:
uipro init --ai universal
```

### Direct Search & Design System Commands
```bash
# Generate design system with ASCII or Markdown output
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "SaaS dashboard" --design-system -p "MyProduct" -f markdown

# Persist to design-system/MASTER.md
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "fintech banking" --design-system --persist -p "MyApp"

# Search by domain or stack
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "glassmorphism" --domain style
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "form validation" --stack react
```

---

## Pre-Delivery Verification Checklist

Enforce this checklist before finalizing any generated UI or layout:
- [ ] **No Emojis as Icons:** Replace all emoji icons with standard SVG iconography (Lucide, Heroicons, Phosphor).
- [ ] **Clickable Indicators:** Ensure explicit `cursor-pointer` on all interactive chips, buttons, and rows.
- [ ] **WCAG 2.1 AA Compliance:** Minimum 4.5:1 text contrast ratio for body text; visible focus rings for keyboard navigation.
- [ ] **Resilient Text & Line Balancing:** Apply `text-wrap: balance` for headings; ensure badges, chips, and tags reflow without text clipping or overflow across breakpoints (375px, 768px, 1024px, 1440px).
- [ ] **Premium Typography Scaling:** Verify fluid typography scales correctly across mobile and desktop.
- [ ] **Pixel-Perfect Alignment:** Confirm strict adherence to the spatial grid and ensure consistent border radii across all elements.
- [ ] **Silky-Smooth Performance:** Verify scroll performance and ensure animations/transitions are hardware-accelerated, natural, and not jarring.
- [ ] **Reduced Motion Support:** Respect `prefers-reduced-motion` and ensure micro-interactions fail safely during rapid user input.




---
<!-- SKILL MODULE: workflow-local-deployment.md -->
# Goal
Define a reliable, zero-touch autonomous local deployment workflow that automatically builds, redeploys, and exposes local instances of the application whenever new code is pulled from the remote repository or pushed to it.

# Context
Local environments can quickly become out-of-sync with the remote codebase. To maintain an uninterrupted workflow, projects must leverage the unified `one.ps1` CLI tool (e.g., `.\one.ps1 deploy -All`) that executes automatically without repeated prompting. Furthermore, the user prefers lightweight local deployments using Rancher Desktop or bare-metal localhost over heavy Docker installations, and wants local services securely exposed via Cloudflare Tunnels with custom domains (e.g., `vishwavani.app`).

# Guidelines
1. **Automated Hooking Framework:** Every repository is managed by the unified `one.ps1` script at the root of `ai-skills-repo`. By running `.\one.ps1 deploy -All`, it handles the end-to-end local build and deployment across all repositories.
2. **Lightweight Containerization (Rancher Desktop):** Avoid heavy Docker Desktop installations. Prefer Rancher Desktop (using `nerdctl` or its lightweight docker socket) for containerized deployments. Alternatively, run the application directly on localhost (bare-metal) using native runtimes (`uv`, `npm`, `go run`).
3. **Local Domain Resolution:** Configure custom local domains (e.g., `vishwavani.app`) for testing. Automatically update the local `hosts` file (`C:\Windows\System32\drivers\etc\hosts`) or use a local reverse proxy (like Caddy) to route traffic to the correct local port seamlessly.
4. **Cloudflare Tunnel Integration:** Hook up the local environment to Cloudflare using `cloudflared`. The deployment script should automatically establish a Cloudflare tunnel so the local application can be securely accessed, tested, and webhook-integrated from anywhere.
5. **Dependency & Infrastructure Sync:** The automated script must run package managers (`npm install`, `uv sync`, `go mod tidy`) if lockfiles change, and reset/migrate local databases to prevent schema drift.
6. **Readiness Checks:** The deployment script must explicitly verify `/healthz` or basic root endpoints to confirm successful startup before yielding control back to the user or agent.


---
<!-- SKILL MODULE: workflow-memory-and-context.md -->
# Workflow: Memory Builder & Token Headroom Optimization

## Goal
Manage context window headroom efficiently, reduce token consumption while maximizing signal-to-noise ratio, record structured learnings across iterations, and ensure sustainable long-horizon autonomous task execution.

---

## Protocols for Token Optimization & Headroom

### 1. Context Pruning & High-Signal Loading
- **Load Minimum Necessary Scope:** When reading files or logs, inspect targeted file regions or lines first rather than dumping full repository contents.
- **Selective Skill Invocation:** Apply only the skills directly applicable to the task at hand to maximize available context headroom for code generation and testing.
- **Concise Diagnostic Summaries:** In error logs and status reports, summarize relevant tracebacks rather than duplicating hundreds of lines of repetitive stack traces.

### 2. Structured Memory Building (`initiate_memory_recording`)
- **When to Record Memory:**
  - After discovering repository-specific architectural rules or non-obvious setup requirements.
  - After identifying recurring test commands or build scripts.
  - After resolving tricky bugs or establishing project conventions.
- **Format of Recorded Memories:**
  - Keep memories concise, factual, and actionable.
  - Focus on *why* decisions were made and *how* tools/pipelines operate.

### 3. Positive Token Usage (Signal-Dense Output)
- **Direct & Actionable Responses:** Avoid generic pleasantries or verbose conversational fluff. Focus outputs on clear technical reasoning, exact diffs, and verification steps.
- **Structured Code Diffs:** Use precise git merge diffs or block updates rather than rewriting entire un-impacted files.


---
<!-- SKILL MODULE: workflow-spec-driven-implementation.md -->
# Skill: End-to-End Feature Execution Engine & Specification-Driven Implementation

## Trigger
Engaged automatically when the user prompts `"start implementation"`, `"build feature"`, `"execute backlog"`, or when running in autonomous loop mode (`skills/loop-engineering.md`).

---

## Objective
Provide an immutable, 8-stage execution engine for delivering features end-to-end. Every feature selected must take the software one concrete step closer to the overall project vision (`vision.md`). The engine moves rigorously from vision alignment and design thinking/spikes to architectural design (HLD/LLD), granular task decomposition, iterative implementation, test creation, code refactoring/optimization, integration auditing, OWASP security checks, and single-source-of-truth documentation synchronization before advancing to the next feature.

---

## The 8-Stage Feature Execution Lifecycle

```
 â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
 â”‚                   8-STAGE FEATURE EXECUTION ENGINE                     â”‚
 â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
  [STAGE 1: VISION TRIANGULATION & FEATURE SELECTION] â”€â”€â–º Compare vision vs backlog; expand vision.
            â”‚
            â–¼
  [STAGE 2: FEATURE VALIDATION & DESIGN THINKING / SPIKE]â”€â”€â–º Run feasibility analysis & Design Thinking.
            â”‚
            â–¼
  [STAGE 3: HLD & LLD ARCHITECTURE & GRANULAR DECOMPOSITION]â–º High/Low-Level Design & sub-tasking.
            â”‚
            â–¼
  [STAGE 4: ITERATIVE IMPLEMENTATION & REFACTORED CODE]  â”€â”€â–º Write clean code; refactor/optimize.
            â”‚
            â–¼
  [STAGE 5: VERIFICATION & AUTOMATED UNIT/INT TESTS]     â”€â”€â–º Unit, integration & regression tests.
            â”‚
            â–¼
  [STAGE 6: SYSTEM INTEGRATION AUDIT]                    â”€â”€â–º Verify integration with existing software.
            â”‚
            â–¼
  [STAGE 7: BUG HUNT & SECURITY AUDIT]                   â”€â”€â–º OWASP check, race condition & bug hunting.
            â”‚
            â–¼
  [STAGE 8: SSOT SYNC & AUTONOMOUS TRANSITION]            â”€â”€â–º Measure `git diff --shortstat`, update docs,
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
2. **Physical Execution:** Run `npm test`, `pytest`, `go test`, or relevant test command in the environment. Verify all tests pass physicallyâ€”never hallucinate test results.
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


