# Goal
Define a reliable, zero-touch autonomous local deployment workflow that automatically builds, redeploys, and exposes local instances of the application whenever new code is pulled from the remote repository or pushed to it.

# Context
Local environments can quickly become out-of-sync with the remote codebase. To maintain an uninterrupted workflow, projects must leverage the unified `one.ps1` CLI tool (e.g., `.\one.ps1 deploy -All`) that executes automatically without repeated prompting. Furthermore, the user prefers lightweight local deployments using Rancher Desktop or bare-metal localhost over heavy Docker installations, and wants local services securely exposed via Cloudflare Tunnels with custom domains (e.g., `vishwavani.app`).

# Guidelines
1. **Automated Hooking Framework:** Every repository is managed by the unified `one.ps1` script at the root of `ai-skills-repo`. By running `.\one.ps1 deploy -All`, it handles the end-to-end local build and deployment across all repositories.
2. **Lightweight Containerization (Rancher Desktop):** Avoid heavy Docker Desktop installations. Prefer Rancher Desktop (using `nerdctl` or its lightweight docker socket) for containerized deployments. Alternatively, run the application directly on localhost (bare-metal) using native runtimes (`uv`, `npm`, `go run`).
3. **Local Domain Resolution:** Configure custom local domains (e.g., `vishwavani.app`) for testing. Automatically update the local `hosts` file (`C:\Windows\System32\drivers\etc\hosts`) or use a local reverse proxy (like Caddy) to route traffic to the correct local port seamlessly.
4. **Cloudflare Tunnel Integration:** Hook up the local environment to Cloudflare using `cloudflared`. The deployment script should automatically establish a Cloudflare tunnel so the local application can be securely accessed, tested, and webhook-integrated from anywhere.
5. **Dependency & Infrastructure Sync:** The automated script must run package managers (`npm install`, `uv sync`, `go mod tidy`) if lockfiles change, and reset/migrate local databases to prevent schema drift.
6. **Readiness Checks:** The deployment script must explicitly verify `/healthz` or basic root endpoints to confirm successful startup before yielding control back to the user or agent.
