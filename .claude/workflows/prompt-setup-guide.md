# Prompt Setup Guide

> Base de configuración antes de escribir cualquier prompt.
> Un prompt bien construido carga contexto, define rol, especifica output
> y declara restricciones — en ese orden.

---

## Los 7 elementos de un prompt efectivo

```
1. TASK            → qué debe hacer Claude ahora
2. CONTEXT FILES   → qué archivos / notas relevantes tiene
3. REFERENCE       → plantillas, documentación, ejemplos
4. SUCCESS BRIEF   → qué significa un buen resultado
5. RULES           → qué restricciones y estándares seguir
6. CONVERSATION    → si debe preguntar antes de asumir
7. PLAN            → pasos claros que seguirá
8. ALIGNMENT      → confirmar que el objetivo está alineado
```

### Plantilla base

```
<context>
Proyecto: {{nombre}}
Stack: {{tecnologías}}
Archivos relevantes: {{rutas}}
Estado actual: {{descripción}}
</context>

<role>
Actúa como {{experto}} con experiencia en {{dominio}}.
</role>

<task>
{{acción concreta en una línea}}

Pasos:
1. {{paso 1}}
2. {{paso 2}}
3. {{paso 3}}
</task>

<format>
Output: {{tipo — código / markdown / JSON / tabla}}
Longitud: {{breve / detallada / exhaustiva}}
Idioma: {{es / en}}
</format>

<guardrails>
- NO {{restricción 1}}
- NO {{restricción 2}}
- Si no tienes suficiente contexto, pregunta antes de asumir
</guardrails>
```

---

## Selección de modelo antes de promptear

| Tipo de prompt          | Modelo        | Razón                        |
|-------------------------|---------------|------------------------------|
| Draft rápido / formato  | Haiku 4.5     | Bajo costo, respuesta rápida |
| Código / análisis       | Sonnet 4.6    | Balance IQ/velocidad         |
| Investigación / agentes | Opus 4.7      | Razonamiento complejo        |
| Fallback (token limit)  | Blackbox      | Ver [[model-routing]]        |

---

## Técnicas avanzadas

### Edit, Don't Stack
Editar el último mensaje en vez de responder.
Evita que Claude re-lea todo el historial en cada turno.

### Batch Into One
Combinar 3 prompts relacionados en 1 solo mensaje.
3 mensajes = 3 recargas de contexto. 1 mensaje = 1 recarga.

### Positive + Negative examples
```
✅ Haz esto: [ejemplo de output deseado]
❌ No hagas esto: [ejemplo de output no deseado]
```

### Step-by-step reasoning
Añadir al final del prompt:
```
Antes de responder, piensa paso a paso y muestra tu razonamiento.
```

### XML tags para outputs estructurados
```
Responde usando estas etiquetas:
<analysis>...</analysis>
<code>...</code>
<next_steps>...</next_steps>
```

---

## Orden de carga de contexto en Claude Code

```
1. CLAUDE.md                    (instrucciones del equipo)
2. .claude/rules/scope-glob.md  (reglas por path)
3. .claude/workflows/skills/SKILL.md      (skill invocado)
4. Tu prompt                    (tarea concreta)
```

Cuanto más cortos sean los pasos 1-3, más espacio para tu prompt.

---

## Anatomía extendida del prompt

1. TASK: define la acción concreta.
2. CONTEXT FILES: nombra los archivos y notas relevantes.
3. REFERENCE: incluye ejemplos o plantillas existentes.
4. SUCCESS BRIEF: especifica el output, la reacción esperada y cómo saber si funcionó.
5. RULES: incluye guardrails y estándares de la organización.
6. CONVERSATION: pregunta antes de actuar si falta contexto.
7. PLAN: detalla los pasos que Claude seguirá.
8. ALIGNMENT: valida el objetivo con el objetivo del sprint o la tarea.

---

## Anti-patrones a evitar

- ❌ Prompts ambiguos: "mejora esto" → especifica qué aspecto
- ❌ Contexto duplicado: si está en CLAUDE.md, no lo repitas
- ❌ Múltiples tareas sin prioridad: Claude intentará todas a medias
- ❌ Output sin formato: siempre especifica tipo y longitud
- ❌ Sin guardrails: Claude puede asumir demasiado

---

## Relacionado

- [[skills.md]]           — cómo encapsular prompts en skills
- [[skill-chain-examples]]      — encadenar prompts en pipeline
- [[agent-configuration]]       — prompts para configurar agentes
- [[model-routing]]             — qué modelo usar

---

## Tags
#prompt #setup #configuracion #claude-code