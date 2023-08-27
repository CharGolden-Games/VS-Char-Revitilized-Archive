function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/STATICNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'multSpeed', 1); --Change note speed (holy shit 0.6 is good)
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6); --Change amount of health to take when you miss like a fucking moron
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		healthDrain = healthDrain + 0.6;
	end
end