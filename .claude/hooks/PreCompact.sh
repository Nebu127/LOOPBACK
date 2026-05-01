#!/bin/bash
# PreCompact.sh — Guarda estado antes de compactar contexto
# Tipo: PreCompact hook

echo "=== Saving session state ==="

# Guardar estado actual del proyecto
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
SESSION_FILE="vault/CLAUDE-SESSIONS/session-${TIMESTAMP}.md"

# Crear directorio si no existe
mkdir -p vault/CLAUDE-SESSIONS

# Guardar contexto actual
{
  echo "# Session State — $TIMESTAMP"
  echo ""
  echo "## Git State"
  echo "- Branch: \`$(git branch --show-current 2>/dev/null)\`"
  echo "- Status: \`$(git status --porcelain 2>/dev/null | wc -l)\` cambios"
  echo ""
  echo "## Last Tools Used"
  echo "$CLAUDE_LAST_TOOLS"
  echo ""
  echo "## Session Summary"
  echo "_Completar antes de cambiar de modelo_"
} > "$SESSION_FILE"

echo "Saved: $SESSION_FILE"

# Guardar también en current para rápido acceso
cp "$SESSION_FILE" vault/CLAUDE-SESSIONS/current-session.md

echo "=========================="
