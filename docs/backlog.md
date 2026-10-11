# GhostShell Backlog

## 🌌 6–8 Month Strategic Roadmap & Horizon Plan

| Horizon | Core Strategic Milestone | Lead Focus | Key Deliverables |
|:---:|:---|:---|:---|
| **Month 1–2** | **Core Stability & Security Hardening** | Sandboxing & Process Isolation | Docker daemon health auto-recovery, sanitized CLI argument parsing, strict `OLLAMA_ORIGINS` scoping |
| **Month 3–4** | **Distributed Ghost-Shell Node Decoupling** | Networking & Remote Inference | Zero-tier WireGuard tunnel between Ghost (GPU box) and Shell (laptop), automated mDNS handshake |
| **Month 5–6** | **Agentic Tooling & Multi-Model Routing** | Autonomous Agent Integration | OpenHands / OpenWebUI zero-touch bootstrap, dynamic model parameter routing via `models.txt` |
| **Month 7–8** | **Cross-Platform Pervasiveness & Watchdog Telemetry** | Multi-OS Shell & Watchdog | Native Linux/macOS bash runner parity, continuous CPU/VRAM telemetry dashboard, automated log rotation |

---

## 📅 Active Epics & Tasks

## Epic: Core Stability & Resilience
- [ ] Task: Implement robust error handling and fallback logic for Docker connectivity checks in `GhostShell.ps1`.
- [ ] Task: Ensure cross-platform compatibility checks before executing Windows-specific PowerShell commands (WMI, Registry).
- [ ] Task: Implement automated recovery loop for stalled Ollama daemon processes.
- [ ] Task: Add disk space pre-flight check before pulling multi-gigabyte GGUF models.

## Epic: Security & Hardening
- [ ] Task: Review and sanitize all dynamically constructed CLI arguments (e.g. `docker run`, `ollama pull`) to prevent command injection.
- [ ] Task: Harden network firewall rules to scope down `OLLAMA_ORIGINS` dynamically instead of using `*`.
- [ ] Task: Audit surgical cleanup process to ensure `Stop-Process` is not abusable and properly targets non-system processes.
- [ ] Task: Enforce API token authentication on all exposed Ollama and OpenWebUI endpoints.

## Epic: Advanced Agentic Features
- [ ] Task: Expand `models.txt` processing to support parameter injection and dynamic tool routing per model.
- [ ] Task: Improve OpenHands UI automation to eliminate the need for manual LLM URL configuration.
- [ ] Task: Integrate automated context headroom monitoring for long-running reasoning agent loops.
- [ ] Task: Add MCP (Model Context Protocol) local proxy bridge for tool calls to system files.

## Epic: Observability & Logging
- [ ] Task: Implement a persistent log file (`ghostshell.log`) for historical debugging of Sentinel watchdog cycles.
- [ ] Task: Add verbose debug flag to `GhostShell.ps1` for troubleshooting deployment issues.
- [ ] Task: Check upstream updates or breaking changes in dependent projects (Ollama, OpenWebUI, OpenHands, OpenClaw) and track in release notes.
- [ ] Task: Build lightweight web dashboard to monitor local GPU VRAM utilization and temperature in real-time.

## Epic: Cross-Platform Node Decoupling (Months 5–8)
- [ ] Task: Author POSIX-compliant `ghostshell.sh` providing 100% feature parity on Linux / macOS.
- [ ] Task: Implement encrypted TLS reverse-tunnel connecting remote Shell client to home Ghost server.
- [ ] Task: Create one-line installer curl script for new Ghost nodes (`curl -fsSL ... | bash`).
