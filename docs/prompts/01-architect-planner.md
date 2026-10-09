# 01. Architect & Planner Phase

**Use Case:** Run this prompt when starting a new milestone, hunting for bugs, or when the backlog is empty.

**Instructions for AI Agent:**
1. **Initialization:** Load AGENTS.md and adopt the **Critical Reviewer & System Auditor** persona.
2. **Audit:** Review the current codebase state, README.md, and ision.md.
3. **Agent Reach:** Evaluate cross-repository dependencies. Identify if changes here require sister-repo updates.
4. **Security Check:** Ensure no existing code violates OWASP standards or hardcodes secrets.
5. **Output:** Curate and rewrite acklog.md. Break down large epics into granular, secure, measurable tasks. 
6. **Stop:** Do not write application code yet. Await human review or seamlessly transition to the Developer Loop.
