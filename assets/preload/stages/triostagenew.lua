
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('triostagetreesnew', 'triostagetreesnew', -700, 350);
	setScrollFactor('triostagetreesnew', 0.9, 0.9);
	scaleObject('triostagegrassnew', 1.5, 1.5);

	makeLuaSprite('triostagetreesnew', 'trees2', -700, 350);
	setScrollFactor('triostagetreesnew', 0.9, 0.9);
	scaleObject('triostagegrassnew', 1.5, 1.5);

	makeLuaSprite('triostagegrassnew', 'triostagegrassnew', -900, 0);
	setScrollFactor('triostagegrassnew', 0.9, 0.9);
	scaleObject('triostagegrassnew', 1.5, 1.5);

	addLuaSprite('triostagetreesnew', false);
	addLuaSprite('triostagegrassnew', false);
	addLuaSprite('trees2', false);

end