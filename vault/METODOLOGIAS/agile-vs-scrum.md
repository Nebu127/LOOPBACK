# Agile vs Scrum

> Scrum es un framework que implementa los principios Agile.
> Agile es la filosofía; Scrum es la estructura de ejecución.

---

## Ciclo Agile — fases del loop continuo

```
Requirement → Design → Develop → Test → Review → Deploy → Launch
     ▲                                                        │
     └────────────────── feedback loop ─────────────────────┘
```

| Fase        | Descripción                                        |
|-------------|-----------------------------------------------------|
| Requirement | Captura y priorización de necesidades del negocio   |
| Design      | Arquitectura, UX, decisiones técnicas               |
| Develop     | Implementación del código                           |
| Test        | Validación funcional y de calidad                   |
| Review      | Revisión del incremento con stakeholders            |
| Deploy      | Entrega al entorno de producción                    |
| Launch      | Comunicación, release, cierre del ciclo             |

---

## Estructura Scrum — marco de ejecución

```
Preparation ──► Sprint ──► Release
                  │
                  ▼
          [ciclo Agile interno]
          + Risk & Issues loop
```

| Fase        | Contenido                                           |
|-------------|-----------------------------------------------------|
| Preparation | Product Backlog, Sprint Planning, Sprint Backlog    |
| Sprint      | Loop Agile completo (1–4 semanas) + Daily Scrum     |
| Release     | Integrated & Tested Product Component               |

---

## Clave: el Sprint copia el ciclo Agile

Cada Sprint no es una caja negra — internamente recorre
todas las fases Agile en miniatura:

```
Sprint N
├── Requirement  → user stories del Sprint Backlog
├── Design       → decisiones técnicas del incremento
├── Develop      → implementación
├── Test         → validación
├── Review       → Sprint Review con stakeholders
├── Deploy       → merge a main + deploy a staging/prod
└── Launch       → release tag + changelog
```

El loop de **Risk & Issues** (exclusivo de Scrum) corre en paralelo
durante todo el Sprint, gestionado por el Scrum Master en cada
Daily Scrum.

---

## Cuándo usar cada uno

| Situación                             | Recomendación        |
|---------------------------------------|----------------------|
| Equipo pequeño, entregas frecuentes   | Scrum                |
| Producto con roadmap muy cambiante    | Scrum                |
| Proyecto con fases bien definidas     | Agile puro / Kanban  |
| Equipo distribuido, múltiples streams | Scrum + SAFe         |

---

## Integración con Claude Code

| Fase Agile  | Fase Scrum         | Modelo       | Tool                          |
|-------------|--------------------|--------------|------------------------------ |
| Requirement | Preparation        | Sonnet 4.6   | GitHub Issues + Sprint Plan   |
| Design      | Sprint (día 1-2)   | Sonnet 4.6   | agents/researcher.md          |
| Develop     | Sprint (cuerpo)    | Sonnet / Opus| Claude Code + VS Code         |
| Test        | Sprint (final)     | Sonnet 4.6   | skills/security-review/       |
| Review      | Sprint Review      | Opus 4.7     | agents/code-reviewer.md       |
| Deploy      | Sprint → Release   | Haiku 4.5    | skills/deploy/ + commands/    |
| Launch      | Release            | Haiku 4.5    | commands/ship.md              |
| Risk/Issues | Loop paralelo      | Opus 4.7     | Daily Scrum + Scrum Master    |

---

## Relacionado

- [[scrum-cycle]] — detalle del ciclo Scrum
- [[sprint-template]] — template de Sprint con fases Agile internas
- [[model-routing]] — selección de modelos por fase

---

## Tags

#agile #scrum #metodologia #comparativa #proceso
