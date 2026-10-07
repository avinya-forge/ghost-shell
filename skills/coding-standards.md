# Coding Standards & Clean Code Practices

## Goal
Maintain enterprise-grade code quality, industry-standard design patterns, consistent naming conventions, and self-documenting code across all supported programming languages and frameworks.

---

## Core Software Engineering Principles

### 1. SOLID Principles
- **Single Responsibility (SRP):** Each class, module, or function must have one, and only one, reason to change.
- **Open/Closed (OCP):** Software entities should be open for extension, but closed for modification.
- **Liskov Substitution (LSP):** Derived types must be completely substitutable for their base types.
- **Interface Segregation (ISP):** Prefer small, specific interfaces over large, monolithic ones.
- **Dependency Inversion (DIP):** Depend on abstractions (interfaces/contracts), not concrete implementations.

### 2. Clean Code & DRY
- **Don't Repeat Yourself (DRY):** Eliminate code duplication by extracting shared logic into reusable modules or utilities.
- **KISS & YAGNI:** Keep it simple, stupid. You aren't gonna need it—avoid over-engineering before requirements demand it.
- **Self-Documenting Code:** Write intention-revealing variable and function names. Avoid redundant comments that merely restate what the code does.

### 3. Skill Overlap & Multi-Skill Resolution
When multiple skill files apply to a single task or domain:
- **Union of Strictest Constraints:** Synthesize overlapping guidelines into the union of their strictest requirements (security > accessibility > design taste > generic templates).
- **No Direct Negation:** Specialized skills refine and elevate general role personas rather than overriding fundamental architectural safety or WCAG accessibility rules.

### 4. Naming Conventions & Consistency
- **Casing Rules:**
  - TypeScript/JavaScript: `camelCase` for variables/functions, `PascalCase` for types/classes/components, `UPPER_SNAKE_CASE` for constants.
  - Python: `snake_case` for variables/functions, `PascalCase` for classes, `UPPER_SNAKE_CASE` for constants.
  - Go: `camelCase` for unexported identifiers, `PascalCase` for exported identifiers.
- **Boolean Prefixes:** Always prefix boolean variables with `is`, `has`, `should`, or `can` (e.g., `isAuthorized`, `hasCompleted`).
- **Domain Alignment:** Use consistent domain vocabulary matching `vision.md` and `backlog.md`.
