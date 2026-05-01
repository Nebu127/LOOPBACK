# Sprint {{N}} — {{YYYY-MM-DD}}

> Cada Sprint replica internamente el ciclo Agile completo.
> Risk & Issues se gestiona como loop paralelo durante todo el Sprint.

---

## Meta del Sprint

**Sprint Goal:** _[descripción en una línea]_
**Duración:** _[fecha inicio]_ → _[fecha fin]_
**Modelo asignado:** Sonnet 4.6 (planning) · Haiku 4.5 (daily) · Opus 4.7 (review)

---

## Ciclo interno — fases Agile dentro del Sprint

```
                    ┌──────────────────────────────────────┐
  Risk & Issues ──► │  loop paralelo activo todo el Sprint  │ ──► Scrum Master
                    └──────────────────────────────────────┘
                                      │
          ┌───────────────────────────┼───────────────────────────┐
          ▼                           ▼                           ▼
   1. Requirement             2. Design                   3. Develop
   4. Test          ◄──────   5. Review    ──────►        6. Deploy
                                                          7. Launch
```

---

## 1. Requirement
**Modelo:** `Sonnet 4.6` · **Tool:** GitHub Issues + Sprint Planning

- [ ] User stories definidas y estimadas
- [ ] Criterios de aceptación escritos
- [ ] Dependencias identificadas
- [ ] Sprint Backlog cerrado

**Notas:**

---

## 2. Design
**Modelo:** `Sonnet 4.6` · **Tool:** Obsidian + agents/researcher.md

- [ ] Diseño técnico aprobado
- [ ] Componentes afectados mapeados
- [ ] Decisiones de arquitectura documentadas

**Notas:**

---

## 3. Develop
**Modelo:** `Sonnet 4.6` / `Opus 4.7` (si alta complejidad) · **Tool:** Claude Code + VS Code

- [ ] Rama de feature creada desde `main`
- [ ] Código implementado siguiendo `.claude/rules/code-style.md`
- [ ] Tests unitarios escritos junto al código
- [ ] `PostToolUse.sh` auto-commiteando cambios

**Commits clave:**

**Notas:**

---

## 4. Test
**Modelo:** `Sonnet 4.6` · **Tool:** Claude Code + `.claude/skills/security-review/`

- [ ] Tests unitarios pasando
- [ ] Tests de integración pasando
- [ ] Security review completada
- [ ] Sin regresiones detectadas

**Resultados:**

---

## 5. Review
**Modelo:** `Opus 4.7` · **Tool:** `.claude/agents/code-reviewer.md`

- [ ] Pull Request abierto
- [ ] Code review completada por `code-reviewer.md`
- [ ] Comentarios resueltos
- [ ] PR aprobado

**Feedback del review:**

---

## 6. Deploy
**Modelo:** `Haiku 4.5` · **Tool:** `.claude/commands/deploy.md` / `.claude/skills/deploy/`

- [ ] Deploy a staging completado
- [ ] Smoke tests en staging OK
- [ ] Deploy a producción completado
- [ ] Rollback plan confirmado

**Notas:**

---

## 7. Launch
**Modelo:** `Haiku 4.5` · **Tool:** GitHub Release + `.claude/commands/ship.md`

- [ ] Release tag creado en GitHub
- [ ] Changelog actualizado
- [ ] Stakeholders notificados
- [ ] Definition of Done cumplida ✅

---

## MLOps Cycle (opcional si el Sprint incluye ML/AI)
**Modelo:** Ver [[mlops-template]] · **Tool:** Claude Code + Blackbox fallback

> Si el Sprint involucra machine learning o data science, integra este ciclo MLOps.

### Arquitectura resumida

```
DATA LOOP ──► ML LOOP ──► DEV LOOP ──► OPS LOOP
     │             │           │           │
     ▼             ▼           ▼           ▼
 Curate       Experiment    Plan       Monitor
 Train        Model        Code        Alert
 Validate     Evaluate     Test        Scale
 Transform    Deploy       Deploy      Optimize
```

### Puntos de encuentro clave

1. **DATA → ML:** Transform → Experiment
2. **ML → DEV:** Deploy → Plan
3. **DEV → OPS:** Deploy → Monitor
4. **OPS → DATA:** Optimize → Curate

**Checklist rápido:**
- [ ] Datos curados y validados
- [ ] Modelo experimentado y evaluado
- [ ] Código integrado y testeado
- [ ] Sistema monitoreado y optimizado

**Notas MLOps:**

---

## ⚠️ Risk & Issues (loop paralelo)
**Modelo:** `Opus 4.7` · **Responsable:** Scrum Master
**Se revisa en cada Daily Scrum**

| # | Riesgo / Issue | Impacto | Estado | Acción |
|---|----------------|---------|--------|--------|
| 1 | | Alto/Med/Bajo | Abierto/Cerrado | |

---

## Daily Scrum log

| Día | Hecho ayer | Plan hoy | Impedimentos |
|-----|------------|----------|--------------|
| Día 1 | | | |
| Día 2 | | | |
| Día 3 | | | |

---

## Retrospectiva

**Qué salió bien:**

**Qué mejorar:**

**Acción para el próximo Sprint:**

**Dump a:** `vault/CLAUDE-SESSIONS/{{YYYY-MM-DD}}-sprint-{{N}}-retro.md`

---

## Relacionado

- [[scrum-cycle]] — flujo general del ciclo Scrum
- [[agile-vs-scrum]] — contexto de la metodología
- [[mlops-template]] — ciclo MLOps para proyectos con ML/AI
- [[dataml-template]] — loop DATA/ML detallado
- [[devops-template]] — loop DEV/OPS detallado
- [[model-routing]] — selección de modelos por fase
- [[CLAUDE-SESSIONS/{{YYYY-MM-DD}}]] — estado al cerrar este Sprint

---

## Tags

#sprint #scrum #agile #sprint-{{N}} #{{YYYY-MM}}
