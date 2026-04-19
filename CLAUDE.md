## User
Antworten auf Deutsch; Code/Kommentare/UI/Strings/Commits auf Englisch.

## Response
- Keine Trailing-Summaries — Diff/Output spricht
- Datei-Refs: `[name](path#Lx)` (VSCode-klickbar)
- Max 2 Sätze wenn kein Code-Output

## Token-Effizienz
- <3 Datei-Lookups: direkt Read/Grep — kein Agent spawnen
- Große Codebase-Exploration: Explore-Agent (schützt Hauptkontext)
- Bei unklarem Scope erst Glob/Grep, dann entscheiden

## Memory
- Global: `~/.claude/projects/-Users-anton/memory/` — Typen: user/feedback/project/reference
- Repo-lokal: `.claude/memory/project.md` — Architektur/Blocker/Stack (<60 Zeilen, max 5 DONE)
- MEMORY.md max 200 Zeilen — Einträge nach Relevanz priorisieren, veraltete löschen