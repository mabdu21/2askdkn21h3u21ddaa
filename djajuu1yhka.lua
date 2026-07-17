-- ======================================================================
--
--		██████╗ ██╗   ██╗██╗   ██╗███╗   ███╗██████╗  █████╗  TM
--		██╔══██╗╚██╗ ██╔╝██║   ██║████╗ ████║██╔══██╗██╔══██╗
--		██║  ██║ ╚████╔╝ ██║   ██║██╔████╔██║██████╔╝███████║
--		██║  ██║  ╚██╔╝  ██║   ██║██║╚██╔╝██║██╔══██╗██╔══██║
--		██████╔╝   ██║   ╚██████╔╝██║ ╚═╝ ██║██║  ██║██║  ██║
--		╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝                                                 
--                    dyumra.gg | owner & founder
--                           [ v1.3.9 ]
--
-- ======================================================================
if getgenv().DYHUB_a2Us3jUqPaje4sJwked then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "DYHUB",
            Text = "Script already running. \nPlease rejoin to execute again.",
            Duration = 5
        })
    end)
    return
end
getgenv().DYHUB_a2Us3jUqPaje4sJwked = true

repeat task.wait() until game:IsLoaded()

local lib = "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Kshqnjahshuwjwn"
loadstring(game:HttpGet(lib))()

print("[DYHUB] Database Loader!")
task.wait(0.05)

local DYHUBTHEBEST = "https://dsc.gg/dyhub"

--// Roblox Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

--// Basic Anti-Blacklist
local blacklist = {"geriedsmod", "vibez_qxys", "concacrobloxntkphuh"}
for _, plr in ipairs(Players:GetPlayers()) do
	if table.find(blacklist, plr.Name:lower()) then
		plr:Kick("🚫 You have been permanently banned.\nReason: Impersonation or misuse detected.")
	end
end

--// Blur Screen Effect
local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 15

--// Key System
local VALID_KEY = "cuzdyhub"

local function notify(text)
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = "DYHUB",
			Text = tostring(text or ""),
			Duration = 3
		})
	end)
end

local GET_KEY_LINK_URL = "https://direct-link.net/4825256/RSiwc6QNLX0v"
local GET_KEY_DISCORD_URL = "https://discord.com/invite/jWNDPNMmyB"
local DYHUB_ICON = "rbxassetid://104487529937663"

local function new(class, props, parent)
	local obj = Instance.new(class)
	for k, v in pairs(props or {}) do
		pcall(function()
			obj[k] = v
		end)
	end
	obj.Parent = parent
	return obj
end

local function corner(parent, radius)
	return new("UICorner", {CornerRadius = UDim.new(0, radius or 18)}, parent)
end

local function stroke(parent, color, transparency, thickness)
	return new("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = color or Color3.fromRGB(86, 86, 96),
		Transparency = transparency or 0.45,
		Thickness = thickness or 1
	}, parent)
end

local function gradient(parent, c1, c2, rot)
	return new("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, c1),
			ColorSequenceKeypoint.new(1, c2)
		}),
		Rotation = rot or 90
	}, parent)
end

local function tween(obj, info, props)
	if not obj or not obj.Parent then return nil end
	local ok, tw = pcall(function()
		local t = TweenService:Create(obj, info, props)
		t:Play()
		return t
	end)
	return ok and tw or nil
end

local function safeCopy(text)
	local ok = false
	pcall(function()
		if setclipboard then
			setclipboard(text)
			ok = true
		end
	end)
	return ok
end

local function clickTween(btn, accent)
	if not btn or not btn.Parent then return end
	accent = accent or Color3.fromRGB(235, 235, 242)
	btn.ClipsDescendants = true

	local scale = btn:FindFirstChild("DYHUB_ScaleFX")
	if not scale then
		scale = Instance.new("UIScale")
		scale.Name = "DYHUB_ScaleFX"
		scale.Scale = 1
		scale.Parent = btn
	end

	local ripple = Instance.new("Frame")
	ripple.Name = "DYHUB_Ripple"
	ripple.AnchorPoint = Vector2.new(0.5, 0.5)
	ripple.Position = UDim2.fromScale(0.5, 0.5)
	ripple.Size = UDim2.fromOffset(0, 0)
	ripple.BackgroundColor3 = accent
	ripple.BackgroundTransparency = 0.62
	ripple.BorderSizePixel = 0
	ripple.ZIndex = (btn.ZIndex or 1) + 6
	ripple.Parent = btn
	corner(ripple, 999)

	tween(scale, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Scale = 0.975})
	task.delay(0.08, function()
		if scale and scale.Parent then
			tween(scale, TweenInfo.new(0.14, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1})
		end
	end)

	local tw = tween(ripple, TweenInfo.new(0.36, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(1.7, 0, 2.7, 0),
		BackgroundTransparency = 1
	})
	if tw then
		tw.Completed:Connect(function()
			if ripple then ripple:Destroy() end
		end)
	else
		ripple:Destroy()
	end
end

getgenv().DYHUB_Loader = true

