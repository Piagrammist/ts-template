#!/usr/bin/env pwsh

# Checks if a command exists
function Command-Exists($Cmd) {
    return [bool](Get-Command -Name $Cmd -ErrorAction SilentlyContinue)
}

if (Command-Exists -Cmd sass.ps1) {
    Start-Process -WindowStyle Minimized powershell {
        Set-Location -Path $PSScriptRoot
        sass.ps1 -w src/scss:public/css
    }
} else {
    Write-Error "Error: sass compiler not found!"
}

if (Command-Exists -Cmd tsc.ps1) {
    Start-Process -WindowStyle Minimized powershell {
        Set-Location -Path $PSScriptRoot
        tsc.ps1 -w
    }
} else {
    Write-Error "Error: typescript compiler (tsc) not found!"
}
