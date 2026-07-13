---
name: docs-enforcer
description: Cleans up the docs folder and enforces a clean, simple, single source of truth structure without nested folders.
---

# Docs Enforcer Workflow

This skill ensures the `docs/` folder remains a clean, un-nested single source of truth for the project.

## 1. Directory Structure Rules
- **No Nested Folders:** The `docs/` directory must remain completely flat. No subdirectories are allowed (e.g., no `docs/planning/`, `docs/architecture/`). If nested folders exist, flatten them and update all links, then delete the subdirectories.
- **Simplicity:** Do not allow the generation of many temporary or low-value files.

## 2. Core Documentation Trinity
Ensure these three files exist and are the absolute source of truth:
1. `vision.md` (The North Star, high-level objectives)
2. `backlog.md` (Granular tasks, strictly prioritized)
3. `release-notes.md` (Completed tasks and changelog)

## 3. Allowed Additional Documents
Keep additional files to a bare minimum:
- A few basic, highly detailed, and continuously updated `.md` files that quickly get new developers up to speed on the repo (e.g., `standards.md`, `blueprint.md`).
- `openapi.yaml` or `openapi.json` ONLY if the project exposes APIs.

## 4. Cleanup Execution
- Scan `docs/` for any nested directories. Move their contents to the root of `docs/` and delete the empty directories.
- Delete or archive any outdated, redundant, or auto-generated scratchpad files.
- Ensure the Core Trinity (`vision.md`, `backlog.md`, `release-notes.md`) exists and is formatted cleanly.
