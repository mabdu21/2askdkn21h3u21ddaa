-- =========================================================
-- 💎 DYHUB UNIVERSAL LOADER | V6 Updated GUI
-- Author: dyumra (GUI Style Update by ChatGPT)
-- =========================================================
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
blur.Size = 20

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

local function createKeyGui(onCorrectKey)
	local keyGui = Instance.new("ScreenGui")
	keyGui.Name = "DYHUB | Key System"
	keyGui.ResetOnSpawn = false
	keyGui.Parent = player:WaitForChild("PlayerGui")

	keyGui.Destroying:Connect(function() blur:Destroy() end)

	-- Background Image
	local bgImage = Instance.new("ImageLabel", keyGui)
	bgImage.Size = UDim2.new(1, 0, 1, 0)
	bgImage.BackgroundTransparency = 1
	bgImage.Image = "rbxassetid://104487529937663"
	bgImage.ImageTransparency = 0.5
	bgImage.ZIndex = 1000

	local frame = Instance.new("Frame", keyGui)
	frame.Size = UDim2.new(0, 400, 0, 260)
	frame.Position = UDim2.new(0.5, -200, 0.5, -130)
	frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	frame.BorderSizePixel = 0
	frame.ZIndex = 1001
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 25)

	-- Header
	local header = Instance.new("Frame", frame)
	header.Size = UDim2.new(1, 0, 0, 60)
	header.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	header.BorderSizePixel = 0
	header.ZIndex = 1002
	Instance.new("UICorner", header).CornerRadius = UDim.new(0, 25)

	local title = Instance.new("TextLabel", header)
	title.Size = UDim2.new(1, -20, 1, -10)
	title.Position = UDim2.new(0, 10, 0, 5)
	title.BackgroundTransparency = 1
	title.Text = "🔐 DYHUB Access Key"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.Font = Enum.Font.GothamBold
	title.TextScaled = true
	title.ZIndex = 1003

	-- Subtitle
	local subtitle = Instance.new("TextLabel", frame)
	subtitle.Size = UDim2.new(1, -40, 0, 30)
	subtitle.Position = UDim2.new(0, 20, 0, 70)
	subtitle.BackgroundTransparency = 1
	subtitle.Text = "Enter your key to continue"
	subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
	subtitle.Font = Enum.Font.Gotham
	subtitle.TextSize = 18
	subtitle.ZIndex = 1002

	-- KeyBox
	local keyBox = Instance.new("TextBox", frame)
	keyBox.Size = UDim2.new(1, -40, 0, 45)
	keyBox.Position = UDim2.new(0, 20, 0, 110)
	keyBox.PlaceholderText = "Enter key here..."
	keyBox.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	keyBox.Font = Enum.Font.GothamSemibold
	keyBox.TextSize = 22
	keyBox.ClearTextOnFocus = false
	keyBox.ZIndex = 1002
	Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 20)

	-- Submit Button
	local submitBtn = Instance.new("TextButton", frame)
	submitBtn.Size = UDim2.new(1, -40, 0, 45)
	submitBtn.Position = UDim2.new(0, 20, 0, 165)
	submitBtn.Text = "Submit"
	submitBtn.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
	submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	submitBtn.Font = Enum.Font.GothamBold
	submitBtn.TextSize = 22
	submitBtn.ZIndex = 1002
	Instance.new("UICorner", submitBtn).CornerRadius = UDim.new(0, 20)

	-- Get Key Button
	local getKeyBtn = Instance.new("TextButton", frame)
	getKeyBtn.Size = UDim2.new(1, -40, 0, 45)
	getKeyBtn.Position = UDim2.new(0, 20, 0, 220)
	getKeyBtn.Text = "Get Key in Discord"
	getKeyBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 255)
	getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	getKeyBtn.Font = Enum.Font.GothamBold
	getKeyBtn.TextSize = 18
	getKeyBtn.ZIndex = 1002
	Instance.new("UICorner", getKeyBtn).CornerRadius = UDim.new(0, 20)

	-- Button Events
	submitBtn.MouseButton1Click:Connect(function()
		clickTween(submitBtn)
		local enteredKey = keyBox.Text:lower():gsub("%s+", "")
		if enteredKey == VALID_KEY:lower() then
			notify("✅ Correct Key! Loading...")
			task.wait(1)
			notify("🔑 Access Granted! Free Version | DYHUB")
			keyGui:Destroy()
			blur:Destroy()
			if onCorrectKey then onCorrectKey() end
		else
			notify("❌ Incorrect Key! Try again.")
			local flash = TweenService:Create(keyBox, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(255,70,70)})
			flash:Play()
			flash.Completed:Wait()
			TweenService:Create(keyBox, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(80,80,80)}):Play()
		end
	end)

	getKeyBtn.MouseButton1Click:Connect(function()
		clickTween(getKeyBtn)
		pcall(function()
			setclipboard("https://www.dsc.gg/dyhub")
		end)
		notify("🔗 Link copied to clipboard!")
	end)

	return keyGui
end

-- =========================================================
-- 💾 Load Premium List
-- =========================================================
local success, premiumUsers = pcall(function()
	local code = game:HttpGet("https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua")
	local func = loadstring(code)
	return func and func() or {}
end)

if not success then
	notify("❌ Failed to load Premium list!")
	task.wait(3)
	player:Kick("⚠️ Could not load Premium data.\nContact: " .. DYHUBTHEBEST)
	return
end

-- =========================================================
-- 💾 Load Game List
-- =========================================================
local successGame, gameLists = pcall(function()
	local code = game:HttpGet("https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/listgame.lua")
	local func = loadstring(code)
	return func and func() or {}
end)

if not successGame or not gameLists then
	notify("❌ Failed to load game list!")
	task.wait(3)
	player:Kick("⚠️ Could not load game data.\nContact: " .. DYHUBTHEBEST)
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
	player:Kick("⚠️ Script not supported here.\nJoin Discord: " .. DYHUBTHEBEST)
	return
end

-- =========================================================
-- 💳 Premium Check
-- =========================================================
local playerPremium = premiumUsers[player.Name]
if premiumGameData and not playerPremium then
	notify("⛔ Premium only game!")
	task.wait(4)
	player:Kick("💳 Get Premium to play this script!\nJoin Discord: " .. DYHUBTHEBEST)
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
