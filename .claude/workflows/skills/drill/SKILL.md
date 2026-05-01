# drill — Genera ejercicios de práctica

## Frontmatter

```yaml
---
name: drill
description: Genera ejercicios de práctica
argument-hint: "tema, nivel, cantidad"
allowed-tools:
  - Read
  - Write
  - Glob
  - Bash(node:*)
---
```

## Descripción

- Genera ejercicios de práctica
- Tema: topic de los ejercicios
- Nivel: beginner, intermediate, advanced
- Cantidad: 5-20 (default: 10)
- Formato: ejercicio + solución

## Uso

```
@drill typescript beginner 10
@drill react hooks advanced 5
```

## Output

- /output/drill/{tema}/
  - ejercicio-01.md
  - ...
  - solutions.md
  - metadata.json

## Tipos de ejercicios

- Code completion
- Bug fixing
- Refactoring
- Quiz de conceptos
