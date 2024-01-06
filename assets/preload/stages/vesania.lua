
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('vesaniasky', 'vesaniasky', -900, 50);
	setScrollFactor('vesaniasky', 0.9, 0.9);
	scaleObject('vesaniasky', 2, 2);

	makeLuaSprite('vesaniagrass', 'vesaniagrass', -700, 350);
	setScrollFactor('vesaniagrass', 0.9, 0.9);
	scaleObject('vesaniagrass', 1.5, 1.5);

	addLuaSprite('vesaniasky', false);
	addLuaSprite('vesaniagrass', false);
end