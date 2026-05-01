# Model Routing Decisions — Log

> Registro de decisiones de routing de modelos. Rastrear qué modelo se usó para cada tipo de tarea y por qué.

---

## Formato

```
## [YYYY-MM-DD HH:mm] — [Fase]

**Tarea:** {{descripción}}
**Modelo elegido:** {{modelo + proveedor}}
**Razón:** {{por qué se eligió este modelo}}
**Alternativa descartada:** {{qué se consideró y por qué no}}
**Resultado:** {{breve nota de cómo salió}}
**Tokens consumidos:** {{aproximado}}

---
```

---

## Ejemplos

### [2026-04-30 09:15] — Product Backlog Refinement

**Tarea:** Priorizar y describir 12 user stories para Sprint N+1
**Modelo elegido:** Claude Sonnet 4.6 (Anthropic)
**Razón:** Balance perfecto IQ 48 / 78 t/s para análisis narrativo. Buen contexto con .claude/ cargado.
**Alternativa descartada:** Gemini 3.1 Pro (117 t/s sería overkill para refinement puro)
**Resultado:** Completado en 8 min. Historias bien priorizadas.
**Tokens consumidos:** ~12,000

---

### [2026-04-30 13:30] — Sprint Planning

**Tarea:** Estimar puntos de story y crear Sprint Backlog
**Modelo elegido:** Claude Sonnet 4.6 (Anthropic)
**Razón:** Contexto del proyecto disponible en .claude/. IQ suficiente para estimación colaborativa.
**Alternativa descartada:** Haiku 4.5 (muy rápido pero IQ 35 insuficiente para decisiones de alcance)
**Resultado:** 8 historias estimadas, Sprint Goal claro.
**Tokens consumidos:** ~8,500

---

### [2026-04-30 16:45] — Code Review (Sprint Review)

**Tarea:** Revisar 340 líneas de código, detectar bugs, sugerir refactors
**Modelo elegido:** Claude Opus 4.7 (Anthropic) + agent: code-reviewer.md
**Razón:** SWE 87.6% con scaffold — máxima calidad. Sprint Review es punto crítico.
**Alternativa descartada:** Sonnet 4.6 (79.6% suficiente, pero Opus merece el tiempo extra)
**Resultado:** 5 bugs encontrados, 3 refactors sugeridos. 1 issue de seguridad crítica.
**Tokens consumidos:** ~18,000

---

### [2026-05-01 09:00] — Daily Scrum Report

**Tarea:** Generar resumen de 24h para el equipo
**Modelo elegido:** Claude Haiku 4.5 (Anthropic)
**Razón:** Velocidad IQ 35 / 66 t/s. Tarea repetitiva, baja complejidad. Bajo costo (24 veces/día).
**Alternativa descartada:** Sonnet (sobrecualificado y 3x más caro)
**Resultado:** Report generado en 45s. Formato estándar, listo para Slack.
**Tokens consumidos:** ~2,000

---

## Análisis acumulado

```
Totales hasta ahora:
- Tareas completadas: 4
- Tokens promedio por tarea: ~10,125
- Modelo más usado: Sonnet 4.6 (50%)
- Modelo máxima calidad usado: Opus 4.7 (25%)
- Modelo velocidad usado: Haiku 4.5 (25%)

Coste estimado:
- Claude Sonnet 4.6: 8.5k * $0.003/1k = $0.0255
- Claude Opus 4.7: 18k * $0.015/1k = $0.27
- Claude Haiku 4.5: 2k * $0.0008/1k = $0.0016
- TOTAL: ~$0.297
```

---

## Cuándo actualizar este archivo

- Cada Sprint Review
- Cuando ocurra un fallback a otro modelo (Gemini, GPT, etc.)
- Cuando se justifique usar Opus 4.7 (guardrail de "solo si es necesario")
- Cuando experimentes con un modelo nuevo

---

## Wikilinks

- [[model-routing]] — decisiones de qué modelo usar
- [[scrum-cycle]] — fases donde ocurren estas decisiones
- [[CLAUDE-SESSIONS/]] — dumps de contexto para fallbacks

---

## Tags

#model-routing #log #decisiones #análisis
