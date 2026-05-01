# Routing Decisions — Puente Obsidian ↔ Claude/Blackbox

> Documento puente para sincronización de decisiones de routing entre sesiones.
> Actualizar al cambiar de Claude a Blackbox o cuando hagas cambios de arquitectura en .claude/rules/model-routing.md

---

## Estado actual del routing

**Última actualización:** 2026-04-30 21:00
**Motor activo:** Claude Code (Claude Sonnet 4.6)
**Fallback configurado:** Blackbox → Gemini 3.1 Pro (balance IQ/vel)

---

## Decisiones activas

### Prioridad 1 — Coding Diario
- **Modelo:** Claude Sonnet 4.6
- **IQ:** 48 / **Vel:** 78 t/s
- **Umbral de cambio:** Si contexto .claude/ > 800KB o sesión > 20 mensajes
- **Fallback:** Gemini 3.1 Pro (IQ 57 / 109 t/s)

### Prioridad 2 — Velocidad
- **Modelo:** Claude Haiku 4.5
- **IQ:** 35 / **Vel:** 66 t/s
- **Casos:** Drafts, edits rápidos, reportes diarios
- **Fallback:** Gemini 3 Flash (IQ 50 / 198 t/s)

### Prioridad 3 — Razonamiento
- **Modelo:** Claude Opus 4.7
- **IQ:** 57 / **Vel:** —
- **Casos:** Sprint Review, decisiones arquitectónicas (máx 90 min/sesión)
- **Fallback:** o1-mini (IQ 54 / 211 t/s) o GPT-5.4 xhigh (IQ 57, razonamiento)

### Prioridad 4 — Open-weight
- **Modelo:** DeepSeek V4 Pro (via Blackbox)
- **IQ:** 52 / **Coste:** $0.28/M
- **Casos:** Batch processing, presupuesto ajustado
- **Fallback:** Kimi K2.6 (IQ 54, top open IQ)

### Prioridad 5 — Local / Offline
- **Modelo:** Llama 3.3 70B (via Ollama)
- **IQ:** 41 / **Vel:** 99 t/s
- **Casos:** Datos sensibles, air-gapped, sin conexión
- **Configuración:** `ollama run llama3.3:70b`

---

## Protocolo de cambio (Claude → Blackbox)

**Cuando:** Contexto lleno o sesión > 15 mensajes

1. **Dump en vault/CLAUDE-SESSIONS/{{YYYY-MM-DD}}-{{HH}}.md**
   - Tarea actual
   - Archivos en uso
   - Decisiones tomadas
   - Errores activos

2. **Copia a Blackbox primer mensaje:**
   - Pegar archivo completo
   - Incluir: "Usar routing según [[model-routing.md]] PARTE 2"
   - Seleccionar modelo según especialidad

3. **Al volver a Claude:**
   - Abrir [[CLAUDE-SESSIONS/]] del dump
   - Retomar tarea exactamente donde se quedó
   - SessionStart.sh recarga contexto automáticamente

---

## Ratios de uso recomendado

```
Sonnet 4.6:   50% — coding, análisis, refinement
Haiku 4.5:    30% — velocidad, reportes, drafts
Opus 4.7:      5% — solo cuando calidad > tiempo
Fallbacks:    15% — Blackbox, open-weight, local
```

---

## Métricas de decisión

- **IQ < 40:** Solo para tareas muy simples (Daily Scrum, formato)
- **40–50:** Balance general (Sonnet, Gemini Flash)
- **50–57:** Razonamiento (Opus, o1-mini, Gemini Pro)
- **57+:** Máximo razonamiento (GPT-5.x, Opus 4.7)
- **Velocidad > 150 t/s:** Para batch y autocomplete
- **Velocidad < 50 t/s:** Solo si la calidad lo justifica

---

## Wikilinks internos

- [[model-routing]] — documento de referencia autorizado
- [[scrum-cycle]] — fases del proyecto que usan routing
- [[CLAUDE-SESSIONS/]] — dumps de cambio de modelo

---

## Checklist semanal

- [ ] Revisar decisiones tomadas en [[MODEL-NOTES/routing-decisions.md]]
- [ ] Confirmar que Sonnet 4.6 sigue siendo óptimo para el proyecto
- [ ] Registrar si ocurrió algún fallback a Blackbox
- [ ] Actualizar ratios si ha cambiado el tipo de tarea

---

## Tags

#routing #integration #obsidian #blackbox #modelo
