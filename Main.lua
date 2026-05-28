local UIS = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Image = Instance.new("ImageLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main GUI
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,250)
Frame.Position = UDim2.new(0.5,-175,0.5,-125)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Frame.Active = true

-- Title
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundColor3 = Color3.fromRGB(40,40,40)
Title.Text = "Zoki Hub"
Title.TextColor3 = Color3.new(1,1,1)

-- Close Button
Close.Parent = Frame
Close.Size = UDim2.new(0,40,0,40)
Close.Position = UDim2.new(1,-40,0,0)
Close.Text = "X"
Close.BackgroundColor3 = Color3.fromRGB(170,0,0)

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Minimize Button
Minimize.Parent = Frame
Minimize.Size = UDim2.new(0,40,0,40)
Minimize.Position = UDim2.new(1,-80,0,0)
Minimize.Text = "-"
Minimize.BackgroundColor3 = Color3.fromRGB(100,100,100)

local minimized = false

Minimize.MouseButton1Click:Connect(function()
    minimized = not minimized
    
    if minimized then
        Frame.Size = UDim2.new(0,350,0,40)
    else
        Frame.Size = UDim2.new(0,350,0,250)
    end
end)

-- Image GUI
Image.Parent = Frame
Image.Size = UDim2.new(0,100,0,100)
Image.Position = UDim2.new(0,20,0,60)

-- Roblox Image ID
Image.Image = "rbxassetid://7072719338"

-- Draggable GUI
local dragging = false
local dragInput
local dragStart
local startPos

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        
        Frame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
