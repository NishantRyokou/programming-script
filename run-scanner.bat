@echo off
REM Master script to run the requirements scanner

setlocal enabledelayedexpansion

echo.
echo ========================================
echo Programming Language Requirements Scanner
echo ========================================
echo.
echo Choose your preferred scanner:
echo.
echo 1. Node.js (Recommended - Most Reliable)
echo 2. Python
echo 3. Batch Script
echo 4. PowerShell
echo.

set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" (
    echo.
    echo Running Node.js scanner...
    echo.
    node check-requirements.js
) else if "%choice%"=="2" (
    echo.
    echo Running Python scanner...
    echo.
    python check-requirements.py
) else if "%choice%"=="3" (
    echo.
    echo Running Batch scanner...
    echo.
    call check-requirements.bat
) else if "%choice%"=="4" (
    echo.
    echo Running PowerShell scanner...
    echo.
    powershell -ExecutionPolicy Bypass -File check-requirements.ps1
) else (
    echo Invalid choice. Running Node.js scanner by default...
    echo.
    node check-requirements.js
)

pause
