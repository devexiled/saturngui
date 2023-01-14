local lib = loadstring(game:HttpGet "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")() -- Self explaining
 --
--[[

░█████╗░██████╗░███████╗██████╗░██╗████████╗░██████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝██╔════╝
██║░░╚═╝██████╔╝█████╗░░██║░░██║██║░░░██║░░░╚█████╗░
██║░░██╗██╔══██╗██╔══╝░░██║░░██║██║░░░██║░░░░╚═══██╗
╚█████╔╝██║░░██║███████╗██████╔╝██║░░░██║░░░██████╔╝
░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░╚═╝░░░╚═╝░░░╚═════╝░

Most limited functions were taken from a script by a fake limited script. Could not find the creator for the life of me but here is a link to the pastebin => https://pastebin.com/GbQQ3fp8

]]

getgenv().Values = {
    SkyAmount = 825,
    DesyncAmount = 1000
}

local Sky = false
local Desync = false
local AimTarget = nil
local AntiToggle = false
local Headless = false
local Korblox = false
local sshf = false
local FrozenHorns = false
local FieryHorns = false
local PoisonHorns = false
local supafc = false
local prankster = false
local BeastMode = false
local BlizBeastMode = false
local RadBeastMode = false
local TattleTale = false
local Yum = false
local RedGlow = false
local VoidStar = false
local PinkQueen = false
local GreenQueen = false
local BlueQueen = false
local SilverKing = false
local AduriteKing = false
local GoldKing = false
local BlackKing = false
local Clockworks = false
local AquaAttitude = false
local AmethystAddict = false
local EmeraldValk = false
local Valkrie = false
local Blackvalk = false
local Tixvalk = false
local STValk = false
local IceValk = false

local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local Starter = game:GetService("StarterGui")
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local head = plr.Character.Head

local lineOn = false
local line
local grabbing = false

local target_mouse_pos

local clic_detector = Instance.new("ClickDetector", workspace)

--======================================ACTUAL SCRIPT SHIT============================================

rs.heartbeat:Connect(
    function()
        --ANTIS
        if Sky and AntiToggle then
            print("sky")
            SkyAnti()
        elseif Desync and AntiToggle then
            print("desync")
            DesyncAnti()
        end
    end
)

rs.RenderStepped:Connect(
    function()
        if lineOn then
            updateLine()
        end
        if Headless then
            HeadlessFunc()
        end
        if Korblox then
            KorbloxFunc()
        end
        if sshf then
            sshfFunc()
        end
        if prankster then
            PranksterFunc()
        end
        if BeastMode then
            BeastModeFunc()
        end
        if BlizBeastMode then
            BlizBeastModeFunc()
        end
        if RadBeastMode then
            RadBeastModeFunc()
        end
        if TattleTale then
            TattleTaleFunc()
        end
        if Yum then
            YumFunc()
        end
    end
)

function getClosestPlayer()
    local closest = {Player = nil, Distance = math.huge}
    for i, player in pairs(plrs:GetPlayers()) do
        local character = player.Character
        if character then
            local distance = (character.Head.Position - mouse.Hit.p).magnitude
            if distance < closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end
    print(closestPlayer)
end

function HeadlessFunc()
    game.Players.LocalPlayer.Character.Head.Transparency = 1
    game.Players.LocalPlayer.Character.Head.Transparency = 1
    for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
            v.Transparency = 1
        end
    end
end

function Remove_Headless()
    game.Players.LocalPlayer.Character.Head.Transparency = 0
    game.Players.LocalPlayer.Character.Head.Transparency = 0
    for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
            v.Transparency = 0
        end
    end
end

function KorbloxFunc()
    local ply = game.Players.LocalPlayer
    local chr = ply.Character
    if
        chr.RightLowerLeg.MeshId ~= "902942093" or chr.RightLowerLeg.Transparency ~= "1" or
            chr.RightUpperLeg.MeshId ~= "http://www.roblox.com/asset/?id=902942096" or
            chr.RightUpperLeg.TextureID ~= "http://roblox.com/asset/?id=902843398" or
            chr.RightFoot.MeshId ~= "902942089" or
            chr.RightFoot.Transparency ~= "1"
     then
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"
    end
end

--HORNS
function FrozenHornsFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 74891470
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function FieryHornsFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 215718515
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function PoisonHornsFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 1744060292
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

--HATS
function SupaFlyCapFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 7636350
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function mbstfedoraFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 119916949
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

--CROWNS
function VoidStarFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 1125510
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function PinkQueenFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 553971558
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function GreenQueenFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 553970961
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function BlueQueenFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 553970606
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function SilverKingFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 439945661
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function AduriteKingFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 439946101
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function GoldKingFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 439945864
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function BlackKingFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 439946249
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

