# Claude Ecosystem

> Mapa completo del ecosistema Claude en el proyecto.
> Work modes, context system, integraciones y artefactos.

---

## Work Modes

- Chat: conversación general y clarificación.
- Cowork: iteración colaborativa sobre tareas específicas.
- Code: edición y refactor con hooks de herramientas.
- Projects: workflows y agents orquestados para resultados grandes.

---

## Para equipos

- Team Plan: roles claros, shared prompts y repositorios comunes.
- Enterprise: seguridad, compliance y gestión de políticas.
- Shared Projects: vaults compartidos, .mcp.json central, control de acceso.

---

## Context System

- Markdown files: `vault/`, `CLAUDE.md`, `vault/CLAUDE-SESSIONS/`.
- AskUserQuestion: siempre antes de suponer en tareas ambiguas.
- Ventana de 1M tokens: usar para contexto crítico, no para ruido.
- Global Instructions: `CLAUDE.md` + scope rules.

---

## Create

- Artifacts: docs, templates, código, dumps.
- Skills: workflows repetibles con frontmatter.
- Prompt templates: guías y ejemplos reutilizables.

---

## Integraciones

- Excel / Sheets: datos tabulares, reporting.
- Chrome / browser: scraping y pruebas UI.
- Connectors: GitHub, Slack, Supabase.
- Plugins: herramientas especializadas dentro de Claude.

---

## Relacionado

- [[api-protocols]]
- [[prompt-setup-guide]]
- [[skills.md]]
- [[agent-configuration]]
- [[model-routing]]

---

## Tags
#ecosystem #context #integration #claude-code