#!/bin/bash

echo "Checking Ollama status..."
if ! command -v ollama &> /dev/null
then
    echo "Ollama is not installed. Please visit https://ollama.com to install it."
    exit 1
fi

echo "Pulling qwen2.5-coder:7b model..."
ollama pull qwen2.5-coder:7b

echo "Setup complete. You can now run Claude Code with:"
echo "ollama launch claude --model qwen2.5-coder:7b"
