# api-conventions.md — Estilo de APIs

## REST

- Recursos como nouns: /users, /orders
- Métodos HTTP correctos: GET, POST, PUT, DELETE
- Códigos de estado apropiados

### Códigos

- 200 OK
- 201 Created
- 204 No Content
- 400 Bad Request
- 401 Unauthorized
- 404 Not Found
- 500 Internal Server Error

## naming

- camelCase en JSON
- snake_case en DB
- kebab-case en URLs

## Versioning

- /api/v1/users
- Header: Accept: application/vnd.api+v1

## Rate Limiting

- X-RateLimit-Limit header
- 429 Too Many Requests

---

_Aplica a todas las APIs_
