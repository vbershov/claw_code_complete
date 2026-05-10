# CLAUDE.md - AI Agent Memory & Rules

## Project Overview
This repository is a base for a complex Agent Orchestration system using Claude Code and local LLMs (Ollama).

## Technical Stack
- **Backend:** Python 3.10+, FastAPI
- **LLM:** Ollama (qwen3:14b)
- **Orchestration:** Ruflo-style agent definitions
- **CLI:** Claude Code

## Development Standards
- **Python:** Follow PEP 8. Use type hints for all functions.
- **API:** Use FastAPI dependency injection and Pydantic schemas.
- **Testing:** Add tests for every new feature in `tests/` directory.
- **Documentation:** Maintain `README_LOCAL_SETUP.md` for onboarding.

## Agent Guidelines
When acting as an agent in this repo, refer to your specific role in `.claude/agents/`.
- **Architect:** Consult for structural changes.
- **DevOps:** Consult for CI/CD and deployment.
- **QA:** Must approve all PRs (conceptually).
- **Security:** Run security scans on new dependencies.

## Key Workflows
- **Task Organization:** Every new task or feature must be created in its own subfolder within the `tasks/` directory (e.g., `tasks/task-name/`).
- **Linting:** Run `bash skills/lint.sh` before committing.
- **Testing:** Run `bash skills/test.sh` to verify changes.
- **Local Run:** `uvicorn src.main:app --reload`

## Memory / State
- [2024-05-09] Initial infrastructure deployed: FastAPI skeleton, Agent roles, Ollama setup guide.
