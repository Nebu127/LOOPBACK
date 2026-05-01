# Skill Chain Examples

> Un skill chain encadena 3+ skills en un pipeline automático.
> Output de skill N → Input de skill N+1. End-to-end automation.
> Equivale al nivel 10x (Skill Chain) del framework Claude Code.

---

## Estructura de un chain

```
[Skill 1] → output → [Skill 2] → output → [Skill 3] → resultado final
```

Cada skill recibe el output del anterior como contexto.
El chain completo corre sin intervención humana.

---

## Chain 1 — Code Review Pipeline

**Trigger:** PR abierto en GitHub
**Nivel:** 10x · Skill Chain

```
[security-review]     → vulnerabilidades detectadas
        ↓
[code-reviewer.md]    → comentarios de calidad + fixes sugeridos
        ↓
[deploy]              → merge + deploy si review pasa
```

**Implementación en CLAUDE.md:**
```
Cuando se abra un PR:
1. Ejecuta skill: security-review sobre los diffs
2. Si security-review pasa → ejecuta agents/code-reviewer.md
3. Si code-reviewer aprueba → ejecuta skill: deploy a staging
4. Notifica resultado en Slack
```

**Modelo por fase:**
- security-review → `Sonnet 4.6`
- code-reviewer   → `Opus 4.7`
- deploy          → `Haiku 4.5`

---

## Chain 2 — Research → Draft → Publish

**Trigger:** "Escribe un artículo sobre {{tema}}"
**Nivel:** 10x · Skill Chain

```
[researcher.md]       → síntesis de fuentes (web fetch)
        ↓
[prompt: redacción]   → borrador con estructura y tono
        ↓
[prompt: revisión]    → edición, SEO, checklist de calidad
        ↓
[output-styles/terse] → versión final limpia
```

**Modelo por fase:**
- researcher.md  → `Opus 4.7` (síntesis compleja)
- redacción      → `Sonnet 4.6`
- revisión       → `Sonnet 4.6`
- output         → `Haiku 4.5`

---

## Chain 3 — DataML Pipeline

**Trigger:** dataset nuevo disponible
**Nivel:** 10x · Skill Chain → enlaza con [[dataml-template]]

```
[validate-data]       → calidad del dataset verificada
        ↓
[feature-engineering] → features transformadas y documentadas
        ↓
[train-eval]          → modelo entrenado + métricas
        ↓
[model-report]        → reporte de evaluación generado
```

---

## Chain 4 — Sprint Automation

**Trigger:** inicio de Sprint
**Nivel:** 10x · Skill Chain → enlaza con [[sprint-template]]

```
[issue-breakdown]     → user stories → tasks en GitHub Issues
        ↓
[code-scaffold]       → estructura de archivos y boilerplate
        ↓
[test-scaffold]       → tests unitarios skeleton generados
        ↓
[deploy-staging]      → entorno de staging preparado
```

---

## Function Tree Chains

Aplica el Function Tree para elegir el chain correcto según la pregunta clave:
- **Se**: incidentes y alertas
- **Si**: patrones históricos y regresiones
- **Ne**: opciones y exploración
- **Ni**: estrategia y dirección futura
- **Te**: optimización y auditoría
- **Ti**: debug y consistencia lógica
- **Fe**: UX y documentación
- **Fi**: ética, compliance y valores

Ver [[function-tree-chains]] para ejemplos dedicados de skill chains.

---

## Cómo construir un chain nuevo

```markdown
## Chain: {{nombre}}

Trigger: {{condición de activación}}
Input: {{qué recibe el chain}}
Output final: {{qué produce}}

Pasos:
1. Skill: [[skills/paso-1/SKILL.md]]
   Input: {{descripción}}
   Output: {{descripción}}

2. Skill: [[skills/paso-2/SKILL.md]]
   Input: output del paso 1
   Output: {{descripción}}

3. Skill: [[skills/paso-3/SKILL.md]]
   Input: output del paso 2
   Output: resultado final

Modelos: paso-1=Sonnet · paso-2=Opus · paso-3=Haiku
Fallback Blackbox: si Claude agota tokens en paso-2 → Gemini 3.1 Pro
```

---

## Anti-patrones en chains

- ❌ Pasar demasiado contexto entre skills → resumir outputs
- ❌ Usar Opus en todos los pasos → caer en rate limit rápido
- ❌ Sin manejo de error → si skill N falla, el chain se rompe
- ✅ Definir qué hacer si un skill falla (retry / skip / abort)
- ✅ Dump a Obsidian vault al final de cada chain largo

---

## Relacionado

- [[skills.md]]          — base de cada skill del chain
- [[agent-chain-examples]]     — cuando el chain necesita agentes
- [[prompt-setup-guide]]       — base de cada prompt en el chain
- [[model-routing]]            — qué modelo en cada fase del chain

---

## Tags
#skill-chain #pipeline #automation #10x #claude-code