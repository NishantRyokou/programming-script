#!/usr/bin/env python3
"""
Programming Language Requirements Scanner
Checks for installed programming languages and development tools
"""

import subprocess
import sys
from datetime import datetime

def check_tool(name, command, version_flag="--version"):
    """Check if a tool is installed and get its version"""
    try:
        result = subprocess.run(
            f"{command} {version_flag}",
            shell=True,
            capture_output=True,
            text=True,
            timeout=5
        )
        
        if result.returncode == 0:
            version = result.stdout.split('\n')[0].strip() or result.stderr.split('\n')[0].strip()
            return True, version
        else:
            return False, "Not installed"
    except Exception as e:
        return False, "Not installed"

def main():
    print("\n" + "="*40)
    print("Programming Language Requirements Scanner")
    print("="*40 + "\n")
    
    tools = [
        ("Node.js", "node", "--version"),
        ("npm", "npm", "--version"),
        ("Python", "python", "--version"),
        ("pip", "pip", "--version"),
        ("Java", "java", "-version"),
        ("C++ (g++)", "g++", "--version"),
        ("C (gcc)", "gcc", "--version"),
        ("Git", "git", "--version"),
        ("Docker", "docker", "--version"),
        ("Ruby", "ruby", "--version"),
        ("Go", "go", "version"),
        ("Rust", "rustc", "--version"),
        ("PHP", "php", "--version"),
        (".NET", "dotnet", "--version"),
    ]
    
    installed = 0
    not_installed = 0
    
    for name, command, version_flag in tools:
        is_installed, version = check_tool(name, command, version_flag)
        
        if is_installed:
            print(f"✓ {name.ljust(20)} : {version}")
            installed += 1
        else:
            print(f"✗ {name.ljust(20)} : Not installed")
            not_installed += 1
    
    print("\n" + "="*40)
    print("SUMMARY")
    print("="*40)
    print(f"Total Installed: {installed}")
    print(f"Total Not Installed: {not_installed}")
    print(f"Scan completed at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("="*40 + "\n")

if __name__ == "__main__":
    main()
