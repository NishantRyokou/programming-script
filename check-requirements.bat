@echo off
REM Programming Language Requirements Scanner
REM This batch script checks for installed programming languages

setlocal enabledelayedexpansion
color 0B

echo.
echo ========================================
echo Programming Language Requirements Scanner
echo ========================================
echo.

set installed=0
set notinstalled=0

REM Check Node.js
echo Checking Node.js...
node --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
    echo [OK] Node.js: !NODE_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Node.js: Not installed
    set /a notinstalled+=1
)

REM Check npm
echo Checking npm...
npm --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('npm --version') do set NPM_VERSION=%%i
    echo [OK] npm: !NPM_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] npm: Not installed
    set /a notinstalled+=1
)

REM Check Python
echo Checking Python...
python --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('python --version') do set PYTHON_VERSION=%%i
    echo [OK] Python: !PYTHON_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Python: Not installed
    set /a notinstalled+=1
)

REM Check pip
echo Checking pip...
pip --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('pip --version') do set PIP_VERSION=%%i
    echo [OK] pip: !PIP_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] pip: Not installed
    set /a notinstalled+=1
)

REM Check Java
echo Checking Java...
java -version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('java -version 2^>^&1 ^| findstr /R "version"') do set JAVA_VERSION=%%i
    echo [OK] Java: !JAVA_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Java: Not installed
    set /a notinstalled+=1
)

REM Check C++ (g++)
echo Checking C++ (g++)...
g++ --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('g++ --version ^| findstr /R "g++"') do set GPP_VERSION=%%i
    echo [OK] C++ (g++): !GPP_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] C++ (g++): Not installed
    set /a notinstalled+=1
)

REM Check C (gcc)
echo Checking C (gcc)...
gcc --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('gcc --version ^| findstr /R "gcc"') do set GCC_VERSION=%%i
    echo [OK] C (gcc): !GCC_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] C (gcc): Not installed
    set /a notinstalled+=1
)

REM Check Git
echo Checking Git...
git --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('git --version') do set GIT_VERSION=%%i
    echo [OK] Git: !GIT_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Git: Not installed
    set /a notinstalled+=1
)

REM Check Docker
echo Checking Docker...
docker --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('docker --version') do set DOCKER_VERSION=%%i
    echo [OK] Docker: !DOCKER_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Docker: Not installed
    set /a notinstalled+=1
)

REM Check Ruby
echo Checking Ruby...
ruby --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('ruby --version') do set RUBY_VERSION=%%i
    echo [OK] Ruby: !RUBY_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Ruby: Not installed
    set /a notinstalled+=1
)

REM Check Go
echo Checking Go...
go version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('go version') do set GO_VERSION=%%i
    echo [OK] Go: !GO_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Go: Not installed
    set /a notinstalled+=1
)

REM Check Rust
echo Checking Rust...
rustc --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('rustc --version') do set RUST_VERSION=%%i
    echo [OK] Rust: !RUST_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] Rust: Not installed
    set /a notinstalled+=1
)

REM Check PHP
echo Checking PHP...
php --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('php --version ^| findstr /R "PHP"') do set PHP_VERSION=%%i
    echo [OK] PHP: !PHP_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] PHP: Not installed
    set /a notinstalled+=1
)

REM Check .NET
echo Checking .NET...
dotnet --version >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=*" %%i in ('dotnet --version') do set DOTNET_VERSION=%%i
    echo [OK] .NET: !DOTNET_VERSION!
    set /a installed+=1
) else (
    echo [FAIL] .NET: Not installed
    set /a notinstalled+=1
)

REM Summary
echo.
echo ========================================
echo SUMMARY
echo ========================================
echo Total Installed: %installed%
echo Total Not Installed: %notinstalled%
echo ========================================
echo.
pause
