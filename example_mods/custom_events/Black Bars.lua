local enabled = false

function onEvent(event, v1, v2)
    if event == 'Black Bars' then
        if v1 == '1' then
            if not enabled then
                enabled = true

                makeLuaSprite('black', 'black', 0, -200)
                addLuaSprite('black', false)

                makeLuaSprite('black2', 'black', 0, 800)
                addLuaSprite('black2', false)

                makeGraphic('black', 1280, 100, '000000')
                setObjectCamera('black', 'camHUD')

                makeGraphic('black2', 1280, 100, '000000')
                setObjectCamera('black2', 'camHUD')

                doTweenY('blackuptween', 'black2', 620, 1, 'circOut')
                doTweenY('blackdowntween', 'black', 0, 1, 'circOut')
            end
        elseif enabled then
            enabled = false

            doTweenY('blackuptween', 'black2', 800, 1.5, 'circOut')
            doTweenY('blackdowntween', 'black', -200, 1.5, 'circOut')
        end
    end
end

function onTweenCompleted(tag)
    if not enabled then
        if tag == 'blackuptween' then removeLuaSprite('black2') end
        if tag == 'blackdowntween' then removeLuaSprite('black') end
    end
end
