local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("A1rPl4yz's Doors Entity Spawner V2", "BloodTheme")
local Tab = Window:NewTab("Spawn Normal Entity")
local Section = Tab:NewSection("Normal Entity")

Section:NewButton("Spawn Ambush", "No description", function()
    local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))()

-- Create entity

game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(102, 255, 250)
game.Lighting.MainColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(3),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()

local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "rbxassetid://11851423144", -- Can be GitHub file or rbxassetid
    Speed = 470, -- Percentage, 100 = default Rush speed
    DelayTime = 6, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11287256504", -- Image1 url
            Image2 = "rbxassetid://11287256504", -- Image2 url
            Shake = true,
            Sound1 = {
                4903742660, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                2738830850, -- SoundId
                { Volume = 15 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"What.. The Heck.. Just Happend?", "I Think Something's Wrong.", "Sorry About That, MidnightCyborg.", "His Presents Will Be Known", }, -- Custom death message (can be as long as you want)
})

----[[ Advanced ]]----
entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", mentityModelodel)
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Rush", "No description", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rush", -- Custom name of your entity
    Model = "rbxassetid:////11810652442", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Hallway Jack", "No description", function()
    local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Jack", Configuration)
    end)

Section:NewButton("Spawn Halt", "No description", function()
    local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])    

end)

