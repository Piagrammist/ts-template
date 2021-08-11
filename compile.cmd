@echo off

start "Sass Compiler" /min cmd.exe /c "cd ""%~dp0"" && sass.cmd -w src/scss:public/css"
start "Typescript Compiler" /min cmd.exe /c "cd ""%~dp0"" && tsc.cmd -w"
