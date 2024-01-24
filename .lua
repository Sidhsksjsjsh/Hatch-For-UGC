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

T1:Dropdown("Select hatch amount",{"1","3","5"},function(value)
        _G.hatchamount = tonumber(value)
end)

lib:HookFunction(function(method,self,args)
    if method == "FireServer" and self == "HATCHEDCOUNT" then
      game:GetService("ReplicatedStorage")["GUIOPENEGG"]["HATCHEDCOUNT"]:FireServer(_G.hatchamount)
    end
end)
