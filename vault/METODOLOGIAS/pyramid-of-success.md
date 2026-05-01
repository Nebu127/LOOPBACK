# Claude Code Pyramid of Success

> Checklist de lanzamiento con 5 capas. Cada capa es requisito de la siguiente.

---

## BASE — Cornerstones

- `CLAUDE.md` existe, es lean y está en la raíz.
- `.mcp.json` en raíz del proyecto, secrets via `${ENV_VAR}`.
- Auto-commit / PostToolUse hook activo.
- Hooks determinísticos: PreToolUse, PostToolUse, Stop, SessionStart.
- Fast Dev Loop: lint + tests en el workflow.

---

## CAPA 2 — Plan Mode y Verification

- One goal por sesión.
- Specs claros antes de codificar.
- Tests verdes antes de merge.
- `settings.json` con deny siempre gana.
- Scope discipline: no refactor side-quests.

---

## CAPA 3 — Context Hygiene

- Compacta contexto con frecuencia.
- Edit, don't stack.
- Prompts con anatomía de 7 capas.
- Subagent orchestration para tareas paralelas.

---

## CAPA 4 — Checkpoints y Trust

- Dumps a `vault/CLAUDE-SESSIONS/` antes de cambiar de modelo.
- Hooks tight y CLAUDE.md sharp.
- Git limpio antes de sesiones largas.
- Confianza en el sistema: Claude puede operar sin que lo dudes.

---

## CAPA 5 — Agentic Flow

- Agents definidos para tareas fuera del contexto principal.
- Agentes pueden reanudar si fallan.
- Fallbacks mapeados.
- Orquestación de agents/skill chains con handoff claro.

---

## Checklist de lanzamiento

```
[ ] CLAUDE.md < 200 líneas
[ ] .mcp.json template creado
[ ] settings.json con deny wins
[ ] Hooks configurados y funcionando
[ ] Auto-commit activo
[ ] Prompt anatomy aplicada
[ ] Skill/agent chains documentados
[ ] Vault dumps antes de cambiar modelo
[ ] Shipped code con tests verdes
```

---

## Relacionado

- [[_index]]
- [[api-protocols]]
- [[prompt-setup-guide]]
- [[function-tree-chains]]

---

## Tags
#pyramid #checklist #claude-code #quality