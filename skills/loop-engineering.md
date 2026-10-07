# Skill: Loop Engineering & Autonomous Execution Velocity

## Goal
Transform AI agent execution from single-task, low-yield responses into sustained, high-throughput engineering loops. Loop Engineering enables AI agents (including Jules, Gemini, Antigravity, and Claude Code) to autonomously measure work done, batch backlog items, execute, test, verify, and document multi-task packages within a single session, fully utilizing session capacity without halting prematurely or producing superficial edits.

---

## 📊 Work Measurement & Session Yield Protocol

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
- **PR Scope Target:** Process 2 to 4 logically connected backlog items per PR session or reach a target diff volume of approximately 200–500 lines of functional code and tests.
- **Atomic Progress within Session:** Execute each backlog item in discrete, self-contained implementation + test steps while keeping the outer loop running continuously.

### 2. The Loop Engineering State Machine
The agent operates continuously across 6 deterministic loop states:

```
┌────────────────────────────────────────────────────────────────────────┐
│                        LOOP ENGINEERING FSM                             │
└────────────────────────────────────────────────────────────────────────┘
 [STATE 0: SCAN & BATCH] ──► Inspect vision.md & backlog.md; select 2-4 items.
           │
           ▼
 [STATE 1: SPEC & PLAN]  ──► Run light Spec Kit breakdown (Specify -> Plan -> Tasks).
           │
           ▼
 [STATE 2: IMPLEMENT]    ──► Write robust code adhering to architecture & standards.
           │
           ▼
 [STATE 3: TEST & AUDIT] ──► Execute local tests & static checks; run bug hunt.
           │                     ├─► Fail 3x? Apply Circuit Breaker -> Tag & Pivot.
           │                     └─► Pass? Proceed to State 4.
           ▼
 [STATE 4: MEASURE & SYNC]──► Run `git diff --shortstat`; update backlog.md & release-notes.md.
           │                     ├─► Yield threshold met OR backlog empty? Ready PR.
           │                     └─► Yield below threshold & tasks remain?
           │                         Self-prompt -> Return to STATE 0.
           ▼
 [STATE 5: COMMIT & PR]  ──► Package comprehensive PR with detailed summary & diffs.
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

