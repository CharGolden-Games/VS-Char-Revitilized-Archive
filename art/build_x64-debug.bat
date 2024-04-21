@echo off
cd ..
color 09
echo WELCOME TO DEBUG ZONE (BUILDING GAME)
haxelib run lime build windows -debug
echo.
echo done.
pause
explorer.exe export\debug\windows\bin