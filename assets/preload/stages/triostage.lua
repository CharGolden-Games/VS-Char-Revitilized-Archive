function onCreate()
	-- background shit
	makeLuaSprite('trees2', 'trees2', -600, -300);
	setScrollFactor('trees2', 1.4, 0.9);
        scaleObject('trees2', 2, 2);
	
	makeLuaSprite('trees', 'trees', -600, -300);
	setScrollFactor('trees', 1.1, 0.9);
	scaleObject('trees', 2, 2);

        makeLuaSprite('grass', 'grass', -600, -300);
		setScrollFactor('grass', 0.9, 0.9);
		scaleObject('grass', 2, 2);

        setProperty('defaultCamZoom',0.5);

	addLuaSprite('trees2', false);
        addLuaSprite('trees', false);
        addLuaSprite('grass', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end