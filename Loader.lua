--//Variables
local scriptUrls = {
    [109983668079237] = "StealABrainrot.lua"
}


local scriptUrl = scriptUrls[game.PlaceId]
if scriptUrl then
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VortexLinx/Project-Vmax/main/Scripts/" .. scriptUrl))()
    end)
    if not success then
        warn("[Devil Ugly] Failed to load script:", errorMsg)
    end
else
    print("[Devil Ugly] Game ID not found in script URLs table.")
end
