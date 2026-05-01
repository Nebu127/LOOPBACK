# CLAUDE.md — operating manual
# Copia esto a la raíz del proyecto. Mantener < 200 líneas.
# NO es el system prompt — es user content que Claude lee cada sesión.

---

# Development Standards

## Philosophy
- No speculative features. Build what's needed.
- Justify cada dependencia.
- Remove dead code. Finish the job.
- Boring solutions win.

## Hard Limits
- Functions ≤ 100 líneas.
- Cyclomatic complexity ≤ 8.
- Líneas ≤ 100 caracteres.
- No `rm -rf`. Use trash.
- No `git push --force`.

## Toolchain
```
bun run typecheck
bun run test -- -t "name"
bun run lint && bun run test
```

## Git
- Feature branches + PRs.
- Commits imperativos, ≤ 72 chars.
- Conventional commit format: type(scope): description.

## Path-scoped rules (carga solo para archivos del path)
- API routes → .claude/rules/api.md (app/api/**)
- Database → .claude/rules/database.md (src/db/**)
- Frontend → .claude/rules/frontend.md (src/components/**)
- Model routing → .claude/rules/model-routing.md (**)
- Code style → .claude/rules/code-style.md (**)

## Agentes disponibles
- code-reviewer · debugger · test-writer · refactorer · doc-writer · security-auditor
- → Ver .claude/workflows/agents/

## Skills disponibles
- commit-push-pr · review-pr · deploy · security-review · model-selector
- → Ver .claude/workflows/skills/

## Hooks activos
- PreToolUse: bloquea rm -rf /
- PostToolUse: prettier --write en Edit/Write
- Stop: bun run lint --silent
- SessionStart: carga vault/CLAUDE-SESSIONS/current-sprint.md

---

_Sprint: {{N}} · Actualizado: {{YYYY-MM-DD}}_
