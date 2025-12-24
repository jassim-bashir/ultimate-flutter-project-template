# Contributing to Flutter Ultimate Engineering Template

Thank you for your interest in contributing.

This repository is a **Flutter engineering platform**, not a demo or tutorial.  
All contributions must preserve architectural integrity, long-term maintainability, and production readiness.

---

## CONTRIBUTION PHILOSOPHY

Contributions must:
- Improve correctness, clarity, or scalability
- Preserve architectural boundaries
- Avoid unnecessary abstraction or overengineering
- Be applicable to *most* Flutter applications

This repository favors **stability over novelty**.

---

## WHAT KIND OF CONTRIBUTIONS ARE ACCEPTED

### Accepted
- Bug fixes
- Documentation improvements
- Architecture clarifications
- Performance improvements
- Test coverage improvements
- Cross-platform robustness fixes
- Tooling and automation improvements

### Not Accepted
- Breaking architectural rules
- Feature-specific business logic
- Opinionated UI changes
- Framework or state-management replacements
- Experimental patterns without strong justification

---

## ARCHITECTURAL RULES (NON-NEGOTIABLE)

- No UI → Data direct dependencies
- No Flutter imports in Domain layer
- No cross-feature imports
- No hardcoded UI values
- No global mutable state
- No hidden singletons

Pull requests violating these rules will be rejected.

---

## DEVELOPMENT SETUP

1. Fork the repository
2. Create a feature branch
3. Run `flutter analyze`
4. Run all tests
5. Ensure formatting (`dart format`)
6. Submit a pull request

---

## PULL REQUEST GUIDELINES

Each PR must include:
- Clear description of the change
- Motivation and reasoning
- Impact assessment
- Tests (where applicable)

Small, focused PRs are preferred.

---

## CODE REVIEW PROCESS

- All PRs require review
- Architectural feedback takes priority
- Changes may be requested before merge

---

## COMMUNICATION

Be respectful and professional.  
Disagreements should be resolved through technical reasoning, not preference.

---

Thank you for helping keep this repository high quality.
