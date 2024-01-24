local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")
local T1 = wndw:Tab("Hatch for UGC")
local T2 = wndw:Tab("Log")

T1:Toggle("Hatch UGC 1",false,function(value)
    _G.ugc1 = value
    while wait() do
      if _G.ugc1 == false then break end
         game:GetService("ReplicatedStorage")["EGGOPEN"]["EGGREMOTE19"]:FireServer()
    end
end)

T1:Toggle("Hatch UGC 2",false,function(value)
    _G.ugc2 = value
    while wait() do
      if _G.ugc2 == false then break end
         game:GetService("ReplicatedStorage")["EGGOPEN"]["EGGREMOTE22"]:FireServer()
    end
end)

T1:Toggle("Auto log when u got Legendary, Insane and UGC",false,function(value)
    _G.ugcnotify = value
end)

lib:HookFunction(function(method,self,args)
    if method == "FireServer" and self == "INSANE" and _G.ugcnotify == true then
      T2:Label("Congrats you got INSANE!")
    elseif method == "FireServer" and self == "UGC1" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC1!")
    elseif method == "FireServer" and self == "UGC2" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC2!")
    elseif method == "FireServer" and self == "UGC3" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC3!")
    elseif method == "FireServer" and self == "RBXUGC1" and _G.ugcnotify == true then
      T2:Label("Congrats you got RBXUGC1!")
    elseif method == "FireServer" and self == "RBXUGC2" and _G.ugcnotify == true then
      T2:Label("Congrats you got RBXUGC2!")
    elseif method == "FireServer" and self == "RBXUGC3" and _G.ugcnotify == true then
      T2:Label("Congrats you got RBXUGC3!")
    elseif method == "FireServer" and self == "VIPINSANE" and _G.ugcnotify == true then
      T2:Label("Congrats you got VIPINSANE!")
    elseif method == "FireServer" and self == "UGC4" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC4!")
    elseif method == "FireServer" and self == "UGC5" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC5!")
    elseif method == "FireServer" and self == "UGC6" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC6!")
    elseif method == "FireServer" and self == "UGC7" and _G.ugcnotify == true then
      T2:Label("Congrats you got UGC7!")
    elseif method == "FireServer" and self == "ELITEINSANE" and _G.ugcnotify == true then
      T2:Label("Congrats you got ELITEINSANE!")
    end
end)
