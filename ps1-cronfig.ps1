#########################################
# Developed by: Ron Negrov
# Purpose: A script to install PS1 script
# Date: 05.07.2025
# Version: 0.0.9
#########################################

$themeDir = "$env:USERPROFILE\Desktop\Applications\PS"
$vimrcDir = "C:\Program Files\Vim"

if (-not (Test-Path $themeDir)) {
    New-Item $themeDir -ItemType Directory -Force
}

Move-Item -Path ".\my_theme.json" -Destination $themeDir -Force

Copy-Item -Path ".\profile-script\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE -Force

if (-not (Get-Command vim -ErrorAction SilentlyContinue)) {
    Write-Host "Vim not found. Installing with winget..." -ForegroundColor Yellow
    winget install Vim.Vim -e --silent
}

Copy-Item -Path ".\profile-script\_vimrc" -Destination "$vimrcDir\_vimrc" -Force