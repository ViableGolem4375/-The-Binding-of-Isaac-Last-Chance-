local Mod = RegisterMod("Mod", 1)

local itemConfig = Isaac.GetItemConfig()

local templateType = Isaac.GetPlayerTypeByName("Template", false)
local characterCostume = Isaac.GetCostumeIdByPath("gfx/characters/costume_template.anm2")
local LUCKY_DICE_ID = Isaac.GetItemIdByName("Lucky Coin")
local DULL_COIN_ID = Isaac.GetItemIdByName("Dull Coin")
local HATRED_ITEM = Isaac.GetItemIdByName("Unholy Mantle") -- Change name as needed

local URIEL_ITEM = Isaac.GetItemIdByName("Lil' Uriel")
local CONFIG_URIEL = itemConfig:GetCollectible(URIEL_ITEM)
local FAMILIAR_VARIANT_URIEL = Isaac.GetEntityVariantByName("Lil' Uriel")
local SHOOTING_TICK_COOLDOWN_URIEL = 50
local TEAR_DAMAGE_URIEL = 3
local RNG_SHIFT_INDEX_URIEL = 35

local GABRIEL_ITEM = Isaac.GetItemIdByName("Lil' Gabriel")
local CONFIG_GABRIEL = itemConfig:GetCollectible(URIEL_ITEM)
local FAMILIAR_VARIANT_GABRIEL = Isaac.GetEntityVariantByName("Lil' Gabriel")
local SHOOTING_TICK_COOLDOWN_GABRIEL = 50
local TEAR_DAMAGE_GABRIEL = 3
local RNG_SHIFT_INDEX_GABRIEL = 35

local CATALYST_SHEET_ITEM = Isaac.GetItemIdByName("Catalyst Character Sheet")

local FAIL_ITEM = Isaac.GetItemIdByName("Failed Abortion")
local CONFIG_FAIL = itemConfig:GetCollectible(FAIL_ITEM)
local FAMILIAR_VARIANT_FAIL = Isaac.GetEntityVariantByName("Failed Abortion")
local RNG_SHIFT_INDEX_FAIL = 35
local SHOOTING_TICK_COOLDOWN_FAIL = 25
local TEAR_SPEED_FAIL = 10
local TEAR_SCALE_FAIL = 1.5
local TEAR_DAMAGE_FAIL = 10

local FINAL_JUDGMENT_ITEM = Isaac.GetItemIdByName("Final Judgement") -- Change name as needed
local FINAL_JUDGMENT_ITEM_VFX = Isaac.GetItemIdByName("Final Judgement VFX") -- Change name as needed
local LILITH_ESSENCE = Isaac.GetItemIdByName("Essence of Lilith")
local RELIQUARY_TRINKET = Isaac.GetTrinketIdByName("Reliquary Access Card")
local COSTUME_FINAL_JUDGMENT = Isaac.GetCostumeIdByPath("gfx/characters/judgement.anm2")

local AMP_ITEM = Isaac.GetItemIdByName("Amplifier")
local FAMILIAR_VARIANT_AMP = Isaac.GetEntityVariantByName("Amplifier")
local AMP_BEAM = Isaac.GetEntityVariantByName("Amplifier Beam")
local AMP_AREA = Isaac.GetEntityVariantByName("Amplifier Area")
local AMP_DMG_ITEM = Isaac.GetItemIdByName("Amp Damage")

local HUH_ITEM = Isaac.GetItemIdByName("Huh?")
local COMP_ITEM = Isaac.GetItemIdByName("The Compensator")
local CLOVER_TRINKET = Isaac.GetTrinketIdByName("4 Leaf Clover")
local ORB_TRINKET = Isaac.GetTrinketIdByName("Orb Shard")
local PHOTO_TRINKET = Isaac.GetTrinketIdByName("Stitched Photo")
local CANDLE_TRINKET = Isaac.GetTrinketIdByName("Black Candle Wick")

function Mod:GiveCostumesOnInit(player)
    if player:GetPlayerType() ~= templateType then
        return -- End the function early. The below code doesn't run, as long as the player isn't Gabriel.
    end

    player:AddNullCostume(characterCostume)
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Mod.GiveCostumesOnInit)

local game = Game()

----------------------------------------------------------------------------------------
-- Character code below.

local Template = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.00,
    FIREDELAY = 7, -- your tears stat is "30/(FIREDELAY+1)"
    DAMAGE = 2.75, -- is only the damage stat, not damage multiplier
    RANGE = 260, -- your range stat is "40*RANGE"
    SHOTSPEED = 1.00,
    LUCK = 10.00,
    TEARHEIGHT = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFALLINGSPEED = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFLAG = 0, -- Determines some behaviors of your tears, https://wofsauge.github.io/IsaacDocs/rep/enums/TearFlags.html
    TEARCOLOR = Color(1.0, 1.0, 1.0, 1.0, 0, 0, 0), -- r1.0 g1.0 b1.0 a1.0 0r 0g 0b (the last three are offsets)
    FLYING = false
}

function Template:onPlayerInit(player)
    if player:GetPlayerType() == templateType then
        player:SetPocketActiveItem(LUCKY_DICE_ID, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(LUCKY_DICE_ID)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Template.onPlayerInit)

function Template:onCache(player, cacheFlag)
    if player:GetPlayerType() == templateType then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Template.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Template.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Template.DAMAGE
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Template.RANGE
            player.TearHeight = player.TearHeight + Template.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Template.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Template.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Template.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Template.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Template.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Template.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Template.onCache)

----------------------------------------------------------------------------------------
-- Code for the tainted version below

local TAINTED_TEMPLATE_TYPE = Isaac.GetPlayerTypeByName("Template", true)

local Templateb = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.10,
    FIREDELAY = 9, -- your tears stat is "30/(FIREDELAY+1)"
    DAMAGE = 3.5, -- is only the damage stat, not damage multiplier
    RANGE = 260, -- your range stat is "40*RANGE"
    SHOTSPEED = 1.00,
    LUCK = 0.00,
    TEARHEIGHT = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFALLINGSPEED = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFLAG = 0, -- Determines some behaviors of your tears, https://wofsauge.github.io/IsaacDocs/rep/enums/TearFlags.html
    TEARCOLOR = Color(1.0, 1.0, 1.0, 1.0, 0, 0, 0), -- r1.0 g1.0 b1.0 a1.0 0r 0g 0b (the last three are offsets)
    FLYING = false
}

