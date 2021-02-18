local uis = game:GetService("UserInputService")

print("sex")
function tp(cf) 
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
end
uis.InputBegan:Connect(function(k, sex)
 if sex then 

else 
    if k.KeyCode == Enum.KeyCode.KeypadOne then 
        --Arway
        tp(CFrame.new(1820.1949462891, -62.323425292969, -1274.0341796875))
    end
     if k.KeyCode == Enum.KeyCode.KeypadTwo then 
        --Pahrump
        tp(CFrame.new(-100.15000152588, 14.676574707031, 24.000001907349))
    end 
     if k.KeyCode == Enum.KeyCode.KeypadThree then 
        --Eastdike
        tp(CFrame.new(2696.5317382813, 0.59514045715332, -3732.4504394531))
    end
 if k.KeyCode == Enum.KeyCode.KeypadFour then 
        --Underground
        tp(CFrame.new(4038, -19.469909667969, -2033))
    end
 if k.KeyCode == Enum.KeyCode.KeypadFive then 
        --Road
        tp(CFrame.new(1988, -71.870300292969, -1332))
    end
 if k.KeyCode == Enum.KeyCode.KeypadSix then 
        --Bank UG
        tp(CFrame.new(1914, -71.870300292969, -1450))
    end
if k.KeyCode == Enum.KeyCode.KeypadSeven then 
        --Friend 1
        tp(game.Players.alanek143.Character.HumanoidRootPart.CFrame)
    end
 if k.KeyCode == Enum.KeyCode.KeypadEight then 
        --Friend 2
        tp(game.Players.NyquanG.Character.HumanoidRootPart.CFrame)
    end
end)