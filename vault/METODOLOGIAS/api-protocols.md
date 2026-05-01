# API Protocols — Guía de selección

> Routing de cuándo usar cada protocolo de API.
> Relaciona el diseño arquitectónico con MCP servers y modelo.

---

## Principios

- Usa el protocolo que mejor se ajusta al problema, no el que conoces.
- Mantén los contratos claros y evita overfetch/underfetch.
- Documenta qué MCP server usa cada patrón.
- Secrets nunca en `.mcp.json`; solo `${ENV_VAR}`.

---

## Matriz de protocolos

| Caso de uso | Protocolo | MCP server | Modelo recomendado |
|-------------|-----------|------------|--------------------|
| CRUD estándar | REST | github / supabase | Haiku 4.5 |
| Consultas frontend dinámicas | GraphQL | custom fetch | Sonnet 4.6 |
| Chat / colaboración | WebSocket | playwright | Sonnet 4.6 |
| Streaming de eventos | SSE | custom fetch | Haiku 4.5 |
| Integración evento → acción | Webhooks | github | Haiku 4.5 |
| Microservicios internos | gRPC | custom | Sonnet 4.6 |
| IoT / sensores | MQTT | custom broker | Haiku 4.5 |
| Job queues / workers | AMQP | custom broker | Opus 4.7 |
| EDA / eventos desacoplados | EDA | Kafka / Rabbit | Opus 4.7 |
| B2B legacy | EDI / SOAP | enterprise | Opus 4.7 |

---

## Protocolos y cuándo usar

### REST
- Ideal si necesitas APIs simples, stateless y JSON.
- Usar cuando los recursos son CRUD con validación en servidor.
- Integración: `.claude/rules/api.md` para rutas y auth.

### GraphQL
- Ideal para frontend con datos variables y consultas específicas.
- Usa en apps con múltiples clientes y relaciones ricas.
- Atención: requiere cost analysis y query complexity guard.

### WebSocket
- Ideal para estado en tiempo real, chat, dashboards interactivos.
- Usa solo si necesitas full-duplex.
- MCP: `playwright` para pruebas de conexión y eventos.

### Webhooks
- Ideal para notificaciones entre sistemas.
- Usar para CI/CD, pagos, eventos de repositorio.
- Siempre verificar firma y auth.

### SSE
- Ideal para streaming de server→cliente sin necesidad de socket completo.
- Perfecto para progreso de jobs, logs en vivo y métricas.

### gRPC
- Ideal para microservicios internos de alto throughput.
- Requiere `.proto`, codegen y un contrato fuerte.

### MQTT
- Ideal para IoT y dispositivos con poca banda.
- Usa broker central y topics.

### AMQP
- Ideal para colas de trabajo y routing avanzado.
- Usar con RabbitMQ o broker compatible.

### EDA
- Patrones de arquitectura orientados a eventos.
- Usar cuando quieras desacoplar productores y consumidores.

### EDI / SOAP
- Ideal para integraciones B2B legacy.
- Usar solo si el partner lo exige.

---

## Integración con `.mcp.json`

- `playwright` → pruebas WebSocket / SSE / browser automation.
- `github` → webhooks de repositorio y acciones.
- `supabase` → DB, auth, storage.
- `rest-client` → fetch REST/GraphQL.

---

## Relacionado

- [[_index]] — índice de metodologías
- [[pyramid-of-success]] — checklist operativo
- [[model-routing]] — selección de modelo por task
- [[_index]] — encuentra otros recursos de metodología

---

## Tags
#api #protocols #mcp #webhook #graphql #grpc #rest #claude-code