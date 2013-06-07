-- chapters/0.lua -- chapter 0 / Menu
module('chapters/0', package.seeall)

require 'event'
require 'scenes/menu'

function init()
	local menu = Menu()
	GAME:registerScene(menu, "menu")
	
	--register more scenes
	
	GAME:goToScene(menu) --initial scene
	
	--listeners for initial scene
	event.on('actorArrived', function(actor)
		if actor:getName() == GAME:getMainCharacter():getName() then --TODO find better way to compare actors
			if actor:getPosition() == menu.sign_start:getPosition() then
				GAME:runChapter(1) -- start game
			elseif actor:getPosition() == menu.sign_quit:getPosition() then
				GAME:quit()
				return true
			end
		end
	end)
end
