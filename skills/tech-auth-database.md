# Tech: Database & Authentication Integration

## Goal
Establish secure, scalable, and resilient database and authentication architectures for full-stack applications, prioritizing data integrity and seamless user onboarding (Sign-in/Sign-up, OAuth).

---

## Core Engineering Standards

### 1. Authentication & Authorization
- **Unified Identity Providers:** Implement standard OAuth flows (Google, Facebook, GitHub, Apple) and Magic Links for frictionless sign-in and sign-up.
- **Next-Gen Auth Libraries:** Utilize industry-standard solutions like **Auth.js (NextAuth.js)** or **Lucia** to handle session management, JWT signing, and encrypted cookies securely out-of-the-box.
- **RBAC:** Implement Role-Based Access Control on both the client (UI rendering) and server (API endpoints).

### 2. Database Infrastructure
- **Production-Ready Databases:** Migrate from ephemeral local databases (like SQLite) to robust production environments (e.g., PostgreSQL via Vercel Postgres, Supabase, or Neon) before deploying to serverless platforms.
- **ORM Standardization:** Use modern ORMs like **Prisma** or **Drizzle ORM** for type-safe database queries, schema migrations, and built-in protection against SQL injection.
- **Connection Pooling:** Ensure the database connection handles serverless cold starts gracefully using connection pooling (e.g., PgBouncer).

### 3. User Data Security
- **PII Protection:** Encrypt sensitive Personally Identifiable Information (PII) at rest and in transit.
- **Stateless Sessions:** Prefer secure HTTP-only cookies over local storage for session tokens to prevent XSS theft.
