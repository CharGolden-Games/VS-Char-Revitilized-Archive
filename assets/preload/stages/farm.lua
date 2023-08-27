
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -1000, -1000);
	setScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 2, 2);

	makeLuaSprite('gm_flatgrass', 'gm_flatgrass', 50, 50);
	setScrollFactor('gm_flatgrass', 0.9, 0.9);
	scaleObject('gm_flatgrass', 0.3, 0.3);

	makeLuaSprite('orangey hills', 'orangey hills', -200, 100);
	setScrollFactor('orangey hills', 0.9, 0.9);
	scaleObject('orangey hills', 0.8, 0.8);	

	makeLuaSprite('funfarmhouse', 'funfarmhouse', -150, 0);
	setScrollFactor('funfarmhouse', 0.9, 0.9);
	scaleObject('funfarmhouse', 1.1, 1.1);

	makeLuaSprite('grass lands', 'grass lands', -400, 350);
	setScrollFactor('grass lands', 0.9, 0.9);
	scaleObject('grass lands', 0.8, 0.8);

	makeLuaSprite('cornFence', 'cornFence', -200, 150);
	setScrollFactor('cornFence', 0.9, 0.9);
	scaleObject('cornFence', 0.8, 0.8);

	makeLuaSprite('cornFence2', 'cornFence2', 900, 150);
	setScrollFactor('cornFence2', 0.9, 0.9);
	scaleObject('cornFence2', 0.8, 0.8);

	makeLuaSprite('sign', 'sign', 100, 300);
	setScrollFactor('sign', 0.9, 0.9);
	scaleObject('sign', 0.8, 0.8);

	makeLuaSprite('cornbag', 'cornbag', 1000, 450);
	setScrollFactor('cornbag', 0.9, 0.9);

	addLuaSprite('sky', false);
	addLuaSprite('gm_flatgrass', false);
	addLuaSprite('orangey hills', false);
	addLuaSprite('funfarmhouse', false);
	addLuaSprite('grass lands', false);
	addLuaSprite('cornFence', false);
	addLuaSprite('cornFence2', false);
	addLuaSprite('sign', false);
	addLuaSprite('cornbag', false);
end