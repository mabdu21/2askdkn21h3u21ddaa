-- =========================================================
-- DYHUB LOADER | V9.5
-- Author: dyumra
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
	title.Position = UDim2.new(0, 0, 0, 25)
	title.BackgroundTransparency = 1
	title.Text = "Access Key Required"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.Font = Enum.Font.GothamBold
	title.TextScaled = true
	title.ZIndex = 1002

	local subtitle = Instance.new("TextLabel", frame)
	subtitle.Size = UDim2.new(1, -40, 0, 30)
	subtitle.Position = UDim2.new(0, 20, 0, 50)
	subtitle.BackgroundTransparency = 1
	subtitle.Text = "Enter your access key below to continue"
	subtitle.TextColor3 = Color3.fromRGB(180, 180, 180)
	subtitle.Font = Enum.Font.Gotham
	subtitle.TextSize = 16
	subtitle.ZIndex = 1002

	local keyBox = Instance.new("TextBox", frame)
	keyBox.Size = UDim2.new(1, -40, 0, 40)
	keyBox.Position = UDim2.new(0, 20, 0, 80)
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
	submitBtn.Position = UDim2.new(0, 20, 0, 122)
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
			imageGui.Name = "DYHUB_ImageEffect"
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
		title2.Size = UDim2.new(1,0,0,30)
		title2.Position = UDim2.new(0,0,0,10)
		title2.BackgroundTransparency = 1
		title2.Text = "Choose Discord Link"
		title2.TextColor3 = Color3.fromRGB(255,255,255)
		title2.Font = Enum.Font.GothamBold
		title2.TextScaled = true

		local title67 = Instance.new("TextLabel", frame2)
		title67.Size = UDim2.new(1,0,0,20)
		title67.Position = UDim2.new(0,0,0,60)
		title67.BackgroundTransparency = 1
		title67.Text = "Get Access Key from Discord"
		title67.TextColor3 = Color3.fromRGB(180, 180, 180)
		title67.Font = Enum.Font.GothamBold
		title67.TextScaled = true

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
		shortBtn.Position = UDim2.new(0, 20, 0, 120)
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
