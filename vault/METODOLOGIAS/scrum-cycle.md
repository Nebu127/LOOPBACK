# Scrum Cycle

> Metodología ágil de desarrollo por sprints con ciclo diario de sincronización.

---

## Roles

| Rol            | Responsabilidad                                          |
|----------------|----------------------------------------------------------|
| Product Owner  | Define y prioriza el Product Backlog                     |
| Scrum Team     | Ejecuta las tareas del Sprint Backlog                    |
| Scrum Master   | Facilita el proceso, elimina impedimentos                |

---

## Flujo del ciclo

```
Product Backlog
      │
      ▼
Sprint Planning  ──►  Sprint Backlog
                             │
                             ▼
                    ┌─── Sprint (1–4 semanas) ───┐
                    │                            │
                    │    ◄── Daily Scrum         │
                    │        24hrs Cycle         │
                    └────────────────────────────┘
                             │
                             ▼
                  Integrated & Tested Product Component
```

---

## Artefactos

### 📋 Product Backlog
- Lista ordenada de todo lo que el producto necesita.
- Gestionado exclusivamente por el **Product Owner**.
- Vivo: se refina continuamente.

### 📋 Sprint Planning
- Evento que abre cada Sprint.
- El equipo selecciona ítems del Product Backlog.
- Resultado: Sprint Goal + Sprint Backlog acordado.

### 📋 Sprint Backlog
- Subconjunto del Product Backlog seleccionado para el Sprint.
- Propiedad del **Scrum Team**.
- No se modifica una vez iniciado el Sprint.

---

## Sprint

- **Duración:** 1 a 4 semanas (timeboxed, no se extiende).
- **Ciclo interno:** Daily Scrum cada 24 horas.
- **Output:** Incremento potencialmente entregable.

---

## Daily Scrum (24hrs Cycle)

Reunión diaria de **15 minutos** facilitada por el Scrum Master.

Tres preguntas:
1. ¿Qué hice ayer que ayudó al Sprint Goal?
2. ¿Qué haré hoy para contribuir al Sprint Goal?
3. ¿Hay algún impedimento que me bloquee?

---

## Output final

**Integrated & Tested Product Component**
- Incremento integrado con el producto existente.
- Cumple la Definition of Done acordada por el equipo.
- Potencialmente shippeable al final de cada Sprint.

---

## Integración con el stack Claude Code

| Fase Scrum         | Herramienta                    | Modelo sugerido        |
|--------------------|--------------------------------|------------------------|
| Product Backlog     | GitHub Issues / Projects       | Sonnet 4.6             |
| Sprint Planning     | Obsidian + CLAUDE-SESSIONS/    | Sonnet 4.6             |
| Sprint Backlog      | GitHub Issues (milestone)      | Haiku 4.5              |
| Daily Scrum         | Slack / Claude Code en Slack   | Haiku 4.5              |
| Sprint Review       | Claude Code — code-reviewer.md | Opus 4.7               |
| Sprint Retrospectiva| Obsidian + researcher.md agent | Sonnet 4.6             |

---

## Referencias cruzadas

- [[model-routing]] — qué modelo usar en cada fase
- [[CLAUDE-SESSIONS/]] — dumps de estado entre sprints
- [[agents/code-reviewer.md]] — revisión al cierre de Sprint
- [[hooks/PostToolUse.sh]] — auto-commit al final de cada tarea

---

## Tags

#scrum #agile #metodologia #proceso #proyecto
