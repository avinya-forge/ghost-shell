# Skill: UI/UX Pro Max & 21st.dev Magic Server Design Intelligence

## Goal
Provide enterprise-grade UI/UX design intelligence, automated design system generation, product-specific reasoning rules, searchable style taxonomy, color palette matching, typography pairings, and 21st.dev MCP component discovery across web, mobile, and desktop applications.

---

## Core Capabilities & Features

### 1. Intelligent Design System Generator (v2.0 Reasoning Engine)
- **Multi-Domain Synthesis:** Automatically analyzes project briefs and generates a complete, tailored design system (`design-system/MASTER.md`) in seconds.
- **192 Product Categories:** Industry-specific reasoning rules for Tech/SaaS, Fintech/Crypto, Healthcare, E-Commerce, Services, Creative Portfolios, and Emerging Tech (Web3/AI).
- **Master + Overrides Pattern:** Saves a global `design-system/MASTER.md` source of truth along with optional page-specific override files (`design-system/pages/<page-name>.md`) for complex applications.

### 2. 192 Industry-Specific Reasoning Rules & Anti-Pattern Filtering
- **Domain Matching:** Automatically aligns color moods, typography personalities, and landing page patterns to the target industry.
- **Anti-Pattern Elimination:** Strictly filters out inappropriate UI choices (e.g. prohibiting generic "AI purple/pink gradients" or festive bright neon schemes in institutional banking or medical software).

### 3. 79 Searchable UI Styles (50 Active Set)
- **Visual Taxonomy:** Glassmorphism, Claymorphism, Minimalism, Brutalism, Neumorphism, Bento Grid, Dark Mode, AI-Native UI, Soft UI Evolution, Modern SaaS, Fluent 2, Shopify Polaris, Adobe Spectrum, and more.
- **BM25 Search Engine:** Built-in Python BM25 search engine matches user intent to curated visual styles, 192 color palettes, and 74 Google Font pairings.

### 4. Premium & Production-Ready Design Principles (Apple-Inspired)
- **Premium Typography & Text Formats:** Use variable fonts (e.g., SF Pro, Inter, Roboto Flex), fluid typography, and optical sizing. Apply precise line-heights and tracking adjustments. Utilize `text-wrap: balance` for headings and `text-wrap: pretty` for long-form content to ensure a premium reading experience. Keep font sizes simple and optimized for legibility.
- **Lightweight & Simple Layouts:** Maximize screen real estate with edge-to-edge designs and modern bento grids. Better fit pages on the screen without unnecessary scrolling. Employ generous macro and micro whitespace to avoid clutter and let the content breathe. Maintain an ultra-minimalist, purposeful, and incredibly lightweight architectural structure to mitigate frontend performance bottlenecks.
- **Animations & Micro-interactions:** Implement silky-smooth, physics-based (spring) animations. Optimize all animations to be hardware-accelerated (e.g., using `transform` and `opacity`) ensuring high performance without frame drops. Use scroll-triggered reveals. Motion should feel natural, responsive, and never abrupt.
- **Visual Language & Depth:** Apply subtle glassmorphism (backdrop blurs), soft deep shadows for elevation, and 1px low-opacity borders (e.g., `border-white/10` or `border-black/5`). Strive for a premium, high-quality finish matching the latest industry aesthetics.

### 5. Rigorous UI Audit & Flaw Resolution Protocol
Transform legacy or basic UIs into highly attractive, production-ready makeovers by thoroughly and rigorously auditing minute details across the entire frontend:
- **Proactive UI Bug Hunting:** Actively hunt for hidden, unknown, or edge-case UI/UX issues that might not be immediately obvious. Ensure the design is truly production-ready without layout shifts, overflow bugs, or broken states.
- **Comprehensive Element Inspection & Headroom Management:** Meticulously check each tab, navigation bar menu, page, and individual link. To maintain efficient context headroom, chunk large pages and analyze them component-by-component. Ensure all interactive states (hover, focus, active) are consistent and visually appealing.
- **Orientation & Layout Validation:** Check the orientation and alignment for each card, list item, and media container. Verify that items scale and fit perfectly on the screen across all viewports.
- **Visual Clutter Analysis:** Identify and remove unnecessary dividers, borders, and backgrounds. Replace with whitespace and structural alignment to ensure the UI feels completely unburdened.
- **Spacing & Alignment Check:** Enforce strict adherence to a 4px/8px spatial grid system. Resolve inconsistent paddings, margins, and off-by-one pixel errors to guarantee pixel-perfect execution.
- **Typography & Hierarchy Review:** Ensure correct font weight scaling and simple, legible font sizes. Check color contrast for primary, secondary, and tertiary text layers to establish a clear visual hierarchy.
- **Premium Makeover Transformation:** Upgrade the overall attractiveness by integrating the premium design principles, ensuring a polished, deeply scrutinized, modern, and high-end feel that solves all existing visual flaws.

