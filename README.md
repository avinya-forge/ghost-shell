# 👻🐚 GhostShell: The Elite Distributed AI Node

**GhostShell** transforms your hardware into a dedicated, **Self-Optimizing** AI Coding Server. It decouples the "Processing" (The Ghost) from the "Workspace" (The Shell).

---

## ⚡ One-Click Initialization

> [!CAUTION]  
> **YOU MUST RUN AS ADMINISTRATOR.**  
> Right-click your Terminal (PowerShell) and select **Run as Administrator** before pasting these commands.

### 💨 To Start THE GHOST (Node 1 - Server)
Copy and paste this into an **Admin PowerShell**:
```powershell
powershell -ExecutionPolicy Bypass -File .\GhostShell.ps1 -Role Ghost
```

### 2. Enter THE SHELL (The Client Node)
On your primary coding workstation:
- **CLI**: `powershell -ExecutionPolicy Bypass -File .\GhostShell.ps1 -Role Shell -GhostAddress <GHOST_IP>`
- **Manual**: Run -> Select **2 (Shell)** -> It will default to **c3po** or ask for IP.

### 3. Connect & Code
Open VS Code on the Shell. The script automatically configures your `~/.continue/config.json` to point to the Ghost Node.
All the heavy lifting is handled by the Ghost (C3PO in your network).

---

## 🛠️ Deployment Flow
1. **Network Ready**: Opens firewall rules and configures the host to allow mobile/remote connections.
2. **Bootstrap**: The Ghost pulls its own 1.5B reasoning model.
3. **Audit**: The AI identifies and kills system bloatware (Teams, OneDrive, etc.).
4. **Strip**: Windows services are deep-stripped for maximum RAM throughput.
5. **Sentinel**: A background watchdog gracefully handles high memory to prevent hangs.
6. **Web UI & Global Access (Optional)**: Automatically deploy Open WebUI for a ChatGPT-like interface and spawn a secure Cloudflare Tunnel to access your local models from anywhere in the world completely free.

## 🔍 Verification
Run this on the Shell to verify connectivity to your Ghost Node:
```powershell
Invoke-RestMethod http://c3po:11434/api/tags
```

### 📱 Mobile Access
If you installed the optional Web UI during the Ghost deployment:
1. Ensure your mobile device is on the same WiFi network.
2. Navigate to `http://<Ghost-Node-IP>:3000` in your mobile browser.

### 🌍 Global Access & GitHub-Hosted UIs
When prompted, enabling the **Cloudflare Tunnel** instantly exposes your raw Ollama API securely to the internet. 
You can use a free generic Quick Tunnel, or provide your own Cloudflare Token. 
When it generates your URL, just plug that URL into **ANY hosted UI** (Like [LobeChat Cloud](https://chat-preview.lobehub.com)) as your custom API endpoint.
   * *Why?* This gives you a world-class UI hosted on GitHub/Vercel (which you can browse from anywhere) that processes inference 100% locally on your laptop!

### ⚙️ Skills & Plugins
To integrate robust "Skills" (web scraping, API hooks, Github scanning, Google Photos logic):
* **Using Open WebUI**: Navigate to your Workspace -> Tools -> Import.
* **Using LobeChat (Recommended)**: Use the Cloudflare API Tunnel (11434). LobeChat has a native "Plugin Market" with hundreds of one-click skills built-in.

**Privacy. Performance. Persistence.**
