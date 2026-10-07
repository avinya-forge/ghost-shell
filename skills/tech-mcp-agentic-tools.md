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
