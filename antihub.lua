repeat
    task.wait()
until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character


loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/VinGUI"))()

getgenv().Main = {
    Keybind = "X",
    AntiType = "Legit" --Sky, Underground, Legit, Desync
}

getgenv().Anti = {
    SkyAmount = 90,
    LegitAmount = 8
}

local Game = game
local Sky = false

local rs = Game:GetService("RunService")
local uis = Game:GetService("UserInputService")
local plrs = Game:GetService("Players")
local sg = Game:GetService("StarterGui")
local plr = plrs.LocalPlayer
local char = plr.Character
local hum = char:FindFirstChild("Humanoid")

local function skyAnti()
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, getgenv().Anti.SkyAmount, 0) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end

local function legitAnti()
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(getgenv().Anti.LegitAmount, vel.y, vel.z) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end

uis.InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode[getgenv().Main.Keybind] then
        printconsole("input recieved")
        if getgenv().Main.AntiType == "Normal" then
            if Legit then Legit = false end
            if Sky == false then
                Sky = true
                sg:SetCore("SendNotification", {
                    Title = "Saturn's Anti-Hub",
                    Text = "Sky anti-lock enabled.",
                    Icon = "rbxassetid://9605261863",
                    Duration = 2
                })
            else
                Sky = false
                sg:SetCore("SendNotification", {
                    Title = "Saturn's Anti-Hub",
                    Text = "Sky anti-lock disabled.",
                    Icon = "rbxassetid://9605261863",
                    Duration = 2
                })
            end
            printconsole(tostring(Sky))
        elseif getgenv().Main.AntiType == "Legit" then
            if Sky then Sky = false end
            if Legit == false then
                Legit = true
                sg:SetCore("SendNotification", {
                    Title = "Saturn's Anti-Hub",
                    Text = "Legit anti-lock enabled.",
                    Icon = "rbxassetid://9605261863",
                    Duration = 2
                })
            else
                Legit = false
                sg:SetCore("SendNotification", {
                    Title = "Saturn's Anti-Hub",
                    Text = "Legit anti-lock disabled.",
                    Icon = "rbxassetid://9605261863",
                    Duration = 2
                })
            end
            printconsole(tostring(Legit))
        end
    end
end)

rs.heartbeat:Connect(function()
    if Sky then
        skyAnti()
    elseif Legit then
        legitAnti()
    end
end)