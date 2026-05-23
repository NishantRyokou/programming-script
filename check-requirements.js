#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');

console.log('\n========================================');
console.log('Programming Language Requirements Scanner');
console.log('========================================\n');

const tools = [
  { name: 'Node.js', command: 'node --version' },
  { name: 'npm', command: 'npm --version' },
  { name: 'Python', command: 'python --version' },
  { name: 'pip', command: 'pip --version' },
  { name: 'Java', command: 'java -version' },
  { name: 'C++ (g++)', command: 'g++ --version' },
  { name: 'C (gcc)', command: 'gcc --version' },
  { name: 'Git', command: 'git --version' },
  { name: 'Docker', command: 'docker --version' },
  { name: 'Ruby', command: 'ruby --version' },
  { name: 'Go', command: 'go version' },
  { name: 'Rust', command: 'rustc --version' },
  { name: 'PHP', command: 'php --version' },
  { name: '.NET', command: 'dotnet --version' },
];

let installed = 0;
let notInstalled = 0;

tools.forEach(tool => {
  try {
    const version = execSync(tool.command, { 
      encoding: 'utf-8',
      stdio: ['pipe', 'pipe', 'pipe']
    }).split('\n')[0].trim();
    
    console.log(`✓ ${tool.name.padEnd(20)} : ${version}`);
    installed++;
  } catch (error) {
    console.log(`✗ ${tool.name.padEnd(20)} : Not installed`);
    notInstalled++;
  }
});

console.log('\n========================================');
console.log('SUMMARY');
console.log('========================================');
console.log(`Total Installed: ${installed}`);
console.log(`Total Not Installed: ${notInstalled}`);
console.log(`Scan completed at: ${new Date().toLocaleString()}`);
console.log('========================================\n');
