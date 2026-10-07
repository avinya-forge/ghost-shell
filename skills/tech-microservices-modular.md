# Tech: Modern Architecture (Modular Monolith, Microservices & DDD)

## Goal
Enforce clean, scalable, maintainable architectural patterns across projects, supporting both Modular Monoliths and Microservices using Domain-Driven Design (DDD) principles.

---

## Architectural Guidelines

### 1. Modular Monolith & Boundary Isolation
- **Domain Boundaries:** Organize code by business domain/bounded contexts (e.g., `modules/auth`, `modules/billing`, `modules/orders`) rather than technical layers alone.
- **Strict Module Contracts:** Communicate across module boundaries strictly via explicit public interface contracts or internal event buses. Never perform direct deep imports into internal module implementation details.
- **Database Decoupling:** Keep domain schemas logically isolated. Avoid cross-module database joins; utilize repository interfaces and domain events.

### 2. Microservices & Event-Driven Systems
- **Single Responsibility Service:** Design services around clear business capabilities with independent deployments and isolated storage.
- **Asynchronous Event-Driven Messaging:** Use event pub/sub (Kafka, RabbitMQ, Redis Streams, or NATS) for eventual consistency and decoupled communication.
- **API Gateway & Service Mesh:** Route ingress traffic through API Gateways with rate limiting, authentication, and circuit breaking.

### 3. Domain-Driven Design (DDD) Principles
- **Ubiquitous Language:** Align domain model names, entities, and methods with business domain terminology.
- **Entities & Value Objects:** Model state with immutable Value Objects where identity is irrelevant, and Entities where identity persists.
- **Aggregates & Repositories:** Enforce consistency boundaries within Aggregates; abstract data persistence behind clean Repository interfaces.
