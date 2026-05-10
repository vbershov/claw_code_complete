#!/bin/bash
echo "--- Starting Infrastructure Setup (Bash) ---"

# 1. Install Dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# 2. Setup Ollama
if ! command -v ollama &> /dev/null
then
    echo "Warning: Ollama not found. Please install it from https://ollama.com"
else
    echo "Pulling qwen3:14b..."
    ollama pull qwen3:14b
fi

echo "--- Setup Complete! ---"
echo "To start developing, follow the instructions in README_LOCAL_SETUP.md"
