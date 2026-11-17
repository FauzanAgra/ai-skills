# Phases 3 to 5 — Foundation Setup, Implementation, & QA Delivery

---

## Phase 3 — Foundation Setup

### Objective
Prepare the development environment and initialize the application skeleton according to the approved architecture.

### Steps
1. **Step 3.1 — Environment Verification**: Verify language version, framework version, package managers, database availability, extensions, `.env` variables, and Git repository. Never assume the environment is ready.
2. **Step 3.2 — Project Initialization**: Initialize the framework without overwriting existing `docs/` or `AGENTS.md`, configure `.env` & `.env.example`, generate app keys, configure frontend bundler/CSS tokens from `DESIGN.md`, and install only approved dependencies.
3. **Step 3.3 — Foundation Architecture**: Establish directory structure (e.g., `app/Services/`), database connection, auth & authorization foundation, base layout shell, and testing configuration.
4. **Step 3.4 — Verify Foundation**: Verify app boot, DB connection, initial migrations, auth smoke tests, asset build, and automated test runner.
5. **Step 3.5 — Update Documentation**: Synchronize `docs/TASKS.md`, `README.md`, `docs/TECH_SPEC.md`, and ADRs if any setup details evolved.

### Completion Criteria & Gate
- [ ] Environment verified & repository initialized cleanly.
- [ ] Application boots, builds assets, connects to DB, and passes base tests.
- [ ] Foundation tasks marked `[x]` in `docs/TASKS.md`.
- **Gate:** Do **NOT** begin feature implementation until foundation verification passes.

---

## Phase 4 — Incremental Implementation

### Objective
Implement features incrementally using `docs/TASKS.md` as the primary execution board.

### Step 4.1 — Task Selection
Before coding each task:
1. Read `docs/TASKS.md` and pick the next unblocked task.
2. Cross-check `PRD.md`, `ERD.md`, `TECH_SPEC.md`, `DESIGN.md`, and `AGENTS.md`.
3. Work on one logical unit (or tightly coupled module slice) at a time.

### Step 4.2 — Implementation Cycle
1. Understand requirement & inspect existing code.
2. Plan affected components (Models, Migrations, Services, Requests, Controllers, Views).
3. Implement clean, well-structured code adhering to `AGENTS.md`.
4. Write/update automated tests covering happy paths, validation, edge cases, and authorization (`403`).
5. Run relevant tests & frontend build (`npm run build`, test runner).
6. Update `docs/TASKS.md` (`[x]`, completion date, recalculated progress counter) and provide an atomic Conventional Commit.

### Step 4.3 — Self Code Review
Verify correctness, maintainability, IDOR/auth boundaries, `DB::transaction()` consistency, N+1 query avoidance, and framework conventions. Ask the user whenever a requirement is ambiguous.

### Step 4.4 — Wave Completion Gate
At the end of each Wave (Wave 1 MVP, Wave 2 Growth, Wave 3 Polish):
- Run the full regression test suite and production asset build.
- Verify all acceptance criteria for the wave.
- Present a concise Wave Completion Report and confirm with the user before starting the next wave.

---

## Phase 5 — Quality Assurance & Delivery

### Objective
Ensure the application is reliable, secure, performant, and ready for publication or deployment.

### Steps
1. **Step 5.1 — Functional Testing**: Verify end-to-end workflows, auth, authorization, validation, CRUD, and edge cases.
2. **Step 5.2 — Security Review**: Audit IDOR, privilege escalation, SQL injection, XSS (including framework/JS attribute escaping), CSRF, mass assignment, file upload validation, secret hygiene (`.env` ignored, no leaked keys), and safe logging.
3. **Step 5.3 — Performance Review**: Check eager loading (`with()`), database indexes, caching, background jobs/schedulers, and production asset bundle build.
4. **Step 5.4 — User Acceptance Testing (UAT)**: Compare implemented screens and flows against `PRD.md` acceptance criteria and `DESIGN.md`. Optionally document in `docs/testing/TEST_PLAN.md` & `UAT.md` when warranted.
5. **Step 5.5 — Deployment & Repository Preparation**: Prepare `.env.example`, migration/seed runbook, storage symlinks, scheduler/queue instructions, backup/rollback notes, and `LICENSE` if open-sourcing.
6. **Step 5.6 — Final Documentation Sync**: Ensure `README.md`, `PRD.md`, `ERD.md`, `TECH_SPEC.md`, and `TASKS.md` (100% completed) are accurate and up to date.

---

## Reference Default Directory Structure

Adapt to the chosen framework and project complexity (do not create empty unused folders):

```text
project-root/
├── AGENTS.md
├── README.md
├── LICENSE
├── docs/
│   ├── PRD.md
│   ├── ERD.md
│   ├── TECH_SPEC.md
│   ├── TASKS.md
│   ├── DESIGN.md
│   ├── STITCH_PROMPTS.md
│   ├── adr/
│   │   ├── README.md
│   │   └── 0001-initial-decisions.md
│   └── testing/
│       ├── TEST_PLAN.md
│       └── UAT.md
└── <framework source, database, tests, public directories>
```
