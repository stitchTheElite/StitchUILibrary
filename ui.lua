-- Stitch's UI Library
-- Version 1.0
-- Discord: https://discord.gg/Wxz8FZ2



local library = {}

function library:CreateWindow(name)
    local stitchhub = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local TextLabel = Instance.new("TextLabel")
    local line = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UICorner2 = Instance.new("UICorner")
    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(0, 292, 0, 25)
    TextLabel.Font = Enum.Font.GothamSemibold
    TextLabel.Text = "Stitch"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.Text = name
    line.Name = "line"
    line.Parent = Main
    line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    line.BorderSizePixel = 0
    line.Position = UDim2.new(0, 0, 0.151515156, 0)
    line.Size = UDim2.new(0, 292, 0, 2)
    stitchhub.Name = "stitchhub"
    stitchhub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    stitchhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Main.Name = "Main"
    Main.Parent = stitchhub
    Main.BackgroundColor3 = Color3.fromRGB(20, 0, 65)
    Main.BorderSizePixel = 2
    Main.Position = UDim2.new(0.355855852, 0, 0.263157904, 0)
    Main.Size = UDim2.new(0, 292, 0, 165)
    Container.Name = "Container"
    Container.Parent = Main
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.Position = UDim2.new(0.0214285646, 0, 0.200000003, 0)
    Container.Size = UDim2.new(0, 279, 0, 126)
    UIGridLayout.Parent = Container
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 66, 0, 40)
    UICorner.Parent = Main
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner2.Parent = TextButton
    UICorner2.CornerRadius = UDim.new(0, 6)
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild(name) then
        game.Players.LocalPlayer.PlayerGui[name]:Destroy()
    end

    local button = {}
    function button:CreateButton(text, textScaled)
        local TextButton = Instance.new("TextButton")
        TextButton.Parent = Container
        TextButton.BackgroundColor3 = Color3.fromRGB(22, 0, 79)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.025641026, 0, 0.0363636352, 0)
        TextButton.Size = UDim2.new(0, 100, 0, 39)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 12.000
        TextButton.Text = text
        TextButton.TextScaled = scaled
    end
    return button
end
return library
