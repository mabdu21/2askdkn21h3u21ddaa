--																								   	[[

		██████╗ ██╗   ██╗██╗   ██╗███╗   ███╗██████╗  █████╗  TM
		██╔══██╗╚██╗ ██╔╝██║   ██║████╗ ████║██╔══██╗██╔══██╗
		██║  ██║ ╚████╔╝ ██║   ██║██╔████╔██║██████╔╝███████║
		██║  ██║  ╚██╔╝  ██║   ██║██║╚██╔╝██║██╔══██╗██╔══██║
		██████╔╝   ██║   ╚██████╔╝██║ ╚═╝ ██║██║  ██║██║  ██║
		╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝                                                 
                   dyumra.gg | owner & founder

--																									]]
if getgenv().DYHUB_Loader then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "DYHUB",
            Text = "Script already running. \nPlease rejoin to execute again.",
            Duration = 5
        })
    end)
    return
end
getgenv().DYHUB_Loader = true

repeat task.wait() until game:IsLoaded()

getgenv().owners = {"Yolmar_43", "55555555555555555455", "Kazorebere231"}

local prefix = "."
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local localPlayer = Players.LocalPlayer

local activeLoops = {}

-- ========== Helper ==========
local function starts_with(str, start)
    return string.lower(str):sub(1, #start) == string.lower(start)
end

local function findPlayersByName(query)
    local t = {}
    if not query or query == "" then return t end
    query = string.lower(query)

    if query == "all" then
        return Players:GetPlayers()
    elseif query == "random" or query == "r" then
        local all = Players:GetPlayers()
        if #all > 0 then
            return { all[math.random(1, #all)] }
        end
        return t
    elseif query == "me" or query == "self" then
        return { localPlayer }
    elseif query == "others" then
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= localPlayer then table.insert(t, p) end
        end
        return t
    else
        for _, p in ipairs(Players:GetPlayers()) do
            if starts_with(p.Name, query) then
                table.insert(t, p)
            end
        end
        if #t == 0 then
            for _, p in ipairs(Players:GetPlayers()) do
                if string.find(string.lower(p.Name), query, 1, true) then
                    table.insert(t, p)
                end
            end
        end
        return t
    end
end

local function isOwner(player)
    for _, name in ipairs(getgenv().owners) do
        if string.lower(player.Name) == string.lower(name) then
            return true
        end
    end
    return false
end

-- ========== Remote Setup ==========
local RemoteName = "OwnerCommandRemote"

local function getOrCreateRemote(rname)
    local remote = game.ReplicatedStorage:FindFirstChild(rname)
    if not remote then
        remote = Instance.new("RemoteEvent")
        remote.Name = rname
        remote.Parent = game.ReplicatedStorage
    end
    return remote
end

local function getOrCreateFunc(rname)
    local remote = game.ReplicatedStorage:FindFirstChild(rname)
    if not remote then
        remote = Instance.new("RemoteFunction")
        remote.Name = rname
        remote.Parent = game.ReplicatedStorage
    end
    return remote
end

local senderRemote   = getOrCreateRemote(RemoteName)
local receiverRemote = getOrCreateRemote(RemoteName .. "_Receiver")
local jobIdSender    = getOrCreateFunc("JobIdSender")
local jobIdReceiver  = getOrCreateFunc("JobIdReceiver")
local serverInfoSender  = getOrCreateFunc("ServerInfoSender")
local serverInfoReceiver = getOrCreateFunc("ServerInfoReceiver")

-- ฝั่งเพื่อน: ตอบ JobId เมื่อ owner ขอ
jobIdReceiver.OnServerInvoke = function(requestingPlayer)
    if requestingPlayer == localPlayer then return nil end
    return {
        GameId = game.PlaceId,
        JobId  = game.JobId
    }
end

-- ฝั่งเพื่อน: ตอบข้อมูลเซิร์ฟ (GameId, JobId, Players)
serverInfoReceiver.OnServerInvoke = function(requestingPlayer)
    if requestingPlayer == localPlayer then return nil end
    local playerList = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(playerList, p.Name)
    end
    return {
        GameId  = game.PlaceId,
        JobId   = game.JobId,
        Players = playerList
    }
end

-- ========== ฝั่งรับคำสั่ง (เพื่อน) ==========
receiverRemote.OnClientEvent:Connect(function(cmd, arg1, arg2, arg3)
    local targets = { localPlayer }
    local ownerChar = localPlayer.Character

    if     cmd == "bring"      then bring(ownerChar, targets)
    elseif cmd == "kick"       then kick(targets, arg2)
    elseif cmd == "freeze"     then freeze(targets)
    elseif cmd == "unfreeze"   then unfreeze(targets)
    elseif cmd == "kill"       then kill(targets)
    elseif cmd == "sit"        then sit(targets)
    elseif cmd == "void"       then void(targets)
    elseif cmd == "spin"       then spin(targets, tonumber(arg2))
    elseif cmd == "stopspin"   then activeLoops["spin_"..localPlayer.Name] = nil
    elseif cmd == "float"      then floatPlayer(targets)
    elseif cmd == "headbig"    then headBig(targets)
    elseif cmd == "bighead"    then bigHead(targets)
    elseif cmd == "tiny"       then tinyPlayer(targets)
    elseif cmd == "explode"    then explodePlayer(targets)
    elseif cmd == "ghost"      then ghostPlayer(targets)
    elseif cmd == "fling"      then flingPlayer(targets)
    elseif cmd == "launch"     then launchPlayer(targets)
    elseif cmd == "randomtp"   then randomTeleport(targets)
    elseif cmd == "invert"     then invertPlayer(targets)
    elseif cmd == "invisible"  then invisiblePlayer(targets)
    elseif cmd == "visible"    then visiblePlayer(targets)
    elseif cmd == "fire"       then fireEffect(targets)
    elseif cmd == "nofire"     then noFireEffect(targets)
    elseif cmd == "ice"        then iceEffect(targets)
    elseif cmd == "clonearmy"  then cloneArmy(targets)
    elseif cmd == "removeclones" then removeClones(targets)
    elseif cmd == "spinmyself" then spinMyself(ownerChar, targets, tonumber(arg2))
    elseif cmd == "stopspinmyself" then activeLoops["spinMyself_"..localPlayer.Name] = nil
    -- คำสั่งใหม่
    elseif cmd == "jumpscare"  then jumpscare(targets, arg2)
    elseif cmd == "gravity"    then changeGravity(targets, tonumber(arg2))
    elseif cmd == "restoregravity" then restoreGravity()
    elseif cmd == "nohand"     then noHand(targets)
    elseif cmd == "annoy"      then annoy(targets, tonumber(arg2))
    elseif cmd == "backflip"   then backflip(targets, tonumber(arg2))
    elseif cmd == "stopbackflip" then activeLoops["backflip_"..localPlayer.Name] = nil
    elseif cmd == "trail"      then addTrail(targets, arg2)
    elseif cmd == "removetrail" then removeTrail(targets)
    elseif cmd == "particles"  then addParticles(targets, arg2)
    elseif cmd == "removeparticles" then removeParticles(targets)
    elseif cmd == "music"      then playMusic(targets, arg2)
    elseif cmd == "stopmusic"  then stopMusic(targets)
    elseif cmd == "chat"       then forceChat(targets, arg2)
    elseif cmd == "crash"      then crashPlayer(targets, tonumber(arg2))
    elseif cmd == "control"    then controlPlayer(targets)
    elseif cmd == "uncontrol"  then activeLoops["control_"..localPlayer.Name] = nil
    elseif cmd == "shake"      then shakeScreen(targets, tonumber(arg2))
    elseif cmd == "stopshake"  then activeLoops["shake_"..localPlayer.Name] = nil
    elseif cmd == "skybox"     then changeSkybox(targets, arg2)
    elseif cmd == "restoresky" then restoreSkybox()
    elseif cmd == "walkspeed"  then changeWalkSpeed(targets, tonumber(arg2))
    elseif cmd == "jumppower"  then changeJumpPower(targets, tonumber(arg2))
    elseif cmd == "resize"     then resizePlayer(targets, tonumber(arg2))
    elseif cmd == "resizehead" then resizeHead(targets, tonumber(arg2))
    elseif cmd == "flinghigh"  then flingHigh(targets, tonumber(arg2))
    elseif cmd == "bounce"     then bouncePlayer(targets, tonumber(arg2))
    elseif cmd == "stopbounce" then activeLoops["bounce_"..localPlayer.Name] = nil
    elseif cmd == "rain"       then rainParts(targets, arg2)
    elseif cmd == "blackhole"  then blackHole(targets, tonumber(arg2))
    elseif cmd == "stopblackhole" then activeLoops["blackhole_"..localPlayer.Name] = nil
    elseif cmd == "disco"      then discoMode(targets, tonumber(arg2))
    elseif cmd == "stopdisco"  then activeLoops["disco_"..localPlayer.Name] = nil
    elseif cmd == "earthquake" then earthquake(targets, tonumber(arg2))
    elseif cmd == "stopeq"     then activeLoops["earthquake_"..localPlayer.Name] = nil
    elseif cmd == "lag"        then lagPlayer(targets, tonumber(arg2))
    elseif cmd == "tpback"     then tpBack(localPlayer)
    elseif cmd == "fakeerror"  then fakeError(targets)
    elseif cmd == "rejoin"     then rejoinPlayer(targets)
    elseif cmd == "fakemessage" then fakeMessage(targets, arg2)
    elseif cmd == "dizzy"      then dizzy(targets, tonumber(arg2))
    elseif cmd == "stopdizzy"  then activeLoops["dizzy_"..localPlayer.Name] = nil
    elseif cmd == "nuke"       then nuke(targets)
    elseif cmd == "rocket"     then rocketPlayer(targets)
    elseif cmd == "flash"      then flashScreen(targets, tonumber(arg2))
    end
end)

-- ========== ฝั่งส่งคำสั่ง (owner) ==========
local function handleCommand(msg)
    if not isOwner(localPlayer) then return end

    local parts = string.split(msg, " ")
    local cmd   = string.lower(parts[1] or "")
    local arg1  = parts[2]
    local arg2  = table.concat(parts, " ", 3) -- เก็บข้อความยาวๆ สำหรับ chat/music

    -- ========== .jq (Teleport ไปเซิร์ฟเพื่อน) ==========
    if cmd == prefix.."jq" then
        local targetQuery = arg1

        -- ถ้าไม่ใส่ชื่อ -> random
        if not targetQuery or targetQuery == "" or targetQuery == "random" or targetQuery == "r" then
            -- ขอข้อมูลจากทุกคนในเกม
            local serverList = {}
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= localPlayer then
                    local ok, info = pcall(function()
                        return serverInfoSender:InvokeServer(p)
                    end)
                    if ok and info then
                        table.insert(serverList, {player = p, info = info})
                    end
                end
            end

            if #serverList == 0 then
                warn("[JQ] No target are running the script in this place.")
                return
            end

            -- เลือก random
            local pick = serverList[math.random(1, #serverList)]
            local ok, err = pcall(function()
                TeleportService:TeleportToPlaceInstance(
                    pick.info.GameId,
                    pick.info.JobId,
                    localPlayer
                )
            end)
            if ok then
                print("[JQ] Teleporting to " .. pick.player.Name .. "'s server...")
            else
                warn("[JQ] Failed: " .. tostring(err))
            end
            return
        end

        -- ถ้าใส่ชื่อ
        local targetPlayer = nil
        for _, p in ipairs(Players:GetPlayers()) do
            if starts_with(p.Name, targetQuery) or string.find(string.lower(p.Name), string.lower(targetQuery), 1, true) then
                targetPlayer = p
                break
            end
        end

        if not targetPlayer then
            warn("[JQ] Player not found: " .. tostring(targetQuery))
            return
        end

        local ok, result = pcall(function()
            return jobIdSender:InvokeServer(targetPlayer)
        end)

        if ok and result then
            local ok2, err = pcall(function()
                TeleportService:TeleportToPlaceInstance(
                    result.GameId,
                    result.JobId,
                    localPlayer
                )
            end)
            if ok2 then
                print("[JQ] Teleporting to " .. targetPlayer.Name .. "'s server...")
            else
                warn("[JQ] Failed: " .. tostring(err))
            end
        else
            warn("[JQ] Cannot get server")
        end
        return
    end

    -- ========== .help ==========
    if cmd == prefix.."help" then
        print("========================================")
        print("       OWNER COMMAND HELP")
        print("========================================")
        print("[CMD]  1 | .bring <name/all/random>            - ดึงเพื่อนมาหาฉัน")
        print("[CMD]  2 | .kick <name/all/random> [reason]     - เตะเพื่อนออก")
        print("[CMD]  3 | .freeze <name/all/random>           - แช่แข็ง")
        print("[CMD]  4 | .unfreeze <name/all/random>         - ปลดแช่แข็ง")
        print("[CMD]  5 | .kill <name/all/random>             - ฆ่า")
        print("[CMD]  6 | .sit <name/all/random>              - นั่ง")
        print("[CMD]  7 | .void <name/all/random>             - ทิ้งลงเหว")
        print("[CMD]  8 | .spin <name/all/random> [speed]     - หมุนตัว")
        print("[CMD]  9 | .stopspin <name/all/random>         - หยุดหมุน")
        print("[CMD] 10 | .float <name/all/random>            - ลอยขึ้น")
        print("[CMD] 11 | .headbig <name/all/random>          - หัวใหญ่")
        print("[CMD] 12 | .bighead <name/all/random>          - หัวใหญ่มาก")
        print("[CMD] 13 | .tiny <name/all/random>             - ตัวเล็ก")
        print("[CMD] 14 | .explode <name/all/random>          - ระเบิด")
        print("[CMD] 15 | .ghost <name/all/random>            - กลายเป็นผี")
        print("[CMD] 16 | .fling <name/all/random>            - เหวี่ยง")
        print("[CMD] 17 | .launch <name/all/random>           - ยิงขึ้นฟ้า")
        print("[CMD] 18 | .flinghigh <name/all> [power]       - เหวี่ยงแรงสุดๆ")
        print("[CMD] 19 | .randomtp <name/all/random>         - สุ่มวาร์ป")
        print("[CMD] 20 | .invert <name/all/random>           - กลับหัว")
        print("[CMD] 21 | .invisible <name/all/random>        - ล่องหน")
        print("[CMD] 22 | .visible <name/all/random>          - กลับมาเห็นได้")
        print("[CMD] 23 | .fire <name/all/random>             - จุดไฟ")
        print("[CMD] 24 | .nofire <name/all/random>           - ดับไฟ")
        print("[CMD] 25 | .ice <name/all/random>              - น้ำแข็ง + แช่แข็ง")
        print("[CMD] 26 | .clonearmy <name/all/random>        - โคลน 10 ตัว")
        print("[CMD] 27 | .removeclones <name/all/random>     - ลบโคลน")
        print("[CMD] 28 | .spinmyself <name/all> [speed]      - หมุนรอบฉัน")
        print("[CMD] 29 | .stopspinmyself <name/all>          - หยุด")
        print("[CMD] 30 | .jumpscare <name/all>               - เด้งผีหลอก")
        print("[CMD] 31 | .gravity <name/all> [value]         - เปลี่ยนแรงโน้มถ่วง")
        print("[CMD] 32 | .restoregravity                     - คืนค่าแรงโน้มถ่วง")
        print("[CMD] 33 | .nohand <name/all/random>           - ลบมือ + อาวุธ")
        print("[CMD] 34 | .annoy <name/all/random> [times]    - เจ็บเรื่อยๆ")
        print("[CMD] 35 | .backflip <name/all> [speed]        - หมุนหลัง")
        print("[CMD] 36 | .stopbackflip <name/all>            - หยุด backflip")
        print("[CMD] 37 | .trail <name/all> <color>           - ใส่ trail (red/blue/yellow)")
        print("[CMD] 38 | .removetrail <name/all>             - ลบ trail")
        print("[CMD] 39 | .particles <name/all>               - ใส่ particle")
        print("[CMD] 40 | .removeparticles <name/all>         - ลบ particle")
        print("[CMD] 41 | .music <name/all> [soundid]         - เล่นเพลง")
        print("[CMD] 42 | .stopmusic <name/all>               - หยุดเพลง")
        print("[CMD] 43 | .chat <name/all> <message>          - บังคับพูด")
        print("[CMD] 44 | .crash <name/all> [level]           - ทำให้ค้าง/หลุด")
        print("[CMD] 45 | .control <name/all>                 - ควบคุมตัวละคร")
        print("[CMD] 46 | .uncontrol <name/all>               - ปลดควบคุม")
        print("[CMD] 47 | .shake <name/all> [power]           - สั่นหน้าจอ")
        print("[CMD] 48 | .stopshake <name/all>               - หยุดสั่น")
        print("[CMD] 49 | .skybox <name/all> [id]             - เปลี่ยนท้องฟ้า")
        print("[CMD] 50 | .restoresky                         - คืนค่าท้องฟ้า")
        print("[CMD] 51 | .walkspeed <name/all> [speed]       - เปลี่ยนความเร็วเดิน")
        print("[CMD] 52 | .jumppower <name/all> [power]       - เปลี่ยนพลังกระโดด")
        print("[CMD] 53 | .resize <name/all> [scale]          - ย่อ/ขยายตัว")
        print("[CMD] 54 | .resizehead <name/all> [size]       - ย่อ/ขยายหัว")
        print("[CMD] 55 | .bounce <name/all> [power]          - เด้งไม่หยุด")
        print("[CMD] 56 | .stopbounce <name/all>              - หยุดเด้ง")
        print("[CMD] 57 | .rain <name/all> <type>             - ฝนตก (fire/ice/rock)")
        print("[CMD] 58 | .blackhole <name/all> [power]       - หลุมดำ")
        print("[CMD] 59 | .stopblackhole <name/all>           - หยุด")
        print("[CMD] 60 | .disco <name/all> [speed]           - ไฟดิสโก้")
        print("[CMD] 61 | .stopdisco <name/all>               - หยุดดิสโก้")
        print("[CMD] 62 | .earthquake <name/all> [power]      - แผ่นดินไหว")
        print("[CMD] 63 | .stopeq <name/all>                  - หยุดแผ่นดินไหว")
        print("[CMD] 64 | .lag <name/all> [level]             - ทำให้ lag")
        print("[CMD] 65 | .tpback <name/all>                  - กลับจุดเดิม")
        print("[CMD] 66 | .fakeerror <name/all>               - แกล้ง error")
        print("[CMD] 67 | .rejoin <name/all>                  - บังคับรีโจน")
        print("[CMD] 68 | .fakemessage <name/all> <msg>       - แกล้งข้อความ")
        print("[CMD] 69 | .dizzy <name/all> [power]           - เวียนหัว")
        print("[CMD] 70 | .stopdizzy <name/all>               - หยุดเวียนหัว")
        print("[CMD] 71 | .nuke <name/all>                    - ระเบิดนิวเคลียร์")
        print("[CMD] 72 | .rocket <name/all>                  - ยิงจรวด")
        print("[CMD] 73 | .flash <name/all> [power]           - แสงแฟลช")
        print("[CMD] 74 | .jq <name/random>                   - ไปเซิร์ฟเพื่อน")
        print("[CMD] 75 | .help                               - แสดงคำสั่งทั้งหมด")
        print("========================================")
		print("Note: <name> can use abbreviations, e.g., .kill Ro = .kill Roblox")
        print("Special commands: all = everyone, random/r = random 1 person, me = yourself")
        return
    end

    -- ========== คำสั่งอื่นๆ ==========
    local pureCmd = string.sub(cmd, #prefix + 1)
    local ownerChar = localPlayer.Character
    local targets   = arg1 and findPlayersByName(arg1) or {}

    -- คำสั่งที่ไม่ต้องมี target
    local noTargetCmds = {
        restoregravity = true,
        restoresky     = true
    }

    if noTargetCmds[pureCmd] then
        -- รัน local
        if     pureCmd == "restoregravity" then restoreGravity()
        elseif pureCmd == "restoresky"     then restoreSkybox()
        end
        -- ส่งให้เพื่อนทุกคน
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= localPlayer then
                senderRemote:FireClient(plr, pureCmd, arg1, arg2)
            end
        end
        return
    end

    if #targets == 0 then
        warn("[CMD] Can't find the target: " .. tostring(arg1))
        return
    end

    local function runLocal()
        if     pureCmd == "bring"     then bring(ownerChar, targets)
        elseif pureCmd == "kick"      then kick(targets, arg2)
        elseif pureCmd == "freeze"    then freeze(targets)
        elseif pureCmd == "unfreeze"  then unfreeze(targets)
        elseif pureCmd == "kill"      then kill(targets)
        elseif pureCmd == "sit"       then sit(targets)
        elseif pureCmd == "void"      then void(targets)
        elseif pureCmd == "spin"      then spin(targets, tonumber(arg2))
        elseif pureCmd == "stopspin"  then
            for _, plr in ipairs(targets) do activeLoops["spin_"..plr.Name] = nil end
        elseif pureCmd == "float"     then floatPlayer(targets)
        elseif pureCmd == "headbig"   then headBig(targets)
        elseif pureCmd == "bighead"   then bigHead(targets)
        elseif pureCmd == "tiny"      then tinyPlayer(targets)
        elseif pureCmd == "explode"   then explodePlayer(targets)
        elseif pureCmd == "ghost"     then ghostPlayer(targets)
        elseif pureCmd == "fling"     then flingPlayer(targets)
        elseif pureCmd == "launch"    then launchPlayer(targets)
        elseif pureCmd == "flinghigh" then flingHigh(targets, tonumber(arg2))
        elseif pureCmd == "randomtp"  then randomTeleport(targets)
        elseif pureCmd == "invert"    then invertPlayer(targets)
        elseif pureCmd == "invisible" then invisiblePlayer(targets)
        elseif pureCmd == "visible"   then visiblePlayer(targets)
        elseif pureCmd == "fire"      then fireEffect(targets)
        elseif pureCmd == "nofire"    then noFireEffect(targets)
        elseif pureCmd == "ice"       then iceEffect(targets)
        elseif pureCmd == "clonearmy" then cloneArmy(targets)
        elseif pureCmd == "removeclones" then removeClones(targets)
        elseif pureCmd == "spinmyself" then spinMyself(ownerChar, targets, tonumber(arg2))
        elseif pureCmd == "stopspinmyself" then
            for _, plr in ipairs(targets) do activeLoops["spinMyself_"..plr.Name] = nil end
        elseif pureCmd == "jumpscare"  then jumpscare(targets, arg2)
        elseif pureCmd == "gravity"    then changeGravity(targets, tonumber(arg2))
        elseif pureCmd == "nohand"     then noHand(targets)
        elseif pureCmd == "annoy"      then annoy(targets, tonumber(arg2))
        elseif pureCmd == "backflip"   then backflip(targets, tonumber(arg2))
        elseif pureCmd == "stopbackflip" then
            for _, plr in ipairs(targets) do activeLoops["backflip_"..plr.Name] = nil end
        elseif pureCmd == "trail"      then addTrail(targets, arg2)
        elseif pureCmd == "removetrail" then removeTrail(targets)
        elseif pureCmd == "particles"  then addParticles(targets, arg2)
        elseif pureCmd == "removeparticles" then removeParticles(targets)
        elseif pureCmd == "music"      then playMusic(targets, arg2)
        elseif pureCmd == "stopmusic"  then stopMusic(targets)
        elseif pureCmd == "chat"       then forceChat(targets, arg2)
        elseif pureCmd == "crash"      then crashPlayer(targets, tonumber(arg2))
        elseif pureCmd == "control"    then controlPlayer(targets)
        elseif pureCmd == "uncontrol"  then
            for _, plr in ipairs(targets) do activeLoops["control_"..plr.Name] = nil end
        elseif pureCmd == "shake"      then shakeScreen(targets, tonumber(arg2))
        elseif pureCmd == "stopshake"  then
            for _, plr in ipairs(targets) do activeLoops["shake_"..plr.Name] = nil end
        elseif pureCmd == "skybox"     then changeSkybox(targets, arg2)
        elseif pureCmd == "walkspeed"  then changeWalkSpeed(targets, tonumber(arg2))
        elseif pureCmd == "jumppower"  then changeJumpPower(targets, tonumber(arg2))
        elseif pureCmd == "resize"     then resizePlayer(targets, tonumber(arg2))
        elseif pureCmd == "resizehead" then resizeHead(targets, tonumber(arg2))
        elseif pureCmd == "bounce"     then bouncePlayer(targets, tonumber(arg2))
        elseif pureCmd == "stopbounce" then
            for _, plr in ipairs(targets) do activeLoops["bounce_"..plr.Name] = nil end
        elseif pureCmd == "rain"       then rainParts(targets, arg2)
        elseif pureCmd == "blackhole"  then blackHole(targets, tonumber(arg2))
        elseif pureCmd == "stopblackhole" then
            for _, plr in ipairs(targets) do activeLoops["blackhole_"..plr.Name] = nil end
        elseif pureCmd == "disco"      then discoMode(targets, tonumber(arg2))
        elseif pureCmd == "stopdisco"  then
            for _, plr in ipairs(targets) do activeLoops["disco_"..plr.Name] = nil end
        elseif pureCmd == "earthquake" then earthquake(targets, tonumber(arg2))
        elseif pureCmd == "stopeq"     then
            for _, plr in ipairs(targets) do activeLoops["earthquake_"..plr.Name] = nil end
        elseif pureCmd == "lag"        then lagPlayer(targets, tonumber(arg2))
        elseif pureCmd == "tpback"     then tpBack(targets[1])
        elseif pureCmd == "fakeerror"  then fakeError(targets)
        elseif pureCmd == "rejoin"     then rejoinPlayer(targets)
        elseif pureCmd == "fakemessage" then fakeMessage(targets, arg2)
        elseif pureCmd == "dizzy"      then dizzy(targets, tonumber(arg2))
        elseif pureCmd == "stopdizzy"  then
            for _, plr in ipairs(targets) do activeLoops["dizzy_"..plr.Name] = nil end
        elseif pureCmd == "nuke"       then nuke(targets)
        elseif pureCmd == "rocket"     then rocketPlayer(targets)
        elseif pureCmd == "flash"      then flashScreen(targets, tonumber(arg2))
        end
    end

    local hasSelf = false
    for _, plr in ipairs(targets) do
        if plr == localPlayer then hasSelf = true; break end
    end
    if hasSelf then runLocal() end

    for _, plr in ipairs(targets) do
        if plr ~= localPlayer then
            senderRemote:FireClient(plr, pureCmd, arg1, arg2)
        end
    end
end

localPlayer.Chatted:Connect(handleCommand)

-- ============================================================
-- COMMAND FUNCTIONS
-- ============================================================

local savedPositions = {} -- เก็บตำแหน่งเดิมสำหรับ tpback

local function bring(ownerChar, targets)
    if not ownerChar or not ownerChar.PrimaryPart then return end
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(ownerChar.PrimaryPart.CFrame * CFrame.new(0, 5, 0))
        end
    end
end

local function kick(targets, reason)
    for _, plr in ipairs(targets) do
        pcall(function() plr:Kick(reason or "Kicked by owner") end)
    end
end

local function freeze(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = 0; hum.JumpPower = 0 end
            plr.Character.PrimaryPart.Anchored = true
        end
    end
end

local function unfreeze(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = 16; hum.JumpPower = 50 end
            plr.Character.PrimaryPart.Anchored = false
        end
    end
end

local function kill(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.Health = 0 end
        end
    end
end

local function sit(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.Sit = true end
        end
    end
end

local function void(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(CFrame.new(0, -999999, 0))
        end
    end
end

local function spin(targets, speed)
    for _, plr in ipairs(targets) do
        local id = "spin_"..plr.Name
        activeLoops[id] = true
        spawn(function()
            while activeLoops[id] do
                if not plr.Character or not plr.Character.PrimaryPart then break end
                plr.Character:SetPrimaryPartCFrame(
                    plr.Character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(speed or 10), 0)
                )
                task.wait(0.05)
            end
        end)
    end
end

local function floatPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character.PrimaryPart.Anchored = true
            plr.Character:SetPrimaryPartCFrame(
                plr.Character.PrimaryPart.CFrame + Vector3.new(0, 10, 0)
            )
        end
    end
end

local function headBig(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            plr.Character.Head.Size = Vector3.new(8, 8, 8)
        end
    end
end

local function bigHead(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            plr.Character.Head.Size = Vector3.new(15, 15, 15)
        end
    end
end

local function tinyPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") then part.Size = part.Size * 0.5 end
            end
        end
    end
end

local function explodePlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local e = Instance.new("Explosion", workspace)
            e.Position = plr.Character.PrimaryPart.Position
            plr.Character:BreakJoints()
        end
    end
end

local function ghostPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") then part.Transparency = 0.5 end
            end
        end
    end
end

local function visiblePlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.Transparency = 0
                end
            end
        end
    end
end

local function flingPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                local bodyVel = Instance.new("BodyAngularVelocity")
                bodyVel.AngularVelocity = Vector3.new(0, 5000, 0)
                bodyVel.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
                bodyVel.Parent = plr.Character.PrimaryPart
                task.wait(3)
                bodyVel:Destroy()
            end)
        end
    end
end

local function flingHigh(targets, power)
    power = power or 1000
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                local bv = Instance.new("BodyVelocity")
                bv.Velocity = Vector3.new(
                    math.random(-power, power),
                    power,
                    math.random(-power, power)
                )
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.Parent = plr.Character.PrimaryPart
                task.wait(2)
                bv:Destroy()
            end)
        end
    end
end

local function launchPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                local bv = Instance.new("BodyVelocity")
                bv.Velocity = Vector3.new(0, 200, 0)
                bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
                bv.Parent = plr.Character.PrimaryPart
                task.wait(1)
                bv:Destroy()
            end)
        end
    end
end

local function randomTeleport(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(
                CFrame.new(math.random(-500, 500), 50, math.random(-500, 500))
            )
        end
    end
end

local function invertPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            plr.Character:SetPrimaryPartCFrame(
                plr.Character.PrimaryPart.CFrame * CFrame.Angles(math.rad(180), 0, 0)
            )
        end
    end
end

local function invisiblePlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.Transparency = 1
                end
            end
        end
    end
end

local function fireEffect(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            for _, f in ipairs(plr.Character.PrimaryPart:GetChildren()) do
                if f:IsA("Fire") then f:Destroy() end
            end
            local fire = Instance.new("Fire", plr.Character.PrimaryPart)
            fire.Size = 20
        end
    end
end

local function noFireEffect(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            for _, f in ipairs(plr.Character.PrimaryPart:GetChildren()) do
                if f:IsA("Fire") then f:Destroy() end
            end
        end
    end
end

local function iceEffect(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local particle = Instance.new("ParticleEmitter", plr.Character.PrimaryPart)
            particle.Texture = "rbxassetid://241594186"
            particle.Rate = 50
            particle.Lifetime = NumberRange.new(1)
            freeze({plr})
        end
    end
end

local function cloneArmy(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for i = 1, 10 do
                local clone = plr.Character:Clone()
                clone.Parent = workspace
                clone:SetPrimaryPartCFrame(
                    plr.Character.PrimaryPart.CFrame * CFrame.new(math.random(-5,5), 0, math.random(-5,5))
                )
            end
        end
    end
end

local function removeClones(targets)
    for _, obj in ipairs(workspace:GetChildren()) do
        if obj:IsA("Model") and not Players:GetPlayerFromCharacter(obj) then
            obj:Destroy()
        end
    end
end

local function spinMyself(ownerChar, targets, speed)
    if not ownerChar or not ownerChar.PrimaryPart then return end
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            freeze({plr})
            local id = "spinMyself_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] and plr.Character and plr.Character.PrimaryPart do
                    local angle = tick() * (tonumber(speed) or 5)
                    local radius = 10
                    local newPos = ownerChar.PrimaryPart.Position
                        + Vector3.new(math.cos(angle) * radius, 3, math.sin(angle) * radius)
                    plr.Character:SetPrimaryPartCFrame(CFrame.new(newPos, ownerChar.PrimaryPart.Position))
                    task.wait(0.03)
                end
            end)
        end
    end
end

-- ============ NEW COMMANDS ============

local function jumpscare(targets, assetId)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            local dummy = Instance.new("Part")
            dummy.Anchored = true
            dummy.CanCollide = false
            dummy.Size = Vector3.new(2, 2, 2)
            dummy.Parent = workspace
            dummy.CFrame = plr.Character.Head.CFrame * CFrame.new(0, 0, -3)

            local face = Instance.new("Decal")
            face.Face = Enum.NormalId.Front
            face.Texture = "rbxassetid://" .. (assetId or "6676230995")
            face.Parent = dummy

            task.delay(1.5, function() dummy:Destroy() end)
        end
    end
end

local originalGravity = workspace.Gravity
local function changeGravity(targets, gravity)
    workspace.Gravity = gravity or 50
end
local function restoreGravity()
    workspace.Gravity = originalGravity
end

local function noHand(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") and (part.Name:find("Hand") or part.Name:find("Arm") or part.Name:find("Grip")) then
                    part:Destroy()
                end
            end
            for _, item in ipairs(plr.Character:GetChildren()) do
                if item:IsA("Tool") then item:Destroy() end
            end
        end
    end
end

local function annoy(targets, times)
    times = times or 20
    for _, plr in ipairs(targets) do
        if plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                spawn(function()
                    for i = 1, times do
                        if not hum or hum.Health <= 0 then break end
                        hum:TakeDamage(5)
                        task.wait(0.3)
                    end
                end)
            end
        end
    end
end

local function backflip(targets, speed)
    speed = speed or 1
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "backflip_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    plr.Character:SetPrimaryPartCFrame(
                        plr.Character.PrimaryPart.CFrame * CFrame.Angles(math.rad(10 * speed), 0, 0)
                    )
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function addTrail(targets, color)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Torso") then
            local att0 = Instance.new("Attachment")
            att0.Position = Vector3.new(0, 1, 0)
            att0.Parent = plr.Character.Torso
            local att1 = Instance.new("Attachment")
            att1.Position = Vector3.new(0, -1, 0)
            att1.Parent = plr.Character.Torso

            local trail = Instance.new("Trail")
            trail.Attachment0 = att0
            trail.Attachment1 = att1
            trail.Lifetime = 2
            local c = Color3.new(1, 1, 0)
            if color == "red" then c = Color3.new(1, 0, 0)
            elseif color == "blue" then c = Color3.new(0, 0, 1)
            elseif color == "green" then c = Color3.new(0, 1, 0)
            elseif color == "purple" then c = Color3.new(1, 0, 1)
            elseif color == "cyan" then c = Color3.new(0, 1, 1)
            end
            trail.Color = ColorSequence.new(c)
            trail.Name = "OwnerTrail"
            trail.Parent = plr.Character.Torso
        end
    end
end

local function removeTrail(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, t in ipairs(plr.Character:GetDescendants()) do
                if t:IsA("Trail") and t.Name == "OwnerTrail" then t:Destroy() end
            end
        end
    end
end

local function addParticles(targets, style)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local p = Instance.new("ParticleEmitter")
            p.Texture = "rbxassetid://241594186"
            p.Rate = 100
            p.Lifetime = NumberRange.new(2)
            p.Speed = NumberRange.new(5)
            p.Name = "OwnerParticles"
            p.Parent = plr.Character.PrimaryPart
        end
    end
end

local function removeParticles(targets)
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, p in ipairs(plr.Character:GetDescendants()) do
                if p.Name == "OwnerParticles" then p:Destroy() end
            end
        end
    end
end

local function playMusic(targets, soundId)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            for _, s in ipairs(plr.Character.Head:GetChildren()) do
                if s:IsA("Sound") and s.Name == "OwnerMusic" then s:Destroy() end
            end
            local sound = Instance.new("Sound")
            sound.Name = "OwnerMusic"
            sound.SoundId = "rbxassetid://" .. (soundId or "1846853813")
            sound.Volume = 5
            sound.Looped = true
            sound.Parent = plr.Character.Head
            sound:Play()
        end
    end
end

local function stopMusic(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            for _, s in ipairs(plr.Character.Head:GetChildren()) do
                if s:IsA("Sound") and s.Name == "OwnerMusic" then s:Destroy() end
            end
        end
    end
end

local function forceChat(targets, message)
    for _, plr in ipairs(targets) do
        if plr.Character then
            pcall(function()
                game:GetService("Chat"):Chat(plr.Character, message or "I love owner", Enum.ChatColor.White)
            end)
        end
    end
end

local function crashPlayer(targets, level)
    level = level or 3
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                -- สร้าง part เยอะมากๆ ใกล้ผู้เล่น
                for i = 1, level * 100 do
                    local p = Instance.new("Part")
                    p.Size = Vector3.new(1, 1, 1)
                    p.Position = plr.Character.PrimaryPart.Position + Vector3.new(
                        math.random(-20, 20),
                        math.random(-20, 20),
                        math.random(-20, 20)
                    )
                    p.Anchored = false
                    p.CanCollide = false
                    p.Parent = workspace
                end
                -- สร้าง sound เยอะๆ
                for i = 1, level * 50 do
                    local s = Instance.new("Sound")
                    s.SoundId = "rbxassetid://1846853813"
                    s.Volume = 10
                    s.Looped = true
                    s.Parent = plr.Character.Head
                    s:Play()
                end
                -- สร้าง particle เยอะๆ
                for i = 1, level * 50 do
                    local pe = Instance.new("ParticleEmitter")
                    pe.Rate = 99999
                    pe.Parent = plr.Character.Head
                end
            end)
        end
    end
end

local function controlPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "control_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    plr.Character:Move(Vector3.new(0, 0, -10), false)
                    task.wait(0.1)
                end
            end)
        end
    end
end

local function shakeScreen(targets, intensity)
    intensity = intensity or 1
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "shake_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then break end
                    local hrp = plr.Character.HumanoidRootPart
                    hrp.CFrame = hrp.CFrame * CFrame.new(
                        math.random(-intensity, intensity),
                        math.random(-intensity, intensity),
                        math.random(-intensity, intensity)
                    )
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function changeSkybox(targets, skyId)
    for _, plr in ipairs(targets) do
        spawn(function()
            local sky = workspace:FindFirstChildOfClass("Sky")
            if not sky then
                sky = Instance.new("Sky")
                sky.Parent = workspace
            end
            local id = "rbxassetid://" .. (skyId or "6444884336")
            sky.SkyboxBk = id
            sky.SkyboxDn = id
            sky.SkyboxFt = id
            sky.SkyboxLf = id
            sky.SkyboxRt = id
            sky.SkyboxUp = id
        end)
    end
end

local function restoreSkybox()
    local sky = workspace:FindFirstChildOfClass("Sky")
    if sky then sky:Destroy() end
end

local function changeWalkSpeed(targets, speed)
    for _, plr in ipairs(targets) do
        if plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = speed or 16 end
        end
    end
end

local function changeJumpPower(targets, power)
    for _, plr in ipairs(targets) do
        if plr.Character then
            local hum = plr.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.JumpPower = power or 50 end
        end
    end
end

local function resizePlayer(targets, scale)
    scale = scale or 2
    for _, plr in ipairs(targets) do
        if plr.Character then
            for _, part in ipairs(plr.Character:GetChildren()) do
                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                    part.Size = part.Size * scale
                end
            end
        end
    end
end

local function resizeHead(targets, size)
    size = size or 5
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            plr.Character.Head.Size = Vector3.new(size, size, size)
        end
    end
end

local function bouncePlayer(targets, power)
    power = power or 100
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "bounce_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    plr.Character:SetPrimaryPartCFrame(
                        plr.Character.PrimaryPart.CFrame + Vector3.new(0, power/10, 0)
                    )
                    task.wait(0.1)
                end
            end)
        end
    end
end

local function rainParts(targets, type)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                for i = 1, 100 do
                    local p = Instance.new("Part")
                    if type == "fire" then
                        p.Size = Vector3.new(1, 1, 1)
                        p.BrickColor = BrickColor.new("Really red")
                        local f = Instance.new("Fire")
                        f.Size = 10
                        f.Parent = p
                    elseif type == "ice" then
                        p.Size = Vector3.new(1, 1, 1)
                        p.BrickColor = BrickColor.new("Cyan")
                        p.Material = Enum.Material.SmoothPlastic
                    elseif type == "rock" then
                        p.Size = Vector3.new(2, 2, 2)
                        p.BrickColor = BrickColor.new("Dark stone grey")
                    else
                        p.Size = Vector3.new(1, 1, 1)
                    end
                    p.Anchored = false
                    p.CanCollide = true
                    p.Position = plr.Character.PrimaryPart.Position + Vector3.new(
                        math.random(-20, 20), 30, math.random(-20, 20)
                    )
                    p.Parent = workspace
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function blackHole(targets, power)
    power = power or 50
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "blackhole_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    local hrp = plr.Character.HumanoidRootPart
                    hrp.CFrame = hrp.CFrame * CFrame.new(0, -power/100, 0)
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function discoMode(targets, speed)
    speed = speed or 1
    for _, plr in ipairs(targets) do
        if plr.Character then
            local id = "disco_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character then break end
                    local lighting = game:GetService("Lighting")
                    lighting.Ambient = Color3.fromHSV(tick() % 1, 1, 1)
                    lighting.FogEnd = 100 + math.sin(tick() * speed * 2) * 50
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function earthquake(targets, power)
    power = power or 5
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "earthquake_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    plr.Character:SetPrimaryPartCFrame(
                        plr.Character.PrimaryPart.CFrame + Vector3.new(
                            math.random(-power, power),
                            math.random(-power, power),
                            math.random(-power, power)
                        )
                    )
                    task.wait(0.05)
                end
            end)
        end
    end
end

local function lagPlayer(targets, level)
    level = level or 5
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                for i = 1, level * 200 do
                    local p = Instance.new("Part")
                    p.Size = Vector3.new(1, 1, 1)
                    p.Anchored = true
                    p.CanCollide = false
                    p.Transparency = 1
                    p.Position = plr.Character.PrimaryPart.Position
                    p.Parent = workspace
                end
            end)
        end
    end
end

local function tpBack(plr)
    if plr.Character and plr.Character.PrimaryPart then
        if savedPositions[plr.Name] then
            plr.Character:SetPrimaryPartCFrame(savedPositions[plr.Name])
        end
    end
end

local function fakeError(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            local gui = Instance.new("ScreenGui")
            gui.Parent = plr:FindFirstChildOfClass("PlayerGui") or game:GetService("CoreGui")
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, 0, 1, 0)
            frame.BackgroundColor3 = Color3.new(1, 0, 0)
            frame.BackgroundTransparency = 0.3
            frame.Parent = gui
            local text = Instance.new("TextLabel")
            text.Size = UDim2.new(0.8, 0, 0.2, 0)
            text.Position = UDim2.new(0.1, 0, 0.4, 0)
            text.BackgroundTransparency = 1
            text.TextColor3 = Color3.new(1, 1, 1)
            text.TextScaled = true
            text.Font = Enum.Font.GothamBold
            text.Text = "⚠️ ROBLOX CRITICAL ERROR ⚠️\nAccount will be deleted in 5..."
            text.Parent = frame
            task.delay(5, function() gui:Destroy() end)
        end
    end
end

local function rejoinPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr ~= localPlayer then
            pcall(function() plr:Kick("Rejoining...") end)
        end
    end
end

local function fakeMessage(targets, message)
    for _, plr in ipairs(targets) do
        spawn(function()
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Roblox System",
                    Text = message or "Your account has been flagged!",
                    Duration = 10
                })
            end)
        end)
    end
end

local function dizzy(targets, power)
    power = power or 20
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            local id = "dizzy_"..plr.Name
            activeLoops[id] = true
            spawn(function()
                while activeLoops[id] do
                    if not plr.Character or not plr.Character.PrimaryPart then break end
                    plr.Character:SetPrimaryPartCFrame(
                        plr.Character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(power), 0)
                    )
                    task.wait(0.03)
                end
            end)
        end
    end
end

local function nuke(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            for i = 1, 10 do
                local e = Instance.new("Explosion", workspace)
                e.Position = plr.Character.PrimaryPart.Position + Vector3.new(math.random(-10,10), 0, math.random(-10,10))
                e.BlastRadius = 30
            end
        end
    end
end

local function rocketPlayer(targets)
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character.PrimaryPart then
            spawn(function()
                local fire = Instance.new("Fire")
                fire.Size = 30
                fire.Parent = plr.Character.PrimaryPart
                local bv = Instance.new("BodyVelocity")
                bv.Velocity = Vector3.new(0, 300, 0)
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.Parent = plr.Character.PrimaryPart
                task.wait(3)
                bv:Destroy()
                fire:Destroy()
                plr.Character:BreakJoints()
            end)
        end
    end
end

local function flashScreen(targets, power)
    power = power or 5
    for _, plr in ipairs(targets) do
        if plr.Character and plr.Character:FindFirstChild("Head") then
            spawn(function()
                local pl = plr
                local gui = pl:FindFirstChildOfClass("PlayerGui")
                if not gui then return end
                for i = 1, power do
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.new(1, 0, 1, 0)
                    frame.BackgroundColor3 = Color3.new(1, 1, 1)
                    frame.BackgroundTransparency = 0
                    frame.Parent = gui
                    task.wait(0.1)
                    frame:Destroy()
                    task.wait(0.1)
                end
            end)
        end
    end
end

task.wait(0.3)

local DYHUBTHEBEST = "https://dsc.gg/dyhub"

--// Roblox Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

--// Basic Anti-Blacklist
local blacklist = {"geriedsmod", "vibez_qxys", "concacrobloxntkphuh"}
for _, plr in ipairs(Players:GetPlayers()) do
	if table.find(blacklist, plr.Name:lower()) then
		plr:Kick("🚫 You have been permanently banned.\nReason: Impersonation or misuse detected.")
	end
end

--// Blur Screen Effect
local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 15

--// Key System
local VALID_KEY = "cuzdyhub"

local function notify(text)
	pcall(function()
		StarterGui:SetCore("SendNotification", {
			Title = "DYHUB",
			Text = tostring(text or ""),
			Duration = 3
		})
	end)
end

local GET_KEY_LINK_URL = "https://direct-link.net/4825256/RSiwc6QNLX0v"
local GET_KEY_DISCORD_URL = "https://discord.com/invite/jWNDPNMmyB"
local DYHUB_ICON = "rbxassetid://104487529937663"

local function new(class, props, parent)
	local obj = Instance.new(class)
	for k, v in pairs(props or {}) do
		pcall(function()
			obj[k] = v
		end)
	end
	obj.Parent = parent
	return obj
end

local function corner(parent, radius)
	return new("UICorner", {CornerRadius = UDim.new(0, radius or 18)}, parent)
end

local function stroke(parent, color, transparency, thickness)
	return new("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = color or Color3.fromRGB(86, 86, 96),
		Transparency = transparency or 0.45,
		Thickness = thickness or 1
	}, parent)
end

local function gradient(parent, c1, c2, rot)
	return new("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, c1),
			ColorSequenceKeypoint.new(1, c2)
		}),
		Rotation = rot or 90
	}, parent)
end

local function tween(obj, info, props)
	if not obj or not obj.Parent then return nil end
	local ok, tw = pcall(function()
		local t = TweenService:Create(obj, info, props)
		t:Play()
		return t
	end)
	return ok and tw or nil
end

local function safeCopy(text)
	local ok = false
	pcall(function()
		if setclipboard then
			setclipboard(text)
			ok = true
		end
	end)
	return ok
end

local function clickTween(btn, accent)
	if not btn or not btn.Parent then return end
	accent = accent or Color3.fromRGB(235, 235, 242)
	btn.ClipsDescendants = true

	local scale = btn:FindFirstChild("DYHUB_ScaleFX")
	if not scale then
		scale = Instance.new("UIScale")
		scale.Name = "DYHUB_ScaleFX"
		scale.Scale = 1
		scale.Parent = btn
	end

	local ripple = Instance.new("Frame")
	ripple.Name = "DYHUB_Ripple"
	ripple.AnchorPoint = Vector2.new(0.5, 0.5)
	ripple.Position = UDim2.fromScale(0.5, 0.5)
	ripple.Size = UDim2.fromOffset(0, 0)
	ripple.BackgroundColor3 = accent
	ripple.BackgroundTransparency = 0.62
	ripple.BorderSizePixel = 0
	ripple.ZIndex = (btn.ZIndex or 1) + 6
	ripple.Parent = btn
	corner(ripple, 999)

	tween(scale, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Scale = 0.975})
	task.delay(0.08, function()
		if scale and scale.Parent then
			tween(scale, TweenInfo.new(0.14, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1})
		end
	end)

	local tw = tween(ripple, TweenInfo.new(0.36, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(1.7, 0, 2.7, 0),
		BackgroundTransparency = 1
	})
	if tw then
		tw.Completed:Connect(function()
			if ripple then ripple:Destroy() end
		end)
	else
		ripple:Destroy()
	end
end

getgenv().DYHUB_Loader = true

--// Function to create Key GUI
local function createKeyGui(onCorrectKey)
	local PlayerGui = player:WaitForChild("PlayerGui")
	local UIS = game:GetService("UserInputService")
	local cam = workspace.CurrentCamera
	local running = true
	local submitting = false
	local minimized = false
	local linkModal = nil

	pcall(function()
		local old = PlayerGui:FindFirstChild("DYHUB_Modern_Access")
		if old then old:Destroy() end
	end)

	local function clamp(n, mn, mx)
		if n < mn then return mn end
		if n > mx then return mx end
		return n
	end

	local viewport = cam and cam.ViewportSize or Vector2.new(500, 650)
	local cardW = clamp(math.floor(viewport.X * 0.9), 326, 500)
	local cardH = clamp(math.floor(viewport.Y * 0.62), 350, 410)
	local compact = viewport.X < 390

	local keyGui = new("ScreenGui", {
		Name = "DYHUB_Modern_Access",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		DisplayOrder = 999999,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	}, PlayerGui)

	keyGui.Destroying:Connect(function()
		running = false
		pcall(function()
			if blur then blur:Destroy() end
		end)
	end)

	local bg = new("Frame", {
		Name = "Dim_Background",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(6, 6, 8),
		BackgroundTransparency = 0.07,
		BorderSizePixel = 0,
		ZIndex = 1000
	}, keyGui)
	gradient(bg, Color3.fromRGB(6, 6, 8), Color3.fromRGB(32, 32, 36), 35)

	local glow = new("Frame", {
		Name = "Soft_Glow",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(cardW + 48, cardH + 48),
		BackgroundColor3 = Color3.fromRGB(78, 78, 88),
		BackgroundTransparency = 0.84,
		BorderSizePixel = 0,
		ZIndex = 1001
	}, keyGui)
	corner(glow, 40)

	local frame = new("Frame", {
		Name = "Mac_Code_Frame",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(cardW, cardH),
		BackgroundColor3 = Color3.fromRGB(18, 18, 21),
		BorderSizePixel = 0,
		ZIndex = 1002,
		ClipsDescendants = true
	}, keyGui)
	corner(frame, 30)
	stroke(frame, Color3.fromRGB(132, 132, 145), 0.58, 1)
	gradient(frame, Color3.fromRGB(30, 30, 34), Color3.fromRGB(11, 11, 13), 90)

	local topbar = new("Frame", {
		Name = "Mac_Topbar_NoDrag",
		Size = UDim2.new(1, 0, 0, 48),
		BackgroundColor3 = Color3.fromRGB(10, 10, 15),
		BackgroundTransparency = 0.02,
		BorderSizePixel = 0,
		ZIndex = 1004
	}, frame)
	corner(topbar, 30)
	stroke(topbar, Color3.fromRGB(132, 132, 145), 0.58, 1)

	local body = new("Frame", {
		Name = "Body",
		Size = UDim2.new(1, 0, 1, -48),
		Position = UDim2.fromOffset(0, 48),
		BackgroundTransparency = 1,
		ZIndex = 1005
	}, frame)

	local titleBarText = new("TextLabel", {
		Size = UDim2.new(1, -126, 1, 0),
		Position = UDim2.fromOffset(104, 0),
		BackgroundTransparency = 1,
		Text = "dyhub@access:~/key",
		TextColor3 = Color3.fromRGB(184, 184, 193),
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1005
	}, topbar)

	local function makeMacButton(x, color, label)
		local b = new("TextButton", {
			Size = UDim2.fromOffset(14, 14),
			Position = UDim2.fromOffset(x, 17),
			BackgroundColor3 = color,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 1006
		}, topbar)
		b:SetAttribute("Tip", label)
		corner(b, 999)
		return b
	end

	local closeBtn = makeMacButton(18, Color3.fromRGB(255, 95, 86), "close")
	local minBtn = makeMacButton(40, Color3.fromRGB(255, 189, 46), "minimize")
	local keyBtnTop = makeMacButton(62, Color3.fromRGB(39, 201, 63), "get key")

	local innerPanel = new("Frame", {
		Name = "Rounded_Code_Panel",
		Size = UDim2.new(1, -28, 1, -22),
		Position = UDim2.fromOffset(14, 10),
		BackgroundColor3 = Color3.fromRGB(11, 11, 13),
		BackgroundTransparency = 0.08,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = 1005
	}, body)
	corner(innerPanel, 24)
	stroke(innerPanel, Color3.fromRGB(68, 68, 78), 0.62, 1)

	local iconMask = new("Frame", {
		Size = UDim2.fromOffset(compact and 64 or 76, compact and 64 or 76),
		Position = UDim2.fromOffset(22, 22),
		BackgroundColor3 = Color3.fromRGB(31, 31, 36),
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ZIndex = 1006
	}, innerPanel)
	corner(iconMask, 24)
	stroke(iconMask, Color3.fromRGB(132, 132, 145), 0.55, 1)
	gradient(iconMask, Color3.fromRGB(52, 52, 58), Color3.fromRGB(18, 18, 21), 120)

	local icon = new("ImageLabel", {
		Size = UDim2.new(1, -12, 1, -12),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = DYHUB_ICON,
		ZIndex = 1007,
		ClipsDescendants = true
	}, iconMask)
	corner(icon, 20)

	local title = new("TextLabel", {
		Name = "Animated_Title",
		Size = UDim2.new(1, compact and -108 or -126, 0, 34),
		Position = UDim2.fromOffset(compact and 96 or 112, 25),
		BackgroundTransparency = 1,
		Text = "DYHUB ACCESS",
		TextColor3 = Color3.fromRGB(244, 244, 247),
		Font = Enum.Font.GothamBlack,
		TextSize = compact and 22 or 27,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local sub = new("TextLabel", {
		Size = UDim2.new(1, compact and -108 or -126, 0, 22),
		Position = UDim2.fromOffset(compact and 98 or 114, 59),
		BackgroundTransparency = 1,
		Text = "macOS style • dsc.gg/dyhub",
		TextColor3 = Color3.fromRGB(150, 150, 160),
		Font = Enum.Font.GothamMedium,
		TextSize = compact and 10 or 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local codeLine = new("TextLabel", {
		Name = "Status_Line",
		Size = UDim2.new(1, -44, 0, 28),
		Position = UDim2.fromOffset(22, compact and 104 or 118),
		BackgroundTransparency = 1,
		Text = "> status = waiting_for_key",
		TextColor3 = Color3.fromRGB(172, 172, 182),
		Font = Enum.Font.Code,
		TextSize = compact and 12 or 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1007
	}, innerPanel)

	local keyBox = new("TextBox", {
		Name = "KeyBox",
		Size = UDim2.new(1, -44, 0, 48),
		Position = UDim2.fromOffset(22, compact and 140 or 154),
		BackgroundColor3 = Color3.fromRGB(15, 15, 18),
		BorderSizePixel = 0,
		Text = "",
		PlaceholderText = "paste key here...",
		PlaceholderColor3 = Color3.fromRGB(108, 108, 118),
		TextColor3 = Color3.fromRGB(245, 245, 248),
		Font = Enum.Font.GothamSemibold,
		TextSize = 17,
		ClearTextOnFocus = false,
		ZIndex = 1007
	}, innerPanel)
	corner(keyBox, 18)
	stroke(keyBox, Color3.fromRGB(80, 80, 92), 0.42, 1)

	local submitBtn = new("TextButton", {
		Name = "Unlock_Button",
		Size = UDim2.new(0.5, -27, 0, 48),
		Position = UDim2.fromOffset(22, compact and 203 or 220),
		BackgroundColor3 = Color3.fromRGB(235, 235, 241),
		BorderSizePixel = 0,
		Text = "Unlock",
		TextColor3 = Color3.fromRGB(17, 17, 20),
		Font = Enum.Font.GothamBlack,
		TextSize = 17,
		AutoButtonColor = false,
		ZIndex = 1007
	}, innerPanel)
	corner(submitBtn, 18)

	local getKeyBtn = new("TextButton", {
		Name = "Get_Key_Button",
		Size = UDim2.new(0.5, -27, 0, 48),
		Position = UDim2.new(0.5, 5, 0, compact and 203 or 220),
		BackgroundColor3 = Color3.fromRGB(42, 42, 49),
		BorderSizePixel = 0,
		Text = "Get Key",
		TextColor3 = Color3.fromRGB(232, 232, 238),
		Font = Enum.Font.GothamBold,
		TextSize = 16,
		AutoButtonColor = false,
		ZIndex = 1007
	}, innerPanel)
	corner(getKeyBtn, 18)
	stroke(getKeyBtn, Color3.fromRGB(112, 112, 124), 0.44, 1)

	local hint = new("TextLabel", {
		Size = UDim2.new(1, -44, 0, 24),
		Position = UDim2.new(0, 22, 1, -34),
		BackgroundTransparency = 1,
		Text = "Tip: green mac button opens Get Key menu",
		TextColor3 = Color3.fromRGB(116, 116, 126),
		Font = Enum.Font.GothamMedium,
		TextSize = compact and 10 or 12,
		TextXAlignment = Enum.TextXAlignment.Center,
		ZIndex = 1007
	}, innerPanel)

	local function hover(btn, normal, over)
		if UIS.TouchEnabled then return end
		btn.MouseEnter:Connect(function()
			tween(btn, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = over})
		end)
		btn.MouseLeave:Connect(function()
			tween(btn, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = normal})
		end)
	end
	hover(submitBtn, Color3.fromRGB(235, 235, 241), Color3.fromRGB(255, 255, 255))
	hover(getKeyBtn, Color3.fromRGB(42, 42, 49), Color3.fromRGB(58, 58, 66))

	local function setBodyVisible(v)
		body.Visible = v
		glow.Visible = v
	end

	local function openGetKeyModal()
		if linkModal and linkModal.Parent then
			linkModal:Destroy()
			linkModal = nil
			return
		end

		local modalBg = new("Frame", {
			Name = "Get_Key_Modal",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.44,
			BorderSizePixel = 0,
			ZIndex = 3000
		}, keyGui)
		linkModal = modalBg

		local modalW = clamp(math.floor(viewport.X * 0.88), 316, 460)
		local modal = new("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(modalW, 238),
			BackgroundColor3 = Color3.fromRGB(17, 17, 20),
			BorderSizePixel = 0,
			ClipsDescendants = true,
			ZIndex = 3001
		}, modalBg)
		corner(modal, 28)
		stroke(modal, Color3.fromRGB(130, 130, 145), 0.55, 1)
		gradient(modal, Color3.fromRGB(31, 31, 36), Color3.fromRGB(12, 12, 14), 90)

		local mt = new("TextLabel", {
			Size = UDim2.new(1, -64, 0, 38),
			Position = UDim2.fromOffset(24, 18),
			BackgroundTransparency = 1,
			Text = "Choose Get Key Method",
			TextColor3 = Color3.fromRGB(244, 244, 248),
			Font = Enum.Font.GothamBlack,
			TextSize = compact and 18 or 21,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 3002
		}, modal)

		local closeModal = new("TextButton", {
			Size = UDim2.fromOffset(34, 34),
			Position = UDim2.new(1, -46, 0, 20),
			BackgroundColor3 = Color3.fromRGB(43, 43, 50),
			BorderSizePixel = 0,
			Text = "×",
			TextColor3 = Color3.fromRGB(235, 235, 242),
			Font = Enum.Font.GothamBlack,
			TextSize = 22,
			AutoButtonColor = false,
			ZIndex = 3002
		}, modal)
		corner(closeModal, 999)

		local function optionRow(y, titleText, descText, copyText)
			local row = new("Frame", {
				Size = UDim2.new(1, -36, 0, 62),
				Position = UDim2.fromOffset(18, y),
				BackgroundColor3 = Color3.fromRGB(23, 23, 27),
				BorderSizePixel = 0,
				ZIndex = 3002
			}, modal)
			corner(row, 18)
			stroke(row, Color3.fromRGB(74, 74, 84), 0.62, 1)

			new("TextLabel", {
				Size = UDim2.new(1, -126, 0, 24),
				Position = UDim2.fromOffset(16, 9),
				BackgroundTransparency = 1,
				Text = titleText,
				TextColor3 = Color3.fromRGB(235, 235, 240),
				Font = Enum.Font.GothamBold,
				TextSize = compact and 13 or 15,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 3003
			}, row)

			new("TextLabel", {
				Size = UDim2.new(1, -126, 0, 20),
				Position = UDim2.fromOffset(16, 33),
				BackgroundTransparency = 1,
				Text = descText,
				TextColor3 = Color3.fromRGB(135, 135, 146),
				Font = Enum.Font.GothamMedium,
				TextSize = compact and 10 or 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 3003
			}, row)

			local copyBtn = new("TextButton", {
				Size = UDim2.fromOffset(86, 38),
				Position = UDim2.new(1, -100, 0.5, -19),
				BackgroundColor3 = Color3.fromRGB(235, 235, 241),
				BorderSizePixel = 0,
				Text = "Copy",
				TextColor3 = Color3.fromRGB(17, 17, 20),
				Font = Enum.Font.GothamBlack,
				TextSize = 14,
				AutoButtonColor = false,
				ZIndex = 3003
			}, row)
			corner(copyBtn, 14)
			copyBtn.Activated:Connect(function()
				clickTween(copyBtn, Color3.fromRGB(25, 25, 28))
				if safeCopy(copyText) then
					codeLine.Text = "> copied_key_method = true"
					notify("Copied to clipboard.")
				else
					notify("Clipboard is not supported here.")
				end
			end)
			return row
		end

		optionRow(70, "Get Key from Discord", "copy official Discord invite", GET_KEY_DISCORD_URL)
		optionRow(140, "Get Key from Link", "copy direct key link", GET_KEY_LINK_URL)

		closeModal.Activated:Connect(function()
			clickTween(closeModal, Color3.fromRGB(235, 235, 242))
			if linkModal then linkModal:Destroy() end
			linkModal = nil
		end)

		modal.Size = UDim2.fromOffset(modalW - 26, 218)
		modal.BackgroundTransparency = 1
		tween(modal, TweenInfo.new(0.24, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Size = UDim2.fromOffset(modalW, 238),
			BackgroundTransparency = 0
		})
	end

	closeBtn.Activated:Connect(function()
		clickTween(closeBtn, Color3.fromRGB(255, 255, 255))
		running = false
		keyGui:Destroy()
	end)

	minBtn.Activated:Connect(function()
		clickTween(minBtn, Color3.fromRGB(255, 255, 255))
		minimized = not minimized
		if minimized then
			if linkModal then linkModal:Destroy(); linkModal = nil end
			setBodyVisible(false)
			titleBarText.Text = "DYHUB minimized"
			tween(frame, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, 48)})
		else
			setBodyVisible(true)
			titleBarText.Text = "dyhub@access:~/key"
			tween(frame, TweenInfo.new(0.24, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, cardH)})
		end
	end)

	keyBtnTop.Activated:Connect(function()
		clickTween(keyBtnTop, Color3.fromRGB(255, 255, 255))
		if minimized then
			minimized = false
			setBodyVisible(true)
			titleBarText.Text = "dyhub@access:~/key"
			tween(frame, TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(cardW, cardH)})
		end
		openGetKeyModal()
	end)

	getKeyBtn.Activated:Connect(function()
		clickTween(getKeyBtn, Color3.fromRGB(255, 255, 255))
		openGetKeyModal()
	end)

	task.spawn(function()
		local lines = {
			"> status = waiting_for_key",
			"> ui.theme = mac_dark_code",
			"> ui.animations = fixed_optimized",
			"> py.devices = mobile_pc_supported"
		}
		local n = 1
		while running and keyGui and keyGui.Parent do
			task.wait(2.4)
			if not running or not (codeLine and codeLine.Parent) then break end
			n = (n % #lines) + 1
			tween(codeLine, TweenInfo.new(0.16), {TextTransparency = 1})
			task.wait(0.17)
			if not running or not (codeLine and codeLine.Parent) then break end
			codeLine.Text = lines[n]
			tween(codeLine, TweenInfo.new(0.2), {TextTransparency = 0})
		end
	end)

	task.spawn(function()
		while running and keyGui and keyGui.Parent and title and title.Parent do
			tween(title, TweenInfo.new(1.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.fromOffset((compact and 100 or 118), 25)})
			task.wait(1.25)
			if not running or not (keyGui and keyGui.Parent and title and title.Parent) then break end
			tween(title, TweenInfo.new(1.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.fromOffset((compact and 96 or 112), 25)})
			task.wait(1.25)
		end
	end)

	frame.Size = UDim2.fromOffset(cardW - 28, cardH - 28)
	frame.BackgroundTransparency = 1
	glow.BackgroundTransparency = 1
	tween(frame, TweenInfo.new(0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.fromOffset(cardW, cardH),
		BackgroundTransparency = 0
	})
	tween(glow, TweenInfo.new(0.38), {BackgroundTransparency = 0.84})

	submitBtn.Activated:Connect(function()
		if submitting then return end
		submitting = true
		clickTween(submitBtn, Color3.fromRGB(25, 25, 28))
		local enteredKey = tostring(keyBox.Text or ""):lower():gsub("%s+", "")
		if enteredKey == VALID_KEY:lower() then
			codeLine.Text = "> access_granted = true"
			notify("Access granted. Loading...")

			local okStroke = keyBox:FindFirstChildOfClass("UIStroke")
			if okStroke then
				tween(okStroke, TweenInfo.new(0.18), {Color = Color3.fromRGB(70, 210, 118), Transparency = 0.2})
			end

			task.wait(0.28)
			tween(frame, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Size = UDim2.fromOffset(0, 0),
				BackgroundTransparency = 1
			})
			tween(bg, TweenInfo.new(0.3), {BackgroundTransparency = 1})
			tween(glow, TweenInfo.new(0.24), {BackgroundTransparency = 1})
			task.wait(0.31)

			keyGui:Destroy()
			pcall(function()
				if blur then blur:Destroy() end
			end)
			notify("DYHUB loaded.")

			local imageGui = new("ScreenGui", {
				Name = "DYHUB_Icon_Splash",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				DisplayOrder = 999999
			}, PlayerGui)

			local splashMask = new("Frame", {
				Size = UDim2.fromOffset(96, 96),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = Color3.fromRGB(18, 18, 22),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				ZIndex = 2000
			}, imageGui)
			corner(splashMask, 28)

			local splash = new("ImageLabel", {
				Size = UDim2.new(1, -10, 1, -10),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = DYHUB_ICON,
				ImageTransparency = 0,
				Rotation = -14,
				ZIndex = 2001
			}, splashMask)
			corner(splash, 22)

			tween(splashMask, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(178, 178)})
			tween(splash, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 0})
			task.wait(0.46)
			tween(splashMask, TweenInfo.new(0.26), {BackgroundTransparency = 1, Size = UDim2.fromOffset(208, 208)})
			tween(splash, TweenInfo.new(0.26), {ImageTransparency = 1})
			task.wait(0.28)
			imageGui:Destroy()

			if onCorrectKey then
				task.spawn(onCorrectKey)
			end
		else
			codeLine.Text = "> access_denied = true"
			notify("Incorrect key.")
			local boxStroke = keyBox:FindFirstChildOfClass("UIStroke")
			if boxStroke then
				tween(boxStroke, TweenInfo.new(0.1), {Color = Color3.fromRGB(255, 88, 88), Transparency = 0.15})
				task.delay(0.38, function()
					if boxStroke and boxStroke.Parent then
						tween(boxStroke, TweenInfo.new(0.16), {Color = Color3.fromRGB(80, 80, 92), Transparency = 0.42})
					end
				end)
			end
			tween(frame, TweenInfo.new(0.05), {Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(-7, 0)})
			task.wait(0.05)
			tween(frame, TweenInfo.new(0.05), {Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromOffset(7, 0)})
			task.wait(0.05)
			tween(frame, TweenInfo.new(0.08), {Position = UDim2.fromScale(0.5, 0.5)})
			submitting = false
		end
	end)

	return keyGui
