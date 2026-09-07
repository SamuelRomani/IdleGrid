@echo off
setlocal enabledelayedexpansion
title IdleGrid - Atualizando
cd /d "%~dp0"

echo ========================================
echo   IDLEGRID - Atualizando
echo ========================================
echo.

if exist ".git" (
    echo Pasta veio de "git clone": atualizando com git pull...
    git pull origin main
    if errorlevel 1 (
        echo.
        echo Nao consegui atualizar sozinho (provavelmente voce editou algum
        echo arquivo na mao e o git nao quer sobrescrever). Nada foi mudado,
        echo o IdleGrid antigo continua funcionando normalmente.
        echo.
        pause
        exit /b 1
    )
) else (
    echo Pasta veio do ZIP: baixando a versao mais nova do GitHub...
    powershell -NoProfile -ExecutionPolicy Bypass -Command ^
        "$ErrorActionPreference='Stop';" ^
        "Invoke-WebRequest -Uri 'https://github.com/SamuelRomani/IdleGrid/archive/refs/heads/main.zip' -OutFile 'idlegrid-update.zip';" ^
        "Expand-Archive -Path 'idlegrid-update.zip' -DestinationPath 'idlegrid-update-tmp' -Force;" ^
        "Copy-Item -Path 'idlegrid-update-tmp\IdleGrid-main\*' -Destination '.' -Recurse -Force;" ^
        "Remove-Item 'idlegrid-update.zip' -Force;" ^
        "Remove-Item 'idlegrid-update-tmp' -Recurse -Force"
    if errorlevel 1 (
        echo.
        echo Nao consegui baixar a atualizacao (confira sua internet). Nada
        echo foi mudado, o IdleGrid antigo continua funcionando normalmente.
        echo.
        pause
        exit /b 1
    )
)

echo.
echo Conferindo dependencias...
call npm install --no-fund --no-audit
if errorlevel 1 (
    echo.
    echo O download/pull terminou, mas "npm install" falhou. Tente abrir o
    echo IdleGrid normalmente mesmo assim -- geralmente ainda funciona.
    echo.
    pause
    exit /b 1
)

echo.
echo Atualizado! Reabrindo o IdleGrid...
timeout /t 2 /nobreak >nul
start "" "%~dp0Abrir IdleGrid.vbs"
exit /b 0
