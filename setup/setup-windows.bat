@echo off
color 0a
echo INSTALLING/SETTING LIBRARIES
@echo on
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc.git
haxelib set flixel 5.2.2
haxelib set flixel-tools 1.5.1
haxelib set flixel-addons 3.0.2
haxelib set flixel-ui 2.5.0
haxelib set sscript 5.2.0
haxelib set hxcodec 2.6.1
haxelib set lime 8.0.1
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git
haxelib set openfl 9.2.1
@echo off
echo DONE
pause
