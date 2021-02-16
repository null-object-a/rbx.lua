function _load(str) 
    loadstring(game:HttpGet(str))()
end
_load("https://raw.githubusercontent.com/null-object-a/rbx.lua/main/batonstarter.lua")
_load("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Name%20Who.lua")
a = 1
repeat
    _load("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Baton%20Farm%20Script.lua")
  a = a + 1
until a > 5
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    pcall(function()
        if State == Enum.TeleportState.Started then
            syn.queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/null-object-a/rbx.lua/main/batonaf.lua\"))()")
        end
    end)
end)
ServerHop()
