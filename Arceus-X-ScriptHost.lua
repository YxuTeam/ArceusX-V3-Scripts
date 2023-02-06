--[[
      Arceus X Scripts Host # spdmteam.com
      Made by Riky47#3355
]]

pcall(function()
	if getgenv().ArceusHost then -- If already open
		return
	end
end)

local Arceus = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Intro = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Title = Instance.new("TextLabel")
local Scripts = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Script = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Enabled = Instance.new("Frame")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local Check = Instance.new("Frame")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

--Properties:

Arceus.Name = "Arceus"
Arceus.Enabled = true
Arceus.ResetOnSpawn = false
Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Arceus.DisplayOrder = 999999999

Main.Name = "Main"
Main.Parent = Arceus
Main.Active = true
Main.Draggable = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.15, 0) --UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0.2, 0, 0.2, 0)

UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Main

Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0.1, 0)
UICorner_2.Parent = Intro

Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0.75, 0, 0.75, 0)
Logo.ZIndex = 2
Logo.Image = "http://www.roblox.com/asset/?id=9178187770"
Logo.ScaleType = Enum.ScaleType.Fit

UIAspectRatioConstraint.Parent = Logo

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(1, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.975, 0, 0.075, 0)
Title.Size = UDim2.new(0.85, 0, 0.155, 0)
Title.Font = Enum.Font.TitilliumWeb
Title.FontFace = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold)
Title.Text = "Arceus X | Scripts host"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center

Scripts.Name = "Scripts"
Scripts.Parent = Main
Scripts.Active = true
Scripts.AnchorPoint = Vector2.new(0.5, 1)
Scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scripts.BackgroundTransparency = 1.000
Scripts.BorderSizePixel = 0
Scripts.Position = UDim2.new(0.5, 0, 0.95, 0)
Scripts.Size = UDim2.new(0.95, 0, 0.65, 0)
Scripts.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = Scripts
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Script.Name = "Script"
Script.Visible = false
Script.Parent = Arceus
Script.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Script.Size = UDim2.new(0.95, 0, 0, 50)

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Script

Enabled.Name = "Enabled"
Enabled.Parent = Script
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)

UIAspectRatioConstraint_2.Parent = Enabled

UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(255, 74, 74)
Check.Position = UDim2.new(0.5, 0, 0.5, 0)
Check.Size = UDim2.new(0.7, 0, 0.7, 0)

UIAspectRatioConstraint_3.Parent = Check

UICorner_5.CornerRadius = UDim.new(0.3, 0)
UICorner_5.Parent = Check

Name.Name = "Name"
Name.Parent = Script
Name.AnchorPoint = Vector2.new(0, 0.5)
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.057, 0, 0.5, 0)
Name.Size = UDim2.new(0.75, 0, 0.8, 0)
Name.Font = Enum.Font.TitilliumWeb
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient.Parent = Script

-- SCRIPT

local TweenService = game:GetService("TweenService")
local arceus_module = {}
local mod_script = Instance.new('ModuleScript', Arceus)
mod_script.Name = "Module"

local function uiparent()
	local success, parent = pcall(function()
		return gethui()
	end)

	if not success then
		return game:GetService("CoreGui")
	end

	return parent
end

local function refreshList(list)
	Scripts:ClearAllChildren()
	for _, scr in pairs(list) do
		local newScr = Script:Clone()
		newScr.MouseButton1Down:Connect(function()
			list.enabled = not list.enabled
			list.toggle:Fire(list.enabled)
			
			newScr:WaitForChild("Enabled"):WaitForChild("Check").Visible = list.enabled
		end)
		
		newScr.Name = list.Name
		newScr.Parent = Scripts
		newScr.Visible = true
	end
end

local function module_script(name)
	local module = {}

	function module.hookScript()
		table.insert(module, {
			name = Name,
			enabled = false,
			toggle = Instance.new("BindableEvent")
		})
		
		return module[#module].toggle
	end
	return module	
end

arceus_module[mod_script] = module_script

pcall(function()
	getgenv().ArceusHost = arceus_module
end)

-- INIT

local success, err = pcall(function()
	Arceus.Parent = uiparent()
end)

if not success then
	Arceus.Parent = game:GetService("Players").LocalPlayer.PlayerGui
end

Main:TweenPosition(
	UDim2.fromScale(0.5, 0.5),
	Enum.EasingDirection.In,
	Enum.EasingStyle.Quad,
	1, false, nil
)

task.wait(1.5)
Logo:TweenSizeAndPosition(
	UDim2.fromScale(0.175, 0.175),
	UDim2.fromScale(0.075, 0.15),
	Enum.EasingDirection.In,
	Enum.EasingStyle.Quad,
	1, false, nil
)

task.wait(1.5)
TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Transparency = 1}):Play()
