#!/usr/bin/env bash
# Runs on every Claude session Stop — keeps ~/.claude/ lean automatically

CLAUDE_DIR="$HOME/.claude"

# Keep only the 5 newest backup files
ls -t "$CLAUDE_DIR/backups"/.claude.json.backup.* 2>/dev/null | tail -n +6 | xargs rm -f 2>/dev/null

# Ensure settings.local.json stays clean (no accumulated one-time permissions)
LOCAL_SETTINGS="$CLAUDE_DIR/settings.local.json"
if [ -f "$LOCAL_SETTINGS" ]; then
  SUSPECT=$(python3 -c "
import json, sys
try:
    d = json.load(open('$LOCAL_SETTINGS'))
    allows = d.get('permissions', {}).get('allow', [])
    bad = [a for a in allows if any(p in a for p in ['curl', '/tmp/', 'zip', 'wget'])]
    print(len(bad))
except: print(0)
" 2>/dev/null)
  if [ "${SUSPECT:-0}" -gt 0 ]; then
    echo '{"permissions":{"allow":[]}}' > "$LOCAL_SETTINGS"
  fi
fi

exit 0
