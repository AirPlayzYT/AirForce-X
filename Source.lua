local windows = {}
local mouse = game:GetService("Players").LocalPlayer:GetMouse();

function createWindow(name)
    table.insert(windows, name)
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
        if v.Name == name then
            v:Destroy()
        end
    end
    local ScreenGui = Instance.new("ScreenGui")
    local Top = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIGridLayout = Instance.new("UIGridLayout")
    local Label = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local Toggle = Instance.new("TextButton")

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = name

    Top.Name = "Top"
    Top.Parent = ScreenGui
    Top.BackgroundColor3 = Color3.fromRGB(5, 10, 255)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.207299262, 0, 0.232294604, 0)
    Top.Size = UDim2.new(0, 200, 0, 35)

    Container.Name = "Container"
    Container.Parent = Top
    Container.BackgroundColor3 = Color3.fromRGB(255, 10, 5)
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 1, 0)
    Container.Size = UDim2.new(0, 200, 0, 300)

    UIGridLayout.Parent = Container
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 180, 0, 40)
    UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    Label.Name = "Label"
    Label.Parent = Top
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1.000
    Label.Position = UDim2.new(0.0700000003, 0, 0.142857149, 0)
    Label.Size = UDim2.new(0, 151, 0, 25)
    Label.Font = Enum.Font.Highway
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 25.000
    Label.TextXAlignment = Enum.TextXAlignment.Left

    Line.Name = "Line"
    Line.Parent = Top
    Line.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 1.00000048, 0)
    Line.Size = UDim2.new(0, 200, 0, 2)
    Line.ZIndex = 2

    Toggle.Name = "Toggle"
    Toggle.Parent = Top
    Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.BorderSizePixel = 0
    Toggle.Position = UDim2.new(0.824999988, 0, 0, 0)
    Toggle.Size = UDim2.new(0, 35, 0, 35)
    Toggle.Font = Enum.Font.SourceSansBold
    Toggle.Text = "X"
    Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.TextSize = 30.000

    local function OFDAP_fake_script() -- Toggle.Script 
        local script = Instance.new('Script', Toggle)

        local opened = true
        
        function close()
            if opened == true then
                for i,v in pairs(script.Parent.Parent.Container:GetChildren()) do
                    if v.ClassName ~= "UIGridLayout" then
                        v.Visible = false
                    end
                end
                script.Parent.Parent.Container:TweenSize(UDim2.new(0, 200, 0, 0))
                repeat
                    wait(0.1)
                until script.Parent.Parent.Container.Size.Y == UDim.new(0,0)
                script.Parent.Text = "-"
                opened = false
            elseif opened == false then
                script.Parent.Parent.Container:TweenSize(UDim2.new(0, 200, 0, 300))
                repeat
                    wait(0.1)
                until script.Parent.Parent.Container.Size.Y == UDim.new(0,300)
                script.Parent.Text = "X"
                opened = true
                for i,v in pairs(script.Parent.Parent.Container:GetChildren()) do
                    if v.ClassName ~= "UIGridLayout" then
                        v.Visible = true
                    end
                end
            end
        end
        
        script.Parent.MouseButton1Click:Connect(close)
    end
    coroutine.wrap(OFDAP_fake_script)()
end

function CreateButton(name, window, callback)
    name = name or "New Button"
    callback = callback or function() end
    if check ~= nil then
        local Btn = Instance.new("TextButton")

        Btn.Name = name
        Btn.Parent = game.Players.LocalPlayer.PlayerGui[window].Top.Container
        Btn.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
        Btn.BackgroundTransparency = 1.000
        Btn.BorderSizePixel = 0
        Btn.Position = UDim2.new(-0.105000004, 0, 0.703333378, 0)
        Btn.Size = UDim2.new(0, 200, 0, 50)
        Btn.Font = Enum.Font.Highway
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.TextSize = 25.000
        Btn.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)

        Btn.MouseButton1Click:Connect(function()
            pcall(callback)
        end)
    end
end

function CreateToggle(name, window, callback)
    name = name or "New Toggle"
    callback = callback or function() end
    local switchactions = {}
    local check = game.Players.LocalPlayer.PlayerGui:FindFirstChild(window)
    if check ~= nil then
        local Toggle = Instance.new("Frame")
        local onoroff = Instance.new("ImageLabel")
        local text = Instance.new("TextLabel")
        local label = Instance.new("TextLabel")
        local btn = Instance.new("TextButton")

        Toggle.Name = name
        Toggle.Parent = game.Players.LocalPlayer.PlayerGui[window].Top.Container
        Toggle.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
        Toggle.BackgroundTransparency = 1.000
        Toggle.Size = UDim2.new(0, 100, 0, 100)

        onoroff.Name = "onoroff"
        onoroff.Parent = Toggle
        onoroff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        onoroff.BackgroundTransparency = 1.000
        onoroff.Position = UDim2.new(0.816666663, 0, 0.174999997, 0)
        onoroff.Size = UDim2.new(0, 25, 0, 25)
        onoroff.Image = "rbxassetid://3570695787"
        onoroff.ImageColor3 = Color3.fromRGB(25, 25, 25)
        onoroff.ScaleType = Enum.ScaleType.Slice
        onoroff.SliceCenter = Rect.new(100, 100, 100, 100)
        onoroff.SliceScale = 0.060

        text.Name = "text"
        text.Parent = onoroff
        text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        text.BackgroundTransparency = 1.000
        text.Size = UDim2.new(0, 25, 0, 25)
        text.Font = Enum.Font.SourceSansBold
        text.Text = ""
        text.TextColor3 = Color3.fromRGB(255, 255, 255)
        text.TextSize = 20.000

        label.Name = "label"
        label.Parent = Toggle
        label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        label.BackgroundTransparency = 1.000
        label.Position = UDim2.new(0, 0, 0.100000001, 0)
        label.Size = UDim2.new(0, 140, 0, 30)
        label.Font = Enum.Font.Highway
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextSize = 20.000
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Text = name

        btn.Name = "btn"
        btn.Parent = Toggle
        btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        btn.BackgroundTransparency = 1.000
        btn.Position = UDim2.new(0.816666663, 0, 0.174999997, 0)
        btn.Size = UDim2.new(0, 25, 0, 25)
        btn.Font = Enum.Font.SourceSans
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
        btn.TextSize = 14.000
        btn.TextTransparency = 1.000

        function Trigger()
            enabled = not enabled
            text.Text = enabled and utf8.char(10003) or ""
            pcall(callback, enabled)
        end

        btn.MouseButton1Click:Connect(Trigger)

        function switchactions:Set(state)
            enableed = state
            text.Text = enabled and utf8.char(10003) or ""
            pcal(callback, enabled)
        end

        return switchactions
    end
