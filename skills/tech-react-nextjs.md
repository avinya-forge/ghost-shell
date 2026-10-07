# Tech: React.js & Next.js App Router Best Practices

## Goal
Build scalable, performant, accessible, and resilient React and Next.js applications using modern App Router architecture, React Server Components (RSC), Server Actions, optimistic UI updates, and zero-CLS media optimization.

---

## Core Technical Engineering Standards

### 1. React Server Components (RSC) Architecture
- **Server First Default:** Keep components as Server Components by default. Push `'use client'` boundaries down to the leaf nodes requiring interactivity, state (`useState`), or browser APIs (`useEffect`, event listeners).
- **Zero Bundle Impact:** Perform heavy data fetching, parsing, and data transformations inside Server Components to keep client JavaScript bundle size minimal.

### 2. Next.js App Router Data Fetching & Caching
- **Native Fetch Caching:** Leverage Next.js extended `fetch` with explicit tags and revalidation options (`fetch(url, { next: { tags: ['user-data'], revalidate: 3600 } })`).
- **Server Actions & Mutation:** Use Server Actions (`'use server'`) for form submissions and mutations. Call `revalidatePath()` or `revalidateTag()` to purge stale cache data instantly.
- **Optimistic UI Updates:** Pair Server Actions with `useOptimistic()` for instant feedback during network mutations.

### 3. Streaming & Suspense Boundaries
- **Granular Loading States:** Wrap slow-loading asynchronous components in `<Suspense fallback={<SkeletonLoader />}>` to enable incremental HTML streaming (`loading.tsx`).
- **Parallel & Intercepting Routes:** Use slot folders (`@modal`, `@sidebar`) for modal overlays and parallel route rendering without disrupting main page state.

### 4. State Management & Hooks Discipline
- **Local State Primacy:** Prefer URL state (search params) or local `useState` over global state where possible. Use Zustand or Jotai for complex cross-component global state.
- **Rules of Hooks:** Extract complex domain logic into custom hooks (`useUserData()`). Never call hooks conditionally or inside loops.

### 5. Web Vitals & Media Optimization
- **Zero-CLS Layouts:** Always use `<Image src={...} alt={...} width={...} height={...} priority />` for hero media to eliminate Cumulative Layout Shift.
- **Font Optimization:** Use `next/font` (`Geist`, `Inter`) with `subsets: ['latin']` for zero-CLS typography.