### 6. Design Taste & Aesthetics Skill
- **Cultivating Premium Taste:** Exercise high visual judgment by curating sophisticated, cohesive color palettes and refined typography pairings.
- **Anti-AI-Slop Principle:** Strictly avoid generic, over-designed, or cluttered visual elements. Prioritize elegance, subtlety, and modern taste over loud, aggressive gradients or disjointed themes.

### 7. Modern UI Techniques & State Management
- **Loading & Skeleton Templates:** Implement skeleton screen loaders (shimmer effects) for data-fetching states to reduce perceived latency and prevent jarring layout shifts.
- **Error & Empty States:** Ensure resilient, beautifully designed fallback states (e.g., "Network Not Available", 404, 500 errors). Always provide polished empty state templates for grids, lists, and dashboards that clearly guide user next steps.
- **Basic Templates Availability:** Maintain an accessible library of essential, premium layout templates (dashboards, auth screens, settings) to establish a strong architectural foundation instantly.

### 8. 21st.dev Magic Server Integration (MCP)
- **Real-Time Component Discovery:** Seamlessly connects to the 21st.dev MCP endpoint (`https://21st.dev/api/mcp`) for discovering production-ready React/Tailwind magic UI components, animated buttons, hero sections, and interactive cards.
- **Header Authentication:** Configures `x-api-key` header (supported via `TWENTYFIRST_API_KEY` environment variable).

---

## Installation & CLI Setup

### Assistant Initialization Commands
```bash
# Install CLI globally or execute via npx
npm install -g ui-ux-pro-max-cli

# Initialize across AI assistants
uipro init --ai all
# or for universal agents:
uipro init --ai universal
```

### Direct Search & Design System Commands
```bash
# Generate design system with ASCII or Markdown output
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "SaaS dashboard" --design-system -p "MyProduct" -f markdown

# Persist to design-system/MASTER.md
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "fintech banking" --design-system --persist -p "MyApp"

# Search by domain or stack
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "glassmorphism" --domain style
python3 .claude/skills/ui-ux-pro-max/scripts/search.py "form validation" --stack react
```

---

## Pre-Delivery Verification Checklist

Enforce this checklist before finalizing any generated UI or layout:
- [ ] **No Emojis as Icons:** Replace all emoji icons with standard SVG iconography (Lucide, Heroicons, Phosphor).
- [ ] **Clickable Indicators:** Ensure explicit `cursor-pointer` on all interactive chips, buttons, and rows.
- [ ] **WCAG 2.1 AA Compliance:** Minimum 4.5:1 text contrast ratio for body text; visible focus rings for keyboard navigation.
- [ ] **Resilient Text & Line Balancing:** Apply `text-wrap: balance` for headings; ensure badges, chips, and tags reflow without text clipping or overflow across breakpoints (375px, 768px, 1024px, 1440px).
- [ ] **Premium Typography Scaling:** Verify fluid typography scales correctly across mobile and desktop.
- [ ] **Pixel-Perfect Alignment:** Confirm strict adherence to the spatial grid and ensure consistent border radii across all elements.
- [ ] **Silky-Smooth Performance:** Verify scroll performance and ensure animations/transitions are hardware-accelerated, natural, and not jarring.
- [ ] **Reduced Motion Support:** Respect `prefers-reduced-motion` and ensure micro-interactions fail safely during rapid user input.
