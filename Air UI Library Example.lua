local Library = loadstring(game:HttpGet”https://raw.githubusercontent.com/AirPlayzYT/AirForce-X/main/Source.lua”, true))()

local Window = Library:Create("HubName","GameName")

local Tab1 = Window:Tab("Tab 1",true)
local Tab2 = Window:Tab("Tab 2",true)

Tab1:Label("Hi")

Tab1:Button("Button No.1",function()
print("Button!”)
end)

Tab1:Button("Button No.2",function()
print("Button!”)
end)

Tab1:Textbox("Textbox","Enter Text",function(txt)
game.Players.LocalPlayer.Humanoid.Walkspeed = txt
end)

Tab2:Keybind("Keybind",Enum.KeyCode.F,function()
print("Pressed key")
end)

Tab1:Dropdown("Dropdown",{"Option 1","Option 2","Option 3"},function(current)
print(current)
end)

Tab1:Toggle("Toggle", function(x)
print(x)
end)

Tab1:Slider(“Slider”, Minimum, Maximum, function(s)
print(s)
end)

[Library:Toggle()]
