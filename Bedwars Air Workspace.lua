local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Bedwars AirForce-X V4 Beta Release comes on 7/12/22 or 7/13/22", "BloodTheme")

-- Tab

local Tab1 = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")

local Tab2 = Window:NewTab("Other Scripts")
local Tab2Section = Tab2:NewSection("Other")

local Tab3 = Window:NewTab("AutoToxic you can't turn off after enabled")
local Tab3Section = Tab3:NewSection("AutoToxic")

local Tab4 = Window:NewTab("Animations")
local Tab4Section = Tab4:NewSection("Animations")

local Tab5 = Window:NewTab("Misc")
local Tab5Section = Tab5:NewSection("Misc")

local Tab6 = Window:NewTab("Credits")
local Tab6Section = Tab3:NewSection("Credits")

-- Buttons

Tab1Section:NewToggle("speed", "", function(state)

	if state then

		BindToStepped("SpeedWalkSpeed", 1, function(time, delta)

			if entity.isAlive then

				local newpos = (lplr.Character.Humanoid.MoveDirection  * (speedval["Value"] - lplr.Character.Humanoid.WalkSpeed)) * delta

				local raycastparameters = RaycastParams.new()

				raycastparameters.FilterDescendantsInstances = {lplr.Character}

				local ray = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, newpos, raycastparameters)

				if ray then newpos = (ray.Position - lplr.Character.HumanoidRootPart.Position) end

				lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + newpos

			end

		end)

	else

		UnbindFromStepped("CFrameWalkSpeed")

	end

end)

Tab1Section:NewSlider("Speed 1-42", "Adjust speed", 42, 1, function(s)

	speedval["Value"] = s

end)

Tab3Section:NewButton("AutoToxic (Kids)" , " Opens AutoToxic (Kids)",function()

loadstring(game:HttpGet("https://pastebin.com/raw/LZAuYBzF",true))()

end)

Tab3Section:NewButton("AutoToxic (VeryToxic)" , " Opens AutoToxic (VeryToxic)",function()

loadstring(game:HttpGet("https://pastebin.com/raw/9xeUZLNT",true))()

end)

