-- scenes/strange_planet.lua -- Strange Planet (first puzzle)
module('scenes/strange_planet', package.seeall)

class 'StrangePlanet' (Scene)

function StrangePlanet:__init()
    Scene.__init(self, VP(5760,3000)) --TODO set different size?
    
    -- set up main character
    local actor_hubert = require 'actors/hubert'
    local hubert = actor_hubert.create()
    GAME:setMainCharacter(hubert)
    GAME:getViewport():setFollowing(hubert)
    GAME:getMainCharacter():setPosition(VP(1900, 2780))
    self:addActor(GAME:getMainCharacter())
    
    self:addBackground(Image("/media/scenes/strange_planet/bg_back.png"), VP(0, 0), 0.5, 1.0)
    self:addBackground(Image("/media/scenes/strange_planet/bg_front.png"), VP(0, 0), 1.0, 1.0)
    
    local p = Poly(VP(0, 2500), VP(5760, 2500), VP(5760, 3000), VP(0, 3000))
    local g = self:getGround()
    g:addPolygon(p)
end

function StrangePlanet:onEnter()
    GAME:enableUserControl(true)
    --local Audio = Audio()
	--bgmusic = Audio:prepareSound("media/music/test.flac",100)
    --bgmusic:start()
end
