-- init.lua -- main
require 'event'
require 'chapters'
require 'user_interface'
require 'actions'

GAME:getViewport():setup(1280, 720, false)

local ui = user_interface.create()
GAME:setUserInterface(ui)

GAME:runChapter(0)

