Pause = Class{}

function Pause:init()
	self.image = love.graphics.newImage('pausa.png')
	self.x = VIRTUAL_WIDTH / 2 - 8
    self.y = VIRTUAL_HEIGHT / 2 - 8

    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.dy = 0
end

function Pause:update(dt)
    love.audio.pause()
end

function Pause:ingreso(pausa)
	love.audio.pause()
	if pausa == true
		return true
	else
		sounds['music']:play()
		return false
end

function Pause:render()
    -- simple UI code	
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Game Paused', 0, 100, VIRTUAL_WIDTH, 'center')
	--love.graphics.draw(self.image, self.x, self.y)
end