local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local twait = task and task.wait or wait
local tspawn = task and task.spawn or spawn

local player = Players.LocalPlayer
while not player do
    twait(0.1)
    player = Players.LocalPlayer
end

local ENV = _G

pcall(function()
    if type(getgenv) == "function" then
        ENV = getgenv()
    end
end)

if ENV.LoaderV2 == nil then
    ENV.LoaderV2 = true
end

if not ENV.LoaderV2 then
    return
end

local BUYER_LIST_URL = "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/main/Main/Premium/listpremium.lua"
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/main/Main/Webhook/Premium-Version.lua"

local function trim(v)
    v = tostring(v or "")
    v = v:gsub("^%s+", "")
    v = v:gsub("%s+$", "")
    return v
end

local function safeNotify(title, text, duration)
    title = tostring(title or "DYHUB")
    text = tostring(text or "")
    duration = tonumber(duration) or 5

    tspawn(function()
        for _ = 1, 12 do
            local ok = pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = title,
                    Text = text,
                    Duration = duration,
                })
            end)

            if ok then
                break
            end

            twait(0.25)
        end
    end)
end

local function safeKick(message)
    message = tostring(message or "DYHUB Loader Error")

    twait(0.2)

    pcall(function()
        player:Kick(message)
    end)
end

local function getKey()
    local k = nil

    pcall(function()
        k = ENV.DYHUBKEY
    end)

    if k == nil or trim(k) == "" then
        pcall(function()
            k = ENV.key
        end)
    end

    if k == nil or trim(k) == "" then
        pcall(function()
            k = _G.DYHUBKEY
        end)
    end

    if k == nil or trim(k) == "" then
        pcall(function()
            k = _G.key
        end)
    end

    if k == nil or trim(k) == "" then
        pcall(function()
            k = key
        end)
    end

    return trim(k)
end

local function httpGet(url)
    local result = nil

    local ok, err = pcall(function()
        result = game:HttpGet(url)
    end)

    if ok and type(result) == "string" and result ~= "" then
        return true, result
    end

    return false, tostring(err or "HttpGet failed")
end

local function runCode(code, chunkName)
    if type(loadstring) ~= "function" then
        return false, "loadstring is not available"
    end

    local chunk, loadErr = loadstring(code)

    if not chunk then
        return false, tostring(loadErr or "loadstring failed")
    end

    local ok, result = pcall(chunk)

    if not ok then
        return false, tostring(result or chunkName or "script crashed")
    end

    return true, result
end

local function loadBuyerList()
    local okHttp, codeOrErr = httpGet(BUYER_LIST_URL)

    if not okHttp then
        return false, "Failed to download Buyer list: " .. tostring(codeOrErr)
    end

    local okRun, resultOrErr = runCode(codeOrErr, "BuyerList")

    if not okRun then
        return false, "Failed to run Buyer list: " .. tostring(resultOrErr)
    end

    local result = resultOrErr

    if type(result) == "function" then
        local okFunc, funcResult = pcall(result)

        if not okFunc then
            return false, "Failed to execute Buyer function: " .. tostring(funcResult)
        end

        result = funcResult
    end

    if type(result) ~= "table" or not next(result) then
        return false, "Buyer list is empty or invalid"
    end

    return true, result
end

local function findKeyOwner(buyerList, searchKey)
    searchKey = trim(searchKey)

    if searchKey == "" then
        return nil, nil
    end

    for name, data in pairs(buyerList) do
        if type(data) == "table" and trim(data.Key) == searchKey then
            return name, data
        end
    end

    return nil, nil
end

local success, buyerList = loadBuyerList()

if not success then
    safeNotify("Error", "Please contact support at (dsc.gg/dyhub)", 7)
    twait(7)
    safeKick("❌ Failed to load Buyer list.\n⚠️ Please contact support at (dsc.gg/dyhub)")
    return
end

local playerName = player.Name or ""
local playerUserId = tostring(player.UserId or "")
local playerKey = getKey()

local buyerData = buyerList[playerName] or buyerList[playerUserId]
local keyOwnerName, keyOwnerData = findKeyOwner(buyerList, playerKey)

if buyerData then
    local realKey = trim(buyerData.Key)

    if playerKey ~= realKey then
        safeNotify("Invalid Key", "Your key is invalid, please check your key", 6)
        twait(6)
        safeKick("❌ Your key is invalid.\n💳 Please check your key at (dsc.gg/dyhub)")
        return
    end
elseif keyOwnerData then
    safeNotify("Access Denied", "The first Buyer must reset HWID before proceeding", 6)
    twait(6)
    safeKick("❌ The first Buyer must reset HWID before proceeding\n💳 Please reset the HWID at (dsc.gg/dyhub)")
    return
else
    safeNotify("Invalid Key", "Please purchase a Premium Key at (dsc.gg/dyhub)", 6)
    twait(6)
    safeKick("❌ Your key is invalid or missing.\n💳 Please purchase a Premium Key at (dsc.gg/dyhub)")
    return
end

local timeValue = buyerData.Time
local dayValue = tonumber(buyerData.Day) or 0

if timeValue == "Lifetime" or tonumber(timeValue) == -1 then
    timeValue = "999999999"
else
    timeValue = nil
end

if dayValue > 0 and timeValue ~= "999999999" then
    local now = os.time()

    local firstLogin =
        tonumber(buyerData.FirstLogin)
        or tonumber(buyerData.FirstLoginTime)
        or tonumber(ENV.BuyerFirstLoginTime)
        or now

    local expireTimestamp =
        tonumber(buyerData.ExpireAt)
        or tonumber(buyerData.ExpireTimestamp)
        or (firstLogin + dayValue * 24 * 60 * 60)

    if now > expireTimestamp then
        safeNotify("Subscription Expired", "Your subscription has expired.", 7)
        twait(7)
        safeKick("❌ Your subscription has expired.\n💳 Please renew at (dsc.gg/dyhub)")
        return
    end
end

ENV.UserTag = buyerData.Tag
ENV.ExpireTime = timeValue or dayValue
ENV.DYHUBKEY = playerKey
ENV.key = playerKey

_G.UserTag = buyerData.Tag
_G.ExpireTime = timeValue or dayValue
_G.DYHUBKEY = playerKey
_G.key = playerKey

local okMainHttp, mainCodeOrErr = httpGet(MAIN_SCRIPT_URL)

if not okMainHttp then
    safeNotify("Error", "Failed to load Premium Version", 7)
    twait(7)
    safeKick("❌ Failed to load Premium Version.\n⚠️ Please contact support at (dsc.gg/dyhub)")
    return
end

local okMainRun, mainErr = runCode(mainCodeOrErr, "Premium-Version")

if not okMainRun then
    safeNotify("Error", "Premium Version crashed", 7)
    twait(7)
    safeKick("❌ Premium Version crashed.\n⚠️ Error: " .. tostring(mainErr))
    return
end
