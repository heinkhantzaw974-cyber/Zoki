local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")

local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local OpenButton = Instance.new("TextButton")

local ImageLabel = Instance.new("ImageLabel")

local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")
local Tab3 = Instance.new("TextButton")

-- ICONS
local Icon1 = Instance.new("ImageLabel")
local Icon2 = Instance.new("ImageLabel")
local Icon3 = Instance.new("ImageLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ZokiHub"

-- MAIN GUI
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 420, 0, 280)
MainFrame.Position = UDim2.new(0.3,0,0.2,0)
MainFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
MainFrame.Active = true
MainFrame.Draggable = true

-- TOPBAR
TopBar.Parent = MainFrame
TopBar.Size = UDim2.new(1,0,0,40)
TopBar.BackgroundColor3 = Color3.fromRGB(35,35,35)

-- TITLE
Title.Parent = TopBar
Title.Size = UDim2.new(0.5,0,1,0)
Title.Text = "ZOKI HUB"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

-- CLOSE
CloseButton.Parent = TopBar
CloseButton.Size = UDim2.new(0,40,0,40)
CloseButton.Position = UDim2.new(1,-40,0,0)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
CloseButton.TextColor3 = Color3.new(1,1,1)

-- MINIMIZE
MinimizeButton.Parent = TopBar
MinimizeButton.Size = UDim2.new(0,40,0,40)
MinimizeButton.Position = UDim2.new(1,-80,0,0)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255,170,0)
MinimizeButton.TextColor3 = Color3.new(1,1,1)

-- OPEN BUTTON
OpenButton.Parent = ScreenGui
OpenButton.Size = UDim2.new(0,100,0,40)
OpenButton.Position = UDim2.new(0,20,0.5,0)
OpenButton.Text = "OPEN"
OpenButton.Visible = false
OpenButton.BackgroundColor3 = Color3.fromRGB(0,170,255)
OpenButton.TextColor3 = Color3.new(1,1,1)

-- MAIN IMAGE
ImageLabel.Parent = MainFrame
ImageLabel.Size = UDim2.new(0,120,0,120)
ImageLabel.Position = UDim2.new(0,10,0,60)
ImageLabel.BackgroundTransparency = 1

-- SAMPLE IMAGE
ImageLabel.Image = "rbxassetid://7072719338"

---------------------------------------------------
-- TAB 1
Tab1.Parent = MainFrame
Tab1.Size = UDim2.new(0,170,0,40)
Tab1.Position = UDim2.new(0,150,0,70)
Tab1.Text = " Auto Farm"
Tab1.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab1.TextColor3 = Color3.new(1,1,1)
Tab1.Font = Enum.Font.GothamBold
Tab1.TextSize = 18

-- ICON 1
Icon1.Parent = Tab1
Icon1.Size = UDim2.new(0,25,0,25)
Icon1.Position = UDim2.new(0,5,0.5,-12)
Icon1.BackgroundTransparency = 1
Icon1.Image = "rbxassetid://6031094678"

---------------------------------------------------
-- TAB 2
Tab2.Parent = MainFrame
Tab2.Size = UDim2.new(0,170,0,40)
Tab2.Position = UDim2.new(0,150,0,120)
Tab2.Text = " Teleport"
Tab2.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab2.TextColor3 = Color3.new(1,1,1)
Tab2.Font = Enum.Font.GothamBold
Tab2.TextSize = 18

-- ICON 2
Icon2.Parent = Tab2
Icon2.Size = UDim2.new(0,25,0,25)
Icon2.Position = UDim2.new(0,5,0.5,-12)
Icon2.BackgroundTransparency = 1
Icon2.Image = "rbxassetid://6031265976"

---------------------------------------------------
-- TAB 3
Tab3.Parent = MainFrame
Tab3.Size = UDim2.new(0,170,0,40)
Tab3.Position = UDim2.new(0,150,0,170)
Tab3.Text = " Settings"
Tab3.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab3.TextColor3 = Color3.new(1,1,1)
Tab3.Font = Enum.Font.GothamBold
Tab3.TextSize = 18

-- ICON 3
Icon3.Parent = Tab3
Icon3.Size = UDim2.new(0,25,0,25)
Icon3.Position = UDim2.new(0,5,0.5,-12)
Icon3.BackgroundTransparency = 1
Icon3.Image = "rbxassetid://6031280882"

---------------------------------------------------
-- CLOSE FUNCTION
CloseButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	OpenButton.Visible = true
end)

-- OPEN FUNCTION
OpenButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = true
	OpenButton.Visible = false
end)

-- MINIMIZE
local minimized = false

MinimizeButton.MouseButton1Click:Connect(function()
	if minimized == false then
		MainFrame.Size = UDim2.new(0,420,0,40)
		minimized = true
	else
		MainFrame.Size = UDim2.new(0,420,0,280)
		minimized = false
	end
end)

---------------------------------------------------
-- BUTTON FUNCTIONS
Tab1.MouseButton1Click:Connect(function()
	print("Auto Farm")
end)

Tab2.MouseButton1Click:Connect(function()
	print("Teleport")
end)

Tab3.MouseButton1Click:Connect(function()
	print("Settings")
end)

---------------------------------------------------
game.StarterGui:SetCore("SendNotification", {
	Title = "ZOKI HUB",
	Text = "GUI Loaded!",
	Duration = 5
})
