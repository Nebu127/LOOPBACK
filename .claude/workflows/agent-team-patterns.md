# Agent Team Patterns

> Un agent team coordina 4+ agentes en paralelo.
> Workforce paralela con pipeline completo de operaciones.
> Nivel 50x del framework Claude Code.

---

## Arquitectura de un equipo de agentes

```
            [Orchestrator Agent]
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
  [Agent A]    [Agent B]   [Agent C]    ← corren en paralelo
        │           │           │
        └───────────┼───────────┘
                    ▼
            [Aggregator Agent]          ← consolida resultados
                    │
                    ▼
              [Output final]
```

---

## Patrón 1 — Parallel Research Team (50x)

**Caso de uso:** investigación exhaustiva en múltiples dominios
**Agentes:** 4 paralelos + 1 orchestrator

```
[Orchestrator]
  ├── [researcher-tech.md]     → fuentes técnicas y papers
  ├── [researcher-market.md]   → análisis de mercado
  ├── [researcher-legal.md]    → implicaciones regulatorias
  └── [researcher-ops.md]      → viabilidad operacional
          │ (todos terminan)
  [aggregator.md]              → síntesis unificada + recomendación
```

**Modelo:** Opus 4.7 para orchestrator y aggregator.
           Sonnet 4.6 para researchers paralelos (costo).
**Fallback Blackbox paralelo:** Kimi K2.5 (hasta 100 sub-agentes).

---

## Patrón 2 — Full Dev Team (50x)

**Caso de uso:** feature compleja end-to-end
**Agentes:** 5 paralelos + orchestrator

```
[Orchestrator: Opus 4.7]
  ├── [backend-agent]          → API + lógica de negocio
  ├── [frontend-agent]         → componentes UI
  ├── [test-agent]             → tests unitarios e integración
  ├── [docs-agent]             → documentación técnica
  └── [security-auditor.md]    → audit en paralelo
          │ (todos terminan)
  [code-reviewer.md]           → revisión cruzada de todos los outputs
          │
  [deploy agent]               → integración + deploy
```

---

## Patrón 3 — MLOps Team (50x)

**Caso de uso:** pipeline MLOps completo en paralelo
**Enlaza con:** [[mlops-template]]

```
[Orchestrator MLOps]
  ├── [data-team]              → Data: curate, collect, validate
  ├── [ml-team]                → ML: train, evaluate, formulate
  └── [dev-team]               → Dev: scaffold, test, build
          │ (data + ml terminan)
  [integration-agent]          → ensambla modelo + API
          │
  [ops-team]                   → deploy, operate, monitor
```

---

## Patrón 4 — Content Factory (50x)

**Caso de uso:** producción masiva de contenido

```
[Orchestrator]
  ├── [researcher.md × N]      → N temas investigados en paralelo
  ├── [writer-agent × N]       → N piezas escritas en paralelo
  └── [seo-agent]              → keywords y metadatos en paralelo
          │
  [editor-agent]               → revisión y consistencia de voz
          │
  [publisher-agent]            → formato + distribución
```

---

## Configuración del Orchestrator

```markdown
---
name: orchestrator
role: coordinator
model: opus-4-7
pattern: parallel-then-aggregate
---

## Responsabilidades
1. Descomponer la tarea en subtareas independientes
2. Asignar cada subtarea al agente especializado
3. Monitorear progreso de cada agente
4. Gestionar fallos y activar fallbacks
5. Invocar aggregator cuando todos terminan
6. Entregar output final consolidado

## Protocolo de coordinación
- Cada agente recibe: tarea + contexto mínimo necesario
- Cada agente entrega: output + handoff a vault/CLAUDE-SESSIONS/
- Si agente falla: orchestrator activa fallback Blackbox para ese slot
- Timeout por agente: 90 minutos (PreCompact.sh hook)

## Mapa de fallbacks por agente
researcher   → Gemini 3.1 Pro (balance IQ/velocidad para investigación)
code-agent   → DeepSeek V4 Pro (open, $0.28/M para código)
security     → GPT-5.4 xhigh (razonamiento para audit)
deploy       → Haiku 4.5 (sin fallback necesario)
```

---

## Anti-patrones en equipos de agentes

- ❌ Todos los agentes con Opus 4.7 → rate limit inmediato
- ❌ Agentes sin handoff protocol → aggregator no puede consolidar
- ❌ Contexto compartido entre agentes → usar vault como intermediario
- ❌ Sin timeout → agente bloqueado bloquea todo el equipo
- ✅ Mezclar modelos: Opus para orchestrator, Sonnet para workers
- ✅ Dump a vault/CLAUDE-SESSIONS/ como memoria compartida del equipo
- ✅ Fallback Blackbox mapeado para cada agente individual

---

## Comparativa de plataformas multi-agente

| Plataforma        | Max agentes | Modelo base         | Uso ideal              |
|-------------------|-------------|---------------------|------------------------|
| Claude Code       | ~10         | Opus 4.7            | Proyectos con .claude/ |
| Kimi K2.5         | 100         | Kimi K2.5 Thinking  | Volumen masivo         |
| Grok 4.20         | 4 nativos   | Grok 4.20           | Velocidad paralela     |
| CrewAI            | ilimitado   | Cualquiera          | Orquestación flexible  |
| n8n + Claude      | ilimitado   | Sonnet 4.6          | Workflows visuales     |

---

## Relacionado

- [[agent-configuration]]   — configurar cada agente del equipo
- [[agent-chain-examples]]          — cadenas secuenciales
- [[skill-chain-examples]]          — nivel anterior (10x)
- [[model-routing]]                 — routing por agente

---

## Tags
#agent-team #50x #paralelo #orchestrator #claude-code #multi-agente