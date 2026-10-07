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