--HEADPHONES
function ClockworksFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 1235488
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function AquaAttitudeFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 323417812
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function AmethystAddictFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 188004500
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

--VALKS
function EmeraldValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 2830437685
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function ValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 1365767
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function BlackValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 2830437685
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function TixValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 382881237
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function STValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 1180433861
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

function IceValkFunc()
    function l(a, _)
        local b = Instance.new("Weld")
        b.Part0 = a.Parent
        b.Part1 = _.Parent
        b.C0 = a.CFrame
        b.C1 = _.CFrame
        b.Parent = a.Parent
        return b
    end
    local function _(_, a, b, d, c, e)
        local f = Instance.new("Weld")
        f.Name = _
        f.Part0 = b
        f.Part1 = d
        f.C0 = c
        f.C1 = e
        f.Parent = a
        return f
    end
    local function a(_, b)
        for _, _ in pairs(_:GetChildren()) do
            if _:IsA("Attachment") and _.Name == b then
                return _
            elseif not _:IsA("Accoutrement") and not _:IsA("Tool") then
                local _ = a(_, b)
                if _ then
                    return _
                end
            end
        end
    end
    function k(e, c)
        c.Parent = e
        local d = c:FindFirstChild("Handle")
        if d then
            local b = d:FindFirstChildOfClass("Attachment")
            if b then
                local _ = a(e, b.Name)
                if _ then
                    l(_, b)
                end
            else
                local e = e:FindFirstChild("Head")
                if e then
                    local b = CFrame.new(0, 0.5, 0)
                    local a = c.AttachmentPoint
                    _("HeadWeld", e, e, d, b, a)
                end
            end
        end
    end
    local _ = 4390891467
    local _ = game:GetObjects("rbxassetid://" .. tostring(_))[1]
    k(game.Players.LocalPlayer.Character, _)
end

--FACES
function sshfFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://90272642"
end

function PranksterFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://20052135"
end

function BlizBeastModeFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://209995252"
end

function BeastModeFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://128992838"
end

function RadBeastModeFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://2225761296"
end

function TattleTaleFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://26343188"
end

function YumFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://26019070"
end

function RedGlowFunc()
    local plr = plr.Character
    local plr = plr:FindFirstChild("Head")
    local plr = plr:FindFirstChild("face") or _:FindFirstChild("Face")
    plr.Texture = "rbxassetid://180660043"
end

function SkyAnti()
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, getgenv().Values.SkyAmount, 0)
    rs.RenderStepped:wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end

function DesyncAnti()
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
        Vector3.new(getgenv().Values.DesyncAmount, getgenv().Values.DesyncAmount, 0)
    rs.RenderStepped:wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end

function createLine()
    local ray = Ray.new(head.Position, (mouse.Hit.p - head.Position).unit * 1000)
    local ignoreList = {}
    table.insert(ignoreList, player.Character)
    local part, position = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)

    line = Instance.new("Part", workspace)
    line.Anchored = true
    line.Size = Vector3.new(0.25, 0.25, (head.Position - position).magnitude)
    line.CFrame = CFrame.new(head.Position, position) * CFrame.new(0, 0, -line.Size.Z / 2)
    line.BrickColor = BrickColor.new("Bright green")
    line.CanCollide = false
end

function destroyLine()
    line:Destroy()
    line = nil
end

function updateLine()
    local ray = Ray.new(head.Position, (mouse.Hit.p - head.Position).unit * 1000)
    local part, position = workspace:FindPartOnRay(ray)
    line.Size = Vector3.new(0.25, 0.25, (head.Position - position).magnitude)
    line.CFrame = CFrame.new(head.Position, position) * CFrame.new(0, 0, -line.Size.Z / 2)
end

function CreateNotification(Title, Text)
    local SetCore =
        Starter:SetCore(
        "SendNotification",
        {
            Title = Title,
            Text = Text,
            Icon = "rbxassetid://11482533244",
            Duration = 2
        }
    )
end

--=======================================UI SHUIT=================================================

local win = lib:Window("Universe", "saturn", Color3.fromRGB(8, 247, 254), _G.closeBind) -- _G.closeBind is the bind to close the gui, kinda cool for a bind in your GUI

local tab = win:Tab("Anti-locks", "http://www.roblox.com/asset/?id=6023426915") -- Logo is the link

tab:Label("Turn one off BEFORE turning on another")

tab:Toggle(
    "Sky",
    "Upwards anti-lock",
    false,
    function(bool) -- t can be anything, choose false or true for what is the value in default
        Sky = bool
    end
)

