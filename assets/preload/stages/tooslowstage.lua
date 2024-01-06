
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('tooslowsky', 'tooslowsky', -700, -350);
	setScrollFactor('tooslowsky', 0.9, 0.9);
	scaleObject('tooslowsky', 2, 2);

	makeLuaSprite('tooslowtrees2', 'tooslowtrees2', -900, 350);
	setScrollFactor('tooslowtrees2', 0.9, 0.9);
	scaleObject('tooslowtrees2', 1.3, 1.3);

	makeLuaSprite('tooslowgrass', 'tooslowgrass', -700, 350);
	setScrollFactor('tooslowgrass', 0.9, 0.9);
	scaleObject('tooslowgrass', 1.5, 1.5);

	makeLuaSprite('tooslowtrees', 'tooslowtrees', -900, 120);
	setScrollFactor('tooslowtrees', 0.9, 0.9);
	scaleObject('tooslowtrees', 1.3, 1.3);

	addLuaSprite('tooslowsky', false);
	addLuaSprite('tooslowtrees2', false);
	addLuaSprite('tooslowgrass', false);
	addLuaSprite('tooslowtrees', false);
end