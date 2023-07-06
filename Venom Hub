getgenv().GPO = { 
    Main = {
        ["Farm"] = false,
        ["ServerMode"] = "Public", -- Public,  Private.
        ["PrivateServerCode"] = nil, -- Leave This Nil Unless ServerMode Is Private.
    },
    RifleConfig = {
        ["AutoStats"] = false, -- Gun Mastery.
        ["AutoQuest"] = true, -- Will auto grab Quest.
    },
    ServerCheck = {
        ["BigServerCheck"] = false, -- Will Check If The Server Is To Big.
        ["MaxPeople"] = 8, -- Only Works if BigServerCheck Is On.
    },
    TweenSpeeds = { -- Test Speeds if need
        ["TweenUp"] = 125,
        ["TweenChest"] = 35, 
        ["TweenQuest"] = 25,
        ["TweenMain"] = 25,
    },
    Misc = {
        ["CapFps"] = true,
        ["FpsCap"] = 30,
        ["MuteVolume"] = true,
    }
}





--// -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- //
--                                  Loading                               --
--// -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- //



--** Game Check **--
if game.PlaceId == 7465136166 then
    return
end

--** Waiting for Game to load. **--
repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer.Character
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
wait(3)

--** Anti Afk **--
for _,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end



local TweenUpSpeed = getgenv().GPO.TweenSpeeds["TweenUp"];
local TweenChestSpeed = getgenv().GPO.TweenSpeeds["TweenChest"];
local TweenMainSpeed = getgenv().GPO.TweenSpeeds["TweenMain"];
local TweenQuestSpeed = getgenv().GPO.TweenSpeeds["TweenQuest"];




--** Error Ban Bypass **--
for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
    wait()
    print("Bypassed Error Check.")
end
 
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    v:Disable()
    wait()
    print("Bypassed Logger.")
end








--** UI *--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stellsor/UI/main/rahhh",true))()

local window = Library:Window('Venom Hub')

local AutoFarm = window:Tab('Auto Farm')
local Config = window:Tab('Config')



--** Rifle Farm **--

AutoFarm:Label("Rifle Farm")

AutoFarm:Toggle('Toggle', false, function(t)
    getgenv().GPO.Main["Farm"] = t
    if getgenv().Check then
        return
    end
    getgenv().Check = true
    loadstring(game:HttpGet("https://pastebin.com/raw/444AZ73j",true))()
end)

AutoFarm:Toggle('Auto Stats', false, function(t)
    getgenv().GPO.RifleConfig["AutoStats"] = t
end)

AutoFarm:Toggle('Auto Quest', false, function(t)
    getgenv().GPO.RifleConfig["AutoQuest"] = t
end)

AutoFarm:Button('Join Small Server', function()
    local module = loadstring(game:HttpGet("https://pastebin.com/raw/zpxwY148",true))()
    module:Teleport(game.PlaceId)
end)




--** Config **--

Config:Label("Tween Speeds")

Config:Slider("Up&Down", 0, 100, TweenUpSpeed, function(v)
    getgenv().GPO.TweenSpeeds["TweenUp"] = v
end)

Config:Slider("Chest", 0, 50, TweenChestSpeed, function(v)
    getgenv().GPO.TweenSpeeds["TweenChest"] = v
end)

Config:Slider("Quest", 0, 50, TweenQuestSpeed, function(v)
    getgenv().GPO.TweenSpeeds["TweenQuest"] = v
end)

Config:Slider("Main", 0, 50, TweenMainSpeed, function(v)
    getgenv().GPO.TweenSpeeds["TweenMain"] = v
end)





































































--[[
    tab:Button('Button', function()
    print("Test")
end)

tab:Toggle('Toggle', false, function(t)
    getgenv().LOOP = t
    while wait() do
        if getgenv().LOOP == true then
            print("Fr")
        end
    end
end)

tab:Label("Label")

local dropdown = tab:Dropdown("Dropdown", {"1", "2",'3','4','5','6','7','8'}, function(item)
    print(item)
end)

tab:Button('Refresh', function()
    dropdown:RefreshDropdown({'69'})
end)

tab:Slider("Slider", 16, 1000, 16, function()

end)
--]]
