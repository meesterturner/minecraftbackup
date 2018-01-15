@echo off

:: ----------------------------------------------------
:: Very simple Minecraft savegame backup script
:: (c) Paul Turner 2014-2018
:: ----------------------------------------------------

SET src=%appdata%\.minecraft\saves
SET dst=%appdata%\.minecraft\backups

ECHO Please wait, backing up Minecraft...
ECHO.

IF NOT EXIST "%dst%\" mkdir "%dst%"

xcopy "%src%" "%dst%" /E /I /Y > nul

ECHO.

IF /I "%errorlevel%" EQU "0" (
	ECHO Backup complete!!
) ELSE (
	ECHO Error performing backup. Do the source and destination folders exist?
)

ECHO.
PAUSE