--// Function to create Key GUI
local function createKeyGui(onCorrectKey)
	local PlayerGui = player:WaitForChild("PlayerGui")
	local UIS = game:GetService("UserInputService")
	local cam = workspace.CurrentCamera
	local running = true
	local submitting = false
	local minimized = false
	local linkModal = nil

	pcall(function()
		local old = PlayerGui:FindFirstChild("DYHUB_Modern_Access")
		if old then old:Destroy() end
	end)

	local function clamp(n, mn, mx)
		if n < mn then return mn end
		if n > mx then return mx end
		return n
	end

	local viewport = cam and cam.ViewportSize or Vector2.new(500, 650)
	local cardW = clamp(math.floor(viewport.X * 0.9), 326, 500)
	local cardH = clamp(math.floor(viewport.Y * 0.62), 350, 410)
	local compact = viewport.X < 390

	local keyGui = new("ScreenGui", {
		Name = "DYHUB_Modern_Access",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 999999,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	}, PlayerGui)

	keyGui.Destroying:Connect(function()
		running = false
		pcall(function()
			if blur then blur:Destroy() end
		end)
	end)

	local bg = new("Frame", {
		Name = "Dim_Background",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(6, 6, 8),
		BackgroundTransparency = 0.07,
		BorderSizePixel = 0,
		ZIndex = 1000
	}, keyGui)
	gradient(bg, Color3.fromRGB(6, 6, 8), Color3.fromRGB(32, 32, 36), 35)

	local glow = new("Frame", {
		Name = "Soft_Glow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(cardW + 48, cardH + 48),
		BackgroundColor3 = Color3.fromRGB(78, 78, 88),
		BackgroundTransparency = 0.84,
		BorderSizePixel = 0,
		ZIndex = 1001
	}, keyGui)
	corner(glow, 40)

	local frame = new("Frame", {
		Name = "Mac_Code_Frame",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(cardW, cardH),
		BackgroundColor3 = Color3.fromRGB(18, 18, 21),
		BorderSizePixel = 0,
		ZIndex = 1002,
		ClipsDescendants = true
	}, keyGui)
	corner(frame, 30)
	stroke(frame, Color3.fromRGB(132, 132, 145), 0.58, 1)
	gradient(frame, Color3.fromRGB(30, 30, 34), Color3.fromRGB(11, 11, 13), 90)

	local topbar = new("Frame", {
		Name = "Mac_Topbar_NoDrag",
		Size = UDim2.new(1, 0, 0, 48),
		BackgroundColor3 = Color3.fromRGB(10, 10, 15),
		BackgroundTransparency = 0.02,
		BorderSizePixel = 0,
		ZIndex = 1004
	}, frame)
	corner(topbar, 30)
	stroke(topbar, Color3.fromRGB(132, 132, 145), 0.58, 1)

	local body = new("Frame", {
		Name = "Body",
		Size = UDim2.new(1, 0, 1, -48),
		Position = UDim2.fromOffset(0, 48),
		BackgroundTransparency = 1,
		ZIndex = 1005
	}, frame)

	local titleBarText = new("TextLabel", {
		Size = UDim2.new(1, -126, 1, 0),
		Position = UDim2.fromOffset(104, 0),
		BackgroundTransparency = 1,
		Text = "dyhub@access:~/key",
		TextColor3 = Color3.fromRGB(184, 184, 193),
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1005
	}, topbar)

	local function makeMacButton(x, color, label)
		local b = new("TextButton", {
			Size = UDim2.fromOffset(14, 14),
			Position = UDim2.fromOffset(x, 17),
			BackgroundColor3 = color,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 1006
		}, topbar)
		b:SetAttribute("Tip", label)
		corner(b, 999)
		return b
	end

	local closeBtn = makeMacButton(18, Color3.fromRGB(255, 95, 86), "close")
	local minBtn = makeMacButton(40, Color3.fromRGB(255, 189, 46), "minimize")
	local keyBtnTop = makeMacButton(62, Color3.fromRGB(39, 201, 63), "get key")

	local innerPanel = new("Frame", {
		Name = "Rounded_Code_Panel",
		Size = UDim2.new(1, -28, 1, -22),
		Position = UDim2.fromOffset(14, 10),
		BackgroundColor3 = Color3.fromRGB(11, 11, 13),
		BackgroundTransparency = 0.08,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = 1005
	}, body)
	corner(innerPanel, 24)
	stroke(innerPanel, Color3.fromRGB(68, 68, 78), 0.62, 1)

	local iconMask = new("Frame", {
		Size = UDim2.fromOffset(compact and 64 or 76, compact and 64 or 76),
		Position = UDim2.fromOffset(22, 22),
		BackgroundColor3 = Color3.fromRGB(31, 31, 36),
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = 1006
	}, innerPanel)
	corner(iconMask, 24)
	stroke(iconMask, Color3.fromRGB(132, 132, 145), 0.55, 1)
	gradient(iconMask, Color3.fromRGB(52, 52, 58), Color3.fromRGB(18, 18, 21), 120)

	local icon = new("ImageLabel", {
		Size = UDim2.new(1, -12, 1, -12),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = DYHUB_ICON,
		ZIndex = 1007,
		ClipsDescendants = true
	}, iconMask)
	corner(icon, 20)

	local title = new("TextLabel", {
		Name = "Animated_Title",
		Size = UDim2.new(1, compact and -108 or -126, 0, 34),
		Position = UDim2.fromOffset(compact and 96 or 112, 25),
		BackgroundTransparency = 1,
		Text = "DYHUB ACCESS",
		TextColor3 = Color3.fromRGB(244, 244, 247),
		Font = Enum.Font.GothamBlack,
		TextSize = compact and 22 or 27,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local sub = new("TextLabel", {
		Size = UDim2.new(1, compact and -108 or -126, 0, 22),
		Position = UDim2.fromOffset(compact and 98 or 114, 59),
		BackgroundTransparency = 1,
		Text = "macOS style • dsc.gg/dyhub",
		TextColor3 = Color3.fromRGB(150, 150, 160),
		Font = Enum.Font.GothamMedium,
		TextSize = compact and 10 or 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local codeLine = new("TextLabel", {
		Name = "Status_Line",
		Size = UDim2.new(1, -44, 0, 28),
		Position = UDim2.fromOffset(22, compact and 104 or 118),
		BackgroundTransparency = 1,
		Text = "> status = waiting_for_key",
		TextColor3 = Color3.fromRGB(172, 172, 182),
		Font = Enum.Font.Code,
		TextSize = compact and 12 or 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local keyBox = new("TextBox", {
		Name = "KeyBox",
		Size = UDim2.new(1, -44, 0, 48),
		Position = UDim2.fromOffset(22, compact and 140 or 154),
		BackgroundColor3 = Color3.fromRGB(15, 15, 18),
		BorderSizePixel = 0,
		Text = "",
		PlaceholderText = "paste key here...",
		PlaceholderColor3 = Color3.fromRGB(108, 108, 118),
		TextColor3 = Color3.fromRGB(245, 245, 248),
		Font = Enum.Font.GothamSemibold,
		TextSize = 17,
		ClearTextOnFocus = false,
		ZIndex = 1007
	}, innerPanel)
	corner(keyBox, 18)
	stroke(keyBox, Color3.fromRGB(80, 80, 92), 0.42, 1)

	local submitBtn = new("TextButton", {
		Name = "Unlock_Button",
		Size = UDim2.new(0.5, -27, 0, 48),
		Position = UDim2.fromOffset(22, compact and 203 or 220),
		BackgroundColor3 = Color3.fromRGB(235, 235, 241),
		BorderSizePixel = 0,
		Text = "Unlock",
		TextColor3 = Color3.fromRGB(17, 17, 20),
		Font = Enum.Font.GothamBlack,
		TextSize = 17,
		AutoButtonColor = false,
		ZIndex = 1007
	}, innerPanel)
	corner(submitBtn, 18)

	local getKeyBtn = new("TextButton", {
		Name = "Get_Key_Button",
		Size = UDim2.new(0.5, -27, 0, 48),
		Position = UDim2.new(0.5, 5, 0, compact and 203 or 220),
		BackgroundColor3 = Color3.fromRGB(42, 42, 49),
		BorderSizePixel = 0,
		Text = "Get Key",
		TextColor3 = Color3.fromRGB(232, 232, 238),
		Font = Enum.Font.GothamBold,
		TextSize = 16,
		AutoButtonColor = false,
		ZIndex = 1007
	}, innerPanel)
	corner(getKeyBtn, 18)
	stroke(getKeyBtn, Color3.fromRGB(112, 112, 124), 0.44, 1)

	local hint = new("TextLabel", {
		Size = UDim2.new(1, -44, 0, 24),
		Position = UDim2.new(0, 22, 1, -34),
		BackgroundTransparency = 1,
		Text = "Tip: green mac button opens Get Key menu",
		TextColor3 = Color3.fromRGB(116, 116, 126),
		Font = Enum.Font.GothamMedium,
		TextSize = compact and 10 or 12,
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 1007
	}, innerPanel)

	local function hover(btn, normal, over)
		if UIS.TouchEnabled then return end
		btn.MouseEnter:Connect(function()
			tween(btn, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = over})
		end)
		btn.MouseLeave:Connect(function()
			tween(btn, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = normal})
		end)
	end
	hover(submitBtn, Color3.fromRGB(235, 235, 241), Color3.fromRGB(255, 255, 255))
	hover(getKeyBtn, Color3.fromRGB(42, 42, 49), Color3.fromRGB(58, 58, 66))

	local function setBodyVisible(v)
		body.Visible = v
		glow.Visible = v
	end

	local function openGetKeyModal()
		if linkModal and linkModal.Parent then
			linkModal:Destroy()
			linkModal = nil
			return
		end

		local modalBg = new("Frame", {
			Name = "Get_Key_Modal",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.44,
			BorderSizePixel = 0,
			ZIndex = 3000
		}, keyGui)
		linkModal = modalBg

		local modalW = clamp(math.floor(viewport.X * 0.88), 316, 460)
		local modal = new("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(modalW, 238),
			BackgroundColor3 = Color3.fromRGB(17, 17, 20),
			BorderSizePixel = 0,
			ClipsDescendants = true,
			ZIndex = 3001
		}, modalBg)
		corner(modal, 28)
		stroke(modal, Color3.fromRGB(130, 130, 145), 0.55, 1)
		gradient(modal, Color3.fromRGB(31, 31, 36), Color3.fromRGB(12, 12, 14), 90)

		local mt = new("TextLabel", {
			Size = UDim2.new(1, -64, 0, 38),
			Position = UDim2.fromOffset(24, 18),
			BackgroundTransparency = 1,
			Text = "Choose Get Key Method",
			TextColor3 = Color3.fromRGB(244, 244, 248),
			Font = Enum.Font.GothamBlack,
			TextSize = compact and 18 or 21,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 3002
		}, modal)

		local closeModal = new("TextButton", {
			Size = UDim2.fromOffset(34, 34),
			Position = UDim2.new(1, -46, 0, 20),
			BackgroundColor3 = Color3.fromRGB(43, 43, 50),
			BorderSizePixel = 0,
			Text = "×",
			TextColor3 = Color3.fromRGB(235, 235, 242),
			Font = Enum.Font.GothamBlack,
			TextSize = 22,
			AutoButtonColor = false,
			ZIndex = 3002
		}, modal)
		corner(closeModal, 999)

		local function optionRow(y, titleText, descText, copyText)
			local row = new("Frame", {
				Size = UDim2.new(1, -36, 0, 62),
				Position = UDim2.fromOffset(18, y),
				BackgroundColor3 = Color3.fromRGB(23, 23, 27),
				BorderSizePixel = 0,
				ZIndex = 3002
			}, modal)
			corner(row, 18)
			stroke(row, Color3.fromRGB(74, 74, 84), 0.62, 1)

			new("TextLabel", {
				Size = UDim2.new(1, -126, 0, 24),
				Position = UDim2.fromOffset(16, 9),
				BackgroundTransparency = 1,
				Text = titleText,
				TextColor3 = Color3.fromRGB(235, 235, 240),
				Font = Enum.Font.GothamBold,
				TextSize = compact and 13 or 15,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 3003
			}, row)

			new("TextLabel", {
				Size = UDim2.new(1, -126, 0, 20),
				Position = UDim2.fromOffset(16, 33),
				BackgroundTransparency = 1,
				Text = descText,
				TextColor3 = Color3.fromRGB(135, 135, 146),
				Font = Enum.Font.GothamMedium,
				TextSize = compact and 10 or 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 3003
			}, row)

			local copyBtn = new("TextButton", {
				Size = UDim2.fromOffset(86, 38),
				Position = UDim2.new(1, -100, 0.5, -19),
				BackgroundColor3 = Color3.fromRGB(235, 235, 241),
				BorderSizePixel = 0,
				Text = "Copy",
				TextColor3 = Color3.fromRGB(17, 17, 20),
				Font = Enum.Font.GothamBlack,
				TextSize = 14,
				AutoButtonColor = false,
				ZIndex = 3003
			}, row)
			corner(copyBtn, 14)
			copyBtn.Activated:Connect(function()
				clickTween(copyBtn, Color3.fromRGB(25, 25, 28))
				if safeCopy(copyText) then
					codeLine.Text = "> copied_key_method = true"
					notify("Copied to clipboard.")
				else
					notify("Clipboard is not supported here.")
				end
			end)
			return row
		end

		optionRow(70, "Get Key from Discord", "copy official Discord invite", GET_KEY_DISCORD_URL)
		optionRow(140, "Get Key from Link", "copy direct key link", GET_KEY_LINK_URL)

		closeModal.Activated:Connect(function()
			clickTween(closeModal, Color3.fromRGB(235, 235, 242))
			if linkModal then linkModal:Destroy() end
			linkModal = nil
		end)

		modal.Size = UDim2.fromOffset(modalW - 26, 218)
		modal.BackgroundTransparency = 1
		tween(modal, TweenInfo.new(0.24, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Size = UDim2.fromOffset(modalW, 238),
			BackgroundTransparency = 0
		})
	end

	closeBtn.Activated:Connect(function()
		clickTween(closeBtn, Color3.fromRGB(255, 255, 255))
		running = false
		keyGui:Destroy()
	end)

	minBtn.Activated:Connect(function()
		clickTween(minBtn, Color3.fromRGB(255, 255, 255))
		minimized = not minimized
		if minimized then
			if linkModal then linkModal:Destroy(); linkModal = nil end
			setBodyVisible(false)
			titleBarText.Text = "DYHUB minimized"
			tween(frame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, 48)})
		else
			setBodyVisible(true)
			titleBarText.Text = "dyhub@access:~/key"
			tween(frame, TweenInfo.new(0.24, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, cardH)})
		end
	end)

	keyBtnTop.Activated:Connect(function()
		clickTween(keyBtnTop, Color3.fromRGB(255, 255, 255))
		if minimized then
			minimized = false
			setBodyVisible(true)
			titleBarText.Text = "dyhub@access:~/key"
			tween(frame, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, cardH)})
		end
		openGetKeyModal()
	end)

	getKeyBtn.Activated:Connect(function()
		clickTween(getKeyBtn, Color3.fromRGB(255, 255, 255))
		openGetKeyModal()
	end)

	task.spawn(function()
		local lines = {
			"> status = waiting_for_key",
			"> ui.theme = mac_dark_code",
			"> ui.animations = fixed_optimized",
			"> py.devices = mobile_pc_supported"
		}
		local n = 1
		while running and keyGui and keyGui.Parent do
			task.wait(2.4)
			if not running or not (codeLine and codeLine.Parent) then break end
			n = (n % #lines) + 1
			tween(codeLine, TweenInfo.new(0.16), {TextTransparency = 1})
			task.wait(0.17)
			if not running or not (codeLine and codeLine.Parent) then break end
			codeLine.Text = lines[n]
			tween(codeLine, TweenInfo.new(0.2), {TextTransparency = 0})
		end
	end)

	task.spawn(function()
		while running and keyGui and keyGui.Parent and title and title.Parent do
			tween(title, TweenInfo.new(1.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.fromOffset((compact and 100 or 118), 25)})
			task.wait(1.25)
			if not running or not (keyGui and keyGui.Parent and title and title.Parent) then break end
			tween(title, TweenInfo.new(1.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.fromOffset((compact and 96 or 112), 25)})
			task.wait(1.25)
		end
	end)

	frame.Size = UDim2.fromOffset(cardW - 28, cardH - 28)
	frame.BackgroundTransparency = 1
	glow.BackgroundTransparency = 1
	tween(frame, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.fromOffset(cardW, cardH),
		BackgroundTransparency = 0
	})
	tween(glow, TweenInfo.new(0.38), {BackgroundTransparency = 0.84})

	submitBtn.Activated:Connect(function()
		if submitting then return end
		submitting = true
		clickTween(submitBtn, Color3.fromRGB(25, 25, 28))
		local enteredKey = tostring(keyBox.Text or ""):lower():gsub("%s+", "")
		if enteredKey == VALID_KEY:lower() then
			codeLine.Text = "> access_granted = true"
			notify("Access granted. Loading...")

			local okStroke = keyBox:FindFirstChildOfClass("UIStroke")
			if okStroke then
				tween(okStroke, TweenInfo.new(0.18), {Color = Color3.fromRGB(70, 210, 118), Transparency = 0.2})
			end

			task.wait(0.28)
			tween(frame, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Size = UDim2.fromOffset(0, 0),
				BackgroundTransparency = 1
			})
			tween(bg, TweenInfo.new(0.3), {BackgroundTransparency = 1})
			tween(glow, TweenInfo.new(0.24), {BackgroundTransparency = 1})
			task.wait(0.31)

			keyGui:Destroy()
			pcall(function()
				if blur then blur:Destroy() end
			end)
			notify("DYHUB loaded.")

			local imageGui = new("ScreenGui", {
				Name = "DYHUB_Icon_Splash",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 999999
			}, PlayerGui)

			local splashMask = new("Frame", {
				Size = UDim2.fromOffset(96, 96),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(18, 18, 22),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				ZIndex = 2000
			}, imageGui)
			corner(splashMask, 28)

			local splash = new("ImageLabel", {
				Size = UDim2.new(1, -10, 1, -10),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = DYHUB_ICON,
				ImageTransparency = 0,
				Rotation = -14,
				ZIndex = 2001
			}, splashMask)
			corner(splash, 22)

			tween(splashMask, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(178, 178)})
			tween(splash, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 0})
			task.wait(0.46)
			tween(splashMask, TweenInfo.new(0.26), {BackgroundTransparency = 1, Size = UDim2.fromOffset(208, 208)})
			tween(splash, TweenInfo.new(0.26), {ImageTransparency = 1})
			task.wait(0.28)
			imageGui:Destroy()

			if onCorrectKey then
				task.spawn(onCorrectKey)
			end
		else
			codeLine.Text = "> access_denied = true"
			notify("Incorrect key.")
			local boxStroke = keyBox:FindFirstChildOfClass("UIStroke")
			if boxStroke then
				tween(boxStroke, TweenInfo.new(0.1), {Color = Color3.fromRGB(255, 88, 88), Transparency = 0.15})
				task.delay(0.38, function()
					if boxStroke and boxStroke.Parent then
						tween(boxStroke, TweenInfo.new(0.16), {Color = Color3.fromRGB(80, 80, 92), Transparency = 0.42})
					end
				end)
			end
			tween(frame, TweenInfo.new(0.05), {Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(-7, 0)})
			task.wait(0.05)
			tween(frame, TweenInfo.new(0.05), {Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(7, 0)})
			task.wait(0.05)
			tween(frame, TweenInfo.new(0.08), {Position = UDim2.fromScale(0.5, 0.5)})
			submitting = false
		end
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
	notify("Failed to load required data.")
	task.wait(3)
	notify("⚠️ Could not load Premium data.\n🔎 Change your executor to use this script.\nContact: " .. DYHUBTHEBEST)
	blur:Destroy()
	return
