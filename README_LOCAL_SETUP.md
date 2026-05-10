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
ollama pull qwen3:14b
```

## 3. Install Claude Code CLI

```bash
# Recommendation: Official installer via curl/bash
curl -fsSL https://claude.ai/install.sh | bash
```

## 4. Run Claude Code with Local LLM

### Using LiteLLM Proxy (Recommended)

1. Install LiteLLM with proxy support:
   ```powershell
   pip install 'litellm[proxy]'
   ```

2. Start the LiteLLM proxy:
   ```powershell
   litellm --config .\litellm_config.yaml
   ```

3. Run Claude Code (using automation script):
   ```powershell
   .\start-claude.ps1
   ```

   *Note: Qwen3 14B is aliased as `claude-3-5-sonnet-20241022` for compatibility.*

## 5. Agent Orchestration

Agent roles are defined in `.claude/agents/`. You can use the provided PowerShell scripts in `skills/` for local automation:

- `.\skills\lint.ps1`
- `.\skills\test.ps1`
- `.\skills\build.ps1`

## 6. Troubleshooting

### ConnectionRefused Error
If Claude Code shows `Unable to connect to API (ConnectionRefused)`:
1. **Check LiteLLM**: Ensure the LiteLLM proxy is running in a separate terminal window.
2. **Check Port**: Verify that LiteLLM is listening on `http://localhost:4000` (default).
3. **Run Command**: Make sure you ran `litellm --config .\litellm_config.yaml`.

## 7. Directory Structure

All files and configurations are strictly stored within this repository directory:
- `.claude/agents/`: Agent role definitions.
- `skills/`: Automation hooks (lint, test, build).
- `src/`: FastAPI backend skeleton.
- `tests/`: Project test suite.
- `CLAUDE.md`: Global AI memory and rulebook.
