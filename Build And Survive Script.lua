local HttpService = game:GetService("HttpService")
local url = "https://raw.githubusercontent.com/musicmaker-web/Roblox-Scripts/refs/heads/main/Build%20And%20Survive.lua"

local success, err = pcall(function()
    local scriptText = game:HttpGet(url)
    loadstring(scriptText)() 
end)

if not success then
    warn("Error loading the Script: "..err)
end
