local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Air Script Hub") -- Creates the window

local b = w:CreateFolder("Scripts") -- Creates the folder(U will put here your buttons,etc)

b:Label("Yes",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Bedwars Air", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AirPlayzYT/Yes/main/Bedwars%20Air%20Workspace.lua", true))()
end)

b:Button("Bedwars Sunlight", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AirPlayzYT/Yes/main/Sunlight%20Workspace.lua", true))()
end)

b:DestroyGui()
