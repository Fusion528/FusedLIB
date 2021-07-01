function CreateGui(GuiName)
    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local ScreenGui = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")

    --Properties:

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = "FusedLIB"
    ScreenGui.ResetOnSpawn = false

    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    Main.Position = UDim2.new(0.241803274, 0, 0.145833328, 0)
    Main.Size = UDim2.new(0, 377, 0, 369)

    UICorner.Parent = Main

    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 0, 0.0332103409, 0)
    TextLabel.Size = UDim2.new(0, 376, 0, 38)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 40.000
    TextLabel.Text = GuiName
    TextLabel.TextWrapped = true
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top

    Container.Name = "Container"
    Container.Parent = ScreenGui
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.Position = UDim2.new(0.241803274, 0, 0.25, 0)
    Container.Size = UDim2.new(0, 377, 0, 289)

    UIListLayout.Parent = Container
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    UIPadding.Parent = Container
    UIPadding.PaddingTop = UDim.new(0, 1)
end

function AddButton(TextFunction, Callback)
    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local TextButton = Instance.new("TextButton")

    --Properties:

    TextButton.Parent = game:GetService("Players").LocalPlayer.PlayerGui.FusedLIB.Container
    TextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0, 0, 0.0675675645, 0)
    TextButton.Size = UDim2.new(0, 336, 0, 39)
    TextButton.Font = Enum.Font.Cartoon
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextScaled = true
    TextButton.TextSize = 14.000
    TextButton.Text = TextFunction
    TextButton.TextWrapped = true

    TextButton.MouseButton1Click:Connect(function()
        pcall(Callback)
    end)
end
