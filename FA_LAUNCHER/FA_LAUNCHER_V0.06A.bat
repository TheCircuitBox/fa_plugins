:: Turn off the displaying of commands
@echo off

:: Changes the window title in the top left
title [Fighter Adventure Launcher V0.06A] - [Fubar 2024]

:: Sets the window to UTF-8
chcp 65001 >nul

:: Change directory to the files folder (this contains the shortcut, links, txt, and exe)
cd files

:: PLAY SHREKOPHONE
start shrek.vbs

:: SET the host, status and check if the server is online
:network
set website=google.com
set status=Unknown

ping -n 1 %website% >nul 2>&1
if %errorlevel%==0 (
    set status=ONLINE
    set color=0;255;0
) else (
    set status=OFFLINE
    set color=255;0;0
)

:: ASCII Banner 38 = foreground, 2 = use RGB, next 3 numbers are RGB #'s
cls
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
echo                     [38;2;%color%m                          S T A T U S = %status%                                 [0m

:: The main menu alt + 175, 179, 192, 195, 196, 217, 218
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m                   ┌────────────[ MENU SELECTION ]──────────────────────────────────────────────┐[0m
echo [38;2;255;255;0m                   │                                                                            │[0m
echo [38;2;255;255;0m                   │        ┌──[01] LAUNCH FA Client        ┌──[02] LAUNCH MS Client            │[0m
echo [38;2;255;255;0m                   │        ├──[03] WEBSITE                 ├──[04] DISCORD                     │[0m
echo [38;2;255;255;0m                   │        ├──[05] VOTE                    ├──[06] PATREON                     │[0m
echo [38;2;255;255;0m                   │        ├──[07] KILL Shreksophone       ├──[08] LIST GAMES                  │[0m
echo [38;2;255;255;0m                   │        └──[09] ENTER THE MATRIX        └──[10] EXIT                        │[0m
echo [38;2;255;255;0m                   │                                                                            │[0m
echo [38;2;255;255;0m                   └────────┬───────────────────────────────────────────────────────────────────┘[0m
echo [38;2;255;255;0m                            │                                                                    [0m
set /p input=.%BS% [38;2;255;255;0m                           └──────[?]  [0m
if /I %input% EQU 1 start FAClient1.12.exe
if /I %input% EQU 2 start "" ".\MUSHclient\MUSHclient.exe"
if /I %input% EQU 3 start WEBSITE.url
if /I %input% EQU 4 start DISCORD.url
if /I %input% EQU 5 start VOTE.url
if /I %input% EQU 6 start PATREON.url
if /I %input% EQU 7 Taskkill  /F /IM wscript.exe
if /I %input% EQU 8 goto list_games
if /I %input% EQU 9 start matrix.bat
if /I %input% EQU 10 Taskkill  /F /IM wscript.exe && exit
if /I %input% EQU 11 start secret.txt
cls
goto network

:: WARGAMES
:list_games
cls
echo.
echo.
echo.
echo 'GAMES' REFERS TO MODELS, SIMULATIONS AND GAMES
echo WHICH HAVE TACTICAL AND STRATEGIC APPLICATIONS.
echo.
echo.
echo List Games
echo.
echo FALKEN'S MAZE
echo BLACK JACK
echo GIN RUMMY
echo HEARTS
echo BRIDGE
echo CHECKERS
echo CHESS
echo POKER
echo FIGHTER COMBAT
echo GUERRILLA ENGAGEMENT
echo DESERT WARFARE
echo AIR-TO-GROUND ACTIONS
echo THEATERWIDE TACTICAL WARFARE
echo THEATERWIDE BIOTOXIC AND CHEMICAL WARFARE
echo.
echo GLOBAL THERMONUCLEAR WAR
echo.
echo [end session]
echo.
pause >nul
goto network
