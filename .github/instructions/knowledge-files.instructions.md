---
description: "Use when creating or editing topic files in C:\\knowledge. Covers content preservation rules, naming conventions, and structural constraints for the Knowledge Engine two-file model."
applyTo: "C:/knowledge/**/*.md"
---
# Knowledge File Conventions

- **Never delete** existing content from topic files unless the user explicitly requests it. Revise, expand, or annotate instead.
- **Filenames** use kebab-case derived from the topic name (e.g., `distributed-caching.md`).
- **Free-form topic files** (`C:\knowledge\*.md`) stay in their natural documentation style — do not restructure them into the 7-section discussion format.
- **Discussion files** (`C:\knowledge\.discussions\*.md`) use the fixed 7-section structure: Facts, Opinions, Assumptions, Open Questions, Key Concepts, Risks, Summary.
- Clearly distinguish between facts, opinions, and assumptions — never present inferences as established facts.
