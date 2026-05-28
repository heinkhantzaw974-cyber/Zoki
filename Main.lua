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

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ZokiHub"

-- MAIN GUI
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 400, 0, 250)
MainFrame.Position = UDim2.new(0.3, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
MainFrame.Active = true
MainFrame.Draggable = true

-- TOP BAR
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

-- CLOSE BUTTON
CloseButton.Parent = TopBar
CloseButton.Size = UDim2.new(0,40,0,40)
CloseButton.Position = UDim2.new(1,-40,0,0)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
CloseButton.TextColor3 = Color3.new(1,1,1)

-- MINIMIZE BUTTON
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

-- IMAGE
ImageLabel.Parent = MainFrame
ImageLabel.Size = UDim2.new(0,120,0,120)
ImageLabel.Position = UDim2.new(0,10,0,60)
ImageLabel.BackgroundTransparency = 1

-- မင်း image id ထည့်
ImageLabel.Image = "rbxassetid://YOUR_ID"

-- TAB 1
Tab1.Parent = MainFrame
Tab1.Size = UDim2.new(0,120,0,40)
Tab1.Position = UDim2.new(0,150,0,70)
Tab1.Text = "Auto Farm"
Tab1.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab1.TextColor3 = Color3.new(1,1,1)

-- TAB 2
Tab2.Parent = MainFrame
Tab2.Size = UDim2.new(0,120,0,40)
Tab2.Position = UDim2.new(0,150,0,120)
Tab2.Text = "Teleport"
Tab2.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab2.TextColor3 = Color3.new(1,1,1)

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

-- MINIMIZE FUNCTION
local minimized = false

MinimizeButton.MouseButton1Click:Connect(function()
	if minimized == false then
		MainFrame.Size = UDim2.new(0,400,0,40)
		minimized = true
	else
		MainFrame.Size = UDim2.new(0,400,0,250)
		minimized = false
	end
end)

-- TAB FUNCTIONS
Tab1.MouseButton1Click:Connect(function()
	print("Auto Farm Clicked")
end)

Tab2.MouseButton1Click:Connect(function()
	print("Teleport Clicked")
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "ZOKI HUB",
	Text = "GUI Loaded!",
	Duration = 5
})
