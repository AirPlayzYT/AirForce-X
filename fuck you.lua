local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TAPPING SIMULATOR CHEAT", "BloodTheme")
local Tabfarms = Window:NewTab("farms")
local mainSection = Tabfarms:NewSection("main")
local TabUI = Window:NewTab("UI")
local Tabtp = Window:NewTab("Teleport")
local tpSection = Tabtp:NewSection("Islands")
local Tabcredits = Window:NewTab("Credits")
local creditsSection = Tabcredits:NewSection("Created by A1rPl4yzYT")
mainSection:NewToggle("Click farm", "Toggle", function(state)
    if state then
        _G.farmer = true
        while _G.farmer == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
		wait()
        end
    else
        _G.farmer = false
    end
end)

mainSection:NewTextBox("Rebirth count", "Rebirth count (type and enter)", function(Rebirth)
    _G.Rebirthc = tonumber(Rebirth)
end)

mainSection:NewToggle("Auto Rebirth", "Automate Rebirths", function(state)
    if state then
        _G.Rebirth = true
        while _G.Rebirth == true do
        local args = {
		    [1] = _G.Rebirthc
		}
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait()
        end
    else
        _G.Rebirth = false
    end
end)

mainSection:NewDropdown("Pet island", "select pet island name for auto pet", {"Forest", "Flower", "Swamp","Snow","Desert","Death","Beach","Mine","Cloud","Coral","Darkheat","Monster"}, function(currentOption)
    _G.pislandn = currentOption
end)

mainSection:NewToggle("Auto pet", "Auto buy pets", function(state)
    if state then
        _G.autopet = true
        while _G.autopet == true do
            local args = {
                [1] = {},
                [2] = _G.pislandn .. " Egg",
                [3] = 1
            }
            game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
            wait()
        end
        
    else
        _G.autopet = false
    end
end)

local uivSection = TabUI:NewSection("UI visibility")
uivSection:NewKeybind("Hide/Show UI (F1)", "Hide/Show UI (F1)", Enum.KeyCode.F1, function()
	Library:ToggleUI()
end)
--teleports
tpSection:NewButton("Forest", "Teleport to Forest island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-163.984467, 977.225708, -403.339417, 1, 2.09242117e-08, -6.8132674e-14, -2.09242117e-08, 1, -8.50126085e-08, 6.63538506e-14, 8.50126085e-08, 1)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Flower", "Teleport to Flower island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-179.51564, 1514.46057, -682.498718, -1, -4.84065288e-10, -1.35578031e-15, -4.84065288e-10, 1, 6.33578026e-08, 1.32511105e-15, 6.33578026e-08, -1)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Swamp", "Teleport to Swamp island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-264.358887, 2113.40112, -694.661316, -1, 5.20575894e-09, 2.08679997e-13, 5.20575894e-09, 1, 1.14680452e-08, -2.08620298e-13, 1.14680452e-08, -1)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Snow", "Teleport to Snow island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-201.771973, 2934.2605, -470.408752, -2.50384023e-13, -7.54439e-08, 1, -2.92791817e-08, 1, 7.54439e-08, -1, -2.92791817e-08, -2.52592977e-13)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)




tpSection:NewButton("Desert", "Teleport to Desert", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-166.285156, 4225.3584, -779.153137, 4.22784655e-11, -6.17388238e-08, 1, 3.15488471e-08, 1, 6.17388238e-08, -1, 3.15488471e-08, 4.22804153e-11)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Death", "Teleport to Death island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-276.201477, 5415.25342, -480.287781, 6.38257006e-07, 1.21364474e-08, 1, 1.25214328e-09, 1, -1.21364483e-08, -1, 1.25215094e-09, 6.38257006e-07)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Beach", "Teleport to Beach island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-136.279358, 6872.29443, -494.638367, 0.0631179959, 2.74311773e-08, 0.998006046, 8.97170764e-08, 1, -3.31600596e-08, -0.998006046, 9.16311791e-08, 0.0631179959)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Mines", "Teleport to Mines island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-240.851959, 8365.89453, -484.091553, 0.0299663097, 2.5193243e-08, 0.999550939, 3.10392045e-09, 1, -2.52976164e-08, -0.999550939, 3.8606025e-09, 0.0299663097)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Cloud", "Teleport to Cloud island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-252.634247, 11250.6396, -237.348206, 0.0250235107, 2.05995332e-09, 0.999686837, 8.12390655e-10, 1, -2.08093365e-09, -0.999686837, 8.64208538e-10, 0.0250235107)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Coral", "Teleport to Coral island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-516.280701, 13801.7725, -543.313354, -0.0056735985, 3.51671545e-08, -0.999983907, -4.54668125e-08, 1, 3.54256819e-08, 0.999983907, 4.56670719e-08, -0.0056735985)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Darkheat", "Teleport to Darkheat island", function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-403.115265, 17169.8301, -553.982056, -0.0175660439, 5.26905737e-08, 0.999845684, 5.21477332e-08, 1, -5.17825356e-08, -0.999845684, 5.12300744e-08, -0.0175660439)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    pl.CFrame = location
end)

tpSection:NewButton("Location Copy", "CFrame", function()
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
end)
creditsSection:NewLabel("𝕌.𝕊.ℙℝ.ℙℂ#4759")