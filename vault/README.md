# vault/ — Memoria centralizada del proyecto

> Second brain compartido entre Claude Code, Blackbox y otros modelos.
> Contiene: metodologías, decisiones de routing, dumps de sesión, notas de arquitectura.

---

## Estructura

```
vault/
├── CLAUDE-SESSIONS/          📁 Dumps de estado entre modelos
│   ├── TEMPLATE-ejemplo.md   📄 Plantilla — copiar y adaptar
│   ├── 2026-04-30-09.md      📄 Ejemplo: sesión 09:00
│   └── 2026-04-30-retorno.md 📄 Ejemplo: retorno de Blackbox
│
├── MODEL-NOTES/              📁 Comportamiento observado
│   └── routing-decisions.md  📄 Log de decisiones por modelo
│
├── METODOLOGIAS/             📁 Procesos y ciclos
│   ├── scrum-cycle.md        📄 Scrum con integración Claude Code
│   ├── agile-vs-scrum.md     📄 Agile vs Scrum: filosofía vs framework
│   ├── sprint-template.md    📄 Template: copia y renombra como sprint-N.md
│   ├── mlops-template.md     📄 MLOps orchestrator: 4 círculos DATA/ML/DEV/OPS
│   ├── dataml-template.md    📄 Loop DATA/ML: 8 fases de data a modelo
│   ├── devops-template.md    📄 Loop DEV/OPS: 8 fases de plan a optimize
│   └── _index.md             📄 Índice de metodologías
│
└── routing-decisions.md      📄 Puente Obsidian ↔ Blackbox
    └── (sync con MODEL-NOTES/routing-decisions.md)
```

---

## Propósito de cada carpeta

### 📁 CLAUDE-SESSIONS/

**Qué guardar aquí:**
- Dumps de estado cuando Claude agota tokens
- Tarea en curso, archivos, decisiones
- Punto exacto donde se quedó el código
- Bloqueadores activos

**Cómo usar:**
1. Copiar `TEMPLATE-ejemplo.md` → `2026-MM-DD-HH.md`
2. Llenar secciones: tarea, archivos, decisiones, código
3. Pegar contenido completo como PRIMER mensaje en Blackbox
4. Al volver a Claude: usar SessionStart.sh para recargar contexto

**Duración:** 1 sesión. Archivable al completar sprint.

---

### 📁 MODEL-NOTES/

**Qué guardar aquí:**
- Log de routing decisions: qué modelo usaste y por qué
- Métricas de consumo (tokens, tiempo, costo)
- Alternativas consideradas y rechazadas
- Patrones observados por modelo

**routing-decisions.md específicamente:**
- Ejemplo de 5 tareas completadas con modelo asignado
- Análisis acumulado de coste
- Checklist semanal de revisión

**Duración:** Permanente. Crecer a lo largo del proyecto.

---

### 📁 METODOLOGIAS/

**Qué guardar aquí:**
- Procesos del proyecto (Scrum, Kanban, etc.)
- Fases, roles, artefactos
- Integración con herramientas (GitHub, Slack, etc.)
- Tabla de modelo recomendado por fase

**scrum-cycle.md:**
- Roles: Product Owner, Scrum Team, Scrum Master
- Artefactos: Product Backlog, Sprint Backlog
- Daily Scrum 24h
- Tabla: Fase Scrum → Modelo Claude Code

**agile-vs-scrum.md:**
- Comparativa: Agile (filosofía) vs Scrum (framework)
- 7 fases Agile: Requirement → Design → Develop → Test → Review → Deploy → Launch
- Clave: El Sprint replica internamente el ciclo Agile completo
- Risk & Issues como loop paralelo
- Tabla cruzada: Fase Agile → Fase Scrum → Modelo → Tool

**sprint-template.md:**
- Template para instanciar sprints concretos
- Cómo usar: copiar y renombrar como `sprint-01.md`, `sprint-02.md`, etc.
- Cada instancia tiene las 7 fases Agile como secciones con checklist
- Risk & Issues como tabla independiente (loop que corre en paralelo)
- Daily Scrum log para seguimiento diario
- Retrospectiva al cierre
- **Nuevo:** Sección opcional MLOps para sprints con ML/AI

**mlops-template.md:**
- Orchestrator MLOps para proyectos con machine learning
- Arquitectura: 4 círculos conectados (DATA, ML, DEV, OPS)
- 4 puntos de encuentro para sincronización entre loops
- Modelo asignado por fase (ej: Gemini para data, DeepSeek para ML)
- Checklist por punto de encuentro

**dataml-template.md:**
- Loop detallado DATA/ML: preparación de datos y modelado
- 8 fases: Curate → Train → Validate → Transform → Experiment → Model → Evaluate → Deploy
- Checklist específico por fase
- Modelo optimizado para cada tarea (ej: Opus para experimentos)

**devops-template.md:**
- Loop detallado DEV/OPS: desarrollo y operaciones
- 8 fases: Plan → Code → Test → Deploy → Monitor → Alert → Scale → Optimize
- Checklist con herramientas (Docker, Kubernetes, Prometheus)
- Integración con agents/log-analyzer para optimización

**_index.md:**
- Índice centralizado de todas las metodologías
- Descripción breve y wikilinks por archivo
- Cómo usar cada template

