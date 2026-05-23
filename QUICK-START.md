# Quick Start Guide - Requirements Scanner

## ⚡ Fastest Way to Run

### In VS Code:
Press `Ctrl + Shift + B` and select **"Check Programming Requirements"**

### From Terminal:
```bash
node check-requirements.js
```

## 📦 What You Get

4 different scanner implementations to choose from:

| Script | Language | Best For | Command |
|--------|----------|----------|---------|
| `check-requirements.js` | Node.js | ✅ **Recommended** - Most reliable | `node check-requirements.js` |
| `check-requirements.py` | Python | Python environments | `python check-requirements.py` |
| `check-requirements.bat` | Batch | Windows native | `check-requirements.bat` |
| `check-requirements.ps1` | PowerShell | PowerShell users | `powershell -ExecutionPolicy Bypass -File check-requirements.ps1` |

## 🎯 What It Checks

✓ Node.js & npm  
✓ Python & pip  
✓ Java  
✓ C/C++ (GCC/G++)  
✓ Git  
✓ Docker  
✓ Ruby  
✓ Go  
✓ Rust  
✓ PHP  
✓ .NET  

## 🚀 One-Click Setup

1. **Copy all files to your project root**
2. **Open VS Code**
3. **Press `Ctrl + Shift + B`**
4. **Select "Check Programming Requirements"**
5. **View results in terminal**

## 💻 Manual Commands

```bash
# Node.js (Recommended)
node check-requirements.js

# Python
python check-requirements.py

# Windows Batch
check-requirements.bat

# PowerShell
powershell -ExecutionPolicy Bypass -File check-requirements.ps1

# Interactive Menu
run-scanner.bat
```

## 📊 Sample Output

```
========================================
Programming Language Requirements Scanner
========================================

✓ Node.js             : v24.13.1
✓ npm                 : 11.15.0
✗ Python              : Not installed
✓ Java                : openjdk version "21.0.10"
✓ Git                 : git version 2.54.0.windows.1
✓ Docker              : Docker version 29.4.0

========================================
SUMMARY
========================================
Total Installed: 7
Total Not Installed: 7
========================================
```

## 🔧 Troubleshooting

**"Command not found"?**
- Make sure the tool is installed
- Check your system PATH
- Restart your terminal

**"Permission denied"?**
- On Mac/Linux: `chmod +x check-requirements.js`
- On Windows: Run as Administrator

**Want to add more tools?**
- Edit the respective script file
- Add new entries to the tools array/list
- Save and run again

## 📚 Full Documentation

See `REQUIREMENTS-SCANNER-README.md` for complete documentation.

---

**Pro Tip:** Add this to your project's README to help new team members verify their setup!
