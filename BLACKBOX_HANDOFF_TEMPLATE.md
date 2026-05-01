# Handoff a Blackbox — {{YYYY-MM-DD HH:mm}}
# Copiar este archivo completo y pegarlo como PRIMER mensaje en Blackbox
# cuando Claude agota tokens o necesitas un modelo alternativo.

---

## Contexto del proyecto

Stack: {{Next.js / Python / tu stack}}
Sprint: {{N}} — {{objetivo del sprint}}
Modelo anterior: Claude {{sonnet-4-6 / opus-4-7}} (límite de tokens alcanzado)
Modelo destino: {{Gemini 3.1 Pro / o1-mini / DeepSeek V4 / consultar .claude/utilities/model-selector.html}}

---

## Reglas del proyecto (de CLAUDE.md)

- No speculative features. Justify dependencies. Remove dead code.
- Functions ≤ 100 líneas. Complexity ≤ 8. Lines ≤ 100 chars.
- Commits: imperative, ≤ 72 chars, conventional format.
- Toolchain: bun run typecheck && bun run test && bun run lint
- Never rm -rf. Never git push --force.

---

## Tarea en curso

{{Descripción exacta de qué estaba haciendo Claude}}

Contexto adicional:
{{cualquier detalle que el modelo necesita saber}}

---

## Archivos en uso

- {{ruta/archivo1.ts}} — {{qué hace / qué está cambiando}}
- {{ruta/archivo2.ts}} — {{qué hace / qué está cambiando}}
- {{ruta/archivo3.ts}} — {{qué hace / qué está cambiando}}

---

## Estado actual del código

```
{{pegar aquí el bloque de código en el que Claude se quedó}}
```

---

## Decisiones ya tomadas (no revertir)

1. {{decisión de arquitectura 1}}
2. {{decisión de implementación 2}}
3. {{por qué se eligió X sobre Y}}

---

## Errores o bloqueadores activos

{{si hay algún error activo, pegar el stack trace aquí}}

---

## Siguiente paso CONCRETO

{{Exactamente qué debe hacer el modelo ahora. Una sola acción.}}

Ejemplo: "Continúa implementando la función getUserById() en src/db/users.ts
siguiendo el patrón de las demás funciones del archivo."

---

## Guardrails para este modelo

- NO cambiar la arquitectura ya decidida
- NO añadir dependencias sin justificación
- NO modificar archivos fuera de los listados arriba
- SÍ seguir el estilo de código del proyecto
- SÍ preguntar si hay ambigüedad antes de asumir

---

## Cuándo volver a Claude

Cuando el modelo actual agote la cuota O cuando:
- La tarea requiera razonamiento sobre el proyecto completo
- Necesites ejecutar hooks o skills de .claude/
- Sea el inicio de una nueva sesión de trabajo

Dump de retorno: vault/CLAUDE-SESSIONS/{{YYYY-MM-DD}}-retorno-claude.md

---

_Generado por: PreCompact.sh hook · Sprint {{N}}_
