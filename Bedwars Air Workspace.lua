local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Bedwars AirForce-X V3", "BloodTheme")

-- Tab

local Tab1 = Window:NewTab("Bedwars")
local Tab1Section = Tab1:NewSection("Bedwars")

local Tab2 = Window:NewTab("Other")
local Tab2Section = Tab2:NewSection("Other")

local Tab3 = Window:NewTab("Credits")
local Tab3Section = Tab3:NewSection("Credits")

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

Tab2Section:NewButton("AutoToxic", "Makes You Automatically Toxic", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BigCoolboy/Main/main/Compliment'))()
end)

Tab2Section:NewButton("Disable Anticheat", "Disables Anticheat", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cesare0328/my-scripts/main/joke%20anticheat.lua'),true))()
end)

Tab2Section:NewButton("Fly", "Makes you able to fly", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
end)

Tab2Section:NewButton("Animation Hub", "Enables Animation Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)

Tab2Section:NewButton("Rejoin", "Rejoins The Game", function()
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
    Text = "Don't Forget to Subscribe to A1rPlayz"; -- what the text says (ofc)
    Duration = 30;
})
end)
