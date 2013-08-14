-- scenes/strange_planet.lua -- Strange Planet (first puzzle)
module('scenes/strange_planet', package.seeall)

class 'StrangePlanet' (Scene)

function StrangePlanet:__init()
    Scene.__init(self, VP(4000,3000)) --TODO set different size?
    
    -- set up main character
    local actor_hubert = require 'actors/hubert'
    local hubert = actor_hubert.create()
    GAME:setMainCharacter(hubert)
    GAME:getViewport():setFollowing(hubert)
end

function StrangePlanet:onEnter()
    GAME:enableUserControl(true)
    
end
