---
description: "List all topics in the knowledge base, show last-modified dates, and identify which have pending discussion files"
agent: "agent"
[vscode, execute, read, agent, edit, search, web, 'pylance-mcp-server/*', vscode.mermaid-chat-features/renderMermaidDiagram, ms-azuretools.vscode-containers/containerToolsConfig, ms-python.python/getPythonEnvironmentInfo, ms-python.python/getPythonExecutableCommand, ms-python.python/installPythonPackage, ms-python.python/configurePythonEnvironment, todo]
---
Scan the knowledge base at `C:\knowledge` and produce a dashboard summary:

1. **List all topic files** (`C:\knowledge\*.md`) with their last-modified dates, sorted newest first and use the AskQuestions tool
2. **Check for pending discussion files** in `C:\knowledge\.discussions\` and note which topics have them.
3. **Present a table** with columns: Topic Name, Last Modified, Discussion File (yes/no).
4. **Summarize** how many topics exist total, how many have pending discussions, and which topic was most recently updated.
