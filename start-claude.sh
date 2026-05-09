#!/bin/bash
export ANTHROPIC_BASE_URL="http://localhost:4000"
export ANTHROPIC_API_KEY="sk-any-key"

echo "Starting Claude Code (Local)..."
claude --model claude-3-5-sonnet-20241022
