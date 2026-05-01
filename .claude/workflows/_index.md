# workflows/ — Automation Framework

> Carpeta central para workflows automatizados: skills, agents, chains y teams.
> Engloba y redefine skills/ y agents/ con documentación avanzada.
> Nivel 5x-50x del framework Claude Code.

---

## Estructura

```
.claude/workflows/
├── prompt-setup-guide.md     ← base para escribir prompts efectivos
├── skills.md                 ← plantilla y guía para skills (5x)
├── skill-chain-examples.md   ← chains de skills (10x)
├── agent-configuration.md    ← configuración de agentes (20x)
├── agent-chain-examples.md   ← chains de agentes (20x+)
├── agent-team-patterns.md    ← equipos paralelos (50x)
├── function-tree-chains.md    ← chains basados en el Function Tree
├── CONFIG/                   ← plantillas y configuraciones
├── skills/                   ← carpeta con skills reales
└── agents/                   ← carpeta con agentes reales
```

---

## Niveles de automatización

| Nivel | Tipo              | Duración | Contexto | Ejemplo |
|-------|-------------------|----------|----------|---------|
| 5x    | Skill individual  | <5 min   | Compartido| Security review |
| 10x   | Skill Chain       | Minutos  | Compartido| Code review pipeline |
| 20x   | Agent individual  | >5 min   | Aislado  | Researcher |
| 20x+  | Agent Chain       | Horas    | Aislado  | Security audit pipeline |
| 50x   | Agent Team        | Días     | Paralelo  | Full dev team |

---

## Cómo usar

1. **Prompts básicos:** Lee `prompt-setup-guide.md` antes de cualquier prompt
2. **Skills simples:** Usa `skills.md` para crear workflows reutilizables
3. **Chains:** Elige `skill-chain-examples.md` o `agent-chain-examples.md`
4. **Equipos complejos:** Sigue `agent-team-patterns.md` para paralelismo
5. **Referencia:** Skills/ y agents/ contienen implementaciones reales

---

## Relacionado

- [[../rules/model-routing]] — qué modelo usar en cada workflow
- [[../../vault/METODOLOGIAS/]] — metodologías que usan estos workflows
- [[../CLAUDE.md]] — integración con el proyecto

---

## Tags
#workflows #automation #claude-code #5x-50x