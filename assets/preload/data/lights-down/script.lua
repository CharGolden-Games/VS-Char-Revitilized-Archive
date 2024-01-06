function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title",'VS Char Week SUS AAA (Demo)')
end

-- Fuck you bitch Get rekt lol

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.02);
    		end
	end
function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.title",'Friday Night Funkin: VS Char (Now with less SUS)')
end