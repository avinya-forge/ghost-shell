# Tech: Modern Python (3.12+), FastAPI & Pydantic v2

## Goal
Enforce clean, performant, type-safe Python development standards using modern Python 3.12+ features, FastAPI framework conventions, Pydantic v2 validation models, and modern tooling (Ruff, Pyright, Pytest, HTTPX).

---

## Technical Standards & Best Practices

### 1. Modern Python 3.12+ & Type Safety
- **Type Annotations:** Use modern built-in type syntax (`list[str]`, `dict[str, Any]`, `X | None` instead of `typing.Optional`/`Union`).
- **Strict Generics:** Use Python 3.12 `type` alias statements and type parameter syntax (`def process[T](data: list[T]) -> list[T]:`).
- **Native Async I/O:** Use native `async`/`await` for I/O bound operations (database sessions, HTTP external calls, vector search queries).

### 2. FastAPI Architecture & Dependency Injection
- **Explicit Dependency Injection:** Utilize FastAPI `Depends` for managing database sessions (`async_sessionmaker`), authentication context (`get_current_user`), and rate limiters.
- **Router Modularization:** Organize API endpoints into domain-scoped APIRouters (`app.include_router(users_router, prefix="/api/v1/users", tags=["Users"])`).
- **Structured Error Schema:** Raise explicit `HTTPException(status_code=..., detail={"code": "USER_NOT_FOUND", "message": "..."})` with consistent JSON error payloads.

### 3. Pydantic v2 Schema & Data Validation
- **Schema Separation:** Separate schemas into explicit Request (`UserCreate`, `UserUpdate`), Query (`UserQueryParams`), and Response (`UserRead`, `PaginatedResponse[UserRead]`) models.
- **Model Config:** Use Pydantic v2 `BaseModel` with `model_config = ConfigDict(strict=True, populate_by_name=True, extra="forbid")`.
- **Environment Management:** Manage environment settings using `pydantic-settings` (`BaseSettings`) with field validation.

### 4. Quality & Testing Standards
- **Ruff & Pyright:** Enforce `ruff check` and `ruff format` for linting and formatting; use `pyright` or `mypy --strict` for static type checking.
- **Async Pytest Suite:** Write unit and integration tests using `pytest-asyncio` and `httpx.AsyncClient` against test database fixtures.
