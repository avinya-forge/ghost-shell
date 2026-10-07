# Tech: Security Hardening & Hack-Proofing

## Goal
Ensure all web applications and APIs are resilient against common attack vectors (OWASP Top 10), automated abuse, and data breaches.

---

## Core Engineering Standards

### 1. Web Application Firewall (WAF) & Rate Limiting
- **Edge Protection:** Deploy a WAF (e.g., Vercel Edge WAF, Cloudflare) to block malicious traffic before it hits the application server.
- **Rate Limiting:** Implement strict rate limits on critical routes (e.g., Sign-in, Sign-up, Password Reset, and Web Crawling APIs) to prevent brute-force attacks and DDoS. Use Redis-backed limiters (e.g., `@upstash/ratelimit`).

### 2. Input Validation & Sanitization
- **Strict Typing:** Never trust client data. Validate all incoming API requests and form submissions using schema validation libraries like **Zod**.
- **Sanitization:** Strip dangerous HTML/script tags from user inputs to prevent Stored and Reflected XSS.

### 3. HTTP Security Headers
- **Configuration:** Enforce strict security policies in the server configuration (e.g., `next.config.ts`).
  - `Content-Security-Policy` (CSP) to restrict resource origins.
  - `X-Frame-Options: DENY` to prevent Clickjacking.
  - `Strict-Transport-Security` (HSTS) to enforce HTTPS.
  - `X-Content-Type-Options: nosniff`.

### 4. CSRF & XSS Protection
- **CSRF Tokens:** Use Anti-CSRF tokens for all state-changing mutations if not natively handled by the Auth provider (like Auth.js).
- **React Escaping:** Rely on React's automatic string escaping. Strictly avoid `dangerouslySetInnerHTML` unless absolutely necessary and paired with DOMPurify.

### 5. Frontend Security Analysis & Verification
- **Detailed Frontend Audits:** Continuously analyze and verify the website's frontend security posture in exhaustive detail. Ensure all interactive components (tabs, nav bars, links, forms) securely handle user input without exposing client-side vulnerabilities.
- **Client-Side Validation:** Check that client-side routing, data fetching, and storage mechanisms (e.g., localStorage, cookies) enforce strict security bounds and don't leak sensitive session data.

### 6. Anti-Scraping & Bot Immunity
- **Scraper Proofing:** Protect exposed live domains with robust bot mitigation. Implement Cloudflare Turnstile (invisible CAPTCHA) or reCAPTCHA v3 on all forms and data endpoints.
- **Obfuscation:** For public directories or sensitive content, employ dynamic rendering and rate-limiting to make automated scraping computationally unfeasible.

### 7. Encryption Standards
- **Data at Rest & Transit:** All databases must be encrypted at rest. Enforce TLS 1.3 across the board. Secrets must never be stored in plaintext.
