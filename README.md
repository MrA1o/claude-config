# .claude

My personal Claude Code configuration — folder structure, settings, and commands.

## How it works

### CLAUDE.md — Behavior rules
Defines how Claude behaves in every session:
- Antworten auf Deutsch, Code/UI/Strings auf Englisch
- Always plan before acting (3–5 bullet points), use subagents for research and parallel tasks
- Never finish without proof (tests, logs, diff)
- No summaries after actions, no restating the task — straight to the point

### settings.json — Permissions & Hooks
- **Auto-approved commands:** `git`, `npm`, `bun`, `node`, `python`, `pip`, `mkdir`, `cp`, `mv`, `jq` — no confirmation prompt for these
- **Superpowers plugin** enabled — adds structured workflow skills (planning, debugging, TDD, etc.)
- **PreCompact hook** — before Claude compacts the context, it checks whether `project.md` or memory needs updating first
- **Stop hook** — at the end of every session, Claude checks if architecture/blockers changed and saves relevant memory

### Memory system — 3 layers
| Layer | Location | What goes in |
|-------|----------|--------------|
| Global rules | `~/.claude/CLAUDE.md` | Workflow & style prefs — only changed explicitly |
| Auto memory | `~/.claude/projects/<cwd>/memory/` | Feedback, corrections, reference — saved automatically |
| Project state | `.claude/memory/project.md` | Architecture, blockers, TODOs — updated when stack changes |

### /newproject command
Running `/newproject` in any directory sets up a fresh Claude-ready project:
creates `.claude/` folder structure, a blank `CLAUDE.md`, a `.claudeignore` with sensible defaults, and a `project.md` template for tracking goals, TODOs, and decisions.

## Install

```bash
git clone https://github.com/MrA1o/.claude.git ~/.claude
```

## Contents

| Path | Description |
|------|-------------|
| `CLAUDE.md` | Global instructions for Claude |
| `settings.json` | Permissions, hooks, and plugin config |
| `commands/` | Custom slash commands |
| `skills/` | Custom skills |
| `agents/` | Custom agents |
| `hooks/` | Shell hooks |
