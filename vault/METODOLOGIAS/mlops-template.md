# MLOps Template — Orchestrator

> MLOps combina Data/ML y Dev/Ops en un ciclo continuo.
> 4 círculos con 4 puntos de encuentro para sincronización.

---

## Arquitectura — 4 círculos

```
   ┌─────────────────┐     ┌─────────────────┐
   │   DATA LOOP     │     │    DEV LOOP     │
   │                 │     │                 │
   │ Curate → Train │     │ Plan → Code     │
   │ ↓              │     │ ↓               │
   │ Validate →     │     │ Test →          │
   │ Transform      │     │ Deploy          │
   └─────────────────┘     └─────────────────┘
          │                        │
          └─────────┬──────────────┘
                    ▼
   ┌─────────────────┐     ┌─────────────────┐
   │    ML LOOP      │     │   OPS LOOP      │
   │                 │     │                 │
   │ Experiment →    │     │ Monitor →       │
   │ Model           │     │ Alert           │
   │ ↓               │     │ ↓               │
   │ Evaluate →      │     │ Scale →         │
   │ Deploy          │     │ Optimize        │
   └─────────────────┘     └─────────────────┘
```

---

## Puntos de encuentro

1. **DATA → ML:** Transform → Experiment
2. **ML → DEV:** Deploy → Plan
3. **DEV → OPS:** Deploy → Monitor
4. **OPS → DATA:** Optimize → Curate

---

## Fases detalladas

### DATA LOOP
- Curate: Recopilar y limpiar datos
- Train: Entrenar modelos iniciales
- Validate: Validar calidad de datos
- Transform: Preparar datos para ML

### ML LOOP
- Experiment: Probar hipótesis y algoritmos
- Model: Construir y entrenar modelos
- Evaluate: Evaluar rendimiento
- Deploy: Desplegar modelo a staging

### DEV LOOP
- Plan: Planificar integración del modelo
- Code: Implementar código de producción
- Test: Probar integración
- Deploy: Desplegar a producción

### OPS LOOP
- Monitor: Monitorear rendimiento en producción
- Alert: Gestionar alertas y anomalías
- Scale: Escalar infraestructura si necesario
- Optimize: Optimizar basado en feedback

---

## Modelo asignado por fase

| Fase | Modelo | Razón |
|------|--------|-------|
| Curate/Validate | Gemini 3.1 Pro | Balance IQ/velocidad para data prep |
| Train/Model | DeepSeek R1 | IQ alto para algoritmos complejos |
| Experiment/Evaluate | Claude Opus 4.7 | Mejor SWE para ML code |
| Deploy (ML) | Sonnet 4.6 | Estándar para despliegue |
| Plan/Code | Sonnet 4.6 | Tarea diaria principal |
| Test | Haiku 4.5 | Drafts rápidos para tests |
| Deploy (Dev) | Opus 4.7 | Complejidad alta en integración |
| Monitor/Alert | Gemini 3 Flash | Velocidad para monitoring |
| Scale/Optimize | MiniMax M2.5 | Mejor valor para ops |

---

## Checklist por punto de encuentro

### 1. DATA → ML
- [ ] Datos transformados listos para experimentos
- [ ] Baseline de modelos establecido
- [ ] Métricas de calidad definidas

### 2. ML → DEV
- [ ] Modelo aprobado para producción
- [ ] API de inferencia definida
- [ ] Requisitos de infraestructura claros

### 3. DEV → OPS
- [ ] Código desplegado en staging
- [ ] Tests de integración pasando
- [ ] Plan de rollback preparado

### 4. OPS → DATA
- [ ] Feedback de producción recopilado
- [ ] Nuevos datos para re-entrenamiento
- [ ] Ciclo completo documentado

---

## Retrospectiva MLOps

**Qué salió bien en el ciclo:**

**Qué mejorar:**

**Acción para el próximo ciclo:**

**Dump a:** `vault/CLAUDE-SESSIONS/{{YYYY-MM-DD}}-mlops-cycle-retro.md`

---

## Relacionado

- [[dataml-template]] — detalle del loop DATA/ML
- [[devops-template]] — detalle del loop DEV/OPS
- [[model-routing]] — routing de modelos por fase</content>
<parameter name="filePath">/home/rbl/loopback/vault/METODOLOGIAS/mlops-template.md