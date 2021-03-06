-- actions.lua -- Action definitions
module('actions', package.seeall)
require 'event'

function onSceneClick(vp)
	--regardless of current action
	GAME:getMainCharacter():walkTo(vp)
	return false
end

function onActorClick(target)
	local ui = GAME:getUserInterface()
	if string.sub(ui:getActionText(),1,5) == "Go to" then
    GAME:getMainCharacter():walkTo(target)
  else --any other action
		local valid = true
		function arrive(subject)
			if not valid then return true end
			if subject:getName() == GAME:getMainCharacter():getName() and subject:getPosition() == target:getPosition() and valid then
				if string.sub(ui:getActionText(),1,8) == "Interact" then
					--INTERACT ACTION
				elseif string.sub(ui:getActionText(),1,4) == "Pick" then
					--PICKUP ACTION
				end
				return true
			end
			return false
		end
		function abort(subject)
			if subject:getName() == GAME:getMainCharacter():getName() then
				valid = false
				return true
			end
			return false
		end
		event.on('actorArrived', arrive);
		event.on('abortWalking', abort);
    GAME:getMainCharacter():walkTo(target)
  end
  return false
end

event.on('sceneClick', onSceneClick)
event.on('actorClick', onActorClick)

