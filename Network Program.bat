@echo off 
title Network program
color 1F
goto :menu 

:menu
cls
echo==============================================
echo Page 1/2
echo==============================================
ver
echo.
echo Type 1 to go to page 2
echo.
echo Type 2 to view IP information
echo.
echo Type 3 to view more detailed IP information
echo.
echo Type 4 to show MAC address(s)
echo.
echo Type 5 to ping and IP address 
echo.
echo Type 6 to path a ping
echo.
echo Type 7 to trace an IP
echo.
echo Type 8 to release and renew IP address
echo.
echo Type 9 to show netstat
echo.
echo Type 10 to view arp table 
echo.
time /t 
date /t 
echo. 
echo [Version 1.7.3]
echo Coded by Justin Turbeville
echo==============================================
set input=
set/p input=
if "%input%"=="1" goto :menu2  
if "%input%"=="2" goto :ipbasic 
if "%input%"=="3" goto :ipadvanced
if "%input%"=="4" goto :mac
if "%input%"=="5" goto :pinger
if "%input%"=="6" goto :path
if "%input%"=="7" goto :trace
if "%input%"=="8" goto :ReIP
if "%input%"=="9" goto :netstat
if "%input%"=="10" goto :arp
if "%input%"=="" goto :menu
goto :menu

:menu2
cls
echo==============================================
echo Page 2/2
echo==============================================
ver
echo.
echo Type 1 to go to page 1
echo.
echo Type 2
echo.
echo Type 3 to display system information
echo.
echo Type 4 for CHKDSK 
echo.
echo Type 5 to open Task Manager
echo.
echo Type 6 
echo. 
echo Type 7
echo.
echo Type 8
echo.
echo Type 9
echo.
echo Type 10 
echo.
time /t 
date /t 
echo. 
echo [Version 1.7.3]
echo Coded by Justin Turbeville
echo==============================================
set input2=
set/p input2=
if "%input2%"=="1" goto :menu
if "%input2%"=="3" goto :sysinfo
if "%input2%"=="4" goto :chkdsk
if "%input2%"=="5" taskmgr
if "%input2%"=="" goto :menu2
goto :menu2

:pinger
cls
echo=====================================================================
echo Type -t [ip address] for an extended ping. To return to menu type 0
echo=====================================================================
set IP=
set /p IP=Enter IP to ping:
if "%IP%"=="0" goto :menu
if "%IP%"=="" goto :pinger
goto :ping

:ping
ping %IP%
pause
goto :pinger

:path
cls 
echo===========================================================================
echo Shows the hops it takes to get to a destination. To return to menu type 0
echo===========================================================================
set IP2=
set/p IP2=Enter IP to path:
if "%IP2%"=="0" goto :menu
if "%IP2%"=="" goto :path
goto :pathpng

:pathpng
pathping %IP2%
pause
goto :path

:ipbasic
cls
echo=============================================================================
ipconfig
echo.
echo To return to menu type 0
echo=============================================================================
set basic=
set/p basic=
if "%basic%"=="0" goto :menu
if "%basic%"=="" goto :ipbasic
goto :ipbasic

:ipadvanced
cls
echo=============================================================================
ipconfig/all
echo.
echo To return to menu type 0
echo=============================================================================
set advanced=
set/p advanced=
if "%advanced%"=="0" goto :menu
if "%advanced%"=="" goto :ipadvanced
goto :ipadvanced

:mac
cls
getmac
echo.
echo To return to menu type 0
echo==================== ==========================================================
set mac=
set/p mac=
if "%mac%"=="0" goto :menu
if "%mac%"=="" goto :mac
goto :mac

:trace
cls 
echo============================================================================================
echo This shows the packet as it hops, when it is recived and latency. To return to menu type 0  
echo============================================================================================
set IP3=
set/p IP3=Enter IP to path:
if "%IP3%"=="0" goto :menu
if "%IP3%"=="" goto :trace
goto :tracing

:tracing
tracert %IP3%
pause
goto :trace

:arp
cls
echo=========================================================
arp -a
echo.
echo To return to menu type 0
echo=========================================================
set arp=
set /p arp=
if "%arp%"=="0" goto :menu
if "%arp%"=="" goto :arp
goto :arp

:sysinfo
cls
echo==============================================================================
systeminfo
echo.
echo To return to menu type 0
echo==============================================================================
set system=
set /p system=
if "%system%"=="0" goto :menu2
if "%system%"=="" goto :system
goto :sysinfo

:ReIP
cls
echo==============================================
ipconfig /release 
ipconfig /renew
echo.
echo To returnn to menu  type 0
echo==============================================
set ReIP=
set /p ReIP=
if "%ReIP%"=="0" goto :menu
if "%ReIP%"=="" goto :ReIP
goto :ReIP

:netstat
cls
echo=============================================================================
netstat
echo.
echo To return to menu  type 0
echo=============================================================================
set netstat=
set /p netstat=
if "%netstat%"=="0" goto :menu
if "%netstat%"=="" goto :netstat
goto :netstat

:nslookup
cls
echo==============================================
nslookup

:chkdsk
cls
echo======
chkdsk
echo.
echo To return to menu type 0
echo========
set chkdsk=
set /p chkdsk=
if "%chkdsk%"=="0" goto :menu2
if "%chkdsk%"=="" goto :chkdsk
goto :chkdsk

:task
taskmgr
goto :menu2