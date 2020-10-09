-- Stitch's UI Library
-- Version 1.0
-- Discord: https://discord.gg/Wxz8FZ2



local library = {} -- library

function library:CreateWindow(name, draggable) -- library function
    local destroyIfExist = game.Players.LocalPlayer.PlayerGui:GetChildren() -- check if ui is already loaded, if it is then it deletes the old one
    for index, destroyIfExist in pairs(destroyIfExist) do
    if destroyIfExist.Name == name then
            print("Destroyed "..tostring(name)..":Already existed")
            destroyIfExist:Destroy()
        end
    end
    local stitchhub = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local TextButton = Instance.new("TextButton")
    local line = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local bottomPart = Instance.new("Frame")
    local OpenClose = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UICorner_ = Instance.new("UICorner")
    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 0, 0.0081686452, 0)
    TextLabel.Size = UDim2.new(0, 292, 0, 25)
    TextLabel.ZIndex = 3
    TextLabel.Font = Enum.Font.GothamSemibold
    TextLabel.Text = "Stitch Hub"
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
    stitchhub.Name = name
    stitchhub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    stitchhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Main.Name = "Main"
    Main.Parent = stitchhub
    Main.BackgroundColor3 = Color3.fromRGB(20, 0, 65)
    Main.BorderSizePixel = 2
    Main.Position = UDim2.new(0.355855852, 0, 0.263157904, 0)
    Main.Size = UDim2.new(0, 292, 0, 165)
    Main.ZIndex = 2
    Container.Name = "Container"
    Container.Parent = Main
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.Position = UDim2.new(0.0214285646, 0, 0.200000003, 0)
    Container.Size = UDim2.new(0, 279, 0, 126)
    Container.ZIndex = 2
    UIGridLayout.Parent = Container
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 66, 0, 40)
    UICorner.Parent = game.Players.LocalPlayer.PlayerGui[name].Main
    UICorner.CornerRadius = UDim.new(0, 6)
    bottomPart.Name = "bottomPart"
    bottomPart.Parent = Main
    bottomPart.BackgroundColor3 = Color3.fromRGB(20, 0, 65)
    bottomPart.Position = UDim2.new(0.418246537, 0, 0.848484874, 0)
    bottomPart.Size = UDim2.new(0, 47, 0, 41)
    OpenClose.Name = "OpenClose"
    OpenClose.Parent = bottomPart
    OpenClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OpenClose.BackgroundTransparency = 1.000
    OpenClose.Position = UDim2.new(0.33289364, 0, 0.604097545, 0)
    OpenClose.Rotation = 270.000
    OpenClose.Size = UDim2.new(0, 15, 0, 15)
    OpenClose.ZIndex = 3
    OpenClose.Font = Enum.Font.GothamSemibold
    OpenClose.Text = ">"
    OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
    OpenClose.TextScaled = true
    OpenClose.TextSize = 14.000
    OpenClose.TextWrapped = true
    UICorner_.Parent = game.Players.LocalPlayer.PlayerGui[name].Main.bottomPart
    UICorner_.CornerRadius = UDim.new(0, 20)
        function dragify(Frame) -- drag script, shoutout to HamstaGang for this awesome script: https://v3rmillion.net/member.php?action=profile&uid=334135
            local dragSpeed = .25
            local dragToggle = nil
            local dragInput = nil
            local dragStart = nil
            function updateInput(input)
                local Delta = input.Position - dragStart
                local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
            end
            Frame.InputBegan:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                    dragToggle = true
                    dragStart = input.Position
                    startPos = Frame.Position
                    input.Changed:Connect(function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end)
                end
            end)
            Frame.InputChanged:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    dragInput = input
                end
            end)
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if (input == dragInput and dragToggle) then
                    updateInput(input)
                end
            end)
        end
        if draggable == true then
            dragify(game.Players.LocalPlayer.PlayerGui[name].Main)
        end

    local button = {} -- button
    function button:CreateButton(text, textScaled, callback) -- button function
        local callback = callback or function() end
        local TextButton = Instance.new("TextButton")
        local UICorner2 = Instance.new("UICorner")
        UICorner2.Parent = TextButton
        UICorner2.CornerRadius = UDim.new(0, 6)
        TextButton.Parent = Container
        TextButton.BackgroundColor3 = Color3.fromRGB(22, 0, 79)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.025641026, 0, 0.0363636352, 0)
        TextButton.Size = UDim2.new(0, 100, 0, 39)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 12.000
        TextButton.Text = text
        TextButton.TextScaled = textScaled
        local RippleColor        = Color3.fromRGB(0, 0, 0)
        local RippleTransparency = 0.8
        local PixelSize          = 2000
        local TimeLength         = 0.9
        local FadeLength         = 0.6
        local frame = TextButton
        local rgb = Color3.fromRGB
        local ud2 = UDim2.new
        local Circle = Instance.new("ImageLabel")
        Circle.Name = "Circle"
        Circle.Parent = TextButton
        Circle.AnchorPoint = Vector2.new(0.5, 0.5)
        Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Circle.BackgroundTransparency = 1.000
        Circle.Position = UDim2.new(0.5, 0, 0.5, 0)
        Circle.ZIndex = 10
        Circle.Image = "rbxassetid://266543268"
        Circle.ImageColor3 = Color3.fromRGB(0, 0, 0)
        Circle.ImageTransparency = 0.500
        repeat
            wait()
        until game.Players.LocalPlayer
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()

        TextButton.ClipsDescendants = true
        TextButton.AutoButtonColor = false


        function tweenInRipple(ripple)
            spawn(function()
                local TweenService = game:GetService("TweenService")
                local Part = ripple
                local Info = TweenInfo.new(
                    TimeLength,
                    Enum.EasingStyle.Linear,
                    Enum.EasingDirection.InOut,
                    0,
                    false,
                    0
                )
                local Goals = 
                {
                    Size = ud2(0, PixelSize, 0, PixelSize);
                }
                local Tween = TweenService:Create(Part, Info, Goals)
                Tween:Play()
            end)
        end

        function fadeOutRipple(ripple)
            spawn(function()
                local TweenService = game:GetService("TweenService")
                local Part = ripple
                local Info = TweenInfo.new(
                    FadeLength,
                    Enum.EasingStyle.Linear,
                    Enum.EasingDirection.InOut,
                    0,
                    false,
                    0
                )
                local Goals = 
                {
                    ImageTransparency = 1;
                }
                local Tween = TweenService:Create(Part, Info, Goals)
                Tween:Play()
                wait(FadeLength + 0.1)
                ripple:Destroy()
            end)
        end

        TextButton.MouseButton1Down:Connect(function()
            pcall(callback)
            local done = false
            local ripple = TextButton.Circle:Clone()
            ripple.Parent = TextButton
            ripple.ZIndex = TextButton.ZIndex + 1
            ripple.ImageColor3 = RippleColor
            ripple.ImageTransparency = RippleTransparency
            tweenInRipple(ripple)
            TextButton.MouseButton1Up:Connect(function()
                if done == false then
                    done = true
                    fadeOutRipple(ripple)
                end
            end)
            wait(4);
            done = true;
            fadeOutRipple(ripple)
        end)
    function button:CreateToggle(text, textScaled, callback)
        local actions = {}
        local toggled = false
        text = text or "New Toggle"
        callback = callback or function() end
        local TextButton = Instance.new("TextButton")
        local Background = Instance.new("Frame")
        local Frame = Instance.new("Frame")
        local UICorner3 = Instance.new("UICorner")
        local UICorner4 = Instance.new("UICorner")
        TextButton.Parent = game.Players.LocalPlayer.PlayerGui[name].Main.Container
        TextButton.BackgroundColor3 = Color3.fromRGB(22, 0, 79)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.306528509, 0, 0.284653276, 0)
        TextButton.Size = UDim2.new(0, 66, 0, 40)
        TextButton.ZIndex = 15
        TextButton.AutoButtonColor = false
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
        if textScaled == true then
            TextButton.TextScaled = true
        end
        UICorner3.Parent = TextButton
        UICorner3.CornerRadius = UDim.new(0, 6)
        Background.Name = "Background"
        Background.Parent = TextButton
        Background.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
        Background.BorderColor3 = Color3.fromRGB(170, 0, 0)
        Background.BorderSizePixel = 0
        Background.Position = UDim2.new(0, 11, 0.699999988, 0)
        Background.Size = UDim2.new(0, 10, 0, 10)
        Background.ZIndex = 2
        UICorner4.Parent = Background
        UICorner4.CornerRadius = UDim.new(0, 8)
        Frame.Parent = TextButton
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0, 11, 0.800000012, 0)
        Frame.Size = UDim2.new(0, 45, 0, 2)
        local function Fire()
            enabled = not enabled
            pcall(callback, enabled)
        end
        TextButton.MouseButton1Down:Connect(function()
            local var = Background
            if var.BackgroundColor3 == Color3.fromRGB(170, 0, 0) then
                if var.Position == UDim2.new(0, 11,0.7, 0) then
                    Fire()
                    var:TweenPosition(UDim2.new(0.53, 11,0.7, 0))
                    var.BackgroundColor3 = Color3.fromRGB(150, 20, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(130, 40, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(110, 60, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(90, 80, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(70, 100, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(50, 120, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(30, 140, 0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
                    wait(0.01)
                end
            elseif var.BackgroundColor3 == Color3.fromRGB(0, 170, 0) then
                if var.Position == UDim2.new(0.53, 11,0.7, 0) then
                    Fire()
                    var:TweenPosition(UDim2.new(0, 11,0.7, 0))
                    var.BackgroundColor3 = Color3.fromRGB(20,150 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(40,130 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(60,110 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(80,90 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(100,70 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(120,50 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(140,30 ,0)
                    wait(0.01)
                    var.BackgroundColor3 = Color3.fromRGB(170,0 ,0)
                    wait(0.01)
                end
            end
        end)
    end
end
    return button
end
return library
