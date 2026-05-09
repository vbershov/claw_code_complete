# Local LLM Setup for Claude Code

This guide explains how to set up a local development environment using Ollama and Claude Code.

## 1. Install Ollama

Download and install Ollama from [ollama.com](https://ollama.com/).

## 2. Pull the coding model

We use `qwen2.5-coder:7b` as it is optimized for coding tasks.

```bash
ollama pull qwen2.5-coder:7b
```

Alternatively, you can use the provided script:
```bash
bash scripts/setup_ollama.sh
```

## 3. Install Claude Code

If you haven't already, install the official Claude Code CLI:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

## 4. Run Claude Code with Local LLM

To use Claude Code with local models, it is recommended to use a proxy like **LiteLLM** to provide an Anthropic-compatible API.

### Option A: Using LiteLLM (Recommended)

1. Install LiteLLM:
   ```bash
   pip install litellm
   ```

2. Start the LiteLLM proxy:
   ```bash
   litellm --model ollama/qwen2.5-coder:7b
   ```
   *By default, this runs on http://0.0.0.0:4000*

3. Run Claude Code:
   ```bash
   export ANTHROPIC_BASE_URL="http://localhost:4000"
   export ANTHROPIC_API_KEY="sk-any-key"
   claude
   ```

### Option B: Direct Ollama (Experimental)

Note: Claude Code expects specific Anthropic headers and tool-calling structures which direct Ollama might not fully support yet.

```bash
export ANTHROPIC_BASE_URL="http://localhost:11434/v1"
export ANTHROPIC_API_KEY="ollama"
claude --model qwen2.5-coder:7b
```

## 5. Agent Orchestration

The project is pre-configured with agent roles in `.claude/agents/`. These agents can be invoked by Claude Code to perform specialized tasks using the context provided in this repository.
