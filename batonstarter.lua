function ServerHop() --Credit to fini my husband for serverhop
    local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
    function RandomServer()
        Temp_Servers = {}
        local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
        for i,v in pairs(ServersToTP.data) do
            if v.playing ~= v.maxPlayers then
                table.insert(Temp_Servers,v)
            end
        end
        return Temp_Servers[math.random(1,#Temp_Servers)]
    end
    TPService:TeleportToPlaceInstance(game.PlaceId, RandomServer().id)
end
function beSheriff() 
    local v1 = "Sheriff"
    local v2 = true
    local rem = game:GetService("ReplicatedStorage")["_CS.Events"].RequestOccupation
    Plrs = rem:InvokeServer(v1, v2)
    if tonumber(string.split(Plrs,'/')[1]) < tonumber(string.split(Plrs,'/')[2]) then
        local v1 = "Sheriff"
        local rem = game:GetService("ReplicatedStorage")["_CS.Events"].TeamChanger
        rem:FireServer(v1)  
        wait(4)
        for i,v in pairs(getgc(true)) do
            if type(v) == 'function' and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerGui.MainMenu.Controller and table.find(getconstants(v),'SpawnCharacter') and table.find(getconstants(v),'SpawnChar') then
                v()
                break
            end
        end
    else
        ServerHop()
    end
end
beSheriff()
wait(.2)
if game.Players.LocalPlayer.Backpack:FindFirstChild('Equip Items') then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild('Equip Items'))
    wait(.2)
    local v1 = game.Players.LocalPlayer.Character:FindFirstChild('Equip Items')
    local rem = game:GetService("ReplicatedStorage")["_CS.Events"].JobItemGiver
    rem:FireServer(v1)
end
wait(1)
if game.Players.LocalPlayer.Backpack:FindFirstChild('Baton') then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild('Baton'))
    wait(.2)
end
