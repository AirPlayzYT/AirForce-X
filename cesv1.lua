local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("A1rPl4yz Custom Entity Spawner V1", "BloodTheme")
local Tab = Window:NewTab("Spawner")
local Section = Tab:NewSection("all entities here are made by me")
local Section = Tab:NewSection("Exotic")

Section:NewButton("Exotic", "Ripper but bad", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/xcLyFhnq"))()  
end)

Section:NewKeybind("Exotic", "Ripper but bad", Enum.KeyCode.E, function()
	loadstring(game:HttpGet("https://pastebin.com/raw/xcLyFhnq"))()
end)


local Tab = Window:NewTab("Toggle UI")
local Section = Tab:NewSection("Toggle UI")

Section:NewKeybind("Toggle UI", "Toggles UI", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