function Templateb:onPlayerInit(player)
    if player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then
        player:SetPocketActiveItem(DULL_COIN_ID, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DULL_COIN_ID)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Templateb.onPlayerInit)


function Templateb:onCache(player, cacheFlag)
    if player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Templateb.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Templateb.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Templateb.DAMAGE * 1.25
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Templateb.RANGE
            player.TearHeight = player.TearHeight + Templateb.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Templateb.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Templateb.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Templateb.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Templateb.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Templateb.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Templateb.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Templateb.onCache)

function Mod:FilterHighQualityItems(pickup)
    local player = Isaac.GetPlayer(0)

    -- Ensure this only applies to your tainted character
    if player:GetPlayerType() ~= TAINTED_TEMPLATE_TYPE then
        return
    end

    -- Check if the pickup is a pedestal item
    if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
        local itemID = pickup.SubType
        local itemConfig = Isaac.GetItemConfig():GetCollectible(itemID)

        -- **Exclude Birthright from rerolling**
        if itemID == CollectibleType.COLLECTIBLE_BIRTHRIGHT or itemID == 551 or itemID == 552 or itemID == 550 then
            return
        end

        if itemConfig and itemConfig.Quality > 2 then
            -- Find a lower-quality replacement item
            local validItems = {}
            local itemPool = Game():GetItemPool()
            local newItem

            for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
                local lowerItemConfig = Isaac.GetItemConfig():GetCollectible(i)
                if lowerItemConfig and lowerItemConfig.Quality <= 2 and not lowerItemConfig.Hidden then
                    table.insert(validItems, i)
                end
            end

            -- If valid replacements exist, reroll the item
            if #validItems > 0 then
                local newItem = validItems[math.random(#validItems)]
                pickup:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Mod.FilterHighQualityItems)

local previousItems = {}
local recentPickups = {}

function Mod:onPlayerUpdate(player)
    if player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then
        local currentItems = {}

        -- Store the player's current items
        for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
            if player:HasCollectible(i) then
                currentItems[i] = true
            end
        end

        -- Compare with previous items to detect **new** pickups
        for itemID, _ in pairs(currentItems) do
            if not previousItems[itemID] then
                local itemQuality = Isaac.GetItemConfig():GetCollectible(itemID).Quality

                -- Ensure this item hasn't been repeatedly picked up/dropped
                if itemQuality == 0 and not recentPickups[itemID] then
                    local rng = player:GetCollectibleRNG(itemID)
                    if rng:RandomFloat() < 0.5 then -- 50% chance
                        local qualityZeroItems = {}

                        -- Find all items with quality 0
                        for i = 1, Isaac.GetItemConfig():GetCollectibles().Size - 1 do
                            local itemConfig = Isaac.GetItemConfig():GetCollectible(i)
                            if itemConfig and itemConfig.Quality == 0 and not itemConfig.Hidden then
                                table.insert(qualityZeroItems, i)
                            end
                        end

                        -- Spawn a pedestal with a random quality 0 item
                        if #qualityZeroItems > 0 then
                            local newItem = qualityZeroItems[rng:RandomInt(#qualityZeroItems) + 1]
                            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, player.Position, Vector(0,0), nil)
                        end
                    end

                    -- Mark this item as recently picked up to prevent further exploitation
                    recentPickups[itemID] = true
                end
            end
        end

        -- Update previous items for next check
        previousItems = currentItems
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.onPlayerUpdate)


function Mod:RemoveEmptyPedestals(player)
    local player = Isaac.GetPlayer(0) -- Retrieves the first player

    if player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then -- Replace with your character's ID
        local entities = Isaac.GetRoomEntities()

        for _, entity in ipairs(entities) do
            if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                local pedestal = entity:ToPickup()
                if pedestal.SubType == 0 then -- Empty pedestal check
                    pedestal:Remove()
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RemoveEmptyPedestals)


if StageAPI and StageAPI.Loaded then
    StageAPI.AddPlayerGraphicsInfo("Template", {
        Name = "gfx/ui/boss/playername_template.png",
		Portrait = "gfx/ui/stage/playerportrait_template.png",
		NoShake = false,
        Controls = "gfx/ui/matt_controls.png"
    })
--[[     Mod.luarooms = {}
	Mod.luarooms.TT = StageAPI.RoomsList("TaintedTreasureRooms", require("resources.luarooms.reliquaryluarooms")) ]]
end

----------------------------------------------------------------------------------------
-- Birthright code below.

function Mod:ApplyBirthrightEffect(player)
    local data = player:GetData()

    if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        -- **Check if player is the normal or tainted variant**
        if player:GetPlayerType() == templateType then
            -- **Apply unique Birthright effect for normal variant**
            data.BirthrightActive = true
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:AddCacheFlags(CacheFlag.CACHE_LUCK)
            player:EvaluateItems()
        elseif player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then
            -- **Check if Birthright effect has already been applied**
            if not data.TaintedBirthrightGiven then
                data.TaintedBirthrightGiven = true -- Mark that the item has been granted

                -- **Define Quality 4 Item IDs manually**
                -- Maybe fix actives at some point.
                local quality4Items = {
                    -- Mod items.
                    LUCKY_DICE_ID,
                    DULL_COIN_ID,
                    URIEL_ITEM,
                    GABRIEL_ITEM,
                    FINAL_JUDGMENT_ITEM,
                    -- Vanilla items.
                    330,  -- Sacred Heart
                    169,  -- Polyphemus
                    118,  -- Brimstone
                    395,  -- Tech X
                    114,  -- Mom's Knife
                    584,  -- Revelation
                    --347,  -- Mega Blast
                    35,   -- Cricket's Head
                    --681,   -- Death Certificate
                    --105, -- D6
                    --489, -- D Infinity
                    --711, -- Flip
                    --625, --Mega Mush
                    --636, --R Key
                    723, --Spindown Dice
                    --12, -- Magic Mushroom
                    52, -- Dr. Fetus
                    108, -- The Wafer
                    149, -- Ipecac
                    223, -- Pyromaniac
                    232, -- Stopwatch
                    245, -- 20/20
                    313, -- Holy Mantle
                    331, -- Godhead
                    360, -- Incubus
                    415, -- Crown of Light
                    495, -- Ghost Pepper
                    531, -- Haemolacria
                    562, -- Rock Bottom
                    581, -- Psy Fly
                    664, -- Binge Eater
                    678, -- C Section
                    689, -- Glitched Crown
                    691, -- Sacred Orb
                    698, -- Twisted Pair
                }

                -- Randomly select an item ID from the list
                local randomItemID = quality4Items[math.random(#quality4Items)]
                player:AddCollectible(randomItemID, 0, false)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.ApplyBirthrightEffect)

function Mod:EvaluateBirthrightCache(player, cacheFlag)
    local data = player:GetData()

    if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        if player:GetPlayerType() == templateType then
            -- **Grant +10 Luck**
            if cacheFlag == CacheFlag.CACHE_LUCK then
                player.Luck = player.Luck + 10
            end

            -- **Scale Damage based on Luck**
            if cacheFlag == CacheFlag.CACHE_DAMAGE then
                local luckScaling = math.max(player.Luck * 0.5, 0) -- Adjust multiplier as needed
                player.Damage = player.Damage + luckScaling
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateBirthrightCache)

