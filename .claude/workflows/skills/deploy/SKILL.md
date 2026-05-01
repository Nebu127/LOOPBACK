# deploy — Workflow de despliegue

## Frontmatter

```yaml
---
name: deploy
description: Despliega a staging o producción
argument-hint: "[environment]"
allowed-tools:
  - Read
  - Glob
  - Bash(npm:*)
  - Bash(git:*)
  - Bash(curl:*)
---
```

## Descripción

- Environment: staging (default) o production
- Ejecuta lint + test + build
- Despliega al entorno seleccionado
- Muestra URL resultante
- Notifica al equipo si es production

## Uso

```
@deploy
@deploy staging
@deploy production
```

## Pasos

1. `bun run lint`
2. `bun run test`
3. `bun run build`
4. `bun run deploy:staging` o `deploy:production`
5. Reporte de URL

## Reglas

- Fallback en cualquier paso
- Confirmar antes de production
