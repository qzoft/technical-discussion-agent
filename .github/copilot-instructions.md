# Project Guidelines

ALWAYS end by asking me a question with the ask question tool until i answer in the ask question tool that you may stop.

## When in plan mode 
ask questions to me until you are have a good understanding of the task. 
You can ask more than one question at a time. give each querstion a number.  
When asking questions give a list of posible answers and name them a,b,c,d,.. 
so I can give answers like this: 1.a 2.c, 3.a ect.

## Purpose

This workspace contains agent customizations for the **Knowledge Engine** — a two-layer system for capturing and preserving technical knowledge.

- **Layer 1 (Discussion Agent):** Real-time reasoning partner for exploring topics via structured discussion.
- **Layer 2 (Knowledge Engine):** Persistent review and revision system (external to this workspace).

## Architecture

- **Workspace scope:** Agent definitions and customization files only — no application code lives here.
- **Topic storage:** All topic files and discussion files are stored at `C:\knowledge` (configurable via `TOPICS_ROOT` in each agent). This workspace never contains topic content.
- **Two-file model per topic:**
  - Free-form topic file → `C:\knowledge\<topic-name>.md` (canonical source of truth)
  - Structured discussion file → `C:\knowledge\.discussions\<topic-name>.md` (temporary reasoning artifact)

## Conventions

- Agent filenames use **kebab-case** (e.g., `technical-discussion.agent.md`).
- Topic filenames also use **kebab-case**, derived from the topic name.
- Agents must **never** create, modify, or delete files inside this workspace during topic discussions. All file I/O targets `TOPICS_ROOT`.
- The structured discussion file uses 7 fixed sections: Facts, Opinions, Assumptions, Open Questions, Key Concepts, Risks, Summary.
- Information is never deleted from topic files unless the user explicitly requests it.

## Key Files

- [.github/agents/technical-discussion.agent.md](./agents/technical-discussion.agent.md) — Primary discussion agent for exploring and refining topics.
