# Phase 0 — Discovery & Project Kickoff

## Objective

Understand the user's raw idea and transform it into a clear, feasible, and bounded software project.

The user may describe the idea informally, incompletely, or through a collection of features. Help organize the idea rather than immediately generating documentation.

---

## Step 0.1 — Idea Understanding

First, understand:
- What problem does the application solve?
- Why does this application need to exist?
- Who experiences the problem?
- How is the problem currently solved?
- What makes the proposed application useful?
- What is the expected outcome?

Produce an initial **`Project Idea Summary`** including:
- Project overview
- Problem statement
- Proposed solution
- Main value proposition
- Initial assumptions
- Unresolved questions

> Do not present assumptions as confirmed requirements.

---

## Step 0.2 — User & Stakeholder Discovery

Identify application stakeholders (e.g., Guest, Customer, Administrator, Staff, Manager, External system, Super administrator).

For each actor, identify:
- Responsibilities
- Permissions
- Main activities
- Access boundaries

Create an initial **Actor Matrix** when appropriate.

---

## Step 0.3 — Functional Scope

Group proposed features into:
1. Core functionality
2. Supporting functionality
3. Administrative functionality
4. Integration functionality
5. Future enhancements

For each feature, determine:
- Business purpose
- User interaction
- Expected behavior
- Dependencies
- Priority
- Whether it belongs in the MVP

> Do not automatically accept every feature proposed by the user. Challenge unnecessary complexity and explain the trade-offs.

---

## Step 0.4 — MVP & Wave Planning

Organize features into development waves:

### Wave 1 — MVP
Minimum functionality required to deliver the application's primary value (e.g., Authentication, User management, Core business process, Main CRUD operations, Essential validation, Basic dashboard).

### Wave 2 — Growth
Features that improve usability, operational efficiency, and product adoption (e.g., Notifications, Reporting, External integrations, Advanced workflows, Export functionality).

### Wave 3 — Polish & Intelligence
Advanced capabilities and optimization (e.g., AI-assisted features, Advanced analytics, Automation, Performance optimization, Advanced personalization).

> Wave allocation must follow product value and business priorities, not merely technical complexity. AI features may belong in Wave 1 if they are essential to the product's primary value proposition.

---

## Step 0.5 — Technology Stack Discovery

Determine the technology stack collaboratively across:
- **Backend**: Framework, programming language, API architecture, authentication, authorization, background jobs.
- **Frontend**: Rendering approach, CSS framework, UI component strategy, JavaScript framework (if needed).
- **Database**: Relational or non-relational, database engine, data modeling approach.
- **Infrastructure**: Development environment, hosting, deployment, object storage, reverse proxy, CI/CD.
- **Development Tools**: Version control, package managers, testing framework, AI coding agents, monitoring.

Rules:
- Do not introduce unnecessary technologies.
- Prefer technologies the user already understands unless there is a strong technical reason to recommend alternatives.
- Once agreed (e.g., Laravel + Blade + Tailwind CSS + Alpine.js + MySQL), never silently replace them with another backend or frontend framework.

---

## Step 0.6 — Non-Functional Requirements

Identify relevant requirements for:
- Security
- Performance
- Scalability
- Maintainability
- Availability
- Accessibility
- Data privacy
- Backup and recovery
- Auditability

Avoid arbitrary performance targets; establish measurable targets where the project requires them.

---

## Step 0.7 — Discovery Approval

Present the final discovery summary:
1. Project overview
2. Problem statement
3. Target users & actor matrix
4. Main business processes
5. Functional scope
6. MVP definition
7. Wave 1–3 roadmap
8. Approved technology stack
9. Non-functional requirements
10. Assumptions and open questions

### Completion Criteria
- [ ] Project purpose is understood.
- [ ] Target users are identified.
- [ ] Core business processes are understood.
- [ ] MVP scope is agreed upon.
- [ ] Development waves are established.
- [ ] Technology stack is approved.
- [ ] Important non-functional requirements are identified.
- [ ] Major assumptions are validated.

**Gate:** Do **NOT** proceed to Phase 1 until the user explicitly approves the project discovery.
