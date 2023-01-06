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
    CustomName = "Exotic", -- Custom name of your entity
    Model = "rbxassetid://12012319148", -- Can be GitHub file or rbxassetid
    Speed = 1000, -- Percentage, 100 = default Rush speed
    DelayTime = 10, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        8, -- Time (seconds)
    },
    Cycles = {
        Min = 5,
        Max = 12,
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
    CustomDialog = {"let me ticle your balls", }, -- Custom death message (can be as long as you want)
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