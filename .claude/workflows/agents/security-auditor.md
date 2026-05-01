# security-auditor — Auditoría de seguridad

## Frontmatter

```yaml
---
name: security-auditor
description: Escanea vulnerabilidades de seguridad
model: claude-sonnet-4-6
tools:
  - Read
  - Glob
  - Grep
  - Bash(find)
  - Bash(grep)
---
```

## Descripción

- Escanea el proyecto completo
- Busca: secretos hardcoded, vulnerabilidades comunes, permisos incorrectos
- Devuelve reporte con hallazgos y severidad

## Categorías

- Secrets hardcoded
- SQL injection
- XSS
- Dependencias vulnerables
- Permisos de archivos

## Output

```markdown
## Hallazgos

| Archivo | Línea | Problema | Severidad |
|---------|-------|---------|-----------|
| ... | ... | ... | ... |

## Recomendaciones
- ...
```

## Reglas

- Solo análisis, no modifica
- Severidad: Critical, High, Medium, Low
- Incluir fix suggestions
