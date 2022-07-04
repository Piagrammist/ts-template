@echo off

set "root=%~dp0..\"

start "Sass Compiler" /min cmd.exe /c "cd %root% && sass.cmd -w src/scss:public"
start "Typescript Compiler" /min cmd.exe /c "cd %root% && tsc.cmd -w"
