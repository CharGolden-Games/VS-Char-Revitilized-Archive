function onEvent(name,value1,value2)
	if name == 'White Flash' and flashingLights then
		if value2 == '' then
			value2 = 'ffffff'
		end
		
		makeLuaSprite('skyanFlash', '', 0, 0);
		makeGraphic('skyanFlash', 1280, 720, value2)
		addLuaSprite('skyanFlash', true);
		setLuaSpriteScrollFactor('skyanFlash', 0, 0)
		setProperty('skyanFlash.scale.x', 2)
		setProperty('skyanFlash.scale.y', 2)
		setObjectCamera('skyanFlash', 'camHUD')
		setProperty('skyanFlash.alpha', 1)
		doTweenAlpha('flashTween', 'skyanFlash', 0, value1, 'linear')
	end
end