local tw_service = game:GetService('TweenService')

local gradient = script.Parent -- location of your gradient

local max_pos = 1 -- how far gradient can move
local speed_rot = 1 -- more = faster (rotation)
local speed_mov = 5 -- less = faster (motion)
local easing_style = Enum.EasingStyle.Linear-- easing style for motion


spawn(function()
	while true do
		local tw = tw_service:Create(gradient,TweenInfo.new(speed_mov,easing_style),{Offset = Vector2.new(0,max_pos)})
		tw:Play()
		repeat
			wait()
		until tw.PlaybackState == Enum.PlaybackState.Completed
		tw = tw_service:Create(gradient,TweenInfo.new(speed_mov,easing_style),{Offset = Vector2.new(0,max_pos)})
		tw:Play()
		repeat
			wait()
		until tw.PlaybackState == Enum.PlaybackState.Completed
	end
end)
spawn(function()
	while wait() do
		gradient.Rotation = gradient.Rotation + speed_rot
	end
end)
