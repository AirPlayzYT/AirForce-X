local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Bedwars Air V1", "BloodTheme")

-- Tabs

local Tab = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Section Name")

-- Buttons

Section:NewButton("Vape V4", "Enables Vape V4", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Section:NewButton("Keyboard", "Enables Keyboard", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua'),true))()
end)

Section:NewButton("Inf Yield", "Enables Inf Yield", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/MjBzRjmT'),true))()
end)

Section:NewButton("Inf Jumps", "Enables Inf Jumps", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

Section:NewSlider("Speed", "Enables Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewKeybind("Keybind", "idk", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
