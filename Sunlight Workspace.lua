local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sunlight", "LightTheme")

-- Tab

local Tab1 = Window:NewTab("Bedwars")
local Tab1Section = Tab1:NewSection("Main")

-- Buttons

Tab1Section:NewButton("Killaura", "Enables Killaura", function()
while wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        game:GetService("ReplicatedStorage").BedWars.RemoteEvent:FireServer("DamagePlayer", game:GetService("Players").LocalPlayer, v)
    end
end
end)

Tab1Section:NewToggle("No Click Delay", "Disables Click Delay", function()

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