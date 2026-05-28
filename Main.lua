local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)

TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1,0,0,50)
TextLabel.Text = "My Hub"
TextLabel.TextColor3 = Color3.new(1,1,1)
TextLabel.BackgroundTransparency = 1

