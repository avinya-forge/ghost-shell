# Tech: Database & SQL Architecture Standards

## Goal
Ensure clean database schema design, efficient querying, reliable migrations, and robust ORM usage across data stores.

## Guidelines
1. **Schema Design & Normalization:** Design database tables with proper primary keys, foreign keys, constraints, and data types. Aim for appropriate normalization balance.
2. **Indexing & Query Performance:** Create indexes for frequently queried columns and foreign keys. Avoid `SELECT *` in production and prevent N+1 query problems.
3. **Migration Management:** Use versioned, reproducible migration scripts (e.g., Prisma, Drizzle, TypeORM, Alembic, Flyway). Never perform manual schema modifications in production.
4. **ORM & Query Builders:** Use type-safe ORMs or query builders while retaining awareness of generated SQL query execution and transaction boundaries.
5. **Data Integrity & Transactions:** Enforce database-level integrity (unique constraints, cascades, nullability) and wrap multi-step write operations in ACID transactions.
