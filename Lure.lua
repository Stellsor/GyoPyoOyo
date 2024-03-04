

--** Error Ban Bypass **--
for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    print("Found Error finder, deleting.")
    v:Disable()
end
 
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    print("found LogService output detection, removing")
    v:Disable()
end


if game.PlaceId == 1730877806 then

local ohString1 = "k8luk4VF3F"

game:GetService("ReplicatedStorage").Events.reserved:InvokeServer(ohString1)


local ohBoolean1 = true

game:GetService("Players").LocalPlayer.PlayerGui.chooseType.Frame.RemoteEvent:FireServer(ohBoolean1)
end




local SpeedBypass = true


game:GetService("RunService").Heartbeat:Connect(function()
        if SpeedBypass then
            if game.Players.LocalPlayer.Character:GetAttribute("noclip") == true then
                repeat 
                    wait()
                until game.Players.LocalPlayer.Character:GetAttribute("noclip") == false
                game:GetService("ReplicatedStorage").Events.glide:InvokeServer()
            else
                game:GetService("ReplicatedStorage").Events.glide:InvokeServer()
            end
        end
    end)



-- Tween Function.
function CreateTweenFloat()
    local Twan = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("ra") or Instance.new("BodyVelocity")
    Twan.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    Twan.Name = "ra"
    Twan.MaxForce = Vector3.new(100000, 100000, 100000)
    Twan.Velocity = Vector3.new(0,0,0)
end

local function TweenTP(e, studspersecond, offset)
    local input = Instance.new("Part", game.Workspace)
    input.CFrame = e * CFrame.new(0, offset, 0)
    wait()
    input.Anchored = true
    input.Transparency = 1
    input.Name = "LocationMain"
    input.CanCollide = false

    local replicatedStorage = game:GetService("ReplicatedStorage")
    local faceMouseEvent = replicatedStorage.Events:FindFirstChild("faceMouse")

    CreateTweenFloat()

    local char = game:GetService("Players").LocalPlayer.Character;
    local input = input or print("input is nil");
    local studspersecond = studspersecond or 1000;
    local offset = offset or CFrame.new(0,0,0);
    local vec3, cframe;
 
    if typeof(input) == "table" then
        vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input));
    elseif typeof(input) ~= "Instance" then
        return print("wrong format used");
    end;
 
    --TweenPart
    Time = (char.HumanoidRootPart.Position - (vec3 or input.Position)).magnitude/studspersecond;
    local twn = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(Time,Enum.EasingStyle.Linear), {CFrame = (cframe or input.CFrame)});

    repeat wait() until not game.Players.LocalPlayer.Character:FindFirstChild("SafeForceField") wait()
    faceMouseEvent:FireServer()
    twn:Play();
    twn.Completed:Wait();
    if game.workspace:FindFirstChild("LocationMain") then
        game.workspace.LocationMain:Destroy()
    end
end

TweenTP(CFrame.new(-3694.16089, 200, 432.999237), 185, 0)
TweenTP(CFrame.new(-3411.8125, 200, 5127.521484375), 185, 0)

wait(1)

game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn:InvokeServer("true")

wait(3)

TweenTP(CFrame.new(-322.091278, 610.662781, 1683.6825, -0.999892056, 1.11787646e-08, -0.0146932183, 1.10519949e-08, 1, 8.70898642e-09, 0.0146932183, 8.54565663e-09, -0.999892056, 185, 0))

wait(4)

 

local TeleportService = game:GetService("TeleportService")

local Place = 1730877806

local player = game.Players.LocalPlayer

TeleportService:Teleport(Place, player)
