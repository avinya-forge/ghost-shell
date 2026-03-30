<#
.SYNOPSIS
    GHOST-SHELL: The Elite Distributed AI Node Manager.
    Refactored for 'Essentials-Only' deployment with Global Access.
#>

Param(
    [Parameter(Mandatory=$false)]
    [ValidateSet("Ghost", "Shell")]
    [string]$Role,

    [Parameter(Mandatory=$false)]
    [string]$GhostAddress = "c3po"
)

# --- UTILITIES ---
function Write-Log ($msg, $color="Cyan") { Write-Host "[$(Get-Date -Format 'HH:mm:ss')] $msg" -ForegroundColor $color }

function Assert-Admin {
    $isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    if (-not $isAdmin) {
        Write-Log "`n[!] WARNING: Not running as Administrator." "Yellow"
        Write-Log "[!] Deep optimizations and process termination may fail." "Yellow"
        Write-Log "[!] Please restart PowerShell as Administrator for full performance.`n" "Yellow"
        Start-Sleep -Seconds 2
    }
}

# --- THE GHOST (SERVER) ---
function Start-GhostNode {
    $machineName = hostname
    if ($machineName -match "c3po" -eq $false) {
        Write-Log "`n[!] ATTENTION: This node is typically configured as a SHELL." "Yellow"
        $confirm = Read-Host "Are you sure you want to run GHOST on this machine? (y/n)"
        if ($confirm -ne "y") { return }
    }

    Write-Log "### INITIALIZING C3PO NODE (SERVER) ###"
    $ollama = "$env:LOCALAPPDATA\Programs\Ollama\ollama.exe"
    if (!(Test-Path $ollama)) { 
        Write-Log "[!] CRITICAL: Ollama not found at $ollama. Install from ollama.com" "Red"
        return 
    }

    Write-Log "Configuring Ghost Network & Firewall..." "Yellow"
    $env:OLLAMA_HOST = "0.0.0.0"
    $env:OLLAMA_ORIGINS = "*" # ALLOW EXTERNAL WEB APPS (Like GitHub Pages) TO CONNECT
    New-NetFirewallRule -DisplayName "GhostShell Ollama" -Direction Inbound -LocalPort 11434 -Protocol TCP -Action Allow -ErrorAction SilentlyContinue | Out-Null
    New-NetFirewallRule -DisplayName "GhostShell WebUI" -Direction Inbound -LocalPort 3000 -Protocol TCP -Action Allow -ErrorAction SilentlyContinue | Out-Null

    Write-Log "Starting Ghost Engine..." "Gray"
    Start-Process $ollama -ArgumentList "serve" -WindowStyle Hidden -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 5

    Write-Log "Synchronizing Mental Models (Thinking & Coding Expert)..." "Yellow"
    # MODELS: deepseek-r1 for thinking/planning, qwen2.5-coder for best-in-class coding
    $models = @("qwen2.5-coder:7b", "qwen2.5-coder:1.5b", "deepseek-r1:7b", "llama3.1:8b", "nomic-embed-text")
    foreach ($m in $models) {
        Write-Log "Syncing: $m..." "Gray"
        & $ollama pull $m | Out-Null
    }
    
    $optConfirm = Read-Host "`nDo you want to run the AI-Driven Process Optimization to free RAM? (y/n)"
    if ($optConfirm -match "^[yY]$") {
        Write-Log "Executing AI-Driven Optimization & Diagnostic..." "Yellow"
        $procs = Get-Process | Select-Object -ExpandProperty Name -Unique | Sort-Object | Out-String
        $prompt = "You are the GhostShell Performance Agent. Analyze this list of Windows processes and identify NON-ESSENTIAL bloatware (Social, Cloud, Gaming, Telemetry) that should be killed to prioritize RAM for AI. Return ONLY a comma-separated list of process names (lowercase), no explanation. CRITICAL: DO NOT include core system processes. Processes: $procs"
        
        try {
            $body = @{ model = "qwen2.5-coder:1.5b"; prompt = $prompt; stream = $false } | ConvertTo-Json
            $response = Invoke-RestMethod -Method Post -Uri "http://localhost:11434/api/generate" -Body $body -ContentType "application/json"
            
            Write-Log "[+] AI Test Passed! Inference Engine is fully operational." "Cyan"
            
            $killList = $response.response.Trim().Split(",")
            Write-Log "Ghost identified $($killList.Count) targets for termination." "Green"
            foreach ($target in $killList) {
                $t = $target.Trim().ToLower()
                # ROBUST SKIP LIST: Protects the agent (Antigravity), IDE (VS Code), and core dev tools
                $skip = "powershell|ollama|explorer|conhost|svchost|system|idle|init|taskhost|winlogon|csrss|lsass|smss|services|dwm|wlanext|fontdrvhost|searchui|sihost|memory compression|registry|ctfmon|dllhost|com-surrogate|spoolsv|runtimebroker|wmiprvse|searchindexer|securityhealthservice|smartscreen|docker.*|wsl.*|antigravity.*|node.*|code.*|git.*|electron.*|npm.*"
                if ($t -and ($t -notmatch $skip)) {
                    Write-Log "Terminating: $t" "Gray"
                    Get-Process -Name $t -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
                }
            }
        } catch {
            Write-Log "Meta-optimization failed. Using hardcoded deep-strip." "Red"
            $hardcoded = @("WhatsApp", "OneDrive", "Teams", "Surfshark", "Cortana", "XboxGameBar")
            foreach($h in $hardcoded) { Get-Process -Name $h -ErrorAction SilentlyContinue | Stop-Process -Force }
        }
    } else {
        Write-Log "Skipping Process Optimization. Existing processes left as they are." "Gray"
    }

    # Sentinel Job
    Start-Job -Name "GhostSentinel" -ScriptBlock {
        while ($true) {
            $os = Get-CimInstance Win32_OperatingSystem
            if ((100 - ($os.FreePhysicalMemory / $os.TotalVisibleMemorySize * 100)) -gt 96) { 
                [System.GC]::Collect() # Reclaim memory gracefully instead of hanging OS
            }
            Start-Sleep -Seconds 60
        }
    }
    
    # Force refresh environment variables in current session
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
    $hasDocker = [bool](Get-Command docker -ErrorAction SilentlyContinue)

    if (-not $hasDocker) {
        Write-Log "WARNING: Docker is not installed or not in PATH. Skipping OpenWebUI and Cloudflare Tunnels." "Yellow"
        Write-Log "If you just installed Docker, try restarting this PowerShell window." "Gray"
    } else {
        # Check if Docker Desktop is actually running
        docker ps >$null 2>&1
        if ($LASTEXITCODE -ne 0) {
            Write-Log "[!] CRITICAL: Docker is installed, but the ENGINE is not running." "Red"
            Write-Log "[!] Please open Docker Desktop and wait for 'Engine running' status." "Red"
            Read-Host "Press Enter once Docker is running to continue..."
        }
        
        # UI Deployment 
        Write-Log "Deploying R2D2 (Open WebUI) on port 3000..." "Yellow"
        Write-Log "Cleaning up any old R2D2 instance..." "Gray"
        docker rm -f r2d2 2>&1 | Out-Null
        $dockerRun = docker run -d -p 3000:8080 `
            --add-host=host.docker.internal:host-gateway `
            -e OLLAMA_BASE_URL=http://host.docker.internal:11434 `
            -v open-webui:/app/backend/data `
            --name r2d2 --restart always ghcr.io/open-webui/open-webui:main 2>&1
        if ($LASTEXITCODE -eq 0 -and $?) { Write-Log "SUCCESS: R2D2 is live at http://localhost:3000" "Green" }
        else { Write-Log "WARNING: R2D2 deploy failed. Is Docker running? Output: $dockerRun" "Yellow" }
    
        # Global Access Tunnel
        $tunnel = Read-Host "`nEnable Cloudflare Tunnel for GLOBAL API Access? (y/n)"
        if ($tunnel -match "^[yY]$") {
            $token = Read-Host "Enter Cloudflare Token (Leave blank for a random Quick Tunnel)"
            Write-Log "Deploying Cloudflare Tunnel..." "Yellow"
            docker rm -f ghost-tunnel -v 2>&1 | Out-Null
            
            if ([string]::IsNullOrWhiteSpace($token)) {
                # TUNNELING OPEN WEBUI (Port 3000) for UI access & Security
                docker run -d --name ghost-tunnel --restart always cloudflare/cloudflared:latest tunnel --url http://host.docker.internal:3000 2>&1 | Out-Null
                Write-Log "Waiting for Cloudflare entry node generation (targeting Open WebUI 3000)..." "Gray"
                $url = ""
                for ($i = 0; $i -lt 15; $i++) {
                    Start-Sleep -Seconds 2
                    $urlObj = docker logs ghost-tunnel 2>&1 | Select-String "https://.*trycloudflare\.com" | Select-Object -Last 1
                    if ($urlObj) {
                        $url = $urlObj.Line.Trim() -replace '.*(https://[a-zA-Z0-9-]+\.trycloudflare\.com).*', '$1'
                        break
                    }
                }
                if ($url) {
                    Write-Log "`n[ 🌐 GLOBAL WEB UI SECURED ]" "Green"
                    Write-Log "URL: $url" "Cyan"
                    Write-Log "Login to Open WebUI via this URL to access your AI from anywhere safely!" "Green"
                } else {
                    Write-Log "[!] Failed to retrieve Cloudflare Quick Tunnel URL. Please check 'docker logs ghost-tunnel' manually." "Red"
                }
            } else {
                docker run -d --name ghost-tunnel --restart always cloudflare/cloudflared:latest tunnel run --token $token 2>&1 | Out-Null
                Write-Log "`n[ 🌐 GLOBAL WEB UI SECURED VIA CUSTOM DOMAIN ]" "Green"
                Write-Log "Access Open WebUI via your Cloudflare domain!" "Green"
            }
        }

        # WhatsApp Integration (FREE)
        $wa = Read-Host "`nDeploy FREE WhatsApp AI Assistant (OpenClaw)? (y/n)"
        if ($wa -match "^[yY]$") {
            Write-Log "Deploying OpenClaw WhatsApp Bridge..." "Yellow"
            if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
                Write-Log "[!] ERROR: Node.js (NPM) is required for WhatsApp integration." "Red"
            } else {
                Write-Log "Installing OpenClaw globally..." "Gray"
                npm install -g openclaw@latest 2>&1 | Out-Null
                Write-Log "`n[ ACTION REQUIRED ]" "Cyan"
                Write-Log "1. A new window will NOT open, but you need to run 'openclaw onboard' manually if it fails here." "Gray"
                Write-Log "2. Scan the QR code that appears in your terminal with WhatsApp." "Gray"
                Write-Log "Starting onboard session..." "Yellow"
                Start-Process powershell -ArgumentList "-NoExit", "-Command", "openclaw onboard"
            }
        }
    }

    Write-Log "`nREADY: C3PO is serving AI at http://$(hostname):11434" "Yellow"
    Write-Log "Press Enter to close this window (Sentinel stays active)..." "Gray"
    Read-Host
}

