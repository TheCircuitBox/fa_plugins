:: Turn off the displaying of commands
@echo off

:: Changes the window title in the top left
title [Fighter Adventure Launcher] - [Fubar 2024]

:: Sets the window to UTF-8
chcp 65001 >nul

:: Change directory to the files folder (this contains the shortcut, links, txt, and exe)
cd files

:: ASCII Banner 38 = foreground, 2 = use RGB, next 3 numbers are RGB #'s
:banner
echo.
echo.
echo                     [38;2;000;000;128m           ███████╗██╗ ██████╗ ██╗  ██╗████████╗███████╗██████╗ [0m     
echo                     [38;2;000;000;191m           ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗[0m
echo                     [38;2;000;000;255m           █████╗  ██║██║  ███╗███████║   ██║   █████╗  ██████╔╝[0m 
echo                     [38;2;064;064;255m           ██╔══╝  ██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗[0m
echo                     [38;2;128;128;255m           ██║     ██║╚██████╔╝██║  ██║   ██║   ███████╗██║  ██║[0m
echo                     [38;2;128;128;128m           ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝[0m
echo                     [38;2;220;220;220m █████╗ ██████╗ ██╗   ██╗███████╗███╗   ██╗████████╗██╗   ██╗██████╗ ███████╗[0m     
echo                     [38;2;211;211;211m██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝[0m
echo                     [38;2;192;192;192m███████║██║  ██║██║   ██║█████╗  ██╔██╗ ██║   ██║   ██║   ██║██████╔╝█████╗  [0m 
echo                     [38;2;169;169;169m██╔══██║██║  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║   ██║   ██║   ██║██╔══██╗██╔══╝  [0m
echo                     [38;2;128;128;128m██║  ██║██████╔╝ ╚████╔╝ ███████╗██║ ╚████║   ██║   ╚██████╔╝██║  ██║███████╗[0m
echo                     [38;2;105;105;105m╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝[0m

:: The main menu alt + 175, 179, 192, 195, 196, 218
:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ┌──[1] Launch FA Client[0m
echo [38;2;255;255;0m        ├──[2] Launch MS Client[0m
echo [38;2;255;255;0m        ├──[3] Website[0m
echo [38;2;255;255;0m        ├──[4] Discord[0m
echo [38;2;255;255;0m        └┬─[5] Vote[0m
echo [38;2;255;255;0m         │[0m  
set /p input=.%BS% [38;2;255;255;0m        └──────[?][0m 
if /I %input% EQU 1 start FAClient1.12.exe
if /I %input% EQU 2 start MUSHclient.lnk
if /I %input% EQU 3 start WEBSITE.url
if /I %input% EQU 4 start DISCORD.url
if /I %input% EQU 5 start VOTE.url
if /I %input% EQU 6 start SECRET.txt
cls
goto banner