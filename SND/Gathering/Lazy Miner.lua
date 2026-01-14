-- ┌-----------------------------------------------------------------------------------------------------------------------
-- | 
-- |   ███╗   ███╗ █████╗  ██████╗ █████╗ ██████╗  ██████╗ ███╗   ██╗    ██╗      █████╗ ███████╗██╗   ██╗    ███╗   ███╗██╗███╗   ██╗███████╗██████╗ 
-- |   ████╗ ████║██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔═══██╗████╗  ██║    ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝    ████╗ ████║██║████╗  ██║██╔════╝██╔══██╗
-- |   ██╔████╔██║███████║██║     ███████║██████╔╝██║   ██║██╔██╗ ██║    ██║     ███████║  ███╔╝  ╚████╔╝     ██╔████╔██║██║██╔██╗ ██║█████╗  ██████╔╝
-- |   ██║╚██╔╝██║██╔══██║██║     ██╔══██║██╔══██╗██║   ██║██║╚██╗██║    ██║     ██╔══██║ ███╔╝    ╚██╔╝      ██║╚██╔╝██║██║██║╚██╗██║██╔══╝  ██╔══██╗
-- |   ██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║██║  ██║╚██████╔╝██║ ╚████║    ███████╗██║  ██║███████╗   ██║       ██║ ╚═╝ ██║██║██║ ╚████║███████╗██║  ██║
-- |   ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
-- | 
-- | Automated FFXIV Miner leveling script using GatherBuddyReborn
-- | 
-- | Macaron Lazy Miner 1.0 (Inspired by Lazy Crafter made by XA)
-- | 
-- | Features:
-- | • Automatic teleportation to Ul'dah - Steps of Thal (Sapphire Avenue Exchange)
-- | • Miner Guild Class Unlock (Linette -> Adalberta)
-- | • Automatic Gear Purchasing (Yoyobasa & Gwalter)
-- | • Leveling 1-20 using GatherBuddyReborn
-- | • Automatic Gear Equipping
-- | 
-- | Requires:
-- |  curefunc; can be found here: https://github.com/MacaronDream/SND-Scripts/blob/main/SND/Curefunc.lua
-- |  xafunc; can be found here: https://github.com/xa-io/ffxiv-tools/blob/main/snd/xafunc.lua
-- | 
-- | ## Release Notes ##
-- | v1.0 - Initial Release
-- | 
-- └-----------------------------------------------------------------------------------------------------------------------
-- ┌-----------------------------------------------------------------------------------------------------------------------
-- | *** Game & Plugin Requirements & Configuration***
-- | 
-- | InGame: Lvl 10 Class Quest, Teleport to Black Brush Central Station & Horizon unlocked, Ul'Dah Aethernet. Chocobo Recommended!!!
-- | Gil needed: 6500 Gil
-- | TextAdvance -> Enable these Configurations
-- | Automatic quest accept -> Enable
-- | 
-- | YesAlready -> Used for Guild interactions (Unlock quests)
-- | YesAlready -> YesNo -> Click Yes -> Message: Do you wish to join the Miners' Guild?
-- | YesAlready -> YesNo -> Click Yes -> Message: Ready to work hard and get dirty?
-- | SimpleTweaks -> Command -> Equip Recommended Command -> /equiprecommended
-- | GatherBuddyReborn -> Auto-Gather configured (One of these 3 Presets)
-- | Import (Iron Ore): H4sIAAAAAAAAClWQS2vrMBCFV/0fYtbT4rElJ9au0AeBPnLh7spdqPGEmLp2kZRFW/Lfy0i207uRP3RGZ47PxTdsIr9v2gD2xVBRY40ajV6v0eiqREPFSqhCQ1SgoVLjCk1ZN3Ks0RhqRKJ/CH+Obohd7DiA/QYxA0sGQT4IOp3iDJZKoarMuuwAK6CrKgNRkaGsm/RulV9TKTZFEsQHQQJMGhHYpmmaE8LW837PntuHcediNw7/RapyJr1e8shVjkGmnoMk1JMqkp6TkalPCLeDe+25lf5+2Ud/5OSfQc+QN80s/z5xWrvcV+d7KhZONWQ+D6cyloGzeWpkMaHMJ4Qn985g4cF9farHbmAPCDccdr77kIrAwrZnF1jxEI6eVTx0QXVBxQOrceg/1fUxjpf3Lh7Yq63nwFFNHVypv7+GN34c1LPnaQgQ7sa+Zb918QAWAOHZt+zB0mppcU585/r+1e3ewO5dH/j0A/jRQSGhAgAA
-- | Import (Cinnabar): H4sIAAAAAAAAClWQT0/DMAzFT3yPyGeDmjbp2twQ/4Q0YEjcEIds9dSKrkVJdhho3x05aTe4pL84tt/ru/iBx0C7x8aDedcyK7FEhVpVFWpV5KhltmAqUEuZoZa5wgWzRJ2XFR81ai3rD4TXvR1CFzryYH6Al4GRGoE/CCqevBmMzJmKPL2zBhgGVRQJpMwmyHkuQ1ikcS1rMHVd1wgsnYp5yTvjmAQjjwgrR9stOWqW48aGbhz+WSqSJ1UlV3yffEWMdqQuZ0MJo6WI/KqOCHeDXffUcH5/1ge3p7g/gZohKczM/z5xlDvVi3OdBcPEHEPic3PMYuKYxYnPQjER5iPCs90RGFja74N46gZyIgeEW/Ib131xSGBg1ZP1JGjwe0citJ0XnRehJTEO/UFc78N4+WBDS06sHHkKYkrhSrz9ab7phsGu7dwECPdj35Bb2dCCAUB4cQ05MLI65Th7vrd9v7abTzBb23s6/gKAj7f5owIAAA==
-- | Import (Ragstone): H4sIAAAAAAAAClWQT0/jMBDFT3wPa86zKHbsNPENCVhVArYgbmgPppnSaNNkZbsHFvW7o7GTtHtxfpl/7+ldfcE60mHdBrBvRhYVVqjR6LpGo0uFRhYrphKNlAUaqTSumCUaVdX8NGiMbJhWTFxT9W+E56MbYhc7CmC/gG+DlQaBPwg6vSwEViqmUuU+S4Jl0GWZQcpiAsV7BcIqrxvZZFDVAnww7ci5sgxPLaVqsE3TNCeEjafdjjy1D+PWxW4c/nNbZru6zob5f7KcMDmVppq9ZkxuE3JXnxDuBvfeU8tJX5yP/kjpfgY9Q1aYmWOZOMkt9fJcZ8GZOaHM5+EU08QpqYXPQimvpX65e55JwTGfEJ7cgcDCg/v3KR67gbxQgHBLYeu7vxwkWNj05AIJGsLRk4j7LoguiLgnMQ79p7g5xvHHTxf35MXGU6AopqSuxevF8Iv7CHEcaBoChPuxb8lvXNyDBUD45VvyYGW9ZD17vnd9/+62f8DuXB/o9A1qbk5x8QIAAA== 
-- | Curefunc -> Must be installed
-- | 
-- └-----------------------------------------------------------------------------------------------------------------------
--
-- ┌-----------------------------------------------------------------------------------------------------------------------
-- | *** Stats for getting to Level 20 *** 
-- |    Only tested with Iron Ore Preset
-- |
-- | With Flying unlocked & New World Bonus: 17 Minutes
-- | Without Flying unlocked & New World Bonus: 20 Minutes
-- | Without Chocobo but with New World Bonus: 30 Minutes
-- | With Chocobo but No Bonus: Still needs to be tested
-- | Without Chocobo and No Bonus: 40-45 Minutes
-- |
-- |
-- └-----------------------------------------------------------------------------------------------------------------------

