--// CONFIG : v021
local URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua",
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/STBBList.lua"
}

local MAIN_SCRIPT = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Ni.lua"

--// SERVICES
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer

--// KEY
local KEY = tostring(rawget(_G,"key") or key or ""):gsub("^%s+",""):gsub("%s+$","")

--// KICK
local function Kick(msg)
    warn("[AUTH]",msg)
    pcall(function()
        LP:Kick(msg)
    end)
end

--// BASIC CHECK
if KEY == "" then
    return Kick("Authentication failed : No key provided.")
end

if KEY:lower() == "free" then
    return Kick("Authentication failed : Invalid plan.")
end

--// HTTP GET
local function Get(url,retry)
    retry = retry or 3

    for i=1,retry do
        local s,r = pcall(function()
            return game:HttpGet(url)
        end)

        if s and type(r) == "string" and r ~= "" then
            return r
        end

        task.wait(0.75)
    end
end

--// LOAD DATABASE
local DB
local USED_URL

for _,url in ipairs(URLS) do
    local data = Get(url,5)

    if data then
        local s,r = pcall(function()
            return loadstring(data)()
        end)

        if s and type(r) == "table" then
            DB = r
            USED_URL = url
            break
        else
            warn("[AUTH] Invalid database :",url)
        end
    else
        warn("[AUTH] Failed :",url)
    end
end

if not DB then
    return Kick("Authentication server unavailable.")
end

print("[AUTH] Loaded DB from :",USED_URL)

--// FIND USER
local function FindUser()
    local names = {
        LP.Name,
        LP.Name:lower(),
        LP.DisplayName,
        LP.DisplayName:lower()
    }

    for user,data in pairs(DB) do
        local n = tostring(user)

        for _,v in ipairs(names) do
            if n == v or n:lower() == v then
                if type(data) == "table" then
                    return data
                end
            end
        end
    end
end

local UserData = FindUser()

if not UserData then
    warn("[AUTH] User not found :",LP.Name)

    -- debug names
    local count = 0
    for n in pairs(DB) do
        count += 1
        if count <= 5 then
            print("[DB USER]",n)
        end
    end

    return Kick("Authentication failed : User not registered.")
end

--// KEY CHECK
local ServerKey = tostring(UserData.Key or ""):gsub("^%s+",""):gsub("%s+$","")

if ServerKey == "" then
    return Kick("Authentication failed : Missing server key.")
end

if ServerKey ~= KEY then
    warn("[AUTH] Wrong Key")
    warn("INPUT :",KEY)
    warn("SERVER :",ServerKey)

    return Kick("Authentication failed : Invalid key.")
end

print("[AUTH] Success :",LP.Name)

--// LOAD MAIN
local MainContent = Get(MAIN_SCRIPT,5)

if not MainContent then
    return Kick("Failed to download main script.")
end

local s,e = pcall(function()
    loadstring(MainContent)()
end)

if not s then
    warn("[MAIN ERROR]",e)
    return Kick("Main script execution failed.")
end
