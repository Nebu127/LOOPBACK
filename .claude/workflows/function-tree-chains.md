# Function Tree — Skill Chains & Agent Chains

> Las 8 funciones cognitivas del Function Tree de Jung aplicadas como framework
> de routing para skill chains y agent chains.
> Cada función responde una pregunta distinta sobre el problema.

---

## Las 8 funciones como motor de routing

| Función | Pregunta central | Propósito | Tipo de chain |
|---------|------------------|-----------|---------------|
| Se      | ¿Qué OCURRE ahora? | Monitoreo, detección, alerta | Skill chain de incidentes |
| Si      | ¿Qué FUNCIONÓ antes? | Historia, regresión, patrones | Skill chain de histórico |
| Ne      | ¿Qué PODRÍA ser? | Ideación, posibilidades | Skill chain de exploración |
| Ni      | ¿A qué LLEVARÁ? | Estrategia, inferencia | Skill chain de roadmap |
| Te      | ¿Cuál es el sistema más EFICIENTE? | Optimización, auditoría | Skill chain de performance |
| Ti      | ¿Qué es LÓGICAMENTE consistente? | Debug, root cause | Skill chain de corrección |
| Fe      | ¿Qué SIRVE a las personas? | UX, documentación | Skill chain de comunicación |
| Fi      | ¿Qué ALINEA con nuestros valores? | Ética, seguridad | Skill chain de cumplimiento |

---

## Skill Chains inspiradas en el Function Tree

### Se — “¿Qué OCURRE ahora?”
**Trigger:** alerta o incidencia en producción

```
[log-analyzer skill]      → detecta anomalías críticas
        ↓
[alert-formatter skill]   → estructura el mensaje según canal
        ↓
[notify-slack skill]     → publica alerta en #incidents
        ↓
[auto-snapshot skill]    → dumpa el estado a vault/CLAUDE-SESSIONS/
```

**Modelo:** Haiku 4.5 para velocidad, Opus 4.7 para análisis.

---

### Si — “¿Qué FUNCIONÓ antes?”
**Trigger:** regresión o bug histórico

```
[git-history skill]         → recupera commits relevantes
        ↓
[pattern-diff skill]        → compara comportamiento pasado vs actual
        ↓
[regression-locator skill]  → identifica el commit culpable
        ↓
[fix-from-history skill]    → propone rollback o patch
```

**Modelo:** Sonnet 4.6 para análisis de patrones históricos.

---

### Ne — “¿Qué PODRÍA ser?”
**Trigger:** brainstorming de producto o feature

```
[researcher.md skill]       → sintetiza fuentes y tendencias
        ↓
[possibility-mapper skill]  → crea mapa de opciones con pros/contras
        ↓
[analogy-generator skill]   → genera analogías de otros dominios
        ↓
[roadmap-seed skill]        → produce backlog inicial y hypotheses
```

**Modelo:** Opus 4.7 para creatividad estructurada.

---

### Ni — “¿A qué LLEVARÁ?”
**Trigger:** planificación estratégica o decision making

```
[data-synthesizer skill]    → unifica datos del proyecto
        ↓
[trend-inferrer skill]      → extrae patrones emergentes
        ↓
[implication-mapper skill]  → predice impactos futuros
        ↓
[strategic-brief skill]     → entrega recomendaciones a 3 sprints
```

**Modelo:** Opus 4.7 para inferencia profunda.

---

## Agent Chains por pairing funcional

### Se + Ti — “¿Qué ocurre? + ¿Por qué?”
**Caso:** Incident response completo

```
[Se-agent: monitor-agent.md]   → detecta el incidente
        ↓
[Ti-agent: debugger.md]        → root cause analysis lógico
        ↓
[Te-agent: fix-implementer.md] → propone la solución más eficiente
        ↓
[Fe-agent: comms-drafter.md]   → comunica al equipo/clientes
```

**Modelo:** Haiku para detección rápida → Opus para lógica → Sonnet para implementación.

---

### Ne + Ni — “¿Qué podría ser? + ¿A dónde llevará?”
**Caso:** estrategia de producto

```
[Ne-agent: researcher.md]     → explora el espacio de opciones
        ↓
[Ni-agent: strategist-agent.md] → infiere patrones prometedores
        ↓
[Te-agent: planner-agent.md]   → convierte en plan de ejecución
        ↓
[Fe-agent: doc-writer.md]      → documenta para el equipo
```

**Modelo:** Opus para Ne/Ni, Sonnet para Te/Fe.

---

### Si + Te — “¿Qué funcionó? + ¿Cuál es el sistema óptimo?”
**Caso:** refactor guiado por historial

```
[Si-agent: history-analyzer.md] → revisa decisiones pasadas
        ↓
[Te-agent: system-optimizer.md] → propone arquitectura óptima
        ↓
[Ti-agent: refactorer.md]       → implementa con consistencia
        ↓
[Si-agent: regression-checker.md] → valida que la historia sigue siendo válida
```

---

### Fi + Fe — “¿Qué alinea con valores? + ¿Qué sirve a personas?”
**Caso:** auditoría de seguridad + UX

```
[Fi-agent: security-auditor.md]   → prioriza ética y compliance
[Fe-agent: user-researcher.md]    → mide impacto en usuarios
[Ti-agent: code-reviewer.md]      → revisa consistencia técnica
        ↓
[Aggregator: Sonnet 4.6]          → produce reporte unificado
        ↓
[Te-agent: fix-planner.md]        → define plan de remediación
```

---

## Relacionado

- [[skills.md]]
- [[agent-configuration]]
- [[skill-chain-examples]]
- [[agent-chain-examples]]
- [[agent-team-patterns]]
- [[model-routing]]

---

## Tags
#function-tree #skill-chain #agent-chain #jung #routing #claude-code