# --- THE SHELL (CLIENT) ---
function Start-ShellNode {
    Write-Log "### INITIALIZING SHELL NODE (CLIENT) ###"
    
    $targetAddress = $GhostAddress
    if ($targetAddress -eq "c3po") {
        Write-Log "Using default Ghost Node: $targetAddress" "Yellow"
    } else {
        $inputAddr = Read-Host "Ghost Node Address (IP/Hostname) [$targetAddress]"
        if (-not [string]::IsNullOrWhiteSpace($inputAddr)) { $targetAddress = $inputAddr }
    }

    Write-Log "Checking for VS Code..." "Gray"
    if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
        Write-Log "VS Code is not installed. Installing via winget..." "Yellow"
        winget install --id Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements | Out-Null
        # Refresh PATH in current process
        $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
        
        # If still not found, wait a moment or warn
        if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
            Write-Log "WARNING: VS Code installed but 'code' command not found in PATH yet. Please restart PowerShell." "Red"
        }
    }

    if (Get-Command code -ErrorAction SilentlyContinue) {
        Write-Log "Checking VS Code extensions..." "Gray"
        $requiredExtensions = @("continue.continue", "ms-vscode.PowerShell")
        $installedExtensions = code --list-extensions 2>&1
        foreach ($ext in $requiredExtensions) {
            if ($installedExtensions -notcontains $ext) {
                Write-Log "Installing missing extension: $ext..." "Yellow"
                code --install-extension $ext 2>&1 | Out-Null
            } else {
                Write-Log "Extension already installed: $ext" "Gray"
            }
        }
    }

    $configPath = "$env:USERPROFILE\.continue\config.json"
    $configDir = [System.IO.Path]::GetDirectoryName($configPath)
    if (!(Test-Path $configDir)) { New-Item -ItemType Directory -Path $configDir -Force | Out-Null }

    if (!(Test-Path $configPath)) {
        Write-Log "Creating default Continue.dev configuration..." "Gray"
        $defaultConfig = @{
            models = @(
                @{
                    title = "Ghost-Remote ($targetAddress)"
                    model = "qwen2.5-coder:7b"
                    apiBase = "http://$($targetAddress):11434"
                    provider = "ollama"
                }
            )
            tabAutocompleteModel = @{
                title = "Ghost-Autocomplete"
                model = "qwen2.5-coder:1.5b"
                apiBase = "http://$($targetAddress):11434"
                provider = "ollama"
            }
        }
        $defaultConfig | ConvertTo-Json -Depth 10 | Out-File $configPath -Force -Encoding utf8
    } else {
        try {
            Write-Log "Updating existing Shell configuration to point to $targetAddress..." "Gray"
            $txt = Get-Content $configPath -Raw
            $txt = $txt -replace '(?<="apiBase":\s*")https?://[^"]+', "http://$($targetAddress):11434"
            $txt | Out-File $configPath -Force -Encoding utf8
            Write-Log "SUCCESS: Shell linked to C3PO at $targetAddress" "Green"
        } catch { Write-Log "ERROR: Failed to update Shell configuration." "Red" }
    }
    
    Write-Log "Testing connectivity to $targetAddress..." "Gray"
    if (Test-NetConnection -ComputerName $targetAddress -Port 11434 -InformationLevel Quiet) {
        Write-Log "CONNECTION VERIFIED: Ghost Node is online." "Green"
    } else {
        Write-Log "WARNING: Ghost Node ($targetAddress) is not reachable on port 11434." "Yellow"
    }

    $openhands = Read-Host "`nDeploy OpenHands Autonomous AI Engineer on this Shell Node? (y/n)"
    if ($openhands -match "^[yY]$") {
        $hasDocker = [bool](Get-Command docker -ErrorAction SilentlyContinue)
        if (-not $hasDocker) {
            Write-Log "WARNING: Docker is not installed or not in PATH. Skipping OpenHands deployment." "Yellow"
        } else {
            Write-Log "Configuring OpenHands on port 3001..." "Yellow"
            docker rm -f openhands 2>&1 | Out-Null
            $workspace = Read-Host "Enter absolute path to your coding workspace (default: C:\Workspace)"
            if ([string]::IsNullOrWhiteSpace($workspace)) { $workspace = "C:\Workspace" }
            if (-not (Test-Path $workspace)) { New-Item -ItemType Directory -Force -Path $workspace | Out-Null }
            
            Write-Log "Pulling container & deploying OpenHands... (This may take a moment)" "Gray"
            $dockerRun = docker run -d --name openhands `
                -e WORKSPACE_BASE=$workspace `
                -v //var/run/docker.sock:/var/run/docker.sock `
                -v "$($workspace):/workspace" `
                -p 3001:3000 `
                --add-host=host.docker.internal:host-gateway `
                docker.all-hands.dev/all-hands-ai/openhands:0.18 2>&1
            
            if ($LASTEXITCODE -eq 0 -and $?) {
                Write-Log "SUCCESS: OpenHands is LIVE at http://localhost:3001" "Green"
                Write-Log "In the OpenHands UI UI settings, point the LLM URL to: http://$targetAddress:11434 and select Ollama!" "Cyan"
            } else {
                Write-Log "WARNING: OpenHands deployment failed. Ensure Docker Desktop is running. Output: $dockerRun" "Yellow"
            }
        }
    }

    Write-Log "`n[!] UI REFRESH REQUIRED: Please restart VS Code to apply updates." "White"
    Read-Host "`nPress Enter to exit..."
}

# --- EXECUTION ---
Assert-Admin

if (-not $Role) {
    Write-Host "`n  [ G H O S T - S H E L L ] 👻🐚" -ForegroundColor Cyan
    Write-Host "  -------------------------"
    Write-Host "  1. C3PO   - Self-Optimize & Serve AI (Host Server)"
    Write-Host "  2. R2D2   - Connect Client Workspace (Workstation)"
    $choice = Read-Host "`nSelect your role (1 or 2, default 1)"
    $Role = if ($choice -eq "2") { "Shell" } else { "Ghost" }
}

if ($Role -eq "Ghost") { Start-GhostNode }
if ($Role -eq "Shell") { Start-ShellNode }
