# Agent Chain Examples

> Un agent chain encadena 2+ agentes en secuencia.
> Cada agente opera en contexto aislado y pasa su output al siguiente.
> Para tareas complejas de múltiples dominios. Nivel 20x+.

---

## Diferencia chain de skills vs chain de agentes

| Aspecto          | Skill Chain          | Agent Chain               |
|------------------|----------------------|---------------------------|
| Contexto         | Compartido           | Aislado por agente        |
| Duración         | Minutos              | Horas                     |
| Datos            | Pequeños             | Grandes datasets          |
| Reanudar         | No                   | Sí, por agente            |
| Nivel            | 10x                  | 20x                       |

---

## Chain 1 — Full Security Audit Pipeline

**Trigger:** "audita el repositorio completo"
**Duración estimada:** 2-4 horas

```
[security-auditor.md]   → lista de vulnerabilidades + severidad
          ↓ (output: security-report.md)
[researcher.md]         → busca CVEs y patches para cada vuln
          ↓ (output: patches-research.md)
[code-reviewer.md]      → genera fixes para cada vulnerabilidad
          ↓ (output: fixes-branch)
[deploy agent]          → deploy de fixes a staging para validación
```

**Estado entre agentes:** cada agente dumpa a `vault/CLAUDE-SESSIONS/`
**Fallback Blackbox:** si Opus agota tokens → GPT-5.4 xhigh para researcher

---

## Chain 2 — MLOps Pipeline Completo

**Trigger:** "entrena y despliega el modelo {{nombre}}"
**Duración estimada:** 4-8 horas
**Enlaza con:** [[mlops-template]]

```
[data-validator agent]  → verifica calidad del dataset
          ↓
[trainer agent]         → entrena modelo, guarda checkpoints
          ↓
[evaluator agent]       → calcula métricas, compara con baseline
          ↓ (si pasa umbral)
[code-reviewer.md]      → revisa código de inferencia
          ↓
[deploy agent]          → containeriza y despliega a producción
          ↓
[log-analyzer.md]       → monitorea primeras 24h en producción
```

---

## Chain 3 — Research → Content → Publish

**Trigger:** "crea campaña de contenido sobre {{tema}}"

```
[researcher.md]         → 10 fuentes sintetizadas + insights
          ↓
[writer agent]          → 5 piezas de contenido (blog, social, email)
          ↓
[editor agent]          → revisión de estilo, SEO, consistencia
          ↓
[publisher agent]       → formato + distribución
```

---

## Function Tree Agent Chains

Usa pares de funciones para estructurar cadenas de agentes:
- **Se + Ti**: detección + root cause
- **Ne + Ni**: exploración + estrategia
- **Si + Te**: learning from history + optimización
- **Fi + Fe**: valores + impacto humano

Ver [[function-tree-chains]] para ejemplos de agent chains.

---

## Handoff protocol entre agentes

Cada agente debe terminar con un handoff explícito:

```markdown
## HANDOFF → [nombre del siguiente agente]

**Estado:** completado / parcial / error
**Output generado:** [ruta o descripción]
**Contexto necesario para continuar:**
- [dato clave 1]
- [dato clave 2]
**Dump completo:** vault/CLAUDE-SESSIONS/YYYY-MM-DD-[agente].md
```

---

## Manejo de fallos en el chain

```
Si agente N falla:
  1. Dump de estado parcial a vault/CLAUDE-SESSIONS/
  2. Notificar al usuario con: fase fallida + causa + contexto
  3. Opciones:
     a. Retry agente N con contexto del dump
     b. Activar Blackbox fallback para ese agente
     c. Skip agente N si output no es bloqueante
     d. Abort chain y escalar a humano
```

---

## Relacionado

- [[agent-configuration]]  — configurar cada agente del chain
- [[function-tree-chains]] — ejemplos basados en el Function Tree
- [[skill-chain-examples]]  — chains más ligeros con skills
- [[model-routing]]         — qué modelo en cada agente

---

## Tags
#agent-chain #pipeline #20x #claude-code #multi-agente