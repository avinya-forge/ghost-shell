---
name: memory-binder
description: Scan codebase to map architecture, dependencies, and standards, then store context in .agents/memory-state.json to load state across consecutive sessions.
---

# Memory Binder Workflow

This skill scans the project to build a context state map and serializes it to disk. This ensures continuity between Agent sessions.

## 1. Context Scanning
Review the following areas of the codebase:
- **Architecture**: Parse `docs/blueprint.md` or `docs/vision.md` to understand high-level structural constraints.
- **Standards**: Extract active standards from `.agents/rules/code-style-guide.md` and `docs/standards.md`.
- **Dependencies**: Note major dependencies from `package.json` (Next.js version, React, etc.).
- **Sprint Goal**: Identify the current Epic/Sprint from `docs/backlog.md`.

## 2. State Mapping
Construct a JSON map with the following structure:
```json
{
  "last_updated": "YYYY-MM-DDTHH:mm:ssZ",
  "project": "Vishwa-Vani",
  "architecture": {
    "framework": "Next.js 16, React 19",
    "patterns": ["Server Components", "Tailwind 4", "SQLite WASM"]
  },
  "current_sprint": {
    "priority_gate": "STABILITY GATE - EPIC 7",
    "active_tasks": []
  },
  "memory_pointers": {
    "rules": ".agents/rules/code-style-guide.md",
    "backlog": "docs/backlog.md"
  }
}
```

## 3. Serialization
Save the generated JSON state to `.agents/memory-state.json`.

## 4. Loader
On the next session startup, if `.agents/memory-state.json` exists, load it into context to re-align immediately with the active Sprint goals.
