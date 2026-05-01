# security-review — Auditoría de seguridad

## Frontmatter

```yaml
---
name: security-review
description: Auditoría de seguridad completa
argument-hint: "[path]"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash(find:*)
  - Bash(grep:*)
---
```

## Descripción

- Escanea el código en busca de vulnerabilidades
- Revisa: dependencias, secretos hardcoded, inyecciones, permisos
- Devuelve reporte con hallazgos y severidad
- Sugiere fixes

## Uso

```
@security-review
@security-review src/
@security-review .
```

## Reglas

- Solo lectura: no modifica nada
- Reporte formato markdown
- Severidad: Critical, High, Medium, Low
