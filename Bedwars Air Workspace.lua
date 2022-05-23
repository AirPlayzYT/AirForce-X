local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Bedwars Air V2", "BloodTheme")

-- Tab

local Tab1 = Window:NewTab("Bedwars")
local Tab1Section = Tab1:NewSection("Bedwars")

local Tab2 = Window:NewTab("Other")
local Tab2Section = Tab2:NewSection("Other")

local Tab3 = Window:NewTab("Credits")
local Tab3Section = Tab3:NewSection("Credits

-- Buttons

Tab1Section:NewButton("Vape V4", "Loads Vape Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Tab1Section:NewButton("Keyboard", "Opens Keyboard", function()
loadstring(game:HttpGet("https://pastebin.com/raw/kC3dAMvt"))()
end)

Tab1Section:NewButton("Inf Jumps", "Loads My Old Script", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Tab1Section:NewButton("Inf Yield", "Loads Inf Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Tab1Section:NewButton("Rekt Sky", "Loads Rekt Sky", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)

Tab1Section:NewButton("Lightbed", "Loads Lightbed", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AirPlayzYT/Yes/gh-pages/LIGHTBED%20BETA(not%20mine).lua", true))()
end)

Tab2Section:NewButton("Rejoin", "Rejoind The Game", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)

Tab3Section:NewButton("Credits", "Credits", function()
game.StarterGui:SetCore("SendNotification", {
    Title = "Bedwars OP";
    Text = "Made by Air"; -- what the text says (ofc)
    Duration = 30;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Enjoy";
    Text = "Don't Forget to Subscribe to AirScripts"; -- what the text says (ofc)
    Duration = 30;
})
end)
