<#
.SYNOPSIS
    GHOST-SHELL: The Elite Distributed AI Node Manager.
    One Script. One Goal. Max AI.
#>

Param(
    [Parameter(Mandatory=$false)]
    [ValidateSet("Ghost", "Shell")]
    [string]$Role,

    [Parameter(Mandatory=$false)]
    [string]$GhostAddress = "c3po"
)

# --- Admin Check ---
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (-not $isAdmin) {
    Write-Host "`n[!] WARNING: Not running as Administrator." -ForegroundColor Yellow
    Write-Host "[!] Deep optimizations and process termination may fail." -ForegroundColor Yellow
    Write-Host "[!] Please restart PowerShell as Administrator for full performance.`n" -ForegroundColor Yellow
}

# --- Shared UI ---
function Log ($msg, $color="Cyan") { Write-Host "[$(Get-Date -Format 'HH:mm:ss')] $msg" -ForegroundColor $color }

# --- Role Selection if not provided ---
if (-not $Role) {
    Write-Host "`n  [ G H O S T - S H E L L ] 👻🐚" -ForegroundColor Cyan
    Write-Host "  -------------------------"
    Write-Host "  1. GHOST  - Self-Optimize & Serve AI (Host Server)"
    Write-Host "  2. SHELL  - Connect Client Workspace (Workstation)"
    $choice = Read-Host "`nSelect your role (1 or 2, default 2)"
    $Role = if ($choice -eq "1") { "Ghost" } else { "Shell" }
}

# --- GHOST LOGIC (The Server) ---
if ($Role -eq "Ghost") {
    # Protection: Do not run Ghost on Shell-only designated machines
    $machineName = hostname
    if ($machineName -match "c3po" -eq $false) {
        Write-Host "`n[!] ATTENTION: This node is typically configured as a SHELL." -ForegroundColor Yellow
        $confirm = Read-Host "Are you sure you want to run GHOST on this machine? (y/n)"
        if ($confirm -ne "y") { return }
    }

    Log "### INITIALIZING GHOST NODE (SERVER) ###"
    
    # 1. BOOTSTRAP OLLAMA
    $ollama = "$env:LOCALAPPDATA\Programs\Ollama\ollama.exe"
    if (!(Test-Path $ollama)) { 
        Log "[!] CRITICAL: Ollama not found at $ollama" "Red"
        Log "Please install Ollama from https://ollama.com first." "Yellow"
        Read-Host "Press Enter to exit..."
        return 
    }
    Log "Starting Ghost Engine..."
    $env:OLLAMA_HOST = "0.0.0.0" # Enable remote access
    Start-Process $ollama -ArgumentList "serve" -WindowStyle Hidden -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 5

    # 2. AI-DRIVEN OPTIMIZATION
    Log "Bootstrapping 1.5B Reasoning Model for System Audit..."
    & $ollama pull qwen2.5-coder:1.5b | Out-Null
    
    Log "Asking the Ghost to analyze system bloat..." "Yellow"
    $procs = Get-Process | Select-Object -ExpandProperty Name -Unique | Sort-Object | Out-String
    $prompt = "You are the GhostShell Performance Agent. Analyze this list of Windows processes and identify NON-ESSENTIAL bloatware (Social, Cloud, Gaming, Telemetry) that should be killed to prioritize RAM for AI. Return ONLY a comma-separated list of process names (lowercase), no explanation. CRITICAL: DO NOT include 'powershell', 'ollama', 'explorer', 'conhost', 'svchost', or any core system processes. Processes: $procs"
    
    try {
        $body = @{ model = "qwen2.5-coder:1.5b"; prompt = $prompt; stream = $false } | ConvertTo-Json
        $response = Invoke-RestMethod -Method Post -Uri "http://localhost:11434/api/generate" -Body $body -ContentType "application/json"
        $killList = $response.response.Trim().Split(",")
        
        Log "Ghost identified $($killList.Count) targets for termination." "Green"
        foreach ($target in $killList) {
            $t = $target.Trim().ToLower()
            $skip = "powershell|ollama|explorer|conhost|svchost|system|idle|init|taskhost"
            if ($t -and ($t -notmatch $skip)) {
                Log "Terminating: $t" "Gray"
                Get-Process -Name $t -ErrorAction SilentlyContinue | Stop-Process -Force
            }
        }
    } catch {
        Log "Meta-optimization failed. Using hardcoded deep-strip." "Red"
        $hardcoded = @("WhatsApp", "OneDrive", "Teams", "Surfshark", "Cortana", "XboxGameBar")
        foreach($h in $hardcoded) { Get-Process -Name $h -ErrorAction SilentlyContinue | Stop-Process -Force }
    }

    # 3. SENTINEL DEPLOYMENT (Internal Job)
    Start-Job -Name "GhostSentinel" -ScriptBlock {
        while ($true) {
            $os = Get-CimInstance Win32_OperatingSystem
            if ((100 - ($os.FreePhysicalMemory / $os.TotalVisibleMemorySize * 100)) -gt 95) { Stop-Process -Name 'ollama*' -Force }
            Start-Sleep -Seconds 60
        }
    }
    
    Log "`nREADY: Ghost is serving AI at http://$(hostname):11434" "Yellow"
    Log "Press Enter to close this window (Sentinel stays active)..." "Gray"
    Read-Host
}

