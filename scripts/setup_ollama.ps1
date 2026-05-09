Write-Host "Checking Ollama status..."
if (!(Get-Command ollama -ErrorAction SilentlyContinue)) {
    Write-Host "Ollama is not installed. Please visit https://ollama.com to download the Windows installer." -ForegroundColor Red
    exit 1
}

Write-Host "Pulling qwen2.5-coder:7b model..."
ollama pull qwen2.5-coder:7b

Write-Host "Setup complete. You can now run Claude Code with:"
Write-Host "ollama launch claude --model qwen2.5-coder:7b"