----------------------------------------------------------------------------------------
-- Item code below.
local luckyDice = Isaac.GetItemIdByName("Lucky Dice")

if EID then
    EID:addCollectible(LUCKY_DICE_ID, "Reroll all item pedestals in the current room. Items rerolled will be chosen from a special item pool consisting of luck/chance based items.", "Lucky Coin")
    EID:addCollectible(DULL_COIN_ID, "Rerolls all item pedestals in the room. Items will always be rerolled into an item of 1 lower quality than the original item. Using Dull Coin with no item pedestals in the room containing items with a quality above 1 will remove a random quality 0 item from Isaac's inventory and trigger the Berserk! state. Triggering the Berserk! state in this way charges Isaac's active item by 12 bars.", "Dull Coin")
    EID:addCollectible(HATRED_ITEM, "Gives the player 11 broken hearts, in exchange Isaac gains +1 damage, a +50% damage multiplier and will be made invulnerable briefly upon damaging an enemy.", "Unholy Mantle")
    EID:addCollectible(URIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires a holy light beam forward. Scales with Isaac's damage.", "Lil' Uriel")
    EID:addCollectible(GABRIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires 4 holy light beams in an 'X' pattern. Scales with Isaac's damage.", "Lil' Gabriel")
    EID:addCollectible(CATALYST_SHEET_ITEM, "No no no NO NO NO nO no AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "Catalyst Character Sheet")
    EID:addCollectible(FAIL_ITEM, "Familiar that fires Haemolaceria tears. Tears deal 10 damage and split into multiple smaller tears upon contact with a surface or enemy.", "Failed Abortion")
    EID:addCollectible(FINAL_JUDGMENT_ITEM, "One time use active item that spawns a circle of light beams around Isaac, gives Isaac +50 damage, 4x fire rate, +1.25 range, +2 speed, and +3 luck along with total invulnerability, rapid fire holy light beams, and random light beams from the sky targetting enemies for 30 seconds. Upon expiration, this effect causes a large explosion in the current room and immediately kills Isaac.", "Final Judgement")
    EID:addCollectible(FINAL_JUDGMENT_ITEM_VFX, "I exist to make the visuals work!", "Final Judgement VFX")
    EID:addCollectible(LILITH_ESSENCE, "Makes all enemies in the current room friendly upon use.", "Essence of Lilith")
    EID:addBirthright(templateType, "+10 luck, also gives a scaling damage up equal to 50% of Isaac's luck stat.")
    EID:addBirthright(TAINTED_TEMPLATE_TYPE, "Grants a random quality 4 item.")
    EID:addTrinket(RELIQUARY_TRINKET, "Picking up this trinket will immediately teleport Isaac to a special Essence Reliquary room. This room will contain an item from a unique item pool containing various items relating to character's gimmicks.", "Reliquary Access Card")
    EID:addCollectible(AMP_ITEM, "Spawn a familiar which projects a damage amplification area onto the ground. Standing within this area will multiply Isaac's damage by 5. Familiar expires after 20 seconds.", "Amplifier")
    EID:addCollectible(HUH_ITEM, "Rerolls all item pedestals in the room into The Poop.", "Huh?")
    EID:addTrinket(CLOVER_TRINKET, "Grants +1 luck.", "4 Leaf Clover")
    EID:addTrinket(ORB_TRINKET, "Grants a 25% chance for quality 0 items to be automatically rerolled once.", "Orb Shard")
    EID:addTrinket(PHOTO_TRINKET, "Picking up either The Polaroid or The Negative will grant the opposite item.", "Stitched Photo")
    EID:addTrinket(CANDLE_TRINKET, "Prevents seeing the same curse twice while held.", "Black Candle Wick")

end

--Function to handle dice item rerolls.
--Works by setting an item pool using item IDs and then rerolling items within the pool into something from the set list of items.
--To add a new item just add its ID to the list.
function Mod:LuckyDiceUse(item, rng, player, flags)
    player:AnimateCollectible(LUCKY_DICE_ID, "UseItem", "PlayerPickupSparkle")
    local predefinedItems = {
        87, --Loki's Horns
        89, --Spider Bite
        103, --The Common Cold
        110, --Mom's Contacts
        150, --Tough Love
        151, --The Mulligan
        200, --Mom's Eyeshadow
        201, --Iron Bar
        217, --Mom's Wig
        219, --Old Bandage
        225, --Gimpy
        228, --Mom's Perfume
        230, --Abaddon
        231, --Ball of Tar
        46, --Lucky Foot
        173, --Mitre
        204, --Fanny Pack
        242, --Infamy
        259, --Dark Matter
        303, --Virgo
        337, --Broken Watch
        374, --Holy Light
        375, --Host Hat
        393, --Serpent's Kiss
        398, --God's Flesh
        401, --Explosivo
        410, --Evil Eye
        418, --Fruit Cake
        424, --Sack Head
        429, --Head of the Keeper
        443, --Apple!
        449, --Metal Plate
        457, --Cone Head
        459, --Sinus Infection
        460, --Glaucoma
        461, --Parasitoid
        463, --Sulfuric Acid
        495, --Ghost Pepper
        496, --Euthanasia
        502, --Large Zit
        503, --Little Horn
        505, --Poke Go
        513, --Bozo
        514, --Broken Modem
        538, --Marbles
        553, --Mucormycosis
        558, --Eye Sore
        606, --Ocular Rift
        616, --Bird's eye
        617, --Lodestone
        618, --Rotten Tomato
        637, --Knockout Drops
        684, --Hungry Soul
        690, --Belly Jelly
        691, --Sacred Orb
    } -- Custom item pool for lucky dice, consists of chance based/related items.

    local room = Game():GetRoom()
    local entities = Isaac.GetRoomEntities()

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            -- Ensure the pedestal already holds an item before rerolling
            if pedestal.SubType ~= 0 then
                local newItem = predefinedItems[rng:RandomInt(#predefinedItems) + 1] -- Pick a random item
                pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
            end

            --local newItem = predefinedItems[rng:RandomInt(#predefinedItems) + 1] -- Pick a random item from the list
            --pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
        end
    end

    return true
                        
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.LuckyDiceUse, LUCKY_DICE_ID) 

function Mod:DullCoinUse(item, rng, player, flags)
    player:AnimateCollectible(DULL_COIN_ID, "UseItem", "PlayerPickupSparkle")

    local entities = Isaac.GetRoomEntities()
    local validRerolls = {}

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            local currentItem = pedestal.SubType
            local itemConfig = Isaac.GetItemConfig():GetCollectible(currentItem)

            if itemConfig then
                local currentQuality = itemConfig.Quality

                -- Check if the item is eligible for downgrading
                if currentQuality > 0 then
                    local lowerQualityItems = {}

                    -- Find valid lower-quality replacements
                    for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
                        local replacementConfig = Isaac.GetItemConfig():GetCollectible(i)
                        if replacementConfig and replacementConfig.Quality == currentQuality - 1 then
                            table.insert(lowerQualityItems, i)
                        end
                    end

                    -- If we found lower-quality items, pick one and reroll the pedestal
                    if #lowerQualityItems > 0 then
                        local newItem = lowerQualityItems[rng:RandomInt(#lowerQualityItems) + 1]
                        pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
                        table.insert(validRerolls, newItem) -- Track successful rerolls
                    end
                end
            else
                print("ERROR: Failed to retrieve item config for:", currentItem)
            end
        end
    end

    -- If no successful rerolls happened, trigger the backup effect
    if #validRerolls == 0 then
        local qualityZeroItems = {}

    -- Scan inventory for Quality 0 passive items
    for itemID = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
        local itemConfig = Isaac.GetItemConfig():GetCollectible(itemID)

        -- Ensure item exists, is Quality 0, and is Passive
        if itemConfig and itemConfig.Quality == 0 and player:HasCollectible(itemID) then
            if itemConfig.Type == ItemType.ITEM_PASSIVE or itemConfig.Type == ItemType.ITEM_FAMILIAR then -- Only allow passive items
            table.insert(qualityZeroItems, itemID)
            end
        end
    end

        -- If player has no Quality 0 items, exit
        if #qualityZeroItems == 0 then
            return
        end

        -- Pick a random Quality 0 item to remove
        local itemToRemove = qualityZeroItems[math.random(#qualityZeroItems)]

        local prevActiveItem = player:GetActiveItem()
        local berserkID = CollectibleType.COLLECTIBLE_BERSERK

        -- Remove previous active item before applying Berserk effect
        if prevActiveItem ~= nil then
            player:RemoveCollectible(prevActiveItem)
        end
        
        player:AddCollectible(berserkID, 0, true)
        player:UseActiveItem(berserkID, false, false)
        player:RemoveCollectible(berserkID) -- Remove Berserk immediately

        -- Remove selected Quality 0 item
        player:RemoveCollectible(itemToRemove)

        -- Restore previous active item if it existed
        if prevActiveItem ~= nil then
            player:AddCollectible(prevActiveItem, 0, true)
            player:SetActiveCharge(12) -- Fully charge restored item
        end
    end

    return true
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.DullCoinUse, DULL_COIN_ID)


function Mod:ApplyBrokenHearts(player)
    if player:HasCollectible(HATRED_ITEM) then
        local brokenHeartCount = player:GetBrokenHearts()

        -- Ensure the effect applies only once
        if brokenHeartCount < 11 then
            player:AddBrokenHearts(11 - brokenHeartCount) -- Set to exactly 11
        end

        -- Apply damage boost
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.ApplyBrokenHearts)

function Mod:GrantInvulnerabilityOnHit(entity, amount, flags, source, countdown)
    local player = Isaac.GetPlayer(0)

    if player:HasCollectible(HATRED_ITEM) and source and source.Entity then
        player:SetMinDamageCooldown(60) -- 1 second (30 frames)
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.GrantInvulnerabilityOnHit)

-- Handle the actual damage scaling
function Mod:EvaluateCachec(player, cacheFlag)
    if player:HasCollectible(HATRED_ITEM) and cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage + 1 + (player.Damage * 0.5) -- Adjust as needed
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCachec)

---@param player EntityPlayer
function Mod:EvaluateCache(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(URIEL_ITEM) + player:GetCollectibleNum(URIEL_ITEM)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_URIEL)

    player:CheckFamiliar(FAMILIAR_VARIANT_URIEL, count, rng, CONFIG_URIEL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCache, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInit(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInit, FAMILIAR_VARIANT_URIEL)

---@param familiar EntityFamiliar
function Mod:HandleUpdate(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player
    local playerDamage = player.Damage -- Get player's current damage value

    local fireDirection = player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false

    if fireDirection == Direction.LEFT then
        direction = Vector(-1, 0)
        shootAnim = "FloatShootSide"
        doFlip = true
    elseif fireDirection == Direction.RIGHT then
        direction = Vector(1, 0)
        shootAnim = "FloatShootSide"
    elseif fireDirection == Direction.DOWN then
        direction = Vector(0, 1)
        shootAnim = "FloatShootDown"
    elseif fireDirection == Direction.UP then
        direction = Vector(0, -1)
        shootAnim = "FloatShootUp"
    end

    if direction ~= nil and familiar.FireCooldown == 0 then
        local laser = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiar.Position,
            Vector.Zero,
            familiar
        ):ToLaser()

        laser.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser.AngleDegrees = direction:GetAngleDegrees() -- Rotate laser to match direction
        laser.Parent = familiar -- Attach the laser to the familiar
        laser.Timeout = 15 -- Set duration (adjust as needed)
        laser.CollisionDamage = TEAR_DAMAGE_URIEL + playerDamage
        familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_URIEL

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdate, FAMILIAR_VARIANT_URIEL)

---@param playerb EntityPlayer
function Mod:EvaluateCacheb(playerb)
    local effectsb = playerb:GetEffects()
    local countb = effectsb:GetCollectibleEffectNum(GABRIEL_ITEM) + playerb:GetCollectibleNum(GABRIEL_ITEM)
    local rngb = RNG()
    local seedb = math.max(Random(), 1)
    rngb:SetSeed(seedb, RNG_SHIFT_INDEX_GABRIEL)

    playerb:CheckFamiliar(FAMILIAR_VARIANT_GABRIEL, countb, rngb, CONFIG_GABRIEL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheb, CacheFlag.CACHE_FAMILIARS)

---@param familiarb EntityFamiliar
function Mod:HandleInitb(familiarb)
    familiarb:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitb, FAMILIAR_VARIANT_GABRIEL)

---@param familiarb EntityFamiliar
function Mod:HandleUpdateb(familiarb)
    local spriteb = familiarb:GetSprite()
    local playerb = familiarb.Player

    local playerDamage = playerb.Damage -- Get player's current damage value

    local fireDirectionb = playerb:GetFireDirection()
    local directionb
    local shootAnimb
    local doFlipb = false

    if fireDirectionb == Direction.LEFT then
        directionb = Vector(-1, 0)
        shootAnimb = "FloatShootSide"
        doFlipb = true
    elseif fireDirectionb == Direction.RIGHT then
        directionb = Vector(1, 0)
        shootAnimb = "FloatShootSide"
    elseif fireDirectionb == Direction.DOWN then
        directionb = Vector(0, 1)
        shootAnimb = "FloatShootDown"
    elseif fireDirectionb == Direction.UP then
        directionb = Vector(0, -1)
        shootAnimb = "FloatShootUp"
    end

    if directionb ~= nil and familiarb.FireCooldown == 0 then
        local laser2 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        laser2.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser2.AngleDegrees = 45 -- Rotate laser to match direction
        laser2.Parent = familiarb -- Attach the laser to the familiar
        laser2.Timeout = 15 -- Set duration (adjust as needed)
        laser2.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser5 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        laser5.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser5.AngleDegrees = 135 -- Rotate laser to match direction
        laser5.Parent = familiarb -- Attach the laser to the familiar
        laser5.Timeout = 15 -- Set duration (adjust as needed)
        laser5.CollisionDamage = TEAR_DAMAGE_GABRIEL
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser3 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        laser3.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser3.AngleDegrees = -135 -- Rotate laser to match direction
        laser3.Parent = familiarb -- Attach the laser to the familiar
        laser3.Timeout = 15 -- Set duration (adjust as needed)
        laser3.CollisionDamage = TEAR_DAMAGE_GABRIEL
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser4 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        laser4.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser4.AngleDegrees = -45 -- Rotate laser to match direction
        laser4.Parent = familiarb -- Attach the laser to the familiar
        laser4.Timeout = 15 -- Set duration (adjust as needed)
        laser4.CollisionDamage = TEAR_DAMAGE_GABRIEL
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        spriteb.FlipX = doFlipb
        spriteb:Play(shootAnimb, true)
    end

    if spriteb:IsFinished() then
        spriteb:Play("FloatDown")
    end

    familiarb:FollowParent()
    familiarb.FireCooldown = math.max(familiarb.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateb, FAMILIAR_VARIANT_GABRIEL)

local BAIT_DURATION = 180 -- Time in frames (adjust for balance)

---@param itemUsed CollectibleType
---@param rng RNG
---@param player EntityPlayer
function Mod:OnUseBaitItem(itemUsed, rng, player)
    player:AnimateCollectible(CATALYST_SHEET_ITEM, "UseItem", "PlayerPickupSparkle")
    if itemUsed == CATALYST_SHEET_ITEM then
        -- Find all enemies in the room
        local enemies = Isaac.FindInRadius(player.Position, 1000, EntityPartition.ENEMY)

        for _, enemy in ipairs(enemies) do
            if enemy:IsVulnerableEnemy() then
                enemy:AddEntityFlags(EntityFlag.FLAG_BAITED | EntityFlag.FLAG_CONFUSION) -- Apply effects

                -- Apply red tint
                local redColor = Color(1, 0, 0, 0.25, 1, 0, 0) -- Red RGBA overlay
                enemy:SetColor(redColor, BAIT_DURATION, 1, false, false)

                -- Store a custom timer for removal
                enemy:GetData().BaitTimer = BAIT_DURATION

            end
        end

        return true -- Consume the item
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBaitItem, CATALYST_SHEET_ITEM)

---@param npc EntityNPC
function Mod:UpdateBaitEffect(npc)
    local data = npc:GetData()

    if data.BaitTimer then
        data.BaitTimer = data.BaitTimer - 1

        if data.BaitTimer <= 0 then
            npc:ClearEntityFlags(EntityFlag.FLAG_CONFUSION) -- Remove confusion effect
            data.BaitTimer = nil
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, Mod.UpdateBaitEffect)

---@param player EntityPlayer
function Mod:EvaluateCachee(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(FAIL_ITEM) + player:GetCollectibleNum(FAIL_ITEM)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_FAIL)

    player:CheckFamiliar(FAMILIAR_VARIANT_FAIL, count, rng, CONFIG_FAIL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCachee, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInite(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInit, FAMILIAR_VARIANT_FAIL)

---@param familiar EntityFamiliar
function Mod:HandleUpdatee(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player

    local fireDirection = player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false

    if fireDirection == Direction.LEFT then
        direction = Vector(-1, 0)
        shootAnim = "FloatShootSide"
        doFlip = true
    elseif fireDirection == Direction.RIGHT then
        direction = Vector(1, 0)
        shootAnim = "FloatShootSide"
    elseif fireDirection == Direction.DOWN then
        direction = Vector(0, 1)
        shootAnim = "FloatShootDown"
    elseif fireDirection == Direction.UP then
        direction = Vector(0, -1)
        shootAnim = "FloatShootUp"
    end

    if direction ~= nil and familiar.FireCooldown == 0 then
        local velocity = direction * TEAR_SPEED_FAIL + player:GetTearMovementInheritance(direction)
        local tear = Isaac.Spawn(
            EntityType.ENTITY_TEAR,
            TearVariant.BLOOD,
            0,
            familiar.Position,
            velocity,
            familiar
        ):ToTear()

        tear.Scale = TEAR_SCALE_FAIL
        tear.CollisionDamage = TEAR_DAMAGE_FAIL
        tear.TearFlags = TearFlags.TEAR_BURSTSPLIT -- Makes tears explode into smaller projectiles.

         -- Simulate gravity
         tear.FallingAcceleration = 1.2 -- Adjust gravity effect
         tear.FallingSpeed = -20 -- Initial upward motion
 

        familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdatee, FAMILIAR_VARIANT_FAIL)

local STAT_BOOST_DURATION = 900 -- 30 seconds (30 * 30 frames)
local SFX = SFXManager()

---@param itemUsed CollectibleType
---@param rng RNG
---@param player EntityPlayer
function Mod:OnUseFinalJudgment(itemUsed, rng, player)

    local data = player:GetData()

    -- Prevent activation if item was already used
    if data.FinalJudgmentUsed then
        return false -- Stops reuse
    end

    if itemUsed == FINAL_JUDGMENT_ITEM then
        --local data = player:GetData()
        -- Mark item as used (prevents reuse)
        data.FinalJudgmentUsed = true


        -- Apply temporary effects
        data.FinalJudgmentActive = true
        data.FinalJudgmentTimer = STAT_BOOST_DURATION

        -- **Track if the player already had Holy Grail**
        data.HadHolyGrailBefore = player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_GRAIL)

        -- **Give the passive item to apply the costume**
        player:AddCollectible(FINAL_JUDGMENT_ITEM_VFX, 0, false)

        -- Play activation sound
        SFX:Play(SoundEffect.SOUND_DOGMA_ANGEL_TRANSFORM_END, 1.5, 0, false, 1.5)

        -- Buffs applied for 30 seconds
        player:AddCollectible(CollectibleType.COLLECTIBLE_HOLY_GRAIL, 0, false) -- Grants flight
        player:SetMinDamageCooldown(STAT_BOOST_DURATION * 2) -- Makes player invulnerable
        player:AddCacheFlags(CacheFlag.CACHE_ALL) -- Boost all stats
        player:EvaluateItems()

        -- **Summon a circle of Holy Light beams**
        local numBeams = 8 -- Adjust for more or fewer beams
        local radius = 80 -- Distance from the player
        for i = 1, numBeams do
            local angle = (i / numBeams) * (2 * math.pi) -- Evenly distribute in a circle
            local beamPosition = player.Position + Vector(math.cos(angle), math.sin(angle)) * radius

            local holyBeam = Isaac.Spawn(
                EntityType.ENTITY_EFFECT,
                EffectVariant.CRACK_THE_SKY,
                0,
                beamPosition,
                Vector.Zero,
                nil
            )
        end

        
        return true -- Consume the item
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseFinalJudgment, FINAL_JUDGMENT_ITEM)

-- Apply the actual stat boost
function Mod:EvaluateFinalJudgmentCache(player, cacheFlag)
    local data = player:GetData()

    if data.FinalJudgmentActive then
        -- Boost all stats
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + 50.0
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = math.max(player.MaxFireDelay * 0.25, 1) -- Increases fire rate
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + 50
        end
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = math.min(player.MoveSpeed + 2.0, 2.0)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + 3
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateFinalJudgmentCache)


local LIGHT_BEAM_INTERVAL = 10 -- Adjust interval for beam strikes

---@param player EntityPlayer
function Mod:UpdateFinalJudgmentEffect(player)
    local data = player:GetData()
    local playerDamage = player.Damage -- Get player's current damage value
    local fireDirectionjudge = player:GetFireDirection()
    local directionjudge

    if data.FinalJudgmentActive then
        data.FinalJudgmentTimer = data.FinalJudgmentTimer - 1

        if data.FinalJudgmentTimer == 90 then -- 3 seconds remaining
            SFX:Play(SoundEffect.SOUND_DOGMA_APPEAR_SCREAM, 1.5, 0, false, 1)
        end


        if fireDirectionjudge == Direction.LEFT then
            directionjudge = Vector(-1, 0)
        elseif fireDirectionjudge == Direction.RIGHT then
            directionjudge = Vector(1, 0)
        elseif fireDirectionjudge == Direction.DOWN then
            directionjudge = Vector(0, 1)
        elseif fireDirectionjudge == Direction.UP then
            directionjudge = Vector(0, -1)
        end

        if directionjudge ~= nil and player.FireDelay == 0 then
            local laserjudge = Isaac.Spawn(
                EntityType.ENTITY_LASER,
                LaserVariant.LIGHT_BEAM,
                0,
                player.Position,
                Vector.Zero,
                player
            ):ToLaser()
            laserjudge.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
            laserjudge.AngleDegrees = directionjudge:GetAngleDegrees() -- Rotate laser to match direction
            laserjudge.Parent = player -- Attach the laser to the player
            laserjudge.Timeout = 15 -- Set duration (adjust as needed)
            laserjudge.CollisionDamage = playerDamage

        end

        -- **Summon Holy Light beams on random enemies**
        if data.FinalJudgmentTimer % LIGHT_BEAM_INTERVAL == 0 then
            local enemies = Isaac.FindInRadius(player.Position, 1000, EntityPartition.ENEMY)

            if #enemies > 0 then
                local randomEnemy = enemies[math.random(#enemies)]
                local holyBeam = Isaac.Spawn(
                    EntityType.ENTITY_EFFECT,
                    EffectVariant.CRACK_THE_SKY,
                    0,
                    randomEnemy.Position,
                    Vector.Zero,
                    nil
                )
            end
        end


        -- Effect expiration: Kill player instantly
        if data.FinalJudgmentTimer <= 0 then
            -- **Spawn massive explosion**
            local explosion = Isaac.Spawn(
                EntityType.ENTITY_EFFECT,
                EffectVariant.MAMA_MEGA_EXPLOSION,
                0,
                player.Position,
                Vector.Zero,
                player
            )
            SFX:Play(SoundEffect.SOUND_BEAST_ANGELIC_BLAST, 1.5, 0, false, 1)
            player:RemoveCollectible(CollectibleType.COLLECTIBLE_HOLY_GRAIL)
            player:Kill()
            data.FinalJudgmentActive = false
            player:RemoveCollectible(FINAL_JUDGMENT_ITEM)
            player:RemoveCollectible(FINAL_JUDGMENT_ITEM_VFX)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateFinalJudgmentEffect)

local FRIENDLY_DURATION = 180 -- Time in frames (adjust for balance)

---@param itemUsed CollectibleType
---@param rng RNG
---@param player EntityPlayer
function Mod:OnUseEssenceOfLilithItem(itemUsed, rng, player)
    player:AnimateCollectible(LILITH_ESSENCE, "UseItem", "PlayerPickupSparkle")

    if itemUsed == LILITH_ESSENCE then
        -- Find all enemies in the room
        local enemies = Isaac.FindInRadius(player.Position, 1000, EntityPartition.ENEMY)

        for _, enemy in ipairs(enemies) do
            if enemy:IsVulnerableEnemy() and not enemy:IsBoss() then
                -- **Apply permanent friendly effect**
                enemy:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)

                -- **Apply permanent charmed effect (adds the hearts visual)**
                enemy:AddEntityFlags(EntityFlag.FLAG_CHARM)

                -- **Make them persist between rooms**
                enemy:AddEntityFlags(EntityFlag.FLAG_PERSISTENT)
                
                -- **Remove unnecessary timer logic**
                enemy:GetData().BaitTimer = nil
            end
        end

        return true -- Consume the item
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseEssenceOfLilithItem, LILITH_ESSENCE)


