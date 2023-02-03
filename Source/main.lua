import 'Coracle/coracle'
import 'Coracle/math'
import 'CoreLibs/sprites'
import 'Views/focus_manager'
import 'Views/rotary_encoder'

local font = playdate.graphics.font.new("font-rains-1x")
playdate.graphics.setFont(font)

local focusManager = FocusManager()

focusManager:addView(RotaryEncoder(80, 	30, function(value)
	print(value)
end), 1)
focusManager:addView(RotaryEncoder(155, 30), 1)
focusManager:addView(RotaryEncoder(230, 30), 1)
focusManager:addView(RotaryEncoder(305, 30), 1)

focusManager:addView(RotaryEncoder(80, 	85), 2)
focusManager:addView(RotaryEncoder(155, 85), 2)
focusManager:addView(RotaryEncoder(230, 85), 2)

focusManager:addView(RotaryEncoder(80, 	140), 3)
focusManager:addView(RotaryEncoder(155, 140), 3)

focusManager:addView(RotaryEncoder(80, 	195), 4)
focusManager:addView(RotaryEncoder(155, 195), 4)
focusManager:addView(RotaryEncoder(230, 195), 4)
focusManager:addView(RotaryEncoder(305, 195), 4)
focusManager:start()

playdate.inputHandlers.push(focusManager:getInputHandler())

function playdate.update()
	focusManager:turnFocusedView(crankChange())
	playdate.graphics.sprite.update()
end