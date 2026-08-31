@echo off
title SW Hotel Nilima - Git Auto Update
color 0A
echo ========================================================
echo        SW HOTEL NILIMA - GIT REPO AUTO UPDATE
echo ========================================================
echo.

echo [1/4] Checking Git Status...
git status
echo.

echo [2/4] Adding all changes...
git add .
echo.

set /p commit_msg="Enter Commit Message (Press Enter for default: Update SW Hotel Nilima website): "
if "%commit_msg%"=="" set commit_msg=Update SW Hotel Nilima website - %date% %time%

echo.
echo [3/4] Committing changes with message: "%commit_msg%"
git commit -m "%commit_msg%"
echo.

echo [4/4] Pushing to GitHub (origin main)...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo   SUCCESS: Git Repository updated successfully!
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo   ERROR: Failed to push to GitHub. Please check network
    echo   or GitHub credentials / permissions.
    echo ========================================================
)

echo.
pause
