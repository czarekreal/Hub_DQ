local starter_gui = game:GetService('StarterGui')
local plr = game.Players.LocalPlayer

--disable core gui
starter_gui:SetCoreGuiEnabled(Enum.CoreGuiType.All,false)

--loading gui faster than roblox do
for _,v in pairs(starter_gui:GetChildren()) do
	v.Parent = plr
end
