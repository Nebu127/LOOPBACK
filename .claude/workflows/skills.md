# SKILL.md — Plantilla base de Skill

> Un skill es un workflow reutilizable que Claude invoca automáticamente.
> Reemplaza prompts repetitivos. Output consistente sin preguntas.

---

## Estructura de un skill

```
.claude/skills/
└── nombre-del-skill/
    ├── SKILL.md        ← instrucciones para Claude
    ├── context.md      ← contexto del dominio (opcional)
    └── examples/
        ├── input.md    ← ejemplo de entrada
        └── output.md   ← ejemplo de salida esperada
```

---

## Plantilla SKILL.md

```markdown
---
name: {{nombre-del-skill}}
description: >
  {{Una línea: cuándo Claude debe invocar este skill.
  Ser específico — Claude lo usa para decidir.}}
trigger: {{frase o condición que activa el skill}}
model: {{haiku-4-5 / sonnet-4-6 / opus-4-7}}
scope: {{** para siempre, src/** para código, etc.}}
---

# {{Nombre del Skill}}

## Objetivo
{{Qué produce. Resultado esperado en una línea.}}

## Contexto requerido
- {{Dato 1 que Claude necesita antes de ejecutar}}
- {{Dato 2}}

## Pasos de ejecución
1. {{Paso 1}}
2. {{Paso 2}}
3. {{Paso 3}}

## Formato de output
{{Tipo, estructura, longitud exacta del output}}

## Ejemplo
Input:  {{descripción del input}}
Output: {{descripción del output}}

## Guardrails
- NO {{restricción 1}}
- NO {{restricción 2}}
```

---

## Skills del proyecto (referencia a .claude/workflows/skills/)

| Skill            | Trigger                        | Modelo     | Scope |
|------------------|--------------------------------|------------|-------|
| commit-push-pr   | "prepara PR / commit and push" | Sonnet 4.6 | **    |
| review-pr        | "revisa PR / feedback"         | Opus 4.7   | **    |
| security-review  | "revisa seguridad / audit"     | Sonnet 4.6 | **    |
| deploy           | "despliega / deploy"           | Haiku 4.5  | **    |
| model-selector   | "qué modelo uso / routing"     | Haiku 4.5  | **    |

Archivos reales: `.claude/workflows/skills/commit-push-pr/`, `.claude/workflows/skills/review-pr/`, `.claude/workflows/skills/security-review/`, `.claude/workflows/skills/deploy/`

---

## Frontmatter recomendado para skills

```markdown
---
name: commit-push-pr
description: >
  Genera commit messages, crea PR y prepara el push.
trigger: "prepara PR / commit and push"
model: sonnet-4-6
scope: **
allowed-tools:
  - Bash(git commit:*)
  - Bash(git push:*)
  - Bash(gh pr create:*)
  - Read
  - Write
---
```

---

## Diferencia skill vs comando vs agente

| Tipo    | Cuándo usar                          | Contexto  | Nivel |
|---------|--------------------------------------|-----------|-------|
| Skill   | Workflow repetitivo auto-invocado    | Compartido| 5x    |
| Comando | Acción manual con /slash             | Compartido| 5x    |
| Agente  | Tarea larga, contexto aislado        | Aislado   | 20x   |

---

## Relacionado

- [[prompt-setup-guide]]      — base antes de crear un skill
- [[skill-chain-examples]]    — encadenar 3+ skills en pipeline
- [[agent-configuration]] — cuando el skill escala a agente

---

## Tags
#skill #claude-code #workflow #5x #reutilizable