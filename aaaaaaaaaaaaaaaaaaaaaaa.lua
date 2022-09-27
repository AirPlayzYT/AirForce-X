local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(102, 0, 0),
    Background = Color3.fromRGB(10, 10, 10),
    Header = Color3.fromRGB(5, 5, 5),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Clicking Vilaage Script", colors)
local Version = "0.0.3"
local GameVersion = "V2"

local HomeTab = Window:NewTab("Info")
local InfoSection = HomeTab:NewSection("Info")
local CreditsSection = HomeTab:NewSection("Credits")

InfoSection:NewLabel("Welcome, " .. game.Players.LocalPlayer.Name .. " to Clicking Village Script.")
InfoSection:NewLabel("The Script version is " .. Version .. ".")
InfoSection:NewLabel("The Game Version is " .. GameVersion .. ".")
InfoSection:NewLabel("Our Site: Unavailable")

CreditsSection:NewLabel("Creator: AirForce-X")
CreditsSection:NewLabel("Hub UI: Kavo UI")

local AutoFarmTab = Window:NewTab("AutoFarm")
local AutoFarmSection1 = AutoFarmTab:NewSection("AutoTap")
local AutoFarmSection2 = AutoFarmTab:NewSection("AutoUltraTap")
local AutoFarmSedtion3 = AutoFarmTab:NewSection("AutoRebirth")

local KeybindsTab = Window:NewTab("Keybinds")
local KeybindsSection1 = KeybindsTab:NewSection("Toggle UI")

AutoFarmSection1:NewButton("AutoTap", "Automatically Taps the Button (Cant turn off)", function()
    while wait() do
        workspace.GetClicksScript.GetClick:FireServer()
        wait(.000000000000000000000000000000000000000000000000000000000000000000000001)
     end
end)

AutoFarmSection2:NewButton("AutoUltraTap", "Automatically Taps the UltraTap Button", function()
    while wait() do
        workspace.GetClicksScript2.GetClick:FireSever()
        wait(.000000000000000000000000000000000000000000000000000000000000000000000001)
    end
end)

AutoFarmSection3:NewButton("AutoRebirth", "Automatically Rebirths (cant turn off)", function()
    while wait() do
        workspace.GetRebirthsScript.GetRebirth:FireServer(50000)
        wait(01)
     end
end)

KeybindsSection1:NewKeybind("Toggle UI (PC Only)", "Toggles UI (PC Only)", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
