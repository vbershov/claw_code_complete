Write-Host "Cleaning up old Ollama models..." -ForegroundColor Cyan

$oldModels = @("qwen2.5-coder:7b", "qwen2.5-coder:14b", "llama3:8b", "llama-general", "qwen-coder", "mistral")

foreach ($model in $oldModels) {
    Write-Host "Checking for $model..."
    if (ollama list | Select-String $model) {
        Write-Host "Removing $model..." -ForegroundColor Yellow
        ollama rm $model
    } else {
        Write-Host "$model not found, skipping."
    }
}

Write-Host "`nCleanup complete!" -ForegroundColor Green
