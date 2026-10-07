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
