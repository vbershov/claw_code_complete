Write-Host "Running linters..."
if (Get-Command flake8 -ErrorAction SilentlyContinue) {
    flake8 src/
} else {
    Write-Host "flake8 not found. Skipping linting." -ForegroundColor Yellow
}
