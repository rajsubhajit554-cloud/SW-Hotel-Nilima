# SW Hotel Nilima - Git PowerShell Update Script
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "       SW HOTEL NILIMA - GIT REPO AUTO UPDATE" -ForegroundColor Yellow
Write-Host "========================================================" -ForegroundColor Cyan

Write-Host "
[1/4] Checking Git Status..." -ForegroundColor Green
git status

Write-Host "
[2/4] Adding all changes..." -ForegroundColor Green
git add .

$defaultMsg = "Update SW Hotel Nilima website - 2026-08-31 10:35:32"
$commitMsg = Read-Host "Enter Commit Message (Press Enter for default: $defaultMsg)"
if ([string]::IsNullOrWhiteSpace($commitMsg)) {
    $commitMsg = $defaultMsg
}

Write-Host "
[3/4] Committing changes with message: "$commitMsg"..." -ForegroundColor Green
git commit -m "$commitMsg"

Write-Host "
[4/4] Pushing to GitHub (origin main)..." -ForegroundColor Green
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "
========================================================" -ForegroundColor Green
    Write-Host "  SUCCESS: Git Repository updated successfully!" -ForegroundColor Green
    Write-Host "========================================================" -ForegroundColor Green
} else {
    Write-Host "
========================================================" -ForegroundColor Red
    Write-Host "  ERROR: Push failed. Check credentials or internet connection." -ForegroundColor Red
    Write-Host "========================================================" -ForegroundColor Red
}

Read-Host "
Press Enter to exit"
