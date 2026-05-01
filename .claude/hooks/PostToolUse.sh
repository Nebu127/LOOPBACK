#!/bin/bash
# PostToolUse.sh — Auto-commit NM-XXX tras ediciones
# Tipo: PostToolUse hook

RESULT=$CLAUDE_TOOL_RESULT
if [ "$RESULT" = "success" ]; then
  TOOL=$CLAUDE_TOOL_NAME
  if [ "$TOOL" = "Edit" ] || [ "$TOOL" = "Write" ]; then
    FILES=$(echo $CLAUDE_TOOL_OUTPUT_PATH | tr ' ' '\n' | xargs -I {} basename {} 2>/dev/null)
    if [ -n "$FILES" ]; then
      echo "Auto-commit: $FILES"
      # git add $CLAUDE_TOOL_OUTPUT_PATH
      # git commit -m "chore: $(echo $FILES | tr '\n' ' ')"
    fi
  fi
fi
