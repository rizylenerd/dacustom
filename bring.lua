if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat
    wait()
until game.Players:FindFirstChild(getgenv().hostusername)
local host = game.Players[getgenv().hostusername]

local Target

local Services = {
    Players = game:GetService("Players"),
    RunService = game:GetService("RunService"),
    Workspace = game:GetService("Workspace"),
    StarterGui = game:GetService("StarterGui")
}

local Local = {
    Player = Services.Players.LocalPlayer,
    Character = Services.Players.LocalPlayer.Character,
    Id = Services.Players.LocalPlayer.UserId,
    Backpack = Services.Players.LocalPlayer.Backpack
}

local remotes = {"CHECKER_1", "CHECKER_2", "TeleportDetect", "OneMoreTime", "BreathingHAMON", "VirusCough"}
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    local args = {...}
    local method = getnamecallmethod()
    if (method == "FireServer" and args[1].Name == "MainEvent" and table.find(remotes, args[2])) then
        return
    end
    return __namecall(table.unpack(args))
end)

Local.Character.HumanoidRootPart.CFrame = CFrame.new(201, 43, 200015)
local Check = Instance.new("Sound")
Check.SoundId = "http://www.roblox.com/asset/?id=1788243907"
Check.Volume = 2
Check.Looped = false
Check.archivable = false
Check.Parent = Services.Workspace
local function SN(text)
    for i, v in pairs(Services.Players:GetChildren()) do
        if (string.sub(string.lower(v.DisplayName), 1, string.len(text))) == string.lower(text) then
            return v
        elseif (string.sub(string.lower(v.Name), 1, string.len(text))) == string.lower(text) then
            return v
        end
    end
end
Services.RunService:Set3dRenderingEnabled(false)
Check:Play()
local x = "getgenv().hostusername = '" .. getgenv().hostusername ..
              "' loadstring(game:HttpGet('https://raw.githubusercontent.com/rizylenerd/dacustom/main/bring.lua'))()"
host.Chatted:Connect(function(msg)
    local args = string.split(msg, " ")
    if #args == 2 then
        if args[1] == "!bring" or args[1] == "!b" then
            local Target = SN(args[2])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame = host.Character.HumanoidRootPart.CFrame
                wait(.3)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        elseif args[1] == "!void" or args[1] == "!v" then
            local Target = SN(args[2])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame =
                    CFrame.new(9999999999999999, 9999999999999999, 9999999999999999)
                wait(.5)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        elseif args[1] == "!kill" or args[1] == "!k" then
            local Target = SN(args[2])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                HumClone:ChangeState(15)
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
                wait(.3)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        elseif args[1] == "!killbring" or args[1] == "!kb" then
            local Target = SN(args[2])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                HumClone:ChangeState(15)
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame = host.Character.HumanoidRootPart.CFrame
                wait(.3)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        end
    elseif #args == 3 then
        if args[1] == "!bring" or args[1] == "!b" then
            local Target = SN(args[2])
            local Target2 = SN(args[3])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame = Target2.Character.HumanoidRootPart.CFrame
                wait(.3)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        elseif args[1] == "!killbring" or args[1] == "!kb" then
            local Target = SN(args[2])
            local Target2 = SN(args[3])
            if Target ~= nil and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") and
                Local.Backpack:FindFirstChild("Wallet") then
                local HumClone = Local.Player.Character.Humanoid:Clone()
                HumClone.Parent = Local.Player.Character
                HumClone:ChangeState(15)
                Local.Player.Character.Humanoid:Destroy()
                Local.Player.Character.HumanoidRootPart.CFrame = Target2.Character.HumanoidRootPart.CFrame
                wait(.3)
                local tool = Local.Backpack:FindFirstChild("Wallet")
                tool.Parent = Local.Character
                firetouchinterest(tool.Handle, Target.Character['Head'], 0)
                wait(.3)
                if Local.Character then
                    Local.Character:BreakJoints()
                end
                for i, v in pairs(Local.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v:Destroy()
                    elseif v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
                syn.queue_on_teleport(x)
                game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
            end
        end
    end
end)
