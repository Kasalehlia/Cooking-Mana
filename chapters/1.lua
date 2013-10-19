-- chapters/1.lua -- chapter 1 / Cooking Mana
module('chapters/1', package.seeall)

require 'event'
require 'scenes/intro'
require 'scenes/strange_planet'

function init()
    local intro = Intro()
    GAME:registerScene(intro, "intro")
    local strange_planet = StrangePlanet()
    GAME:registerScene(strange_planet, "strange_planet")

    --register more scenes
    
    GAME:goToScene(intro)
    GAME:goToScene(strange_planet)
end
