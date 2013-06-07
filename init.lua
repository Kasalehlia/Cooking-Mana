-- init.lua -- main
require 'event'
require 'chapters'
require 'user_interface'
require 'actions'

GAME:getViewport():setup(800, 600, false)

local ui = user_interface.create()
GAME:setUserInterface(ui)

GAME:runChapter(0)

