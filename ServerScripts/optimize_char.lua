local plrs = game:GetService('Players')

plrs.PlayerAdded:Connect(function(plr)
	local char = workspace:WaitForChild(plr.Name)
	repeat
		wait()
	until char
	local not_del = {'Humanoid','HumanoidRootPart','Head','UpperTorso','Neck'}
	for _,v in pairs(char:GetDescendants()) do
		local is_good = false
		for _,f in pairs(not_del) do
			if v.Name == f then
				is_good = true
			end
		end
		if not is_good then
			v:Destroy()
		else
			if v:IsA('Part') or v:IsA('MeshPart') then
				v.Anchored = true
			end
		end
	end
end)
