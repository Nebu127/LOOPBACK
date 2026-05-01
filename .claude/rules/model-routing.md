---
name: model-routing
description: >
  Routing completo de modelos. Combina routing por empresa y por
  especialidad. Claude Code es el motor preferido; Blackbox gestiona
  fallbacks. PreCompact.sh vuelca estado a Obsidian antes de cambio.
  Cargar siempre en todas las sesiones.
scope: "**"
---

# Model Routing — índice completo
# Fuente: Artificial Analysis Intelligence Index v4.0 · abril 2026

##############################################################
## PARTE 1 — ROUTING POR EMPRESA
##############################################################

## Anthropic — motor preferido (Claude Code)

| Modelo            | IQ   | t/s  | SWE     | Usar cuando                             |
|-------------------|------|------|---------|-----------------------------------------|
| Claude Opus 4.7   | 57   | —    | 87.6%   | Coding complejo, agentes, estrategia    |
| Claude Sonnet 4.6 | ~50  | —    | 79.6%   | Tarea diaria principal — mejor valor    |
| Claude 3.7 Sonnet | 48   | 78   | —       | Balance estable con contexto .claude/   |
| Claude Haiku 4.5  | ~38  | —    | —       | Drafts rápidos, formato, edits simples  |

Reglas:
- Opus 4.7 + Claude Code = 80.9% SWE con scaffold propio.
- Sonnet 4.6 es el default. IQ casi igual a Opus, 40% más barato.
- Haiku para tareas que no necesiten contexto profundo del repo.
- Nuevo chat cada ~15 mensajes para limpiar acumulación de contexto.
- Editar último mensaje en vez de responder acumula menos tokens.

---

## OpenAI — fallback inteligencia (vía Blackbox)

| Modelo        | IQ  | t/s | Usar cuando                                  |
|---------------|-----|-----|----------------------------------------------|
| GPT-5.5 xhigh | 60  | —   | Techo IQ global — razonamiento extremo       |
| GPT-5.4 xhigh | 57  | —   | Razonamiento + terminal automation (75%)     |
| o4-mini high  | ~52 | —   | Razonamiento rápido, alternativa a o3        |
| o1-mini       | 54  | 211 | Velocidad máxima con inteligencia media      |
| GPT-4o        | 41  | 50  | Fallback general cuando Sonnet no basta      |
| GPT-4o mini   | 36  | 107 | Bajo costo, tareas de volumen                |

Nota: GPT-5.4 supera a Opus 4.7 en terminal automation (75% OSWorld).
      Para coding de aplicaciones, Opus 4.7 + Claude Code sigue ganando.

---

## Google — fallback velocidad + balance (vía Blackbox)

| Modelo              | IQ  | t/s | SWE   | Usar cuando                         |
|---------------------|-----|-----|-------|-------------------------------------|
| Gemini 3.1 Pro      | 57  | 109 | 80.6% | Mejor ratio IQ/vel del benchmark    |
| Gemini 3 Flash      | ~50 | 198 | 78%   | Velocidad + calidad — excepcional   |
| Gemini 2.0 Flash    | 48  | 172 | —     | Drafts rápidos, segunda a o1-mini   |
| Gemini 3 Flash Lite | ~40 | —   | —     | Ultra barato, contexto 1M tokens    |

Nota: Gemini 3 Flash tiene 78% SWE siendo modelo más pequeño.
      Mejor opción de fallback por coste-rendimiento.

---

## xAI — fallback multi-agente (vía Blackbox)

| Modelo        | IQ   | ctx  | Usar cuando                                |
|---------------|------|------|--------------------------------------------|
| Grok 4.3 Beta | ~55  | —    | SuperGrok Heavy $300/mes — cutting edge    |
| Grok 4.20     | ~52  | 2M   | Arquitectura 4 agentes paralelos nativos   |
| Grok 4 Fast   | —    | 1M   | Baja latencia, contexto largo              |

---

## Meta — open-weight + datos sensibles (Ollama)

| Modelo           | IQ  | t/s   | ctx  | Usar cuando                            |
|------------------|-----|-------|------|----------------------------------------|
| Llama 4 Scout    | ~45 | 2600* | 10M  | Contexto enorme, open, self-hosted     |
| Llama 4 Maverick | ~48 | —     | —    | Balance open-weight                    |
| Llama 3.3 70B    | 41  | 99    | —    | Offline estable, bien soportado Ollama |

* 2600 t/s en Cerebras. En hardware local será menor.
Configuración: `ollama run llama4-scout` / `ollama run llama3.3:70b`

---

## DeepSeek — open-weight código/math (Blackbox / Ollama)

| Modelo          | IQ  | t/s | Precio    | Usar cuando                         |
|-----------------|-----|-----|-----------|-------------------------------------|
| DeepSeek V4 Pro | 52  | —   | $0.28/M   | ~90% GPT-5.4 a 1/50 del costo       |
| DeepSeek R1     | 60  | 26  | —         | Código, matemáticas, razonamiento   |