end

function CreateBox(name, win, callback)
    name = name or "New Toggle"
    callback = callback or function() end
    local check = game.Players.LocalPlayer.PlayerGui:FindFirstChild(win)
    if check ~= nil then
        local TextBox = Instance.new("TextBox")

        TextBox.Parent = game.Players.LocalPlayer.PlayerGui[win].Top.Container
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.Size = UDim2.new(0, 200, 0, 50)
        TextBox.Font = Enum.Font.Highway
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 25.000
        TextBox.Text = name
        TextBox.Name = name

        TextBox.FocusLost:Connect(function(ep)
            if ep then
                if #TextBox.Text > 0 then
                    pcall(callback, TextBox.Text)
                    TextBox.Text = name
                end
            end
        end)
    end
end

function CreateSlider(name, win, min, max, callback)
    name = name or "New Toggle"
    callback = callback or function() end
    local check = game.Players.LocalPlayer.PlayerGui:FindFirstChild(win)
    if check ~= nil then
        local Slider = Instance.new("Frame")
        local label = Instance.new("TextLabel")
        local btn = Instance.new("TextButton")
        local Slider_2 = Instance.new("Frame")
        local value = Instance.new("TextLabel")

        Slider.Name = name
        Slider.Parent = game.Players.LocalPlayer.PlayerGui[win].Top.Container
        Slider.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
        Slider.BackgroundTransparency = 1.000
        Slider.Size = UDim2.new(0, 100, 0, 100)

        label.Name = "label"
        label.Parent = Slider
        label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        label.BackgroundTransparency = 1.000
        label.Position = UDim2.new(0, 0, 0.100000001, 0)
        label.Size = UDim2.new(0, 110, 0, 10)
        label.Font = Enum.Font.Highway
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextSize = 13.000
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Text = name

        btn.Name = "btn"
        btn.Parent = Slider
        btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        btn.BackgroundTransparency = 1.000
        btn.Position = UDim2.new(0, 0, 0.625, 0)
        btn.Size = UDim2.new(0, 180, 0, 10)
        btn.Font = Enum.Font.SourceSans
        btn.Text = ""
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
        btn.TextSize = 14.000

        Slider_2.Name = "Slider"
        Slider_2.Parent = btn
        Slider_2.BackgroundColor3 = Color3.fromRGB(255, 60, 30)
        Slider_2.BorderColor3 = Color3.fromRGB(170, 0, 0)
        Slider_2.Position = UDim2.new(0, 0, -0.125, 0)
        Slider_2.Size = UDim2.new(0, 0, 0, 10)

        value.Name = "value"
        value.Parent = Slider
        value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        value.BackgroundTransparency = 1.000
        value.Position = UDim2.new(0.777777791, 0, 0.100000001, 0)
        value.Size = UDim2.new(0, 40, 0, 10)
        value.Font = Enum.Font.Highway
        value.Text = min .. "/" .. max
        value.TextColor3 = Color3.fromRGB(255, 255, 255)
        value.TextSize = 13.000
        value.TextXAlignment = Enum.TextXAlignment.Right

        btn.MouseButton1Down:Connect(function()
            value = math.floor((((tonumber(max) - tonumber(min)) / 180) * Slider_2.AbsoluteSize.X) + tonumber(min)) or 0

            pcall(function()
                callback(value)
            end)

            Slider_2.Size = UDim2.new(0, math.clamp(mouse.X - Slider_2.AbsolutePosition.X, 0, 180), 0, 10)

            moveconnection = mouse.Move:Connect(function()
                game.Players.LocalPlayer["PlayerGui"][win].Top.Container[name].value.Text = value .. "/" .. max

                value = math.floor((((tonumber(max) - tonumber(min)) / 180) * Slider_2.AbsoluteSize.X) + tonumber(min))
                pcall(function()
                    callback(value)
                end)
                Slider_2.Size = UDim2.new(0, math.clamp(mouse.X - Slider_2.AbsolutePosition.X, 0, 180), 0, 10)
            end)
            releaseconnection = btn.InputEnded:Connect(function(Mouse)
                value = math.floor((((tonumber(max) - tonumber(min)) / 180) * Slider_2.AbsoluteSize.X) + tonumber(min))
                pcall(function()
                    callback(value)
                end)
                Slider_2.Size = UDim2.new(0, math.clamp(mouse.X - Slider_2.AbsolutePosition.X, 0, 180), 0, 10)
                moveconnection:Disconnect()
                releaseconnection:Disconnect()
            end)
        end)
    end
end
