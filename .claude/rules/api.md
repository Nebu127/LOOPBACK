# api.md — Reglas para src/api/

## Path Scope

`src/api/**` o `app/api/**`

## Endpoints

- Solo REST o RPC (no WS para esta capa)
- Middleware de auth en cada endpoint
- Validación de input con Zod
- Error handling consistente

## Response

```typescript
// Success
{ data: T }

// Error
{ error: { code: string, message: string } }
```

## Auth

- JWT en Authorization header
- Bearer token
- 401 si inválido

## Rate Limit

- 100 req/min por usuario
- 429 si excede

---

_Carga solo para archivos en src/api/** o app/api/**_
