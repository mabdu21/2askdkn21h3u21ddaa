--// CONFIG v25
local URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/STBBList.lua"
}

local MAIN_SCRIPT = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Paid.lua"

--// SERVICES
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer

--// SAFE LOADSTRING
local LoadString = loadstring or load

if not LoadString then
    return
end

--// NOTIFY
local function Notify(title,text,duration)
    pcall(function()
        StarterGui:SetCore("SendNotification",{
            Title = title or "SYSTEM",
            Text = text or "",
            Duration = duration or 5
        })
    end)
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
    Notify(
        "AUTHENTICATION FAILED",
        "No key detected.",
        8
    )
    return
end

if KEY:lower() == "free" then
    Notify(
        "ACCESS DENIED",
        "Free plan is not allowed.",
        8
    )
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

Notify(
    "INITIALIZING",
    "Connecting to authentication server...",
    5
)

for _,url in ipairs(URLS) do
    local data = Get(url,5)

    if data then
        local s,r = pcall(function()
            return LoadString(data)()
        end)

        if s and type(r) == "table" then
            DB = r
            USED_URL = url

            Notify(
                "DATABASE CONNECTED",
                "DYHUB database loaded successfully.",
                5
            )

            break
        else
            Notify(
                "DATABASE ERROR",
                "Invalid database structure detected.",
                8
            )
        end
    else
        Notify(
            "CONNECTION FAILED",
            "Unable to fetch authentication database.",
            8
        )
    end
end

if not DB then
    Notify(
        "FATAL ERROR",
        "Authentication database unavailable.",
        10
    )
    return
end

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
    Notify(
        "USER NOT REGISTERED",
        "Username : "..LP.Name,
        10
    )

    return
end

--// CHECK KEY
local ServerKey = tostring(UserData.Key or ""):gsub("^%s+",""):gsub("%s+$","")

if ServerKey == "" then
    Notify(
        "AUTHENTICATION ERROR",
        "Server key missing.",
        8
    )
    return
end

if ServerKey ~= KEY then
    Notify(
        "WRONG KEY",
        "Your Key : "..KEY,
        10
    )

    return
end

Notify(
    "AUTHENTICATION SUCCESS",
    "Welcome "..LP.Name..
    "\nKey : "..KEY,
    10
)

--// LOAD MAIN
Notify(
    "LOADING",
    "Downloading main script...",
    5
)

local MainContent = Get(MAIN_SCRIPT,5)

if not MainContent then
    Notify(
        "DOWNLOAD FAILED",
        "Unable to download main script.",
        8
    )
    return
end

local s,e = pcall(function()
    LoadString(MainContent)()
end)

if not s then
    Notify(
        "RUNTIME ERROR",
        "Main script execution failed.",
        10
    )

    return
end

Notify(
    "SCRIPT LOADED",
    "Premium script loaded successfully.",
    8
)
