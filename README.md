# Knowledge Engine — Discussion Agent

A VS Code Copilot agent for exploring and refining technical topics through structured discussion.

## Setup

1. Clone this repo and open the workspace in VS Code.
2. Ensure GitHub Copilot Chat is installed and active.
3. Topic files are stored at `C:\projects\knowledge` by default. To change this, edit `TOPICS_ROOT` in [.github/agents/technical-discussion.agent.md](.github/agents/technical-discussion.agent.md).

## Usage

In the Copilot Chat panel:

```
@technical-discussion distributed caching
```

This starts (or resumes) a topic discussion. You can also invoke it without an argument and it will ask what you'd like to discuss.

**Commands during discussion:**

- `discuss [topic]` / `check out [topic]` — switch to an existing topic
- `update the topic` — save discussion insights to the topic files
- `send to knowledge engine` — mark the topic as ready for review

**Seeding from a document:** attach or reference a file (chat log, email, notes) and the agent will extract and classify its content into a new topic.

## How It Works

Each topic produces two files:

| File | Location | Purpose |
|------|----------|---------|
| Topic file | `TOPICS_ROOT\<topic>.md` | Canonical knowledge (free-form docs) |
| Discussion file | `TOPICS_ROOT\.discussions\<topic>.md` | Temporary structured reasoning (7 sections) |

The discussion file tracks Facts, Opinions, Assumptions, Open Questions, Key Concepts, Risks, and Summary. The topic file is the source of truth that persists across sessions.

## Agents

| Agent | Description |
|-------|-------------|
| `@technical-discussion` | Explore and refine topics through discussion |
| `@topic-search` | Search across the knowledge base for keywords or cross-references |
