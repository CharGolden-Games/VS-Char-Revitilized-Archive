#!/bin/sh
# SETUP FOR MAC AND LINUX SYSTEMS!!!
#
# REMINDER THAT YOU NEED HAXE INSTALLED PRIOR TO USING THIS
# https://haxe.org/download/version/4.2.5/
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
haxelib install haxeui-core
haxelib install haxeui-flixel
haxelib install tjson

# prompting for choice
read -p "Are you planning on compiling with the debug flag? E.G. 'lime test windows -debug' (Y/N)" choice

# giving choices there tasks using
case $choice in
[yY]* ) haxelib install hxcpp-debug-server ;;
[nN]* ) echo "Skipping hxcpp-debug-server" ;;
*) echo "no option specified!" ;;