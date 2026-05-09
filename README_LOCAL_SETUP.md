# Local LLM Setup for Claude Code (Windows 11)

This guide explains how to set up a local development environment using Ollama and Claude Code on Windows 11.

## 🚀 Quick Start (One Command)

To deploy and configure the entire environment automatically in the current directory, run:

### Windows (PowerShell):
```powershell
.\setup.ps1
```

### Linux/macOS (Bash):
```bash
bash setup.sh
```

---

## Detailed Setup Instructions

## 1. Install Ollama for Windows

Download the Windows installer from [ollama.com](https://ollama.com/) and run it.

## 2. Pull the coding model (Manual)

If you didn't use the setup script, run:
```powershell
ollama pull qwen2.5-coder:7b
```

## 3. Install Claude Code CLI

```bash
# Recommendation: Official installer via curl/bash
curl -fsSL https://claude.ai/install.sh | bash
```

## 4. Run Claude Code with Local LLM

### Using LiteLLM Proxy (Recommended)

1. Start the LiteLLM proxy (separate terminal):
   ```powershell
   litellm --model ollama/qwen2.5-coder:7b
   ```

2. Run Claude Code:
   ```powershell
   $env:ANTHROPIC_BASE_URL="http://localhost:4000"
   $env:ANTHROPIC_API_KEY="sk-any-key"
   claude
   ```

## 5. Agent Orchestration

Agent roles are defined in `.claude/agents/`. You can use the provided PowerShell scripts in `skills/` for local automation:

- `.\skills\lint.ps1`
- `.\skills\test.ps1`
- `.\skills\build.ps1`

## 6. Directory Structure

All files and configurations are strictly stored within this repository directory:
- `.claude/agents/`: Agent role definitions.
- `skills/`: Automation hooks (lint, test, build).
- `src/`: FastAPI backend skeleton.
- `tests/`: Project test suite.
- `CLAUDE.md`: Global AI memory and rulebook.
