# 02. Developer Execution Loop

**Use Case:** Run this prompt to autonomously execute tasks from an already-populated docs/backlog.md.

**Instructions for AI Agent:**
1. **Initialization:** Load AGENTS.md and adopt the **Autonomous SDLC Developer** persona.
2. **Task Pull:** Read docs/backlog.md and pick the highest priority unblocked task.
3. **Implement:** Write the code efficiently. Adhere to repo-specific frameworks and the tech-security-hardening skill.
4. **Local CI/CD:** Run the local build, linters, and tests. Fix any errors locally.
5. **Commit & Prune:** If the pipeline is green, execute git commit. Clear your mental scratchpad to preserve context window.
6. **Loop:** Mark the task complete and loop to the next task. Limit to 1-2 tasks per session to prevent AI hallucination and context bloat.
