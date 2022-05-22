local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Light bed Private ", "Midnight")

local Tab1 = Window:NewTab("Main")
local Tab2 = Window:NewTab("Weak things")
local Tab3 = Window:NewTab("Coming soon")

local Tab1Section = Tab1:NewSection("Main")
local Tab2Section = Tab2:NewSection("Weak things")
local Tab3Section = Tab3:NewSection("Coming soqon")

Tab1Section:NewButton("Vape v4", "Vape v4", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    print("...")
end)

Tab1Section:NewButton("Auto toxic", "ahh ahh ur mom goes so hard", function()
local choosePlayer = false --set true if you want to insult one person only
local chosenPlayer = "" --if chosePlayer = true, type playername in quotes

local Taunts = { --add as many as you wish
"You're bad at the game.",
"Imagine Crying.",
"L.",
"Ahh Ahh ur mom goes so hard.",
"ur mom did with me.",
"Never give up nanana.",
"How a person can be that bad like you.",
"Whats that? SOUNDS LIKE SKILL ISSUE.",
"Bozo Crying?.",
"Wow you said something to made us laugh.",
"@DIEEEE HAHAHAH I DONT CARE.",
"Your mother made a mistake the day you were born.",
"You are the waste of earth.",
"No one likes you Lol.",
"Even dogs are better than you.",
"Sorry For keeling YOU LOLL :(.",
"Not really.",
"I feel bad for your mom and dad.",
"I dont care about the fact you think Im hacking, I care about how you are being Rude to me.",

}

local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local function Insult()
   local players = game.Players:GetChildren()
   local howManyPlayers = #players
   
   local ran = math.random(1,howManyPlayers)
   local chosenOne = players[ran]
   local chance = math.random(1,20)
   
   if choosePlayer == true then
       Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")
   elseif chance <= 5 then
       Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")
   else
       Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")
   end
end
   

local randTime = math.random(5,10)

while true and wait(randTime) do
   Insult()
end
    print("...")
end)

Tab1Section:NewButton("Inf Jumps", "inf jumps", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
    print("...")
end)

Tab2Section:NewButton("Softbed", "not softbed private no crash just try", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/YZHacker0/BedwarsGUI/main/bad.lua", true))()
    print("...")
end)

Tab1Section:NewButton("Cape", "Stop The Cape", function()
local player = game:GetService("Players")

local lplr = player.LocalPlayer

if lplr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then

      if lplr.Character:FindFirstChild("Torso") then

        torso = lplr.Character.Torso

      else

        torso = lplr.Character.UpperTorso

      end

      local CapeP = Instance.new("Part", torso.Parent)

      CapeP.Name = "Cape"

      CapeP.Anchored = false

      CapeP.CanCollide = false

      CapeP.TopSurface = 0

      CapeP.BottomSurface = 0

      CapeP.Color = Color3.fromRGB(0,0,0)

      CapeP.FormFactor = "Custom"

      CapeP.Size = Vector3.new(0.2,0.2,0.2)

      local decal = Instance.new("Decal", CapeP)

      decal.Texture = "http://www.roblox.com/asset/?id=9608953346"

      decal.Face = "Back"

      local msh = Instance.new("BlockMesh", CapeP)

      msh.Scale = Vector3.new(9,17.5,0.5)

      local motor = Instance.new("Motor", CapeP)

      motor.Part0 = CapeP

      motor.Part1 = torso

      motor.MaxVelocity = 0.01

      motor.C0 = CFrame.new(0,1.75,0) * CFrame.Angles(0,math.rad(90),0)

      motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)

      local wave = false

      repeat wait(1/44)

        decal.Transparency = torso.Transparency

        local ang = 0.1

        local oldmag = torso.Velocity.magnitude

        local mv = 0.002

        if wave then

          ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05

          wave = false

        else

          wave = true

        end

        ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)

        motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) + mv

        motor.DesiredAngle = -ang

        if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then

          motor.MaxVelocity = 0.04

        end

        repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1

        if torso.Velocity.magnitude < 0.1 then

          wait(0.1)

        end

      until not CapeP or CapeP.Parent ~= torso.Parent

    end


    print("...")
end)

Tab3Section:NewButton("Kill aura", "Soon", function()
    print("Clicked")
end)

Tab3Section:NewButton("Nuker", "soon", function()
    print("Clicked")
end)

Tab1Section:NewButton("Anti void", "Anti void jumping ", function()
local specialpos = (workspace.MapCFrames:FindFirstChild("center") and workspace.MapCFrames.center.Value.p == Vector3.new(77, 11, 35))
        AntiVoidP = Instance.new("Part")
        AntiVoidP.Parent = Workspace
        AntiVoidP.Name = "AntiVoid"
        AntiVoidP.CanCollide = true
        AntiVoidP.Size = Vector3.new(2048, 0.30, 2048)
        AntiVoidP.Anchored = true
        AntiVoidP.Transparency = 0.45
        AntiVoidP.Material = Enum.Material.Grass
        AntiVoidP.Color = Color3.fromRGB(34,139,34)
        AntiVoidP.Position = Vector3.new(0, 30.5, 0)
    print("...")
end)

