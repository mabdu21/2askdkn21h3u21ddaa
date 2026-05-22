--// CONFIG
local URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua"
}

local MAIN_SCRIPT = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Hagyqbqhjnbhajaj.lua"

--// SERVICES
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer

--// SAFE LOADSTRING
local LoadString = loadstring or load

if not LoadString then
    return warn("Executor doesn't support loadstring")
end

--// SAFE HTTP
local function HttpGet(url)
    local body

    -- game:HttpGet
    pcall(function()
        body = game:HttpGet(url)
    end)

    if type(body) == "string" and body ~= "" then
        return body
    end

    -- request
    local req =
        request or
        http_request or
        syn and syn.request or
        fluxus and fluxus.request

    if req then
        local s,r = pcall(function()
            return req({
                Url = url,
                Method = "GET"
            })
        end)

        if s and r and r.Body then
            return r.Body
        end
    end
end

--// KEY
local KEY = tostring(rawget(_G,"key") or key or ""):gsub("^%s+",""):gsub("%s+$","")

if KEY == "" then
    warn("No key detected")
    return
end

if KEY:lower() == "free" then
    warn("Free plan blocked")
    return
end

--// RETRY GET
local function Get(url,retry)
    retry = retry or 5

    for i = 1,retry do
        local data = HttpGet(url)

        if type(data) == "string" and data ~= "" then
            return data
        end

        task.wait(1)
    end
end

--// LOAD DATABASE
local DB
local USED_URL

for _,url in ipairs(URLS) do
    local data = Get(url,5)

    if data then
        local s,r = pcall(function()
            return LoadString(data)()
        end)

        if s and type(r) == "table" then
            DB = r
            USED_URL = url
            break
        else
            warn("Invalid DB :",url)
        end
    else
        warn("Failed URL :",url)
    end
end

if not DB then
    warn("Database unavailable")
    return
end

print("Loaded DB :",USED_URL)

--// FIND USER
local function FindUser()
    local names = {
        LP.Name,
        LP.Name:lower(),
        LP.DisplayName,
        LP.DisplayName:lower()
    }

    for user,data in pairs(DB) do
        local dbName = tostring(user)

        for _,v in ipairs(names) do
            if dbName == v or dbName:lower() == v then
                if type(data) == "table" then
                    return data
                end
            end
        end
    end
end

local UserData = FindUser()

if not UserData then
    warn("User not registered :",LP.Name)

    local count = 0
    for n in pairs(DB) do
        count += 1

        if count <= 5 then
            print("DB USER :",n)
        end
    end

    return
end

--// CHECK KEY
local ServerKey = tostring(UserData.Key or ""):gsub("^%s+",""):gsub("%s+$","")

if ServerKey == "" then
    warn("Missing server key")
    return
end

if ServerKey ~= KEY then
    warn("Wrong key")
    warn("INPUT :",KEY)
    warn("SERVER :",ServerKey)
    return
end

print("Authentication success :",LP.Name)

--// LOAD MAIN
local MainContent = Get(MAIN_SCRIPT,5)

if not MainContent then
    warn("Failed to download main script")
    return
end

local s,e = pcall(function()
    LoadString(MainContent)()
end)

if not s then
    warn("Main script error :",e)
    return
end

print("Script loaded successfully")
