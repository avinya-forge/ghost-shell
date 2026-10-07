# Tech: Web Scraping & Crawler Resilience

## Goal
Build robust, ethical, and highly resilient data-gathering agents capable of bypassing automated bot detection and blocks while respecting target infrastructure.

---

## Core Engineering Standards

### 1. Evasion & Anti-Bot Detection (Stealth)
- **Browser Fingerprinting:** When using headless browsers (Playwright/Puppeteer), utilize stealth plugins (e.g., `puppeteer-extra-plugin-stealth` adapted for Playwright) to mask WebDriver flags, fix navigator properties, and randomize viewport sizes.
- **Human Emulation:** Introduce jitter and randomized delays between actions. Emulate natural mouse movements, scrolling, and typing cadences.

### 2. IP Rotation & Proxy Management
- **Proxy Pools:** Never rely on a single IP address for scraping. Integrate residential or datacenter proxy rotation networks.
- **Session Persistence:** Maintain session stickiness (using the same proxy IP for a single continuous user journey) to avoid triggering security alerts on the target site.
- **Crawlee Integration:** Utilize `Crawlee`'s built-in `ProxyConfiguration` and `SessionPool` to automate proxy rotation and handle retries intelligently.

### 3. Efficiency & Resource Management
- **Protocol-Level Scraping:** Prefer HTTP request-based scraping (e.g., using `fetch` or `cheerio` for parsing HTML) over headless browsers for speed and lower resource consumption, unless JavaScript rendering is explicitly required.
- **Concurrency & Backoff:** Implement intelligent concurrency limits and exponential backoff strategies to handle 429 Too Many Requests errors gracefully.
