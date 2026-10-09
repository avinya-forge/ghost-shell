# Backlog

## Epic: Core Stability & Resilience
- [ ] Task: Implement robust error handling and fallback logic for Docker connectivity checks in `GhostShell.ps1`.
- [ ] Task: Ensure cross-platform compatibility checks before executing Windows-specific PowerShell commands (WMI, Registry).

## Epic: Security & Hardening
- [ ] Task: Review and sanitize all dynamically constructed CLI arguments (e.g. `docker run`, `ollama pull`) to prevent command injection.
- [ ] Task: Harden network firewall rules to scope down `OLLAMA_ORIGINS` dynamically instead of using `*`.
- [ ] Task: Audit surgical cleanup process to ensure `Stop-Process` is not abusable and properly targets non-system processes.

## Epic: Advanced Agentic Features
- [ ] Task: Expand `models.txt` processing to support parameter injection and dynamic tool routing per model.
- [ ] Task: Improve OpenHands UI automation to eliminate the need for manual LLM URL configuration.

## Epic: Observability & Logging
- [ ] Task: Implement a persistent log file (`ghostshell.log`) for historical debugging of Sentinel watchdog cycles.
- [ ] Task: Add verbose debug flag to `GhostShell.ps1` for troubleshooting deployment issues.
- [ ] Task: Check upstream updates or breaking changes in dependent projects (Ollama, OpenWebUI, OpenHands, OpenClaw) and track in release notes.
