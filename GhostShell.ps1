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

    Write-Log "### INITIALIZING GHOST NODE (SERVER) ###"
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

    Write-Log "Synchronizing Mental Models (DeepSeek, Qwen, Llama)..." "Yellow"
    $models = @("qwen2.5-coder:7b", "qwen2.5-coder:1.5b", "llama3.1:8b", "deepseek-r1:7b", "deepseek-coder:6.7b", "nomic-embed-text")
    foreach ($m in $models) {
        Write-Log "Syncing: $m..." "Gray"
        & $ollama pull $m | Out-Null
    }
    
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
            $skip = "powershell|ollama|explorer|conhost|svchost|system|idle|init|taskhost|winlogon|csrss|lsass|smss|services|dwm|wlanext|fontdrvhost|searchui|sihost|memory compression|registry|ctfmon|dllhost|com-surrogate|spoolsv|runtimebroker|wmiprvse|searchindexer|securityhealthservice|smartscreen|docker.*|wsl.*"
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
    
    $installUI = Read-Host "`nDeploy Local Open WebUI? (y/n)"
    if ($installUI -match "^[yY]$") {
        Write-Log "Deploying Open WebUI container on port 3000..." "Yellow"
        docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main | Out-Null
        if ($?) { Write-Log "SUCCESS: Local Web UI is live at http://$(hostname):3000" "Green" }
        else { Write-Log "ERROR: Web UI deployment failed. Ensure Docker Desktop is running." "Red" }
    }

    # Global Access Tunnel
    $tunnel = Read-Host "`nEnable Cloudflare Tunnel for Free GLOBAL Access? (y/n)"
    if ($tunnel -match "^[yY]$") {
        $targetPort = Read-Host "Tunnel to WebUI (port 3000) or pure Ollama API (port 11434)? (3000/11434)"
        if ($targetPort -ne "3000" -and $targetPort -ne "11434") { $targetPort = "11434" }

        Write-Log "Deploying Cloudflare Tunnel for port $targetPort..." "Yellow"
        docker rm -f ghost-tunnel -v > $null 2>&1
        docker run -d --name ghost-tunnel --restart always cloudflare/cloudflared:latest tunnel --url http://host.docker.internal:$targetPort | Out-Null
        
        Write-Log "Waiting for Cloudflare entry node generation..." "Gray"
        Start-Sleep -Seconds 8
        $urlObj = docker logs ghost-tunnel 2>&1 | Select-String "https://.*trycloudflare\.com" | Select-Object -Last 1
        if ($urlObj) {
            $url = $urlObj.Line.Trim() -replace '.*(https://[a-zA-Z0-9-]+\.trycloudflare\.com).*', '$1'
            Write-Log "`n[ 🌐 GLOBAL ACCESS URL SECURED ]" "Green"
            Write-Log "URL: $url" "Cyan"
            if ($targetPort -eq "11434") {
                Write-Log "This is your RAW API Endpoint. Plug this into any web-hosted AI UI (like LobeChat) as the custom Ollama Endpoint!" "Green"
            } else {
                Write-Log "This links directly to your local WebUI. Open it anywhere to chat." "Green"
            }
        }
    }

    Write-Log "`nREADY: Ghost is serving AI at http://$(hostname):11434" "Yellow"
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

    Write-Log "Checking VS Code extensions..." "Gray"
    $requiredExtensions = @("continue.continue", "ms-vscode.PowerShell")
    $installedExtensions = code --list-extensions
    foreach ($ext in $requiredExtensions) {
        if ($installedExtensions -notcontains $ext) {
            Write-Log "Installing missing extension: $ext..." "Yellow"
            code --install-extension $ext | Out-Null
        } else {
            Write-Log "Extension already installed: $ext" "Gray"
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
            Write-Log "SUCCESS: Shell linked to Ghost at $targetAddress" "Green"
        } catch { Write-Log "ERROR: Failed to update Shell configuration." "Red" }
    }
    
    Write-Log "Testing connectivity to $targetAddress..." "Gray"
    if (Test-NetConnection -ComputerName $targetAddress -Port 11434 -InformationLevel Quiet) {
        Write-Log "CONNECTION VERIFIED: Ghost Node is online." "Green"
    } else {
        Write-Log "WARNING: Ghost Node ($targetAddress) is not reachable on port 11434." "Yellow"
    }

    Write-Log "`n[!] UI REFRESH REQUIRED: Please restart VS Code to apply updates." "White"
    Read-Host "`nPress Enter to exit..."
}

# --- EXECUTION ---
Assert-Admin

if (-not $Role) {
    Write-Host "`n  [ G H O S T - S H E L L ] 👻🐚" -ForegroundColor Cyan
    Write-Host "  -------------------------"
    Write-Host "  1. GHOST  - Self-Optimize & Serve AI (Host Server)"
    Write-Host "  2. SHELL  - Connect Client Workspace (Workstation)"
    $choice = Read-Host "`nSelect your role (1 or 2, default 2)"
    $Role = if ($choice -eq "1") { "Ghost" } else { "Shell" }
}

if ($Role -eq "Ghost") { Start-GhostNode }
if ($Role -eq "Shell") { Start-ShellNode }
