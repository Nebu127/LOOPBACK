# DataML Template — Loop DATA/ML

> Ciclo de preparación de datos y machine learning.
> Parte del MLOps orchestrator.

---

## Ciclo DATA/ML

```
Curate → Train → Validate → Transform → Experiment → Model → Evaluate → Deploy
```

---

## 1. Curate
**Modelo:** Gemini 3.1 Pro · **Tool:** Obsidian + agents/researcher.md

- [ ] Fuentes de datos identificadas
- [ ] Datos recopilados y almacenados
- [ ] Calidad inicial evaluada
- [ ] Metadata documentada

**Notas:**

---

## 2. Train
**Modelo:** DeepSeek R1 · **Tool:** Claude Code + Jupyter

- [ ] Baseline de modelos entrenados
- [ ] Hiperparámetros iniciales probados
- [ ] Métricas de entrenamiento registradas
- [ ] Overfitting/underfitting evaluado

**Notas:**

---

## 3. Validate
**Modelo:** Gemini 3.1 Pro · **Tool:** Python scripts + tests

- [ ] Validaciones de calidad aplicadas
- [ ] Outliers detectados y tratados
- [ ] Consistencia de datos verificada
- [ ] Sesgos identificados

**Notas:**

---

## 4. Transform
**Modelo:** Sonnet 4.6 · **Tool:** Pandas/Scikit-learn

- [ ] Features engineering completado
- [ ] Normalización/escalado aplicado
- [ ] Datos transformados para ML
- [ ] Pipeline de transformación documentado

**Notas:**

---

## 5. Experiment
**Modelo:** Claude Opus 4.7 · **Tool:** MLflow + experiments

- [ ] Hipótesis definidas
- [ ] Algoritmos alternativos probados
- [ ] Experimentos registrados
- [ ] Mejores candidatos identificados

**Notas:**

---

## 6. Model
**Modelo:** DeepSeek R1 · **Tool:** TensorFlow/PyTorch

- [ ] Modelo final entrenado
- [ ] Hiperparámetros optimizados
- [ ] Arquitectura documentada
- [ ] Reproducibilidad asegurada

**Notas:**

---

## 7. Evaluate
**Modelo:** Claude Opus 4.7 · **Tool:** Evaluation metrics

- [ ] Métricas de evaluación calculadas
- [ ] Comparación con baseline
- [ ] Interpretabilidad analizada
- [ ] Decisiones de aprobación tomadas

**Notas:**

---

## 8. Deploy
**Modelo:** Sonnet 4.6 · **Tool:** Model serving (e.g., FastAPI)

- [ ] Modelo serializado
- [ ] API de inferencia creada
- [ ] Tests de integración pasando
- [ ] Despliegue a staging completado

**Notas:**

---

## Retrospectiva DATA/ML

**Qué salió bien:**

**Qué mejorar:**

**Acción para el próximo ciclo:**

---

## Relacionado

- [[mlops-template]] — orchestrator completo
- [[model-routing]] — modelos por fase</content>
<parameter name="filePath">/home/rbl/loopback/vault/METODOLOGIAS/dataml-template.md