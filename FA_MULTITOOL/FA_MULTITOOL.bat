@echo off
title [Fighter Adventure Launcher] - [Fubar 2024]
chcp 65001 >nul
cd files
color 0
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔══[1] Launch FA Client[0m  
::echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══[2] Launch MS Client[0m  
::echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══[3] Website[0m  
::echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══[4] Discord[0m  
::echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╚╦═[5] Vote[0m  
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m  
if /I %input% EQU 1 start FAClient1.12.exe
if /I %input% EQU 2 start MUSHclient.lnk
if /I %input% EQU 3 start WEBSITE.url
if /I %input% EQU 4 start DISCORD.url
if /I %input% EQU 5 start VOTE.url
if /I %input% EQU 6 start SECRET.txt
cls
goto start

:banner
echo.
echo.
echo                     [38;2;0;0;128m           ███████╗██╗ ██████╗ ██╗  ██╗████████╗███████╗██████╗[0m     
echo                     [38;2;0;0;191m           ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗     [0m
echo                     [38;2;0;0;255m           █████╗  ██║██║  ███╗███████║   ██║   █████╗  ██████╔╝    [0m 
echo                     [38;2;64;64;255m           ██╔══╝  ██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗     [0m
echo                     [38;2;128;128;255m           ██║     ██║╚██████╔╝██║  ██║   ██║   ███████╗██║  ██║[0m
echo                     [38;2;128;128;128m           ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝[0m
echo                     [38;2;220;220;220m █████╗ ██████╗ ██╗   ██╗███████╗███╗   ██╗████████╗██╗   ██╗██████╗ ███████╗[0m     
echo                     [38;2;211;211;211m██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝     [0m
echo                     [38;2;192;192;192m███████║██║  ██║██║   ██║█████╗  ██╔██╗ ██║   ██║   ██║   ██║██████╔╝█████╗    [0m 
echo                     [38;2;169;169;169m██╔══██║██║  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║   ██║   ██║   ██║██╔══██╗██╔══╝     [0m
echo                     [38;2;128;128;128m██║  ██║██████╔╝ ╚████╔╝ ███████╗██║ ╚████║   ██║   ╚██████╔╝██║  ██║███████╗[0m
echo                     [38;2;105;105;105m╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝[0m