function Mod:OnCacheUpdateAmp(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(AMP_DMG_ITEM) then
            player.Damage = player.Damage * 5
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateAmp)

function Mod:OnAmpItemUse(item, rng, player, flags)
    player:AnimateCollectible(AMP_ITEM, "UseItem", "PlayerPickupSparkle")
    SFX:Play(SoundEffect.SOUND_BATTERYCHARGE, 1.5, 0, false, 0.75)


    if item == AMP_ITEM then
        local familiar = Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FAMILIAR_VARIANT_AMP, 0, player.Position, Vector(0,0), player)
        
        -- Make it stationary
        familiar:AddEntityFlags(EntityFlag.FLAG_NO_PHYSICS_KNOCKBACK | EntityFlag.FLAG_NO_KNOCKBACK)
        --familiar:GetSprite():Play("Appear")

        -- Set data so it applies the aura effect
        familiar:GetData().IsAmpFamiliar = true
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnAmpItemUse, AMP_ITEM)


function Mod:OnFamiliarUpdate(familiar)
    local data = familiar:GetData()
    if data.IsAmpFamiliar then
        familiar.SpriteOffset = Vector(0, -50) -- Moves it higher visually
         -- Track lifespan
         if not data.SpawnTime then
            data.SpawnTime = Game():GetFrameCount() -- Store the current frame count
        end

        -- Check if 20 seconds (600 frames) have passed
        if Game():GetFrameCount() - data.SpawnTime >= 600 then
            -- Remove the damage amp circle before removing the familiar
            if data.AreaIndicator and data.AreaIndicator:Exists() then
                data.AreaIndicator:Remove()
                data.AreaIndicator = nil
            end
            

            -- Reset all players' damage
            for i = 0, Game():GetNumPlayers() - 1 do
                local player = Game():GetPlayer(i)
                player:RemoveCollectible(AMP_DMG_ITEM)
            end

             -- Spawn explosion effect, but ensure it doesn't damage the player
             local explosion = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION, 0, familiar.Position, Vector(0, 0), familiar)
             explosion:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- Prevents explos
            familiar:Remove()
            return -- Exit the function to prevent further updates
        end

        -- Ensure there's only one circle effect tied to the familiar
        if not data.AreaIndicator or not data.AreaIndicator:Exists() then
            local circleEffect = Isaac.Spawn(EntityType.ENTITY_EFFECT, AMP_AREA, 0, familiar.Position, Vector(0, 0), familiar)
            circleEffect:GetData().IsAmpCircle = true
            data.AreaIndicator = circleEffect
        end

        -- Update the circle's position dynamically
        local circleEffect = data.AreaIndicator
        if circleEffect then
            circleEffect.Position = familiar.Position -- Keep it centered on the familiar
            circleEffect.SpriteScale = Vector(0.5, 0.5)
            
            -- Optional: Slight glow effect
            circleEffect.Color = Color(1, 0.6, 0.2, 0.5) -- Semi-transparent orange
        end


        local players = Isaac.GetPlayer()
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
            local distance = player.Position:Distance(familiar.Position)

            if distance < 100 then -- Adjust radius as needed
                --player.Damage = player:GetData().BaseDamage * 5 -- Apply damage boost
                if not player:HasCollectible(AMP_DMG_ITEM) then
                    player:AddCollectible(AMP_DMG_ITEM, 0, false)
                end
            else
                player:RemoveCollectible(AMP_DMG_ITEM)
                --player.Damage = player:GetData().BaseDamage -- Restore base damage
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.OnFamiliarUpdate)

