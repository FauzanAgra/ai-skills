# Phase 2 — AI Rules & Design System

## Objective

Prepare project-level governance instructions for all AI coding agents (`AGENTS.md`), practical developer onboarding (`README.md`), and a consistent UI/UX design system (`DESIGN.md` + Google Stitch prompts or local HTML prototype).

---

## Step 2.1 — Create `AGENTS.md`

`AGENTS.md` defines how any AI coding assistant (Antigravity, Claude Code, Cursor, Copilot, Windsurf, ChatGPT, Aider, etc.) must operate inside the repository.

Required sections:
1. **Project Context**: Purpose, architecture overview, and required blueprint reading list (`docs/PRD.md`, `docs/ERD.md`, `docs/TECH_SPEC.md`, `docs/DESIGN.md`, `docs/TASKS.md`).
2. **Tech Stack Integrity**: Follow the approved stack; never replace frameworks, upgrade major versions, or add unapproved packages without explicit consent.
3. **Database Schema Compliance**: Strictly follow `docs/ERD.md`; never invent tables/columns; require migrations; preserve referential integrity; update `ERD.md` first when schema changes are approved.
4. **Architecture & Service Layer**: Adapt to the approved stack (e.g., for Laravel: skinny controllers, Form Requests for validation, `app/Services/` for business logic/math/external APIs, `DB::transaction()` for multi-step mutations, Policies/ownership checks for authorization).
5. **Code Quality & Pedagogical Option**: Clear naming, readable code, explicit error handling, automated tests for business logic, and concise educational explanations when the user wants a learning-first workflow.
6. **Git Commit Standards (Conventional Commits v1.2.0)**:
   - Scoped format: `<type>(<scope>): <subject>` (imperative mood, lowercase subject, no trailing period, max 72 chars, no ticket IDs in subject).
   - Examples:
     - `feat(auth): add user authentication and session guard`
     - `fix(order): prevent duplicate payment submission`
     - `refactor(wallet): extract exchange rate math into CurrencyService`
     - `test(order): add feature tests for checkout authorization`
     - `docs(spec): update technical specification`
     - `chore(env): configure local database connection`
   - **Atomic Commits**: Keep each commit focused on a single logical task, committing completed task code together with its `docs/TASKS.md` status update.
7. **Scope Guardrails**: Implement only approved requirements; no speculative features or unrelated refactors; ask before changing architecture.
8. **Task Board Maintenance (`docs/TASKS.md`)**: Read `TASKS.md` first, update `[~]` / `[x]` + completion date (`YYYY-MM-DD`), recalculate progress counters, and never claim completion without verification evidence.
9. **Testing Requirements**: Test business logic, validation, authorization boundaries, and critical flows; never delete failing tests just to pass.
10. **Security Requirements**: Validate & authorize input, prevent IDOR/privilege escalation/SQLi/XSS/CSRF/mass-assignment, never hardcode secrets, and secure file uploads & external APIs.

---

## Step 2.2 — Create `README.md`

Practical developer guide containing:
1. Project Name & Tagline
2. Project Description & Main Features
3. Approved Technology Stack
4. System Prerequisites
5. Step-by-Step Installation, `.env` Configuration, & Database Setup
6. Running the Application (Dev & Production build)
7. Running Automated Tests
8. Project Structure & Documentation Links (`docs/`)
9. Contribution & AI Agent Guidelines (`AGENTS.md`)

---

## Step 2.3 — Create `docs/DESIGN.md`

Defines the visual language of the application:
1. Design Philosophy & Brand Direction
2. Visual Identity & Color Palette (CSS tokens / Tailwind `@theme` tokens, Light & Dark Mode if required)
3. Typography & Type Scale
4. Spacing, Border Radius, Layout Rules & Grid System
5. Component Blueprints: Buttons, Forms, Navigation, Tables, Cards, Modals, Empty/Loading/Error Feedback States
6. Responsive Behavior (Mobile-First vs Desktop-First) & Accessibility

> Select colors, typography, and tokens intentionally for the specific product domain — never copy another project's palette blindly unless requested by the user.

---

## Step 2.4 — UI Prototyping Path (Ask User: Google Stitch vs Local HTML Prototype)

Offer the user two prototyping paths (or both):

### Path A: `docs/STITCH_PROMPTS.md` (Google Stitch)
Generate ready-to-paste prompts organized screen-by-screen for **Google Stitch**, strictly aligned with `PRD.md` and `DESIGN.md`:
- Authentication screens
- Home / Dashboard
- Core module list & detail screens
- Create / Edit modals or forms
- Settings / Profile / Admin screens (only relevant screens!)

**Stitch Export Handoff Rule**: If the user exports HTML/CSS screens from Google Stitch into `docs/stitch_export/` (or `docs/ref_design/`), audit the exported HTML tokens (colors, fonts, radii, spacing) and synchronize `docs/DESIGN.md` before Phase 3/4 frontend coding so Blade/JSX views match the prototype 100%.

### Path B: Local Interactive HTML Prototype
If the user prefers building the prototype directly, create a lightweight standalone HTML/CSS/JS (or Tailwind) prototype to explore layout, navigation, responsiveness, and interactions before writing production application code.

---

## Step 2.5 — AI Rules & Design Approval

Present:
- `AGENTS.md`
- `README.md`
- `docs/DESIGN.md`
- `docs/STITCH_PROMPTS.md` and/or local HTML prototype
- Summary of key design and governance decisions

### Completion Criteria
- [ ] `AGENTS.md` created with all 10 governance sections.
- [ ] `README.md` created.
- [ ] `docs/DESIGN.md` created with explicit design tokens.
- [ ] `docs/STITCH_PROMPTS.md` created or local HTML prototype reviewed.
- [ ] User approves AI rules and design direction.

**Gate:** Do **NOT** proceed to Phase 3 until the user approves the AI rules and design direction.
