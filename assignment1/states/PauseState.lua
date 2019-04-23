--[[
    TitleScreenState Class
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    The PauseState is were we define the pause click and also we got to describe how does the state works.
]]

PauseState = Class{__includes = BaseState}

function PauseState:update(dt)
    -- transition to PlayState when P key are pressed to the PauseState
    love.audio.pause()
	
	if love.keyboard.wasPressed('p') or love.keyboard.wasPressed('P') then
		sounds['music']:play()
        --gStateMachine:change('play')
    end
	
end

function PauseState:render()
    -- simple UI code	
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Game Paused', 0, 100, VIRTUAL_WIDTH, 'center')
end
