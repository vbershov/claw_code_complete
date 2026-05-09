# Start Claude Code with Local LLM (Windows)
$env:ANTHROPIC_BASE_URL="http://localhost:4000"
$env:ANTHROPIC_API_KEY="sk-any-key"

Write-Host "Starting Claude Code (Local)..." -ForegroundColor Cyan
claude --model claude-3-5-sonnet-20241022
