Write-Host "Running tests..."
if (Get-Command pytest -ErrorAction SilentlyContinue) {
    $env:PYTHONPATH = "$(Get-Location)"
    pytest
} else {
    Write-Host "pytest not found. Skipping tests." -ForegroundColor Yellow
}