Tab2Section:NewButton("Infinite Yield Fe", "use tpwalk 0.5", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    print("...")
end)

Tab1Section:NewToggle("KillAura", "DamgesPlayer", function(state)
    if state then
            local kauraval = v
            spawn(function()
                if kauraval and entity.isAlive then
                    conectionkillaura = RunService.RenderStepped:Connect(function(step)
                        if not kauraval then 
                            return
                        end
                        if entity.isAlive then
                            KillauraRemote()
                        end
                    end)
                else
                    conectionkillaura:Disconnect()
                    return
                end
            end)
            spawn(function()
                repeat
                    wait()
                    if entity.isAlive then
                        if killauraanimval["Value"] == "Cool" then
                            task.wait(0.30)
                            if (not kauraval) then return end
                            funianimthing()
                        elseif killauraanimval["Value"] == "Thing" then
                            task.wait(0.16)
                            if (not kauraval) then return end
                            funianimthing()
                        end
                    end
                until (not kauraval)
            end)
        end
    
    killauraissoundenabled = katog:CreateOptionTog({
        ["Name"] = "Swing Sound",
        ["Func"] = function() end
    })
    killaurasoundvalue = katog:CreateSlider({
        ["Name"] = "Sound",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 1,
        ["Default"] = 1,
        ["Round"] = 1
    })
    killauraisswingenabled = katog:CreateOptionTog({
        ["Name"] = "Swing Animation",
        ["Func"] = function() end
    })
    DistVal = katog:CreateSlider({
        ["Name"] = "Distance",
        ["Function"] = function() end,
        ["Min"] = 1,
        ["Max"] = 20,
        ["Default"] = 20,
        ["Round"] = 1
    })
    killaurafirstpersonanim = katog:CreateOptionTog({
        ["Name"] = "Anims (1rs person)",
        ["Func"] = function() end
    })
    killauraanimval = katog:CreateDropDown({
        ["Name"] = "AnimMode",
        ["Function"] = function() end,
        ["List"] = {"Cool", "Thing"},
        ["Default"] = "Cool"
    })
end)

Tab1Section:NewToggle("NoClick Delay", "NoClick Delay", function(state)
    if state then
getgenv().funisus = v
        spawn(function()
            if getgenv().funisus and entity.isAlive then
                for i2,v2 in pairs(itemtable) do
                    if type(v2) == "table" and rawget(v2, "sword") then
                        v2.sword.attackSpeed = 0.000000001
                    end
                    SwordCont.isClickingTooFast = function() return false end
                end
            else
            end
        end)
    end
 
    end)


Tab1Section:NewToggle("NoClick DelayV2", "Clicks", function(state)
    if state then
getgenv().funisus = v
        spawn(function()
            if getgenv().funisus and entity.isAlive then
                for i2,v2 in pairs(itemtable) do
                    if type(v2) == "table" and rawget(v2, "sword") then
                        v2.sword.attackSpeed = 0.000000001
                    end
                    SwordCont.isClickingTooFast = function() return false end
                end
            else
            end
        end)
    end

    end)
    
Tab1Section:NewToggle("KillAura from Rektsky", "KillAura", function(state)
    if state then
local kauravalv2 = v
        repeat task.wait() until (matchState == 1)
        if matchState == 1 then
            spawn(function()
                if kauravalv2 and entity.isAlive then
                    conectionkillauraV2 = RunService.RenderStepped:Connect(function(step)
                        if not kauravalv2 then 
                            return
                        end
                        if entity.isAlive then
                            if (not isclone) then
                                local mouse = game.Players.LocalPlayer:GetMouse()
                                for i,v in pairs(game.Players:GetChildren()) do
                                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
                                        local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if mag <= 20 and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
                                            if v.Character:FindFirstChild("Head") then
                                                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged[landmineremote]:FireServer({
                                                    ["invisibleLandmine"] = v.Character.Head                                        
                                                })
                                            end
                                        end
                                    end
                                end 
                            else
                                local mouse = game.Players.LocalPlayer:GetMouse()
                                for i,v in pairs(game.Players:GetChildren()) do
                                    if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
                                        local mag = (v.Character.HumanoidRootPart.Position - clone.HumanoidRootPart.Position).Magnitude
                                        if mag <= 20 and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") and v.Character.Health > 0 then
                                            if v.Character:FindFirstChild("Head") then
                                                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged[landmineremote]:FireServer({
                                                    ["invisibleLandmine"] = v.Character.Head                                        
                                                })
                                            end
                                        end
                                    end
                                end 
                            end
                        end
                    end)
                else
                    conectionkillauraV2:Disconnect()
                    return
                end
            end)
        end
    end
  
end)
