function _load(str) 
    loadstring(game:HttpGet(str))()
end
_load("https://raw.githubusercontent.com/null-object-a/rbx.lua/main/batonstarter.lua")
_load("https://raw.githubusercontent.com/Shariiii/Anomic-Stuff/main/Baton%20Farm%20Script.lua")
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    pcall(function()
        if State == Enum.TeleportState.Started then
            syn.queue_on_teleport("loadstring(game:HttpGet(\"\"))")
        end
    end)
    pcall(function()
        if State == Enum.TeleportState.Started then 

        end
    end)
end)
ServerHop()