# --- SHELL LOGIC (The Client) ---
if ($Role -eq "Shell") {
    Log "### INITIALIZING SHELL NODE (CLIENT) ###"
    
    if ($GhostAddress -eq "c3po") {
        Log "Using default Ghost Node: $GhostAddress" "Yellow"
    } else {
        $GhostAddress = Read-Host "Ghost Node Address (IP/Hostname) [$GhostAddress]"
        if ([string]::IsNullOrWhiteSpace($GhostAddress)) { $GhostAddress = "c3po" }
    }

    # --- Extension Management ---
    Log "Checking VS Code extensions..." "Gray"
    $requiredExtensions = @("continue.continue", "ms-vscode.PowerShell")
    $installedExtensions = code --list-extensions
    
    foreach ($ext in $requiredExtensions) {
        if ($installedExtensions -notcontains $ext) {
            Log "Installing missing extension: $ext..." "Yellow"
            code --install-extension $ext | Out-Null
        } else {
            Log "Extension already installed: $ext" "Gray"
        }
    }

    $configPath = "$env:USERPROFILE\.continue\config.json"
    $configDir = [System.IO.Path]::GetDirectoryName($configPath)
    
    if (!(Test-Path $configDir)) {
        New-Item -ItemType Directory -Path $configDir -Force | Out-Null
    }

    if (!(Test-Path $configPath)) {
        Log "Creating default Continue.dev configuration..." "Gray"
        $defaultConfig = @{
            models = @(
                @{
                    title = "Ghost-Remote (c3po)"
                    model = "qwen2.5-coder:7b"
                    apiBase = "http://$($GhostAddress):11434"
                    provider = "ollama"
                }
            )
            tabAutocompleteModel = @{
                title = "Ghost-Autocomplete"
                model = "qwen2.5-coder:1.5b"
                apiBase = "http://$($GhostAddress):11434"
                provider = "ollama"
            }
        }
        $defaultConfig | ConvertTo-Json -Depth 10 | Out-File $configPath -Force -Encoding utf8
    } else {
        try {
            Log "Updating existing Shell configuration to point to $GhostAddress..." "Gray"
            $txt = Get-Content $configPath -Raw
            # Update all apiBase occurrences to the new ghost address
            $txt = $txt -replace '(?<="apiBase":\s*")https?://[^"]+', "http://$($GhostAddress):11434"
            $txt | Out-File $configPath -Force -Encoding utf8
            Log "SUCCESS: Shell linked to Ghost at $GhostAddress" "Green"
        } catch {
            Log "ERROR: Failed to update Shell configuration." "Red"
        }
    }
    
    # Check connectivity
    Log "Testing connectivity to $GhostAddress..." "Gray"
    if (Test-NetConnection -ComputerName $GhostAddress -Port 11434 -InformationLevel Quiet) {
        Log "CONNECTION VERIFIED: Ghost Node is online." "Green"
    } else {
        Log "WARNING: Ghost Node ($GhostAddress) is not reachable on port 11434." "Yellow"
        Log "Ensure the Ghost machine is running 'ollama serve' and firewall permits traffic." "Yellow"
    }

    Log "`n[!] UI REFRESH REQUIRED: Please restart VS Code to enable new extensions and configurations." "White"
    Read-Host "`nPress Enter to exit..."
}

