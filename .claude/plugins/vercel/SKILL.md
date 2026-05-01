# vercel — Commands, agents y MCP bundleados

## Descripción

Plugin para integración con Vercel.

## Incluye

- Commands: deploy, rollback, logs
- Agents: vercel-analytics
- MCP: server de Vercel

## Comandos

```bash
# Deploy
/project:vercel:deploy

# Logs
/project:vercel:logs

# Rollback
/project:vercel:rollback
```

## Configuración

```json
{
  "vercel": {
    "token": "${VERCEL_TOKEN}",
    "project": "mi-proyecto"
  }
}
```

## Herramientas

- vercel deploy
- vercel logs
- vercel domains
- vercel aliases

---

_Plugin bundleado para 2026_
