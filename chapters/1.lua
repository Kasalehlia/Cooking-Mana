-- chapters/1.lua -- chapter 1 / Cooking Mana
module('chapters/1', package.seeall)

require 'event'
require 'scenes/epilogue'

function init()
	local epilogue = Epilogue()
	GAME:registerScene(epilogue, "epilogue")
	
	--register more scenes
	
	GAME:goToScene(epilogue)
end
