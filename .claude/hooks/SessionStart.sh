#!/bin/bash
# SessionStart.sh — Carga contexto del proyecto al inicio
# Tipo: SessionStart hook

echo "=== Session Context ==="

# Mostrar estado del git
if command -v git &> /dev/null; then
  BRANCH=$(git branch --show-current 2>/dev/null)
  if [ -n "$BRANCH" ]; then
    echo "Branch: $BRANCH"
    STATUS=$(git status --porcelain 2>/dev/null | head -5)
    if [ -n "$STATUS" ]; then
      echo "Status:"
      echo "$STATUS"
    fi
  fi
fi

# Cargar último sprint si existe
if [ -f "vault/CLAUDE-SESSIONS/current-sprint.md" ]; then
  echo "---"
  echo "Sprint actual:"
  head -10 vault/CLAUDE-SESSIONS/current-sprint.md
fi

echo "========================"