function Mod:HuhUse(item, rng, player, flags)
    player:AnimateCollectible(HUH_ITEM, "UseItem", "PlayerPickupSparkle")
    local room = Game():GetRoom()
    local entities = Isaac.GetRoomEntities()

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            -- Ensure the pedestal already holds an item before rerolling
            if pedestal.SubType ~= 0 then
                local newItem = CollectibleType.COLLECTIBLE_POOP
                pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
            end
        end
    end
    return true                   
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.HuhUse, HUH_ITEM) 

-- Function to count quality 0 items in player's inventory
local function CountQuality0Items(player)
    local count = 0
    for itemID = 1, Isaac.GetItemIdByName("Death Certificate") do -- Loops through all items
        if player:HasCollectible(itemID) then
            local config = Isaac.GetItemConfig():GetCollectible(itemID)
            if config and config.Quality == 0 then
                count = count + 1
            end
        end
    end
    return count
end

-- Apply damage boost based on quality 0 item count
function Mod:OnCacheUpdateComp(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(COMP_ITEM) then
            local quality0Count = CountQuality0Items(player)
            player.Damage = player.Damage + (quality0Count * 1)
        end
    end
end

function Mod:OnItemPickupComp(player)
    player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
    player:EvaluateItems()
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateComp)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnItemPickupComp)

