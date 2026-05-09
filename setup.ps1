# Master Setup Script for Agent Orchestration Project (Windows 11)

Write-Host "--- Starting Infrastructure Setup ---" -ForegroundColor Cyan

# 1. Check for Python
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "Error: Python is not installed. Please install Python 3.10+." -ForegroundColor Red
    exit 1
}

# 2. Install Dependencies
Write-Host "Installing Python dependencies..." -ForegroundColor Green
pip install -r requirements.txt
if ($LASTEXITCODE -ne 0) {
    Write-Host "Failed to install dependencies." -ForegroundColor Red
    exit 1
}

# 3. Setup Ollama
Write-Host "Checking Ollama..." -ForegroundColor Green
if (!(Get-Command ollama -ErrorAction SilentlyContinue)) {
    Write-Host "Warning: Ollama not found. Please install it from https://ollama.com" -ForegroundColor Yellow
} else {
    Write-Host "Pulling qwen2.5-coder:7b..." -ForegroundColor Green
    ollama pull qwen2.5-coder:7b
}

# 4. Final Instructions
Write-Host "`n--- Setup Complete! ---" -ForegroundColor Cyan
Write-Host "Everything has been configured in the current directory: $(Get-Location)"
Write-Host "`nTo start developing:"
Write-Host "1. Run LiteLLM Proxy (in a separate terminal):"
Write-Host "   litellm --model ollama/qwen2.5-coder:7b"
Write-Host "2. Set Environment Variables and Start Claude Code:"
Write-Host '   $env:ANTHROPIC_BASE_URL="http://localhost:4000"; $env:ANTHROPIC_API_KEY="sk-any-key"; claude'
Write-Host "`n3. To run tests:"
Write-Host "   .\skills\test.ps1"
