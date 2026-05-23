# Programming Language Requirements Scanner

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Programming Language Requirements Scanner" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$installed = 0
$notInstalled = 0

# Function to check command
function Check-Tool {
    param([string]$Name, [string]$Command, [string]$VersionArg = "--version")
    
    try {
        $result = & $Command $VersionArg 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✓ $Name : $($result[0])" -ForegroundColor Green
            return $true
        }
    }
    catch {
        Write-Host "✗ $Name : Not installed" -ForegroundColor Red
        return $false
    }
    
    Write-Host "✗ $Name : Not installed" -ForegroundColor Red
    return $false
}

# Check each tool
if (Check-Tool "Node.js" "node" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "npm" "npm" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Python" "python" "-V") { $installed++ } else { $notInstalled++ }
if (Check-Tool "pip" "pip" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Java" "java" "-version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "C++ (g++)" "g++" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "C (gcc)" "gcc" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Git" "git" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Docker" "docker" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Ruby" "ruby" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Go" "go" "version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "Rust" "rustc" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool "PHP" "php" "--version") { $installed++ } else { $notInstalled++ }
if (Check-Tool ".NET" "dotnet" "--version") { $installed++ } else { $notInstalled++ }

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "SUMMARY" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Total Installed: $installed" -ForegroundColor Green
Write-Host "Total Not Installed: $notInstalled" -ForegroundColor Red
Write-Host "Scan completed at: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
