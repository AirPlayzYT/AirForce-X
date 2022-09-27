local AirWaterMark = Instance.new("ScreenGui") 
 local TextLabel = Instance.new("TextButton") 
 local UIGradient = Instance.new("UIGradient") 
 local UITextSizeConstraint = Instance.new("UITextSizeConstraint") 
  
 AirWaterMark.Name = "AirWaterMark" 
 AirWaterMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
 AirWaterMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 AirWaterMark.ResetOnSpawn = false 
  
 TextLabel.Parent = AirWaterMark 
 TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
 TextLabel.BackgroundTransparency = 1.000 
 TextLabel.BorderSizePixel = 0 
 TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0) 
 TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0) 
 TextLabel.Font = Enum.Font.GothamBold 
 TextLabel.Text = "Clicking Village" 
 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
 TextLabel.TextScaled = true 
 TextLabel.TextSize = 28.000 
 TextLabel.TextWrapped = true 
 TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
 TextLabel.MouseButton1Down:Connect(function() 
         kavoUi:ToggleUI()
 end) 
  
 UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 255))} 
 UIGradient.Parent = TextLabel 
 
 
 local vu = game:GetService("VirtualUser") 
 game:GetService("Players").LocalPlayer.Idled:connect(function() 
     vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
     wait(1) 
     vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
 end) 

 local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 local colors = {
    SchemeColor = Color3.fromRGB(102, 0, 0),
    Background = Color3.fromRGB(10, 10, 10),
    Header = Color3.fromRGB(5, 5, 5),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Clicking Village", colors)
local Version = "0.0.2"

local InfoTab = Window:NewTab("Info")
local InfoSection = InfoTab:NewSection("Info")
local CreditsSection = InfoTab:NewSection("Credits")

InfoSection:NewLabel("Welcome, " .. game.Players.LocalPlayer.Name .. " Clicking Village Script" )
InfoSection:NewLabel("The Script version is " .. Version .. ".")
InfoSection:NewLabel("Our Site: Unavailable")

CreditsSection:NewLabel("Creator: A1rPl4yzYT")
CreditsSection:NewLabel("Hub UI: Kavo UI")

local AutoFarmTab = Window:NewTab("AutoFarm")
local AutoTapSection = AutoFarmTab:NewSection("AutoTap")
local AutoRebirthSection = AutoFarmTab:NewSection("AutoRebirth")

local KeybindsTab = Window:NewTab("Keybinds")
local ToggleUISection = KeybindsTab:NewSection("Toggle UI")

 AutoTapSection:NewToggle("AutoTap", "Automatically Taps the Button", function(state)
    if state then
        while wait() do
            workspace.GetClicksScript.GetClick:FireServer()
            wait(.0000000000000000000000000000000000000000000000000000000000000000000000001)
         end
    end
    else
        print("Toggle Off")
    end
end)

AutoRebirthSection:NewToggle("Auto Rebirth", "Automatically Rebirths no click amount needed", function(state)
    if state then
        while wait() do
            workspace.GetRebirthsScript.GetRebirth:FireServer(50000)
            wait(.0001)
        end
    else
        print("Toggle Off")
    end
end)

ToggleUISection:NewKeybind("Toggle UI", "Toggles UI", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
