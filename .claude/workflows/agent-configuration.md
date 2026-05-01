# Agent Configuration

> Un agente corre en contexto aislado, trabaja en background,
> maneja datasets grandes y reanuda si falla.
> Nivel 20x del framework Claude Code.

---

## Cuándo usar agente vs skill

| Criterio            | Skill      | Agente     |
|---------------------|------------|------------|
| Duración            | <5 min     | >5 min     |
| Contexto            | Compartido | Aislado    |
| Dataset             | Pequeño    | Grande     |
| Reanudar si falla   | No         | Sí         |
| Herramientas ext.   | Limitadas  | Completas  |
| Nivel Claude Code   | 5-10x      | 20x        |

---

## Build an AI Agent — 8 pasos

1. Define Purpose & Scope
   - Use case concreto
   - Necesidades del usuario
   - Criterios de éxito
   - Restricciones claras
2. System Prompt Design
   - Rol/persona
   - Objetivos
   - Instrucciones
   - Guardrails
3. Choose LLM
   - Modelo base
   - Parámetros
   - Window de contexto
   - Coste / latencia
4. Tools & Integrations
   - Herramientas simples primero
   - API y MCP servers
   - Funciones custom si hace falta
5. Memory Systems
   - Conversacional / episódica
   - Vector DB / SQL / file storage
6. Orchestration
   - Rutas / triggers / workflow
   - Error handling
   - agent2agent / handoff
7. User Interface
   - Chat / web app / API / Slack
   - Cómo consume el output
8. Testing & Evaluations
   - Unit tests
   - Latency tests
   - Quality metrics
   - Iterar y mejorar

## Plantilla de agente

```markdown
---
name: {{nombre-del-agente}}
description: >
  {{Cuándo invocar. Claude usa esto para decidir.}}
model: opus-4-7
context: isolated
tools:
  - Read
  - Write
  - Grep
  - Glob
  - Bash(git:*)
max_tokens: 8000
resume_on_failure: true
---

# {{Nombre del Agente}}

## Objetivo
{{Output en una línea. Resultado esperado.}}

## Input esperado
{{Qué debe recibir al ser invocado}}

## Proceso interno
1. {{Paso 1}}
2. {{Paso 2}}
3. {{Paso 3}}
4. Dump a vault/CLAUDE-SESSIONS/ si tarea >30 min

## Output
{{Formato y estructura del resultado}}

## Manejo de errores
- Si falla en paso N → {{retry / escalar / notificar}}
- Si agota tokens → dump estado + notifica para retomar
- Regla clave: retorna solo un resumen limpio al contexto principal; no mansplaines ni ruido extenso.

## Guardrails
- NO modificar fuera de {{scope}}
- NO llamar a {{APIs prohibidas}}
- NO contaminar el contexto principal con detalles internos innecesarios
```

---

## Agentes del proyecto (referencia a .claude/workflows/agents/)

### code-reviewer.md
Modelo: Opus 4.7 · Trigger: "revisa el código / PR abierto"
Input: diff de PR o ruta · Output: comentarios + fixes
Archivo real: `.claude/workflows/agents/code-reviewer.md`

### researcher.md
Modelo: Opus 4.7 · Trigger: "investiga / busca sobre"
Input: tema + profundidad · Output: síntesis con fuentes
Archivo real: `.claude/workflows/agents/researcher.md`

### log-analyzer.md
Modelo: Opus 4.7 · Trigger: "analiza los logs / error en prod"
Input: ruta de logs o stack trace · Output: causa raíz + acciones
Archivo real: `.claude/workflows/agents/log-analyzer.md`

### security-auditor.md
Modelo: Opus 4.7 · Trigger: "audita seguridad"
Input: ruta del código · Output: vulnerabilidades por severidad
Archivo real: `.claude/workflows/agents/security-auditor.md`

### debugger.md
Modelo: Opus 4.7 · Trigger: "debuggea el fallo / causa raíz"
Input: stack trace, logs o diff · Output: causa raíz + patch sugerido
Archivo real: `.claude/workflows/agents/debugger.md`

### test-writer.md
Modelo: Opus 4.7 · Trigger: "genera tests / valida la suite"
Input: módulo o cambio · Output: pruebas añadidas + resultados
Archivo real: `.claude/workflows/agents/test-writer.md`

### refactorer.md
Modelo: Opus 4.7 · Trigger: "refactoriza este código"
Input: módulo o área de deuda técnica · Output: patch de refactor
Archivo real: `.claude/workflows/agents/refactorer.md`

### doc-writer.md
Modelo: Sonnet 4.6 · Trigger: "documenta / escribe docs"
Input: cambio o feature · Output: documentación técnica clara
Archivo real: `.claude/workflows/agents/doc-writer.md`

---

## Config base (settings.json)

```json
{
  "model": "claude-opus-4-7",
  "context": "isolated",
  "max_tokens": 8000,
  "tools": ["read_file", "write_file", "bash", "web_search"],
  "resume_on_failure": true,
  "dump_state_path": "vault/CLAUDE-SESSIONS/",
  "timeout_minutes": 90
}
```

---

## Relacionado

- [[agent-chain-examples]]    — encadenar agentes en secuencia
- [[agent-team-patterns]]     — coordinar equipos paralelos
- [[skills.md]]         — alternativa para tareas cortas
- [[prompt-setup-guide]]      — base de configuración

---

## Tags
#agente #agent #configuracion #20x #claude-code #aislado