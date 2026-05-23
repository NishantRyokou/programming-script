# programming-script
This toolkit helps you scan your system for installed programming languages and development tools, displaying their versions and installation status.
# Programming Language Requirements Scanner

This toolkit helps you scan your system for installed programming languages and development tools, displaying their versions and installation status.

## 📋 What Gets Checked

The scanner checks for the following tools:
- **Node.js & npm** - JavaScript runtime and package manager
- **Python & pip** - Python interpreter and package manager
- **Java** - Java Development Kit
- **C/C++** - GCC and G++ compilers
- **Git** - Version control system
- **Docker** - Container platform
- **Ruby** - Ruby interpreter
- **Go** - Go programming language
- **Rust** - Rust programming language
- **PHP** - PHP interpreter
- **.NET** - .NET framework

## 🚀 How to Use

### Option 1: Run from VS Code (Recommended)

1. Open VS Code in the project directory
2. Press `Ctrl + Shift + B` (or `Cmd + Shift + B` on Mac)
3. Select **"Check Programming Requirements"** from the task list
4. The results will appear in the integrated terminal

### Option 2: Run Node.js Script Directly

```bash
node check-requirements.js
```

### Option 3: Run Batch Script (Windows)

```bash
check-requirements.bat
```

### Option 4: Run PowerShell Script

```powershell
powershell -ExecutionPolicy Bypass -File check-requirements.ps1
```

## 📊 Output Example

```
========================================
Programming Language Requirements Scanner
========================================

✓ Node.js             : v24.13.1
✓ npm                 : 11.15.0
✗ Python              : Not installed
✗ pip                 : Not installed
✓ Java                : openjdk version "21.0.10"
✓ C++ (g++)           : g++ (MinGW.org GCC-6.3.0-1) 6.3.0
✓ C (gcc)             : gcc (MinGW.org GCC-6.3.0-1) 6.3.0
✓ Git                 : git version 2.54.0.windows.1
✓ Docker              : Docker version 29.4.0
✗ Ruby                : Not installed
✗ Go                  : Not installed
✗ Rust                : Not installed
✗ PHP                 : Not installed
✗ .NET                : Not installed

========================================
SUMMARY
========================================
Total Installed: 7
Total Not Installed: 7
Scan completed at: 23/5/2026, 2:46:51 pm
========================================
```

## 🔧 Files Included

1. **check-requirements.js** - Node.js version (recommended, most reliable)
2. **check-requirements.bat** - Windows batch script
3. **check-requirements.ps1** - PowerShell script
4. **.vscode/tasks.json** - VS Code task configuration

## 💡 Tips

- The Node.js version is the most reliable and works across all platforms
- Results are displayed in real-time in the terminal
- The scan typically completes in 2-5 seconds
- Use this to verify your development environment is properly set up
- Great for onboarding new team members or setting up new machines

## 🎯 Use Cases

- **Environment Setup Verification** - Confirm all required tools are installed
- **CI/CD Debugging** - Check what's available in your build environment
- **Team Onboarding** - Verify new developers have all necessary tools
- **Project Requirements** - Document what tools your project needs
- **Troubleshooting** - Quickly identify missing dependencies

## 📝 Notes

- Some tools may require additional setup or PATH configuration
- If a tool shows "Not installed" but you believe it's installed, check your system PATH
- The scanner uses standard version flags (`--version`, `-V`, etc.)
- Results are printed to stdout for easy logging and sharing

---

**Created:** May 23, 2026
**Last Updated:** May 23, 2026
