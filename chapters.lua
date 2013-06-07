-- chapters.lua -- chapter and scene manager
module('chapters', package.seeall)
require 'event'

chapters = {}

function initChapter(n)
	print('loading chapter '..n)
	if chapters[n] then
		chapters[n]:init()
	end
	return false
end

for i=0, 10000 do
	local f = io.open('chapters/'..i..'.lua')
	if f == nil then
		print('loaded '..(i)..' chapters')
		break;
	else
		chapters[i] = require('chapters/'..i)
	end
	io.close(f)
end

event.on('initChapter', initChapter)

