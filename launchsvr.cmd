@echo off

REM =======================================================================
REM Open this file in Notepad++ or similar to see the escape characters
REM - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
REM This is because I got hella fancy, and used both colouring to make it
REM more exciting, and a dynamically positioning asterisk on the version
REM number line to that the box is drawn no matter how long or short the
REM verion number is!
REM =======================================================================

MODE 114,40

REM --- SET THESE TO THE JAR FILE VERSION! ---
SET verMaj=1
SET verMin=15
SET verRev=2
REM ------------------------------------------

SET verCaption=Please Wait - Starting Minecraft Server v%verMaj%.%verMin%.%verRev%...

title Minecraft Server - Starting

echo.
echo.
echo.
echo.
echo                                 %verCaption%

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a 

cls
title Minecraft Server - Internal: %NetworkIP% - External: %PublicIP%  

echo.
echo.
echo          [93mษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo          บ                                                                                            บ[s
echo          บ                      [92m%verCaption%[93m[u[1B[1Dบ
echo          บ                                                                                            บ
echo          ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo          บ                                                                                            บ[s
echo          บ  [97mYour internal IP Address is %NetworkIP%[93m[u[1B[1Dบ
echo          บ  [97mYour external IP Address is %PublicIP%[93m[u[1B[1B[1Dบ
echo          บ                                                                                            บ
echo          ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo          บ                                                                                            บ
echo          บ               [91mPlease use your [4minternal[0m[91m IP address for games in the house :-)               [93mบ
echo          บ                                                                                            บ
echo          ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ[0m
echo.
echo.

ping 127.0.0.1 > nul

cd "C:\Program Files (x86)\Minecraft Launcher\Server"
"C:\Program Files (x86)\Minecraft Launcher\runtime\jre-x64\bin\java.exe" -Xmx1024M -Xms1024M -jar server_%verMaj%_%verMin%_%verRev%.jar nogui