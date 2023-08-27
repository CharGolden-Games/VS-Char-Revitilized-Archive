function onCreate()
	-- background shit
	makeLuaSprite('grass', 'grass', -600, -300);
	setScrollFactor('grass', 0.9, 0.9);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
