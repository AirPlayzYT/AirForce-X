local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "A1rPl4yz Doors Gui",
	LoadingTitle = "Psst...",
	LoadingSubtitle = "by A1rPl4yz",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = A1rPl4yz Doors Gui, -- Create a custom folder for your hub/game
		FileName = "Gui"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "A1r Hub",
		Subtitle = "Key System",
		Note = "Subscribe to me (https://www.youtube.com/@A1rPl4yz/videos)",
		FileName = "A1rKey",
		SaveKey = true,
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "https://raw.githubusercontent.com/AirPlayzYT/AirForce-X/main/fart"
	}
})
local Tab = Window:CreateTab("Spawn Normal Entities", 11372950109) -- Title, Image
local Section = Tab:CreateSection("Spawn Normal Entities")

local Button = Tab:CreateButton({
	Name = "Spawn Ambush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/p1FNJ0M1"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Rush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/ALMp1dN6"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Hallway Jack",
	Callback = function()
		local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()

local Configuration = {

    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities

    Speed = 160, -- 60 for rush, doesnt work on other entities

    Time = 3 -- 5 for rush, doesnt work on other entities
}
 
EntitySpawner:Spawn("Jack", Configuration)
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Halt",
	Callback = function()
		local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Glitch",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Timothy",
	Callback = function()
		local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Screech",
	Callback = function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Seek",
	Callback = function()
		local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}
 
EntitySpawner:Spawn("Seek", Configuration)
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Eyes",
	Callback = function()
		local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Damage = 0, -- change to "Damage = 0," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}
 
EntitySpawner:Spawn("Eyes", Configuration)
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Seek Eyes",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 20)
	end,
})

local Tab = Window:CreateTab("Spawn Custom Entities", 11372950109) -- Title, Image
local Section = Tab:CreateSection("Spawn Custom Entities")

local Button = Tab:CreateButton({
	Name = "Spawn Matcher",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/apjpuq6y"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Rebound",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/xbhaHhnp"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn A-60",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/pQ5VQM8T'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Trollface",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/pwrztHnn'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn BaldKreek",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/ELLa1dFK'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Depth",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/PisxyMeN'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Silence",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/56QcBVhv'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Greed",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/hQVe779x'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Null",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/NuK3zfLb'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Ambush But Kawaii",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/c2kg9aRi'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn DeerGod",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/nwGJn9Sw'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Obunga",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/WfDr8St4"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Rush But Bad",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/2rFZu6Ck"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Claim",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/F1PKLq0G"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Silence(HardCore)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/JB3J97gW"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Trololo Ambush(Cr.to plamen6789)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/FWxTFe7x"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn A-500",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/jXn6CZZ8"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Overseer Eyes",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/p83WLnRg"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Nightmare Rush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/R3GVUybr"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spasm Old Ambush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DwhSyCC8"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn LSPLASH",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/eU7NqKx7"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Eater",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Xhkvce8h"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Nightmare Ambush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/9gFMtYhd"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn TrollRush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zSps3681"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Angry Munci",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/K7XUSgsf"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Smiler",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Q4Kn1afL"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Blink",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/CKeQJnpi"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Spawn Exotic (made by me)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AirPlayzYT/AirForce-X/main/hello.lua"))()
	end,
})