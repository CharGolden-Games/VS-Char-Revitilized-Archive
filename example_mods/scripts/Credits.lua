--[[
CREDITS :yippee:

omotashi: Made the script (https://twitter.com/omotashii)
legole0: Helped me make the base script when I started from scratch (https://twitter.com/legole0)
Piggyfriend1792: The OG Script from the Monday Night Monsterin' Mod that I used for making the thing show up (https://twitter.com/piggyfriend1792)
DEAD SKULLXX: Requested me to add Artist and Charter Credits 
--]]



local songdata = {
--yes i used the pico week bc i didnt wanna interfere with the old version
    ['triple-trouble'] = {
    'Triple Trouble (Char Cover V3)', -- Song Name [1]
    'MarStarBro', -- Composer [2]
    '7', --  Length for onscreen [3]
    'Char', -- Artist [4]
    'Char (Edited Version of Chart)', -- Charter [5]
    },

    ['triple-trouble-og'] = {
    'Triple Trouble (Char Cover V1)',
    'MarStarBro',
    '7',
    'Char',
    'Char (Edited Version of Chart)',
    },

    ['too-slow'] = {
        'Too Slow Encore (Char Too Slow Cover V2)',
        'MarStarBro, Saster',
        '7',
        'Char',
        'Wilde',
    },

    ['you-cant-run'] = {
        'You Cant Run (Char Cover V2)',
        'MarStarBro',
        '7',
        'Char',
        'IDK but probably also Wilde',
    },

    ['Left-Unchecked'] = {
        'Left Unchecked (Char Cover)',
        'adam McHummus',
        '7',
        'Char',
        'IDK',
    },

    ['Lights-Down'] = {
        'Lights Down (Char Cover V2)',
        'Rareblin',
        '7',
        'Char',
        'IDK',
    },

    ['Danger'] = {
        'Danger (Char Cover)',
        'Rareblin',
        '7',
        'Char',
        'IDK',
    },

    ['shenanigans'] = {
    'Shenanigans (Alt Ver.)',
    'xZOOTERx',
    '7',
    'Char',
    'Char',
    },    

    ['Deformation'] = {
        'Deformation (Char Cover)',
        'Alky',
        '7',
        'Char',
        'IDK',
    },
    
-- Replace this data with your songs and the song composer. 
-- The song name in the [] MUST be the same song in the JSON file
-- The Next two are just string values, have fun :3
}

local offsetX = 10
local offsetY = 500
local objWidth = 500


function ifExists(table, valuecheck) -- This stupid function stops your game from throwing up errors when you play a main week song thats not in the Song Data Folder
    if table[valuecheck] then
        return true
    else
        return false
    end
end


function onCreatePost() -- This creates all the placeholder shit B) ((THIS PART OF THE SCRIPT WAS MADE BY PIGGY))
    luaDebugMode = true

    makeLuaSprite('creditBox', 'empty', 0 - objWidth, offsetY)
    makeGraphic('creditBox', objWidth, 150, '000000')
    setObjectCamera('creditBox', 'other')
    setProperty("creditBox.alpha", 0.7)
    addLuaSprite('creditBox', true)

    makeLuaText('creditTitle', 'PlaceholderTitle', objWidth, offsetX - objWidth, offsetY+0)
    setTextSize('creditTitle', 30)
    setTextAlignment('creditTitle', 'left')
    setObjectCamera('creditTitle', 'other')
    addLuaText("creditTitle",true)

    makeLuaText('creditComposer', 'PlaceholderComposer', objWidth, offsetX - objWidth, offsetY+45)
    setTextSize('creditComposer', 30)
    setTextAlignment('creditComposer', 'left')
    setObjectCamera('creditComposer', 'other')
    addLuaText("creditComposer",true)

    makeLuaText('creditArtist', 'PlaceholderArtist', objWidth, offsetX - objWidth, offsetY+80)
    setTextSize('creditArtist', 30)
    setTextAlignment('creditArtist', 'left')
    setObjectCamera('creditArtist', 'other')
    addLuaText("creditArtist",true)

    makeLuaText('creditCharter', 'PlaceholderCharter', objWidth, offsetX - objWidth, offsetY+115)
    setTextSize('creditCharter', 30)
    setTextAlignment('creditCharter', 'left')
    setObjectCamera('creditCharter', 'other')
    addLuaText("creditCharter",true)

    -- If you dont NOT want the art and charter credits (or a mix of two), the value used in the old version is:
    -- offsetY+25 for creditTitle
    -- offsetY+80 for the other credit (be it Composer, Charting, or Art)
end


function onSongStart()

 songExists = ifExists(songdata, songName) -- Checks to see if song exists

 if songExists == true then
    local curSongTable = songdata[songName]
    setTextString('creditTitle', curSongTable[1]) -- Sets the actual things
    setTextString('creditComposer', "Song: "..curSongTable[2])
    setTextString('creditArtist', "Art: "..curSongTable[4])
    setTextString('creditCharter', "Charting: "..curSongTable[5])

    --Tweens--
    doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") + objWidth, 1, "expoOut")
    doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") + objWidth, 1, "expoOut")
    doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") + objWidth, 1, "expoOut")
    doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") + objWidth, 1, "expoOut")
    doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") + objWidth, 1, "expoOut")
    runTimer("creditDisplay",curSongTable[3],1)
 else

    

 end
end

function onTimerCompleted(timerName)

    if timerName == "creditDisplay" then
        doTweenX("creditBoxTween", "creditBox", getProperty("creditBox.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditTitleTween", "creditTitle", getProperty("creditTitle.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditComposerTween", "creditComposer", getProperty("creditComposer.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditArtistTween", "creditArtist", getProperty("creditArtist.x") - objWidth, 0.5, "sineIn")
        doTweenX("creditCharterTween", "creditCharter", getProperty("creditCharter.x") - objWidth, 0.5, "sineIn")
    end

end