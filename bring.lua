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
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.QualityLevel = 'Level01'
for _, v in next, game:GetDescendants() do
    if v:IsA('Workspace') then
        sethiddenproperty(v, 'StreamingTargetRadius', 64)
        sethiddenproperty(v, 'StreamingPauseMode', 2)
        sethiddenproperty(v.Terrain, 'Decoration', false)
        v.Terrain.Elasticity = 0
        v.Terrain.WaterWaveSize = 0
        v.Terrain.WaterWaveSpeed = 0
        v.Terrain.WaterReflectance = 0
        v.Terrain.WaterTransparency = 1
    elseif v:IsA('NetworkClient') then
        v:SetOutgoingKBPSLimit(100)
    elseif v:IsA('Lighting') then
        sethiddenproperty(v, 'Technology', 2)
        v.GlobalShadows = false
        v.FogEnd = 1 / 0
        v.Brightness = 0
    elseif v:IsA('Model') then
        sethiddenproperty(v, 'LevelOfDetail', 1)
    elseif Local.Player and v == Local.Player then
        v.ReplicationFocus = nil
    elseif v:IsA('Decal') or v:IsA('Texture') or v:IsA('Beam') then
        v:Destroy()
    elseif v:IsA('Fire') or v:IsA('SpotLight') or v:IsA('Smoke') or v:IsA('Sparkles') then
        v.Enabled = false
    elseif v:IsA('SpecialMesh') then
        v.TextureId = ''
        v.MeshId = ''
    elseif v:IsA('ParticleEmitter') or v:IsA('Trail') then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA('BlurEffect') or v:IsA('SunRaysEffect') or v:IsA('ColorCorrectionEffect') or v:IsA('BloomEffect') or
        v:IsA('DepthOfFieldEffect') then
        v.Enabled = false
    elseif v:IsA('BasePart') and not v:IsA('MeshPart') then
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('Pants') or v:IsA('Shirt') then
        v[v.ClassName .. 'Template'] = ''
    elseif v:IsA('Explosion') then
        v.BlastPressure = 0
        v.BlastRadius = 0
        v.Visible = false
        v.Position = Vector3.new(0, 0, 0)
    elseif v:IsA('ForceField') then
        v.Visible = false
    elseif v:IsA('ShirtGraphic') then
        v.Graphic = ''
    elseif v:IsA('MeshPart') then
        v.MeshId = ''
        v.TextureID = ''
        v.Reflectance = 0
        v.Material = 'SmoothPlastic'
    elseif v:IsA('CharacterMesh') then
        v.BaseTextureId = ''
        v.MeshId = ''
        v.OverlayTextureId = ''
    elseif v:IsA('PlayerGui') then
        v:ClearAllChildren()
    end
end
Services.Workspace.ClientAnimatorThrottling = Enum.ClientAnimatorThrottlingMode.Enabled
Services.Workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled
Services.Workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled
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
                Local.Player.Character.HumanoidRootPart.CFrame =
                    CFrame.new(9999999999999999, 9999999999999999, 9999999999999999)
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
