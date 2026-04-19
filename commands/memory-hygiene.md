Führe eine Memory-Hygiene für das globale Claude-Setup durch. Keine Rückfragen — automatisch ausführen.

## 1. Global Memory prüfen
Lese alle Dateien in `~/.claude/projects/-Users-anton--claude/memory/`.

Für jede Memory-Datei prüfen:
- Ist der Inhalt noch aktuell? (Vergleich mit echtem Stand in Files/Git wenn nötig)
- Ist der Inhalt redundant mit CLAUDE.md oder einer anderen Memory-Datei?
- Ist die `description` im Frontmatter präzise genug um Relevanz zu beurteilen?

## 2. MEMORY.md Index bereinigen
- Alle Pointer verifizieren (Datei existiert noch?)
- Einträge nach Wichtigkeit sortieren (user > feedback aktiv > project > reference)
- Veraltete oder redundante Einträge entfernen
- Max 200 Zeilen — kürzen wenn nötig

## 3. Repo-lokale Memory prüfen (falls vorhanden)
Falls `.claude/memory/project.md` im aktuellen Verzeichnis existiert:
- Done-Sektion: max 5 Einträge — älteste entfernen
- TODO: veraltete/erledigte Punkte entfernen
- Notizen: irrelevante entfernen

## 4. settings.local.json prüfen
Öffne `~/.claude/settings.local.json` — entferne alle Einmal-Permissions (Patterns: `curl *github*`, `cp /tmp/*`, einmalige `mkdir -p *`) die nicht dauerhaft benötigt werden.

## 5. Abschluss
Gib eine kompakte Übersicht: Was wurde geändert, was war bereits clean.

Argumente: $ARGUMENTS
