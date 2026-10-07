# Tech: Legal Compliance, UK GDPR & Age Verification

## Goal
Ensure all applications strictly comply with UK GDPR, EU GDPR, and the UK Age Appropriate Design Code (AADC). Protect user privacy, avoid regulatory fines, and ensure ethical data handling.

## Core Guidelines

### 1. UK GDPR & Data Privacy
- **Cookie Consent:** Implement explicit, active consent mechanisms for all non-essential cookies (e.g., using OneTrust, Cookiebot, or a custom strict banner). No tracking pixels or analytics can fire before consent is granted.
- **Right to be Forgotten:** Provide a one-click automated mechanism for users to delete their entire account and all associated PII (Personally Identifiable Information) permanently.
- **Data Minimization & Encryption:** Only collect data absolutely necessary. Encrypt all PII at rest (AES-256) and in transit (TLS 1.3). Never log plaintext emails, passwords, or IP addresses.

### 2. Age Verification & Child Protection (AADC)
- **Age Gating:** Implement strict age verification during the signup flow. Ensure no under-age children (under 13 for general, under 18 for specific services) can create accounts.
- **Default Privacy:** For younger users (if allowed), all privacy settings must default to the strictest possible level (no public profiles, no location tracking).

### 3. Terms of Service & Privacy Policies
- **Accessibility:** Link Terms of Service, Privacy Policy, and Cookie Policy in the footer of every public-facing page. Use plain English (ASD-STE100 standard) so users clearly understand what happens to their data.
