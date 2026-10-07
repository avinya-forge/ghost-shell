# Goal
Define and maintain the unified `one.ps1` CLI tool as the central automation script for all repository synchronization, AI skill aggregation, and local deployments.

# Context
To reduce clutter and avoid maintaining disparate bash and PowerShell scripts (e.g., `setup-ai-settings.sh`, `scripts/deploy-local.ps1`), the project uses a single unified PowerShell script located at `ai-skills-repo/one.ps1`. This script is the single entry point for broad repository actions on Windows.

# Guidelines
1. **Single Point of Entry:** Always use `.\one.ps1` for multi-repo actions. 
   - `.\one.ps1 skills -All` updates AI skills across all sibling repositories.
   - `.\one.ps1 deploy -All` initiates local infrastructure redeployment across all sibling repositories.
   - `.\one.ps1 actions -All` optimizes GitHub actions, removing bloat and configuring Dependabot.
2. **Maintain Compatibility:** Ensure that enhancements to local deployment hooks, Cloudflare tunneling, or dependency installations are implemented as updates inside the `Deploy-Local`, `Sync-Skills`, or `Optimize-Actions` functions of `one.ps1`.
3. **Avoid Duplicate Scripts:** Do not create separate `.sh` files or individual `setup-*` scripts. Consolidate logic into `one.ps1` using clean PowerShell parameters and `switch` statements.
4. **Git Safety:** Always ensure that `one.ps1` actions that touch git repos (like fetching/pulling) appropriately handle discarded local changes (e.g., `git clean -fd`, `git reset --hard`) only where intended, and always commit/push updated settings automatically.
