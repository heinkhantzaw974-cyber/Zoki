local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Tab1 = Instance.new("TextButton")
local Tab2 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 350, 0, 250)
Frame.Position = UDim2.new(0.5, -175, 0.5, -125)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)

-- Title
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "Zoki Hub"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundColor3 = Color3.fromRGB(40,40,40)

-- Close Button
Close.Parent = Frame
Close.Size = UDim2.new(0,40,0,40)
Close.Position = UDim2.new(1,-40,0,0)
Close.Text = "X"
Close.TextColor3 = Color3.new(1,1,1)
Close.BackgroundColor3 = Color3.fromRGB(170,0,0)

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Tab 1
Tab1.Parent = Frame
Tab1.Size = UDim2.new(0,120,0,40)
Tab1.Position = UDim2.new(0,10,0,60)
Tab1.Text = "Farm"
Tab1.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab1.TextColor3 = Color3.new(1,1,1)

-- Tab 2
Tab2.Parent = Frame
Tab2.Size = UDim2.new(0,120,0,40)
Tab2.Position = UDim2.new(0,10,0,110)
Tab2.Text = "Teleport"
Tab2.BackgroundColor3 = Color3.fromRGB(50,50,50)
Tab2.TextColor3 = Color3.new(1,1,1)

-- Button actions
Tab1.MouseButton1Click:Connect(function()
    print("Farm clicked")
end)

Tab2.MouseButton1Click:Connect(function()
    print("Teleport clicked")
end)