tab:Slider(
    "Sky Value",
    "Set the value of Sky Anti-Lock",
    0,
    1000,
    250,
    function(t) -- 0 is the minimum, 100 is the maximum, 50 is the base value <--(it's glitchy for me with negative limits)
        getgenv().Values.SkyAmount = t
    end
)

tab:Line() -- Put nothing it's just a bar

tab:Toggle(
    "Desync",
    "Desync Anti-Lock",
    false,
    function(bool) -- t can be anything, choose false or true for what is the value in default
        Desync = bool
    end
)

tab:Slider(
    "Desync Value",
    "Set the value of Desync Anti-Lock",
    0,
    1000,
    250,
    function(t) -- 0 is the minimum, 100 is the maximum, 50 is the base value <--(it's glitchy for me with negative limits)
        getgenv().Values.DesyncAmount = t
    end
)

tab:Line()

tab:Bind(
    "Anti-lock Keybind",
    Enum.KeyCode.X,
    function()
        -- Change the key for a base key, you can change it via GUI too, there is no description
        if AntiToggle then
            AntiToggle = false
            if Sky or Desync then
                CreateNotification("Saturn's GUI", "Anti-Lock Disabled")
            end
        else
            AntiToggle = true
            if Sky or Desync then
                CreateNotification("Saturn's GUI", "Anti-Lock Enabled")
            end
        end
    end
)
 --

--[[local tab = win:Tab("Aim Viewer", "http://www.roblox.com/asset/?id=6023426915") -- Logo is the link

tab:Textbox("Enter target", "Views the selected players name", false, function(t) -- true or false to toggle if the text disappears after typing in
    AimTarget = t
    local pee = game:GetService("Players").AimTarget
    head = pee.Character.Head
    local poo = game:GetService("Workspace").Players.AimTarget
    target_mouse_pos = poo.BodyEffects.MousePos
    print(head.position)
    print(target_mouse_pos.Value)
end)

tab:Toggle("View Aim", "Simple Aim Viewer", false, function(bool) -- t can be anything, choose false or true for what is the value in default
    lineOn = bool
    if bool then
        createLine()
    else
        destroyLine()
    end
end)]] local tab =
    win:Tab("Visuals", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("FACES BESIDES SSHF ARE BROKEN")

tab:Label("Headless, Korblox, and faces are the only ones who will stay after you reset")

tab:Toggle(
    "Headless",
    "Gives you fake headless",
    false,
    function(bool)
        Headless = bool
        if bool then
            print("headless")
            HeadlessFunc()
        else
            print("not headless")
            Remove_Headless()
        end
    end
)

tab:Toggle(
    "Korblox",
    "Gives you fake korblox (unreversible without reset)",
    false,
    function(bool)
        Korblox = bool
        if bool then
            KorbloxFunc()
        end
    end
)

tab:Line()

tab:Label("Faces")

tab:Toggle(
    "Super Super Happy Face",
    "Gives you fake SSHF",
    false,
    function(bool)
        sshf = bool
        if bool then
            sshfFunc()
        end
    end
)

tab:Toggle(
    "Prankster",
    "Gives you fake prankster",
    false,
    function(bool)
        prankster = bool
        if bool then
            PranksterFunc()
        end
    end
)

tab:Toggle(
    "Beast Mode",
    "Gives you fake beast mode",
    false,
    function(bool)
        BeastMode = bool
        if bool then
            BeastModeFunc()
        end
    end
)

tab:Toggle(
    "Blizzard Beast Mode",
    "Gives you fake blizzard beast mode",
    false,
    function(bool)
        BlizBeastMode = bool
        if bool then
            BlizBeastModeFunc()
        end
    end
)

tab:Toggle(
    "Radioactive Beast Mode",
    "Gives you fake radioactive beast mode",
    false,
    function(bool)
        RadBeastMode = bool
        if bool then
            RadBeastModeFunc()
        end
    end
)

tab:Toggle(
    "TattleTale",
    "Gives you fake tattletale",
    false,
    function(bool)
        TattleTale = bool
        if bool then
            TattleTaleFunc()
        end
    end
)

tab:Toggle(
    "Yum!",
    "Gives you fake yum!",
    false,
    function(bool)
        Yum = bool
        if bool then
            YumFunc()
        end
    end
)

tab:Toggle(
    "Red Glowing Eyes",
    "Gives you fake red glowing eyes",
    false,
    function(bool)
        RedGlow = bool
        if bool then
            RedGlowFunc()
        end
    end
)

tab:Line()

tab:Label("Horns")

tab:Toggle(
    "Frozen Horns of the Frigid Planes",
    "Gives you fake frozen horns",
    false,
    function(bool)
        FrozenHorns = bool
        if bool then
            FrozenHornsFunc()
        end
    end
)

tab:Toggle(
    "Fiery Horns of the Netherworld",
    "Gives you fake fiery horns",
    false,
    function(bool)
        FieryHorns = bool
        if bool then
            FieryHornsFunc()
        end
    end
)

tab:Toggle(
    "Poisoned Horns of the Toxic Wasteland",
    "Gives you fake poison horns",
    false,
    function(bool)
        PoisonHorns = bool
        if bool then
            PoisonHornsFunc()
        end
    end
)

tab:Line()

tab:Label("Hats")

tab:Toggle(
    "Supa Fly Cap",
    "Gives you a fake supa fly cap",
    false,
    function(bool)
        supafc = bool
        if bool then
            SupaFlyCapFunc()
        end
    end
)

tab:Toggle(
    "Midnight Blue Sparkle Time Fedora",
    "Gives you a fake blue fedora",
    false,
    function(bool)
        mbstfedora = bool
        if bool then
            mbstfedoraFunc()
        end
    end
)

tab:Line()

tab:Label("Crowns")

tab:Toggle(
    "The Void Star",
    "Gives you fake void star",
    false,
    function(bool)
        VoidStar = bool
        if bool then
            VoidStarFunc()
        end
    end
)

tab:Toggle(
    "Pink Queen of the Night",
    "Gives you fake pink qotn",
    false,
    function(bool)
        PinkQueen = bool
        if bool then
            PinkQueenFunc()
        end
    end
)

tab:Toggle(
    "Green Queen of the Night",
    "Gives you fake green qotn",
    false,
    function(bool)
        GreenQueen = bool
        if bool then
            GreenQueenFunc()
        end
    end
)

tab:Toggle(
    "Blue Queen of the Night",
    "Gives you fake blue qotn",
    false,
    function(bool)
        BlueQueen = bool
        if bool then
            BlueQueenFunc()
        end
    end
)

tab:Toggle(
    "Silver King of the Night",
    "Gives you fake skotn",
    false,
    function(bool)
        SilverKing = bool
        if bool then
            SilverKingFunc()
        end
    end
)

tab:Toggle(
    "Adurite King of the Night",
    "Gives you fake adurite kotn",
    false,
    function(bool)
        AduriteKing = bool
        if bool then
            AduriteKingFunc()
        end
    end
)

tab:Toggle(
    "Gold King of the Night",
    "Gives you fake gold kotn",
    false,
    function(bool)
        GoldKing = bool
        if bool then
            GoldKingFunc()
        end
    end
)

tab:Toggle(
    "Black Iron King of the Night",
    "Gives you fake black iron kotn",
    false,
    function(bool)
        BlackKing = bool
        if bool then
            BlackKingFunc()
        end
    end
)

tab:Line()

tab:Label("Headphones")

tab:Toggle(
    "Clockwork's Headphones",
    "Gives you fake clockworks headphones",
    false,
    function(bool)
        Clockworks = bool
        if bool then
            ClockworksFunc()
        end
    end
)

tab:Toggle(
    "WC Ultimates: Aquamarine Attitude",
    "Gives you fake aqua attitude headphones",
    false,
    function(bool)
        AquaAttitude = bool
        if bool then
            AquaAttitudeFunc()
        end
    end
)

tab:Toggle(
    "CW Ultimate: Amethyst Addiction",
    "Gives you fake amethyst addiction headphones",
    false,
    function(bool)
        AmethystAddict = bool
        if bool then
            AmethystAddictFunc()
        end
    end
)

tab:Line()

tab:Label("Valkrie's")

tab:Toggle(
    "Emerald Valkrie",
    "Gives you a fake emerald valk",
    false,
    function(bool)
        EmeraldValk = bool
        if bool then
            EmeraldValkFunc()
        end
    end
)

tab:Toggle(
    "Valkrie Helm",
    "Gives you a fake valkrie helm",
    false,
    function(bool)
        Valkrie = bool
        if bool then
            ValkFunc()
        end
    end
)

tab:Toggle(
    "Blackvalk",
    "Gives you a fake blackvalk",
    false,
    function(bool)
        Blackvalk = bool
        if bool then
            BlackValkFunc()
        end
    end
)

tab:Toggle(
    "Tixvalk",
    "Gives you a fake tixvalk",
    false,
    function(bool)
        Tixvalk = bool
        if bool then
            TixValkFunc()
        end
    end
)

tab:Toggle(
    "Sparkle Time Valkrie",
    "Gives you a fake sparkle time valk",
    false,
    function(bool)
        STValk = bool
        if bool then
            STValkFunc()
        end
    end
)

tab:Toggle(
    "Ice Valkrie",
    "Gives you a fake ice valk",
    false,
    function(bool)
        IceValk = bool
        if bool then
            IceValkFunc()
        end
    end
)