Section:NewButton("Spawn Screech", "No description", function()
    require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

Section:NewButton("Spawn Glitch", "No description", function()
    require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

Section:NewButton("Spawn Timothy", "No description ", function()
    local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
end)

Section:NewButton("Spawn Seek Eyes", "No description", function()
    local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
end)

Section:NewButton("Spawn Seek (No key sorry)", "No description", function()
    local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Seek", Configuration)
    end)

Section:NewButton("Spawn Eyes", "Spawns Eyes at Latest Room, it will deal More Damage if you spam it.", function()
local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Damage = 0, -- change to "Damage = 0," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Eyes", Configuration)
    end)

Section:NewKeybind("Ambush Key", "No description", Enum.KeyCode.I, function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "rbxassetid:////11851423144", -- Can be GitHub file or rbxassetid
    Speed = 470, -- Percentage, 100 = default Rush speed
    DelayTime = 6, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewKeybind("Halt Key", "No description", Enum.KeyCode.H, function()
	require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

Section:NewKeybind("Screech Key", "No description", Enum.KeyCode.S, function()
	require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

Section:NewKeybind("Glitch Key", "No description", Enum.KeyCode.G, function()
	require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

Section:NewKeybind("Timothy Key", "No description", Enum.KeyCode.T, function()
	local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
end)

Section:NewKeybind("Seek eyes Key", "No description", Enum.KeyCode.K, function()
	local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
end)

Section:NewKeybind("Eyes Key", "No description", Enum.KeyCode.L, function()
	local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Damage = 0, -- change to "Damage = 0," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Eyes", Configuration)
    end)

Section:NewKeybind("Hallway Jack Key", "No description", Enum.KeyCode.J, function()
    local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Jack", Configuration)
    end)

Section:NewKeybind("Rush Key", "No description", Enum.KeyCode.R, function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rush", -- Custom name of your entity
    Model = "rbxassetid:////11810652442", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewKeybind("A-60 Key", "No description", Enum.KeyCode.B, function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid:////11367941314", -- Can be GitHub file or rbxassetid
    Speed = 700, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 7,
        Max = 7,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

local Section = Tab:NewSection("Normal Entity(KILLABLE)")


Section:NewButton("Spawn Ambush", "No description", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "rbxassetid:////11851423144", -- Can be GitHub file or rbxassetid
    Speed = 470, -- Percentage, 100 = default Rush speed
    DelayTime = 6, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Eyes", "Spawns Eyes at Latest Room, it will deal More Damage if you spam it.", function()
local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Damage = 10, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

EntitySpawner:Spawn("Eyes", Configuration)
    end)

Section:NewButton("Spawn Rush", "Spawns Rush.", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/PZJuLbR6"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rush", -- Custom name of your entity
    Model = "rbxassetid:////11810652442", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)
local New = Window:NewTab("Spawns Custom Entity")
local Section = New:NewSection("Custom Entitys")


Section:NewButton("Spawn Matcher", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Matcher", -- Custom name of your entity
    Model = "rbxassetid:////11402557910", -- Can be GitHub file or rbxassetid
    Speed = 70, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)
 
Section:NewButton("Spawn Rebound", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rebound", -- Custom name of your entity
    Model = "rbxassetid:////11401769490", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 3.5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Claim", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Claim", -- Custom name of your entity
    Model = "rbxassetid:////11404380603", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Backrooms Entity", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Backrooms Entity", -- Custom name of your entity
    Model = "rbxassetid:////11109100415", -- Can be GitHub file or rbxassetid
    Speed = 25, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Happy Munci", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Happy Munci", -- Custom name of your entity
    Model = "rbxassetid:////11395422309", -- Can be GitHub file or rbxassetid
    Speed = 650, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Siren Head", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Siren head", -- Custom name of your entity
    Model = "rbxassetid:////11189182396", -- Can be GitHub file or rbxassetid
    Speed = 30, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Rush in Ohio", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rush in Ohio", -- Custom name of your entity
    Model = "rbxassetid:////11777258454", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Fear", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Fear", -- Custom name of your entity
    Model = "rbxassetid:////11755485417", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Soul", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Soul", -- Custom name of your entity
    Model = "rbxassetid:////11755587468", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Devoid", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Devoid", -- Custom name of your entity
    Model = "rbxassetid:////11661448592", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Baller", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Baller", -- Custom name of your entity
    Model = "rbxassetid:////11425710400", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Sanic", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Sanic", -- Custom name of your entity
    Model = "rbxassetid:////10488451448", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Super Sanic(loud warning)", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Super Sanic", -- Custom name of your entity
    Model = "rbxassetid:////11321774965", -- Can be GitHub file or rbxassetid
    Speed = 500, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)
Section:NewButton("Spawn Old Ambush", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Old ambush", -- Custom name of your entity
    Model = "rbxassetid:////11204372315", -- Can be GitHub file or rbxassetid
    Speed = 575, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 10,
        Max = 10,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Darkness", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Darkness", -- Custom name of your entity
    Model = "rbxassetid:////11414246730", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Voidi", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Voidi", -- Custom name of your entity
    Model = "rbxassetid:////11755474875", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Cooper", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Cooper", -- Custom name of your entity
    Model = "rbxassetid:////11755473755", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Bald Kreek", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Bald kreek", -- Custom name of your entity
    Model = "rbxassetid:////11768347179", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn TrollFace", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Trollface", -- Custom name of your entity
    Model = "rbxassetid:////11541624412", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Nightmare Rush", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Nightmare Rush", -- Custom name of your entity
    Model = "rbxassetid:////11213106659", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Figure T-pose", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Figure", -- Custom name of your entity
    Model = "rbxassetid:////10650562877", -- Can be GitHub file or rbxassetid
    Speed = 30, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Seek T-pose", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Seek", -- Custom name of your entity
    Model = "rbxassetid:////11320477046", -- Can be GitHub file or rbxassetid
    Speed = 35, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Train", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Train", -- Custom name of your entity
    Model = "rbxassetid:////5030737258", -- Can be GitHub file or rbxassetid
    Speed = 40, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Rickroll", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rick astley", -- Custom name of your entity
    Model = "rbxassetid:////10765599057", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn The Rock", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "The Rock", -- Custom name of your entity
    Model = "rbxassetid:////10517835188", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Nerd", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Nerd", -- Custom name of your entity
    Model = "rbxassetid:////10539372175", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Eyes", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eyes", -- Custom name of your entity
    Model = "rbxassetid:////10968900346", -- Can be GitHub file or rbxassetid
    Speed = 50, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Rush but bad", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rush but bad", -- Custom name of your entity
    Model = "rbxassetid:////11565147575", -- Can be GitHub file or rbxassetid
    Speed = 90, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Specimen2", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Specimen2", -- Custom name of your entity
    Model = "rbxassetid:////502243972", -- Can be GitHub file or rbxassetid
    Speed = 20, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Movong Eyes", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Movong eyes", -- Custom name of your entity
    Model = "rbxassetid:////6874645270", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Jack but he want to be a rush", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Matcher", -- Custom name of your entity
    Model = "rbxassetid:////11320472883", -- Can be GitHub file or rbxassetid
    Speed = 50, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn DeerGod", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Deer God", -- Custom name of your entity
    Model = "rbxassetid:////11393625763", -- Can be GitHub file or rbxassetid
    Speed = 25, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Ripper", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ripper", -- Custom name of your entity
    Model = "rbxassetid:////11838452422", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Obunga", "Beta", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Obunga", -- Custom name of your entity
    Model = "rbxassetid:////10597941673", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Angry Munci", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Angry Munci", -- Custom name of your entity
    Model = "rbxassetid:////10957184278", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 6,
        Max = 6,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn G-95", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "G-95", -- Custom name of your entity
    Model = "rbxassetid:////11467719106", -- Can be GitHub file or rbxassetid
    Speed = 500, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn A-60", "No description", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid:////11367941314", -- Can be GitHub file or rbxassetid
    Speed = 700, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 7,
        Max = 7,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You Died To A-60.", "it's Impossible for Survive.", "Wait", "You cannot see this."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    if getgenv().Death == false then
				getgenv().Title = "Speed Of Light" --Title Here
				getgenv().Description = "Many To Rebound." --Description Here
				getgenv().Reason = "Survival A-60." --Reason Here
				getgenv().BadgeId = 2129210850 --Replace Number with Your Badge ID
				getgenv().Category = 10 --You can replace the Category or dont

				local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
				local Achievements = debug.getupvalue(Unlock, 1)
				for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
					v.Title = getgenv().Title
					v.Desc = getgenv().Description
					v.Reason = getgenv().Reason
					v.BadgeId = getgenv().BadgeId
					v.Category = getgenv().Category
				end
				Unlock(nil,"Join")
				end
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn A-200", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-200", -- Custom name of your entity
    Model = "rbxassetid:////11514030098", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn B-60", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "B-60", -- Custom name of your entity
    Model = "rbxassetid:////11801716344", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Depth", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Depth", -- Custom name of your entity
    Model = "rbxassetid:////11792851981", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Silence", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Silence", -- Custom name of your entity
    Model = "rbxassetid:////11616516367", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Greed", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "rbxassetid:////11792831455", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

local Section = New:NewSection("Custom Entitys(KILLABLE)")


Section:NewButton("Spawn A-60", "No description", function()
        	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid:////11367941314", -- Can be GitHub file or rbxassetid
    Speed = 700, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 7,
        Max = 7,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11826898817", -- Image1 url
            Image2 = "rbxassetid://11867753039", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You Died To A-60.", "it's Impossible for Survive.", "Wait", "You cannot see this."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    if getgenv().Death == false then
				getgenv().Title = "Speed Of Light" --Title Here
				getgenv().Description = "Many To Rebound." --Description Here
				getgenv().Reason = "Survival A-60." --Reason Here
				getgenv().BadgeId = 2129210850 --Replace Number with Your Badge ID
				getgenv().Category = 10 --You can replace the Category or dont

				local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
				local Achievements = debug.getupvalue(Unlock, 1)
				for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
					v.Title = getgenv().Title
					v.Desc = getgenv().Description
					v.Reason = getgenv().Reason
					v.BadgeId = getgenv().BadgeId
					v.Category = getgenv().Category
				end
				Unlock(nil,"Join")
				end
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Depth", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Depth", -- Custom name of your entity
    Model = "rbxassetid:////11792851981", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 8,
        Max = 8,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11168928423", -- Image1 url
            Image2 = "rbxassetid://11168928423", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to who call Depth", "It's a Tricky One", "Use What you Learn from Ambush"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Greed", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "rbxassetid:////11792831455", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 5,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10834789903", -- Image1 url
            Image2 = "rbxassetid://11832978234", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Greed.", "It's nearly impossible to survive", "Use what you Learn from Ambush"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Old Ambush", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "rbxassetid:////11204372315", -- Can be GitHub file or rbxassetid
    Speed = 600, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 10,
        Max = 10,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10921104240", -- Image1 url
            Image2 = "rbxassetid://10921104240", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Ambush...", "Wait...", "This model got delete how did you found it?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Eyes", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eyes", -- Custom name of your entity
    Model = "rbxassetid:////10968900346", -- Can be GitHub file or rbxassetid
    Speed = 50, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11530832306", -- Image1 url
            Image2 = "rbxassetid://11530832306", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                9126213993, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to The Eyes"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

Section:NewButton("Spawn Train", "No description", function()
    	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/txV1ZG7S"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Train", -- Custom name of your entity
    Model = "rbxassetid:////5030737258", -- Can be GitHub file or rbxassetid
    Speed = 40, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11868581619", -- Image1 url
            Image2 = "rbxassetid://11868581619", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                9120247429, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

local Tab = Window:NewTab("Item")
local Section = Tab:NewSection("Item")


Section:NewButton("Candle(Credit to Icherrykardess)", "bruh", function()
    -- Shop Items
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
		local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
		local Candle = game:GetObjects("rbxassetid://11630702537")[1]
		Candle.Parent = game.Players.LocalPlayer.Backpack
		local plr = game.Players.LocalPlayer
		local Char = plr.Character or plr.CharacterAdded:Wait()
		local Hum = Char:FindFirstChild("Humanoid")
		local RightArm = Char:FindFirstChild("RightUpperArm")
		local LeftArm = Char:FindFirstChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://9982615727"
		AnimIdle.Name = "IDleloplolo"
		local cam = workspace.CurrentCamera
		Candle.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = true
		Candle.Handle.Material = Enum.Material.Salt
		local track = Hum.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
		local Equipped = false
		for i, v in pairs(Candle:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		Candle.Equipped:Connect(function()
			for _, v in next, Hum:GetPlayingAnimationTracks() do
				v:Stop()
			end
			Equipped = true
        -- RightArm.Name = "R_Arm"
			track:Play()
        -- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
		end)
		Candle.Unequipped:Connect(function()
			RightArm.Name = "RightUpperArm"
			track:Stop()
			Equipped = false
        -- RightArm.RightShoulder.C1 = RightC1
		end)
		cam.ChildAdded:Connect(function(screech)
			if screech.Name == "Screech" and math.random(1, 400) ~= 1 then
				if not Equipped then
					return
				end
				if Equipped then
					game:GetService("Debris"):AddItem(screech, 0.05)
				end
			end
		end)
		Candle.TextureId = "rbxassetid://11839631892"
    -- Create custom shop item
		if plr.PlayerGui.MainUI.ItemShop.Visible then
			CustomShop.CreateItem(Candle, {
				Title = "Guiding Candle",
				Desc = "קг๏ςєє๔ คՇ ץ๏ยг ๏ฬภ гเรк.",
				Image = "rbxassetid://11839631892",
				Price = 75,
				Stack = 1,
			})
		else
			Candle.Parent = game.Players.LocalPlayer.Backpack
		end
end)

Section:NewButton("Crucifix", "bruh", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Fazedrab/Utilities-1/main/Crucifix"))()
end)

Section:NewButton("Seek Crucifix", "bruh", function()
    --// New Seek Crucifix (Execute in prerun shop)

function FullVersion() do

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()

-- Create your tool here

local exampleTool = game:GetObjects("rbxassetid://11780280932")[1]

exampleTool.Parent = game.Players.LocalPlayer.Backpack

local Players = game:GetService("Players")

local UIS = game:GetService("UserInputService")

local tool = exampleTool

local Plr = Players.LocalPlayer

local Char = Plr.Character or Plr.CharacterAdded:Wait()

local Hum = Char:WaitForChild("Humanoid")

local RightArm = Char:WaitForChild("RightUpperArm")

local LeftArm = Char:WaitForChild("LeftUpperArm")

local RightC1 = RightArm.RightShoulder.C1

local LeftC1 = LeftArm.LeftShoulder.C1

        local function setupCrucifix(tool)

        RightArm.Name = "R_Arm"

        LeftArm.Name = "L_Arm"

        

        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)

        LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))

        for _, v in next, Hum:GetPlayingAnimationTracks() do

            v:Stop()

        end

        end

tool.Equipped:Connect(function()

    setupCrucifix(exampleTool)

    game.Players.LocalPlayer:SetAttribute("Hidden", true)

	UIS.InputBegan:Connect(function(input)	    if input.UserInputType == Enum.UserInputType.MouseButton1 then

		    if tool.Parent == game.Players.LocalPlayer.Character then

                   if game.Workspace:FindFirstChild("Lookman") then

                      local eyes = game.Workspace:FindFirstChild("Lookman").Core

                      local crucifixed = Instance.new("BoolValue")

                      crucifixed.Parent = eyes

                      crucifixed.Name = "GettingCrucifixed"

                      eyes.Ambience.Playing = false

                      eyes.Repent.Looped = true

                      eyes.Repent:Play()

                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)

local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)

camara.CFrame = camara.CFrame * shakeCf

end)

camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)

wait(1.2)

                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)

local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)

camara.CFrame = camara.CFrame * shakeCf

end)

camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)

wait(1.2)

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)

local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)

camara.CFrame = camara.CFrame * shakeCf

end)

camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)

