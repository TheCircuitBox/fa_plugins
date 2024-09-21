:: Turn off the displaying of commands
@echo off

:: Changes the window title in the top left
title [Fighter Adventure Launcher V0.06A] - [Fubar 2024]

:: Sets the window to UTF-8
chcp 65001>nul

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
mode con: cols=120 lines=30
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
echo                     [38;2;%color%m          %date% %time%                S T A T U S = %status%                                 [0m

:: The main menu alt + 175, 179, 192, 195, 196, 217, 218
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
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
if /I %input% EQU 12 goto weather
if /I %input% EQU 13 goto wfetch
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
pause
goto network

:weather
mode con: cols=126 lines=40
curl wttr.in
pause
goto network

:wfetch
@echo off
mode con: cols=90 lines=30
cls
for /f "tokens=1,2,3,4,5" %%a in ('wmic cpu get name ^| findstr /r /v "^$"') do set cpu=%%a %%b %%c %%d %%e
for /f "tokens=7,8,9" %%a in ('wmic cpu get name ^| findstr /r /v "^$"') do set gpu=%%a %%b %%c
for /f "usebackq tokens=4,5,6,7" %%i in (`systeminfo ^| findstr /B /C:"Total Physical Memory"`) do (set ram=%%i %%j)
for /f "tokens=4,5,6 usebackq" %%i in (`systeminfo ^| findstr /C:"OS Name"`) do (set os=%%i %%j %%k)
echo.
echo.
echo [94m                                ....iilll[0m [92m%username%[0m@[92m%computername%[0m
echo [94m                      ....iilllllllllllll[0m -------------------------
echo [94m          ....iillll  lllllllllllllllllll[0m     [96mOS[0m: %os%
echo [94m      iillllllllllll  lllllllllllllllllll[0m   [96mTIME[0m: %time%
echo [94m      llllllllllllll  lllllllllllllllllll[0m   [96mDATE[0m: %date%
echo [94m      llllllllllllll  lllllllllllllllllll[0m    [96mCPU[0m: %cpu%
echo [94m      llllllllllllll  lllllllllllllllllll[0m    [96mGPU[0m: %gpu%
echo [94m      llllllllllllll  lllllllllllllllllll[0m    [96mRAM[0m: %ram%
echo [94m      llllllllllllll  lllllllllllllllllll[0m   [96mBOOT[0m: %FIRMWARE_TYPE%
echo. 
echo [94m      llllllllllllll  lllllllllllllllllll[0m
echo [94m      llllllllllllll  lllllllllllllllllll[0m
echo [94m      llllllllllllll  lllllllllllllllllll[0m
echo [94m      llllllllllllll  lllllllllllllllllll[0m
echo [94m      llllllllllllll  lllllllllllllllllll[0m
echo [94m         `^^^^^^lllllll  lllllllllllllllllll[0m
echo [94m               ````^^^^  ^^lllllllllllllllll[0m
echo [94m                              ````^^^^^^llll[0m
echo.
pause
goto network