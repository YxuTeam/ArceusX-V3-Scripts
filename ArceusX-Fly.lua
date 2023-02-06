--[[
		MOBILE FLYING SCRIPTS
		Original: me_ozoneYT & Lucifear
		
		Rewrited and optimized by Riky47#3355 for Arceus X
		# spdmteam.com
]]

local speeds = 5
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat

-- UI

local MobileFly = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local Subtract = Instance.new("TextButton")
local Increment = Instance.new("TextButton")
local Down = Instance.new("TextButton")
local Up = Instance.new("TextButton")
local credits = Instance.new("TextLabel")

MobileFly.Name = "MobileFly"
MobileFly.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MobileFly
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.150000006, 0, 0.150000006, 0)
MainFrame.Active = true
MainFrame.Draggable = true

Toggle.Name = "Toggle"
Toggle.Parent = MainFrame
Toggle.AnchorPoint = Vector2.new(0.5, 0)
Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.5, 0, 0.100000001, 0)
Toggle.Size = UDim2.new(0.5, 0, 0.300000012, 0)
Toggle.Font = Enum.Font.Sarpanch
Toggle.Text = "Fly: " .. speeds
Toggle.TextColor3 = Color3.fromRGB(100, 100, 100)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true

Subtract.Name = "Subtract"
Subtract.Parent = MainFrame
Subtract.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Subtract.BorderColor3 = Color3.fromRGB(0, 0, 0)
Subtract.BorderSizePixel = 0
Subtract.Position = UDim2.new(0.075000003, 0, 0.100000001, 0)
Subtract.Size = UDim2.new(0.125, 0, 0.300000012, 0)
Subtract.Font = Enum.Font.Sarpanch
Subtract.Text = "-"
Subtract.TextColor3 = Color3.fromRGB(255, 57, 57)
Subtract.TextScaled = true
Subtract.TextSize = 14.000
Subtract.TextWrapped = true

Increment.Name = "Increment"
Increment.Parent = MainFrame
Increment.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Increment.BorderColor3 = Color3.fromRGB(0, 0, 0)
Increment.BorderSizePixel = 0
Increment.Position = UDim2.new(0.800000012, 0, 0.100000001, 0)
Increment.Size = UDim2.new(0.125, 0, 0.300000012, 0)
Increment.Font = Enum.Font.Sarpanch
Increment.Text = "+"
Increment.TextColor3 = Color3.fromRGB(85, 170, 0)
Increment.TextScaled = true
Increment.TextSize = 14.000
Increment.TextWrapped = true

Down.Name = "Down"
Down.Parent = MainFrame
Down.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Down.BorderColor3 = Color3.fromRGB(0, 0, 0)
Down.BorderSizePixel = 0
Down.Position = UDim2.new(0.075000003, 0, 0.449999988, 0)
Down.Size = UDim2.new(0.400000006, 0, 0.300000012, 0)
Down.Font = Enum.Font.Sarpanch
Down.Text = "Down"
Down.TextColor3 = Color3.fromRGB(255, 57, 57)
Down.TextScaled = true
Down.TextSize = 14.000
Down.TextWrapped = true

Up.Name = "Up"
Up.Parent = MainFrame
Up.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Up.BorderColor3 = Color3.fromRGB(0, 0, 0)
Up.BorderSizePixel = 0
Up.Position = UDim2.new(0.524999976, 0, 0.449999988, 0)
Up.Size = UDim2.new(0.400000006, 0, 0.300000012, 0)
Up.Font = Enum.Font.Sarpanch
Up.Text = "Up"
Up.TextColor3 = Color3.fromRGB(85, 170, 0)
Up.TextScaled = true
Up.TextSize = 14.000
Up.TextWrapped = true

credits.Name = "credits"
credits.Parent = MainFrame
credits.AnchorPoint = Vector2.new(0, 1)
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0, 0, 1, 0)
credits.Size = UDim2.new(1, 0, 0.200000003, 0)
credits.Font = Enum.Font.Kalam
credits.Text = "Arceus X | Mobile fly remake"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true
credits.TextYAlignment = Enum.TextYAlignment.Top

-- SCRIPT

local function uiparent()
	return game:GetService("CoreGui")
end

local function updatespeed(char, hum)
	if nowe == true then
		tpwalking = false
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait() -- Make sure old threads are terminated

		for i = 1, speeds do
			spawn(function()
				tpwalking = true

				while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						char:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
	end
end

Toggle.MouseButton1Down:Connect(function()
	local char = speaker.Character
	if not char or not char.Humanoid then
		return
	end
	
	local hum = char.Humanoid
	if nowe == true then
		nowe = false
		Toggle.TextColor3 = Color3.fromRGB(100, 100, 100)

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)	
	else
		nowe = true
		Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)

		updatespeed(char, hum)
		
		char.Animate.Disabled = true
		for i,v in next, hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		
		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		hum:ChangeState(Enum.HumanoidStateType.Swimming)
	end

	local UpperTorso = speaker.Character.LowerTorso or speaker.Character.Torso
	local flying = true
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	local bg = Instance.new("BodyGyro", UpperTorso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = UpperTorso.CFrame
	
	local bv = Instance.new("BodyVelocity", UpperTorso)
	bv.velocity = Vector3.new(0,0.1,0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	
	if nowe == true then
		hum.PlatformStand = true
	end
	
	while nowe == true or hum.Health == 0 do
		task.wait()

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed-1
			if speed < 0 then
				speed = 0
			end
		end
		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
		else
			bv.velocity = Vector3.new(0,0,0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	end
	
	ctrl = {f = 0, b = 0, l = 0, r = 0}
	lastctrl = {f = 0, b = 0, l = 0, r = 0}
	speed = 0
	bg:Destroy()
	bv:Destroy()
	
	hum.PlatformStand = false
	char.Animate.Disabled = false
	tpwalking = false
end)

Up.MouseButton1Down:connect(function()
	local char = speaker.Character
	if char then
		char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	end
end)

Down.MouseButton1Down:connect(function()
	local char = speaker.Character
	if char then
		char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
	end
end)

speaker.CharacterAdded:Connect(function(char)
	local char = speaker.Character
	if char then
		task.wait(0.7)
		char.Humanoid.PlatformStand = false
		char.Animate.Disabled = false
	end
end)

Increment.MouseButton1Down:connect(function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		
		speeds = speeds + 1
		Toggle.Text = "Fly: " .. speeds
		
		updatespeed(char, hum)
	end
end)

Subtract.MouseButton1Down:connect(function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		
		if speeds > 1 then
			speeds = speeds - 1
			updatespeed(char, hum)
		end
	
		Toggle.Text = "Fly: " .. speeds
	end
end)

MobileFly.Parent = uiparent()