Nota: DeepSeek R1 tiene IQ 60 (top-3 global) pero servidores en China.
      Para datos sensibles: self-host con Ollama o usar alternativa.

---

## Moonshot AI / Kimi — open-weight coding (Blackbox)

| Modelo            | IQ  | SWE    | Usar cuando                              |
|-------------------|-----|--------|------------------------------------------|
| Kimi K2.6         | 54  | tier A | Top IQ open-weight global. Coding Tier A |
| Kimi K2.5 Thinking| ~50 | 76.8%  | Hasta 100 sub-agentes simultáneos        |

---

## Alibaba / Qwen — open-weight económico (Ollama / API)

| Modelo            | IQ   | Precio  | Usar cuando                           |
|-------------------|------|---------|---------------------------------------|
| Qwen 3.5          | ~48  | $0.10/M | Razonamiento barato, Apache 2.0       |
| Qwen3-Coder 480B  | —    | —       | Código especializado, MoE             |
| Qwen3.5 0.8B      | nano | $0.02/M | On-device, iPhone sin conexión        |

---

## MiniMax — open-weight coding económico

| Modelo       | IQ  | SWE   | Precio    | Usar cuando                       |
|--------------|-----|-------|-----------|-----------------------------------|
| MiniMax M2.5 | ~53 | 80.2% | $0.30/M   | Mejor valor SWE del mercado       |
| MiniMax M2.7 | ~50 | 78%   | —         | Alternativa estable               |

---

## Zhipu AI / GLM — open-weight coding económico

| Modelo  | SWE   | Precio  | Usar cuando                              |
|---------|-------|---------|------------------------------------------|
| GLM-5.1 | ~77%  | $3/mes  | 94.6% del rendimiento de Opus 4.6 coding |
| GLM-5   | 77.8% | —       | Open · pesos descargables                |

---

## Mistral AI — cumplimiento UE (GDPR)

| Modelo          | IQ  | t/s | TTFT   | Usar cuando                         |
|-----------------|-----|-----|--------|-------------------------------------|
| Mistral Large 2 | 38  | 47  | —      | GDPR nativo, empresa francesa       |
| Ministral 3 3B  | nano| —   | 0.46s  | Latencia mínima del benchmark       |

---

## Inception / IBM — velocidad extrema

| Modelo             | t/s | Usar cuando                                 |
|--------------------|-----|---------------------------------------------|
| Mercury 2          | 805 | El más rápido del benchmark global          |
| Granite 4.0 H Small| 428 | IBM · 2do más rápido · open                 |
| Granite 3.3 8B     | 345 | IBM · 3er más rápido · ligero               |

---

## AWS Bedrock

| Modelo   | IQ  | t/s | Usar cuando                              |
|----------|-----|-----|------------------------------------------|
| Nova Pro | 37  | 83  | Stack AWS existente, región configurable |


##############################################################
## PARTE 2 — ROUTING UNIFICADO POR ESPECIALIDAD
##############################################################

## Velocidad absoluta — streaming, autocomplete, drafts

1. Mercury 2            Inception    805 t/s  — techo global de velocidad
2. Llama 4 Scout*       Meta         2600 t/s — en Cerebras, open-weight
3. Granite 4.0 H Small  IBM          428 t/s  — open, muy rápido
4. o1-mini              OpenAI       211 t/s  — IQ 54 + velocidad
5. Gemini 3 Flash       Google       198 t/s  — IQ ~50, 78% SWE

Dentro de Claude Code: Haiku 4.5 (velocidad con contexto .claude/)

---

## Mejor ratio IQ / velocidad — código diario

1. Gemini 3.1 Pro      Google      IQ 57  / 109 t/s — ratio top del benchmark
2. Gemini 3 Flash      Google      IQ ~50 / 198 t/s — 78% SWE + muy rápido
3. Claude Sonnet 4.6   Anthropic   IQ ~50           — preferido con .claude/
4. MiniMax M2.5        MiniMax     IQ ~53           — 80.2% SWE a $0.30/M

---

## Inteligencia máxima — investigación, estrategia

1. GPT-5.5 xhigh       OpenAI      IQ 60 — techo global
2. GPT-5.4 xhigh       OpenAI      IQ 57
3. Claude Opus 4.7     Anthropic   IQ 57 — preferido con Claude Code
4. Gemini 3.1 Pro      Google      IQ 57 — ARC-AGI-2 líder (77.1%)

Aviso: TTFT puede ser 10-150s en modelos reasoning. No para interactivo.

---

## Coding + SWE-bench — máxima calidad en código

1. Claude Opus 4.7     Anthropic   87.6% — con Claude Code scaffold
2. MiniMax M2.5        MiniMax     80.2% — mejor valor open
3. Claude Sonnet 4.6   Anthropic   79.6% — diario, 40% más barato que Opus
4. Gemini 3 Flash      Google      78%
5. Kimi K2.6           Moonshot    tier A — top open-weight coding
6. GLM-5.1             Zhipu       ~77%  — $3/mes

