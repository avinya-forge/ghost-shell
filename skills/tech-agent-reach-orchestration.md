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
