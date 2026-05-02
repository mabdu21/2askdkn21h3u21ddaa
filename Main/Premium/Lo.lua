--// CONFIG
local KEY_LIST_URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua",
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/STBBList.lua"
}

local SCRIPT_URL = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/ydhuabdad.lua"

--// SERVICES
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// GET KEY
local INPUT_KEY = rawget(_G, "key") or key

--// FUNCTION: Kick
local function kickPlayer(reason)
    warn("[KICK]:", reason)
    LocalPlayer:Kick(reason)
end

--// CHECK KEY
if not INPUT_KEY or INPUT_KEY == "" then
    kickPlayer("Access denied: No authentication key provided.")
    return
end

if string.lower(INPUT_KEY) == "free" then
    task.wait(2)
    kickPlayer("Access denied: Complimentary access does not exist.")
    return
end

--// LOAD KEY LIST
local response
local usedURL

for i, url in ipairs(KEY_LIST_URLS) do
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)

    if success and result and result ~= "" then
        print("[INFO] Loaded key list from URL #" .. i)
        response = result
        usedURL = url
        break
    else
        warn("[WARN] Failed to load URL #" .. i)
    end
end

if not response then
    kickPlayer("Unable to verify credentials (all sources failed).")
    return
end

--// CONVERT TO TABLE
local keyData
local ok, err = pcall(function()
    keyData = loadstring(response)()
end)

if not ok then
    warn("[ERROR] loadstring failed:", err)
    kickPlayer("Credential verification failed (bad server response).")
    return
end

if type(keyData) ~= "table" then
    kickPlayer("Credential verification failed (data is not table).")
    return
end

--// FIND USER (case-insensitive)
local playerName = string.lower(LocalPlayer.Name)
local userData

for name, data in pairs(keyData) do
    if string.lower(name) == playerName then
        userData = data
        break
    end
end

print("[DEBUG] Player:", LocalPlayer.Name)
print("[DEBUG] Input Key:", INPUT_KEY)
print("[DEBUG] Data Found:", userData)

if not userData then
    kickPlayer("Access denied: Your account is not authorized.")
    return
end

--// CHECK KEY
if not userData.Key then
    kickPlayer("Access denied: Key field missing in database.")
    return
end

if tostring(userData.Key) ~= tostring(INPUT_KEY) then
    kickPlayer("Access denied: Invalid authentication key.")
    return
end

print("[SUCCESS] Authentication passed!")

--// LOAD MAIN SCRIPT
local scriptSuccess, scriptErr = pcall(function()
    local content = game:HttpGet(SCRIPT_URL)
    
    if not content or content == "" then
        error("Empty script content")
    end
    
    loadstring(content)()
end)

if not scriptSuccess then
    warn("[ERROR] Script load failed:", scriptErr)
    kickPlayer("Execution failed: Unable to load main script.")
end
