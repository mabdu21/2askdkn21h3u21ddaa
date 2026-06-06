--[[
    Rewrited from Wind UI (Footagesus) and NatUI
    Github: https://github.com/Footagesus/WindUI

	This User Interface is open source and for public usage.
]]

-- Instances: 271 | Scripts: 0 | Modules: 3 | Tags: 0
local DYHUB = {};

-- DYHUB
DYHUB["1"] = Instance.new("ScreenGui");
DYHUB["1"]["Name"] = [[DYHUB]];
DYHUB["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
DYHUB["1"]["ResetOnSpawn"] = false;

local cloneref = cloneref or function(...) return ... end

if protect_gui then
	protect_gui(DYHUB["1"])
elseif gethui then
	DYHUB["1"].Parent = gethui()
elseif pcall(function() game.CoreGui:GetChildren() end) then
	DYHUB["1"].Parent = cloneref(game:GetService("CoreGui"))
else
	DYHUB["1"].Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- DYHUB.Window
DYHUB["2"] = Instance.new("Frame", DYHUB["1"]);
DYHUB["2"]["ZIndex"] = 0;
DYHUB["2"]["BorderSizePixel"] = 2;
DYHUB["2"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["2"]["Size"] = UDim2.new(0, 528, 0, 334);
DYHUB["2"]["Position"] = UDim2.new(0.5278, 0, 0.5, 0);
DYHUB["2"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["2"]["Name"] = [[Window]];


-- DYHUB.Window.UICorner
DYHUB["3"] = Instance.new("UICorner", DYHUB["2"]);
DYHUB["3"]["CornerRadius"] = UDim.new(0, 10);


-- DYHUB.Window.DropdownSelection
DYHUB["4"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["4"]["Visible"] = false;
DYHUB["4"]["ZIndex"] = 4;
DYHUB["4"]["BorderSizePixel"] = 0;
DYHUB["4"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
DYHUB["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["4"]["ClipsDescendants"] = true;
DYHUB["4"]["Size"] = UDim2.new(0.7281, 0, 0.68367, 0);
DYHUB["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DYHUB["4"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["4"]["Name"] = [[DropdownSelection]];


-- DYHUB.Window.DropdownSelection.UICorner
DYHUB["5"] = Instance.new("UICorner", DYHUB["4"]);
DYHUB["5"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Window.DropdownSelection.UIStroke
DYHUB["6"] = Instance.new("UIStroke", DYHUB["4"]);
DYHUB["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["6"]["Thickness"] = 1.5;
DYHUB["6"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Window.DropdownSelection.TopBar
DYHUB["7"] = Instance.new("Frame", DYHUB["4"]);
DYHUB["7"]["BorderSizePixel"] = 0;
DYHUB["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["7"]["Size"] = UDim2.new(1, 0, 0, 50);
DYHUB["7"]["Position"] = UDim2.new(0, 0, 0, 0);
DYHUB["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["7"]["Name"] = [[TopBar]];
DYHUB["7"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame
DYHUB["8"] = Instance.new("Frame", DYHUB["7"]);
DYHUB["8"]["BorderSizePixel"] = 0;
DYHUB["8"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["8"]["Size"] = UDim2.new(0, 120, 0, 25);
DYHUB["8"]["Position"] = UDim2.new(1, -50, 0.5, 0);
DYHUB["8"]["Name"] = [[BoxFrame]];
DYHUB["8"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.DropShadow
DYHUB["9"] = Instance.new("ImageLabel", DYHUB["8"]);
DYHUB["9"]["ZIndex"] = 0;
DYHUB["9"]["BorderSizePixel"] = 0;
DYHUB["9"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
DYHUB["9"]["ScaleType"] = Enum.ScaleType.Slice;
DYHUB["9"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["9"]["Image"] = [[rbxassetid://6014261993]];
DYHUB["9"]["Size"] = UDim2.new(1, 30, 1, 30);
DYHUB["9"]["BackgroundTransparency"] = 1;
DYHUB["9"]["Name"] = [[DropShadow]];
DYHUB["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame
DYHUB["a"] = Instance.new("Frame", DYHUB["8"]);
DYHUB["a"]["BorderSizePixel"] = 0;
DYHUB["a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame.UICorner
DYHUB["b"] = Instance.new("UICorner", DYHUB["a"]);
DYHUB["b"]["CornerRadius"] = UDim.new(0, 5);


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame.UIStroke
DYHUB["c"] = Instance.new("UIStroke", DYHUB["a"]);
DYHUB["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["c"]["Thickness"] = 1.5;
DYHUB["c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox
DYHUB["d"] = Instance.new("TextBox", DYHUB["a"]);
DYHUB["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["d"]["BorderSizePixel"] = 0;
DYHUB["d"]["TextWrapped"] = true;
DYHUB["d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
DYHUB["d"]["TextSize"] = 14;
DYHUB["d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["d"]["ClipsDescendants"] = true;
DYHUB["d"]["PlaceholderText"] = [[Input here...]];
DYHUB["d"]["Size"] = UDim2.new(1, -25, 1, 0);
DYHUB["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["d"]["Text"] = [[]];
DYHUB["d"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame.TextBox.UIPadding
DYHUB["e"] = Instance.new("UIPadding", DYHUB["d"]);
DYHUB["e"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["e"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["e"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["e"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Window.DropdownSelection.TopBar.BoxFrame.Frame.ImageButton
DYHUB["f"] = Instance.new("ImageButton", DYHUB["a"]);
DYHUB["f"]["BorderSizePixel"] = 0;
DYHUB["f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["f"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["f"]["Image"] = [[rbxassetid://86928976705683]];
DYHUB["f"]["Size"] = UDim2.new(0, 15, 0, 15);
DYHUB["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["f"]["Position"] = UDim2.new(1, -5, 0.5, 0);


-- DYHUB.Window.DropdownSelection.TopBar.Close
DYHUB["10"] = Instance.new("ImageButton", DYHUB["7"]);
DYHUB["10"]["BorderSizePixel"] = 0;
DYHUB["10"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["10"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["10"]["ZIndex"] = 0;
DYHUB["10"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["10"]["Image"] = [[rbxassetid://132453323679056]];
DYHUB["10"]["Size"] = UDim2.new(0, 25, 0, 25);
DYHUB["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["10"]["Name"] = [[Close]];
DYHUB["10"]["Position"] = UDim2.new(1, -12, 0.5, 0);


-- DYHUB.Window.DropdownSelection.TopBar.Title
DYHUB["11"] = Instance.new("TextLabel", DYHUB["7"]);
DYHUB["11"]["TextWrapped"] = true;
DYHUB["11"]["Interactable"] = false;
DYHUB["11"]["ZIndex"] = 0;
DYHUB["11"]["BorderSizePixel"] = 0;
DYHUB["11"]["TextSize"] = 18;
DYHUB["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["11"]["TextScaled"] = true;
DYHUB["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["11"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["11"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["11"]["BackgroundTransparency"] = 1;
DYHUB["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["11"]["Size"] = UDim2.new(0.5, 0, 0, 18);
DYHUB["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["11"]["Text"] = [[Dropdown]];
DYHUB["11"]["Name"] = [[Title]];
DYHUB["11"]["Position"] = UDim2.new(0, 12, 0.5, 0);


-- DYHUB.Window.DropdownSelection.Dropdowns
DYHUB["12"] = Instance.new("Folder", DYHUB["4"]);
DYHUB["12"]["Name"] = [[Dropdowns]];


-- DYHUB.Window.TabButtons
DYHUB["13"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["13"]["BorderSizePixel"] = 0;
DYHUB["13"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["13"]["ClipsDescendants"] = true;
DYHUB["13"]["Size"] = UDim2.new(0, 165, 1, -35);
DYHUB["13"]["Position"] = UDim2.new(0, 0, 0, 35);
DYHUB["13"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["13"]["Name"] = [[TabButtons]];
DYHUB["13"]["SelectionGroup"] = true;


-- DYHUB.Window.TabButtons.Lists
DYHUB["14"] = Instance.new("ScrollingFrame", DYHUB["13"]);
DYHUB["14"]["Active"] = true;
DYHUB["14"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
DYHUB["14"]["BorderSizePixel"] = 0;
DYHUB["14"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DYHUB["14"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
DYHUB["14"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["14"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["14"]["Name"] = [[Lists]];
DYHUB["14"]["Selectable"] = false;
DYHUB["14"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DYHUB["14"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["14"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["14"]["ScrollBarThickness"] = 4;
DYHUB["14"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.TabButtons.Lists.UIListLayout
DYHUB["15"] = Instance.new("UIListLayout", DYHUB["14"]);
DYHUB["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Window.TabButtons.Lists.TabButton
DYHUB["16"] = Instance.new("Frame", DYHUB["14"]);
DYHUB["16"]["Visible"] = false;
DYHUB["16"]["BorderSizePixel"] = 0;
DYHUB["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["16"]["Size"] = UDim2.new(1, 0, 0, 36);
DYHUB["16"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
DYHUB["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["16"]["Name"] = [[TabButton]];
DYHUB["16"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.TabButtons.Lists.TabButton.Bar
DYHUB["17"] = Instance.new("Frame", DYHUB["16"]);
DYHUB["17"]["BorderSizePixel"] = 0;
DYHUB["17"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["17"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["17"]["Size"] = UDim2.new(0, 5, 0, 25);
DYHUB["17"]["Position"] = UDim2.new(0, 8, 0, 18);
DYHUB["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["17"]["Name"] = [[Bar]];


-- DYHUB.Window.TabButtons.Lists.TabButton.Bar.UIGradient
DYHUB["18"] = Instance.new("UIGradient", DYHUB["17"]);
DYHUB["18"]["Enabled"] = false;
DYHUB["18"]["Rotation"] = 90;
DYHUB["18"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 65, 145)),ColorSequenceKeypoint.new(0.978, Color3.fromRGB(245, 45, 120)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(150, 25, 70))};


-- DYHUB.Window.TabButtons.Lists.TabButton.Bar.UICorner
DYHUB["19"] = Instance.new("UICorner", DYHUB["17"]);
DYHUB["19"]["CornerRadius"] = UDim.new(0, 100);


-- DYHUB.Window.TabButtons.Lists.TabButton.ImageButton
DYHUB["1a"] = Instance.new("ImageButton", DYHUB["16"]);
DYHUB["1a"]["BorderSizePixel"] = 0;
DYHUB["1a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["1a"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["1a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["1a"]["Image"] = [[rbxassetid://113216930555884]];
DYHUB["1a"]["Size"] = UDim2.new(0, 31, 0, 30);
DYHUB["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["1a"]["Position"] = UDim2.new(0, 21, 0, 18);


-- DYHUB.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
DYHUB["1b"] = Instance.new("UIAspectRatioConstraint", DYHUB["1a"]);



-- DYHUB.Window.TabButtons.Lists.TabButton.TextLabel
DYHUB["1c"] = Instance.new("TextLabel", DYHUB["16"]);
DYHUB["1c"]["TextWrapped"] = true;
DYHUB["1c"]["BorderSizePixel"] = 0;
DYHUB["1c"]["TextSize"] = 14;
DYHUB["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["1c"]["TextScaled"] = true;
DYHUB["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["1c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["1c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["1c"]["BackgroundTransparency"] = 1;
DYHUB["1c"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["1c"]["Size"] = UDim2.new(0, 88, 0, 16);
DYHUB["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["1c"]["Text"] = [[DYHUB]];
DYHUB["1c"]["Position"] = UDim2.new(0, 57, 0.5, 0);


-- DYHUB.Window.TabButtons.Lists.UIPadding
DYHUB["1d"] = Instance.new("UIPadding", DYHUB["14"]);
DYHUB["1d"]["PaddingTop"] = UDim.new(0, 8);


-- DYHUB.Window.TabButtons.Lists.Divider
DYHUB["1e"] = Instance.new("Frame", DYHUB["14"]);
DYHUB["1e"]["Visible"] = false;
DYHUB["1e"]["BorderSizePixel"] = 0;
DYHUB["1e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["1e"]["Size"] = UDim2.new(1, 0, 0, 1);
DYHUB["1e"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["1e"]["Name"] = [[Divider]];


-- DYHUB.Window.TabButtons.Lists.TabButton
DYHUB["1f"] = Instance.new("ImageButton", DYHUB["14"]);
DYHUB["1f"]["Active"] = false;
DYHUB["1f"]["BorderSizePixel"] = 0;
DYHUB["1f"]["AutoButtonColor"] = false;
DYHUB["1f"]["Visible"] = false;
DYHUB["1f"]["BackgroundTransparency"] = 1;
DYHUB["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["1f"]["Selectable"] = false;
DYHUB["1f"]["Size"] = UDim2.new(1, 0, 0, 36);
DYHUB["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["1f"]["Name"] = [[TabButton]];


-- DYHUB.Window.TabButtons.Lists.TabButton.ImageButton
DYHUB["20"] = Instance.new("ImageButton", DYHUB["1f"]);
DYHUB["20"]["BorderSizePixel"] = 0;
DYHUB["20"]["ImageTransparency"] = 0.5;
DYHUB["20"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["20"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["20"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["20"]["Image"] = [[rbxassetid://113216930555884]];
DYHUB["20"]["Size"] = UDim2.new(0, 31, 0, 30);
DYHUB["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["20"]["Position"] = UDim2.new(0, 6, 0, 18);


-- DYHUB.Window.TabButtons.Lists.TabButton.ImageButton.UIAspectRatioConstraint
DYHUB["21"] = Instance.new("UIAspectRatioConstraint", DYHUB["20"]);



-- DYHUB.Window.TabButtons.Lists.TabButton.TextLabel
DYHUB["22"] = Instance.new("TextLabel", DYHUB["1f"]);
DYHUB["22"]["TextWrapped"] = true;
DYHUB["22"]["BorderSizePixel"] = 0;
DYHUB["22"]["TextSize"] = 14;
DYHUB["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["22"]["TextTransparency"] = 0.5;
DYHUB["22"]["TextScaled"] = true;
DYHUB["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["22"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["22"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["22"]["BackgroundTransparency"] = 1;
DYHUB["22"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["22"]["Size"] = UDim2.new(0, 103, 0, 16);
DYHUB["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["22"]["Text"] = [[DYHUB]];
DYHUB["22"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- DYHUB.Window.TabButtons.Lists.TabButton.Bar
DYHUB["23"] = Instance.new("Frame", DYHUB["1f"]);
DYHUB["23"]["BorderSizePixel"] = 0;
DYHUB["23"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["23"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["23"]["Size"] = UDim2.new(0, 5, 0, 0);
DYHUB["23"]["Position"] = UDim2.new(0, 8, 0, 18);
DYHUB["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["23"]["Name"] = [[Bar]];
DYHUB["23"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.TabButtons.Lists.TabButton.Bar.UICorner
DYHUB["24"] = Instance.new("UICorner", DYHUB["23"]);
DYHUB["24"]["CornerRadius"] = UDim.new(0, 100);


-- DYHUB.Window.TabButtons.UICorner
DYHUB["25"] = Instance.new("UICorner", DYHUB["13"]);
DYHUB["25"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Window.TabButtons.AntiCornerTop
DYHUB["26"] = Instance.new("Frame", DYHUB["13"]);
DYHUB["26"]["BorderSizePixel"] = 0;
DYHUB["26"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["26"]["Size"] = UDim2.new(1, 0, 0, 5);
DYHUB["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["26"]["Name"] = [[AntiCornerTop]];


-- DYHUB.Window.TabButtons.AntiCornerRight
DYHUB["27"] = Instance.new("Frame", DYHUB["13"]);
DYHUB["27"]["BorderSizePixel"] = 0;
DYHUB["27"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["27"]["AnchorPoint"] = Vector2.new(0.5, 0);
DYHUB["27"]["Size"] = UDim2.new(0, 2, 1, 0);
DYHUB["27"]["Position"] = UDim2.new(1, 1, 0, 0);
DYHUB["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["27"]["Name"] = [[AntiCornerRight]];


-- DYHUB.Window.TabButtons.Border
DYHUB["28"] = Instance.new("Frame", DYHUB["13"]);
DYHUB["28"]["ZIndex"] = 2;
DYHUB["28"]["BorderSizePixel"] = 0;
DYHUB["28"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["28"]["AnchorPoint"] = Vector2.new(1, 0);
DYHUB["28"]["Size"] = UDim2.new(0, 2, 1, 0);
DYHUB["28"]["Position"] = UDim2.new(1, 0, 0, 0);
DYHUB["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["28"]["Name"] = [[Border]];


-- DYHUB.Window.TopFrame
DYHUB["29"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["29"]["BorderSizePixel"] = 0;
DYHUB["29"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["29"]["ClipsDescendants"] = true;
DYHUB["29"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["29"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["29"]["Name"] = [[TopFrame]];


-- DYHUB.Window.TopFrame.Icon
DYHUB["2a"] = Instance.new("ImageButton", DYHUB["29"]);
DYHUB["2a"]["Active"] = false;
DYHUB["2a"]["Interactable"] = false;
DYHUB["2a"]["BorderSizePixel"] = 0;
DYHUB["2a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["2a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["2a"]["Image"] = [[rbxassetid://113216930555884]];
DYHUB["2a"]["Size"] = UDim2.new(0, 25, 0, 25);
DYHUB["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["2a"]["Name"] = [[Icon]];
DYHUB["2a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- DYHUB.Window.TopFrame.Icon.UIAspectRatioConstraint
DYHUB["2b"] = Instance.new("UIAspectRatioConstraint", DYHUB["2a"]);



-- DYHUB.Window.TopFrame.TextLabel
DYHUB["2c"] = Instance.new("TextLabel", DYHUB["29"]);
DYHUB["2c"]["TextWrapped"] = true;
DYHUB["2c"]["Interactable"] = false;
DYHUB["2c"]["BorderSizePixel"] = 0;
DYHUB["2c"]["TextSize"] = 14;
DYHUB["2c"]["TextScaled"] = true;
DYHUB["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["2c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["2c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["2c"]["BackgroundTransparency"] = 1;
DYHUB["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["2c"]["Size"] = UDim2.new(1, 0, 0, 16);
DYHUB["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["2c"]["Text"] = [[DYHUB - v1.2.3]];
DYHUB["2c"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);


-- DYHUB.Window.TopFrame.Close
DYHUB["2d"] = Instance.new("ImageButton", DYHUB["29"]);
DYHUB["2d"]["BorderSizePixel"] = 0;
DYHUB["2d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["2d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["2d"]["Image"] = [[rbxassetid://132453323679056]];
DYHUB["2d"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["2d"]["Name"] = [[Close]];
DYHUB["2d"]["Position"] = UDim2.new(1, -15, 0.5, 0);


-- DYHUB.Window.TopFrame.Maximize
DYHUB["2e"] = Instance.new("ImageButton", DYHUB["29"]);
DYHUB["2e"]["BorderSizePixel"] = 0;
DYHUB["2e"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["2e"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["2e"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["2e"]["Image"] = [[rbxassetid://108285848026510]];
DYHUB["2e"]["Size"] = UDim2.new(0, 15, 0, 15);
DYHUB["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["2e"]["Name"] = [[Maximize]];
DYHUB["2e"]["Position"] = UDim2.new(1, -55, 0.5, 0);


-- DYHUB.Window.TopFrame.Hide
DYHUB["2f"] = Instance.new("ImageButton", DYHUB["29"]);
DYHUB["2f"]["BorderSizePixel"] = 0;
DYHUB["2f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["2f"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["2f"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["2f"]["Image"] = [[rbxassetid://128209591224511]];
DYHUB["2f"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["2f"]["Name"] = [[Hide]];
DYHUB["2f"]["Position"] = UDim2.new(1, -90, 0.5, 0);


-- DYHUB.Window.TopFrame.UICorner
DYHUB["30"] = Instance.new("UICorner", DYHUB["29"]);
DYHUB["30"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Window.TopFrame.Border
DYHUB["31"] = Instance.new("Frame", DYHUB["29"]);
DYHUB["31"]["ZIndex"] = 2;
DYHUB["31"]["BorderSizePixel"] = 0;
DYHUB["31"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["31"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["31"]["Size"] = UDim2.new(1, 0, 0, 2);
DYHUB["31"]["Position"] = UDim2.new(0, 0, 1, 0);
DYHUB["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["31"]["Name"] = [[Border]];


-- DYHUB.Window.UIStroke
DYHUB["32"] = Instance.new("UIStroke", DYHUB["2"]);
DYHUB["32"]["Transparency"] = 0.5;
DYHUB["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["32"]["Color"] = Color3.fromRGB(95, 95, 117);


-- DYHUB.Window.Tabs
DYHUB["33"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["33"]["BorderSizePixel"] = 0;
DYHUB["33"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
DYHUB["33"]["Size"] = UDim2.new(1, -165, 1, -35);
DYHUB["33"]["Position"] = UDim2.new(0, 165, 0, 35);
DYHUB["33"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["33"]["Name"] = [[Tabs]];


-- DYHUB.Window.Tabs.UICorner
DYHUB["34"] = Instance.new("UICorner", DYHUB["33"]);
DYHUB["34"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Window.Tabs.AntiCornerLeft
DYHUB["35"] = Instance.new("Frame", DYHUB["33"]);
DYHUB["35"]["Visible"] = false;
DYHUB["35"]["BorderSizePixel"] = 0;
DYHUB["35"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
DYHUB["35"]["Size"] = UDim2.new(0, 5, 1, 0);
DYHUB["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["35"]["Name"] = [[AntiCornerLeft]];


-- DYHUB.Window.Tabs.AntiCornerTop
DYHUB["36"] = Instance.new("Frame", DYHUB["33"]);
DYHUB["36"]["BorderSizePixel"] = 0;
DYHUB["36"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
DYHUB["36"]["Size"] = UDim2.new(1, 0, 0, 5);
DYHUB["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["36"]["Name"] = [[AntiCornerTop]];


-- DYHUB.Window.Tabs.NoObjectFoundText
DYHUB["37"] = Instance.new("TextLabel", DYHUB["33"]);
DYHUB["37"]["TextWrapped"] = true;
DYHUB["37"]["Interactable"] = false;
DYHUB["37"]["BorderSizePixel"] = 0;
DYHUB["37"]["TextSize"] = 14;
DYHUB["37"]["TextScaled"] = true;
DYHUB["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["37"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["37"]["TextColor3"] = Color3.fromRGB(135, 140, 150);
DYHUB["37"]["BackgroundTransparency"] = 1;
DYHUB["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["37"]["Size"] = UDim2.new(1, 0, 0, 16);
DYHUB["37"]["Visible"] = false;
DYHUB["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["37"]["Text"] = [[This tab is empty :(]];
DYHUB["37"]["Name"] = [[NoObjectFoundText]];
DYHUB["37"]["Position"] = UDim2.new(0.5, 0, 0.45, 0);


-- DYHUB.Window.NotificationFrame
DYHUB["38"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["38"]["BorderSizePixel"] = 0;
DYHUB["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["38"]["ClipsDescendants"] = true;
DYHUB["38"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["38"]["Name"] = [[NotificationFrame]];
DYHUB["38"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.NotificationFrame.NotificationList
DYHUB["39"] = Instance.new("Frame", DYHUB["38"]);
DYHUB["39"]["ZIndex"] = 5;
DYHUB["39"]["BorderSizePixel"] = 0;
DYHUB["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["39"]["AnchorPoint"] = Vector2.new(0.5, 0);
DYHUB["39"]["ClipsDescendants"] = true;
DYHUB["39"]["Size"] = UDim2.new(0, 630, 1, -35);
DYHUB["39"]["Position"] = UDim2.new(1, 0, 0, 35);
DYHUB["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["39"]["Name"] = [[NotificationList]];
DYHUB["39"]["BackgroundTransparency"] = 1;


-- DYHUB.Window.NotificationFrame.NotificationList.UIListLayout
DYHUB["3a"] = Instance.new("UIListLayout", DYHUB["39"]);
DYHUB["3a"]["Padding"] = UDim.new(0, 12);
DYHUB["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Window.NotificationFrame.NotificationList.UIPadding
DYHUB["3b"] = Instance.new("UIPadding", DYHUB["39"]);
DYHUB["3b"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["3b"]["PaddingRight"] = UDim.new(0, 40);
DYHUB["3b"]["PaddingLeft"] = UDim.new(0, 40);


-- DYHUB.Window.DarkOverlay
DYHUB["3c"] = Instance.new("Frame", DYHUB["2"]);
DYHUB["3c"]["Visible"] = false;
DYHUB["3c"]["BorderSizePixel"] = 0;
DYHUB["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["3c"]["Name"] = [[DarkOverlay]];
DYHUB["3c"]["BackgroundTransparency"] = 0.6;


-- DYHUB.Window.DarkOverlay.UICorner
DYHUB["3d"] = Instance.new("UICorner", DYHUB["3c"]);
DYHUB["3d"]["CornerRadius"] = UDim.new(0, 10);


-- DYHUB.Library
DYHUB["3e"] = Instance.new("ModuleScript", DYHUB["1"]);
DYHUB["3e"]["Name"] = [[Library]];


-- DYHUB.Library.IconModule
DYHUB["3f"] = Instance.new("ModuleScript", DYHUB["3e"]);
DYHUB["3f"]["Name"] = [[IconModule]];


-- DYHUB.Library.IconModule.Lucide
DYHUB["40"] = Instance.new("ModuleScript", DYHUB["3f"]);
DYHUB["40"]["Name"] = [[Lucide]];


-- DYHUB.Templates
DYHUB["41"] = Instance.new("Folder", DYHUB["1"]);
DYHUB["41"]["Name"] = [[Templates]];


-- DYHUB.Templates.Divider
DYHUB["42"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["42"]["Visible"] = false;
DYHUB["42"]["BorderSizePixel"] = 0;
DYHUB["42"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["42"]["Size"] = UDim2.new(1, 0, 0, 1);
DYHUB["42"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["42"]["Name"] = [[Divider]];


-- DYHUB.Templates.Tab
DYHUB["43"] = Instance.new("ScrollingFrame", DYHUB["41"]);
DYHUB["43"]["Visible"] = false;
DYHUB["43"]["Active"] = true;
DYHUB["43"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
DYHUB["43"]["BorderSizePixel"] = 0;
DYHUB["43"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DYHUB["43"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
DYHUB["43"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["43"]["Name"] = [[Tab]];
DYHUB["43"]["Selectable"] = false;
DYHUB["43"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["43"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DYHUB["43"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["43"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
DYHUB["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["43"]["ScrollBarThickness"] = 5;
DYHUB["43"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Tab.UIListLayout
DYHUB["44"] = Instance.new("UIListLayout", DYHUB["43"]);
DYHUB["44"]["Padding"] = UDim.new(0, 15);
DYHUB["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Tab.UIPadding
DYHUB["45"] = Instance.new("UIPadding", DYHUB["43"]);
DYHUB["45"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["45"]["PaddingRight"] = UDim.new(0, 14);
DYHUB["45"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["45"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.TabButton
DYHUB["46"] = Instance.new("ImageButton", DYHUB["41"]);
DYHUB["46"]["BorderSizePixel"] = 0;
DYHUB["46"]["AutoButtonColor"] = false;
DYHUB["46"]["Visible"] = false;
DYHUB["46"]["BackgroundTransparency"] = 1;
DYHUB["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["46"]["Selectable"] = false;
DYHUB["46"]["Size"] = UDim2.new(1, 0, 0, 36);
DYHUB["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["46"]["Name"] = [[TabButton]];


-- DYHUB.Templates.TabButton.ImageButton
DYHUB["47"] = Instance.new("ImageButton", DYHUB["46"]);
DYHUB["47"]["BorderSizePixel"] = 0;
DYHUB["47"]["ImageTransparency"] = 0.5;
DYHUB["47"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["47"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["47"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["47"]["Image"] = [[rbxassetid://113216930555884]];
DYHUB["47"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["47"]["Position"] = UDim2.new(0, 12, 0, 18);


-- DYHUB.Templates.TabButton.ImageButton.UIAspectRatioConstraint
DYHUB["48"] = Instance.new("UIAspectRatioConstraint", DYHUB["47"]);



-- DYHUB.Templates.TabButton.TextLabel
DYHUB["49"] = Instance.new("TextLabel", DYHUB["46"]);
DYHUB["49"]["TextWrapped"] = true;
DYHUB["49"]["BorderSizePixel"] = 0;
DYHUB["49"]["TextSize"] = 14;
DYHUB["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["49"]["TextTransparency"] = 0.5;
DYHUB["49"]["TextScaled"] = true;
DYHUB["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["49"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["49"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["49"]["BackgroundTransparency"] = 1;
DYHUB["49"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["49"]["Size"] = UDim2.new(0, 103, 0, 16);
DYHUB["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["49"]["Text"] = [[]];
DYHUB["49"]["Position"] = UDim2.new(0, 42, 0.5, 0);


-- DYHUB.Templates.TabButton.Bar
DYHUB["4a"] = Instance.new("Frame", DYHUB["46"]);
DYHUB["4a"]["BorderSizePixel"] = 0;
DYHUB["4a"]["BackgroundColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["4a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["4a"]["Size"] = UDim2.new(0, 5, 0, 0);
DYHUB["4a"]["Position"] = UDim2.new(0, 8, 0, 18);
DYHUB["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["4a"]["Name"] = [[Bar]];
DYHUB["4a"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.TabButton.Bar.UICorner
DYHUB["4b"] = Instance.new("UICorner", DYHUB["4a"]);
DYHUB["4b"]["CornerRadius"] = UDim.new(0, 100);


-- DYHUB.Templates.Button
DYHUB["4c"] = Instance.new("ImageButton", DYHUB["41"]);
DYHUB["4c"]["BorderSizePixel"] = 0;
DYHUB["4c"]["AutoButtonColor"] = false;
DYHUB["4c"]["Visible"] = false;
DYHUB["4c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["4c"]["Selectable"] = false;
DYHUB["4c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["4c"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["4c"]["Name"] = [[Button]];
DYHUB["4c"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- DYHUB.Templates.Button.UICorner
DYHUB["4d"] = Instance.new("UICorner", DYHUB["4c"]);
DYHUB["4d"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Button.Frame
DYHUB["4e"] = Instance.new("Frame", DYHUB["4c"]);
DYHUB["4e"]["BorderSizePixel"] = 0;
DYHUB["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["4e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["4e"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["4e"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Button.Frame.UIListLayout
DYHUB["4f"] = Instance.new("UIListLayout", DYHUB["4e"]);
DYHUB["4f"]["Padding"] = UDim.new(0, 5);
DYHUB["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Button.Frame.UIPadding
DYHUB["50"] = Instance.new("UIPadding", DYHUB["4e"]);
DYHUB["50"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["50"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["50"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["50"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Button.Frame.Title
DYHUB["51"] = Instance.new("TextLabel", DYHUB["4e"]);
DYHUB["51"]["TextWrapped"] = true;
DYHUB["51"]["Interactable"] = false;
DYHUB["51"]["BorderSizePixel"] = 0;
DYHUB["51"]["TextSize"] = 16;
DYHUB["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["51"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["51"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["51"]["BackgroundTransparency"] = 1;
DYHUB["51"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["51"]["Text"] = [[Button]];
DYHUB["51"]["Name"] = [[Title]];


-- DYHUB.Templates.Button.Frame.Title.ClickIcon
DYHUB["52"] = Instance.new("ImageButton", DYHUB["51"]);
DYHUB["52"]["BorderSizePixel"] = 0;
DYHUB["52"]["AutoButtonColor"] = false;
DYHUB["52"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["52"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["52"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["52"]["Image"] = [[rbxassetid://91877599529856]];
DYHUB["52"]["Size"] = UDim2.new(0, 23, 0, 23);
DYHUB["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["52"]["Name"] = [[ClickIcon]];
DYHUB["52"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- DYHUB.Templates.Button.Frame.Description
DYHUB["53"] = Instance.new("TextLabel", DYHUB["4e"]);
DYHUB["53"]["TextWrapped"] = true;
DYHUB["53"]["Interactable"] = false;
DYHUB["53"]["BorderSizePixel"] = 0;
DYHUB["53"]["TextSize"] = 16;
DYHUB["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["53"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["53"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["53"]["BackgroundTransparency"] = 1;
DYHUB["53"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["53"]["Visible"] = false;
DYHUB["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["53"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["53"]["LayoutOrder"] = 1;
DYHUB["53"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["53"]["Name"] = [[Description]];


-- DYHUB.Templates.Button.Frame.UIGradient
DYHUB["54"] = Instance.new("UIGradient", DYHUB["4e"]);
DYHUB["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Button.Frame.UIGradient
DYHUB["55"] = Instance.new("UIGradient", DYHUB["4e"]);
DYHUB["55"]["Enabled"] = false;
DYHUB["55"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Button.Frame.UIGradient
DYHUB["56"] = Instance.new("UIGradient", DYHUB["4e"]);
DYHUB["56"]["Enabled"] = false;
DYHUB["56"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Button.Frame.UICorner
DYHUB["57"] = Instance.new("UICorner", DYHUB["4e"]);
DYHUB["57"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Button.UIStroke
DYHUB["58"] = Instance.new("UIStroke", DYHUB["4c"]);
DYHUB["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["58"]["Thickness"] = 1.5;
DYHUB["58"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Paragraph
DYHUB["59"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["59"]["Visible"] = false;
DYHUB["59"]["BorderSizePixel"] = 0;
DYHUB["59"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["59"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["59"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["59"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
DYHUB["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["59"]["Name"] = [[Paragraph]];


-- DYHUB.Templates.Paragraph.UICorner
DYHUB["5a"] = Instance.new("UICorner", DYHUB["59"]);
DYHUB["5a"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Paragraph.UIStroke
DYHUB["5b"] = Instance.new("UIStroke", DYHUB["59"]);
DYHUB["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["5b"]["Thickness"] = 1.5;
DYHUB["5b"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Paragraph.Title
DYHUB["5c"] = Instance.new("TextLabel", DYHUB["59"]);
DYHUB["5c"]["TextWrapped"] = true;
DYHUB["5c"]["Interactable"] = false;
DYHUB["5c"]["BorderSizePixel"] = 0;
DYHUB["5c"]["TextSize"] = 16;
DYHUB["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["5c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["5c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["5c"]["BackgroundTransparency"] = 1;
DYHUB["5c"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["5c"]["Text"] = [[Title]];
DYHUB["5c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["5c"]["Name"] = [[Title]];


-- DYHUB.Templates.Paragraph.UIPadding
DYHUB["5d"] = Instance.new("UIPadding", DYHUB["59"]);
DYHUB["5d"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["5d"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["5d"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["5d"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Paragraph.UIListLayout
DYHUB["5e"] = Instance.new("UIListLayout", DYHUB["59"]);
DYHUB["5e"]["Padding"] = UDim.new(0, 5);
DYHUB["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Paragraph.Description
DYHUB["5f"] = Instance.new("TextLabel", DYHUB["59"]);
DYHUB["5f"]["TextWrapped"] = true;
DYHUB["5f"]["Interactable"] = false;
DYHUB["5f"]["BorderSizePixel"] = 0;
DYHUB["5f"]["TextSize"] = 16;
DYHUB["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["5f"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["5f"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["5f"]["BackgroundTransparency"] = 1;
DYHUB["5f"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["5f"]["Visible"] = false;
DYHUB["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["5f"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["5f"]["LayoutOrder"] = 1;
DYHUB["5f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["5f"]["Name"] = [[Description]];


-- DYHUB.Templates.Toggle
DYHUB["60"] = Instance.new("ImageButton", DYHUB["41"]);
DYHUB["60"]["BorderSizePixel"] = 0;
DYHUB["60"]["AutoButtonColor"] = false;
DYHUB["60"]["Visible"] = false;
DYHUB["60"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["60"]["Selectable"] = false;
DYHUB["60"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["60"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["60"]["Name"] = [[Toggle]];
DYHUB["60"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- DYHUB.Templates.Toggle.UICorner
DYHUB["61"] = Instance.new("UICorner", DYHUB["60"]);
DYHUB["61"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Toggle.UIStroke
DYHUB["62"] = Instance.new("UIStroke", DYHUB["60"]);
DYHUB["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["62"]["Thickness"] = 1.5;
DYHUB["62"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Toggle.UIPadding
DYHUB["63"] = Instance.new("UIPadding", DYHUB["60"]);
DYHUB["63"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["63"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["63"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["63"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Toggle.UIListLayout
DYHUB["64"] = Instance.new("UIListLayout", DYHUB["60"]);
DYHUB["64"]["Padding"] = UDim.new(0, 5);
DYHUB["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Toggle.Description
DYHUB["65"] = Instance.new("TextLabel", DYHUB["60"]);
DYHUB["65"]["TextWrapped"] = true;
DYHUB["65"]["Interactable"] = false;
DYHUB["65"]["BorderSizePixel"] = 0;
DYHUB["65"]["TextSize"] = 16;
DYHUB["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["65"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["65"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["65"]["BackgroundTransparency"] = 1;
DYHUB["65"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["65"]["Visible"] = false;
DYHUB["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["65"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["65"]["LayoutOrder"] = 1;
DYHUB["65"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["65"]["Name"] = [[Description]];


-- DYHUB.Templates.Toggle.Title
DYHUB["66"] = Instance.new("TextLabel", DYHUB["60"]);
DYHUB["66"]["TextWrapped"] = true;
DYHUB["66"]["BorderSizePixel"] = 0;
DYHUB["66"]["TextSize"] = 16;
DYHUB["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["66"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["66"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["66"]["BackgroundTransparency"] = 1;
DYHUB["66"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["66"]["Text"] = [[Toggle]];
DYHUB["66"]["Name"] = [[Title]];


-- DYHUB.Templates.Toggle.Title.Fill
DYHUB["67"] = Instance.new("ImageButton", DYHUB["66"]);
DYHUB["67"]["BorderSizePixel"] = 0;
DYHUB["67"]["AutoButtonColor"] = false;
DYHUB["67"]["BackgroundColor3"] = Color3.fromRGB(54, 57, 63);
DYHUB["67"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["67"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["67"]["Size"] = UDim2.new(0, 45, 0, 25);
DYHUB["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["67"]["Name"] = [[Fill]];
DYHUB["67"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- DYHUB.Templates.Toggle.Title.Fill.UICorner
DYHUB["68"] = Instance.new("UICorner", DYHUB["67"]);
DYHUB["68"]["CornerRadius"] = UDim.new(100, 0);


-- DYHUB.Templates.Toggle.Title.Fill.Ball
DYHUB["69"] = Instance.new("ImageButton", DYHUB["67"]);
DYHUB["69"]["Active"] = false;
DYHUB["69"]["Interactable"] = false;
DYHUB["69"]["BorderSizePixel"] = 0;
DYHUB["69"]["AutoButtonColor"] = false;
DYHUB["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["69"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["69"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["69"]["Name"] = [[Ball]];
DYHUB["69"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- DYHUB.Templates.Toggle.Title.Fill.Ball.UICorner
DYHUB["6a"] = Instance.new("UICorner", DYHUB["69"]);
DYHUB["6a"]["CornerRadius"] = UDim.new(100, 0);


-- DYHUB.Templates.Toggle.Title.Fill.Ball.Icon
DYHUB["6b"] = Instance.new("ImageLabel", DYHUB["69"]);
DYHUB["6b"]["BorderSizePixel"] = 0;
DYHUB["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["6b"]["ImageColor3"] = Color3.fromRGB(54, 57, 63);
DYHUB["6b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["6b"]["Size"] = UDim2.new(1, -5, 1, -5);
DYHUB["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["6b"]["BackgroundTransparency"] = 1;
DYHUB["6b"]["Name"] = [[Icon]];
DYHUB["6b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.Toggle.Title.Fill.UIPadding
DYHUB["6c"] = Instance.new("UIPadding", DYHUB["67"]);
DYHUB["6c"]["PaddingTop"] = UDim.new(0, 2);
DYHUB["6c"]["PaddingRight"] = UDim.new(0, 2);
DYHUB["6c"]["PaddingLeft"] = UDim.new(0, 2);
DYHUB["6c"]["PaddingBottom"] = UDim.new(0, 2);


-- DYHUB.Templates.Notification
DYHUB["6d"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["6d"]["Visible"] = false;
DYHUB["6d"]["BorderSizePixel"] = 0;
DYHUB["6d"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["6d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["6d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["6d"]["Size"] = UDim2.new(1, 0, 0, 65);
DYHUB["6d"]["Position"] = UDim2.new(0.8244, 0, 0.88221, 0);
DYHUB["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["6d"]["Name"] = [[Notification]];
DYHUB["6d"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Notification.Items
DYHUB["6e"] = Instance.new("CanvasGroup", DYHUB["6d"]);
DYHUB["6e"]["ZIndex"] = 2;
DYHUB["6e"]["BorderSizePixel"] = 0;
DYHUB["6e"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["6e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["6e"]["Size"] = UDim2.new(0, 265, 0, 70);
DYHUB["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["6e"]["Name"] = [[Items]];


-- DYHUB.Templates.Notification.Items.Frame
DYHUB["6f"] = Instance.new("Frame", DYHUB["6e"]);
DYHUB["6f"]["BorderSizePixel"] = 0;
DYHUB["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["6f"]["Size"] = UDim2.new(0, 265, 0, 70);
DYHUB["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["6f"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Notification.Items.Frame.UIListLayout
DYHUB["70"] = Instance.new("UIListLayout", DYHUB["6f"]);
DYHUB["70"]["Padding"] = UDim.new(0, 5);
DYHUB["70"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Notification.Items.Frame.UIPadding
DYHUB["71"] = Instance.new("UIPadding", DYHUB["6f"]);
DYHUB["71"]["PaddingTop"] = UDim.new(0, 15);
DYHUB["71"]["PaddingLeft"] = UDim.new(0, 15);
DYHUB["71"]["PaddingBottom"] = UDim.new(0, 15);


-- DYHUB.Templates.Notification.Items.Frame.SubContent
DYHUB["72"] = Instance.new("TextLabel", DYHUB["6f"]);
DYHUB["72"]["TextWrapped"] = true;
DYHUB["72"]["BorderSizePixel"] = 0;
DYHUB["72"]["TextSize"] = 12;
DYHUB["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DYHUB["72"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
DYHUB["72"]["BackgroundTransparency"] = 1;
DYHUB["72"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["72"]["Size"] = UDim2.new(0, 218, 0, 10);
DYHUB["72"]["Visible"] = false;
DYHUB["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["72"]["Text"] = [[This is a notification]];
DYHUB["72"]["LayoutOrder"] = 1;
DYHUB["72"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["72"]["Name"] = [[SubContent]];
DYHUB["72"]["Position"] = UDim2.new(0, 0, 0, 19);


-- DYHUB.Templates.Notification.Items.Frame.SubContent.UIGradient
DYHUB["73"] = Instance.new("UIGradient", DYHUB["72"]);
DYHUB["73"]["Enabled"] = false;
DYHUB["73"]["Rotation"] = -90;
DYHUB["73"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(180, 35, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Notification.Items.Frame.Title
DYHUB["74"] = Instance.new("TextLabel", DYHUB["6f"]);
DYHUB["74"]["TextWrapped"] = true;
DYHUB["74"]["BorderSizePixel"] = 0;
DYHUB["74"]["TextSize"] = 16;
DYHUB["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["74"]["TextScaled"] = true;
DYHUB["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["74"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["74"]["BackgroundTransparency"] = 1;
DYHUB["74"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["74"]["Size"] = UDim2.new(0, 235, 0, 18);
DYHUB["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["74"]["Text"] = [[Title]];
DYHUB["74"]["Name"] = [[Title]];
DYHUB["74"]["Position"] = UDim2.new(0, 0, 0, 9);


-- DYHUB.Templates.Notification.Items.Frame.Title.Close
DYHUB["75"] = Instance.new("ImageButton", DYHUB["74"]);
DYHUB["75"]["BorderSizePixel"] = 0;
DYHUB["75"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["75"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["75"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["75"]["Image"] = [[rbxassetid://132453323679056]];
DYHUB["75"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
DYHUB["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["75"]["Name"] = [[Close]];
DYHUB["75"]["Position"] = UDim2.new(0.92, 0, 0.5, 0);


-- DYHUB.Templates.Notification.Items.Frame.Title.Close.UIAspectRatioConstraint
DYHUB["76"] = Instance.new("UIAspectRatioConstraint", DYHUB["75"]);



-- DYHUB.Templates.Notification.Items.Frame.Title.UIPadding
DYHUB["77"] = Instance.new("UIPadding", DYHUB["74"]);
DYHUB["77"]["PaddingLeft"] = UDim.new(0, 30);


-- DYHUB.Templates.Notification.Items.Frame.Title.Icon
DYHUB["78"] = Instance.new("ImageButton", DYHUB["74"]);
DYHUB["78"]["BorderSizePixel"] = 0;
DYHUB["78"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["78"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["78"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["78"]["Image"] = [[rbxassetid://92049322344253]];
DYHUB["78"]["Size"] = UDim2.new(0.09706, 0, 1.33333, 0);
DYHUB["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["78"]["Name"] = [[Icon]];
DYHUB["78"]["Position"] = UDim2.new(0, -30, 0.5, 0);


-- DYHUB.Templates.Notification.Items.Frame.Title.Icon.UIAspectRatioConstraint
DYHUB["79"] = Instance.new("UIAspectRatioConstraint", DYHUB["78"]);



-- DYHUB.Templates.Notification.Items.Frame.Content
DYHUB["7a"] = Instance.new("TextLabel", DYHUB["6f"]);
DYHUB["7a"]["TextWrapped"] = true;
DYHUB["7a"]["BorderSizePixel"] = 0;
DYHUB["7a"]["TextSize"] = 16;
DYHUB["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["7a"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["7a"]["BackgroundTransparency"] = 1;
DYHUB["7a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["7a"]["Size"] = UDim2.new(0, 218, 0, 10);
DYHUB["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["7a"]["Text"] = [[Content]];
DYHUB["7a"]["LayoutOrder"] = 2;
DYHUB["7a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["7a"]["Name"] = [[Content]];
DYHUB["7a"]["Position"] = UDim2.new(0, 0, 0, 19);


-- DYHUB.Templates.Notification.Items.Frame.Content.UIGradient
DYHUB["7b"] = Instance.new("UIGradient", DYHUB["7a"]);
DYHUB["7b"]["Enabled"] = false;
DYHUB["7b"]["Rotation"] = -90;
DYHUB["7b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(180, 35, 80)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Notification.Items.TimerBarFill
DYHUB["7c"] = Instance.new("Frame", DYHUB["6e"]);
DYHUB["7c"]["BorderSizePixel"] = 0;
DYHUB["7c"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["7c"]["AnchorPoint"] = Vector2.new(0, 1);
DYHUB["7c"]["Size"] = UDim2.new(1, 0, 0, 5);
DYHUB["7c"]["Position"] = UDim2.new(0, 0, 1, 0);
DYHUB["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["7c"]["Name"] = [[TimerBarFill]];
DYHUB["7c"]["BackgroundTransparency"] = 0.7;


-- DYHUB.Templates.Notification.Items.TimerBarFill.UICorner
DYHUB["7d"] = Instance.new("UICorner", DYHUB["7c"]);



-- DYHUB.Templates.Notification.Items.TimerBarFill.Bar
DYHUB["7e"] = Instance.new("Frame", DYHUB["7c"]);
DYHUB["7e"]["BorderSizePixel"] = 0;
DYHUB["7e"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["7e"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["7e"]["Name"] = [[Bar]];


-- DYHUB.Templates.Notification.Items.TimerBarFill.Bar.UICorner
DYHUB["7f"] = Instance.new("UICorner", DYHUB["7e"]);



-- DYHUB.Templates.Notification.Items.UIStroke
DYHUB["80"] = Instance.new("UIStroke", DYHUB["6e"]);
DYHUB["80"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["80"]["Thickness"] = 1.5;
DYHUB["80"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Notification.Items.UICorner
DYHUB["81"] = Instance.new("UICorner", DYHUB["6e"]);



-- DYHUB.Templates.Slider
DYHUB["82"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["82"]["Visible"] = false;
DYHUB["82"]["BorderSizePixel"] = 0;
DYHUB["82"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["82"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["82"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["82"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
DYHUB["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["82"]["Name"] = [[Slider]];


-- DYHUB.Templates.Slider.UICorner
DYHUB["83"] = Instance.new("UICorner", DYHUB["82"]);
DYHUB["83"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Slider.UIStroke
DYHUB["84"] = Instance.new("UIStroke", DYHUB["82"]);
DYHUB["84"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["84"]["Thickness"] = 1.5;
DYHUB["84"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Slider.Title
DYHUB["85"] = Instance.new("TextLabel", DYHUB["82"]);
DYHUB["85"]["TextWrapped"] = true;
DYHUB["85"]["Interactable"] = false;
DYHUB["85"]["BorderSizePixel"] = 0;
DYHUB["85"]["TextSize"] = 16;
DYHUB["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["85"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["85"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["85"]["BackgroundTransparency"] = 1;
DYHUB["85"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["85"]["Text"] = [[Slider]];
DYHUB["85"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["85"]["Name"] = [[Title]];


-- DYHUB.Templates.Slider.UIPadding
DYHUB["86"] = Instance.new("UIPadding", DYHUB["82"]);
DYHUB["86"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["86"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["86"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["86"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Slider.UIListLayout
DYHUB["87"] = Instance.new("UIListLayout", DYHUB["82"]);
DYHUB["87"]["Padding"] = UDim.new(0, 5);
DYHUB["87"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Slider.Description
DYHUB["88"] = Instance.new("TextLabel", DYHUB["82"]);
DYHUB["88"]["TextWrapped"] = true;
DYHUB["88"]["Interactable"] = false;
DYHUB["88"]["BorderSizePixel"] = 0;
DYHUB["88"]["TextSize"] = 16;
DYHUB["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["88"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["88"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["88"]["BackgroundTransparency"] = 1;
DYHUB["88"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["88"]["Visible"] = false;
DYHUB["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["88"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["88"]["LayoutOrder"] = 1;
DYHUB["88"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["88"]["Name"] = [[Description]];


-- DYHUB.Templates.Slider.SliderFrame
DYHUB["89"] = Instance.new("Frame", DYHUB["82"]);
DYHUB["89"]["ZIndex"] = 0;
DYHUB["89"]["BorderSizePixel"] = 0;
DYHUB["89"]["Size"] = UDim2.new(1, 0, 0, 25);
DYHUB["89"]["Name"] = [[SliderFrame]];
DYHUB["89"]["LayoutOrder"] = 2;
DYHUB["89"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Slider.SliderFrame.Frame
DYHUB["8a"] = Instance.new("Frame", DYHUB["89"]);
DYHUB["8a"]["ZIndex"] = 0;
DYHUB["8a"]["BorderSizePixel"] = 0;
DYHUB["8a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["8a"]["Size"] = UDim2.new(1, 0, 0, 20);
DYHUB["8a"]["Position"] = UDim2.new(0, 0, 0.5, 0);
DYHUB["8a"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Slider.SliderFrame.Frame.DropShadow
DYHUB["8b"] = Instance.new("ImageLabel", DYHUB["8a"]);
DYHUB["8b"]["ZIndex"] = 0;
DYHUB["8b"]["BorderSizePixel"] = 0;
DYHUB["8b"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
DYHUB["8b"]["ScaleType"] = Enum.ScaleType.Slice;
DYHUB["8b"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["8b"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["8b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["8b"]["Image"] = [[rbxassetid://6014261993]];
DYHUB["8b"]["Size"] = UDim2.new(1, 25, 1, 25);
DYHUB["8b"]["BackgroundTransparency"] = 1;
DYHUB["8b"]["Name"] = [[DropShadow]];
DYHUB["8b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider
DYHUB["8c"] = Instance.new("CanvasGroup", DYHUB["8a"]);
DYHUB["8c"]["BorderSizePixel"] = 0;
DYHUB["8c"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["8c"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["8c"]["Name"] = [[Slider]];


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.UICorner
DYHUB["8d"] = Instance.new("UICorner", DYHUB["8c"]);
DYHUB["8d"]["CornerRadius"] = UDim.new(0, 5);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.UIStroke
DYHUB["8e"] = Instance.new("UIStroke", DYHUB["8c"]);
DYHUB["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["8e"]["Thickness"] = 1.5;
DYHUB["8e"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.UIPadding
DYHUB["8f"] = Instance.new("UIPadding", DYHUB["8c"]);
DYHUB["8f"]["PaddingTop"] = UDim.new(0, 2);
DYHUB["8f"]["PaddingRight"] = UDim.new(0, 2);
DYHUB["8f"]["PaddingLeft"] = UDim.new(0, 2);
DYHUB["8f"]["PaddingBottom"] = UDim.new(0, 2);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Trigger
DYHUB["90"] = Instance.new("TextButton", DYHUB["8c"]);
DYHUB["90"]["BorderSizePixel"] = 0;
DYHUB["90"]["TextSize"] = 14;
DYHUB["90"]["AutoButtonColor"] = false;
DYHUB["90"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
DYHUB["90"]["BackgroundTransparency"] = 1;
DYHUB["90"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["90"]["Text"] = [[]];
DYHUB["90"]["Name"] = [[Trigger]];


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill
DYHUB["91"] = Instance.new("ImageButton", DYHUB["8c"]);
DYHUB["91"]["Active"] = false;
DYHUB["91"]["Interactable"] = false;
DYHUB["91"]["BorderSizePixel"] = 0;
DYHUB["91"]["AutoButtonColor"] = false;
DYHUB["91"]["BackgroundTransparency"] = 1;
DYHUB["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["91"]["Selectable"] = false;
DYHUB["91"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["91"]["Size"] = UDim2.new(0, 0, 1, 0);
DYHUB["91"]["ClipsDescendants"] = true;
DYHUB["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["91"]["Name"] = [[Fill]];
DYHUB["91"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.UICorner
DYHUB["92"] = Instance.new("UICorner", DYHUB["91"]);
DYHUB["92"]["CornerRadius"] = UDim.new(0, 4);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.UIStroke
DYHUB["93"] = Instance.new("UIStroke", DYHUB["91"]);
DYHUB["93"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["93"]["Thickness"] = 1.5;
DYHUB["93"]["Color"] = Color3.fromRGB(220, 45, 95);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient
DYHUB["94"] = Instance.new("ImageButton", DYHUB["91"]);
DYHUB["94"]["Active"] = false;
DYHUB["94"]["Interactable"] = false;
DYHUB["94"]["BorderSizePixel"] = 0;
DYHUB["94"]["AutoButtonColor"] = false;
DYHUB["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["94"]["Selectable"] = false;
DYHUB["94"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["94"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["94"]["Name"] = [[BackgroundGradient]];
DYHUB["94"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UICorner
DYHUB["95"] = Instance.new("UICorner", DYHUB["94"]);
DYHUB["95"]["CornerRadius"] = UDim.new(0, 4);


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
DYHUB["96"] = Instance.new("UIGradient", DYHUB["94"]);
DYHUB["96"]["Enabled"] = false;
DYHUB["96"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
DYHUB["97"] = Instance.new("UIGradient", DYHUB["94"]);
DYHUB["97"]["Enabled"] = false;
DYHUB["97"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Slider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.UIGradient
DYHUB["98"] = Instance.new("UIGradient", DYHUB["94"]);
DYHUB["98"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Slider.SliderFrame.Frame.ValueText
DYHUB["99"] = Instance.new("TextLabel", DYHUB["8a"]);
DYHUB["99"]["TextWrapped"] = true;
DYHUB["99"]["Interactable"] = false;
DYHUB["99"]["ZIndex"] = 2;
DYHUB["99"]["BorderSizePixel"] = 0;
DYHUB["99"]["TextSize"] = 14;
DYHUB["99"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["99"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["99"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["99"]["BackgroundTransparency"] = 1;
DYHUB["99"]["RichText"] = true;
DYHUB["99"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["99"]["Size"] = UDim2.new(1, -15, 1, 0);
DYHUB["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["99"]["Text"] = [[0]];
DYHUB["99"]["Name"] = [[ValueText]];
DYHUB["99"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.TextBox
DYHUB["9a"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["9a"]["Visible"] = false;
DYHUB["9a"]["BorderSizePixel"] = 0;
DYHUB["9a"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["9a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["9a"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["9a"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
DYHUB["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["9a"]["Name"] = [[TextBox]];


-- DYHUB.Templates.TextBox.UICorner
DYHUB["9b"] = Instance.new("UICorner", DYHUB["9a"]);
DYHUB["9b"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.TextBox.UIStroke
DYHUB["9c"] = Instance.new("UIStroke", DYHUB["9a"]);
DYHUB["9c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["9c"]["Thickness"] = 1.5;
DYHUB["9c"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.TextBox.Title
DYHUB["9d"] = Instance.new("TextLabel", DYHUB["9a"]);
DYHUB["9d"]["TextWrapped"] = true;
DYHUB["9d"]["Interactable"] = false;
DYHUB["9d"]["BorderSizePixel"] = 0;
DYHUB["9d"]["TextSize"] = 16;
DYHUB["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["9d"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["9d"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["9d"]["BackgroundTransparency"] = 1;
DYHUB["9d"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["9d"]["Text"] = [[Input Textbox]];
DYHUB["9d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["9d"]["Name"] = [[Title]];


-- DYHUB.Templates.TextBox.UIPadding
DYHUB["9e"] = Instance.new("UIPadding", DYHUB["9a"]);
DYHUB["9e"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["9e"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["9e"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["9e"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.TextBox.UIListLayout
DYHUB["9f"] = Instance.new("UIListLayout", DYHUB["9a"]);
DYHUB["9f"]["Padding"] = UDim.new(0, 10);
DYHUB["9f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.TextBox.Description
DYHUB["a0"] = Instance.new("TextLabel", DYHUB["9a"]);
DYHUB["a0"]["TextWrapped"] = true;
DYHUB["a0"]["Interactable"] = false;
DYHUB["a0"]["BorderSizePixel"] = 0;
DYHUB["a0"]["TextSize"] = 16;
DYHUB["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["a0"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["a0"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["a0"]["BackgroundTransparency"] = 1;
DYHUB["a0"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["a0"]["Visible"] = false;
DYHUB["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["a0"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["a0"]["LayoutOrder"] = 1;
DYHUB["a0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a0"]["Name"] = [[Description]];


-- DYHUB.Templates.TextBox.BoxFrame
DYHUB["a1"] = Instance.new("Frame", DYHUB["9a"]);
DYHUB["a1"]["ZIndex"] = 0;
DYHUB["a1"]["BorderSizePixel"] = 0;
DYHUB["a1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a1"]["Size"] = UDim2.new(1, 0, 0, 25);
DYHUB["a1"]["Name"] = [[BoxFrame]];
DYHUB["a1"]["LayoutOrder"] = 2;
DYHUB["a1"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.TextBox.BoxFrame.DropShadow
DYHUB["a2"] = Instance.new("ImageLabel", DYHUB["a1"]);
DYHUB["a2"]["ZIndex"] = 0;
DYHUB["a2"]["BorderSizePixel"] = 0;
DYHUB["a2"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
DYHUB["a2"]["ScaleType"] = Enum.ScaleType.Slice;
DYHUB["a2"]["ImageTransparency"] = 0.75;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["a2"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["a2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["a2"]["Image"] = [[rbxassetid://6014261993]];
DYHUB["a2"]["Size"] = UDim2.new(1, 35, 1, 30);
DYHUB["a2"]["BackgroundTransparency"] = 1;
DYHUB["a2"]["Name"] = [[DropShadow]];
DYHUB["a2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.TextBox.BoxFrame.Frame
DYHUB["a3"] = Instance.new("Frame", DYHUB["a1"]);
DYHUB["a3"]["BorderSizePixel"] = 0;
DYHUB["a3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["a3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a3"]["Size"] = UDim2.new(1, 0, 0, 25);
DYHUB["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- DYHUB.Templates.TextBox.BoxFrame.Frame.UICorner
DYHUB["a4"] = Instance.new("UICorner", DYHUB["a3"]);
DYHUB["a4"]["CornerRadius"] = UDim.new(0, 5);


-- DYHUB.Templates.TextBox.BoxFrame.Frame.UIStroke
DYHUB["a5"] = Instance.new("UIStroke", DYHUB["a3"]);
DYHUB["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["a5"]["Thickness"] = 1.5;
DYHUB["a5"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.TextBox.BoxFrame.Frame.UIListLayout
DYHUB["a6"] = Instance.new("UIListLayout", DYHUB["a3"]);
DYHUB["a6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DYHUB["a6"]["Padding"] = UDim.new(0, 5);
DYHUB["a6"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["a6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.TextBox.BoxFrame.Frame.TextBox
DYHUB["a7"] = Instance.new("TextBox", DYHUB["a3"]);
DYHUB["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["a7"]["PlaceholderColor3"] = Color3.fromRGB(140, 140, 140);
DYHUB["a7"]["BorderSizePixel"] = 0;
DYHUB["a7"]["TextWrapped"] = true;
DYHUB["a7"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
DYHUB["a7"]["TextSize"] = 14;
DYHUB["a7"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["a7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["a7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a7"]["ClipsDescendants"] = true;
DYHUB["a7"]["PlaceholderText"] = [[Input here...]];
DYHUB["a7"]["Size"] = UDim2.new(1, 0, 0, 25);
DYHUB["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["a7"]["Text"] = [[]];
DYHUB["a7"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.TextBox.BoxFrame.Frame.TextBox.UIPadding
DYHUB["a8"] = Instance.new("UIPadding", DYHUB["a7"]);
DYHUB["a8"]["PaddingTop"] = UDim.new(0, 5);
DYHUB["a8"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["a8"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["a8"]["PaddingBottom"] = UDim.new(0, 5);


-- DYHUB.Templates.Dropdown
DYHUB["a9"] = Instance.new("ImageButton", DYHUB["41"]);
DYHUB["a9"]["BorderSizePixel"] = 0;
DYHUB["a9"]["AutoButtonColor"] = false;
DYHUB["a9"]["Visible"] = false;
DYHUB["a9"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["a9"]["Selectable"] = false;
DYHUB["a9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["a9"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["a9"]["Name"] = [[Dropdown]];
DYHUB["a9"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);


-- DYHUB.Templates.Dropdown.UICorner
DYHUB["aa"] = Instance.new("UICorner", DYHUB["a9"]);
DYHUB["aa"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Dropdown.UIStroke
DYHUB["ab"] = Instance.new("UIStroke", DYHUB["a9"]);
DYHUB["ab"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["ab"]["Thickness"] = 1.5;
DYHUB["ab"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Dropdown.Title
DYHUB["ac"] = Instance.new("TextLabel", DYHUB["a9"]);
DYHUB["ac"]["TextWrapped"] = true;
DYHUB["ac"]["BorderSizePixel"] = 0;
DYHUB["ac"]["TextSize"] = 16;
DYHUB["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["ac"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["ac"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["ac"]["BackgroundTransparency"] = 1;
DYHUB["ac"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["ac"]["Text"] = [[Dropdown]];
DYHUB["ac"]["Name"] = [[Title]];
DYHUB["ac"]["Position"] = UDim2.new(0.03135, 0, 0, 0);


-- DYHUB.Templates.Dropdown.Title.ClickIcon
DYHUB["ad"] = Instance.new("ImageButton", DYHUB["ac"]);
DYHUB["ad"]["BorderSizePixel"] = 0;
DYHUB["ad"]["AutoButtonColor"] = false;
DYHUB["ad"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["ad"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["ad"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["ad"]["Image"] = [[rbxassetid://77563793724007]];
DYHUB["ad"]["Size"] = UDim2.new(0, 23, 0, 23);
DYHUB["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["ad"]["Name"] = [[ClickIcon]];
DYHUB["ad"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- DYHUB.Templates.Dropdown.Title.BoxFrame
DYHUB["ae"] = Instance.new("ImageButton", DYHUB["ac"]);
DYHUB["ae"]["Active"] = false;
DYHUB["ae"]["BorderSizePixel"] = 0;
DYHUB["ae"]["BackgroundTransparency"] = 1;
DYHUB["ae"]["Selectable"] = false;
DYHUB["ae"]["ZIndex"] = 0;
DYHUB["ae"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["ae"]["AutomaticSize"] = Enum.AutomaticSize.X;
DYHUB["ae"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["ae"]["Name"] = [[BoxFrame]];
DYHUB["ae"]["Position"] = UDim2.new(1, -33, 0.5, 0);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.DropShadow
DYHUB["af"] = Instance.new("ImageLabel", DYHUB["ae"]);
DYHUB["af"]["Interactable"] = false;
DYHUB["af"]["ZIndex"] = 0;
DYHUB["af"]["BorderSizePixel"] = 0;
DYHUB["af"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
DYHUB["af"]["ScaleType"] = Enum.ScaleType.Slice;
DYHUB["af"]["ImageTransparency"] = 0.75;
DYHUB["af"]["AutomaticSize"] = Enum.AutomaticSize.X;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["af"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["af"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["af"]["Image"] = [[rbxassetid://6014261993]];
DYHUB["af"]["Size"] = UDim2.new(1, 28, 1, 28);
DYHUB["af"]["Visible"] = false;
DYHUB["af"]["BackgroundTransparency"] = 1;
DYHUB["af"]["Name"] = [[DropShadow]];
DYHUB["af"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger
DYHUB["b0"] = Instance.new("ImageButton", DYHUB["ae"]);
DYHUB["b0"]["BorderSizePixel"] = 0;
DYHUB["b0"]["AutoButtonColor"] = false;
DYHUB["b0"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["b0"]["Selectable"] = false;
DYHUB["b0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["b0"]["AutomaticSize"] = Enum.AutomaticSize.X;
DYHUB["b0"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["b0"]["Name"] = [[Trigger]];
DYHUB["b0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger.UICorner
DYHUB["b1"] = Instance.new("UICorner", DYHUB["b0"]);
DYHUB["b1"]["CornerRadius"] = UDim.new(0, 5);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger.UIStroke
DYHUB["b2"] = Instance.new("UIStroke", DYHUB["b0"]);
DYHUB["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["b2"]["Thickness"] = 1.5;
DYHUB["b2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger.UIListLayout
DYHUB["b3"] = Instance.new("UIListLayout", DYHUB["b0"]);
DYHUB["b3"]["Padding"] = UDim.new(0, 5);
DYHUB["b3"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["b3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger.Title
DYHUB["b4"] = Instance.new("TextLabel", DYHUB["b0"]);
DYHUB["b4"]["TextWrapped"] = true;
DYHUB["b4"]["Interactable"] = false;
DYHUB["b4"]["BorderSizePixel"] = 0;
DYHUB["b4"]["TextSize"] = 16;
DYHUB["b4"]["TextScaled"] = true;
DYHUB["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["b4"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["b4"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["b4"]["BackgroundTransparency"] = 1;
DYHUB["b4"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["b4"]["Size"] = UDim2.new(0, 15, 0, 14);
DYHUB["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["b4"]["Text"] = [[]];
DYHUB["b4"]["AutomaticSize"] = Enum.AutomaticSize.X;
DYHUB["b4"]["Name"] = [[Title]];
DYHUB["b4"]["Position"] = UDim2.new(-0.00345, 0, 0.5, 0);


-- DYHUB.Templates.Dropdown.Title.BoxFrame.Trigger.UIPadding
DYHUB["b5"] = Instance.new("UIPadding", DYHUB["b0"]);
DYHUB["b5"]["PaddingRight"] = UDim.new(0, 5);
DYHUB["b5"]["PaddingLeft"] = UDim.new(0, 5);


-- DYHUB.Templates.Dropdown.UIPadding
DYHUB["b6"] = Instance.new("UIPadding", DYHUB["a9"]);
DYHUB["b6"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["b6"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["b6"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["b6"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Dropdown.UIListLayout
DYHUB["b7"] = Instance.new("UIListLayout", DYHUB["a9"]);
DYHUB["b7"]["Padding"] = UDim.new(0, 5);
DYHUB["b7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Dropdown.Description
DYHUB["b8"] = Instance.new("TextLabel", DYHUB["a9"]);
DYHUB["b8"]["TextWrapped"] = true;
DYHUB["b8"]["Interactable"] = false;
DYHUB["b8"]["BorderSizePixel"] = 0;
DYHUB["b8"]["TextSize"] = 16;
DYHUB["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["b8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["b8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["b8"]["BackgroundTransparency"] = 1;
DYHUB["b8"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["b8"]["Visible"] = false;
DYHUB["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["b8"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["b8"]["LayoutOrder"] = 1;
DYHUB["b8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["b8"]["Name"] = [[Description]];


-- DYHUB.Templates.Dropdown.UIGradient
DYHUB["b9"] = Instance.new("UIGradient", DYHUB["a9"]);
DYHUB["b9"]["Enabled"] = false;
DYHUB["b9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Dropdown.UIGradient
DYHUB["ba"] = Instance.new("UIGradient", DYHUB["a9"]);
DYHUB["ba"]["Enabled"] = false;
DYHUB["ba"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Dropdown.UIGradient
DYHUB["bb"] = Instance.new("UIGradient", DYHUB["a9"]);
DYHUB["bb"]["Enabled"] = false;
DYHUB["bb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.DropdownList
DYHUB["bc"] = Instance.new("Folder", DYHUB["41"]);
DYHUB["bc"]["Name"] = [[DropdownList]];


-- DYHUB.Templates.DropdownList.DropdownItems
DYHUB["bd"] = Instance.new("ScrollingFrame", DYHUB["bc"]);
DYHUB["bd"]["Visible"] = false;
DYHUB["bd"]["Active"] = true;
DYHUB["bd"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
DYHUB["bd"]["BorderSizePixel"] = 0;
DYHUB["bd"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DYHUB["bd"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
DYHUB["bd"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["bd"]["Name"] = [[DropdownItems]];
DYHUB["bd"]["Selectable"] = false;
DYHUB["bd"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["bd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DYHUB["bd"]["Size"] = UDim2.new(1, 0, 1, -50);
DYHUB["bd"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
DYHUB["bd"]["Position"] = UDim2.new(0, 0, 0, 50);
DYHUB["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["bd"]["ScrollBarThickness"] = 5;
DYHUB["bd"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DropdownList.DropdownItems.UIListLayout
DYHUB["be"] = Instance.new("UIListLayout", DYHUB["bd"]);
DYHUB["be"]["Padding"] = UDim.new(0, 15);
DYHUB["be"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DropdownList.DropdownItems.UIPadding
DYHUB["bf"] = Instance.new("UIPadding", DYHUB["bd"]);
DYHUB["bf"]["PaddingTop"] = UDim.new(0, 2);
DYHUB["bf"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["bf"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["bf"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.DropdownList.DropdownItemsSearch
DYHUB["c0"] = Instance.new("ScrollingFrame", DYHUB["bc"]);
DYHUB["c0"]["Visible"] = false;
DYHUB["c0"]["Active"] = true;
DYHUB["c0"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
DYHUB["c0"]["BorderSizePixel"] = 0;
DYHUB["c0"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
DYHUB["c0"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
DYHUB["c0"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["c0"]["Name"] = [[DropdownItemsSearch]];
DYHUB["c0"]["Selectable"] = false;
DYHUB["c0"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
DYHUB["c0"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
DYHUB["c0"]["Size"] = UDim2.new(1, 0, 1, -50);
DYHUB["c0"]["ScrollBarImageColor3"] = Color3.fromRGB(99, 106, 122);
DYHUB["c0"]["Position"] = UDim2.new(0, 0, 0, 50);
DYHUB["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["c0"]["ScrollBarThickness"] = 5;
DYHUB["c0"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DropdownList.DropdownItemsSearch.UIListLayout
DYHUB["c1"] = Instance.new("UIListLayout", DYHUB["c0"]);
DYHUB["c1"]["Padding"] = UDim.new(0, 15);
DYHUB["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DropdownList.DropdownItemsSearch.UIPadding
DYHUB["c2"] = Instance.new("UIPadding", DYHUB["c0"]);
DYHUB["c2"]["PaddingTop"] = UDim.new(0, 2);
DYHUB["c2"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["c2"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["c2"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.DropdownButton
DYHUB["c3"] = Instance.new("ImageButton", DYHUB["41"]);
DYHUB["c3"]["BorderSizePixel"] = 0;
DYHUB["c3"]["AutoButtonColor"] = false;
DYHUB["c3"]["Visible"] = false;
DYHUB["c3"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["c3"]["Selectable"] = false;
DYHUB["c3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["c3"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["c3"]["Name"] = [[DropdownButton]];
DYHUB["c3"]["Position"] = UDim2.new(0, 0, 0.384, 0);


-- DYHUB.Templates.DropdownButton.UICorner
DYHUB["c4"] = Instance.new("UICorner", DYHUB["c3"]);
DYHUB["c4"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.DropdownButton.Frame
DYHUB["c5"] = Instance.new("Frame", DYHUB["c3"]);
DYHUB["c5"]["BorderSizePixel"] = 0;
DYHUB["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["c5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["c5"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["c5"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DropdownButton.Frame.UIListLayout
DYHUB["c6"] = Instance.new("UIListLayout", DYHUB["c5"]);
DYHUB["c6"]["Padding"] = UDim.new(0, 5);
DYHUB["c6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DropdownButton.Frame.UIPadding
DYHUB["c7"] = Instance.new("UIPadding", DYHUB["c5"]);
DYHUB["c7"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["c7"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["c7"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["c7"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.DropdownButton.Frame.Title
DYHUB["c8"] = Instance.new("TextLabel", DYHUB["c5"]);
DYHUB["c8"]["TextWrapped"] = true;
DYHUB["c8"]["Interactable"] = false;
DYHUB["c8"]["BorderSizePixel"] = 0;
DYHUB["c8"]["TextSize"] = 16;
DYHUB["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["c8"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["c8"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["c8"]["BackgroundTransparency"] = 1;
DYHUB["c8"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["c8"]["Text"] = [[Button]];
DYHUB["c8"]["Name"] = [[Title]];


-- DYHUB.Templates.DropdownButton.Frame.Description
DYHUB["c9"] = Instance.new("TextLabel", DYHUB["c5"]);
DYHUB["c9"]["TextWrapped"] = true;
DYHUB["c9"]["Interactable"] = false;
DYHUB["c9"]["BorderSizePixel"] = 0;
DYHUB["c9"]["TextSize"] = 16;
DYHUB["c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["c9"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["c9"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["c9"]["BackgroundTransparency"] = 1;
DYHUB["c9"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["c9"]["Visible"] = false;
DYHUB["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["c9"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["c9"]["LayoutOrder"] = 1;
DYHUB["c9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["c9"]["Name"] = [[Description]];


-- DYHUB.Templates.DropdownButton.Frame.UIGradient
DYHUB["ca"] = Instance.new("UIGradient", DYHUB["c5"]);
DYHUB["ca"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.DropdownButton.Frame.UIGradient
DYHUB["cb"] = Instance.new("UIGradient", DYHUB["c5"]);
DYHUB["cb"]["Enabled"] = false;
DYHUB["cb"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.DropdownButton.Frame.UIGradient
DYHUB["cc"] = Instance.new("UIGradient", DYHUB["c5"]);
DYHUB["cc"]["Enabled"] = false;
DYHUB["cc"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.DropdownButton.Frame.UICorner
DYHUB["cd"] = Instance.new("UICorner", DYHUB["c5"]);
DYHUB["cd"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.DropdownButton.UIStroke
DYHUB["ce"] = Instance.new("UIStroke", DYHUB["c3"]);
DYHUB["ce"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["ce"]["Thickness"] = 1.5;
DYHUB["ce"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Code
DYHUB["cf"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["cf"]["Visible"] = false;
DYHUB["cf"]["BorderSizePixel"] = 0;
DYHUB["cf"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["cf"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["cf"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["cf"]["Position"] = UDim2.new(-0.0375, 0, 0.38434, 0);
DYHUB["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["cf"]["Name"] = [[Code]];


-- DYHUB.Templates.Code.UICorner
DYHUB["d0"] = Instance.new("UICorner", DYHUB["cf"]);
DYHUB["d0"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Code.UIStroke
DYHUB["d1"] = Instance.new("UIStroke", DYHUB["cf"]);
DYHUB["d1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["d1"]["Thickness"] = 1.5;
DYHUB["d1"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Code.Title
DYHUB["d2"] = Instance.new("TextLabel", DYHUB["cf"]);
DYHUB["d2"]["TextWrapped"] = true;
DYHUB["d2"]["Interactable"] = false;
DYHUB["d2"]["BorderSizePixel"] = 0;
DYHUB["d2"]["TextSize"] = 16;
DYHUB["d2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["d2"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["d2"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["d2"]["BackgroundTransparency"] = 1;
DYHUB["d2"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["d2"]["Text"] = [[Title]];
DYHUB["d2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["d2"]["Name"] = [[Title]];


-- DYHUB.Templates.Code.UIPadding
DYHUB["d3"] = Instance.new("UIPadding", DYHUB["cf"]);
DYHUB["d3"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["d3"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["d3"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["d3"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Code.UIListLayout
DYHUB["d4"] = Instance.new("UIListLayout", DYHUB["cf"]);
DYHUB["d4"]["Padding"] = UDim.new(0, 5);
DYHUB["d4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Code.Code
DYHUB["d5"] = Instance.new("TextBox", DYHUB["cf"]);
DYHUB["d5"]["Name"] = [[Code]];
DYHUB["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["d5"]["BorderSizePixel"] = 0;
DYHUB["d5"]["TextEditable"] = false;
DYHUB["d5"]["TextWrapped"] = true;
DYHUB["d5"]["TextSize"] = 16;
DYHUB["d5"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["d5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["d5"]["Selectable"] = false;
DYHUB["d5"]["MultiLine"] = true;
DYHUB["d5"]["ClearTextOnFocus"] = false;
DYHUB["d5"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["d5"]["Text"] = [[print("Hello World!")]];
DYHUB["d5"]["LayoutOrder"] = 1;
DYHUB["d5"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Section
DYHUB["d6"] = Instance.new("Frame", DYHUB["41"]);
DYHUB["d6"]["Visible"] = false;
DYHUB["d6"]["BorderSizePixel"] = 0;
DYHUB["d6"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["d6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["d6"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["d6"]["Position"] = UDim2.new(0, 0, 0.43728, 0);
DYHUB["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["d6"]["Name"] = [[Section]];
DYHUB["d6"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert SelectionImageObject, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- DYHUB.Templates.Section.Button
DYHUB["d7"] = Instance.new("ImageButton", DYHUB["d6"]);
DYHUB["d7"]["BorderSizePixel"] = 0;
DYHUB["d7"]["AutoButtonColor"] = false;
DYHUB["d7"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["d7"]["Selectable"] = false;
DYHUB["d7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["d7"]["Size"] = UDim2.new(1, 0, 0, 35);
DYHUB["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["d7"]["Name"] = [[Button]];


-- DYHUB.Templates.Section.Button.UICorner
DYHUB["d8"] = Instance.new("UICorner", DYHUB["d7"]);
DYHUB["d8"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.Section.Button.UIStroke
DYHUB["d9"] = Instance.new("UIStroke", DYHUB["d7"]);
DYHUB["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["d9"]["Thickness"] = 1.5;
DYHUB["d9"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Section.Button.Title
DYHUB["da"] = Instance.new("TextLabel", DYHUB["d7"]);
DYHUB["da"]["TextWrapped"] = true;
DYHUB["da"]["Interactable"] = false;
DYHUB["da"]["BorderSizePixel"] = 0;
DYHUB["da"]["TextSize"] = 16;
DYHUB["da"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["da"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["da"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["da"]["BackgroundTransparency"] = 1;
DYHUB["da"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["da"]["Text"] = [[Section]];
DYHUB["da"]["Name"] = [[Title]];


-- DYHUB.Templates.Section.Button.Title.Arrow
DYHUB["db"] = Instance.new("ImageButton", DYHUB["da"]);
DYHUB["db"]["BorderSizePixel"] = 0;
DYHUB["db"]["AutoButtonColor"] = false;
DYHUB["db"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["db"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["db"]["AnchorPoint"] = Vector2.new(1, 0.5);
DYHUB["db"]["Image"] = [[rbxassetid://120292618616139]];
DYHUB["db"]["Size"] = UDim2.new(0, 23, 0, 23);
DYHUB["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["db"]["Name"] = [[Arrow]];
DYHUB["db"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- DYHUB.Templates.Section.Button.UIPadding
DYHUB["dc"] = Instance.new("UIPadding", DYHUB["d7"]);
DYHUB["dc"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["dc"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["dc"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["dc"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.Section.Button.UIListLayout
DYHUB["dd"] = Instance.new("UIListLayout", DYHUB["d7"]);
DYHUB["dd"]["Padding"] = UDim.new(0, 5);
DYHUB["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Section.Button.Description
DYHUB["de"] = Instance.new("TextLabel", DYHUB["d7"]);
DYHUB["de"]["TextWrapped"] = true;
DYHUB["de"]["Interactable"] = false;
DYHUB["de"]["BorderSizePixel"] = 0;
DYHUB["de"]["TextSize"] = 16;
DYHUB["de"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["de"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
DYHUB["de"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["de"]["BackgroundTransparency"] = 1;
DYHUB["de"]["Size"] = UDim2.new(1, 0, 0, 15);
DYHUB["de"]["Visible"] = false;
DYHUB["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["de"]["Text"] = [[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus placerat lacus in enim congue, fermentum euismod leo ultricies. Nulla sodales. ]];
DYHUB["de"]["LayoutOrder"] = 1;
DYHUB["de"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["de"]["Name"] = [[Description]];


-- DYHUB.Templates.Section.Button.UIGradient
DYHUB["df"] = Instance.new("UIGradient", DYHUB["d7"]);
DYHUB["df"]["Enabled"] = false;
DYHUB["df"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Section.Button.UIGradient
DYHUB["e0"] = Instance.new("UIGradient", DYHUB["d7"]);
DYHUB["e0"]["Enabled"] = false;
DYHUB["e0"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 1)};
DYHUB["e0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Section.Button.UIGradient
DYHUB["e1"] = Instance.new("UIGradient", DYHUB["d7"]);
DYHUB["e1"]["Enabled"] = false;
DYHUB["e1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.160, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(0.320, Color3.fromRGB(255, 75, 135)),ColorSequenceKeypoint.new(0.540, Color3.fromRGB(165, 30, 75)),ColorSequenceKeypoint.new(0.782, Color3.fromRGB(255, 115, 165)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 75, 135))};


-- DYHUB.Templates.Section.Button.UIStroke
DYHUB["e2"] = Instance.new("UIStroke", DYHUB["d7"]);
DYHUB["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["e2"]["Thickness"] = 1.5;
DYHUB["e2"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.Section.Frame
DYHUB["e3"] = Instance.new("Frame", DYHUB["d6"]);
DYHUB["e3"]["Visible"] = false;
DYHUB["e3"]["BorderSizePixel"] = 0;
DYHUB["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 190, 215);
DYHUB["e3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["e3"]["Size"] = UDim2.new(1, 0, 0, 30);
DYHUB["e3"]["Position"] = UDim2.new(0, 0, 0, 35);
DYHUB["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["e3"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.Section.Frame.UIListLayout
DYHUB["e4"] = Instance.new("UIListLayout", DYHUB["e3"]);
DYHUB["e4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DYHUB["e4"]["Padding"] = UDim.new(0, 10);
DYHUB["e4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.Section.Frame.UIPadding
DYHUB["e5"] = Instance.new("UIPadding", DYHUB["e3"]);
DYHUB["e5"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["e5"]["PaddingRight"] = UDim.new(0, 8);
DYHUB["e5"]["PaddingLeft"] = UDim.new(0, 8);


-- DYHUB.Templates.Section.Frame.Divider
DYHUB["e6"] = Instance.new("Frame", DYHUB["e3"]);
DYHUB["e6"]["BorderSizePixel"] = 0;
DYHUB["e6"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["e6"]["Size"] = UDim2.new(1, 0, 0, 3);
DYHUB["e6"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["e6"]["Name"] = [[Divider]];


-- DYHUB.Templates.DialogElements
DYHUB["e7"] = Instance.new("Folder", DYHUB["41"]);
DYHUB["e7"]["Name"] = [[DialogElements]];


-- DYHUB.Templates.DialogElements.DarkOverlayDialog
DYHUB["e8"] = Instance.new("Frame", DYHUB["e7"]);
DYHUB["e8"]["Visible"] = false;
DYHUB["e8"]["BorderSizePixel"] = 0;
DYHUB["e8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["e8"]["Name"] = [[DarkOverlayDialog]];
DYHUB["e8"]["BackgroundTransparency"] = 0.6;


-- DYHUB.Templates.DialogElements.DarkOverlayDialog.UICorner
DYHUB["e9"] = Instance.new("UICorner", DYHUB["e8"]);
DYHUB["e9"]["CornerRadius"] = UDim.new(0, 10);


-- DYHUB.Templates.DialogElements.Dialog
DYHUB["ea"] = Instance.new("Frame", DYHUB["e7"]);
DYHUB["ea"]["Visible"] = false;
DYHUB["ea"]["ZIndex"] = 4;
DYHUB["ea"]["BorderSizePixel"] = 0;
DYHUB["ea"]["BackgroundColor3"] = Color3.fromRGB(32, 35, 41);
DYHUB["ea"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["ea"]["ClipsDescendants"] = true;
DYHUB["ea"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["ea"]["Size"] = UDim2.new(0, 250, 0, 0);
DYHUB["ea"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
DYHUB["ea"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["ea"]["Name"] = [[Dialog]];


-- DYHUB.Templates.DialogElements.Dialog.UICorner
DYHUB["eb"] = Instance.new("UICorner", DYHUB["ea"]);
DYHUB["eb"]["CornerRadius"] = UDim.new(0, 6);


-- DYHUB.Templates.DialogElements.Dialog.UIStroke
DYHUB["ec"] = Instance.new("UIStroke", DYHUB["ea"]);
DYHUB["ec"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["ec"]["Thickness"] = 1.5;
DYHUB["ec"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.DialogElements.Dialog.Title
DYHUB["ed"] = Instance.new("Frame", DYHUB["ea"]);
DYHUB["ed"]["BorderSizePixel"] = 0;
DYHUB["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["ed"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["ed"]["Size"] = UDim2.new(1, 0, 0, 25);
DYHUB["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["ed"]["Name"] = [[Title]];
DYHUB["ed"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DialogElements.Dialog.Title.TextLabel
DYHUB["ee"] = Instance.new("TextLabel", DYHUB["ed"]);
DYHUB["ee"]["Interactable"] = false;
DYHUB["ee"]["ZIndex"] = 0;
DYHUB["ee"]["BorderSizePixel"] = 0;
DYHUB["ee"]["TextSize"] = 20;
DYHUB["ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["ee"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["ee"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["ee"]["BackgroundTransparency"] = 1;
DYHUB["ee"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["ee"]["Size"] = UDim2.new(0, 0, 0, 20);
DYHUB["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["ee"]["Text"] = [[]];
DYHUB["ee"]["LayoutOrder"] = 1;
DYHUB["ee"]["AutomaticSize"] = Enum.AutomaticSize.XY;
DYHUB["ee"]["Position"] = UDim2.new(-0.05455, 12, 0.5, 0);


-- DYHUB.Templates.DialogElements.Dialog.Title.UIListLayout
DYHUB["ef"] = Instance.new("UIListLayout", DYHUB["ed"]);
DYHUB["ef"]["Padding"] = UDim.new(0, 10);
DYHUB["ef"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["ef"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
DYHUB["ef"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- DYHUB.Templates.DialogElements.Dialog.Title.UIPadding
DYHUB["f0"] = Instance.new("UIPadding", DYHUB["ed"]);
DYHUB["f0"]["PaddingTop"] = UDim.new(0, 5);
DYHUB["f0"]["PaddingRight"] = UDim.new(0, 15);
DYHUB["f0"]["PaddingLeft"] = UDim.new(0, 15);
DYHUB["f0"]["PaddingBottom"] = UDim.new(0, 5);


-- DYHUB.Templates.DialogElements.Dialog.Title.Icon
DYHUB["f1"] = Instance.new("ImageButton", DYHUB["ed"]);
DYHUB["f1"]["BorderSizePixel"] = 0;
DYHUB["f1"]["Visible"] = false;
DYHUB["f1"]["BackgroundTransparency"] = 1;
DYHUB["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["f1"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["f1"]["Size"] = UDim2.new(0, 33, 0, 25);
DYHUB["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["f1"]["Name"] = [[Icon]];
DYHUB["f1"]["Position"] = UDim2.new(0, 0, 0.2125, 0);


-- DYHUB.Templates.DialogElements.Dialog.Title.Icon.UIAspectRatioConstraint
DYHUB["f2"] = Instance.new("UIAspectRatioConstraint", DYHUB["f1"]);



-- DYHUB.Templates.DialogElements.Dialog.UIListLayout
DYHUB["f3"] = Instance.new("UIListLayout", DYHUB["ea"]);
DYHUB["f3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DYHUB["f3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DialogElements.Dialog.Content
DYHUB["f4"] = Instance.new("Frame", DYHUB["ea"]);
DYHUB["f4"]["Visible"] = false;
DYHUB["f4"]["ZIndex"] = 2;
DYHUB["f4"]["BorderSizePixel"] = 0;
DYHUB["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
DYHUB["f4"]["Position"] = UDim2.new(0, 0, 0.21886, 0);
DYHUB["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["f4"]["Name"] = [[Content]];
DYHUB["f4"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DialogElements.Dialog.Content.UIListLayout
DYHUB["f5"] = Instance.new("UIListLayout", DYHUB["f4"]);
DYHUB["f5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["f5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DialogElements.Dialog.Content.UIPadding
DYHUB["f6"] = Instance.new("UIPadding", DYHUB["f4"]);
DYHUB["f6"]["PaddingTop"] = UDim.new(0, 5);
DYHUB["f6"]["PaddingRight"] = UDim.new(0, 15);
DYHUB["f6"]["PaddingLeft"] = UDim.new(0, 15);
DYHUB["f6"]["PaddingBottom"] = UDim.new(0, 5);


-- DYHUB.Templates.DialogElements.Dialog.Content.TextLabel
DYHUB["f7"] = Instance.new("TextLabel", DYHUB["f4"]);
DYHUB["f7"]["TextWrapped"] = true;
DYHUB["f7"]["Interactable"] = false;
DYHUB["f7"]["BorderSizePixel"] = 0;
DYHUB["f7"]["TextSize"] = 15;
DYHUB["f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
DYHUB["f7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
DYHUB["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["f7"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["f7"]["TextColor3"] = Color3.fromRGB(145, 154, 173);
DYHUB["f7"]["BackgroundTransparency"] = 1;
DYHUB["f7"]["Size"] = UDim2.new(1, 0, 0, 0);
DYHUB["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["f7"]["Text"] = [[]];
DYHUB["f7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["f7"]["Position"] = UDim2.new(0, 0, 0.125, 0);


-- DYHUB.Templates.DialogElements.Dialog.UIPadding
DYHUB["f8"] = Instance.new("UIPadding", DYHUB["ea"]);
DYHUB["f8"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["f8"]["PaddingBottom"] = UDim.new(0, 10);


-- DYHUB.Templates.DialogElements.Dialog.Buttons
DYHUB["f9"] = Instance.new("Frame", DYHUB["ea"]);
DYHUB["f9"]["ZIndex"] = 3;
DYHUB["f9"]["BorderSizePixel"] = 0;
DYHUB["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["f9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
DYHUB["f9"]["Size"] = UDim2.new(1, 0, 0, 0);
DYHUB["f9"]["Position"] = UDim2.new(0, 0, 0.53017, 0);
DYHUB["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["f9"]["Name"] = [[Buttons]];
DYHUB["f9"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DialogElements.Dialog.Buttons.UIListLayout
DYHUB["fa"] = Instance.new("UIListLayout", DYHUB["f9"]);
DYHUB["fa"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DYHUB["fa"]["Padding"] = UDim.new(0, 10);
DYHUB["fa"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DialogElements.Dialog.Buttons.UIPadding
DYHUB["fb"] = Instance.new("UIPadding", DYHUB["f9"]);
DYHUB["fb"]["PaddingTop"] = UDim.new(0, 5);
DYHUB["fb"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["fb"]["PaddingLeft"] = UDim.new(0, 10);


-- DYHUB.Templates.DialogElements.DialogButton
DYHUB["fc"] = Instance.new("Frame", DYHUB["e7"]);
DYHUB["fc"]["Visible"] = false;
DYHUB["fc"]["BorderSizePixel"] = 0;
DYHUB["fc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["fc"]["AnchorPoint"] = Vector2.new(0.5, 1);
DYHUB["fc"]["Size"] = UDim2.new(1, 0, 0, 30);
DYHUB["fc"]["Position"] = UDim2.new(0.5, 0, 0.327, 0);
DYHUB["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["fc"]["Name"] = [[DialogButton]];
DYHUB["fc"]["BackgroundTransparency"] = 1;


-- DYHUB.Templates.DialogElements.DialogButton.Button
DYHUB["fd"] = Instance.new("TextButton", DYHUB["fc"]);
DYHUB["fd"]["BorderSizePixel"] = 0;
DYHUB["fd"]["AutoButtonColor"] = false;
DYHUB["fd"]["BackgroundColor3"] = Color3.fromRGB(43, 46, 53);
DYHUB["fd"]["Selectable"] = false;
DYHUB["fd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["fd"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["fd"]["Name"] = [[Button]];
DYHUB["fd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- DYHUB.Templates.DialogElements.DialogButton.Button.UICorner
DYHUB["fe"] = Instance.new("UICorner", DYHUB["fd"]);
DYHUB["fe"]["CornerRadius"] = UDim.new(0, 5);


-- DYHUB.Templates.DialogElements.DialogButton.Button.UIStroke
DYHUB["ff"] = Instance.new("UIStroke", DYHUB["fd"]);
DYHUB["ff"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["ff"]["Thickness"] = 1.5;
DYHUB["ff"]["Color"] = Color3.fromRGB(61, 61, 75);


-- DYHUB.Templates.DialogElements.DialogButton.Button.UIListLayout
DYHUB["100"] = Instance.new("UIListLayout", DYHUB["fd"]);
DYHUB["100"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
DYHUB["100"]["Padding"] = UDim.new(0, 5);
DYHUB["100"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["100"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.Templates.DialogElements.DialogButton.Button.Label
DYHUB["101"] = Instance.new("TextLabel", DYHUB["fd"]);
DYHUB["101"]["TextWrapped"] = true;
DYHUB["101"]["Interactable"] = false;
DYHUB["101"]["BorderSizePixel"] = 0;
DYHUB["101"]["TextSize"] = 14;
DYHUB["101"]["TextScaled"] = true;
DYHUB["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["101"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
DYHUB["101"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["101"]["BackgroundTransparency"] = 1;
DYHUB["101"]["Size"] = UDim2.new(1, 0, 0.45, 0);
DYHUB["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["101"]["Text"] = [[]];
DYHUB["101"]["Name"] = [[Label]];
DYHUB["101"]["Position"] = UDim2.new(0, 45, 0.083, 0);


-- DYHUB.NotificationList
DYHUB["102"] = Instance.new("Frame", DYHUB["1"]);
DYHUB["102"]["ZIndex"] = 10;
DYHUB["102"]["BorderSizePixel"] = 0;
DYHUB["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["102"]["AnchorPoint"] = Vector2.new(0.5, 0);
DYHUB["102"]["Size"] = UDim2.new(0, 630, 1, 0);
DYHUB["102"]["Position"] = UDim2.new(1, 0, 0, 0);
DYHUB["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["102"]["Name"] = [[NotificationList]];
DYHUB["102"]["BackgroundTransparency"] = 1;


-- DYHUB.NotificationList.UIListLayout
DYHUB["103"] = Instance.new("UIListLayout", DYHUB["102"]);
DYHUB["103"]["Padding"] = UDim.new(0, 12);
DYHUB["103"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- DYHUB.NotificationList.UIPadding
DYHUB["104"] = Instance.new("UIPadding", DYHUB["102"]);
DYHUB["104"]["PaddingTop"] = UDim.new(0, 10);
DYHUB["104"]["PaddingRight"] = UDim.new(0, 40);
DYHUB["104"]["PaddingLeft"] = UDim.new(0, 40);


-- DYHUB.FloatIcon
DYHUB["105"] = Instance.new("Frame", DYHUB["1"]);
DYHUB["105"]["Visible"] = false;
DYHUB["105"]["ZIndex"] = 0;
DYHUB["105"]["BorderSizePixel"] = 2;
DYHUB["105"]["BackgroundColor3"] = Color3.fromRGB(37, 40, 47);
DYHUB["105"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["105"]["ClipsDescendants"] = true;
DYHUB["105"]["AutomaticSize"] = Enum.AutomaticSize.X;
DYHUB["105"]["Size"] = UDim2.new(0, 85, 0, 45);
DYHUB["105"]["Position"] = UDim2.new(0.5, 0, 0, 45);
DYHUB["105"]["BorderColor3"] = Color3.fromRGB(61, 61, 75);
DYHUB["105"]["Name"] = [[FloatIcon]];


-- DYHUB.FloatIcon.UICorner
DYHUB["106"] = Instance.new("UICorner", DYHUB["105"]);
DYHUB["106"]["CornerRadius"] = UDim.new(0, 10);


-- DYHUB.FloatIcon.UIStroke
DYHUB["107"] = Instance.new("UIStroke", DYHUB["105"]);
DYHUB["107"]["Transparency"] = 0.5;
DYHUB["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
DYHUB["107"]["Thickness"] = 1.5;
DYHUB["107"]["Color"] = Color3.fromRGB(95, 95, 117);


-- DYHUB.FloatIcon.UIPadding
DYHUB["108"] = Instance.new("UIPadding", DYHUB["105"]);
DYHUB["108"]["PaddingTop"] = UDim.new(0, 8);
DYHUB["108"]["PaddingRight"] = UDim.new(0, 10);
DYHUB["108"]["PaddingLeft"] = UDim.new(0, 10);
DYHUB["108"]["PaddingBottom"] = UDim.new(0, 8);


-- DYHUB.FloatIcon.UIListLayout
DYHUB["109"] = Instance.new("UIListLayout", DYHUB["105"]);
DYHUB["109"]["Padding"] = UDim.new(0, 8);
DYHUB["109"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
DYHUB["109"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
DYHUB["109"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- DYHUB.FloatIcon.Icon
DYHUB["10a"] = Instance.new("ImageButton", DYHUB["105"]);
DYHUB["10a"]["Active"] = false;
DYHUB["10a"]["Interactable"] = false;
DYHUB["10a"]["BorderSizePixel"] = 0;
DYHUB["10a"]["AutoButtonColor"] = false;
DYHUB["10a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["10a"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["10a"]["Image"] = [[rbxassetid://113216930555884]];
DYHUB["10a"]["Size"] = UDim2.new(1, 0, 1, 0);
DYHUB["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["10a"]["Name"] = [[Icon]];
DYHUB["10a"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- DYHUB.FloatIcon.Icon.UIAspectRatioConstraint
DYHUB["10b"] = Instance.new("UIAspectRatioConstraint", DYHUB["10a"]);



-- DYHUB.FloatIcon.TextLabel
DYHUB["10c"] = Instance.new("TextLabel", DYHUB["105"]);
DYHUB["10c"]["Interactable"] = false;
DYHUB["10c"]["BorderSizePixel"] = 0;
DYHUB["10c"]["TextSize"] = 16;
DYHUB["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["10c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
DYHUB["10c"]["TextColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["10c"]["BackgroundTransparency"] = 1;
DYHUB["10c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
DYHUB["10c"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["10c"]["Text"] = [[DYHUB]];
DYHUB["10c"]["AutomaticSize"] = Enum.AutomaticSize.X;
DYHUB["10c"]["Position"] = UDim2.new(0.38615, 0, 0.53448, -1);


-- DYHUB.FloatIcon.Open
DYHUB["10d"] = Instance.new("ImageButton", DYHUB["105"]);
DYHUB["10d"]["BorderSizePixel"] = 0;
DYHUB["10d"]["AutoButtonColor"] = false;
DYHUB["10d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
DYHUB["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
DYHUB["10d"]["ImageColor3"] = Color3.fromRGB(197, 204, 219);
DYHUB["10d"]["Selectable"] = false;
DYHUB["10d"]["AnchorPoint"] = Vector2.new(0, 0.5);
DYHUB["10d"]["Image"] = [[rbxassetid://122219713887461]];
DYHUB["10d"]["Size"] = UDim2.new(0, 20, 0, 20);
DYHUB["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
DYHUB["10d"]["Name"] = [[Open]];
DYHUB["10d"]["Position"] = UDim2.new(0, 128, 0.5, 0);


-- DYHUB.FloatIcon.Open.UIAspectRatioConstraint
DYHUB["10e"] = Instance.new("UIAspectRatioConstraint", DYHUB["10d"]);



-- DYHUB.FloatIcon.Open.UICorner
DYHUB["10f"] = Instance.new("UICorner", DYHUB["10d"]);



-- Require DYHUB wrapper
local DYHUB_REQUIRE = require;
local DYHUB_MODULES = {};
local function require(Module:ModuleScript)
	local ModuleState = DYHUB_MODULES[Module];
	if ModuleState then
		if not ModuleState.Required then
			ModuleState.Required = true;
			ModuleState.Value = ModuleState.Closure();
		end
		return ModuleState.Value;
	end;
	return DYHUB_REQUIRE(Module);
end

DYHUB_MODULES[DYHUB["3e"]] = {
	Closure = function()
		local script = DYHUB["3e"];local LIB = {}
		local IconModule = require(script.IconModule)

		local UIS = game:GetService("UserInputService")

		local Gui = script.Parent
		local Templates = script.Parent.Templates
		local oldWindow = script.Parent.Window
		local oldFloatingIcon = script.Parent.FloatIcon

		Templates.Parent = nil
		oldWindow.Parent = nil
		oldFloatingIcon.Parent = nil


		local TweenConfigs = {
			Global = {
				Duration = 0.25,
				EasingStyle = Enum.EasingStyle.Quart,
				EasingDirection = Enum.EasingDirection.Out
			},
			Notification = {
				Duration = 0.5,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupOpen = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.Out
			},
			PopupClose = {
				Duration = 0.4,
				EasingStyle = Enum.EasingStyle.Back,
				EasingDirection = Enum.EasingDirection.In
			},
		}
		local function Tween(inst, props, config)
			local twconfig = TweenInfo.new(config.Duration, config.EasingStyle or Enum.EasingStyle.Linear, config.EasingDirection or Enum.EasingDirection.Out)
			local tw = game:GetService("TweenService"):Create(inst, twconfig, props)
			tw:Play()
			return tw
		end

		local function Draggable(topbarobject, object)
			local funcs = {}

			local tsv = game:GetService("TweenService")
			local Dragging = nil
			local DragInput = nil
			local DragStart = nil
			local StartPosition = nil

			local allowDragging = true

			local function Update(input)
				local Delta = input.Position - DragStart
				local pos =
					UDim2.new(
						StartPosition.X.Scale,
						StartPosition.X.Offset + Delta.X,
						StartPosition.Y.Scale,
						StartPosition.Y.Offset + Delta.Y
					)
				tsv:Create(object, TweenInfo.new(0.2,Enum.EasingStyle.Quart), {Position = pos}):Play()
				--object.Position = pos
			end

			topbarobject.InputBegan:Connect(
				function(input)
					if allowDragging and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						Dragging = true
						DragStart = input.Position
						StartPosition = object.Position

						input.Changed:Connect(
							function()
								if input.UserInputState == Enum.UserInputState.End then
									Dragging = false
								end
							end
						)
					end
				end
			)

			topbarobject.InputChanged:Connect(
				function(input)
					if
						allowDragging and
						input.UserInputType == Enum.UserInputType.MouseMovement or
						input.UserInputType == Enum.UserInputType.Touch
					then
						DragInput = input
					end
				end
			)

			UIS.InputChanged:Connect(
				function(input)
					if allowDragging and input == DragInput and Dragging then
						Update(input)
					end
				end
			)

			function funcs:SetAllowDragging(state)
				allowDragging = state
			end

			return funcs
		end

		local Windows = {}
		function LIB:CreateWindow(data)
			local Window = {
				Title = data.Title,
				Icon = data.Icon,
				Version = data.Author,
				Folder = data.Folder,
				Size = data.Size,
				ToggleKey = data.ToggleKey or Enum.KeyCode.RightShift,
				LiveSearchDropdown = data.LiveSearchDropdown or false,
                AutoSave = data.AutoSave or true,
                FileSaveName = data.FileSaveName or "Configo.json", -- wajib ada .json
			}
            local CONFIG = {}
            local CONFIGLOADED = false

            if Window.AutoSave == false and isfile(Window.FileSaveName) then
                delfile(Window.FileSaveName)
            end

            if isfile(Window.FileSaveName) then
                local success, result = pcall(function()
                    CONFIG = game:GetService("HttpService"):JSONDecode(readfile(Window.FileSaveName))
                end)
                if success then
                    CONFIGLOADED = true
                elseif not success then
                    warn("Attempted to load 'workspace/".. Window.FileSaveName "', but an error occured.\nERROR: "..result)
                end
            end

            local function SAVECONFIG()
                if Window.AutoSave then
                    writefile(Window.FileSaveName, game:GetService("HttpService"):JSONEncode(CONFIG))
                end
            end


			local windowFolder = Instance.new("Folder")
			windowFolder.Parent = Gui
			Gui.Name = Window.Title

			local newFloatingIcon = oldFloatingIcon:Clone()
			newFloatingIcon.Parent = windowFolder
			newFloatingIcon.TextLabel.Text = Window.Title
			newFloatingIcon.Visible = false
			if not Window.Icon:find("rbxassetid") then
				newFloatingIcon.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				newFloatingIcon.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				newFloatingIcon.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				newFloatingIcon.Icon.Image = Window.Icon
			end

			local newWindow = oldWindow:Clone()
			local mainFrame = newWindow
			local TopFrame = mainFrame.TopFrame
			local TabButtons = mainFrame.TabButtons
			local Tabs = mainFrame.Tabs

			newWindow.Name = Window.Title
			TopFrame.TextLabel.Text = Window.Title.." - "..Window.Version
			if not Window.Icon:find("rbxassetid") then
				TopFrame.Icon.Image = IconModule.Icon(Window.Icon)[1] or Window.Icon or ""
				TopFrame.Icon.ImageRectOffset = IconModule.Icon(Window.Icon)[2].ImageRectPosition or Vector2.new(0,0)
				TopFrame.Icon.ImageRectSize = IconModule.Icon(Window.Icon)[2].ImageRectSize or Vector2.new(0,0)
			else
				TopFrame.Icon.Image = Window.Icon
			end

			newWindow.Size = Window.Size
			newWindow.Visible = false
			newWindow.Parent = windowFolder

			table.insert(Windows, newWindow)

			-- Functionalities

			local selected
			local TabLists = {}
			local TabIndexList = {}
			local function AddTabToList(name: string, tab: ScrollingFrame, tabbtn: GuiButton, hasicon: boolean)
				local data = {
					Name = name,
					TabObject = tab,
					TabButton = tabbtn,
					HasIcon = hasicon
				}
				TabLists[name] = data
				table.insert(TabIndexList, TabLists[name])
			end

			-- dropdown, the hardest part lol
			local SelectedDropdown = nil
			local DropdownState = false
			local function DropdownPopup(state, name)
				-- disabled tween for popup cuz kills performance :<

				if name and DropdownState == false then
					SelectedDropdown = name
					for _,v in newWindow.DropdownSelection.Dropdowns:GetChildren() do
						if v:IsA("Folder") then
							v:FindFirstChild("DropdownItems").Visible = false
							v:FindFirstChild("DropdownItemsSearch").Visible = false
						end
					end
					newWindow.DropdownSelection.TopBar.Title.Text = name
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItems").Visible = true
					newWindow.DropdownSelection.Dropdowns:FindFirstChild(name):FindFirstChild("DropdownItemsSearch").Visible = false
				end
				if state == true then
					-- open
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					newWindow.DarkOverlay.BackgroundTransparency = 1

					newWindow.DropdownSelection.Visible = true
					newWindow.DarkOverlay.Visible = true

					newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
					--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
					Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)
					DropdownState = state
				elseif state == false then
					-- close
					newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
					--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
					local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

					tw2.Completed:Wait()

					newWindow.DropdownSelection.Visible = false
					newWindow.DarkOverlay.Visible = false

					DropdownState = state
				else
					if DropdownState then
						-- close
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						--local tw1 = Tween(newWindow.DropdownSelection, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.PopupClose)
						local tw2 = Tween(newWindow.DarkOverlay, {BackgroundTransparency = 1}, TweenConfigs.PopupClose)

						tw2.Completed:Wait()

						newWindow.DropdownSelection.Visible = false
						newWindow.DarkOverlay.Visible = false

						DropdownState = false
					else
						-- open
						newWindow.DropdownSelection.Size = UDim2.new(0,0,0,0)
						newWindow.DarkOverlay.BackgroundTransparency = 1

						newWindow.DropdownSelection.Visible = true
						newWindow.DarkOverlay.Visible = true

						newWindow.DropdownSelection.Size = UDim2.new(0.728, 0,0.684, 0)
						--Tween(newWindow.DropdownSelection, {Size = UDim2.new(0.728, 0,0.684, 0)}, TweenConfigs.PopupOpen)
						Tween(newWindow.DarkOverlay, {BackgroundTransparency = 0.6}, TweenConfigs.PopupOpen)

						DropdownState = true
					end
				end
			end

			local function SelectTab(tabName)
				for tablistname, tab in pairs(TabLists) do

					if tablistname ~= tabName then
						tab.TabObject.Visible = false
						-- Close
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 42,0.5, 0), Size = UDim2.new(0, 103,0, 16), TextTransparency = 0.5}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,12,0,18), ImageTransparency = 0.5}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 0), BackgroundTransparency = 1}, TweenConfigs.Global)
					elseif tablistname == tabName then
						selected = tabName
						tab.TabObject.Visible = true
						-- open
						Tween(tab.TabButton.TextLabel, {Position = UDim2.new(0, 57,0.5, 0), Size = UDim2.new(0, 88,0, 16), TextTransparency = 0}, TweenConfigs.Global)
						Tween(tab.TabButton.ImageButton, {Position = UDim2.new(0,25,0,18), ImageTransparency = 0}, TweenConfigs.Global)
						Tween(tab.TabButton.Bar, {Size = UDim2.new(0, 5,0, 25), BackgroundTransparency = 0}, TweenConfigs.Global)

						local objectCount = 0
						for _, obj in ipairs(tab.TabObject:GetChildren()) do
							if obj:IsA("GuiObject") then
								objectCount = objectCount + 1
							end
						end
						if objectCount == 0 then
							Tabs.NoObjectFoundText.Visible = true
						else
							Tabs.NoObjectFoundText.Visible = false
						end
					end
				end
			end

			newWindow.DropdownSelection.TopBar.Close.MouseButton1Click:Connect(function() DropdownPopup(false) end)

			local textbox = newWindow.DropdownSelection.TopBar.BoxFrame.Frame.TextBox

			textbox:GetPropertyChangedSignal("Text"):Connect(function()
				if not Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			textbox.FocusLost:Connect(function()
				if Window.LiveSearchDropdown then return end
				local currentFolder = newWindow.DropdownSelection.Dropdowns:FindFirstChild(SelectedDropdown)
				if string.gsub(textbox.Text, " ", "") ~= "" then
					if not currentFolder then return end
					currentFolder:FindFirstChild("DropdownItems").Visible = false
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = true

					for _,button in currentFolder:FindFirstChild("DropdownItemsSearch"):GetChildren() do
						if button:IsA("GuiButton") then
							if string.find(button.Name:lower(), textbox.Text:lower()) then
								button.Visible = true
							else
								button.Visible = false
							end
						end

					end
				else
					currentFolder:FindFirstChild("DropdownItems").Visible = true
					currentFolder:FindFirstChild("DropdownItemsSearch").Visible = false
				end
			end)

			function Window:Tab(data)
				local Tab = {}
				local TabData = {
					Title = data.Title,
					Icon = data.Icon,
				}

                local NAMETAB = data.Title
                if not CONFIGLOADED or CONFIG[NAMETAB] == nil then
                    CONFIG[NAMETAB] = {}
                end

				local newTabButton = Templates.TabButton:Clone()
				newTabButton.Name = TabData.Title

				newTabButton.Parent = newWindow.TabButtons.Lists
				newTabButton.Visible = true

				newTabButton.TextLabel.Text = TabData.Title
				newTabButton.ImageButton.Image = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[1]) or TabData.Icon or ""
				newTabButton.ImageButton.ImageRectOffset = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
				newTabButton.ImageButton.ImageRectSize = (IconModule.Icon(TabData.Icon) and IconModule.Icon(TabData.Icon)[2].ImageRectSize) or Vector2.new(0,0)



				local newTab = Templates.Tab:Clone()
				newTab.Name = TabData.Title

				newTab.Parent = newWindow.Tabs
				newTab.Visible = false

				AddTabToList(data.Title, newTab, newTabButton)

				--if not selected then selected = TabData.Title end

				if selected == TabData.Title then
					newTab.Visible = true

					-- Open

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 57,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 88,0, 16)
					newTabButton.TextLabel.TextTransparency = 0

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,25,0,18)
					newTabButton.ImageButton.ImageTransparency = 0

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 25)
					newTabButton.Bar.BackgroundTransparency = 0
				else
					-- Close

					-- Textlabel
					newTabButton.TextLabel.Position =  UDim2.new(0, 42,0.5, 0)
					newTabButton.TextLabel.Size = UDim2.new(0, 103,0, 16)
					newTabButton.TextLabel.TextTransparency = 0.5

					-- icon
					newTabButton.ImageButton.Position = UDim2.new(0,12,0,18)
					newTabButton.ImageButton.ImageTransparency = 0.5

					-- Bar
					newTabButton.Bar.Size = UDim2.new(0, 5,0, 0)
					newTabButton.Bar.BackgroundTransparency = 1
				end

				newTabButton.MouseButton1Click:Connect(function()
					SelectTab(TabData.Title)
				end)

				local function GetCurrentElementObjects()
					local objects = {}
					for _,v in pairs(newTab:GetChildren()) do
						if v:IsA("GuiObject") then
							table.insert(objects, v)
						end
					end
					return objects
				end

				local parentElement = newTab

				function Tab:Section(data)
					local Section = {
						Title = data.Title,
						State = data.Default or false,
						TextXAlignment = data.TextXAlignment or "Left",
					}

					local newSection = Templates.Section:Clone()
					newSection.Name = Section.Title
					newSection.Button.Title.Text = Section.Title
					newSection.Button.Title.TextXAlignment = Enum.TextXAlignment[Section.TextXAlignment]

					newSection.Visible = true
					newSection.Parent = newTab

					newSection.Button.MouseButton1Click:Connect(function()
						if Section.State == true then
							-- close
							newSection.Frame.Visible = false
							Tween(newSection.Button.Title.Arrow, {Rotation = 0}, TweenConfigs.Global)
							Section.State = false
						elseif Section.State == false then
							-- open
							newSection.Frame.Visible = true
							Tween(newSection.Button.Title.Arrow, {Rotation = 90}, TweenConfigs.Global)
							Section.State = true
						end
					end)

					function Section:SetTitle(newTitle)
						Section.Title = newTitle
						newSection.Button.Title.Text = newTitle
					end

					function Section:Destroy()
						parentElement:Destroy()
					end

					parentElement = newSection.Frame

					return Section
				end

				function Tab:Button(data)
					local Button = {}

					local ButtonData = {
						Title = data.Title,
						Desc = data.Desc,
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					local newButton = Templates.Button:Clone()
					newButton.Name = ButtonData.Title
					newButton.Parent = parentElement

					newButton.Frame.Title.Text = ButtonData.Title

					if ButtonData.Desc and ButtonData.Desc ~= "" then
						newButton.Frame.Description.Visible = true
						newButton.Frame.Description.Text = ButtonData.Desc
					end

					if ButtonData.Locked then
						-- greyed out
						newButton.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newButton.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newButton.Frame.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newButton.Frame.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newButton.Frame.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
					end

					newButton.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					newButton.MouseEnter:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							newButton.BackgroundColor3 = Color3.fromRGB(42, 45, 52)
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Down:Connect(function()
						if not ButtonData.Locked then
							GetRandomGradient()
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(newButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Up:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseLeave:Connect(function()
						if not ButtonData.Locked then
							Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							local tw = Tween(newButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
						end
					end)

					newButton.MouseButton1Click:Connect(function()
						if not ButtonData.Locked then
							ButtonData.Callback()
						end
					end)

					newTab.ChildAdded:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					newTab.ChildRemoved:Connect(function()
						if #GetCurrentElementObjects() > 0 then
							Tabs.NoObjectFoundText.Visible = false
						else
							Tabs.NoObjectFoundText.Visible = true
						end
					end)

					function Button:SetTitle(newText)
						newButton.Frame.Title.Text = newText
					end

					function Button:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newButton.Frame.Description.Text = newDesc
						end
					end

					function Button:Lock()
						ButtonData.Locked = true
						Tween(newButton, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
					end

					function Button:Unlock()
						ButtonData.Locked = false
						Tween(newButton, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
					end

					function Button:Destroy()
						newButton:Destroy()
					end

					return Button
				end

				function Tab:Code(data)
					local Code = {
						Title = data.Title,
						Code = data.Code
					}

					local newCode = Templates.Code:Clone()
					newCode.Name = Code.Title
					newCode.Parent = parentElement

					newCode.Title.Text = Code.Title
					newCode.Code.Text  = Code.Code
					newCode.Code.Visible = true
					newCode.Code.Font = Enum.Font.Code

					newCode.Visible = true

					function Code:SetTitle(newText)
						Code.Title = newText
						newCode.Title.Text = newText
					end

					function Code:SetCode(code)
						Code.Code = code
						newCode.Code.Text = code
					end

					function Code:Destroy()
						newCode:Destroy()
					end

					return Code
				end

				function Tab:Paragraph(data)
					local Paragraph = {
						Title = data.Title,
						Desc = data.Desc,
						RichText = data.RichText or false,
					}

					local newParagraph = Templates.Paragraph:Clone()
					newParagraph.Name = Paragraph.Title
					newParagraph.Parent = parentElement
					newParagraph.Title.Text = Paragraph.Title

					if Paragraph.Desc and Paragraph.Desc ~= "" then
						newParagraph.Description.Text = Paragraph.Desc
						newParagraph.Description.Visible = true
					else
						newParagraph.Description.Visible = false
					end

					newParagraph.Title.RichText = Paragraph.RichText
					newParagraph.Description.RichText = Paragraph.RichText

					newParagraph.Visible = true

					function Paragraph:SetTitle(title)
						Paragraph.Title = title
						newParagraph.Title.Text = title
					end

					function Paragraph:SetDesc(desc)
						Paragraph.Desc = desc
						newParagraph.Description.Text = desc
						if desc ~= "" then
							newParagraph.Visible = true
						else
							newParagraph.Visible = false
						end
					end

					function Paragraph:Destroy()
						newParagraph:Destroy()
					end

					return Paragraph
				end


				function Tab:Colorpicker()

				end

				function Tab:Toggle(data)
					local Toggle = {
						Title = data.Title,
						Desc = data.Desc,
						State = data.Default or data.Value or false,
						Locked = data.Locked or false,
						Icon = data.Icon,
						Callback = data.Callback or function() end
					}

                    local name = Toggle.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Toggle.State = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Toggle.State
                    end

					local newToggle = Templates.Toggle:Clone()
					newToggle.Name = Toggle.Title
					newToggle.Parent = parentElement
					newToggle.Title.Text = Toggle.Title

					if Toggle.Icon then
						if string.find(Toggle.Icon, "rbxassetid") or string.match(Toggle.Icon, "%d") then
							newToggle.Title.Fill.Ball.Icon.Image = Toggle.Icon
						else
							newToggle.Title.Fill.Ball.Icon.Image = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[1]) or Toggle.Icon or ""
							newToggle.Title.Fill.Ball.Icon.ImageRectOffset = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
							newToggle.Title.Fill.Ball.Icon.ImageRectSize = (IconModule.Icon(Toggle.Icon) and IconModule.Icon(Toggle.Icon)[2].ImageRectSize) or Vector2.new(0,0)
						end
					end

					if Toggle.Desc and Toggle.Desc ~= "" then
						newToggle.Description.Visible = true
						newToggle.Description.Text = Toggle.Desc
					end

					if Toggle.State == true then
						newToggle.Title.Fill.Ball.Position = UDim2.new(0.5, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(192, 209, 199)
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 0
					else
						newToggle.Title.Fill.Ball.Position = UDim2.new(0, 0,0.5, 0)
						newToggle.Title.Fill.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
						newToggle.Title.Fill.Ball.Icon.ImageTransparency = 1
					end

					if Toggle.Locked then
						-- greyed out
						newToggle.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newToggle.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newToggle.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						--newToggle.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newToggle.Title.Fill.BackgroundTransparency = 0.7
						newToggle.Title.Fill.Ball.BackgroundTransparency = 0.7
					end

					newToggle.Visible = true

					newToggle.Title.Fill.MouseEnter:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
						end
					end)

					newToggle.Title.Fill.MouseLeave:Connect(function()
						if not Toggle.Locked then
							Tween(newToggle.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)

							newToggle.BackgroundColor3 = Color3.fromRGB(42, 45, 52)
							Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
							Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						end
					end)

					local function AnimateSwitch(targetState)
						if targetState == true then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0.5, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(192, 209, 199)}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 0}, TweenConfigs.Global)
						elseif targetState == false then
							Tween(newToggle.Title.Fill.Ball, {Position = UDim2.new(0, 0,0.5, 0)}, TweenConfigs.Global)
							Tween(newToggle.Title.Fill, {BackgroundColor3 = Color3.fromRGB(53, 56, 62)}, TweenConfigs.Global)

							Tween(newToggle.Title.Fill.Ball.Icon, {ImageTransparency = 1}, TweenConfigs.Global)
						end
					end

					local function SetState(newState)
                        if newState == nil then
                            newState = not Toggle.State
                        end

                        AnimateSwitch(newState)

						Toggle.State = newState
						Toggle.Callback(Toggle.State)
                        CONFIG[NAMETAB][name] = Toggle.State
                        SAVECONFIG()
						-- no arg will switch the state
					end

					newToggle.Title.Fill.MouseButton1Click:Connect(function()
						if not Toggle.Locked then
							SetState()
						end
					end)

					function Toggle:SetTitle(newText)
						Toggle.Title = newText
						newToggle.Title.Text = newText
					end

					function Toggle:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Toggle.Desc = newDesc
							newToggle.Description.Text = newDesc
						end
					end

					function Toggle:Set(newState)
						SetState(newState)
					end

					function Toggle:Lock()
						Toggle.Locked = true
						Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0.7}, TweenConfigs.Global)
					end

					function Toggle:Unlock()
						Toggle.Locked = false
						Tween(newToggle, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newToggle.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newToggle.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newToggle.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newToggle.Title.Fill, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newToggle.Title.Fill.Ball, {BackgroundTransparency = 0}, TweenConfigs.Global)
					end

					function Toggle:Destroy()
						newToggle:Destroy()
					end

					Toggle.Callback(Toggle.State)

					return Toggle
				end

				function Tab:Slider(data)
					local Slider = {
						Title = data.Title,
						Desc = data.Desc,
						Step = data.Step or 1,
						Value = {
							Min = data.Value.Min or 0,
							Max = data.Value.Max or nil,
							Default = nil,
						},

						Locked = data.Locked,
						Callback = data.Callback or function() end
					}
					Slider.Value.Default = data.Value.Default or data.Default or data.Value.Min

					local increment = Slider.Step

					local newSlider = Templates.Slider:Clone()

                    local name = Slider.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Slider.Value.Default = CONFIG[NAMETAB][name]
                        print(Slider.Value.Default)
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Slider.Value.Default
                    end

					-- Source slider daur ulang awkoakwoawkaowkaowo

					local Mouse = game.Players.LocalPlayer:GetMouse()

					local newSlider = Templates.Slider:Clone()
					newSlider.Parent = parentElement
					newSlider.Name = Slider.Title
					newSlider.Title.Text = Slider.Title
					if Slider.Desc and Slider.Desc ~= "" then
						newSlider.Description.Visible = true
						newSlider.Description.Text = Slider.Desc
					end
					newSlider.Visible = true

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					newSlider.SliderFrame.Frame.Slider:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.Size = UDim2.new(0, newSlider.SliderFrame.Frame.Slider.AbsoluteSize.X, 1, 0)
					end)

					local lastprop = nil
					newSlider.SliderFrame.Frame.Slider.Fill:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						if newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X <= 3 then
							lastprop = newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X

						end
						if lastprop and newSlider.SliderFrame.Frame.Slider.Fill.AbsoluteSize.X > lastprop then
							GetRandomGradient()
							lastprop = nil
						end
					end)

					GetRandomGradient()


					if Slider.Locked then
						-- greyed out
						newSlider.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newSlider.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newSlider.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newSlider.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newSlider.SliderFrame.Frame.Slider.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newSlider.SliderFrame.Frame.Slider.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.UIStroke.Transparency = 0.5
						newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient.BackgroundTransparency = 0.5
						newSlider.SliderFrame.Frame.ValueText.TextTransparency = 0.6
					end

					local Trigger = newSlider.SliderFrame.Frame.Slider.Trigger
					local Label = newSlider.SliderFrame.Frame.ValueText
					local Fill = newSlider.SliderFrame.Frame.Slider.Fill
					local Parent = newSlider

					local default = Slider.Value.Default
					local min = Slider.Value.Min
					local max = Slider.Value.Max
					local increment = increment or 1

					local perc = Slider.Value.Default
					local Percent
					local MouseDown = false

					local Hovering = false			



					local function convertValueToScale(value)
						return (value - min) / (max - min) * (1 - 0) + 0
					end


					Label.Text = tostring(default) or tostring(min)
					--Fill.Size = UDim2.fromScale(1, 1)
					Fill.Size = UDim2.fromScale(convertValueToScale(default), 1)

					-- this also update
					local function Slide()
						MouseDown = true
						if Slider.Locked then return end
						repeat
							task.wait()
							Percent = math.clamp((Mouse.X - Parent.AbsolutePosition.X) / Parent.AbsoluteSize.X, 0, 1)
							perc = min + (Percent * (max - min))

					--[[ New: precision based rounding
					local multiplier = 10 ^ increment
					perc = math.floor(perc * multiplier + 0.5) / multiplier
					perc = math.clamp(perc, min, max)

					-- Format output text
					if perc % 1 == 0 then
						Label.Text = tostring(perc) -- integer, no decimal
					else
						Label.Text = string.format("%."..increment.."f", perc) -- decimal format
					end]]

							-- increment based
							local roundedValue = math.round(perc / increment) * increment
							perc = math.clamp(roundedValue, min, max)

							Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(perc), 1) }, TweenConfigs.Global)

							Label.Text = tostring(perc)
							Slider.Value = perc
							task.spawn(Slider.Callback, perc)
                            CONFIG[NAMETAB][name] = perc
						    SAVECONFIG()
						until MouseDown == false or Slider.Locked == true

						if not Hovering then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end


					local function Update(value)
						if not value or value > max or value < min then
							return
						end

						local roundedValue = math.round(value / increment) * increment
						perc = math.clamp(roundedValue, min, max)

						Tween(Fill, {Size = UDim2.fromScale(convertValueToScale(value), 1) }, TweenConfigs.Global)
						perc = value

						Label.Text = tostring(perc)
						Slider.Value = perc
						task.spawn(Slider.Callback, perc)
                        CONFIG[NAMETAB][name] = perc
						SAVECONFIG()
					end

					Trigger.MouseEnter:Connect(function()
						Hovering = true
						if not Slider.Locked then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
						end
					end)

					Trigger.MouseLeave:Connect(function()
						Hovering = false
						if not Slider.Locked and not MouseDown then
							Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end)

					-- start sliding
					Trigger.MouseButton1Down:Connect(function()
						Slide()
					end)



					-- stop sliding
					game:GetService("UserInputService").InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = false
						end
					end)

					function Slider:SetTitle(newText)
						Slider.Title = newText
						newSlider.Title.Text = newText
					end

					function Slider:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Slider.Desc = newDesc
							newSlider.Description.Text = newDesc
						end
					end


					function Slider:Set(value)
						Update(value)
					end


					function Slider:Lock()
						Slider.Locked = true
						Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0.5}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0.6}, TweenConfigs.Global)
					end

					function Slider:Unlock()
						Slider.Locked = false

						Tween(newSlider, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newSlider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newSlider.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newSlider.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newSlider.SliderFrame.Frame.Slider.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.UIStroke, {Transparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.Slider.Fill.BackgroundGradient, {BackgroundTransparency = 0}, TweenConfigs.Global)
						Tween(newSlider.SliderFrame.Frame.ValueText, {TextTransparency = 0}, TweenConfigs.Global)
					end

					function Slider:Destroy()
						newSlider:Destroy()
					end

					Slider.Callback(default)

					return Slider
				end

				function Tab:Input(data)
					local Input = {
						Title = data.Title,
						Desc = data.Desc,
						Placeholder = data.Placeholder or "",
						Default = data.Default or data.Value or "",
						Text = data.Default or data.Value or "",
						ClearTextOnFocus = data.ClearTextOnFocus or false,
						Locked = data.Locked or false,
						MultiLine = data.MultiLine or false,
						Callback = data.Callback or function() end
					}

                    local name = Input.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Input.Default = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Input.Default
                    end

					local newInput = Templates.TextBox:Clone()
					newInput.Name = Input.Title
					newInput.Parent = parentElement
					newInput.Title.Text = Input.Title
					if Input.Desc and Input.Desc ~= "" then
						newInput.Description.Text = Input.Desc
						newInput.Description.Visible = true
					else
						newInput.Description.Visible = false
					end

					if Input.Locked then
						-- greyed out
						newInput.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newInput.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newInput.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.Description.TextColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.BackgroundColor3 = Color3.fromRGB(32, 35, 40)
						newInput.BoxFrame.Frame.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newInput.BoxFrame.Frame.TextBox.TextColor3 = Color3.fromRGB(75, 77, 83)
						newInput.BoxFrame.Frame.TextBox.PlaceholderColor3 = Color3.fromRGB(75, 77, 83)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					newInput.BoxFrame.Frame.TextBox.Text = Input.Default
					newInput.BoxFrame.Frame.TextBox.PlaceholderText = Input.Placeholder
					newInput.BoxFrame.Frame.TextBox.MultiLine = Input.MultiLine

					if Input.MultiLine then
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.Y
					else
						newInput.BoxFrame.Frame.TextBox.AutomaticSize = Enum.AutomaticSize.None
					end

					newInput.BoxFrame.Frame.TextBox.ClearTextOnFocus = Input.ClearTextOnFocus

					newInput.Visible = true

					newInput.BoxFrame.Frame.TextBox.MouseEnter:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.MouseLeave:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.Focused:Connect(function()
						if not Input.Locked then
							Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
						end
					end)

					newInput.BoxFrame.Frame.TextBox.FocusLost:Connect(function()
						if not Input.Locked then
							Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
							Input.Text = newInput.BoxFrame.Frame.TextBox.Text
							Input.Callback(Input.Text)
                            CONFIG[NAMETAB][name] = Input.Text
						    SAVECONFIG()
						end
					end)

					function Input:Set(newText)
						newInput.BoxFrame.Frame.TextBox.Text = newText
						Input.Text = newText
						Input.Callback(newText)
                        CONFIG[NAMETAB][name] = newText
                        SAVECONFIG()
					end

					function Input:SetTitle(newText)
						newInput.Title.Text = newText
					end

					function Input:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							newInput.Description.Text = newDesc
						end
					end

					function Input:SetPlaceholder(newtext)
						if newtext then
							newInput.Description.Placeholder = newtext
						end
					end

					function Input:Lock()
						Input.Locked = true

						Tween(newInput.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(75, 77, 83),
							PlaceholderColor3 = Color3.fromRGB(75, 77, 83)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = false
						newInput.BoxFrame.Frame.TextBox.Interactable = false
						newInput.BoxFrame.Frame.TextBox.TextEditable = false
					end

					function Input:Unlock()
						Input.Locked = false

						Tween(newInput.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newInput, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)

						Tween(newInput.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newInput.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newInput.BoxFrame.Frame.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)

						Tween(newInput.BoxFrame.Frame.TextBox, {
							TextColor3 = Color3.fromRGB(196, 203, 218),
							PlaceholderColor3 = Color3.fromRGB(139, 139, 139)
						}, TweenConfigs.Global)

						newInput.BoxFrame.Frame.TextBox.Active = true
						newInput.BoxFrame.Frame.TextBox.Interactable = true
						newInput.BoxFrame.Frame.TextBox.TextEditable = true
					end

					function Input:Destroy()
						newInput:Destroy()
					end

					Input.Callback(Input.Default)

					return Input
				end


				local function AddDropdownButton(name, folder)
					local newButton = Templates.DropdownButton:Clone()
					newButton.Parent = folder or nil
					newButton.Name = name
					newButton.Frame.Title.Text = name

					local function GetRandomGradient()
						local gradient = {}
						for _, g in ipairs(newButton.Frame:GetChildren()) do
							if g:IsA("UIGradient") then
								g.Enabled = false
								table.insert(gradient, g)
							end
						end
						local selectedGrad = gradient[math.random(1, #gradient)]
						selectedGrad.Enabled = true
						return selectedGrad
					end

					GetRandomGradient()

					return newButton
				end

				local function TableToString(tbl)
					return table.concat(tbl, ", ")
				end


				function Tab:Dropdown(data)
					local Dropdown = {
						Title = data.Title,
						Desc = data.Desc,

						Multi = data.Multi or false,
						Values = data.Values or {},
						Value = data.Value or data.Default,

						AllowNone = data.AllowNone or false, -- multidropdown only
						Locked = data.Locked or false,
						Callback = data.Callback or function() end
					}

					if not Dropdown.Multi and Dropdown.AllowNone then
						Dropdown.Values = {"None", unpack(Dropdown.Values)}
					end

                    local name = Dropdown.Title
                    if CONFIGLOADED and CONFIG[NAMETAB][name] ~= nil then
                        Dropdown.Value = CONFIG[NAMETAB][name]
                    elseif not CONFIGLOADED or CONFIG[NAMETAB][name] == nil then
                        CONFIG[NAMETAB][name] = Dropdown.Value
                    end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "" then Dropdown.Value = "None" end

					local selected = nil

					local newDropdown = Templates.Dropdown:Clone()
					local dropdownFolder = Templates.DropdownList:Clone()
					dropdownFolder.Name = Dropdown.Title
					dropdownFolder.Parent = newWindow.DropdownSelection.Dropdowns

					newDropdown.Parent = parentElement
					newDropdown.Name = Dropdown.Title
					newDropdown.Title.Text = Dropdown.Title

					if Dropdown.Desc and Dropdown.Desc ~= "" then
						newDropdown.Description.Visible = true
						newDropdown.Description.Text = Dropdown.Desc
					else
						newDropdown.Description.Visible = false
					end

					if Dropdown.Locked then
						-- greyed out
						newDropdown.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newDropdown.BackgroundColor3 = Color3.fromRGB(32, 35, 40)

						newDropdown.Title.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Description.TextColor3 = Color3.fromRGB(75, 77, 83)
						newDropdown.Title.ClickIcon.ImageColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Title.BoxFrame.Trigger.BackgroundColor3 = Color3.fromRGB(32, 35, 40)
						newDropdown.Title.BoxFrame.Trigger.UIStroke.Color = Color3.fromRGB(47, 47, 58)
						newDropdown.Title.BoxFrame.Trigger.Title.TextColor3 = Color3.fromRGB(75, 77, 83)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					newDropdown.Visible = true

					local function SelectValue(multi, newvalue)
						if not multi then
							local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newvalue)
							local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newvalue)

							selected = newvalue
							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

							for _,otherButton in dropdownFolder.DropdownItems:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
								end
							end
							for _,otherButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if otherButton:IsA("GuiButton") and otherButton.Name ~= newvalue then
									Tween(otherButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(otherButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
									Tween(otherButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
								end
							end

							Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetButton.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
							Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

							Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
							Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
                            if selected == "None" then return "" end
							return selected	
						elseif multi then
							for _, newSelected in newvalue do
								local targetButton = dropdownFolder.DropdownItems:FindFirstChild(newSelected)
								local targetbuttonSearch = dropdownFolder.DropdownItemsSearch:FindFirstChild(newSelected)

								local idx = table.find(selected, newSelected) if idx then
									-- unselect

									-- if allownone is false, this will block the selection if the predicted table is empty
									if not Dropdown.AllowNone and #Dropdown.Value == 1 then return end

									table.remove(selected, idx)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 2185)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(196, 203, 2185)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 1}, TweenConfigs.Global)
								else
									-- select
									table.insert(selected, newSelected)

									Tween(targetButton.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetButton.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
									Tween(targetButton.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)

									Tween(targetbuttonSearch.Frame.Title, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame.Description, {TextColor3 = Color3.fromRGB(255,255,255)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.UIStroke, {Color = Color3.fromRGB(220, 45, 95)}, TweenConfigs.Global)
									Tween(targetbuttonSearch.Frame, {BackgroundTransparency = 0}, TweenConfigs.Global)
								end
							end

							Dropdown.Value = selected
							newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							return selected
						end
					end

					local function AddButtons(buttonListUnfiltered, refresh)
						local seen = {}
						local buttonList = {}

						for i, value in buttonListUnfiltered do
							if typeof(value) == "string" then
								if not seen[value] then
									seen[value] = 1
									table.insert(buttonList, value)
								else
									seen[value] = seen[value] + 1
									table.insert(buttonList, value.." ("..seen[value]..")")
								end
							end
						end

						if refresh then
							Dropdown.Values = buttonList

							for _,oldButton in dropdownFolder.DropdownItems:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
							for _,oldButton in dropdownFolder.DropdownItemsSearch:GetChildren() do
								if oldButton:IsA("GuiButton") then
									oldButton:Destroy()
								end
							end
						end


						if not Dropdown.Multi then
							if refresh then
								selected = nil
								newDropdown.Title.BoxFrame.Trigger.Title.Text = ""
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if selected == buttonName then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = Color3.fromRGB(220, 45, 95)
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = Color3.fromRGB(220, 45, 95)
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(false, buttonName)
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						elseif Dropdown.Multi then

							if refresh then
								selected = {}
								newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)
							end

							for _, buttonName in buttonList do
								local newDropdownButton = AddDropdownButton(buttonName, dropdownFolder.DropdownItems)
								local newDropdownButtonSearch = AddDropdownButton(buttonName, dropdownFolder.DropdownItemsSearch)

								newDropdownButton.Visible = true
								newDropdownButtonSearch.Visible = true

								if table.find(selected, buttonName) then
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButton.UIStroke.Color = Color3.fromRGB(220, 45, 95)
									newDropdownButton.Frame.BackgroundTransparency = 0
									newDropdownButton.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)

									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.Frame.Description.TextColor3 = Color3.fromRGB(255,255,255)
									newDropdownButtonSearch.UIStroke.Color = Color3.fromRGB(220, 45, 95)
									newDropdownButtonSearch.Frame.BackgroundTransparency = 0
									newDropdownButtonSearch.Frame.Title.TextColor3 = Color3.fromRGB(255,255,255)
								end


								newDropdownButton.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)

								-- search button

								newDropdownButtonSearch.MouseButton1Click:Connect(function()
									if not Dropdown.Locked then
										local value = SelectValue(true, {buttonName})
										if value then
											Dropdown.Callback(value)
                                            CONFIG[NAMETAB][name] = value
						                    SAVECONFIG()
										end
									end
								end)
							end
						end
					end

					if not Dropdown.Multi then
						-- non multi
						selected = Dropdown.Value or nil
						newDropdown.Title.BoxFrame.Trigger.Title.Text = selected

						AddButtons(Dropdown.Values)
					elseif Dropdown.Multi then
						-- multi
						newDropdown.Title.ClickIcon.Image = "rbxassetid://91415671397056"

						if type(Dropdown.Value) == "string" then
							Dropdown.Value = {Dropdown.Value}
						end
						selected = Dropdown.Value or {}
						newDropdown.Title.BoxFrame.Trigger.Title.Text = TableToString(selected)

						AddButtons(Dropdown.Values)
					end

					newDropdown.Title.BoxFrame.Trigger.MouseButton1Click:Connect(function()
						DropdownPopup(nil, Dropdown.Title)
					end)

					function Dropdown:SetTitle(newText)
						Dropdown.Title = newText
						newDropdown.Title.Text = newText
					end

					function Dropdown:SetDesc(newDesc)
						if newDesc and newDesc ~= "" then
							Dropdown.Desc = newDesc
							newDropdown.Description.Text = newDesc
						end
					end

					function Dropdown:Refresh(newvals)
						AddButtons(newvals, true)
					end

					function Dropdown:Select(newval)
						Dropdown.Callback(SelectValue(Dropdown.Multi, newval))
                        CONFIG[NAMETAB][name] = newval
						SAVECONFIG()
					end

					function Dropdown:Lock()
						Dropdown.Locked = true
						Tween(newDropdown.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = Color3.fromRGB(32, 35, 40)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = Color3.fromRGB(47, 47, 58)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(75, 77, 83)}, TweenConfigs.Global)

						newDropdown.Active = false
						newDropdown.Interactable = false
					end

					function Dropdown:Unlock()
						Dropdown.Locked = false
						Tween(newDropdown.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newDropdown, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)

						Tween(newDropdown.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Description, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)
						Tween(newDropdown.Title.ClickIcon, {ImageColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						Tween(newDropdown.Title.BoxFrame.Trigger, {BackgroundColor3 = Color3.fromRGB(42, 45, 52)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.UIStroke, {Color = Color3.fromRGB(60, 60, 74)}, TweenConfigs.Global)
						Tween(newDropdown.Title.BoxFrame.Trigger.Title, {TextColor3 = Color3.fromRGB(196, 203, 218)}, TweenConfigs.Global)

						newDropdown.Active = true
						newDropdown.Interactable = true
					end

					function Dropdown:Destroy()
						newDropdown:Destroy()
					end

                    if (not Dropdown.Multi and Dropdown.AllowNone) and Dropdown.Value == "None" then
                        Dropdown.Callback("")
                    else
                        Dropdown.Callback(Dropdown.Value)
                    end

					return Dropdown
				end

				return Tab
			end


			function Window:SelectTab(index)
				local tabtarget = TabIndexList[index]
				if tabtarget then
					SelectTab(tabtarget.Name)
				end
			end

			function Window:Divider()
				local newDivier = Templates.Divider:Clone()
				newDivier.Parent = newWindow.TabButtons.Lists
				newDivier.Visible = true
			end

			function Window:SetToggleKey(newKey)
				if type(newKey) == "string" then
					Window.ToggleKey = Enum.KeyCode[newKey]
				else
					Window.ToggleKey = newKey
				end
			end

			function Window:EditOpenButton()

			end

			function Window:Dialog(data)
				local Dialog = {
					Title = data.Title,
					Content = data.Content,
					Icon = data.Icon,
					Buttons = data.Buttons or {},

					Size = nil,
					PressDecreaseSize = UDim2.fromOffset(5,5)
				}

				local newDialog = Templates.DialogElements.Dialog:Clone()
				local newDialogDarkOverlay = Templates.DialogElements.DarkOverlayDialog:Clone()

				newDialog.Title.TextLabel.Text = Dialog.Title
				if Dialog and Dialog ~= "" then
					newDialog.Content.Visible = true
					newDialog.Content.TextLabel.Text = Dialog.Content
				end

				if Dialog.Icon then
					if string.find(Dialog.Icon, "rbxassetid") or string.match(Dialog.Icon, "%d") then
						newDialog.Title.Icon.Image = Dialog.Icon
					else
						newDialog.Title.Icon.Image = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[1]) or Dialog.Icon or ""
						newDialog.Title.Icon.ImageRectOffset = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
						newDialog.Title.Icon.ImageRectSize = (IconModule.Icon(Dialog.Icon) and IconModule.Icon(Dialog.Icon)[2].ImageRectSize) or Vector2.new(0,0)
					end
					newDialog.Title.Icon.Visible = true
				end

				newDialog.Parent = newWindow
				newDialogDarkOverlay.Parent = newWindow

				Dialog.Size = UDim2.fromOffset(newDialog.AbsoluteSize.X, newDialog.AbsoluteSize.Y)
				--newDialog.Size = UDim2.fromOffset(0,0)
				newDialogDarkOverlay.Transparency = 1

				for _, button in Dialog.Buttons do
					local buttonData = {
						Title = button.Title or "Button",
						Callback = button.Callback or function() end
					}

					local newButton = Templates.DialogElements.DialogButton:Clone()
					local originalSize = newButton.Button.Size

					newButton.Button.Label.Text = buttonData.Title

					newButton.Button.MouseButton1Click:Connect(function()
						buttonData.Callback()

						local tw = Tween(newDialogDarkOverlay, {Transparency = 1}, TweenConfigs.Global)
						--local tw = Tween(newDialog, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.PopupClose)
						newDialog:Destroy()
						tw.Completed:Wait()
						newDialogDarkOverlay:Destroy()

					end)

					newButton.Button.MouseButton1Down:Connect(function()
						Tween(newButton.Button, {Size = originalSize - Dialog.PressDecreaseSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseButton1Up:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Button.MouseLeave:Connect(function()
						Tween(newButton.Button, {Size = originalSize}, TweenConfigs.Global)
					end)

					newButton.Parent = newDialog.Buttons
					newButton.Visible = true
				end

				--Tween(newDialog, {Size = Dialog.Size}, TweenConfigs.PopupOpen)
				Tween(newDialogDarkOverlay, {Transparency = 0.6}, TweenConfigs.Global)

				newDialog.Visible = true
				newDialogDarkOverlay.Visible = true



				return Dialog
			end

			-- window misc top bar
			local oldFloatingSize = newFloatingIcon.Size
			local oldWindowSize = Window.Size

			local oldWindowSizeMaximize = Window.Size
			local oldWindowPositionMaximize = newWindow.Position
			local maximizedWindow = false

			local windowDraggable = Draggable(newWindow.TopFrame, newWindow)
			Draggable(newFloatingIcon, newFloatingIcon)

			newWindow.Visible = true
			newWindow.Size = UDim2.fromOffset(0,0)

			local windowstate = newWindow.Visible
			local timeout = false
			local function ToggleWindow(state)
				if state == true then
					oldFloatingIcon = newFloatingIcon.Size

					newWindow.Size = UDim2.fromOffset(0,0)
					newWindow.Visible = true

					Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
					Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Tabs.Visible = true
					newWindow.TabButtons.Visible = true

					newFloatingIcon.Visible = false
				elseif state == false then
					oldWindowSize = newWindow.Size

					newFloatingIcon.Size = UDim2.fromOffset(0,0)
					newFloatingIcon.Visible = true

					newWindow.Tabs.Visible = false
					newWindow.TabButtons.Visible = false

					Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
					Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
						.Completed:Wait()
					newWindow.Visible = false
				else
					if windowstate then
						oldWindowSize = newWindow.Size

						newFloatingIcon.Size = UDim2.fromOffset(0,0)
						newFloatingIcon.Visible = true

						newWindow.Tabs.Visible = false
						newWindow.TabButtons.Visible = false
						newWindow.DropShadow.Visible = false

						Tween(newFloatingIcon, {Size = oldFloatingSize}, TweenConfigs.Global)
						Tween(newWindow, {Size = UDim2.fromOffset(0,0)}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Visible = false

						windowstate = false
					else
						oldFloatingIcon = newFloatingIcon.Size

						newWindow.Size = UDim2.fromOffset(0,0)
						newWindow.Visible = true

						newWindow.DropShadow.Visible = true

						Tween(newFloatingIcon, {Size = UDim2.new(0,0,0,0)}, TweenConfigs.Global)
						Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)
							.Completed:Wait()
						newWindow.Tabs.Visible = true
						newWindow.TabButtons.Visible = true

						newFloatingIcon.Visible = false

						windowstate = true
					end
				end
			end

			newWindow.TopFrame.Hide.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(false)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newFloatingIcon.Open.MouseButton1Click:Connect(function()
				if not timeout then
					timeout = true
					ToggleWindow(true)
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			newWindow.TopFrame.Close.MouseButton1Click:Connect(function()
				-- :Destroy() will in result of errors :(
				Window:Dialog({
					Icon = "triangle-alert",
					Title = "Close Window",
					Content = "Do you want to close this window? You will not able to open it again.",
					Buttons = {
						{
							Title = "Cancel"
						},
						{
							Title = "Close Window",
							Callback = function()
								windowFolder.Parent = nil
							end,
						}
					}
				})
			end)

			newWindow.TopFrame.Maximize.MouseButton1Click:Connect(function()
				if not maximizedWindow then
					-- maximizing
					windowDraggable:SetAllowDragging(false)
					oldWindowSizeMaximize = newWindow.Size
					oldWindowPositionMaximize = newWindow.Position
					Tween(newWindow, {Size = UDim2.new(1,0,1,0)}, TweenConfigs.Global)
					Tween(newWindow, {Position = UDim2.new(0.5,0,0.5,0)}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,0)}, TweenConfigs.Global)

					maximizedWindow = true
				else
					-- minimizing
					windowDraggable:SetAllowDragging(true)
					Tween(newWindow, {Size = oldWindowSizeMaximize}, TweenConfigs.Global)
					Tween(newWindow, {Position = oldWindowPositionMaximize}, TweenConfigs.Global)

					Tween(newWindow.UICorner, {CornerRadius = UDim.new(0,10)}, TweenConfigs.Global)

					maximizedWindow = false
				end
			end)

			Tween(newWindow, {Size = oldWindowSize}, TweenConfigs.Global)

			-- Keybind to open newWindow
			UIS.InputBegan:Connect(function(input, gpe)
				if not timeout and not gpe and input.KeyCode == Window.ToggleKey then
					timeout = true
					ToggleWindow()
					task.delay(TweenConfigs.Global.Duration, function()
						timeout = false
					end)
				end
			end)

			return Window
		end

		function LIB:Notify(data)
			local Notification = {}

			local Notif = {
				Title = data.Title,
				Content = data.Content,
				Icon = data.Icon,
				Duration = data.Duration or 5
			}

			local new = Templates.Notification:Clone()

			if #Windows == 1 and Windows[1].Visible and Windows[1].Tabs.Visible then
				new.Parent = Windows[1].NotificationFrame.NotificationList
			else
				new.Parent = Gui.NotificationList
			end
			new.Items.Frame.Title.Text = Notif.Title
			new.Items.Frame.Content.Text = Notif.Content 

			new.Items.Frame.Title.Icon.Image = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[1]) or Notif.Icon or ""
			new.Items.Frame.Title.Icon.ImageRectOffset = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectPosition) or Vector2.new(0,0)
			new.Items.Frame.Title.Icon.ImageRectSize = (IconModule.Icon(Notif.Icon) and IconModule.Icon(Notif.Icon)[2].ImageRectSize) or Vector2.new(0,0)

			new.Items.Position = UDim2.new(0.75, 0, 0, 0)
			new.Visible = true

			local function Close()
				if new then
					local close = Tween(new.Items, {Position = UDim2.new(0.75,0,0,0)}, TweenConfigs.Notification)
					task.wait(TweenConfigs.Notification.Duration - (TweenConfigs.Notification.Duration / 2))
					if new then
						new:Destroy()
					end
					new = nil
				end
			end

			new.Items.Frame.Title.Close.MouseButton1Click:Connect(Close)

			local open = Tween(new.Items, {Position = UDim2.new(0,0,0,0)}, TweenConfigs.Notification)
			open.Completed:Connect(function()
				Tween(new.Items.TimerBarFill.Bar, {Size = UDim2.new(0,0,1,0)}, {Duration = Notif.Duration})
				task.delay(Notif.Duration, Close)
			end)

			function Notification:Close()
				Close()
			end

			return Notification
		end

		return LIB

	end;
};
DYHUB_MODULES[DYHUB["3f"]] = {
	Closure = function()
		local script = DYHUB["3f"];
		-- https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/lucide/dist/Icons.lua

		local Icons = {
			["lucide"] = require(script.Lucide),
		}


		local IconModule = {
			IconsType = "lucide"
		}

		function IconModule.SetIconsType(iconType)
			IconModule.IconsType = iconType
		end

		function IconModule.Icon(Icon, Type) -- Type: optional
			local iconType = Icons[Type or IconModule.IconsType]

			if iconType.Icons[Icon] then
				return { iconType.Spritesheets[tostring(iconType.Icons[Icon].Image)], iconType.Icons[Icon] }
			end
			return nil
		end

		return IconModule

	end;
};
DYHUB_MODULES[DYHUB["40"]] = {
	Closure = function()
		local script = DYHUB["40"];-- Generated by .ftgs 
		-- Github: https://github.com/Footagesus

		return { Spritesheets = {
			["1"] = "rbxassetid://131526378523863",
			["10"] = "rbxassetid://98656588890340",
			["11"] = "rbxassetid://122516128999742",
			["12"] = "rbxassetid://136045238860745",
			["13"] = "rbxassetid://138056954680929",
			["14"] = "rbxassetid://139241675471365",
			["15"] = "rbxassetid://120281540002144",
			["16"] = "rbxassetid://122481504913348",
			["2"] = "rbxassetid://125136326597802",
			["3"] = "rbxassetid://132619645919851",
			["4"] = "rbxassetid://124546836680911",
			["5"] = "rbxassetid://138714413596023",
			["6"] = "rbxassetid://95318701976229",
			["7"] = "rbxassetid://87465848394141",
			["8"] = "rbxassetid://77771201330939",
			["9"] = "rbxassetid://126006375824005",
		}, Icons = {
				["a-arrow-down"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["a-arrow-up"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["a-large-small"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["accessibility"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["activity"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["air-vent"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["airplay"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-check"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-minus"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock-plus"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-clock"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["alarm-smoke"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["album"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center-horizontal"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center-vertical"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-center"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-end-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-end-vertical"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-center"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-end"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-distribute-start"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-center"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-end"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-justify-start"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-space-around"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-horizontal-space-between"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-justify"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-left"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-right"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-start-horizontal"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-start-vertical"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-center"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-end"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-distribute-start"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-center"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-end"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-justify-start"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-space-around"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["align-vertical-space-between"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ambulance"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ampersand"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["ampersands"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["amphora"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["anchor"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["angry"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["annoyed"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["antenna"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["anvil"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["aperture"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["app-window-mac"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["app-window"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["apple"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive-restore"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive-x"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["archive"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["armchair"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-down-dash"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-down"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-left-dash"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-left"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-right-dash"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-right"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-up-dash"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-big-up"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-0-1"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-1-0"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-a-z"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-from-line"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-left"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-narrow-wide"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-right"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-to-dot"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-to-line"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-up"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-wide-narrow"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down-z-a"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-down"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-from-line"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-right"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left-to-line"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-left"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-from-line"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-left"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right-to-line"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-right"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-0-1"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-1-0"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-a-z"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-down"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-from-dot"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-from-line"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-left"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-narrow-wide"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-right"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-to-line"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-wide-narrow"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up-z-a"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrow-up"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["arrows-up-from-line"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 1,
				},
				["asterisk"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["at-sign"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["atom"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["audio-lines"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["audio-waveform"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["award"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["axe"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["axis-3d"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baby"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["backpack"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-alert"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-cent"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-check"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-dollar-sign"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-euro"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-help"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-indian-rupee"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-info"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-japanese-yen"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-minus"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-percent"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-plus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-pound-sterling"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-russian-ruble"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-swiss-franc"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge-x"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["badge"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baggage-claim"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["ban"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["banana"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bandage"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["banknote"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["barcode"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["baseline"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bath"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-charging"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-full"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-low"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-medium"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-plus"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery-warning"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["battery"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beaker"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bean-off"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bean"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed-double"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed-single"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bed"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beef"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beer-off"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["beer"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-dot"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-electric"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-minus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-off"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-plus"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell-ring"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bell"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-horizontal-end"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-horizontal-start"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-vertical-end"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["between-vertical-start"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["biceps-flexed"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bike"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["binary"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["binoculars"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["biohazard"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bird"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bitcoin"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blend"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blinds"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["blocks"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-connected"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-off"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth-searching"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bluetooth"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bold"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bolt"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bomb"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["bone"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-a"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-audio"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-check"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-copy"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-dashed"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-down"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-headphones"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-heart"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-image"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-key"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-lock"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-marked"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-minus"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open-text"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-open"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-plus"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-text"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-type"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-up-2"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 2,
				},
				["book-up"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book-user"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book-x"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["book"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-minus"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-plus"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark-x"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bookmark"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["boom-box"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot-message-square"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot-off"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bot"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["box"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["boxes"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["braces"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brackets"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain-circuit"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain-cog"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brain"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brick-wall"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-business"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-conveyor-belt"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase-medical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["briefcase"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bring-to-front"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["brush"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug-off"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug-play"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bug"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["building-2"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["building"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bus-front"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["bus"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cable-car"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cable"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cake-slice"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cake"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calculator"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-1"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-arrow-down"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-arrow-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-check-2"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-check"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-clock"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-cog"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-days"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-fold"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-heart"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-minus-2"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-minus"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-off"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-plus-2"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-plus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-range"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-search"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-sync"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-x-2"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar-x"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["calendar"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["camera-off"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["camera"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy-cane"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy-off"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["candy"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cannabis"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["captions-off"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["captions"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car-front"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car-taxi-front"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["car"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["caravan"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["carrot"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-lower"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-sensitive"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["case-upper"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cassette-tape"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cast"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["castle"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cat"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["cctv"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-area"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-big"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-decreasing"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-increasing"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar-stacked"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-bar"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-candlestick"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-big"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-decreasing"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-increasing"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column-stacked"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-column"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-gantt"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-line"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-network"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column-decreasing"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column-increasing"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-column"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-combined"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 3,
				},
				["chart-no-axes-gantt"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-pie"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-scatter"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chart-spline"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["check-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["check"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chef-hat"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cherry"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-down"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-first"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-last"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-left"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-right"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevron-up"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-down-up"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-down"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left-right-ellipsis"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left-right"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-left"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-right-left"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-right"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-up-down"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chevrons-up"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["chrome"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["church"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cigarette-off"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cigarette"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-alert"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-down"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-left"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-down-left"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-down-right"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-up-left"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-out-up-right"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-right"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-arrow-up"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-check-big"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-check"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-down"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-left"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-right"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-chevron-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dashed"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-divide"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dollar-sign"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dot-dashed"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-dot"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-ellipsis"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-equal"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-fading-arrow-up"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-fading-plus"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-gauge"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-help"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-minus"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-off"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-parking-off"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-parking"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-pause"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-percent"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-play"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-plus"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-power"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-slash-2"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-slash"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-stop"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-user-round"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-user"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle-x"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circle"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["circuit-board"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["citrus"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clapperboard"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-check"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-copy"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-list"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-minus"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-paste"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-pen-line"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-pen"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-plus"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-type"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard-x"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clipboard"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-1"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-10"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-11"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-12"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-2"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-3"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-4"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-5"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-6"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-7"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-8"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-9"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-alert"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-arrow-down"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock-arrow-up"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["clock"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cloud-alert"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 4,
				},
				["cloud-cog"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-download"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-drizzle"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-fog"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-hail"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-lightning"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-moon-rain"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-moon"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-off"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-rain-wind"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-rain"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-snow"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-sun-rain"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-sun"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud-upload"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloud"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cloudy"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["clover"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["club"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["code-xml"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["code"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["codepen"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["codesandbox"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["coffee"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cog"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["coins"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-2"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-3"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["columns-4"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["combine"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["command"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["compass"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["component"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["computer"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["concierge-bell"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cone"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["construction"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contact-round"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contact"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["container"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["contrast"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cookie"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cooking-pot"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-check"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-minus"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-plus"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-slash"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy-x"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copy"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copyleft"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["copyright"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-down-left"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-down-right"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-left-down"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-left-up"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-right-down"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-right-up"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-up-left"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["corner-up-right"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cpu"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["creative-commons"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["credit-card"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["croissant"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crop"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cross"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crosshair"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["crown"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cuboid"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cup-soda"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["currency"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["cylinder"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dam"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database-backup"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database-zap"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["database"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["delete"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dessert"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diameter"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-minus"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-percent"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diamond"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-1"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-2"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-3"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-4"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-5"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dice-6"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dices"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["diff"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-2"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-3"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc-album"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["disc"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["divide"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dna-off"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dna"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dock"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dog"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["dollar-sign"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 5,
				},
				["donut"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["door-closed"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["door-open"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dot"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["download"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drafting-compass"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drama"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dribbble"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drill"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplet-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplet"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["droplets"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drum"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["drumstick"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["dumbbell"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ear-off"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ear"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["earth-lock"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["earth"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eclipse"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg-fried"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg-off"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["egg"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ellipsis-vertical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ellipsis"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal-approximately"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal-not"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["equal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eraser"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ethernet-port"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["euro"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["expand"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["external-link"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye-closed"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye-off"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["eye"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["facebook"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["factory"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fan"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fast-forward"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["feather"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["fence"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["ferris-wheel"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["figma"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-archive"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-audio-2"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-audio"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-axis-3d"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-badge-2"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-badge"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-box"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-column-increasing"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-column"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-line"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-chart-pie"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-check-2"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-check"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-clock"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-code-2"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-code"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-cog"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-diff"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-digit"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-down"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-heart"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-image"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-input"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-json-2"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-json"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-key-2"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-key"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-lock-2"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-lock"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-minus-2"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-minus"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-music"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-output"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-pen-line"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-pen"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-plus-2"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-question"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-scan"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-search-2"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-search"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-sliders"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-spreadsheet"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-stack"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-symlink"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-terminal"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-text"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-type-2"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-type"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-up"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-user"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-video-2"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-video"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-volume-2"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-volume"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-warning"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 6,
				},
				["file-x-2"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["file-x"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["file"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["files"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["film"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["filter-x"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["filter"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fingerprint"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fire-extinguisher"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish-off"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish-symbol"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fish"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-off"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-triangle-left"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag-triangle-right"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flag"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flame-kindling"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flame"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flashlight-off"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flashlight"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-conical-off"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-conical"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flask-round"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-horizontal-2"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-horizontal"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-vertical-2"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flip-vertical"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flower-2"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["flower"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["focus"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fold-horizontal"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fold-vertical"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-archive"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-check"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-clock"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-closed"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-code"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-cog"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-dot"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-down"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-git-2"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-git"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-heart"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-input"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-kanban"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-key"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-lock"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-minus"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-open-dot"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-open"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-output"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-pen"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-plus"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-root"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-search-2"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-search"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-symlink"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-sync"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-tree"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-up"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder-x"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folder"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["folders"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["footprints"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["forklift"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["forward"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["frame"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["framer"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["frown"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fuel"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["fullscreen"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-horizontal-end"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-thumbnails"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-vertical-end"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gallery-vertical"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gamepad-2"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gamepad"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gauge"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gavel"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gem"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["ghost"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gift"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-branch-plus"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-branch"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-commit-horizontal"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-commit-vertical"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-compare-arrows"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-compare"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-fork"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-graph"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-merge"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-arrow"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-closed"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-create-arrow"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-create"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request-draft"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["git-pull-request"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["github"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["gitlab"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 7,
				},
				["glass-water"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["glasses"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["globe-lock"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["globe"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["goal"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grab"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["graduation-cap"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grape"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-check"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-plus"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2-x"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-2x2"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grid-3x3"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip-horizontal"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip-vertical"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["grip"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["group"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["guitar"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ham"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hammer"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-coins"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-heart"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-helping"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-metal"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand-platter"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hand"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["handshake"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive-download"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive-upload"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-drive"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hard-hat"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hash"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["haze"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hdmi-port"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-1"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-2"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-3"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-4"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-5"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading-6"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heading"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headphone-off"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headphones"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["headset"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-crack"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-handshake"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-off"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart-pulse"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heart"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["heater"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hexagon"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["highlighter"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["history"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hop-off"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hop"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hospital"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hotel"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["hourglass"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-plug"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-plus"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house-wifi"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["house"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ice-cream-bowl"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["ice-cream-cone"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["id-card"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-down"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-minus"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-off"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-play"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-plus"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-up"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image-upscale"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["image"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["images"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["import"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["inbox"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indent-decrease"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indent-increase"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["indian-rupee"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["infinity"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["info"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["inspection-panel"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["instagram"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["italic"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["iteration-ccw"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["iteration-cw"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["japanese-yen"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["joystick"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["kanban"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key-round"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key-square"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["key"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard-music"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard-off"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["keyboard"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-ceiling"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-desk"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-floor"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-wall-down"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp-wall-up"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 8,
				},
				["lamp"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["land-plot"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["landmark"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["languages"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop-minimal-check"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop-minimal"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laptop"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lasso-select"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lasso"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["laugh"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layers-2"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layers"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-dashboard"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-grid"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-list"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-panel-left"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-panel-top"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["layout-template"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["leaf"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["leafy-green"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lectern"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["letter-text"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["library-big"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["library"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["life-buoy"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["ligature"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lightbulb-off"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lightbulb"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link-2-off"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link-2"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["link"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["linkedin"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-check"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-checks"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-collapse"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-end"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-filter-plus"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-filter"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-minus"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-music"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-ordered"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-plus"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-restart"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-start"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-todo"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-tree"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-video"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list-x"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["list"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader-circle"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader-pinwheel"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["loader"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate-fixed"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate-off"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["locate"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-keyhole-open"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-keyhole"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock-open"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lock"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["log-in"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["log-out"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["logs"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["lollipop"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["luggage"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["magnet"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-check"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-minus"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-open"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-plus"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-question"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-search"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-warning"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail-x"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mail"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mailbox"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["mails"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-check-inside"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-check"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-house"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-minus-inside"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-minus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-off"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-plus-inside"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-plus"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-x-inside"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin-x"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pin"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-pinned"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map-plus"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["map"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["martini"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["maximize-2"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["maximize"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["medal"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["megaphone-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["megaphone"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["meh"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["memory-stick"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["menu"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["merge"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 9,
				},
				["message-circle-code"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-dashed"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-heart"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-more"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-off"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-plus"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-question"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-reply"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-warning"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle-x"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-circle"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-code"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-dashed"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-diff"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-dot"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-heart"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-lock"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-more"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-off"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-plus"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-quote"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-reply"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-share"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-text"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-warning"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square-x"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["message-square"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["messages-square"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic-off"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic-vocal"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mic"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microchip"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microscope"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["microwave"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milestone"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milk-off"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["milk"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minimize-2"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minimize"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["minus"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-check"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-cog"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-dot"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-down"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-off"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-pause"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-play"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-smartphone"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-speaker"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-stop"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-up"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor-x"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["monitor"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["moon-star"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["moon"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mountain-snow"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mountain"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-off"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-2"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-ban"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer-click"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse-pointer"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["mouse"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-3d"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-diagonal-2"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-diagonal"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down-left"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down-right"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-down"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-horizontal"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-left"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-right"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up-left"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up-right"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-up"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move-vertical"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["move"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-2"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-3"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music-4"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["music"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-2-off"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-2"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation-off"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["navigation"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["network"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["newspaper"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nfc"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-pen"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-tabs"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook-text"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notebook"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notepad-text-dashed"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["notepad-text"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nut-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["nut"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-alert"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-minus"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-pause"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon-x"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 10,
				},
				["octagon"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["omega"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["option"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["orbit"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["origami"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-2"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-check"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-minus"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-open"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-plus"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-search"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package-x"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["package"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paint-bucket"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paint-roller"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paintbrush-vertical"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paintbrush"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["palette"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-close"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-dashed"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom-open"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-bottom"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-close"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-dashed"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left-open"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-left"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-close"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-dashed"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right-open"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-right"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-close"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-dashed"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top-open"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panel-top"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-left-bottom"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-right-bottom"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["panels-top-left"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paperclip"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["parentheses"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["parking-meter"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["party-popper"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pause"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["paw-print"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pc-case"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-line"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-off"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen-tool"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pen"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-line"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-off"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil-ruler"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pencil"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pentagon"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["percent"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["person-standing"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["philippine-peso"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-call"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-forwarded"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-incoming"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-missed"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-off"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone-outgoing"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["phone"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pi"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["piano"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pickaxe"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["picture-in-picture-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["picture-in-picture"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["piggy-bank"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow-left"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow-right"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pilcrow"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pill-bottle"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pill"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pin-off"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pin"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pipette"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pizza"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane-landing"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane-takeoff"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plane"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["play"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug-2"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug-zap"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plug"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["plus"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pocket-knife"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pocket"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["podcast"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pointer-off"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pointer"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["popcorn"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["popsicle"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["pound-sterling"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["power-off"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["power"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["presentation"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["printer-check"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["printer"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["projector"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 11,
				},
				["proportions"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["puzzle"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["pyramid"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["qr-code"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["quote"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rabbit"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radar"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radiation"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radical"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio-receiver"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio-tower"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radio"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["radius"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rail-symbol"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rainbow"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rat"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ratio"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-cent"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-euro"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-indian-rupee"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-japanese-yen"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-pound-sterling"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-russian-ruble"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-swiss-franc"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt-text"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["receipt"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-ellipsis"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rectangle-vertical"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["recycle"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo-2"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo-dot"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["redo"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-ccw-dot"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-ccw"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-cw-off"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refresh-cw"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["refrigerator"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["regex"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["remove-formatting"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat-1"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat-2"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["repeat"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["replace-all"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["replace"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["reply-all"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["reply"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rewind"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ribbon"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rocket"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rocking-chair"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["roller-coaster"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-3d"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-ccw-square"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-ccw"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-cw-square"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rotate-cw"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["route-off"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["route"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["router"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-2"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-3"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rows-4"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["rss"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["ruler"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["russian-ruble"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["sailboat"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["salad"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["sandwich"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["satellite-dish"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["satellite"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save-all"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save-off"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["save"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scale-3d"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scale"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scaling"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-barcode"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-eye"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-face"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-heart"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-line"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-qr-code"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-search"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan-text"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scan"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["school"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scissors-line-dashed"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scissors"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["screen-share-off"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["screen-share"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scroll-text"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["scroll"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-code"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-slash"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search-x"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["search"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["section"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["send-horizontal"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 12,
				},
				["send-to-back"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["send"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["separator-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["separator-vertical"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-cog"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-crash"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server-off"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["server"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["settings-2"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["settings"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shapes"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["share-2"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["share"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sheet"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shell"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-alert"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-ban"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-check"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-ellipsis"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-half"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-minus"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-off"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-plus"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-question"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield-x"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shield"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["ship-wheel"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["ship"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shirt"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-bag"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-basket"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shopping-cart"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shovel"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shower-head"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shrink"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shrub"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["shuffle"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sigma"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-high"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-low"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-medium"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal-zero"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signal"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signature"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signpost-big"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["signpost"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["siren"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skip-back"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skip-forward"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["skull"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slack"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slash"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["slice"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sliders-horizontal"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sliders-vertical"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone-charging"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone-nfc"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smartphone"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smile-plus"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["smile"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["snail"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["snowflake"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sofa"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["soup"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["space"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spade"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sparkle"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sparkles"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["speaker"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["speech"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spell-check-2"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spell-check"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spline"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["split"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["spray-can"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["sprout"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-activity"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down-left"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down-right"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-down"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-left"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-down-left"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-down-right"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-up-left"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-out-up-right"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-right"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up-left"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up-right"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-arrow-up"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-asterisk"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-bottom-dashed-scissors"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chart-gantt"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-check-big"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-check"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-down"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-left"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-right"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-chevron-up"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-code"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-dashed-bottom-code"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 13,
				},
				["square-dashed-bottom"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed-kanban"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed-mouse-pointer"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dashed"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-divide"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-dot"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-equal"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-function"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-kanban"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-library"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-m"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-menu"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-minus"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-mouse-pointer"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-parking-off"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-parking"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pen"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-percent"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pi"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-pilcrow"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-play"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-plus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-power"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-radical"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-scissors"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-sigma"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-slash"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-split-horizontal"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-split-vertical"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-square"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-stack"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-terminal"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-user-round"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-user"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square-x"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["square"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["squircle"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["squirrel"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stamp"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star-half"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star-off"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["star"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["step-back"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["step-forward"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stethoscope"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sticker"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sticky-note"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["store"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stretch-horizontal"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["stretch-vertical"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["strikethrough"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["subscript"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-dim"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-medium"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-moon"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun-snow"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sun"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sunrise"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sunset"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["superscript"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swatch-book"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swiss-franc"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["switch-camera"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["sword"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["swords"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["syringe"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-cells-merge"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-cells-split"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-columns-split"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-of-contents"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-properties"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table-rows-split"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["table"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablet-smartphone"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablet"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tablets"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tag"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tags"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-1"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-2"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-3"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-4"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tally-5"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tangent"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["target"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["telescope"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tent-tree"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["tent"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["terminal"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tube-diagonal"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tube"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["test-tubes"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-cursor-input"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-cursor"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-quote"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-search"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text-select"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["text"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["theater"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 14,
				},
				["thermometer-snowflake"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thermometer-sun"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thermometer"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thumbs-down"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["thumbs-up"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-check"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-minus"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-percent"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-plus"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-slash"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket-x"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ticket"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tickets-plane"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tickets"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer-off"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer-reset"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["timer"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toggle-left"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toggle-right"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toilet"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tornado"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["torus"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["touchpad-off"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["touchpad"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tower-control"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["toy-brick"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tractor"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["traffic-cone"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-front-tunnel"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-front"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["train-track"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tram-front"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trash-2"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trash"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-deciduous"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-palm"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tree-pine"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trees"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trello"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-down"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-up-down"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trending-up"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-alert"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-dashed"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle-right"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["triangle"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["trophy"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["truck"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["turtle"] = {
					ImageRectPosition = Vector2.new(768, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv-minimal-play"] = {
					ImageRectPosition = Vector2.new(864, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv-minimal"] = {
					ImageRectPosition = Vector2.new(0, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["tv"] = {
					ImageRectPosition = Vector2.new(96, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["twitch"] = {
					ImageRectPosition = Vector2.new(192, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["twitter"] = {
					ImageRectPosition = Vector2.new(288, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["type-outline"] = {
					ImageRectPosition = Vector2.new(384, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["type"] = {
					ImageRectPosition = Vector2.new(480, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["umbrella-off"] = {
					ImageRectPosition = Vector2.new(576, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["umbrella"] = {
					ImageRectPosition = Vector2.new(672, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["underline"] = {
					ImageRectPosition = Vector2.new(768, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo-2"] = {
					ImageRectPosition = Vector2.new(864, 480),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo-dot"] = {
					ImageRectPosition = Vector2.new(0, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["undo"] = {
					ImageRectPosition = Vector2.new(96, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unfold-horizontal"] = {
					ImageRectPosition = Vector2.new(192, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unfold-vertical"] = {
					ImageRectPosition = Vector2.new(288, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["ungroup"] = {
					ImageRectPosition = Vector2.new(384, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["university"] = {
					ImageRectPosition = Vector2.new(480, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unlink-2"] = {
					ImageRectPosition = Vector2.new(576, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unlink"] = {
					ImageRectPosition = Vector2.new(672, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["unplug"] = {
					ImageRectPosition = Vector2.new(768, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["upload"] = {
					ImageRectPosition = Vector2.new(864, 576),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["usb"] = {
					ImageRectPosition = Vector2.new(0, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-check"] = {
					ImageRectPosition = Vector2.new(96, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-cog"] = {
					ImageRectPosition = Vector2.new(192, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-minus"] = {
					ImageRectPosition = Vector2.new(288, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-pen"] = {
					ImageRectPosition = Vector2.new(384, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-plus"] = {
					ImageRectPosition = Vector2.new(480, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-check"] = {
					ImageRectPosition = Vector2.new(576, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-cog"] = {
					ImageRectPosition = Vector2.new(672, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-minus"] = {
					ImageRectPosition = Vector2.new(768, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-pen"] = {
					ImageRectPosition = Vector2.new(864, 672),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-plus"] = {
					ImageRectPosition = Vector2.new(0, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-search"] = {
					ImageRectPosition = Vector2.new(96, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round-x"] = {
					ImageRectPosition = Vector2.new(192, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-round"] = {
					ImageRectPosition = Vector2.new(288, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-search"] = {
					ImageRectPosition = Vector2.new(384, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user-x"] = {
					ImageRectPosition = Vector2.new(480, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["user"] = {
					ImageRectPosition = Vector2.new(576, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["users-round"] = {
					ImageRectPosition = Vector2.new(672, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["users"] = {
					ImageRectPosition = Vector2.new(768, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utensils-crossed"] = {
					ImageRectPosition = Vector2.new(864, 768),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utensils"] = {
					ImageRectPosition = Vector2.new(0, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["utility-pole"] = {
					ImageRectPosition = Vector2.new(96, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["variable"] = {
					ImageRectPosition = Vector2.new(192, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vault"] = {
					ImageRectPosition = Vector2.new(288, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vegan"] = {
					ImageRectPosition = Vector2.new(384, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["venetian-mask"] = {
					ImageRectPosition = Vector2.new(480, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vibrate-off"] = {
					ImageRectPosition = Vector2.new(576, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["vibrate"] = {
					ImageRectPosition = Vector2.new(672, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["video-off"] = {
					ImageRectPosition = Vector2.new(768, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["video"] = {
					ImageRectPosition = Vector2.new(864, 864),
					ImageRectSize = Vector2.new(96, 96),
					Image = 15,
				},
				["videotape"] = {
					ImageRectPosition = Vector2.new(0, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["view"] = {
					ImageRectPosition = Vector2.new(96, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["voicemail"] = {
					ImageRectPosition = Vector2.new(192, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volleyball"] = {
					ImageRectPosition = Vector2.new(288, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-1"] = {
					ImageRectPosition = Vector2.new(384, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-2"] = {
					ImageRectPosition = Vector2.new(480, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-off"] = {
					ImageRectPosition = Vector2.new(576, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume-x"] = {
					ImageRectPosition = Vector2.new(672, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["volume"] = {
					ImageRectPosition = Vector2.new(768, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["vote"] = {
					ImageRectPosition = Vector2.new(864, 0),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet-cards"] = {
					ImageRectPosition = Vector2.new(0, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet-minimal"] = {
					ImageRectPosition = Vector2.new(96, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallet"] = {
					ImageRectPosition = Vector2.new(192, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wallpaper"] = {
					ImageRectPosition = Vector2.new(288, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wand-sparkles"] = {
					ImageRectPosition = Vector2.new(384, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wand"] = {
					ImageRectPosition = Vector2.new(480, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["warehouse"] = {
					ImageRectPosition = Vector2.new(576, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["washing-machine"] = {
					ImageRectPosition = Vector2.new(672, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["watch"] = {
					ImageRectPosition = Vector2.new(768, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waves-ladder"] = {
					ImageRectPosition = Vector2.new(864, 96),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waves"] = {
					ImageRectPosition = Vector2.new(0, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["waypoints"] = {
					ImageRectPosition = Vector2.new(96, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webcam"] = {
					ImageRectPosition = Vector2.new(192, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webhook-off"] = {
					ImageRectPosition = Vector2.new(288, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["webhook"] = {
					ImageRectPosition = Vector2.new(384, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["weight"] = {
					ImageRectPosition = Vector2.new(480, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wheat-off"] = {
					ImageRectPosition = Vector2.new(576, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wheat"] = {
					ImageRectPosition = Vector2.new(672, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["whole-word"] = {
					ImageRectPosition = Vector2.new(768, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-high"] = {
					ImageRectPosition = Vector2.new(864, 192),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-low"] = {
					ImageRectPosition = Vector2.new(0, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-off"] = {
					ImageRectPosition = Vector2.new(96, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi-zero"] = {
					ImageRectPosition = Vector2.new(192, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wifi"] = {
					ImageRectPosition = Vector2.new(288, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wind-arrow-down"] = {
					ImageRectPosition = Vector2.new(384, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wind"] = {
					ImageRectPosition = Vector2.new(480, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wine-off"] = {
					ImageRectPosition = Vector2.new(576, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wine"] = {
					ImageRectPosition = Vector2.new(672, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["workflow"] = {
					ImageRectPosition = Vector2.new(768, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["worm"] = {
					ImageRectPosition = Vector2.new(864, 288),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wrap-text"] = {
					ImageRectPosition = Vector2.new(0, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["wrench"] = {
					ImageRectPosition = Vector2.new(96, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["x"] = {
					ImageRectPosition = Vector2.new(192, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["youtube"] = {
					ImageRectPosition = Vector2.new(288, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zap-off"] = {
					ImageRectPosition = Vector2.new(384, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zap"] = {
					ImageRectPosition = Vector2.new(480, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zoom-in"] = {
					ImageRectPosition = Vector2.new(576, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
				["zoom-out"] = {
					ImageRectPosition = Vector2.new(672, 384),
					ImageRectSize = Vector2.new(96, 96),
					Image = 16,
				},
			}
		}
	end;
};

return require(DYHUB["3e"])