Tab3Section:NewButton("Auto Toxic (Ultra Toxic)" , "Opens Auto Toxic",function()

local choosePlayer = false --set true if you want to insult one person only

local chosenPlayer = "" --if chosePlayer = true, type playername in quotes

local Taunts = { --add as many as you wish

  "Imagine Not Being Able To Exploit",

  "Air on top",

  "Air on top",

  "Get Lost Loser",

  "The dog is better than you",

"Better fork in the table",

"You like jasmine",

"Noob sheets",

"How are you so good at the game lol",

"You like Jasmine DM her",

"Use Air hub beta instead of vxpe v4",

"Air on top",

"Roblox bed worse never improved their anti cheat",

"Join are DC for more",

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

local randTime = math.random(5,15)

while true and wait(randTime) do

   Insult()

end

end)

Tab4Section:NewButton("Zombie Animation" , "Plays Zombie Animation",function()

loadstring(game:HttpGet("https://pastebin.com/raw/t3yTSPRn",true))()

end)

Tab4Section:NewButton("Ninja Animation","Plays Ninja Animation",function()

loadstring(game:HttpGet("https://pastebin.com/raw/bwGLPVV7",true))()

end)

Tab4Section:NewButton("Robot Animation","Plays Robot Animation",function()

local Animate =

game.Players.LocalPlayer.Character.Animate

Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"

Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"

Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"

Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"

Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"

Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"

Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"

end)

Tab4Section:NewButton("Toy Animation","Opens Toy Animation",function()

local Animate =

game.Players.LocalPlayer.Character.Animate

Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"

Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"

Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"

Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"

Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"

Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"

Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"

end)

Tab1Section:NewToggle("KillAura", "Autoswing the sword if someone is near you", function(state)

	if state then

		BindToStepped("Killaura", 1, function()

			if entity.isAlive then

				KillauraRemote()

			end

		end)

	else

		UnbindFromStepped("Killaura")

	end

end)

Tab1Section:NewSlider("Distance 1-20", "Increase killaura distance", 20, 1, function(val)

	DistVal["Value"] = val

end)

Tab1Section:NewToggle("No Swing", "Disable killaura swing", function(state)

	if state then

		if killauraswing["Enabled"] == true then

			killauraswing["Enabled"] = false

		end

	else

		if killauraswing["Enabled"] == false then

			killauraswing["Enabled"] = true

		end

	end

end)

Tab1Section:NewSlider("Sound 1-0", "Adjust killaura sound", 1, 0, function(val)

	killaurasoundval["Value"] = val

end)

--bednuker

Tab1Section:NewToggle("BedNuker", "Auto break bed and covers", function(state) 
         if state then 
                 BindToStepped("BedNuker", 1, function() 
                         nuker() 
                 end) 
         else 
                 UnbindFromStepped("BedNuker") 

Tab1Section:NewToggle("No Fall Damage", "Opens No Fall Damage", function(callback)

    local nofall = true

    if callback then

        if nofall then

            spawn(function()

                repeat

                    wait()

                    if nofall == false then

                        return end

                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer()

                    until nofall == false

                end)

            end

    else

        local nofall = false

    end

end)



Tab2Section:NewButton("Vape V4", "Loads Vape Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Tab2Section:NewButton("Keyboard", "Opens Keyboard", function()
loadstring(game:HttpGet("https://pastebin.com/raw/kC3dAMvt"))()
end)

Tab2Section:NewButton("Inf Jumps", "Loads My Old Script", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

--velocity

Tab1Section:NewToggle("Velocity", "Prevents taking a knockback", function(state) 
         if state then 
                 KnockbackTable["kbDirectionStrength"] = 0 
                 KnockbackTable["kbUpwardStrength"] = 0 
         else 
                 KnockbackTable["kbDirectionStrength"] = 100 
                 KnockbackTable["kbUpwardStrength"] = 100 
         end 
 end) 

 --reach
 
 Tab1Section:NewToggle("Reach", "Extend your attack range", function(state) 
         if state then 
                 CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (reachval["Value"] - 0.0001) 
         else 
                 CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4 
         end 
 end) 
  
Tab1Section:NewSlider("Range 18-1", "", 18, 1, function(val) -- 500 (MaxValue) | 0 (MinValue) 
         reachval["Value"] = val 
 end) 
 
 --anti void
 
 Tab5Section:NewToggle("AntiVoid", "Give's you a second chance to get back on land", function(state) 
         if state then 
                 antivoidp = Instance.new("Part", workspace) 
                 antivoidp.Name = "AntiVoid" 
                 antivoidp.CanCollide = true 
                 antivoidp.Size = Vector3.new(2048, 1, 2048) 
                 antivoidp.Anchored = true 
                 antivoidp.Transparency = 1 - (antivoidtransparent["Value"] / 100) 
                 antivoidp.Material = Enum.Material.Neon 
                 antivoidp.Color = Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"]) 
                 antivoidp.Position = Vector3.new(0, 23.5, 0) 
                 antivoidp.Touched:connect(function(touchedvoid) 
                         if touchedvoid.Parent:FindFirstChild("Humanoid") and touchedvoid.Parent.Name == lplr.Name then 
                                 lplr.Character.Humanoid.Jump = true 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                                 wait(0.2) 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                                 wait(0.2) 
                                 lplr.Character.Humanoid:ChangeState("Jumping") 
                         end 
                 end) 
         else 
                 if antivoidp then 
                         antivoidp:Remove() 
                 end 
         end 
 end) 
  
 Tab5Section:NewColorPicker("Color", "Adjust antivoid color", Color3.fromHSV(antivoidcolor["Hue"], antivoidcolor["Sat"], antivoidcolor["Value"]), function(val) 
         if antivoidp then 
                 antivoidp.Color = (val) 
         end 
 end) 
  
 Tab5Section:NewSlider("Invisible 1-100", "Adjust antivoid transparency", 100, 0, function(val) 
         if antivoidp then 
                 antivoidp.Transparency = 1 - (val / 100) 
         end 
 end) 

Tab5Section:NewTextBox("Set FOV","Max FOV number 120", function(txt) game.Workspace.CurrentCamera.FieldOfView = txt
end)

Tab5Section:NewToggle("ESP", "ToggleInfo", function(state)
    if state then
        local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for i,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
                    HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)
                    HealthBar.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        --- Our Team
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBarOutline.Visible = false
                        HealthBar.Visible = false
                    else
                        ---Enemy Team
                        BoxOutline.Visible = true
                        Box.Visible = true
                        HealthBarOutline.Visible = true
                        HealthBar.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBarOutline.Visible = false
                    HealthBar.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBarOutline.Visible = false
                HealthBar.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)

                if onScreen then
                    BoxOutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Visible = true

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / math.clamp(game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value, 0, game:GetService("Players")[v.Character.Name].NRPBS:WaitForChild("MaxHealth").Value)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1/HealthBar.Size.Y))
		    HealthBar.Color = Color3.fromRGB(255 - 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 255 / (game:GetService("Players")[v.Character.Name].NRPBS["MaxHealth"].Value / game:GetService("Players")[v.Character.Name].NRPBS["Health"].Value), 0)                    
		    HealthBar.Visible = true

                    if v.TeamColor == lplr.TeamColor then
                        --- Our Team
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBarOutline.Visible = false
                        HealthBar.Visible = false
                    else
                        ---Enemy Team
                        BoxOutline.Visible = true
                        Box.Visible = true
                        HealthBarOutline.Visible = true
                        HealthBar.Visible = true
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBarOutline.Visible = false
                    HealthBar.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBarOutline.Visible = false
                HealthBar.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)
    else
        print("Toggle Off")
    end
end)

Tab5Section:NewToggle("Tracers", "Lines", function(state)
    if state then
        local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

_G.TeamCheck = false -- Use True or False to toggle TeamCheck

for i,v in pairs(game.Players:GetChildren()) do
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end

game.Players.PlayerAdded:Connect(function(v)
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    function lineesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, OnScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

                if OnScreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)

                    if _G.TeamCheck and v.TeamColor == lplr.TeamColor then
                        --//Teammates
                        Tracer.Visible = false
                    else
                        --//Enemies
                        Tracer.Visible = true
                    end
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end
    coroutine.wrap(lineesp)()
end)
    else
        print("Toggle Off")
    end
end)

Tab2Section:NewButton("Inf Yield", "Loads Inf Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Tab2Section:NewButton("Rekt Sky", "Loads Rekt Sky", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)

Tab2Section:NewButton("Hitbox Expander", "Expands the hitbox", function()
loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
end)

Tab2Section:NewButton("Rejoin", "Rejoins The Game", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)

Tab6Section:NewButton("Credits", "Credits", function()
game.StarterGui:SetCore("SendNotification", {
    Title = "Bedwars is sus";
    Text = "Made by Air"; -- what the text says (ofc)
    Duration = 30;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Enjoy";
    Text = "Don't Forget to Subscribe to A1rPl4yz"; -- what the text says (ofc)
    Duration = 30;
})
end)
