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
    self:addForeground(Image("/media/scenes/intro/face1.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(3000):block()
    self:addForeground(Image("/media/scenes/intro/face2.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(3000):block()
    self:addForeground(Image("/media/scenes/intro/face3.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(3000):block()
    self:addForeground(Image("/media/scenes/intro/face4.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(3000):block()
    self:addForeground(Image("/media/black.png"), VP(0, 0), 0.0, 1.0)
    WaitTask(1000):block()
end
