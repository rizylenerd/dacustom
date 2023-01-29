getgenv().hostusername = "Liam22443"

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
repeat
    wait()
until game:IsLoaded()

local function SN(text)
    for i, v in pairs(Services.Players:GetChildren()) do
        if (string.sub(string.lower(v.DisplayName), 1, string.len(text))) == string.lower(text) then
            return v
        elseif (string.sub(string.lower(v.Name), 1, string.len(text))) == string.lower(text) then
            return v
        end
    end
end
local save = getgenv().hostusername
host.Chatted:Connect(function(msg)
    local args = string.split(msg, " ")
    if args[1] == "!bring" then
        local Target = SN(args[2])
        if Target ~= nil then
            local HumClone = Local.Player.Character.Humanoid:Clone()
            HumClone.Parent = Local.Player.Character
            Local.Player.Character.Humanoid:Destroy()
            Local.Player.Character.HumanoidRootPart.CFrame = host.Character.HumanoidRootPart.CFrame
            wait(.8)
            local tool = Local.Backpack:FindFirstChild("Wallet")
            tool.Parent = Local.Character
            firetouchinterest(tool.Handle, Target.Character['Head'], 0)
            wait(.2)
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
            local qnt = queue_on_teleport or syn and
                            syn.queue_on_teleport "repeat wait() until game:IsLoaded() wait(5) getgenv().hostusername =" ..save .."loadstring(game:HttpGet('https://raw.githubusercontent.com/rizylenerd/dacustom/main/revert.lua'))()"
            game:GetService("TeleportService"):Teleport(game.PlaceId, Local.Player)
        end
    end
end)
