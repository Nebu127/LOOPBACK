# SKILL.md — Plantilla de skill

## Frontmatter

```yaml
---
name: nombre-del-skill
description: Descripción corta de qué hace
argument-hint: "param1, param2"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash(git:*)
  - Bash(gh:*)
---
```

## Estructura

1. **name**: Nombre único del skill
2. **description**: Qué hace en una línea
3. **argument-hint**: Parámetros esperados
4. **allowed-tools**: Herramientas que puede usar

## Ejemplo

```yaml
---
name: commit-push-pr
description: Crea commit, push y PR
argument-hint: "message, branch"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash(git add:*)
  - Bash(git commit:*)
  - Bash(git push:*)
  - Bash(gh pr:*)
---
```

## Reglas

- Un skill = una tarea específica
- tools limitado al mínimo necesario
- Devolver resumen, no todo el output