wait(1.2)

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)

local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)

camara.CFrame = camara.CFrame * shakeCf

end)

camShake:Start()

camShake:ShakeOnce(3.5, 10, 0.1, 1.5)

                      wait(1.2)

                      local ClonedMesh = tool.NewOneBro:Clone()

                      ClonedMesh.Parent = game.Workspace

                      ClonedMesh.Anchored = true

                      tool:Destroy()

                      eyes.Repent.Playing = false

                      eyes.Scream:Play()

                      eyes.PointLight.Enabled = false

                      eyes.PointLight.Enabled = false

                      local CameraShaker = require(game.ReplicatedStorage.CameraShaker)

local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)

camara.CFrame = camara.CFrame * shakeCf

end)

camShake:Start()

camShake:ShakeOnce(6, 10, 0.1, 4.5)

                      loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()

                      wait(0.3)

                      game.Workspace:FindFirstChild("Lookman"):Destroy()

               end

               end

              end

	end)

    end)

tool.Unequipped:Connect(function()

    game.Players.LocalPlayer:SetAttribute("Hidden", false)

        RightArm.Name = "RightUpperArm"

        LeftArm.Name = "LeftUpperArm"

        

        RightArm.RightShoulder.C1 = RightC1

        LeftArm.LeftShoulder.C1 = LeftC1

end)

local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)

local Achievements = debug.getupvalue(Unlock, 1)

local custom = {

    Title = "Unlock The Seek Crucifix", 

    Desc = "How did you..",  --first line

    Reason = "You Unlock Seek Crucifix", --change this for second line of the badgs desc

    BadgeId = 2127965951, --change badge id for image

    Category = 0,

}

local old = {}

for i, v in next, Achievements.Join do

    old[i] = v

end

for i, v in next, custom do

    Achievements.Join[i] = v

end

Unlock(nil, "Join")

for i, v in next, old do

    Achievements.Join[i] = v

end

end

end

FullVersion()
end)

