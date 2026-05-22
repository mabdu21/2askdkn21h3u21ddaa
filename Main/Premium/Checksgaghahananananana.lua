--// CONFIG
local URLS = {
    "https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua"
}

--// SERVICES
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

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

--// HTTP
local function HttpGet(url)
    local body

    pcall(function()
        body = game:HttpGet(url)
    end)

    if type(body) == "string" and body ~= "" then
        return body
    end

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

Notify(
    "INITIALIZING",
    "Loading database...",
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
            break
        end
    end
end

if not DB then
    Notify(
        "ERROR",
        "Failed to load database.",
        8
    )
    return
end

--// FIND USER + COPY KEY
local function FindAndCopyKey()
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
                    local key = tostring(data.Key or "")

                    if key ~= "" then

                        -- COPY
                        pcall(function()
                            if setclipboard then
                                setclipboard(key)
                            elseif toclipboard then
                                toclipboard(key)
                            end
                        end)

                        Notify(
                            "KEY COPIED",
                            "Copied Key : "..key,
                            10
                        )

                        return key
                    end
                end
            end
        end
    end
end

local KEY = FindAndCopyKey()

if not KEY then
    Notify(
        "USER NOT FOUND",
        "No key detected for "..LP.Name,
        10
    )
end