-- DO NOT TOUCH THESE LINES BELOW
require("curefunc")
require("xafunc") -- Required by curefunc documentation, though we prioritize using Cure* functions
-- DO NOT TOUCH THESE LINES ABOVE

-- ---------------------------------------
-- -- Start of Configuration Parameters --
-- ---------------------------------------

-- Toon list (If empty does current logged in Character) Remove the "--" to enable Character Rotation
local franchise_owners = {
    -- {"Toon One@World"},
    -- {"Toon Two@World"},
}

local position = "left" -- "left", "middle", "right" (This may be edited)
local zone_id = 131 -- Ul'dah - Steps of Thal (DO NOT EDIT)
local target_level = 20 -- Level to reach (This may be edited)

local delay_lists = {left = 1, middle = 2, right = 3}

local function get_delay()
    return delay_lists[position]
end

-- Coordinates
local linette_coords = {
    left = {1.5117511749268, 7.5999984741211, 153.62727355957},
    middle = {1.5117511749268, 7.5999984741211, 153.62727355957},
    right = {1.5117511749268, 7.5999984741211, 153.62727355957}
}

local adalberta_coords = {
    left = {-17.710834503174, 6.1999998092651, 157.66235351562},
    middle = {-17.710834503174, 6.1999998092651, 157.66235351562},
    right = {-17.710834503174, 6.1999998092651, 157.66235351562}
}