----------------------------------------------------------------------------------------
--- Trinket Code Below

function Mod:OnCacheUpdateClover(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_LUCK then
        if player:HasTrinket(CLOVER_TRINKET) then
            player.Luck = player.Luck + 1
        end
    end
end

function Mod:OnTrinketPickupClover(player)
    player:AddCacheFlags(CacheFlag.CACHE_LUCK)
    player:EvaluateItems()
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateClover)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnTrinketPickupClover)

local REROLL_CHANCE = 0.25
local rerolledPedestals = {} -- Table to track rerolled pedestals

function Mod:OnPickupInitOrb(pickup)
    local orbsfx = SFXManager()

    if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
        local seed = pickup.InitSeed
        if not rerolledPedestals[seed] then -- Ensures each pedestal rerolls only once
            local player = Isaac.GetPlayer(0) -- Gets the player
            if player:HasTrinket(ORB_TRINKET) then
                local itemConfig = Isaac.GetItemConfig():GetCollectible(pickup.SubType)
                if itemConfig and itemConfig.Quality == 0 then
                    if math.random() < REROLL_CHANCE then
                        orbsfx:Play(SoundEffect.SOUND_EDEN_GLITCH) -- Play sound effect
                        --pickup:TryRemove() -- Removes the existing pedestal
                        pickup:Morph(pickup.Type, pickup.Variant, game:GetItemPool():GetCollectible(ItemPoolType.POOL_TREASURE, true, pickup.InitSeed), true, true) -- Rerolls item
                        rerolledPedestals[seed] = true -- Marks this pedestal as rerolled
                    end
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Mod.OnPickupInitOrb)

