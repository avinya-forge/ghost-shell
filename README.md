# 👻🐚 GhostShell: The Distributed Local AI Node

**GhostShell** is a minimalist, high-performance architecture for local AI coding. It decouples the "Processing" (The Ghost) from the "Workspace" (The Shell).

---

## ⚡ Setup Sequence

> [!IMPORTANT]  
> Always **Run as Administrator** to allow the Ghost to strip Windows services and optimize RAM.

### 1. Invoke THE GHOST (The Server Node)
On your most powerful machine:
- **CLI**: `powershell -ExecutionPolicy Bypass -File .\GhostShell.ps1 -Role Ghost`
- **Manual**: Right-Click -> Run with PowerShell -> Select **1 (Ghost)**.

### 2. Enter THE SHELL (The Client Node)
On your primary coding workstation:
- **CLI**: `powershell -ExecutionPolicy Bypass -File .\GhostShell.ps1 -Role Shell`
- **Manual**: Run -> Select **2 (Shell)** -> Enter Ghost IP.

### 3. Connect & Code
Open VS Code on the Shell and begin prompt-based coding. All the heavy lifting is handled by the Ghost.

---

## 🔍 Verification
Run this on the Ghost Node to verify it's active:
```powershell
Invoke-RestMethod http://localhost:11434/api/tags
```

## 🛡️ Ghost-Sentinel
Hidden background job that:
- Monitors RAM usage ($usage > 95%).
- Kills runaway background processes every 60s.
- Resets the engine if critical memory levels are reached to prevent OS hangs.

**Privacy. Performance. Persistence.**
