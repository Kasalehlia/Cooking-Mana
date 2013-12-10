-- user_interface.lua -- the user interface
module('user_interface', package.seeall)

class 'MyUI' (UserInterface)

function MyUI:__init()
	UserInterface.__init(self)
	
	-- Panel
	local atbg = UserInterfaceAnimation(Box(VP(4000, 200)))
	atbg:setPosition(VP(0, 0))
	self:addElement(atbg)
	
	local atborder = UserInterfaceAnimation(Box(VP(4000, 5), 0x303030))
	atborder:setPosition(VP(0, 200))
	self:addElement(atborder)
	
  local go = Action("Go to ", 1)
  local interact = Action("Interact with ", 1)
  local pickup = Action("Pick up ", 1)
  
  local goButton = Button(Image("media/ui/walkto.png"), function() self:setAction(go); return 0 end)
  goButton:setPosition(VP(0, 0))
  self:addElement(goButton)

  local interactButton = Button(Image("media/ui/interact.png"), function() self:setAction(interact); return 0 end)
  interactButton:setPosition(VP(150, 0))
  self:addElement(interactButton)

  local pickupButton = Button(Image("media/ui/pickup.png"), function() self:setAction(pickup); return 0 end)
  pickupButton:setPosition(VP(300, 0))
  self:addElement(pickupButton)
  
	-- Action text
	local at = ActionText(Font("media/fonts/tommy_holloway.ttf", 40, 1))
	at:setPosition(VP(600, 120))
	at:setAlignmentX(0.0)
	at:setAlignmentY(0.5)
	
	self:setAction(go)
	
	self:addElement(at)
end

function MyUI:handleEvent(evt, frameDuration)
	local r = UserInterface.handleEvent(self, evt, frameDuration)
	if r == EVENT_STATE_HANDLED then
		return EVENT_STATE_HANDLED
	end
	return EVENT_STATE_UNHANDLED
end

function create()
	return MyUI()
end


