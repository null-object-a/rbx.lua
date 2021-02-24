function beCrafter() 
    local v1 = "Crafter"
    local v2 = true
    local rem = game:GetService("ReplicatedStorage")["_CS.Events"].RequestOccupation
    Plrs = rem:InvokeServer(v1, v2)
    if tonumber(string.split(Plrs,'/')[1]) < tonumber(string.split(Plrs,'/')[2]) then
        local v1 = "Crafter"
        local rem = game:GetService("ReplicatedStorage")["_CS.Events"].TeamChanger
        rem:FireServer(v1)  
    else
        notif("Bank AF","Could not join crafter team.")
    end
end
beCrafter()
wait(4)
local A_1 = "Lockpick"
local A_2 = "Single"
local A_3 = Color3.new(0, 0, 0)
local Event = game:GetService("ReplicatedStorage")["_CS.Events"].PurchaseTeamItem
Event:FireServer(A_1, A_2, A_3)
local A_1 = "Drill"
local A_2 = "Single"
local A_3 = Color3.new(0, 0, 0)
local Event = game:GetService("ReplicatedStorage")["_CS.Events"].PurchaseTeamItem
Event:FireServer(A_1, A_2, A_3)
wait(1)
game:GetService("ReplicatedStorage")["_CS.Events"].AddItem:FireServer("Lockpick", false)
game:GetService("ReplicatedStorage")["_CS.Events"].AddItem:FireServer("Drill", false)