**_index.md:**
- Catálogo centralizado de todas las metodologías
- Plantilla: Qué debe tener cada metodología
- Próximas a documentar

**Duración:** Permanente. Referencia constante.

---

## Escenario MLOps — Proyecto con Machine Learning

**Contexto:** Sprint que incluye desarrollo de modelos ML/AI.

**Flujo recomendado:**
1. **Planning:** Usar `sprint-template.md` con sección MLOps activada
2. **Ejecución:** Seguir ciclo Agile + integrar MLOps en Develop/Deploy
3. **Sincronización:** Usar `mlops-template.md` como orchestrator
4. **Detalle:** `dataml-template.md` para data science, `devops-template.md` para infra
5. **Modelos:** Routing automático por fase (ej: Gemini para data prep, DeepSeek para training)
6. **Continuidad:** Dumps a `CLAUDE-SESSIONS/` si cambia modelo durante ciclo

**Beneficios:**
- Ciclo continuo DATA → ML → DEV → OPS
- Modelos optimizados por tarea (IQ alto para algoritmos, velocidad para monitoring)
- Checklist integrados para evitar olvidos
- Wikilinks para navegación entre templates

---

### 📄 routing-decisions.md (raíz)

**Qué es:** Puente de sincronización entre Obsidian y los modelos.

**Contiene:**
- Estado actual del routing (motor activo + fallback)
- Decisiones activas por prioridad (Sonnet → Haiku → Opus → open-weight → local)
- Protocolo de cambio (Claude → Blackbox)
- Ratios de uso recomendados (Sonnet 50%, Haiku 30%, etc.)
- Checklist semanal

**Cuándo actualizar:**
- Cada cambio significativo en .claude/rules/model-routing.md
- Antes de cambiar a Blackbox
- Semanal: revisar si los ratios siguen siendo óptimos

---

## Wikilinks (en Obsidian)

Todos los archivos contienen wikilinks `[[...]]` que se conectan con:
- `.claude/rules/model-routing.md` — decisiones de routing
- `.claude/agents/code-reviewer.md` — revisión en Sprint Review
- `.claude/hooks/PostToolUse.sh` — auto-commit
- `CLAUDE-SESSIONS/` — dumps entre modelos
- `METODOLOGIAS/api-protocols` — selección de protocolos de API
- `METODOLOGIAS/pyramid-of-success` — checklist de lanzamiento
- `METODOLOGIAS/claude-ecosystem` — mapa del ecosistema Claude
- `.claude/workflows/_index` — guía central de workflows

En Obsidian aparecen como nodos en el graph view. Puedes ver visualmente cómo Scrum conecta con routing, y cómo los dumps conectan con las metodologías.

---

## Flujo típico

### Escenario 1: Sessión normal (Claude Code)

```
1. 09:00  Abro Claude Code
2. Claude carga .claude/rules/model-routing.md (scope: **)
3. Trabajo con Sonnet 4.6 en Sprint Planning
4. 14:00  Contexto lleno (~850KB de 1M)
5. Creo dump en CLAUDE-SESSIONS/2026-04-30-14.md
6. Cambio a Blackbox, pego dump + modelo elegido
7. Blackbox retoma tarea con Gemini 3.1 Pro
8. Al recuperar cuota: SessionStart.sh recarga CLAUDE-SESSIONS/
9. Vuelvo a Claude con contexto completo
```

### Escenario 2: Sprint completo (Scrum integration)

```
1. Lunes 09:00  Copiar sprint-template.md → sprint-01.md
2. Lunes 09:15  Haiku 4.5: Daily Scrum de hoy
3. Lunes 13:00  Sonnet 4.6: Sprint Planning + llenar Sprint Goal
4. Lunes-Viernes Ejecutar 7 fases Agile internas:
                 - Requirement (Sonnet 4.6)
                 - Design (Sonnet 4.6)
                 - Develop (Sonnet 4.6 / Opus 4.7)
                 - Test (Sonnet 4.6)
                 - Review (Opus 4.7 + code-reviewer.md)
                 - Deploy (Haiku 4.5)
                 - Launch (Haiku 4.5)
5. Cada día     Daily Scrum + Risk & Issues en paralelo
6. Viernes 17:00 Llenar Retrospectiva
7. Viernes 18:00 Dump a vault/CLAUDE-SESSIONS/{{YYYY-MM-DD}}-sprint-01-retro.md
8. Log final en vault/MODEL-NOTES/routing-decisions.md
```

---

## Checklist de setup

- [x] vault/CLAUDE-SESSIONS/ — carpeta creada
- [x] vault/MODEL-NOTES/ — carpeta creada con routing-decisions.md
- [x] vault/METODOLOGIAS/ — carpeta creada con scrum-cycle.md + _index.md
- [x] vault/routing-decisions.md — puente Obsidian ↔ Blackbox
- [x] CLAUDE-SESSIONS/TEMPLATE-ejemplo.md — plantilla para dumps
- [ ] Abrir todo en Obsidian (File → Open Folder → /home/rbl/loopback/)
- [ ] Verificar que wikilinks resuelven (botón "Open" en Obsidian)
- [ ] Graph view: debería mostrar conexiones entre METODOLOGIAS/ ↔ .claude/

---

## Tags

#vault #metodologia #routing #obsidian #memoria-proyecto

---

**Última actualización:** 2026-04-30 · **Siguiente sincronización:** 2026-05-07