local POLAROID_ID = CollectibleType.COLLECTIBLE_POLAROID
local NEGATIVE_ID = CollectibleType.COLLECTIBLE_NEGATIVE

function Mod:OnItemPickupPhoto(player)
    if player:HasTrinket(PHOTO_TRINKET) then
        if player:HasCollectible(POLAROID_ID) and not player:HasCollectible(NEGATIVE_ID) then
            player:AddCollectible(NEGATIVE_ID)
        elseif player:HasCollectible(NEGATIVE_ID) and not player:HasCollectible(POLAROID_ID) then
            player:AddCollectible(POLAROID_ID)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnItemPickupPhoto)

local seenCurses = {} -- Stores curses that have already appeared

function Mod:OnNewLevel()
    local game = Game()
    local level = game:GetLevel()
    local player = Isaac.GetPlayer(0) -- Gets the main player

    if player:HasTrinket(CANDLE_TRINKET) then
        local currentCurse = level:GetCurses()

        if seenCurses[currentCurse] then
            -- Already seen this curse, reroll to a new one
            local newCurse = Mod:SelectNewCurse()
            level:AddCurse(newCurse, true)
        end

        -- Mark this curse as seen
        seenCurses[currentCurse] = true
    end
end

function Mod:SelectNewCurse()
    local availableCurses = {
        LevelCurse.CURSE_OF_DARKNESS,
        LevelCurse.CURSE_OF_THE_LOST,
        LevelCurse.CURSE_OF_MAZE,
        LevelCurse.CURSE_OF_BLIND,
        LevelCurse.CURSE_OF_THE_UNKNOWN
    }

    -- Remove already seen curses
    for i = #availableCurses, 1, -1 do
        if seenCurses[availableCurses[i]] then
            table.remove(availableCurses, i)
        end
    end

    if #availableCurses > 0 then
        return availableCurses[math.random(1, #availableCurses)]
    end

    return LevelCurse.CURSE_NONE -- If all curses were seen, remove curses
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewLevel)


----------------------------------------------------------------------------------------
--- Room Code For Essence Reliquary Below.

local RELIQUARY_POOL = {
    LILITH_ESSENCE
    -- Add more items as needed
}

function GetRandomCustomItem()
    local index = math.random(#RELIQUARY_POOL)
    return RELIQUARY_POOL[index] -- Returns a random item from the pool
end


-- Helper function to check if a table contains a value
function TableContains(tbl, value)
    for _, v in ipairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

function Mod:FilterItemPoolOnRoomEntry()
    local room = Game():GetRoom()
    local level = Game():GetLevel()
    local roomDesc = level:GetRoomByIdx(level:GetCurrentRoomIndex())
    local roomID = roomDesc.GridIndex -- This gives you the unique room ID

    -- Define Room IDs that should use the custom pool
    local customVaultRooms = {6969} -- Replace with your actual Room IDs

    -- Check if the current room matches your custom rooms
    if roomID == -3 then
        local itemPool = Game():GetItemPool()

        -- Find all collectible pedestals and reroll them
        for _, entity in ipairs(Isaac.GetRoomEntities()) do
            if entity.Type == EntityType.ENTITY_PICKUP then
                local pickup = entity:ToPickup()
                if pickup and pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                    local newItem = GetRandomCustomItem()
                    pickup:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false)
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.FilterItemPoolOnRoomEntry)

function OnTrinketPickup(player)
    local player = Game():GetPlayer(1) -- Try different indices if needed
    if player:HasTrinket(RELIQUARY_TRINKET) then
        local game = Game()
        local level = game:GetLevel()
        local TELEPORT_ROOM_ID = -3 -- Replace with your special room ID
        Isaac.ExecuteCommand("goto s.library.6969")
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, OnTrinketPickup)

function OnNewRoom()
    local player = Isaac.GetPlayer(0)
    if player:HasTrinket(RELIQUARY_TRINKET) then
        player:TryRemoveTrinket(RELIQUARY_TRINKET)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, OnNewRoom)
