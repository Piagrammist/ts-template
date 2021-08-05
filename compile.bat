@ECHO OFF

CD %~dp0

START "Sass Compiler" /MIN cmd.exe /C "sass -w src/scss:public/css"
START "Typescript Compiler" /MIN cmd.exe /C "tsc -w"

EXIT /B 0
