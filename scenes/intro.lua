-- scenes/intro.lua -- Intro cutscene
module('scenes/intro', package.seeall)

class 'Intro' (Scene)

function Intro:__init()
    Scene.__init(self, VP(4000,3000))
end

function Intro:onEnter()
    GAME:enableUserControl(false)
    self:addBackground(Image("/media/black.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(2000):block()
    local f1 = self:addBackground(Image("/media/scenes/intro/face1.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(3000):block()
    local f2 = self:addBackground(Image("/media/scenes/intro/face2.png"), VP(0, 0), 0.0, 1.0)
    self:delBackground(f1)
    WaitTask(3000):block()
    local f3 = self:addBackground(Image("/media/scenes/intro/face3.png"), VP(0, 0), 0.0, 1.0)
    self:delBackground(f2)
    WaitTask(3000):block()
    local f4 = self:addBackground(Image("/media/scenes/intro/face4.png"), VP(0, 0), 0.0, 1.0)
    self:delBackground(f3)
    WaitTask(3000):block()
    self:addBackground(Image("/media/black.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(1000):block()
    self:delBackground(f4)
end
