local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Bedwars AirForce-X V4 Beta", "BloodTheme")

-- Tab

local Tab1 = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")

local Tab2 = Window:NewTab("Other Scripts")
local Tab2Section = Tab2:NewSection("Other")

local Tab3 = Window:NewTab("AutoToxic [you can't turn off after enabled]")
local Tab3Section = Tab3:NewSection("AutoToxic")

local Tab4 = Window:NewTab("Animations")
local Tab4Section = Tab4:NewSection("Animations")

local Tab5 = Window:NewTab("Credits")
local Tab5Section = Tab3:NewSection("Credits")

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

Tab2Section:NewButton("Inf Yield", "Loads Inf Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Tab2Section:NewButton("Rekt Sky", "Loads Rekt Sky", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)

Tab2Section:NewButton("Fly", "Makes you able to fly", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\51\49\52\51\48\57\56\97\50\52\50\56\57\52\99\48\50\100\51\56\100\49\50\48\50\48\98\55\102\49\53\102\47\114\97\119\47\54\54\97\49\54\50\55\55\101\55\97\49\57\100\50\54\100\53\100\48\51\102\55\100\55\52\57\99\101\50\99\49\101\49\98\52\100\102\99\55\47\102\108\121\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10")()
end)

Tab2Section:NewButton("Hitbox Expander", "Expands the hitbox", function()
loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
end)

Tab2Section:NewButton("Rejoin", "Rejoins The Game", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)

Tab5Section:NewButton("Credits", "Credits", function()
game.StarterGui:SetCore("SendNotification", {
    Title = "Bedwars OP";
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
