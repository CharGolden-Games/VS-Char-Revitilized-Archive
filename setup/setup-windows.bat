@echo off
color 0a
echo INSTALLING/SETTING LIBRARIES
@echo on
haxelib --global git discord_rpc https://github.com/Aidan63/linc_discord-rpc.git
haxelib set flixel 5.2.2 --always
haxelib set flixel-tools 1.5.1 --always
haxelib set flixel-addons 3.0.2 --always
haxelib set flixel-ui 2.5.0 --always
haxelib set hxcodec 2.6.1 --always
haxelib set lime 8.0.2 --always
haxelib --global git linc_luajit https://github.com/superpowers04/linc_luajit.git
haxelib set openfl 9.2.1 --always
haxelib set haxeui-core 1.7.0 --always
haxelib set haxeui-flixel 1.7.0 --always
haxelib set tjson 1.4.0 --always
@echo off
set /p answer=Are you planning on compiling with the debug flag? E.G. "lime test windows -debug" (Y/N)?
if /i "%answer:~,1%" EQU "Y" echo haxelib install hxcpp-debug-server & haxelib set hxcpp-debug-server 1.2.4 --always
if /i "%answer:~,1%" EQU "N" echo Skipping hxcpp-debug-server
echo WARNING: SScript has been completely removed from Haxelib and REQUIRES a workaround! this batch script on close will redirect you to a workaround to fix this issue
echo DONE
cscript msg.vbs "SScript is no longer available via haxelib, PLEASE USE THIS ARCHIVE TO COMPILE THIS MOD (Make sure that the sscript version is 5.2.0!)"
start "" https://github.com/CobaltBar/SScript-Archive/tree/main
pause