Section:NewButton("Coca Cola", "No description", function()
    -- Shop Items
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
		local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
		local Candle = game:GetObjects("rbxassetid://8249489496")[1]
		Candle.Parent = game.Players.LocalPlayer.Backpack
		local plr = game.Players.LocalPlayer
		local Char = plr.Character or plr.CharacterAdded:Wait()
		local Hum = Char:FindFirstChild("Humanoid")
		local RightArm = Char:FindFirstChild("RightUpperArm")
		local LeftArm = Char:FindFirstChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://9982615727"
		AnimIdle.Name = "IDleloplolo"
		local cam = workspace.CurrentCamera
		Candle.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = true
		Candle.Handle.Material = Enum.Material.Salt
		local track = Hum.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
		local Equipped = false
		for i, v in pairs(Candle:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		Candle.Equipped:Connect(function()
			for _, v in next, Hum:GetPlayingAnimationTracks() do
				v:Stop()
			end
			Equipped = true
        -- RightArm.Name = "R_Arm"
			track:Play()
        -- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
		end)
		Candle.Unequipped:Connect(function()
			RightArm.Name = "RightUpperArm"
			track:Stop()
			Equipped = false
        -- RightArm.RightShoulder.C1 = RightC1
		end)
		cam.ChildAdded:Connect(function(screech)
			if screech.Name == "Screech" and math.random(1, 400) ~= 1 then
				if not Equipped then
					return
				end
				if Equipped then
					game:GetService("Debris"):AddItem(screech, 0.05)
				end
			end
		end)
		Candle.TextureId = "rbxassetid://11839631892"
    -- Create custom shop item
		if plr.PlayerGui.MainUI.ItemShop.Visible then
			CustomShop.CreateItem(Candle, {
				Title = "Coca Cola",
				Desc = "Wow.",
				Image = "rbxassetid://11839631892",
				Price = 1,
				Stack = 1,
			})
		else
			Candle.Parent = game.Players.LocalPlayer.Backpack
		end
end)

Section:NewButton("Chip", "Bruh", function()
        -- Shop Items
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
		local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
		local Chip = game:GetObjects("rbxassetid://5125348322")[1]
		Chip.Parent = game.Players.LocalPlayer.Backpack
		local plr = game.Players.LocalPlayer
		local Char = plr.Character or plr.CharacterAdded:Wait()
		local Hum = Char:FindFirstChild("Humanoid")
		local RightArm = Char:FindFirstChild("RightUpperArm")
		local LeftArm = Char:FindFirstChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://9982615727"
		AnimIdle.Name = "IDleloplolo"
		local cam = workspace.CurrentCamera
		Chip.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = false
		Chip.Handle.Material = Enum.Material.Salt
		local track = Hum.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
		local Equipped = false
		for i, v in pairs(Candle:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		Chip.Equipped:Connect(function()
			for _, v in next, Hum:GetPlayingAnimationTracks() do
				v:Stop()
			end
			Equipped = true
        -- RightArm.Name = "R_Arm"
			track:Play()
        -- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
		end)
		Chip.Unequipped:Connect(function()
			RightArm.Name = "RightUpperArm"
			track:Stop()
			Equipped = false
        -- RightArm.RightShoulder.C1 = RightC1
		end)
		cam.ChildAdded:Connect(function(screech)
			if screech.Name == "Screech" and math.random(1, 400) ~= 1 then
				if not Equipped then
					return
				end
				if Equipped then
					game:GetService("Debris"):AddItem(screech, 0.05)
			end
			end
		end)
		Chip.TextureId = "rbxassetid://1961402610"
    -- Create custom shop item
		if plr.PlayerGui.MainUI.ItemShop.Visible then
			CustomShop.CreateItem(Candle, {
				Title = "Chip.",
				Desc = "I'm Hungry.",
				Image = "rbxassetid://1961402610",
				Price = 5,
				Stack = 1,
			})
		else
			Candle.Parent = game.Players.LocalPlayer.Backpack
		end
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The Chip Has Been Given!")
end)

Section:NewButton("Devils Crucifix(Credit to Saturn_Knighter)", "Bruh", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/0uiXgttf"))() 
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The Devil's Crucifix Has Been Given")
end)

Section:NewButton("Skeleton Key", "bruh", function()
   loadstring(game:HttpGet("https://pastebin.com/raw/GfydmZwV"))()
end)

Section:NewButton("Flashlight", "Bruh", function()
        
local shadow=game:GetObjects("rbxassetid://6219027765")[1]
shadow.Parent = game.Players.LocalPlayer.Backpack
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
        local function setupCrucifix(tool)
        RightArm.Name = "R_Arm"
        LeftArm.Name = "L_Arm"
        
        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-0), 0)
        LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:Stop()
        end
        end
shadow.Equipped:Connect(function()
setupCrucifix(shadow)
game.Players.LocalPlayer:SetAttribute("Hidden", true)
end)
 
shadow.Unequipped:Connect(function()
    game.Players.LocalPlayer:SetAttribute("Hidden", false)
        RightArm.Name = "RightUpperArm"
        LeftArm.Name = "LeftUpperArm"
        
        RightArm.RightShoulder.C1 = RightC1
        LeftArm.LeftShoulder.C1 = LeftC1
end)
end)

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")


Section:NewSlider("Walkspeed", "No description", 100, 16, function(s) -- 100 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Noclip", "No description", function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
while true do
	game:GetService("RunService").Stepped:wait()
	game.Players.LocalPlayer.Character.Head.CanCollide = false
	game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)

Section:NewButton("FullBright", "No description", function()
    if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end)

local Tab = Window:NewTab("Extra")
local Section = Tab:NewSection("Extra")

Section:NewButton("Flicker Lights", "Flickers the Lights on Latest Room.", function()
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1) 
    end)

Section:NewButton("Break Lights", "Breaks the Lights on Latest Room.", function()
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60) 
    end)

Section:NewButton("Get All Achievements", "Gives you all achievements.", function()
for i,v in pairs(require(game.ReplicatedStorage.Achievements)) do
    spawn(function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)(nil, i)
    end)
end
    end)

Section:NewButton("Red Room", "Makes the Room Red", function()
    local currentLoadedRoom
local function setRooms()
	local tb = {}
	table.foreach(workspace.CurrentRooms:GetChildren(), function(_, r)
		if r:FindFirstChild("RoomStart") then
			table.insert(tb, tonumber(r.Name))
		end
	end)
	currentLoadedRoom = workspace.CurrentRooms[tostring(math.max(unpack(tb)) - 1)]
end
setRooms()
require(game.ReplicatedStorage.ClientModules.Module_Events).tryp(currentLoadedRoom, 9e307)
end)

Section:NewButton("Doors Floor 2 (Credit to iCherryhub)", "Credit to iCherryhub", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
end)

