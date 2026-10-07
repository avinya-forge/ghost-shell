# Tech: Modern Go (1.22+), Clean Architecture & Idiomatic Go

## Goal
Enforce idiomatic, high-performance, maintainable Go 1.22+ development standards following Clean Architecture, standard Go project layouts, structured logging (`slog`), range-over-function iterators, and goroutine lifecycle safety.

---

## Technical Standards & Best Practices

### 1. Project Layout & Clean Architecture
- **Standard Layout:** Organize code cleanly (`cmd/<app>/`, `internal/domain/`, `internal/usecase/`, `internal/repository/`, `internal/handler/`, `pkg/`).
- **Dependency Inversion:** Higher-level domain logic defines interfaces; lower-level infrastructure packages (SQL, HTTP, Redis) implement them.
- **Constructor Injection:** Pass dependencies explicitly via constructor functions (`func NewUserService(repo UserRepository, logger *slog.Logger) *UserService`); avoid global state or package-level singletons.

### 2. Idiomatic Go & Structured Logging (`log/slog`)
- **Error Wrapping:** Handle errors explicitly. Wrap context when propagating errors (`fmt.Errorf("failed to fetch user %d: %w", id, err)`). Use `errors.Is` and `errors.As` for error matching.
- **Structured Logging:** Use native `log/slog` for structured, key-value JSON or text logging (`logger.InfoContext(ctx, "processed order", slog.String("order_id", id))`).
- **Go 1.22 Range-Over-Func Iterators:** Leverage Go 1.22 iterators (`iter.Seq`, `iter.Seq2`) for clean custom collection traversals without allocating slice copies.

### 3. Concurrency, Context & Resource Lifecycle
- **Context First Parameter:** Always pass `ctx context.Context` as the first parameter to functions performing I/O, database queries, or goroutine spawning.
- **Errgroup Management:** Manage goroutine lifecycles using `golang.org/x/sync/errgroup` with context cancellation to prevent goroutine leaks on failure.
- **Mutex Discipline:** Keep lock scopes minimal; acquire mutexes with immediate `defer mu.Unlock()` or `RUnlock()`.

### 4. Testing & Code Quality
- **Table-Driven Tests:** Structure unit tests using Go table-driven test patterns with `t.Run(tt.name, func(t *testing.T) { ... })`.
- **Strict Linting:** Enforce `golangci-lint` with enabled checkers (`govet`, `errcheck`, `staticcheck`, `gosec`, `ineffassign`).
