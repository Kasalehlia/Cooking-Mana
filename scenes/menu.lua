-- scenes/menu.lua -- Main Menu
module('scenes/menu', package.seeall)

class 'Menu' (Scene)

function Menu:__init()
    Scene.__init(self, VP(4000,3000))
    
    -- set up main character
    local actor_hubert = require 'actors/hubert'
    local hubert = actor_hubert.create()
    GAME:setMainCharacter(hubert)
    GAME:getViewport():setFollowing(hubert)
    
    -- set up scene
    self:addBackground(Image("/media/scenes/menu/background.png"), VP(0, 0), 0.0, 1.0)
    self:addBackground(Image("/media/scenes/menu/ground.png"), VP(0, 2500), 0.0, 1.0)
    
    self.sign_start = Actor('Start')
    self.sign_start:addAnimation("default", Image("/media/actors/signs/start.png"))
    self.sign_start:setPosition(VP(1000, 2505))
    self:addActor(self.sign_start)
    
    self.sign_quit = Actor('Quit')
    self.sign_quit:addAnimation("default", Image("/media/actors/signs/quit.png"))
    self.sign_quit:setPosition(VP(3000, 2505))
    self.sign_quit:setYOffset(100)
    self:addActor(self.sign_quit)
    
    self.snail = Actor('')
    self.snail:addAnimation("default", Image("/media/actors/waving_snail.png"))
    self.snail:setPosition(VP(3600, 2850))
    self:addActor(self.snail)
    
    -- add main character
    GAME:getMainCharacter():setPosition(VP(1900, 2780))
    self:addActor(GAME:getMainCharacter())
    
    -- set up walkable area
    local p = Poly(VP(0, 2500), VP(4000, 2500), VP(4000, 3000), VP(0, 3000))
    local g = self:getGround()
    g:addPolygon(p)
end

function Menu:onEnter() -- reset actor's positions
    GAME:getMainCharacter():setPosition(VP(1900, 2780))
end
