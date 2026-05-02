--// CONFIG
local KEY_LIST_URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua",
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/STBBList.lua"
}

local SCRIPT_URL = "https://pastefy.app/muJ0iped/raw"

--// SERVICES
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// GET KEY
local INPUT_KEY = rawget(_G, "key") or key

--// FUNCTION: Kick
local function kickPlayer(reason)
    LocalPlayer:Kick(reason)
end

--// CHECK KEY
if not INPUT_KEY or INPUT_KEY == "" then
    kickPlayer("Access denied: No authentication key provided.")
    return
end

if string.lower(INPUT_KEY) == "free" then
    task.wait(5)
    kickPlayer("Access denied: Complimentary access does not exist. Please obtain valid credentials.")
    return
end

--// LOAD KEY LIST (ลองหลาย URL)
local response
for _, url in ipairs(KEY_LIST_URLS) do
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)

    if success and result then
        response = result
        break
    end
end

-- ถ้าโหลดไม่ได้ทุกอัน
if not response then
    print("Unable to verify credentials due to a network error.")
    return
end

--// CONVERT TO TABLE
local keyData
local ok = pcall(function()
    keyData = loadstring(response)()
end)

if not ok or type(keyData) ~= "table" then
    kickPlayer("Credential verification failed due to invalid server response.")
    return
end

--// CHECK USERNAME
local playerName = LocalPlayer.Name
local userData = keyData[playerName]

if not userData then
    kickPlayer("Access denied: Your account is not authorized.")
    return
end

--// CHECK KEY
if userData.Key ~= INPUT_KEY then
    kickPlayer("Access denied: Invalid authentication key provided.")
    return
end

--// LOAD MAIN SCRIPT
local loadSuccess = pcall(function()
    loadstring(game:HttpGet(SCRIPT_URL))()
end)

if not loadSuccess then
    kickPlayer("Execution failed: Unable to load the main script.")
end