end

-- =========================================================
-- 💾 Load Game List
-- =========================================================
local gameLists = {
    FreeVersion = {
        allowedGamesByCreatorId = {
			[8309807] = {name = "Scratchy Loot", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/dasx"},
			[344908697] = {name = "Animal Hospital", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/gui.lua"},
			[617312490] = {name = "Drain the Lake", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/dtl.lua"},
	        [12836673] = {name = "Blade Ball", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Jajuajsnahajabladeeejajabaalll.lua"},
		    [5693735] = {name = "Evade", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/djsjjwsjsnjajevaddddeeeeeeddeee.txt"},
			[425035678] = {name = "100 Days At Sea", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv1-100das"}, 
	        [33548380] = {name = "Forsaken", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Fosaken.lua"},
		    [1062446070] = {name = "Broken Blade", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/skibidihuideanbalde.lua"}, 
		    [432538536] = {name = "Grow A Garden 2", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/test.ajha_twy.txt.lua"}, 
		    [32847485] = {name = "Demonology", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/dmeiemekeke.lua"}, 
		    [4619164] = {name = "Sell Lemons", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Ls.lua.lua"}, 
			[989438225] = {name = "Build A Ring Farm", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/skidnyagahhwhwhbn%20barffff.txt"}, 
	        [12249805] = {name = "Fix It Up!", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/jahahjgaxhxabbsgwh"}, 
            [1041977165] = {name = "Kick a Lucky Block", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Nig.lua"}, 
            [35151686] = {name = "Get Fat to Splash", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/bgdhd.lua"}, 
            [35251154] = {name = "Driving Legends", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Bbn.lua"}, 
            [11987919] = {name = "Taxi Boss", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TexiBoss.lua"},
            [6556072] = {name = "A Universal Time", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AUUUT.lua"},
            [34869880] = {name = "Plants Vs Brainrots", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Fuckyou.lua"},
            [9482918] = {name = "The Mimic (DYHUB X RAELHUB)", url = "https://raw.githubusercontent.com/Laelmano24/Rael-Hub/refs/heads/main/main.txt"},
            [6042520] = {name = "99 Nights in the Forest", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Gagga.lua"},
            [12832037] = {name = "Baddies", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BBdie.lua"},
            [35888785] = {name = "Prospecting", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Prospecting.lua"},
            [35786254] = {name = "Mines", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Mine.lua"},
            [35815576] = {name = "Schedule 🥔", url = "https://pastebin.com/raw/gCSmFnbb"},
	        [719390069] = {name = "Be a Lucky Block", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/luckyblock.txt"},
	        [483027661] = {name = "Bite by Night", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/d1.lua"},
	        [635601940] = {name = "Bite by Night", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/d1.lua"},
            [34761390] = {name = "Protect The House From Monsters", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/protect.lua"}, 
            [8818124] = {name = "Violence District", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/fffae"},
            [6022628] = {name = "ST : Blockade Battlefront", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Paid.lua"},
            [12398672] = {name = "Ink Game", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/inkgame.lua"},
        },

        allowedGamesByPlaceId = {
            ["6677985923"] = {name = "Millionaire Empire Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/MET.lua"},
            ["3571215756"] = {name = "House Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/HT.lua"},
            ["126803389599637"] = {name = "Anime Tower Piece", url = "https://raw.githubusercontent.com/dyumra/Dupe-Anime-Rails/refs/heads/main/ATP.lua"},
            ["286090429"] = {name = "Arsenal", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Main-Script.lua"},
            ["15694107053"] = {name = "Jujutsu Legacy", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/jjlv2.lua"},
            ["103661214879860"] = {name = "ABILITIES TOWER", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AssT.lua"},
            ["89343390950953"] = {name = "My Singing Brainrot [DYHUB X TORA]", url = "https://raw.githubusercontent.com/gumanba/Scripts/main/MySingingBrainrot"},
            ["80932898798323"] = {name = "Cross Piece", url = "https://raw.githubusercontent.com/meobeo8/type/main/Loader"},
            ["914010731"] = {name = "Ro-Ghoul", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Roghoul.lua"},
            ["13618878564"] = {name = "Bloxel Gun", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BLOXEL.lua"},
            ["221718525"] = {name = "Ninja Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/NT.lua"},
            ["74392180661358"] = {name = "Grow a Mine", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAM.lua"},
            ["113809264674979"] = {name = "Steal a Sword", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAS.lua"},
            ["14940775218"] = {name = "No-Scope Arcade (2021)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Camlock.lua"},
            ["6407649031"] = {name = "No-Scope Arcade", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Camlock.lua"},
            ["8260276694"] = {name = "Ability Wars", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ability-War.lua"},
            ["3623096087"] = {name = "Muscle Legends", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Muscle%20Legends.lua"},
            ["81968724698850"] = {name = "Loot Fish", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/LF.lua"},
            ["134699215023675"] = {name = "Steal a Garden", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAG.lua"},
            ["86628581581863"] = {name = "Anime Rails", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ARv2_fixed.lua"},
            ["71575927487690"] = {name = "Build A Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Build%20A%20Brainrot.lua"},
            ["82593820387667"] = {name = "Arcade Store Simulator", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ass.lua"},
            ["73934517857372"] = {name = "+1 Speed Prison Escape", url = "https://pastebin.com/raw/KTCsyQSk"},
            ["17126500142"] = {name = "Abyss Miner", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AbssyMiner.lua"},
            ["99013571721937"] = {name = "Aether Adventure", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AeA.lua"},
            ["139143597034555"] = {name = "+1 Speed Prison Escape [🦑]", url = "https://pastebin.com/raw/RKPm9zJB"},
            ["119048529960596"] = {name = "Restaurant Tycoon 3", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/rt3.lua"},
            ["124180759222403"] = {name = "Ants", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ant"},
            ["17357719939"] = {name = "Wizard West", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Wwv2.lua"},
            ["116495829188952"] = {name = "Dead Rails", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Drlobby.lua"},
            ["70876832253163"] = {name = "Dead Rails [In-game]", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/DRDYHUB.lua"},
            ["136806264049477"] = {name = "Keys and Knives", url = "https://raw.githubusercontent.com/gumanba/Scripts/main/KeysandKnives"},
            ["110931811137535"] = {name = "Feed a Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/fyb.lua"},
            ["137925884276740"] = {name = "Build A Plane", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/bap.lua"},
            ["6407649031"] = {name = "No-Scope Arcade", url = "https://pastefy.app/IQHwChkh/raw"},
            ["14940775218"] = {name = "No-Scope Arcade (2021)", url = "https://pastefy.app/IQHwChkh/raw"},        
            ["70671905624144"] = {name = "Steal A Baddie", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SABaddie.lua"},
        }
    },

    PremiumVersion = {
        allowedGamesByCreatorId = { 
			[9640154] = {name = "Storage Hunters", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Shhhhh.lua"},
			[168519468] = {name = "Anime Astral Simulator", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv2-aas"}, 
			[34783288] = {name = "Anime Warriors III", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv3-awiii"}, 
	        [34208109] = {name = "Anime Card Collection", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Uhalualua.lua"},
            [561990553] = {name = "Survive Zombie Arena", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Azapqmsza.lua"},
            [16911831] = {name = "Guts & Blackpowder", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAB.lua"},
            [660479131] = {name = "Fish a Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/FaB.lua"},  
            [36097751] = {name = "Steal A Fish", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Saf.lua"},  
            [11392290] = {name = "Cut Trees", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/CT.lua"},  
            [35595896] = {name = "Build ur Base", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Bub.lua"},
            [36008925] = {name = "Build a Zoo", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Baz.lua"},
            [3049798] = {name = "Doors", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/door.lua"},
            [4372130] = {name = "Blox Fruits", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/bfv2.lua"},
            [5292947] = {name = "ASTD X", url = "https://raw.githubusercontent.com/bunnnwee/JimiHub/refs/heads/main/ASTDX-Normal"},
            [5205652] = {name = "SPECTER", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SpecterV2/specter.lua"},
            [9950771] = {name = "Slap Battles", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/slap-battle.lua"},
            [35568770] = {name = "Fight Anime Bosses", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/anime-boss-raid.lua"},
            [2564897] = {name = "Dinosaur Simulator [Check]", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/dinosaursimulator.lua"},
            [35873946] = {name = "Bomb A Friend", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BOMBAF.lua"},
            [35815907] = {name = "Steal A Brainrot", url = "https://api.luarmor.net/files/v3/loaders/53325754de16c11fbf8bf78101c1c881.lua"},
            [3104358] = {name = "Brookhaven RP", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BrookHaven.lua"},
            [7513662] = {name = "KAT X", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kidkatx.lua"},
            [7381705] = {name = "Fisch", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/FischV2/Fisch.lua"},
            [4217910] = {name = "Tower of Hell", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Towerofhell.lua"},
            [36015593] = {name = "Hunty Zombie", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/hztest.lua"},
            [15491373] = {name = "Container RNG", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Container%20RNG.lua"},
            [14502869] = {name = "Kaizen Battlegrounds", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kaizenb.lua"},
            [33859442] = {name = "Anime Royale", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Aroyal.lua"},
            [15009415] = {name = "Anime Ranger X", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/arx.lua"},
            [35154829] = {name = "Anime Power", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ap.lua"},
            [35789249] = {name = "Grow a Garden", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAG.lua"},  
            [3461453] = {name = "Rivals", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/RIVALS.lua"},
            [278905007] = {name = "Build My Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BMC.lua"},
            [34873522] = {name = "Anime Eternal", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Anime-Eternal.lua"},
            [3385385] = {name = "Hypershot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Hypershot.lua"},
            [2782840] = {name = "Build A Boat For Treasure", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BABFT"},
            [35102746] = {name = "Fish It", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/jhffthhffreV2fishlol.lua"},
            [35561581] = {name = "Protect the Stash", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/STS.lua"},
            [34223768] = {name = "Jump Stars", url = "https://raw.githubusercontent.com/Crazy0z/Crazy/refs/heads/main/JumpOnMyCockMobile.lua"},
            [12013007] = {name = "The Strongest Battleground", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TSB.lua"},
	        [1002185259] = {name = "Sailor Piece", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SPD.lua"},
	        [959433345] = {name = "Survive the Apocalypse", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/defffffffftufffff.lua"},
        },

        allowedGamesByPlaceId = {
            ["1537690962"] = {name = "Bee Swarm Simulator", url = "https://pastefy.app/ARSsnhVE/raw"},
            ["2413927524"] = {name = "The Rake REMASTERED", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kuyyyyyhahah.lua"},
            ["110239180142623"] = {name = "Tsunami Escape", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TE.lua"},
            ["3101667897"] = {name = "Legends Of Speed", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/LOS.lua"},
            ["105141077088559"] = {name = "Anime RaiIs in-Game", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ARAW.lua"},
            ["72992062125248"] = {name = "Hunters", url = "https://raw.githubusercontent.com/LawrenceLud/Templo/refs/heads/main/TemploLoader.lua"},
            ["15060257865"] = {name = "Z Piece (Server: 1)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Apakmaakpiece"},
            ["96968864216949"] = {name = "Z Piece (Server: 2)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Apakmaakpiece"},
            ["133781619558477"] = {name = "Steal a K-Pop Demon Hunter", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Sakph.lua"},
            ["10260193230"] = {name = "Meme Sea", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/MemeSea.lua"},
            ["88728793053496"] = {name = "Build A Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BaC.lua"},
            ["133487110685834"] = {name = "4KING CUTIE", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/4KING"},
            ["104965156633249"] = {name = "Poop", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Poop"},
            ["228181322"] = {name = "Dinosaur Simulator", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/dinosaursimulator.lua"},
            ["87039211657390"] = {name = "Arise Crossover", url = "https://raw.githubusercontent.com/EtherbyteHub/MAIN/refs/heads/main/Dantes"},
            ["93774312410805"] = {name = "Anime RNG TD", url = "https://raw.githubusercontent.com/dyumra/Dupe-Anime-Rails/refs/heads/main/ARTD.lua"},
            ["6938803436"] = {name = "Anime Dimensions Simulator", url = "https://raw.githubusercontent.com/Yanwanlnwza/SmellLikeHacker/main/Animedimensions.lua"},
            ["2788229376"] = {name = "Da Hood", url = "https://raw.githubusercontent.com/faisal222212/zeraya-stuff/refs/heads/main/zerayagui.lua"},
            ["136372246050123"] = {name = "Stick Battles", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/main/STICKBATTLE.lua"},
            ["89744231770777"] = {name = "Dead Spells", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/DS.lua"},
            ["142823291"] = {name = "Murder Mystery 2", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Mm2dyhubvw2.lua"},
            ["95702387256198"] = {name = "Steal a Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAC.lua"},
            ["11276071411"] = {name = "Be NPC or DIE", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BeNpcOrDie.lua"},
            ["126244816328678"] = {name = "DIG", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Dig.lua"},
            ["5991163185"] = {name = "Spray Print", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SP.lua"},
        }
    }
}

local FreeVersionallowedGamesByCreatorId = gameLists.FreeVersion.allowedGamesByCreatorId
local FreeVersionallowedGamesByPlaceId = gameLists.FreeVersion.allowedGamesByPlaceId
local allowedGamesforPremiumByCreatorId = gameLists.PremiumVersion.allowedGamesByCreatorId
local AllowGameforPremiumByPlaceId = gameLists.PremiumVersion.allowedGamesByPlaceId

-- =========================================================
-- 🧩 Determine Game
-- =========================================================
local placeId = tostring(game.PlaceId)
local creatorId = tonumber(game.CreatorId)
local freeGameData = FreeVersionallowedGamesByPlaceId[placeId] or FreeVersionallowedGamesByCreatorId[creatorId]
local premiumGameData = AllowGameforPremiumByPlaceId[placeId] or allowedGamesforPremiumByCreatorId[creatorId]
local gameData = freeGameData or premiumGameData

if not gameData then
	notify("This game is not supported.")
	task.wait(2)
    blur:Destroy()
	return
end

-- =========================================================
-- 💳 Premium Check
-- =========================================================
local playerPremium = premiumUsers[player.Name]
if premiumGameData and not playerPremium then
	notify("Premium is required for this game.")
	task.wait(5)
	notify("⛔ Premium only game!\n📊 Get premium to run this script here.\n💳 Buy Premium: " .. DYHUBTHEBEST)
    blur:Destroy()
	return
end

-- =========================================================
-- 🚀 Script Loader
-- =========================================================
local loadingScript = false
local function loadScript()
	if loadingScript then return end
	loadingScript = true
	if gameData and gameData.url then
		local ok = pcall(function()
			local src = game:HttpGet(gameData.url)
			local fn = loadstring(src)
			if fn then fn() end
		end)
		if ok then
			notify("Script loaded successfully.")
		else
			notify("Failed to load script.")
			loadingScript = false
		end
	else
		notify("No script found for this game.")
		loadingScript = false
	end
end

-- =========================================================
-- ✨ Run for Premium
-- =========================================================
if playerPremium then
    blur:Destroy()
    if playerPremium.Time == "Lifetime" or tonumber(playerPremium.Time) == -1 then
        notify("Premium loaded. Time: Lifetime")
    else
        notify("Premium loaded. Days left: " .. tostring(playerPremium.Day or "Unknown"))
    end
    loadScript()
    
    local list = loadstring(game:HttpGet("https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua"))()
    local p = game:GetService("Players").LocalPlayer
    local info = list[p.Name]
    
    if info then
        local expireText = "Unknown"
        
        if info.Time == "Lifetime" then
            expireText = "Lifetime"
        elseif tonumber(info.Time) then
            expireText = tostring(info.Time) .. " Days"
        elseif info.Time == nil and tonumber(info.Day) then
            expireText = tostring(info.Day) .. " Days"
        end
        
        local b = Instance.new("BindableFunction")
        b.OnInvoke = function(x)
            if x == "Copy" and info.Key then
                setclipboard("Key: " .. info.Key .. "\nExpire: " .. expireText)
            end
        end
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "DYHUB",
            Text = "Copy your saved key?",
            Button1 = "Copy",
            Button2 = "No",
            Callback = b,
            Duration = 5
        })
    end
else
    createKeyGui(loadScript)
end
