local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local venyx = library.new("Air Script Hub V1 Remastered", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(255, 0, 0),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Air Hub", 5012544693)
local section1 = page:addSection("Air Hub")
local section2 = page:addSection("Air Hub Key at https://rekonise.com/air-hub-key-v1-d6sr7")

section1:addButton("Air Hub", function()
loadstring(game:HttpGet("https://pst.klgrth.io/paste/cmker/raw", true))()
end)

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom
