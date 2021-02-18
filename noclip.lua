    local noclip = true
   
	local function NoclipLoop()
    if noclip == true then
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= "wepro"  then
					child.CanCollide = false
				end
		end
	
    elseif noclip == false then
        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == false and child.Name ~= "wepro" then
					child.CanCollide = true
				end
		end
    end end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "x" then
noclip = not noclip
end
end)