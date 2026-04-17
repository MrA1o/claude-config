Du startest in einem neuen Projektverzeichnis. Führe folgende Schritte automatisch aus — keine Rückfragen.

## 1. Ordnerstruktur anlegen

Erstelle im aktuellen Arbeitsverzeichnis:
- `.claude/commands/`
- `.claude/hooks/`
- `.claude/skills/`
- `.claude/plugins/`
- `.claude/memory/`

## 2. Dateien anlegen

**`CLAUDE.md`** (Projektwurzel, leer — wird bei Bedarf befüllt)

**`.claude/settings.json`**:
```json
{
  "$schema": "https://json.schemastore.org/claude-code-settings.json"
}
```

Kein `autoMemoryDirectory` Override — das eingebaute Auto-Memory läuft weiterhin am Default-Pfad (`~/.claude/projects/<cwd>/memory/`) für Verhaltensregeln und Feedback. Unser `project.md` ist davon getrennt und dient ausschließlich dem Projektstand.

**`.claudeignore`** (Projektwurzel):
```
# Dependencies
node_modules/
.pnp/
.pnp.js

# Build output
dist/
build/
out/
.next/
.nuxt/
.output/
.vercel/
.netlify/

# Python
__pycache__/
*.py[cod]
*.pyo
.venv/
venv/
env/
*.egg-info/
.eggs/
site-packages/

# Cache & temp
.cache/
.parcel-cache/
.turbo/
tmp/
temp/
*.tmp

# Logs
*.log
logs/

# Test coverage
coverage/
.nyc_output/
htmlcov/

# IDE
.idea/
*.iml

# OS
.DS_Store
Thumbs.db

# Large binary / generated
*.min.js
*.min.css
*.map
```

**`.claude/memory/project.md`** mit folgendem Inhalt — ersetze [PROJEKTNAME] mit dem Namen aus `$ARGUMENTS` oder dem Verzeichnisnamen:

```markdown
# [PROJEKTNAME]

## Projekt
- **Ziel**: 
- **Stack**: 
- **Wichtige Entscheidungen**: 

## TODO
<!-- Offene Aufgaben — wichtige zuerst -->

## Done
<!-- Max. 5 Einträge — älteste werden automatisch gelöscht -->

## Notizen
<!-- Nicht-offensichtliche Dinge: Gotchas, Abhängigkeiten, Konventionen -->
```

## 3. Abschluss

Gib eine einzeilige Bestätigung aus welche Struktur angelegt wurde.
Weise darauf hin ob `.claude/memory/` ins `.gitignore` soll (persönlich) oder committet wird (Team).

Argumente: $ARGUMENTS
