-- actors/hubert.lua -- Hubert
module('actors/hubert', package.seeall)

function create()
	local mc_walk = DirectionAnimation(2, -0.5*math.pi)
	mc_walk:setAnimation(0, ImageSprite("/media/actors/hubert/right/", 100))
	mc_walk:setAnimation(1, ImageSprite("/media/actors/hubert/left/", 100))
	
	local mc_stand = DirectionAnimation(2, -0.5*math.pi)
	mc_stand:setAnimation(0, Image("/media/actors/hubert/right/right_2.png"))
	mc_stand:setAnimation(1, Image("/media/actors/hubert/left/left_2.png"))
	
	local mc = Actor("Hubert")
	mc:addAnimation("default", mc_stand)
	mc:addAnimation("walk", mc_walk)
	mc:setMode("default")
	mc:setSpeed(900)
	
	return mc
end

