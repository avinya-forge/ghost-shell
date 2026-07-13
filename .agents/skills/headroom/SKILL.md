---
name: headroom
description: Compresses AI agent context to reduce token usage and keep branch heads clean using chopratejas/headroom.
---

# Headroom Context Compression Skill

Use the `headroom` CLI to compress verbose data (e.g. tool outputs, logs, RAG chunks, and conversation history) before sending to the LLM.

## How to use:
1. Ensure `headroom` is installed. Run `pip install "headroom-ai[all]"` or `npm install -g headroom-ai`.
2. Use `headroom proxy` or `headroom wrap` when running commands or querying files.
3. This compresses token usage by 60-95% while keeping branch heads clean and preserving context.