local yoyobasa_coords = {
    left = {150.21864318848, 4.0, -2.8177974224091},
    middle = {150.04528808594, 4.0, -0.041443504393101},
    right = {150.79737854004, 4.0100002288818, 2.841329574585}
}

local gwalter_coords = {
    left = {125.40900421143, 4.0099878311157, -56.199459075928},
    middle = {124.67462158203, 3.9999997615814, -58.694259643555},
    right = {122.96710205078, 4.0099983215332, -61.083602905273}
}

-- -------------------------------------
-- -- End of Configuration Parameters --
-- -------------------------------------

-- ------------------------
-- -- Start of Functions --
-- ------------------------

local function get_coordinates(coords_table)
    return coords_table[position]
end

local function move_to(coords)
    if not coords then 
        CureEcho("Error: No coordinates for position " .. position)
        return 
    end
    CureMovetoXA(coords[1], coords[2], coords[3])
end

local function interact_npc(name)
    CureTarget(name)
    CureSleep(1)
    CureInteract()
    CureSafeWait()
end

-- ----------------------
-- -- End of Functions --
-- ----------------------

-- -----------------------------
-- -- Start of Lazy Miner --
-- -----------------------------

local function CureLazyMinerXP()
    CureEnableTextAdvance()
    CureEcho("Starting Macaron Lazy Miner...")
    
    if get_delay() > 0 then
        CureSleep(get_delay())
    end

    -- 1. Teleport to Ul'dah if needed
    if CureGetZoneID() ~= zone_id then
        CureEcho("Teleporting to Ul'dah - Miner Guild...")
        CureLifestreamCmd("Miner")
    else
        CureEcho("Already in Ul'dah.")
    end

    -- 2. Unlock Miner Class
    CureEcho(" proceeding to Unlock Miner Class...")
    
    -- Linette
    local coords = get_coordinates(linette_coords)
    move_to(coords)
    interact_npc("Linette")
    CureSleep(2) 
    interact_npc("Linette")
    CureSafeWait()
    
    -- Adalberta
    coords = get_coordinates(adalberta_coords)
    move_to(coords)
    interact_npc("Adalberta")
    CureSleep(6)
    
    -- Equip Level 1 Pickaxe (Item 2519)
    yield("/equip 2519")
    CureEcho("Attempting to equip Pickaxe. CBT #1")
    CureSleep(1.5)
    yield("/equip 2519")
    CureEcho("Attempting to equip Pickaxe. CBT #2")
    CureSleep(1.5)
    yield("/equip 2519")
    yield("/equiprecommended")
    CureEcho("Attempting to equip Pickaxe. CBT #3")
    CureSleep(1.5)
    
    -- 3. Buy Gear
    CureEcho("Proceeding to Buy Gear...")
    
    -- Yoyobasa (Pickaxes)
    coords = get_coordinates(yoyobasa_coords)
    CureLifestreamCmd("Sapphire")
    move_to(coords)
    interact_npc("Yoyobasa")
    CureEcho("Yoyobasa Shop: Buying Items")
    CureSleep(1)
    CureCallback("SelectIconString true 1") -- Open Discipline of Land Shop
    CureSleep(1)
    CureCallback("SelectString true 0") -- Open Lvl 1-9 Shop
    CureSleep(1)
    CureCallback("Shop true 0 1 1 Undefined") -- Buy Lvl 8 Pickaxe ID: 2520
    CureSleep(1)
    CureCallback("SelectYesno true 0")
    CureSleep(1)
    CureCallback("Shop true -1") -- Close Shop
    CureSleep(1)
    CureCallback("SelectString true 1") -- Open lvl 10-19 Shop
    CureSleep(1)
    CureCallback("Shop true 0 0 1 Undefined") -- Buy Lvl 11 Pickaxe ID: 2521
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 1 1 Undefined") -- Buy Lvl 14 Pickaxe ID: 2522
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 3 1 Undefined") -- Buy Lvl 10 Sledgehammer ID: 2534
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)    
    CureSleep(1)
    CureEcho("Done Buying from Yoyobasa")

    -- Gwalter (Gear)
    coords = get_coordinates(gwalter_coords)
    move_to(coords)
    interact_npc("Gwalter")
    CureEcho("Gwalter Shop: Buying Items")
    CureSleep(1)
    CureCallback("SelectIconString true 2") -- Open Discipline of Land Shop
    CureSleep(1)
    CureCallback("SelectString true 0") -- Open Lvl 1-9 Shop
    CureSleep(1)
    CureCallback("Shop true 0 0 1 Undefined") -- Buy lvl 5 Head Piece ID: 2652
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 1 1 Undefined") -- Buy lvl 6 Body Piece ID: 3001
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 4 1 Undefined") -- Buy lvl 6 Gloves Piece ID: 3532
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 7 1 Undefined") -- Buy lvl 5 Pants Piece ID: 3310
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 8 1 Undefined") -- Buy lvl 5 Shoes Piece ID: 3761
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true -1") -- Close Shop
    CureSleep(1)
    CureCallback("SelectString true 1") -- Open Lvl 10-19 Shop
    CureSleep(1)
    CureCallback("Shop true 0 0 1 Undefined") -- Buy Lvl 10 Head Piece ID: 2658
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 8 1 Undefined") -- Buy Lvl 12 Body Piece ID: 3020
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 13 1 Undefined") -- Buy Lvl 11 Gloves Piece ID: 3537
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)    
    CureCallback("Shop true 0 18 1 Undefined") -- Buy Lvl 15 Pants Piece ID: 3322
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 22 1 Undefined") -- Buy Lvl 11 Shoes Piece ID: 3771
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(0.5)
    CureCallback("Shop true 0 23 1 Undefined") -- Buy lvl 15 Shoes Piece ID: 3774
    CureSleep(0.5)
    CureCallback("SelectYesno true 0")
    CureSleep(1)
    CureMovetoXA(131.40667724609, 4.0, -30.307592391968)
    CureLifestreamCmd("Gate of Nald")
    
    -- 4. Gathering Loop
    CureEcho("Starting Gathering Loop (1-" .. target_level .. ")...")
    yield("/equiprecommended")
    CureSleep(1)
    yield("/gbr auto on") -- Start GatherBuddy
    
    local was_gathering = false
    
    while CureGetCurrentLevel() < target_level do -- 16 is MIN Job ID
        -- Monitor Condition 6 (Gathering)
        local is_gathering = CureGetCharacterCondition(6)
        
        if is_gathering then
            was_gathering = true
        else
            if was_gathering then
                -- We just finished gathering a node
                CureEcho("Node finished. Equipping recommended gear...")
                CureSleep(2) -- Wait for animation
                yield("/equiprecommended")
                CureSleep(1)
                was_gathering = false
                yield("/gbr auto on") -- Ensure it's still running/resume
            end
        end
        
        CureSleep(1)
    end
    
    while CureGetCharacterCondition(6) do
        CureSleep(1)
    end
    
    CureEcho("Reached Level " .. target_level .. "! Stopping.")
    yield("/gbr auto off")
    CureLifestreamCmd("auto")
end

local function CureLazyMiner()
    if not franchise_owners or #franchise_owners == 0 then
        -- Runs for current character if list is empty
        CureEcho("No characters in franchise list. Running for current character.")
        CureLazyMinerXP()
    else
        for _, owner in ipairs(franchise_owners) do
            local character = owner[1]
            CureEcho("Logging in as " .. character)
            CureARRelog(character)
            CureLazyMinerXP()
        end
    end
    -- Logout or finish
end

CureLazyMiner()
