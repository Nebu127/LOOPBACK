# CLAUDE.md — Operating Manual

---

## Philosophy

- No speculative features. Build what's needed, not what might be needed.
- Justify every new dependency. If unsure, don't add it.
- Remove dead code. Finish the job — no half-completed refactors.
- Prefer boring solutions over clever ones.

## Hard Limits

- Functions ≤ 100 lines. If longer, split it.
- Cyclomatic complexity ≤ 8.
- Lines ≤ 100 characters.
- No `rm -rf`. Use trash. No `--force` on git push.

## Toolchain

```bash
bun run typecheck  # Always run before commit
bun run lint      # Lint check
bun run test      # Run tests
```

## Git

- Feature branches + PRs. Never push to main directly.
- Commits: imperative mood, ≤ 72 chars.
- Use trash, never `rm -rf`.
- Conventional commit format: type(scope): description

## Model Routing

- Rules cargan solo cuando Claude toca el path correspondiente.
- Mantén CLAUDE.md lean. El startup cost debe ser mínimo.
- Ejemplo: app/api/** carga `.claude/rules/api.md`, src/db/** carga `.claude/rules/database.md`.

→ Ver .claude/rules/model-routing.md

## Available Agents

- code-reviewer — Revisa diffs, devuelve resumen
- security-auditor — Auditoría de seguridad
- researcher — Web fetch y síntesis
- log-analyzer — Parsea errores y crash logs

→ Ver .claude/workflows/agents/

## Available Skills

- security-review — Auditoría de seguridad
- deploy — Workflow de despliegue
- carousel — Auto-factory para IG carousels
- drill — Genera ejercicios de práctica

→ Ver .claude/workflows/skills/

## Hooks

- PreToolUse: bloquea rm -rf
- PostToolUse: prettier --write en Edit/Write
- Stop: bun run lint --silent

→ Ver .claude/hooks/

---

_Actualizado: 2025-04-29_
