#!/bin/bash
echo "Cleaning up old Ollama models..."

OLD_MODELS=("qwen2.5-coder:7b" "qwen2.5-coder:14b" "llama3:8b" "llama-general" "qwen-coder" "mistral")

for model in "${OLD_MODELS[@]}"
do
    echo "Checking for $model..."
    if ollama list | grep -q "$model"; then
        echo "Removing $model..."
        ollama rm "$model"
    else
        echo "$model not found, skipping."
    fi
done

echo -e "\nCleanup complete!"
