@echo off 
goto :one

:one
cls
set input=
set/p input=Are you sure you want to update the User Policy? [n/y]:
if "%input%"=="y" goto :update
if "%input%"=="n" goto :one
if "%input%"=="Y" goto :update
if "%input%"=="N" goto :one
goto :one


:update
echo.
gpupdate /force
echo======================
gpresult /r
pause
goto :one