Section:NewButton("HeartBeat", "Hearth beat Minigame", function()
 firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)
end)

local Tab = Window:NewTab("Other Script")
local Section = Tab:NewSection("Other Script")

Section:NewButton("Keyboard Script", "no description", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Section:NewButton("Infinite yield script", "no description", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Tab = Window:NewTab("Toggle Gui")
local Section = Tab:NewSection("Toggle Gui")


Section:NewKeybind("Toggle ui", "No description", Enum.KeyCode.RightShift, function()
    Library:ToggleUI()
end)

local Tab = Window:NewTab("Hardcore Mode")
local Section = Tab:NewSection("Hardcore v3 by noonie")


Section:NewButton("Hardcore v3 by noonie", "No description", function()
		--[[
                 _      
 _ __   ___   ___  _ __ (_) ___ 
| '_ \ / _ \ / _ \| '_ \| |/ _ \
| | | | (_) | (_) | | | | |  __/
|_| |_|\___/ \___/|_| |_|_|\___|
       _                        
 _ __ (_)_ __   __ _            
| '_ \| | '_ \ / _` |           
| |_) | | | | | (_| |           
| .__/|_|_| |_|\__, |           
|_|            |___/            

--dm noonie#0001 if it breaks or for questions
--https://discord.gg/qCnaasw4 
--pls

]]--

do local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=getfenv or function()return _ENV;end;local v9=setmetatable;local v10=pcall;local v11=select;local v12=unpack or table.unpack;local v13=tonumber;local function v14(v15,v16)local v17=1;local v18;v15=v4(v3(v15,5),"..",function(v29)if (v1(v29,2)==79) then local v63=0;while true do if (v63==0) then v18=v0(v3(v29,1,1));return "";end end else local v64=v2(v0(v29,16));if v18 then local v67=v5(v64,v18);v18=nil;return v67;else return v64;end end end);local function v19(v30,v31,v32)if v32 then local v65=(v30/((1 + (314 -(34 + 279)))^(v31-(839 -(80 + 758)))))%((6 -4)^(((v32-(1222 -(276 + 945))) -(v31-(718 -(514 + (1676 -(716 + 757)))))) + 1 + 0));return v65-(v65%(3 -2));else local v66=(2 + 0 + 0)^(v31-(1 + 0));return (((v30%(v66 + v66))>=v66) and (940 -((1533 -967) + 373))) or (565 -((2027 -(585 + 1319)) + 442));end end local function v20()local v37=0 + 0;local v38;while true do if (v37==(2 -1)) then return v38;end if (v37==(0 + 0)) then v38=v1(v15,v17,v17);v17=v17 + (1004 -(326 + 677));v37=1 + 0;end end end local function v21()local v39,v40=v1(v15,v17,v17 + 2 + 0);v17=v17 + 2;return (v40 * (1016 -(427 + 333))) + v39;end local function v22()local v41=0 + 0;local v42;local v43;local v44;local v45;while true do if (v41==(0 -(1380 -(1327 + 53)))) then v42,v43,v44,v45=v1(v15,v17,v17 + (14 -11));v17=v17 + ((2944 -(156 + 1343)) -(916 + 525));v41=1 + 0 + 0;end if (v41==(1 + 0)) then return (v45 * (49495348 -32718132)) + (v44 * 65536) + (v43 * (2134 -(1435 + 443))) + v42;end end end local function v23()local v46=v22();local v47=v22();return (( -(890 -(639 + 249)) * v19(v47,123 -91)) + 1 + 0) * ((3 -1)^(v19(v47,1307 -(301 + 985),31) -1023)) * ((((v19(v47,1,4 + 16) * ((2 + 0)^(1769 -((4760 -3121) + 98)))) + v46)/((1 + 1)^(108 -56))) + (1 -0));end local function v24(v33)local v48=0;local v49;local v50;while true do if (v48==(1947 -(264 + 1682))) then v49=v3(v15,v17,(v17 + v33) -(1 + 0));v17=v17 + v33;v48=4 -2;end if (v48==3) then return v6(v50);end if (v48==(1614 -(1128 + 486))) then v49=nil;if  not v33 then local v71=1504 -(52 + 1452);while true do if (v71==(566 -(176 + 390))) then v33=v22();if (v33==(0 -0)) then return "";end break;end end end v48=1 -(0 + 0);end if (v48==(836 -((1115 -(200 + 272)) + 191))) then v50={};for v68=1312 -(786 + 525), #v49 do v50[v68]=v2(v1(v3(v49,v68,v68)));end v48=3 + (0 -0);end end end local v25=v22;local function v26(...)return {...},v11("#",...);end local function v27()local v51=0 + 0;local v52;local v53;local v54;local v55;local v56;local v57;local v58;while true do if (v51~=(1 -0)) then else v54=nil;v55=nil;v51=85 -(74 + 9);end if ((1 + 2)==v51) then v58=nil;while true do local v70=0;while true do if (v70~=0) then else if (v52==(0 -0)) then local v92=0 -0;local v93;while true do if (v92==(626 -(272 + 354))) then v93=0 + 0;while true do if (v93==(1982 -(1856 + 125))) then v55={};v52=1;break;end if ((0 -0)==v93) then local v105=0 -0;while true do if (v105~=0) then else v53={};v54={};v105=1961 -(1091 + 869);end if (v105~=1) then else v93=1;break;end end end end break;end end end if (v52~=(8 -6)) then else local v94=0 + 0;local v95;while true do if (v94~=0) then else v95=227 -(158 + 69);while true do if ((585 -(389 + 195))~=v95) then else for v107=1,v22() do local v108=1884 -(1501 + 383);local v109;local v110;while true do if (v108==(0 -0)) then local v120=0 + 0;while true do if ((1 + 0)~=v120) then else v108=1 + 0;break;end if (v120==(416 -(7 + 409))) then v109=0;v110=nil;v120=1069 -(240 + 828);end end end if (v108~=(2 -1)) then else while true do if (v109==(397 -(151 + 246))) then v110=v20();if (v19(v110,1,1)~=0) then else local v141=0;local v142;local v143;local v144;local v145;local v146;while true do if (v141~=(1 + 1)) then else v146=nil;while true do if (v142==1) then v145=nil;v146=nil;v142=704 -(559 + 143);end if (v142==(803 -(249 + 554))) then local v157=0 -0;while true do if (v157==(274 -(16 + 258))) then v143=0;v144=nil;v157=1;end if (v157~=(1 + 0)) then else v142=1;break;end end end if (v142~=(2 -0)) then else while true do if (v143==(5 -2)) then if (v19(v145,13 -10,4 -1)~=1) then else v146[4]=v58[v146[4]];end v53[v107]=v146;break;end if (2==v143) then local v161=0;while true do if (v161==0) then local v167=0 -0;while true do if (v167==0) then if (v19(v145,1,1 + 0)~=(1 + 0)) then else v146[4 -2]=v58[v146[2]];end if (v19(v145,6 -4,2)~=1) then else v146[3]=v58[v146[256 -(221 + 32)]];end v167=602 -(180 + 421);end if (v167==1) then v161=1;break;end end end if (v161==1) then v143=2 + 1;break;end end end if (v143~=(0 -0)) then else local v162=0;local v163;local v164;while true do if (v162~=(1278 -(1030 + 248))) then else v163=0 + 0;v164=nil;v162=1;end if ((1368 -(265 + 1102))~=v162) then else while true do if (v163~=(0 + 0)) then else v164=0 + 0;while true do if (v164~=1) then else v143=1 + 0;break;end if (v164==(0 -0)) then local v175=979 -(112 + 867);while true do if (v175~=1) then else v164=1;break;end if (v175==(549 -(281 + 268))) then v144=v19(v110,4 -2,14 -11);v145=v19(v110,1 + 3,3 + 3);v175=1 + 0;end end end end break;end end break;end end end if (v143==1) then local v165=505 -(336 + 169);while true do if (v165==0) then v146={v21(),v21(),nil,nil};if (v144==(0 + 0)) then local v168=0;local v169;local v170;while true do if (v168==(2 -1)) then while true do if (v169~=(0 + 0)) then else v170=0;while true do if (v170==(60 -(9 + 51))) then v146[3]=v21();v146[4]=v21();break;end end break;end end break;end if (v168~=(0 -0)) then else local v174=0 + 0;while true do if (v174~=(0 + 0)) then else v169=0 + 0;v170=nil;v174=1;end if (v174==(1 + 0)) then v168=1;break;end end end end elseif (v144==(1 + 0)) then v146[3 + 0]=v22();elseif (v144==2) then v146[3]=v22() -((1 + 1)^16);elseif (v144==(965 -(349 + 613))) then local v177=0;while true do if (0==v177) then v146[3]=v22() -(2^(36 -20));v146[4]=v21();break;end end end v165=1;end if (v165~=1) then else v143=2;break;end end end end break;end end break;end if ((579 -(274 + 304))~=v141) then else v144=nil;v145=nil;v141=2;end if (v141==(0 + 0)) then v142=0 + 0;v143=nil;v141=1;end end end break;end end break;end end end v52=3;break;end if (v95==0) then local v106=443 -(230 + 213);while true do if (v106~=(3 -2)) then else v95=1 + 0;break;end if (v106~=0) then else for v121=1,v57 do local v122=0;local v123;local v124;local v125;local v126;while true do if (v122==2) then while true do if (v123~=(2 -1)) then else v126=nil;while true do if (v124~=(0 + 0)) then else local v155=0;while true do if (v155==1) then v124=1 + 0;break;end if (v155==0) then v125=v20();v126=nil;v155=1;end end end if ((1 + 0)~=v124) then else if (v125==1) then v126=v20()~=(0 -0);elseif (v125==(1 + 1)) then v126=v23();elseif (v125==(13 -10)) then v126=v24();end v58[v121]=v126;break;end end break;end if (v123~=(0 + 0)) then else local v147=0;while true do if (v147==(1602 -(445 + 1157))) then v124=0 + 0;v125=nil;v147=1;end if ((1 + 0)==v147) then v123=1;break;end end end end break;end if (v122~=1) then else local v137=0 -0;while true do if (v137==1) then v122=2;break;end if (v137==(0 -0)) then v125=nil;v126=nil;v137=1;end end end if (v122==(0 -0)) then local v138=0;while true do if (v138~=(3 -2)) then else v122=1;break;end if (v138==(0 + 0)) then v123=0;v124=nil;v138=1;end end end end end v56[2 + 1]=v20();v106=985 -(254 + 730);end end end end break;end end end v70=1;end if (v70~=(829 -(29 + 799))) then else if (1~=v52) then else local v96=1909 -(142 + 1767);while true do if (1==v96) then v58={};v52=2;break;end if (v96~=0) then else v56={v53,v54,nil,v55};v57=v22();v96=1;end end end if (v52~=(3 + 0)) then else local v97=0 -0;while true do if (v97==0) then for v101=2 -1,v22() do v54[v101-(1 + 0)]=v27();end for v103=2 -1,v22() do v55[v103]=v22();end v97=1;end if (v97==1) then return v56;end end end break;end end end break;end if (v51==(2 + 0)) then v56=nil;v57=nil;v51=3;end if (v51==0) then v52=0 -0;v53=nil;v51=1 + 0;end end end local function v28(v34,v35,v36)local v59=0;local v60;local v61;local v62;while true do if (v59==0) then v60=v34[1];v61=v34[2];v59=1;end if (v59==1) then v62=v34[3];return function(...)local v72=1;local v73= -1;local v74={...};local v75=v11("#",...) -1;local function v76()local v77=v60;local v78=Const;local v79=v61;local v80=v62;local v81=v26;local v82={};local v83={};local v84={};for v90=0 + 0,v75 do if ((v90>=v80) or (((6443 -(813 + 677)) -(1471 + 231))>=(7623 -2707))) then v82[v90-v80]=v74[v90 + 1 + 0];else v84[v90]=v74[v90 + 1];end end local v85=(v75-v80) + (1 -(759 -(179 + 580)));local v86;local v87;while true do local v91=1645 -(567 + 1078);while true do if ((((8123 -(526 + 903)) -4486)>(1118 -314)) and (v91==(725 -(185 + 540)))) then local v100=1713 -(181 + 1237 + 295);while true do if (((3350 + 866)>753) and (v100==1)) then v91=1 + 0;break;end if ((v100==(0 -0)) or ((1417 -(18 + 1289))>(11461 -6773))) then v86=v77[v72];v87=v86[1];v100=2 -1;end end end if ((1==v91) or ((718 + 556)>=4166)) then if ((v87<=4) or ((2212 + 2257)<=963)) then if ((v87<=1) or (4928<=(555 + 886))) then if (((2391 -(1564 + 366))<=(5408 -(557 + 953))) and (v87>(0 + 0))) then v84[v86[3 -1]]=v86[798 -(239 + 556)];else do return;end end elseif ((((910 + 3022) -1630)>(609 + 487)) and (v87<=((4 + 2) -4))) then v84[v86[5 -3]]();elseif ((v87==(2 + 1)) or (((20298 -15021) -(399 + 390))<=4380)) then local v127=0 -0;local v128;local v129;local v130;local v131;local v132;while true do if (((2501 + 16)<(6013 -(918 + 1011))) and (v127==(1 + 1))) then v132=nil;while true do if ((v128==0) or ((3166 -(122 + 461))>=(2989 + 1435))) then v129=v86[2];v130,v131=v81(v84[v129](v12(v84,v129 + (1 -0),v86[3])));v128=1 -0;end if ((v128==(1021 -(594 + 426))) or ((1447 -(325 + 340))>(5936 -(24 + 1740)))) then v73=(v131 + v129) -(681 -(466 + 214));v132=(0 -0) -0;v128=1 + 1;end if ((v128==(6 -(12 -8))) or (3481<=(2829 + 575))) then for v148=v129,v73 do local v149=0 + 0;local v150;while true do if ((3961>=(1210 -724)) and (v149==(0 -0))) then v150=1109 -(642 + 467);while true do if ((v150==(0 -0)) or ((2426 + 12)>=(1303 + 2907))) then v132=v132 + (2 -1);v84[v148]=v130[v132];break;end end break;end end end break;end end break;end if (((4361 + 140)>(12075 -9417)) and (v127==(1 + 0))) then v130=nil;v131=nil;v127=2;end if ((v127==(296 -(137 + 159))) or ((2179 + 165 + 1951)<(1580 + 252))) then v128=422 -(280 + 142);v129=nil;v127=1 + (946 -(544 + 402));end end else v84[v86[2]]=v28(v79[v86[3]],nil,v36);end elseif (((652 -(199 + 141))<=(15820 -10950)) and (v87<=(18 -11))) then if (((1498 + 2924)==(192 + 4230)) and (v87<=(1 + 4))) then local v112=0 -0;local v113;local v114;local v115;local v116;while true do if ((v112==(1 -0)) or (4802<=(600 -154))) then v115=nil;v116=nil;v112=3 -1;end if ((v112==(933 -(465 + (697 -229)))) or (3519<(3718 -(1111 + 216)))) then v113=0 + 0;v114=nil;v112=4 -3;end if (((439 -(232 + 139 + 66))==v112) or ((2425 + 43)>=(4198 -(330 + 602)))) then while true do if (((8392 -6251)>=(423 + 302 + 331)) and (v113==0)) then local v140=692 -(228 + 464);while true do if (((3369 -(76 + 1056))>=(268 + (124 -60))) and (v140==0)) then v114=0 -0;v115=nil;v140=2 -1;end if (((4477 -(65 + 1133))>=((1322 -(26 + 1010)) + 84)) and (v140==(1 -0))) then v113=(207 -(120 + 86)) + 0;break;end end end if (((4172 -(980 + 348))<(3883 -(6 + 17))) and (v113==1)) then v116=nil;while true do if ((v114==((1745 + 222) -(29 + 1938))) or (343==(2159 + 2497))) then local v151=0 -0;local v152;while true do if (((0 -0)==v151) or ((1186 -(416 + 58))>((298 + 2322) -(93 + 13)))) then v152=0 + 0;while true do if (((6012 -(1229 + 46))>(6971 -(15181 -9798))) and (v152==(0 -0))) then local v159=0 + 0;while true do if ((((1928 -(47 + 1451)) -(71 + 234))==(439 -314)) and (v159==(0 -(1620 -(150 + 1470))))) then v115=v86[2];v116=v84[v86[76 -(54 + 19)]];v159=1;end if ((v159==((181 + 73) -(248 + (1973 -(313 + 1655))))) or ((5158 -((1386 -909) + 1315))==635)) then v152=3 -2;break;end end end if (((3053 -1558)==(3591 -(3570 -(495 + 979)))) and (v152==(2 -1))) then v114=1;break;end end break;end end end if ((((1571 + 533) -(89 + 874))<=(6797 -4630)) and (v114==(1 + 0 + 0))) then v84[v115 + (3 -2)]=v116;v84[v115]=v116[v86[6 -2]];break;end end break;end end break;end end elseif (((8426 -4806)>=(2902 -(404 + 393))) and (v87>((10 + 3) -7))) then local v134=242 -((987 -(471 + 300)) + 26);local v135;while true do if ((v134==(0 -0)) or ((3344 -(1059 + 94))<(2338 -(100 + 1698)))) then v135=v86[(572 -(261 + 309)) -0];v84[v135]=v84[v135](v12(v84,v135 + (105 -((1486 -(1037 + 399)) + 54)),v73));break;end end else v72=v86[1865 -(210 + 1652)];end elseif (((571 + 1573)<=3506) and (v87<=(1781 -(1187 + (1655 -1069))))) then local v117=150 -(116 + 34);local v118;while true do if (((40 + 975)>(2 + 138)) and ((0 -0)==v117)) then v118=v86[860 -(680 + 178)];v84[v118](v84[v118 + 1 + 0 + 0]);break;end end elseif ((v87>(1021 -(819 + 193))) or ((7219 -2248)<((30408 -13382) -12500))) then v84[v86[589 -((43 -21) + 565)]]=v36[v86[3 + 0 + 0]];elseif ((v84[v86[(5375 -3510) -(32 + 1831)]]==v86[(1597 -1041) -(469 + 83)]) or ((3877 -(82 + 186))<3546)) then v72=v72 + (1342 -(510 + 831));else v72=v86[3];end v72=v72 + (171 -(99 + 71));break;end end end end A,B=v26(v10(v76));if  not A[1] then local v88=0;local v89;while true do if (v88==0) then v89=v34[4][v72] or "?";error("Script error at ["   .. v89   .. "]:"   .. A[2]);break;end end else return v12(A,2,B);end end;end end end return v28(v27(),{},v16)();end v14("LOL!023O00028O0003053O00737061776E000C3O0012013O00013O0026093O0001000100010004063O0001000100120A000100023O00020400026O000800010002000100120A000100023O000204000200014O00080001000200010004063O000B00010004063O000100016O00013O00023O00043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403603O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F746861747374696E6B6E2O6F6E2F69504E457A2D5763667239686269392D67666C416C78497A5A2D4757352O72516E2F6D61696E2F4D61696E312E6C756100083O00120A3O00013O00120A000100023O002005000100010003001201000300044O0003000100034O00075O00022O00023O000100016O00017O00083O00063O00063O00063O00063O00063O00063O00063O00073O00043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403613O00682O7470733A2O2F6769746875622E636F6D2F746861747374696E6B6E2O6F6E2F69504E457A2D5763667239686269392D67666C416C78497A5A2D4757352O72516E2F626C6F622F6D61696E2F4D61696E5054322E6C75613F7261773D7472756500083O00120A3O00013O00120A000100023O002005000100010003001201000300044O0003000100034O00075O00022O00023O000100016O00017O00083O00093O00093O00093O00093O00093O00093O00093O000A3O000C3O00023O00043O00043O00053O00073O00053O00083O000A3O00083O000B3O000C3O000E3O00",v8());end
end)

Section:NewButton("Sprint", "Q to toggle sprint", function()
		

local Parent = game.Players.LocalPlayer.PlayerGui

local Sprint = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
local Fill = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")

--Properties:

local StaminaGui = Instance.new("ScreenGui")

--Properties:

StaminaGui.Name = "StaminaGui"
StaminaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StaminaGui.Enabled = true
StaminaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Sprint.Name = "Sprint"
Sprint.Parent = StaminaGui
Sprint.AnchorPoint = Vector2.new(0, 1)
Sprint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sprint.BackgroundTransparency = 1.000
Sprint.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
Sprint.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
Sprint.ZIndex = 1005

ImageLabel.Parent = Sprint
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
ImageLabel.Visible = false

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ImageLabel

UIPadding.Parent = Sprint
UIPadding.PaddingBottom = UDim.new(0.300000012, -5)
UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
UIPadding.PaddingRight = UDim.new(0.0500000007, -15)
UIPadding.PaddingTop = UDim.new(0.300000012, -5)

Bar.Name = "Bar"
Bar.Parent = Sprint
Bar.AnchorPoint = Vector2.new(0, 0.5)
Bar.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
Bar.BackgroundTransparency = 0.700
Bar.Position = UDim2.new(-2.72600269, 0, 0.499999672, 0)
Bar.Size = UDim2.new(3.60599804, 0, 0.600000083, 0)
Bar.ZIndex = 0

UICorner_2.CornerRadius = UDim.new(0.25, 0)
UICorner_2.Parent = Bar

UIPadding_2.Parent = Bar
UIPadding_2.PaddingBottom = UDim.new(0, 4)
UIPadding_2.PaddingLeft = UDim.new(0, 4)
UIPadding_2.PaddingRight = UDim.new(0, 4)
UIPadding_2.PaddingTop = UDim.new(0, 4)

Fill.Name = "Fill"
Fill.Parent = Bar
Fill.AnchorPoint = Vector2.new(0, 0.5)
Fill.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
Fill.Position = UDim2.new(0, 0, 0.5, 0)
Fill.Size = UDim2.new(1, 0, 1, 0)
Fill.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Fill

local erm = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
erm.IgnoreGuiInset = true
erm.Name = "erm"
erm.Parent = Parent
erm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = erm
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(1, 0, 0.998717964, 0)
ImageLabel.Image = "rbxassetid://190596490"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

ImageLabel.ImageTransparency = 1

-- Services

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")

local stamina, staminaMax = 100, 100
local sprintTime = 7
local cooldown = false

local ModuleScripts = {
	MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
}

-- Setup

local nIdx; nIdx = hookmetamethod(game, "__newindex", newcclosure(function(t, k, v)
	if k == "WalkSpeed" then
		if ModuleScripts.MainGame.chase then
			v = ModuleScripts.MainGame.crouching and 15 or 22
		elseif ModuleScripts.MainGame.crouching then
			v = 8
		else
			v = isSprinting and 20 or 12
		end
	end

	return nIdx(t, k, v)
end))

-- Scripts

sprintTime = math.max(sprintTime - 1, 1)
local zerostamtween = game.TweenService:Create(ImageLabel,TweenInfo.new(12),{ImageTransparency = 0})
UIS.InputBegan:Connect(function(key, gameProcessed)
	if not gameProcessed and key.KeyCode == Enum.KeyCode.Q and not cooldown and not ModuleScripts.MainGame.crouching then
		-- Sprinting

		isSprinting = true
		Hum:SetAttribute("SpeedBoost",4)
		zerostamtween:Play()
		while UIS:IsKeyDown(Enum.KeyCode.Q) and stamina > 0 do
			stamina = math.max(stamina - 1, 0)
			Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)
			task.wait(sprintTime / 100)
			
		end

		-- Reset
		zerostamtween:Pause()
		isSprinting = false
		Hum:SetAttribute("SpeedBoost",0)
		game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
		Hum.WalkSpeed = 12

		if stamina == 0 then
			-- Cooldown
			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent,"You're exhausted.")
			local noStamernaSound = Instance.new("Sound",workspace)
			noStamernaSound.SoundId = "rbxassetid://8258601891"
			noStamernaSound.Volume = 0.8
			noStamernaSound.PlayOnRemove = true
			noStamernaSound:Destroy()
			cooldown = true
			game.TweenService:Create(ImageLabel,TweenInfo.new(0.3),{ImageTransparency = 0}):Play()
			wait(0.3)
			game.TweenService:Create(ImageLabel,TweenInfo.new(10),{ImageTransparency = 1}):Play()
			for i = 1, staminaMax, 1 do
				stamina = i
				Fill.Size = UDim2.new(1 / staminaMax * i, 1, 1, 0)

				task.wait(sprintTime / 50)
			end

			cooldown = false
		else
			-- Refill
			cooldown = false
			Spawn(function()
			    --wait(1)
			    cooldown = false
			end)
			game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
			while not UIS:IsKeyDown(Enum.KeyCode.Q) do
				stamina = math.min(stamina + 1, staminaMax)
				Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)

				task.wait(sprintTime / 50)
			end
		end        
	end
end)
Hum:SetAttribute("SpeedBoost",0)
Hum.WalkSpeed = 12
end)

local Tab = Window:NewTab("Entitys made by me")
local Section = Tab:NewSection("Exotic")

Section:NewButton,("Spawn Exotic (killable)", "No Description", function()
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Create entity
local entityTable = Spawner.createEntity({
    CustomName = "Exotic", -- Custom name of your entity
    Model = "rbxassetid://12012319148", -- Can be GitHub file or rbxassetid
    Speed = 500, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        5, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 10,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"let me tickle your balls"}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
entityTable.Debug.OnEntitySpawned = function()
    print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
    print("Entity has despawned:", entityTable)
end

entityTable.Debug.OnEntityStartMoving = function()
    print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
    print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
    print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
    warn("Player has died.")
end
------------------------------------


-- Run the created entity
Spawner.runEntity(entityTable))
end)
