# Tech: Backend API Development Best Practices

## Goal
Design and build resilient, scalable, and well-structured RESTful and GraphQL APIs.

## Guidelines
1. **RESTful Resource Naming:** Use clear, noun-based resource routes (e.g., `/api/v1/users`, `/api/v1/orders/{id}`). Use standard HTTP methods (`GET`, `POST`, `PUT`, `PATCH`, `DELETE`).
2. **Request Validation & Serialization:** Validate all incoming request payloads at the API layer using strict schemas (e.g., Zod, Pydantic, Joi) before passing data to domain logic.
3. **Consistent Error Responses:** Return standard JSON error responses containing status codes, error codes, user-friendly messages, and optional field-level validation errors.
4. **Middleware & Interceptors:** Use modular middleware for logging, rate limiting, authentication, CORS, and request tracking (correlation IDs).
5. **API Documentation:** Maintain up-to-date OpenAPI/Swagger definitions or GraphQL schemas that reflect actual backend endpoints and request/response payloads.