---

## Multi-agente — orquestación paralela

1. Kimi K2.5 Thinking  Moonshot  hasta 100 sub-agentes
2. Grok 4.20           xAI       4 agentes paralelos nativos
3. Claude Opus 4.7     Anthropic  mejor scaffold agentic (Claude Code)

---

## Open-weight inteligente — self-hosted / sin vendor lock-in

1. Kimi K2.6           Moonshot  IQ 54  — top open IQ global
2. DeepSeek V4 Pro     DeepSeek  IQ 52  — $0.28/M · MIT license
3. GLM-5.1             Zhipu     ~77% SWE · $3/mes
4. Qwen 3.5            Alibaba   $0.10/M · Apache 2.0
5. MiniMax M2.5        MiniMax   80.2% SWE · $0.30/M

---

## Datos sensibles / offline / air-gapped

1. Llama 4 Scout       Meta/Ollama  10M ctx · open
2. Llama 3.3 70B       Meta/Ollama  estable, bien soportado
3. Qwen3.5 0.8B        Alibaba      on-device · iPhone offline
4. DeepSeek R1*        DeepSeek     IQ 60 si tienes GPU suficiente

* DeepSeek R1 self-hosted: requiere ~64GB VRAM en Q4

---

## Cumplimiento regulatorio — EU GDPR

1. Mistral Large 2     Mistral  IQ 38 — empresa francesa, GDPR nativo
2. Ministral 3 3B      Mistral  TTFT 0.46s — ultra baja latencia en EU
3. Nova Pro            AWS      IQ 37 — configurable por región

---

## Contexto ultra-largo

1. Llama 4 Scout       Meta      10M tokens — open-weight
2. Grok 4.20           xAI       2M tokens
3. Grok 4 Fast         xAI       1M tokens
4. Claude Sonnet 4.6   Anthropic 1M tokens (beta)


##############################################################
## PARTE 3 — JERARQUÍA Y PROTOCOLO DE FALLBACK
##############################################################

## Jerarquía de activación

```
1. Claude Code (Anthropic)
   ├── Opus 4.7    → coding complejo, agentes, estrategia
   ├── Sonnet 4.6  → tarea diaria — default
   └── Haiku 4.5   → drafts, formato, edits rápidos

2. Blackbox router (token limit o tarea especializada)
   ├── Gemini 3.1 Pro     → balance IQ/vel, primera opción
   ├── o1-mini            → velocidad máxima con IQ decente
   ├── GPT-5.4 xhigh      → razonamiento + terminal automation
   ├── Kimi K2.6          → coding open-weight top
   ├── DeepSeek V4 Pro    → presupuesto ajustado
   └── Ollama local       → datos sensibles

3. Ultra velocidad (si latencia es crítica)
   └── Mercury 2 / Granite / Llama 4 Scout en Cerebras

4. Compliance EU
   └── Mistral Large 2 / Ministral 3 3B
```

---

## Protocolo de cambio de modelo (bridge Obsidian)

Cuando Blackbox activa fallback — pasos obligatorios:

1. PreCompact.sh vuelca estado a: `vault/CLAUDE-SESSIONS/YYYY-MM-DD-HH.md`
   Incluir: tarea actual · archivos en uso · decisiones tomadas · errores.
2. Pegar ese archivo como primer mensaje en Blackbox.
3. Seleccionar modelo según tabla de especialidad (Parte 2).
4. Al recuperar cuota Claude, retomar con SessionStart.sh.

---

## Plan de sesión diario

```
09:00  Haiku 4.5   → batch de drafts y edits rápidos
13:00  Sonnet 4.6  → bloque de código y análisis
17:00  Opus 4.7    → solo si la tarea lo justifica (max 90 min)
       Obsidian    → dump antes de cerrar cada bloque largo
```

---

## Gotchas críticos

- Nuevo modelo en fallback NO lee .claude/ — siempre pegar contexto vault.
- DeepSeek en API: servidores en China — no usar con datos sensibles.
- Grok 4.3 requiere SuperGrok Heavy $300/mes — solo si ya tienes sub.
- GPT-5.5/5.4 xhigh tienen TTFT 10-150s — no para tareas interactivas.
- Llama 4 Scout en local: 10M ctx requiere mucha RAM — usar Cerebras API.
- Qwen3.5 0.8B on-device: corre en iPhone, IQ nano — solo tareas simples.
- SWE-bench varía según scaffold: Opus 4.7 + Claude Code ≠ Opus 4.7 solo.

---

## Fallback Chain

```
Claude Sonnet → Claude Haiku → Claude Opus → 
GPT-4 (OpenAI) → Gemini 2.0 (Google) → DeepSeek
```

---

_Reglas cargadas en cada sesión por scope: "**"_
