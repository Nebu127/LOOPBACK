# METODOLOGIAS — Índice

> Catálogo centralizado de metodologías, procesos y ciclos de desarrollo del proyecto.

---

## Archivos

### 📄 scrum-cycle.md
Ciclo Scrum completo con integración Claude Code.
- Roles: Product Owner, Scrum Team, Scrum Master
- Artefactos: Product Backlog, Sprint Backlog, Sprint
- Daily Scrum 24h
- Tabla de modelo asignado por fase

**Wikilinks:**
- [[model-routing]] — routing de modelos por especialidad
- [[CLAUDE-SESSIONS/]] — dumps entre cambios de modelo
- [[agents/code-reviewer.md]] — revisión en Sprint Review
- [[hooks/PostToolUse.sh]] — auto-commit después de tareas

---

### 📄 agile-vs-scrum.md
Comparativa de Agile (filosofía) vs Scrum (framework).
- Ciclo Agile: 7 fases continuas (Requirement → Launch)
- Estructura Scrum: cáscara de ejecución
- Clave: el Sprint replica internamente el ciclo Agile completo
- Risk & Issues como loop paralelo
- Tabla cruzada: Fase Agile → Fase Scrum → Modelo → Tool

**Wikilinks:**
- [[scrum-cycle]] — detalle del ciclo
- [[sprint-template]] — template para instanciar sprints
- [[model-routing]] — modelos asignados por fase

---

### 📄 sprint-template.md
Template para crear sprints concretos (sprint-01.md, sprint-02.md, etc).
- Copiar y renombrar como `sprint-N.md`
- 7 fases Agile internas con checklist
- Risk & Issues como tabla independiente
- Daily Scrum log
- Retrospectiva

**Cómo usar:**
1. Copiar `sprint-template.md`
2. Renombrar como `sprint-01.md` (o número correspondiente)
3. Rellenar Sprint Goal y Duración

---

### 📄 mlops-template.md
Orchestrator MLOps que combina Data/ML y Dev/Ops en 4 círculos.
- Arquitectura: 4 loops conectados (DATA, ML, DEV, OPS)
- 4 puntos de encuentro para sincronización
- Modelo asignado por fase
- Checklist por punto de encuentro

**Wikilinks:**
- [[dataml-template]] — detalle del loop DATA/ML
- [[devops-template]] — detalle del loop DEV/OPS
- [[model-routing]] — routing de modelos

---

### 📄 dataml-template.md
Ciclo detallado de preparación de datos y machine learning.
- 8 fases: Curate → Train → Validate → Transform → Experiment → Model → Evaluate → Deploy
- Checklist por fase
- Modelo asignado específico

**Wikilinks:**
- [[mlops-template]] — orchestrator
- [[model-routing]] — modelos

---

### 📄 devops-template.md
Ciclo detallado de desarrollo y operaciones.
- 8 fases: Plan → Code → Test → Deploy → Monitor → Alert → Scale → Optimize
- Checklist por fase
- Modelo asignado específico

**Wikilinks:**
- [[mlops-template]] — orchestrator
- [[agents/log-analyzer]] — para Optimize
- [[model-routing]] — modelos

---

### 📄 api-protocols.md
Guía de selección de protocolos de API y mapeo a MCP.
- REST, GraphQL, WebSocket, SSE, gRPC, MQTT, AMQP, EDA, EDI, Webhooks
- Cuando usar cada protocolo
- Integración con il `.mcp.json`

**Wikilinks:**
- [[CLAUDE.md]] — policy y rules
- [[model-routing]] — model selection

---

### 📄 pyramid-of-success.md
Piramide de éxito de Claude Code.
- 5 capas de práctica operacional
- Base: CLAUDE.md, hooks, .mcp.json
- Apex: agentic flow y shipped

**Wikilinks:**
- [[prompt-setup-guide]]
- [[function-tree-chains]]

---

### 📄 claude-ecosystem.md
Mapa del ecosistema Claude del proyecto.
- Work modes, context system, integraciones, artefactos
- Team plan, shared projects, connectors

**Wikilinks:**
- [[api-protocols]]
- [[prompt-setup-guide]]
- [[model-routing]]

---

## Próximas metodologías a documentar

---

## Próximas metodologías a documentar

- Kanban — flujo continuo sin sprints
- Shape Up — ciclos de 6 semanas con betting
- Lean — eliminar desperdicios, entregar valor rápido
- GitOps — infraestructura como código

---

## Notas

Cada metodología debe tener:
1. Descripción de roles
2. Artefactos (qué documentos se generan)
3. Flujo visual (diagrama ASCII o ASCII art)
4. Integración con herramientas (GitHub, Obsidian, Slack, etc.)
5. Modelo Claude Code recomendado para cada fase
6. Wikilinks a .claude/ y vault/ relevantes

---

## Tags

#metodologia #proceso #indice