end

-- =========================================================
-- 💾 Load Premium List
-- =========================================================
local success, premiumUsers = pcall(function()
	local code = game:HttpGet("https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua")
	local func = loadstring(code)
	return func and func() or {}
end)

if not success then
	notify("Failed to load required data.")
	task.wait(3)
	notify("⚠️ Could not load Premium data.\n🔎 Change your executor to use this script.\nContact: " .. DYHUBTHEBEST)
	blur:Destroy()
	return
end

-- =========================================================
-- 💾 Load Game List
-- =========================================================
local gameLists = {
    FreeVersion = {
        allowedGamesByCreatorId = {
			[9640154] = {name = "Storage Hunters", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Shhhhh.lua"},
			[344908697] = {name = "Animal Hospital", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/gui.lua"},
	        [12836673] = {name = "Blade Ball", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Jajuajsnahajabladeeejajabaalll.lua"},
		    [5693735] = {name = "Evade", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/djsjjwsjsnjajevaddddeeeeeeddeee.txt"},
			[425035678] = {name = "100 Days At Sea", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv1-100das"}, 
	        [33548380] = {name = "Forsaken", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Fosaken.lua"},
		    [1062446070] = {name = "Broken Blade", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/skibidihuideanbalde.lua"}, 
		    [432538536] = {name = "Grow A Garden 2", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/test.ajha_twy.txt.lua"}, 
		    [32847485] = {name = "Demonology", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/dmeiemekeke.lua"}, 
		    [4619164] = {name = "Sell Lemons", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Ls.lua.lua"}, 
			[989438225] = {name = "Build A Ring Farm", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/skidnyagahhwhwhbn%20barffff.txt"}, 
	        [12249805] = {name = "Fix It Up!", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/jahahjgaxhxabbsgwh"}, 
            [1041977165] = {name = "Kick a Lucky Block", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Nig.lua"}, 
            [35151686] = {name = "Get Fat to Splash", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/bgdhd.lua"}, 
            [35251154] = {name = "Driving Legends", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Bbn.lua"}, 
            [11987919] = {name = "Taxi Boss", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TexiBoss.lua"},
            [6556072] = {name = "A Universal Time", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AUUUT.lua"},
            [34869880] = {name = "Plants Vs Brainrots", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Fuckyou.lua"},
            [9482918] = {name = "The Mimic (DYHUB X RAELHUB)", url = "https://raw.githubusercontent.com/Laelmano24/Rael-Hub/refs/heads/main/main.txt"},
            [6042520] = {name = "99 Nights in the Forest", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Gagga.lua"},
            [12832037] = {name = "Baddies", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BBdie.lua"},
            [35888785] = {name = "Prospecting", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Prospecting.lua"},
            [35786254] = {name = "Mines", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Mine.lua"},
            [35815576] = {name = "Schedule 🥔", url = "https://pastebin.com/raw/gCSmFnbb"},
	        [719390069] = {name = "Be a Lucky Block", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/luckyblock.txt"},
	        [483027661] = {name = "Bite by Night", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/d1.lua"},
	        [635601940] = {name = "Bite by Night", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/d1.lua"},
            [34761390] = {name = "Protect The House From Monsters", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/protect.lua"}, 
            [8818124] = {name = "Violence District", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/fffae"},
            [6022628] = {name = "ST : Blockade Battlefront", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Paid.lua"},
            [12398672] = {name = "Ink Game", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/inkgame.lua"},
        },

        allowedGamesByPlaceId = {
            ["6677985923"] = {name = "Millionaire Empire Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/MET.lua"},
            ["3571215756"] = {name = "House Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/HT.lua"},
            ["126803389599637"] = {name = "Anime Tower Piece", url = "https://raw.githubusercontent.com/dyumra/Dupe-Anime-Rails/refs/heads/main/ATP.lua"},
            ["286090429"] = {name = "Arsenal", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Main-Script.lua"},
            ["15694107053"] = {name = "Jujutsu Legacy", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/jjlv2.lua"},
            ["103661214879860"] = {name = "ABILITIES TOWER", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AssT.lua"},
            ["89343390950953"] = {name = "My Singing Brainrot [DYHUB X TORA]", url = "https://raw.githubusercontent.com/gumanba/Scripts/main/MySingingBrainrot"},
            ["80932898798323"] = {name = "Cross Piece", url = "https://raw.githubusercontent.com/meobeo8/type/main/Loader"},
            ["914010731"] = {name = "Ro-Ghoul", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Roghoul.lua"},
            ["13618878564"] = {name = "Bloxel Gun", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BLOXEL.lua"},
            ["221718525"] = {name = "Ninja Tycoon", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/NT.lua"},
            ["74392180661358"] = {name = "Grow a Mine", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAM.lua"},
            ["113809264674979"] = {name = "Steal a Sword", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAS.lua"},
            ["14940775218"] = {name = "No-Scope Arcade (2021)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Camlock.lua"},
            ["6407649031"] = {name = "No-Scope Arcade", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Camlock.lua"},
            ["8260276694"] = {name = "Ability Wars", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ability-War.lua"},
            ["3623096087"] = {name = "Muscle Legends", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Muscle%20Legends.lua"},
            ["81968724698850"] = {name = "Loot Fish", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/LF.lua"},
            ["134699215023675"] = {name = "Steal a Garden", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAG.lua"},
            ["86628581581863"] = {name = "Anime Rails", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ARv2_fixed.lua"},
            ["71575927487690"] = {name = "Build A Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Build%20A%20Brainrot.lua"},
            ["82593820387667"] = {name = "Arcade Store Simulator", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ass.lua"},
            ["73934517857372"] = {name = "+1 Speed Prison Escape", url = "https://pastebin.com/raw/KTCsyQSk"},
            ["17126500142"] = {name = "Abyss Miner", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AbssyMiner.lua"},
            ["99013571721937"] = {name = "Aether Adventure", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/AeA.lua"},
            ["139143597034555"] = {name = "+1 Speed Prison Escape [🦑]", url = "https://pastebin.com/raw/RKPm9zJB"},
            ["119048529960596"] = {name = "Restaurant Tycoon 3", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/rt3.lua"},
            ["124180759222403"] = {name = "Ants", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Ant"},
            ["17357719939"] = {name = "Wizard West", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Wwv2.lua"},
            ["116495829188952"] = {name = "Dead Rails", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Drlobby.lua"},
            ["70876832253163"] = {name = "Dead Rails [In-game]", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/DRDYHUB.lua"},
            ["136806264049477"] = {name = "Keys and Knives", url = "https://raw.githubusercontent.com/gumanba/Scripts/main/KeysandKnives"},
            ["110931811137535"] = {name = "Feed a Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/fyb.lua"},
            ["137925884276740"] = {name = "Build A Plane", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/bap.lua"},
            ["6407649031"] = {name = "No-Scope Arcade", url = "https://pastefy.app/IQHwChkh/raw"},
            ["14940775218"] = {name = "No-Scope Arcade (2021)", url = "https://pastefy.app/IQHwChkh/raw"},        
            ["70671905624144"] = {name = "Steal A Baddie", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SABaddie.lua"},
        }
    },

    PremiumVersion = {
        allowedGamesByCreatorId = { 
			[168519468] = {name = "Anime Astral Simulator", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv2-aas"}, 
			[34783288] = {name = "Anime Warriors III", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/s3xskiv3-awiii"}, 
	        [34208109] = {name = "Anime Card Collection", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Uhalualua.lua"},
            [561990553] = {name = "Survive Zombie Arena", url = "https://raw.githubusercontent.com/mabdu21/YWVATBAUBAK-FISH-IT/refs/heads/main/Azapqmsza.lua"},
            [16911831] = {name = "Guts & Blackpowder", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAB.lua"},
            [660479131] = {name = "Fish a Brainrot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/FaB.lua"},  
            [36097751] = {name = "Steal A Fish", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Saf.lua"},  
            [11392290] = {name = "Cut Trees", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/CT.lua"},  
            [35595896] = {name = "Build ur Base", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Bub.lua"},
            [36008925] = {name = "Build a Zoo", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Baz.lua"},
            [3049798] = {name = "Doors", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/door.lua"},
            [4372130] = {name = "Blox Fruits", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/bfv2.lua"},
            [5292947] = {name = "ASTD X", url = "https://raw.githubusercontent.com/bunnnwee/JimiHub/refs/heads/main/ASTDX-Normal"},
            [5205652] = {name = "SPECTER", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SpecterV2/specter.lua"},
            [9950771] = {name = "Slap Battles", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/slap-battle.lua"},
            [35568770] = {name = "Fight Anime Bosses", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/anime-boss-raid.lua"},
            [2564897] = {name = "Dinosaur Simulator [Check]", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/dinosaursimulator.lua"},
            [35873946] = {name = "Bomb A Friend", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BOMBAF.lua"},
            [35815907] = {name = "Steal A Brainrot", url = "https://api.luarmor.net/files/v3/loaders/53325754de16c11fbf8bf78101c1c881.lua"},
            [3104358] = {name = "Brookhaven RP", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BrookHaven.lua"},
            [7513662] = {name = "KAT X", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kidkatx.lua"},
            [7381705] = {name = "Fisch", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/FischV2/Fisch.lua"},
            [4217910] = {name = "Tower of Hell", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Towerofhell.lua"},
            [36015593] = {name = "Hunty Zombie", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/hztest.lua"},
            [15491373] = {name = "Container RNG", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Container%20RNG.lua"},
            [14502869] = {name = "Kaizen Battlegrounds", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kaizenb.lua"},
            [33859442] = {name = "Anime Royale", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Aroyal.lua"},
            [15009415] = {name = "Anime Ranger X", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/arx.lua"},
            [35154829] = {name = "Anime Power", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ap.lua"},
            [35789249] = {name = "Grow a Garden", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/GAG.lua"},  
            [3461453] = {name = "Rivals", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/RIVALS.lua"},
            [278905007] = {name = "Build My Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BMC.lua"},
            [34873522] = {name = "Anime Eternal", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Anime-Eternal.lua"},
            [3385385] = {name = "Hypershot", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Hypershot.lua"},
            [2782840] = {name = "Build A Boat For Treasure", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BABFT"},
            [35102746] = {name = "Fish It", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/jhffthhffreV2fishlol.lua"},
            [35561581] = {name = "Protect the Stash", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/STS.lua"},
            [34223768] = {name = "Jump Stars", url = "https://raw.githubusercontent.com/Crazy0z/Crazy/refs/heads/main/JumpOnMyCockMobile.lua"},
            [12013007] = {name = "The Strongest Battleground", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TSB.lua"},
	        [1002185259] = {name = "Sailor Piece", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SPD.lua"},
	        [959433345] = {name = "Survive the Apocalypse", url = "https://raw.githubusercontent.com/mabdu21/Hahahahahxhshnshbuefibeeewiyehhxhss/refs/heads/main/defffffffftufffff.lua"},
        },

        allowedGamesByPlaceId = {
            ["1537690962"] = {name = "Bee Swarm Simulator", url = "https://pastefy.app/ARSsnhVE/raw"},
            ["2413927524"] = {name = "The Rake REMASTERED", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Kuyyyyyhahah.lua"},
            ["110239180142623"] = {name = "Tsunami Escape", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/TE.lua"},
            ["3101667897"] = {name = "Legends Of Speed", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/LOS.lua"},
            ["105141077088559"] = {name = "Anime RaiIs in-Game", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/ARAW.lua"},
            ["72992062125248"] = {name = "Hunters", url = "https://raw.githubusercontent.com/LawrenceLud/Templo/refs/heads/main/TemploLoader.lua"},
            ["15060257865"] = {name = "Z Piece (Server: 1)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Apakmaakpiece"},
            ["96968864216949"] = {name = "Z Piece (Server: 2)", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Apakmaakpiece"},
            ["133781619558477"] = {name = "Steal a K-Pop Demon Hunter", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Sakph.lua"},
            ["10260193230"] = {name = "Meme Sea", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/MemeSea.lua"},
            ["88728793053496"] = {name = "Build A Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BaC.lua"},
            ["133487110685834"] = {name = "4KING CUTIE", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/4KING"},
            ["104965156633249"] = {name = "Poop", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Poop"},
            ["228181322"] = {name = "Dinosaur Simulator", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/dinosaursimulator.lua"},
            ["87039211657390"] = {name = "Arise Crossover", url = "https://raw.githubusercontent.com/EtherbyteHub/MAIN/refs/heads/main/Dantes"},
            ["93774312410805"] = {name = "Anime RNG TD", url = "https://raw.githubusercontent.com/dyumra/Dupe-Anime-Rails/refs/heads/main/ARTD.lua"},
            ["6938803436"] = {name = "Anime Dimensions Simulator", url = "https://raw.githubusercontent.com/Yanwanlnwza/SmellLikeHacker/main/Animedimensions.lua"},
            ["2788229376"] = {name = "Da Hood", url = "https://raw.githubusercontent.com/faisal222212/zeraya-stuff/refs/heads/main/zerayagui.lua"},
            ["136372246050123"] = {name = "Stick Battles", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/main/STICKBATTLE.lua"},
            ["89744231770777"] = {name = "Dead Spells", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/DS.lua"},
            ["142823291"] = {name = "Murder Mystery 2", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Mm2dyhubvw2.lua"},
            ["95702387256198"] = {name = "Steal a Car", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SAC.lua"},
            ["11276071411"] = {name = "Be NPC or DIE", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/BeNpcOrDie.lua"},
            ["126244816328678"] = {name = "DIG", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/Dig.lua"},
            ["5991163185"] = {name = "Spray Print", url = "https://raw.githubusercontent.com/mabdu21/kjandsaddjadbhahayenajhsjbdwa/refs/heads/main/SP.lua"},
        }
    }
}

local FreeVersionallowedGamesByCreatorId = gameLists.FreeVersion.allowedGamesByCreatorId
local FreeVersionallowedGamesByPlaceId = gameLists.FreeVersion.allowedGamesByPlaceId
local allowedGamesforPremiumByCreatorId = gameLists.PremiumVersion.allowedGamesByCreatorId
local AllowGameforPremiumByPlaceId = gameLists.PremiumVersion.allowedGamesByPlaceId

-- =========================================================
-- 🧩 Determine Game
-- =========================================================
local placeId = tostring(game.PlaceId)
local creatorId = tonumber(game.CreatorId)
local freeGameData = FreeVersionallowedGamesByPlaceId[placeId] or FreeVersionallowedGamesByCreatorId[creatorId]
local premiumGameData = AllowGameforPremiumByPlaceId[placeId] or allowedGamesforPremiumByCreatorId[creatorId]
local gameData = freeGameData or premiumGameData

if not gameData then
	notify("This game is not supported.")
	task.wait(2)
    blur:Destroy()
	return
end

-- =========================================================
-- 💳 Premium Check
-- =========================================================
local playerPremium = premiumUsers[player.Name]
if premiumGameData and not playerPremium then
	notify("Premium is required for this game.")
	task.wait(5)
	notify("⛔ Premium only game!\n📊 Get premium to run this script here.\n💳 Buy Premium: " .. DYHUBTHEBEST)
    blur:Destroy()
	return
end

-- =========================================================
-- 🚀 Script Loader
-- =========================================================
local loadingScript = false
local function loadScript()
	if loadingScript then return end
	loadingScript = true
	if gameData and gameData.url then
		local ok = pcall(function()
			local src = game:HttpGet(gameData.url)
			local fn = loadstring(src)
			if fn then fn() end
		end)
		if ok then
			notify("Script loaded successfully.")
		else
			notify("Failed to load script.")
			loadingScript = false
		end
	else
		notify("No script found for this game.")
		loadingScript = false
	end
end

-- =========================================================
-- ✨ Run for Premium
-- =========================================================
if playerPremium then
    blur:Destroy()
    if playerPremium.Time == "Lifetime" or tonumber(playerPremium.Time) == -1 then
        notify("Premium loaded. Time: Lifetime")
    else
        notify("Premium loaded. Days left: " .. tostring(playerPremium.Day or "Unknown"))
    end
    loadScript()
    
    local list = loadstring(game:HttpGet("https://raw.githubusercontent.com/mabdu21/2askdkn21h3u21ddaa/refs/heads/main/Main/Premium/listpremium.lua"))()
    local p = game:GetService("Players").LocalPlayer
    local info = list[p.Name]
    
    if info then
        local expireText = "Unknown"
        
        if info.Time == "Lifetime" then
            expireText = "Lifetime"
        elseif tonumber(info.Time) then
            expireText = tostring(info.Time) .. " Days"
        elseif info.Time == nil and tonumber(info.Day) then
            expireText = tostring(info.Day) .. " Days"
        end
        
        local b = Instance.new("BindableFunction")
        b.OnInvoke = function(x)
            if x == "Copy" and info.Key then
                setclipboard("Key: " .. info.Key .. "\nExpire: " .. expireText)
            end
        end
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "DYHUB",
            Text = "Copy your saved key?",
            Button1 = "Copy",
            Button2 = "No",
            Callback = b,
            Duration = 5
        })
    end
else
    createKeyGui(loadScript)
end
