local Mod = RegisterMod("Mod", 1)

local itemConfig = Isaac.GetItemConfig()

local templateType = Isaac.GetPlayerTypeByName("Template", false)
local pontiusType = Isaac.GetPlayerTypeByName("Pontius", false)
local TAINTED_PONTIUS_TYPE = Isaac.GetPlayerTypeByName("Pontius", true)
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
local BOND_ITEM = Isaac.GetItemIdByName("Eternal Bond")
local FAMILIAR_VARIANT_BOND = Isaac.GetEntityVariantByName("Bond Orb")

local ANATOMY_ITEM = Isaac.GetItemIdByName("Anatomy Textbook")
local BLANK_SLATE_ITEM = Isaac.GetItemIdByName("Blank Slate")

local ISAAC_ESSENCE = Isaac.GetItemIdByName("Essence of Isaac")
local MAGDALENE_ESSENCE = Isaac.GetItemIdByName("Essence of Magdalene")
local CAIN_ESSENCE = Isaac.GetItemIdByName("Essence of Cain")
local JUDAS_ESSENCE = Isaac.GetItemIdByName("Essence of Judas")
local BLUE_BABY_ESSENCE = Isaac.GetItemIdByName("Essence of ???")
local EVE_ESSENCE = Isaac.GetItemIdByName("Essence of Eve")
local SAMSON_ESSENCE = Isaac.GetItemIdByName("Essence of Samson")
local AZAZEL_ESSENCE = Isaac.GetItemIdByName("Essence of Azazel")
local LAZARUS_ESSENCE = Isaac.GetItemIdByName("Essence of Lazarus")
local LAZARUS_ESSENCE_UNLOCKED = Isaac.GetItemIdByName("Unlocked Essence of Lazarus")
local EDEN_ESSENCE = Isaac.GetItemIdByName("Essence of Eden")
local KEEPER_ESSENCE = Isaac.GetItemIdByName("Essence of Keeper")
local APOLLYON_ESSENCE = Isaac.GetItemIdByName("Essence of Apollyon")
local APOLLYON_ESSENCE_VFX = Isaac.GetItemIdByName("Essence of Apollyon VFX")
local BETHANY_ESSENCE = Isaac.GetItemIdByName("Essence of Bethany")
local MATT_ESSENCE = Isaac.GetItemIdByName("Essence of Matt")
local PONTIUS_ESSENCE = Isaac.GetItemIdByName("Essence of Pontius")
local LOST_ESSENCE = Isaac.GetItemIdByName("Essence of The Lost")
local JACOB_AND_ESAU_ESSENCE = Isaac.GetItemIdByName("Essence of Jacob and Esau")
local FORGOTTEN_ESSENCE = Isaac.GetItemIdByName("Essence of The Forgotten")
local STAR_OF_DAVID = Isaac.GetItemIdByName("Star of David")
local GUN_ITEM = Isaac.GetItemIdByName("A Gun")
local APPETIZER_ITEM = Isaac.GetItemIdByName("Appetizer")
local MORNING_SNACK_ITEM = Isaac.GetItemIdByName("Early Morning Snack")
local KINGSLAYER_ITEM = Isaac.GetItemIdByName("Kingslayer")




function Mod:GiveCostumesOnInit(player)
    if player:GetPlayerType() ~= templateType then
        return -- End the function early. The below code doesn't run, as long as the player isn't Gabriel.
    end

    player:AddNullCostume(characterCostume)
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Mod.GiveCostumesOnInit)

local game = Game()

----------------------------------------------------------------------------------------
-- Character code for Matt below.

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
-- Code for the tainted version of Matt below

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

----------------------------------------------------------------------------------------
-- Character code for Pontius below.

local Pontius = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.20,
    FIREDELAY = 10, -- your tears stat is "30/(FIREDELAY+1)"
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

-- Use this to give pontius modded staring items if need be.
--[[ function Pontius:onPlayerInitPontius(player)
    if player:GetPlayerType() == pontiusType then
        player:SetPocketActiveItem(LUCKY_DICE_ID, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(LUCKY_DICE_ID)
    end
end ]]

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Pontius.onPlayerInitPontius)

function Pontius:onCachePontius(player, cacheFlag)
    if player:GetPlayerType() == pontiusType then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Pontius.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Pontius.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Pontius.DAMAGE
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Pontius.RANGE
            player.TearHeight = player.TearHeight + Pontius.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Pontius.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Pontius.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Pontius.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Pontius.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Pontius.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Pontius.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Pontius.onCachePontius)

local spearCooldown = 0 -- Tracks time between laser shots
local spearFireRate = 30 -- Adjust this value for desired laser speed

function Mod:OnPlayerUpdatePontius(player)
    if player:GetPlayerType() ~= pontiusType then return end -- Only apply to Pontius
    local data = player:GetData()
    local playerDamage = player.Damage -- Get player's current damage value
    local fireDirectionspear = player:GetFireDirection()
    local directionspear
    player.FireDelay = player.MaxFireDelay
    -- Handle laser cooldown
    if spearCooldown > 0 then
        spearCooldown = spearCooldown - 1
    end

    if fireDirectionspear == Direction.LEFT then
        directionspear = Vector(-1, 0)
    elseif fireDirectionspear == Direction.RIGHT then
        directionspear = Vector(1, 0)
    elseif fireDirectionspear == Direction.DOWN then
        directionspear = Vector(0, 1)
    elseif fireDirectionspear == Direction.UP then
        directionspear = Vector(0, -1)
    end

    if directionspear ~= nil and spearCooldown == 0 then
        local spear = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.ELECTRIC,
            0,
            player.Position,
            Vector.Zero,
            player
        ):ToLaser()

        -- Apply custom visual effect
        if spear then
            local sprite = spear:GetSprite()
            sprite:Load("gfx/pontius_spear_throw.anm2", true) -- Load your custom animation
            sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays
        end

        -- Stop the default Holy Light sound (ID: 153)
        local sfx = SFXManager()
        sfx:Stop(SoundEffect.SOUND_ANGEL_BEAM) -- Prevent default sound from playing


        -- Play custom sound effect
        local sfx = SFXManager()
        sfx:Play(SoundEffect.SOUND_SWORD_SPIN) -- Replace with your custom sound ID


        spear.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        spear.AngleDegrees = directionspear:GetAngleDegrees() -- Rotate laser to match direction
        spear.Parent = player -- Attach the laser to the player
        spear.Timeout = 1 -- Set duration (adjust as needed)
        spear.CollisionDamage = playerDamage * 10
        spearCooldown = spearFireRate -- Reset cooldown
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdatePontius)


----------------------------------------------------------------------------------------
-- Code for the tainted version of Pontius below

local Pontiusb = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 2.0,
    FIREDELAY = 5, -- your tears stat is "30/(FIREDELAY+1)"
    DAMAGE = 10.0, -- is only the damage stat, not damage multiplier
    RANGE = 300, -- your range stat is "40*RANGE"
    SHOTSPEED = 1.00,
    LUCK = 0.00,
    TEARHEIGHT = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFALLINGSPEED = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFLAG = 0, -- Determines some behaviors of your tears, https://wofsauge.github.io/IsaacDocs/rep/enums/TearFlags.html
    TEARCOLOR = Color(1.0, 1.0, 1.0, 1.0, 0, 0, 0), -- r1.0 g1.0 b1.0 a1.0 0r 0g 0b (the last three are offsets)
    FLYING = true
}

--[[ function Pontiusb:onPlayerInitPontiusb(player)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        player:SetPocketActiveItem(DULL_COIN_ID, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DULL_COIN_ID)
    end
end ]]

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Pontiusb.onPlayerInitPontiusb)


function Pontiusb:onCachePontiusb(player, cacheFlag)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Pontiusb.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Pontiusb.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Pontiusb.DAMAGE * 1.25
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Pontiusb.RANGE
            player.TearHeight = player.TearHeight + Pontiusb.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Pontiusb.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Pontiusb.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Pontiusb.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Pontiusb.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Pontiusb.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Pontiusb.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Pontiusb.onCachePontiusb)

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, function(_, player)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        -- If the player has lost Spirit Sword, restore it
        if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIRIT_SWORD) then
            player:AddCollectible(CollectibleType.COLLECTIBLE_SPIRIT_SWORD)

            -- Find all passive collectibles (excluding Spirit Sword and active items)
            local inventory = {}
            for i = 1, CollectibleType.NUM_COLLECTIBLES do
                local itemConfig = Isaac.GetItemConfig():GetCollectible(i)
                if player:HasCollectible(i) and i ~= CollectibleType.COLLECTIBLE_SPIRIT_SWORD and itemConfig and itemConfig.Type ~= ItemType.ITEM_ACTIVE then
                    table.insert(inventory, i)
                end
            end

            -- Remove a random passive item
            if #inventory > 0 then
                local itemToRemove = inventory[math.random(#inventory)]
                player:RemoveCollectible(itemToRemove)
            end
        end
    end
end)

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, function(_, entity, amount, damageFlags, source, countdown)
    local player = entity:ToPlayer()
    if player and player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        -- Force player death instantly
        player:Die()
    end
end, EntityType.ENTITY_PLAYER)

function Mod:GrantInvulnerabilityOnHitPontius(entity, amount, flags, source, countdown)
    local player = Isaac.GetPlayer(0)

    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE and source and source.Entity then
        player:SetMinDamageCooldown(60) -- 1 second (30 frames)
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.GrantInvulnerabilityOnHitPontius)

local bossRoomSoulSpawned = false -- Tracks if the card has already been spawned

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, function()
    local game = Game()
    local room = game:GetRoom()
    local player = Isaac.GetPlayer(0)

    -- Ensure the player is the tainted character
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        -- Check if the current room is a boss room and the boss is defeated
        if room:GetType() == RoomType.ROOM_BOSS and room:GetAliveEnemiesCount() == 0 and bossRoomSoulSpawned == false then
            -- Spawn Soul of the Lost at the center of the room
            Isaac.Spawn(
                EntityType.ENTITY_PICKUP,
                PickupVariant.PICKUP_TAROTCARD,
                Card.CARD_SOUL_LOST,
                room:GetCenterPos(),
                Vector.Zero,
                player
            )
            bossRoomSoulSpawned = true -- Mark that Soul of the Lost has been spawned
        end
    end
    -- Reset flag when leaving the boss room
    if bossRoomSoulSpawned and room:GetType() ~= RoomType.ROOM_BOSS then
        bossRoomSoulSpawned = false -- Allow spawning again in the next boss fight
    end
end)

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
                    AZAZEL_ESSENCE,
                    CAIN_ESSENCE,
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
    EID:addCollectible(LUCKY_DICE_ID, "Reroll all item pedestals in the current room.#{{Warning}} Items rerolled will be chosen from a special item pool consisting of luck/chance based items.", "Lucky Coin")
    EID:addCollectible(DULL_COIN_ID, "Rerolls all item pedestals in the room.#{{Warning}} Items will always be rerolled into an item of 1 lower quality than the original item.#Using Dull Coin with no item pedestals in the room containing items with a quality above 1 will remove a random quality 0 item from Isaac's inventory and trigger the Berserk! state.#Triggering the Berserk! state in this way charges Isaac's active item by 12 bars.", "Dull Coin")
    EID:addCollectible(HATRED_ITEM, "{{ArrowDown}} Gives the player 11 broken hearts.#{{ArrowUp}} +1 damage.#{{ArrowUp}} +50% damage multiplier.#{{ArrowUp}} Become invulnerable briefly upon damaging an enemy.", "Unholy Mantle")
    EID:addCollectible(URIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires a holy light beam forward.#Scales with Isaac's damage.", "Lil' Uriel")
    EID:addCollectible(GABRIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires 4 holy light beams in an 'X' pattern.#Scales with Isaac's damage.", "Lil' Gabriel")
    EID:addCollectible(CATALYST_SHEET_ITEM, "No no no NO NO NO nO no AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "Catalyst Character Sheet")
    EID:addCollectible(FAIL_ITEM, "Familiar that fires Haemolaceria tears.#Tears deal 10 damage and split into multiple smaller tears upon contact with a surface or enemy.", "Failed Abortion")
    EID:addCollectible(FINAL_JUDGMENT_ITEM, "One time use active item that spawns a circle of light beams around Isaac, gives Isaac +50 damage, 4x fire rate, +1.25 range, +2 speed, and +3 luck along with total invulnerability, rapid fire holy light beams, and random light beams from the sky targetting enemies for 30 seconds.#{{Warning}} Upon expiration, this effect causes a large explosion in the current room and immediately kills Isaac.", "Final Judgement")
    EID:addCollectible(FINAL_JUDGMENT_ITEM_VFX, "I exist to make the visuals work!", "Final Judgement VFX")
    EID:addCollectible(LILITH_ESSENCE, "Makes all enemies in the current room friendly upon use.", "Essence of Lilith")
    EID:addBirthright(templateType, "{{ArrowUp}} +10 luck#{{ArrowUp}} Gives a scaling damage up equal to 50% of Isaac's luck stat.")
    EID:addBirthright(TAINTED_TEMPLATE_TYPE, "Grants a random passive quality 4 item.")
    EID:addTrinket(RELIQUARY_TRINKET, "{{Warning}} Picking up this trinket will immediately teleport Isaac to a special Essence Reliquary room.#This room will contain an item from a unique item pool containing various items relating to character's gimmicks.", "Reliquary Access Card")
    EID:addCollectible(AMP_ITEM, "Spawn a familiar which projects a damage amplification area onto the ground.#{{ArrowUp}} Standing within this area will multiply Isaac's damage by 5.#{{Warning}} Familiar expires after 20 seconds.", "Amplifier")
    EID:addCollectible(HUH_ITEM, "Rerolls all item pedestals in the room into The Poop.", "Huh?")
    EID:addTrinket(CLOVER_TRINKET, "{{ArrowUp}} +1 luck.", "4 Leaf Clover")
    EID:addTrinket(ORB_TRINKET, "Grants a 25% chance for quality 0 items to be automatically rerolled once.", "Orb Shard")
    EID:addTrinket(PHOTO_TRINKET, "Picking up either The Polaroid or The Negative will grant the opposite item.", "Stitched Photo")
    EID:addTrinket(CANDLE_TRINKET, "Prevents seeing the same curse twice while held.", "Black Candle Wick")
    EID:addCollectible(BOND_ITEM, "Become invincible and dash forward leaving behind creep which lasts 10 seconds that deals damage to enemies and heals Isaac's red hearts.#This effect can be used up to 4 times before the item needs to be recharged.", "Eternal Bond")
    EID:addCollectible(COMP_ITEM, "{{ArrowUp}} Grants +1 damage for every quality 0 item Isaac holds.")
    EID:addCollectible(ANATOMY_ITEM, "Grants 1 bone heart on use.")
    EID:addCollectible(BLANK_SLATE_ITEM, "Counts as an item for every transformation in the game.#Doesn't have any effect on its own.", "Blank Slate")
    EID:addCollectible(ISAAC_ESSENCE, "Spawns 3 item pedestals containing quality 4 items.#{{Warning}} Taking one of the items will cause Isaac to lose this item and cause the other two item pedestals to dissapear.", "Essence of Isaac")
    EID:addCollectible(MAGDALENE_ESSENCE, "Heals Isaac to full health on use.", "Essence of Magdalene")
    EID:addCollectible(CAIN_ESSENCE, "Gives 20 coins, keys, and bombs upon pickup.#At the start of every new floor, spawns a golden penny, golden key, and golden bomb.", "Essence of Cain")
    EID:addCollectible(JUDAS_ESSENCE, "{{ArrowUp}} Gives +1 damage.#{{ArrowUp}} Grants a 2.5x damage multiplier when Isaac has 3 total hearts (of any type) or less.", "Essence of Judas")
    EID:addCollectible(BLUE_BABY_ESSENCE, "Entering a new room spawns 10 blue flies.", "Essence of ???")
    EID:addCollectible(EVE_ESSENCE, "{{ArrowUp}} Grants +30 damage for the current room upon reaching 1 total heart or less.#This effect can trigger once per floor.", "Essence of Eve")
    EID:addCollectible(SAMSON_ESSENCE, "Dash forward becoming invulnerable.#The dash deals 10 damage to enemies.#{{ArrowUp}} The dash gains +0.4 damage for every enemy it kills.", "Essence of Samson")
    EID:addCollectible(AZAZEL_ESSENCE, "5% chance to fire a tear that causes Isaac to fire a large brimstone beam on contact with something.#{{Luck}} 100% chance at 19 luck.", "Essence of Azazel")
    EID:addCollectible(LAZARUS_ESSENCE, "{{ArrowUp}} Grants +1 damage, a +50% damage multiplier, -1 tear delay, +0.5 speed, +3.75 range, +1 shot speed, and +2 luck upon dying and being revived.#{{Warning}} Essence of Lazarus can only trigger once.#{{Warning}} This item will NOT revive you, it is not an extra life.", "Essence of Lazarus")
    EID:addCollectible(LAZARUS_ESSENCE_UNLOCKED, "{{ArrowUp}} +1 damage.#{{ArrowUp}} +50% damage multiplier.#{{ArrowUp}} -1 tear delay.#{{ArrowUp}} +0.5 speed.#{{ArrowUp}} +3.75 range.#{{ArrowUp}} +1 shot speed.#{{ArrowUp}} +2 luck.", "Unlocked Essence of Lazarus")
    EID:addCollectible(EDEN_ESSENCE, "One time use active that rerolls all held passive items.#Rerolls have an extreme tendency to give high quality items.", "Essence of Eden")
    EID:addCollectible(KEEPER_ESSENCE, "Grants 99 cents on pickup.#Infinite money for the current floor.", "Essence of Keeper")
    EID:addCollectible(APOLLYON_ESSENCE, "For 8 seconds gain:#{{ArrowUp}} Invincibility#{{ArrowUp}} 40 contact damage to enemies.#For every enemy killed during Essence of Apollyon's effect, permanently gain +0.05 damage.", "Essence of Apollyon")
    EID:addCollectible(BETHANY_ESSENCE, "Grants a random Book of Virtues wisp when entering a new room.", "Essence of Bethany")
    EID:addCollectible(MATT_ESSENCE, "{{ArrowUp}} +3 luck.#Grants 2 items from the Lucky Coin item pool.", "Essence of Matt")
    EID:addCollectible(PONTIUS_ESSENCE, "Throw one of Pontius' spears in the current attack direction.#Spears deal 10x Isaac's damage.", "Essence of Pontius")
    EID:addCollectible(LOST_ESSENCE, "For the current room:#{{Warning}} Become the lost.#{{ArrowUp}} +20 damage.", "Essence of The Lost")
    EID:addCollectible(JACOB_AND_ESAU_ESSENCE, "Summon Esau as a helper for the current room.", "Essence of Jacob and Esau")
    EID:addCollectible(FORGOTTEN_ESSENCE, "Summon The Forgotten as a helper for the current room.", "Essence of The Forgotten")
    EID:addCollectible(STAR_OF_DAVID, "{{ArrowUp}} 10% chance to fire star of david tears which deal 30% more damage.#{{Luck}} 100% chance at 9 luck.#{{ArrowUp}} 5% chance for enemies to drop a golden heart on death.#{{Luck}} 50% chance at 9 luck.", "Star of David")
    EID:addCollectible(GUN_ITEM, "Fire a tear that deals 10x Isaac's damage plus 10 flat damage.#{{Warning}} The tear fired is wildly inaccurate.", "A Gun")
    EID:addCollectible(APPETIZER_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.", "Appetizer")
    EID:addCollectible(MORNING_SNACK_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.", "Early Morning Snack")
    EID:addCollectible(KINGSLAYER_ITEM, "{{ArrowUp}} Gain +50% damage when in an uncleared boss room.", "Kingslayer")

end

--Function to handle dice item rerolls.
--Works by setting an item pool using item IDs and then rerolling items within the pool into something from the set list of items.
--To add a new item just add its ID to the list.
function Mod:LuckyDiceUse(item, rng, player, flags)
    player:AnimateCollectible(LUCKY_DICE_ID, "UseItem", "PlayerPickupSparkle")
    local predefinedItems = {
        AZAZEL_ESSENCE,
        STAR_OF_DAVID,
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

local DASH_SPEED = 10 -- Adjust dash speed
local DASH_DURATION = 10 -- Frames per dash
local NUM_DASHES = 1 -- Total dashes
local CREEP_DURATION = 300 -- 10 seconds (Game runs at 30fps)
local DASH_COOLDOWN = 60 -- Cooldown between dashes
local MAX_CHAIN_DASHES = 3 -- Limit to 3 chained dashes
local ORIGINAL_MAX_CHAIN_DASHES = MAX_CHAIN_DASHES
local RECHARGE_TIME = 60 -- 1 second at 30 FPS
local i = 60

local lastMoveVec = {} -- Store last movement direction for each player
local dashingPlayers = {} -- Tracks players who are dashing

function Mod:OnUseBond(_, _, player)
    local bondsfx = SFXManager()
    if not dashingPlayers[player.Index] then
        dashingPlayers[player.Index] = { dashesLeft = NUM_DASHES, dashTimer = DASH_DURATION, cooldown = DASH_COOLDOWN, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0 }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        bondsfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1.5, 0, false, 0.75)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateBond()

    end
    --return true
end

local orbSprite = Sprite()
orbSprite:Load("gfx/bond_orb.anm2", true)
--orbSprite:Play("Idle", true)
local activeWisps = {} -- Track spawned wisps per player
local activeFamiliars = {} -- Track spawned familiars per player

local function SpawnOrbEffect(player)
    local orb = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.WISP, 0, player.Position, Vector(0, 0), player)
    orb.Color = Color(0.7, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5) -- Dark purple
    orb.SpriteScale = Vector(2, 2) -- Adjust size for visibility
    orb:ToEffect():SetTimeout(7) -- Lasts for the duration of the dash
    activeWisps[player.Index] = orb -- Store reference
    
    
    return orb
end

function Mod:OnUpdateBond()
    local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData = dashingPlayers[player.Index]

        if dashData then
            if dashData.dashTimer > 0 then
                -- Hide player's default sprite
                player:GetSprite():SetFrame(1000) -- Forces an empty animation frame
                player.SpriteScale = Vector(0, 0) -- Shrinks player to "invisible"

                -- Spawn an orb effect
                local orb = SpawnOrbEffect(player)

                -- Spawn the Bond Orb if it hasn't been spawned yet
                if not activeFamiliars[player.Index] then
                    local orb = Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FAMILIAR_VARIANT_BOND, 0, player.Position, Vector(0, 0), player)
                    
                    activeFamiliars[player.Index] = orb
                end

                -- Keep orb centered on the player
                if activeFamiliars[player.Index] then
                    activeFamiliars[player.Index].Position = player.Position
                end

                -- Detect player's held direction
                local moveVec = Vector(0, 0)

                if Input.IsActionPressed(ButtonAction.ACTION_LEFT, player.ControllerIndex) then
                    moveVec.X = moveVec.X - 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_RIGHT, player.ControllerIndex) then
                    moveVec.X = moveVec.X + 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_UP, player.ControllerIndex) then
                    moveVec.Y = moveVec.Y - 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_DOWN, player.ControllerIndex) then
                    moveVec.Y = moveVec.Y + 1
                end

                -- If the player is actively moving, update lastMoveVec
                if moveVec:Length() > 0 then
                    lastMoveVec[player.Index] = moveVec:Normalized() * DASH_SPEED
                end

                -- Use last movement direction if no input is given
                local finalMoveVec = lastMoveVec[player.Index] or Vector(DASH_SPEED, 0)
                
                -- Apply movement
                player.Velocity = finalMoveVec


                dashData.dashTimer = dashData.dashTimer - 1

                -- Spawn creep at player's position
                local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_RED, 0, player.Position, Vector(0, 0), player)
                creep:ToEffect():SetTimeout(CREEP_DURATION)
                creep.Color = Color(1.0, 1.0, 1.0, 0.5, -0.2, -0,5, -0.6) -- RGB: (Red=1, Green=0, Blue=1), Al
                -- Adjust creep size
                creep.SpriteScale = Vector(2.5, 2.5) -- Increase size (1.0 is default)
                -- Change creep color to purple
            else
                -- Restore player's normal sprite when dash ends
                player:GetSprite():SetFrame(0)
                player.SpriteScale = Vector(1, 1)
                -- Remove the Bond Orb when the dash ends
                if activeFamiliars[player.Index] then
                    activeFamiliars[player.Index]:Remove()
                    activeFamiliars[player.Index] = nil
                end
                if activeWisps[player.Index] then
                    activeWisps[player.Index]:Remove()
                    activeWisps[player.Index] = nil
                end



                if MAX_CHAIN_DASHES > 0 and DASH_COOLDOWN >= 0 and MAX_CHAIN_DASHES > 0 then
                    player:SetActiveCharge(12)
                    MAX_CHAIN_DASHES = MAX_CHAIN_DASHES - 1
                    print(DASH_COOLDOWN)
                    print(MAX_CHAIN_DASHES)
                elseif DASH_COOLDOWN == 0 or MAX_CHAIN_DASHES == 0 then
                    player:SetActiveCharge(0)
                    MAX_CHAIN_DASHES = 3
                end
                dashingPlayers[player.Index] = nil
                player:SetMinDamageCooldown(0)
            end
        end
    end
end

-- Make the creep heal friendly players on contact
function Mod:OnCreepUpdate(creep)
    for _, entity in ipairs(Isaac.FindInRadius(creep.Position, 30, EntityPartition.PLAYER)) do
        local player = entity:ToPlayer()
        if player and not player:IsDead() and player:GetMaxHearts() > player:GetHearts() then
            player:AddHearts(1) -- Grants healing
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.OnCreepUpdate, EffectVariant.PLAYER_CREEP_RED)
Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBond, BOND_ITEM)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateBond)

function Mod:AnatomyBookUse(item, rng, player, flags)
    player:AnimateCollectible(ANATOMY_ITEM, "UseItem", "PlayerPickupSparkle")
    -- Grant the player a Bone Heart
    player:AddBoneHearts(1)
    return true -- Prevents extra effects from triggering                  
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.AnatomyBookUse, ANATOMY_ITEM) 

local function GetQuality4Item()
    local quality4Items = {} -- Store all Quality 4 items
    for i = 1, CollectibleType.NUM_COLLECTIBLES do
        local itemConfig = Isaac.GetItemConfig():GetCollectible(i)
        if itemConfig and itemConfig.Quality == 4 then
            table.insert(quality4Items, i)
        end
    end
    return quality4Items[math.random(#quality4Items)] -- Return a random Quality 4 item
end

local pedestalPositions = {
    Vector(320, 260), -- Left pedestal
    Vector(400, 260), -- Middle pedestal
    Vector(480, 260)  -- Right pedestal
}
local pedestals = {} -- Store spawned pedestals
local pedestalsSpawned = false -- Tracks whether pedestals have been spawned

-- Reset the flag when starting a new run
function Mod:OnNewGameIsaacEssence(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        pedestalsSpawned = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameIsaacEssence) -- Reset flag between runs


function Mod:OnPickupIsaacEssence(_, player)
    local player = Isaac.GetPlayer(0) -- Gets the player
    -- Spawn 3 item pedestals with Quality 4 items upon pickup
    if player:HasCollectible(ISAAC_ESSENCE) and not pedestalsSpawned then
        pedestalsSpawned = true -- Mark the effect as triggered
        for _, pos in ipairs(pedestalPositions) do
            local itemID = GetQuality4Item() -- Get a Quality 4 item
            local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, pos, Vector.Zero, player)
            pedestal:GetData().elitePedestal = true -- Mark as part of selection
            table.insert(pedestals, pedestal)
        end
    end
end


function Mod:OnItemTaken(pickup, collider)
    local player = collider:ToPlayer() -- Ensure collider is a player
    if player then
        if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE and pickup:GetData().elitePedestal then
            -- Remove all other pedestals once player picks one
            for _, otherPedestal in ipairs(pedestals) do
                if otherPedestal ~= pickup then
                    otherPedestal:Remove()
                end
            end
            pedestals = {} -- Clear stored pedestals
            player:RemoveCollectible(ISAAC_ESSENCE)
            pedestalsSpawned = false
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupIsaacEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnItemTaken, PickupVariant.PICKUP_COLLECTIBLE) -- Detect item selection

function Mod:MagEssenceUse(item, rng, player, flags)
    local player = Isaac.GetPlayer(0) -- Gets the player
    player:AnimateCollectible(MAGDALENE_ESSENCE, "UseItem", "PlayerPickupSparkle")
    local healsfx = SFXManager()
    healsfx:Play(SoundEffect.SOUND_VAMP_DOUBLE) -- Play sound effect
    -- Grant the player Full HP.
    player:SetFullHearts()

    return true -- Prevents extra effects from triggering                  
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.MagEssenceUse, MAGDALENE_ESSENCE) 

local cain_essence_triggered = false

-- Reset the flag when starting a new run
function Mod:OnNewGame(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        cain_essence_triggered = false
    end
end


-- Function to grant resources upon pickup
function Mod:OnPickupCainEssence(_, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(CAIN_ESSENCE) and cain_essence_triggered == false then
        cain_essence_triggered = true
        player:AddCoins(20)
        player:AddKeys(20)
        player:AddBombs(20)
    end
end

-- Function to spawn golden items at the start of each floor
function Mod:OnNewFloor()
    local game = Game()
    local level = game:GetLevel()
    local room = game:GetRoom()
    local player = Isaac.GetPlayer(0)

    -- Ensure player has the item before spawning golden rewards
    if player:HasCollectible(CAIN_ESSENCE) then
        local spawnPositions = {
            room:GetCenterPos(), -- Golden Key
            room:GetCenterPos() + Vector(-40, 0), -- Golden Penny
            room:GetCenterPos() + Vector(40, 0) -- Golden Bomb
        }

        -- Spawn golden rewards
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_KEY, KeySubType.KEY_GOLDEN, spawnPositions[1], Vector.Zero, player)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, CoinSubType.COIN_GOLDEN, spawnPositions[2], Vector.Zero, player)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, BombSubType.BOMB_GOLDEN, spawnPositions[3], Vector.Zero, player)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGame) -- Reset flag between runs
Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupCainEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloor) -- Spawn golden items at the start of each floor

function Mod:OnCacheUpdateJudasEssence(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(JUDAS_ESSENCE) then
            -- Base bonus: +1 damage
            local damageBonus = 1
            
            -- Calculate total hearts (Red, Soul, Bone converted to half-hearts)
            local totalHearts = player:GetHearts() + player:GetSoulHearts() + player:GetBlackHearts() + player:GetRottenHearts() + (player:GetBoneHearts() * 2)

            -- Apply 2.5x multiplier if total health is 3 hearts (6 half-hearts) or less
            if totalHearts <= 6 then
                player.Damage = player.Damage * 2.5
            end
            
            -- Apply the base damage bonus
            player.Damage = player.Damage + damageBonus
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateJudasEssence)


function Mod:OnNewRoomBlueBabyEssence()
    local player = Isaac.GetPlayer(0)
    -- Ensure the player has the item before triggering effect
    if player:HasCollectible(BLUE_BABY_ESSENCE) then
        -- Spawn 6 Blue Flies around the player
        player:AddBlueFlies(10, player.Position, player)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomBlueBabyEssence) -- Trigger flies on room entry

local eveEssencetriggered = false
local eveEssencetriggered2 = false

-- Reset the flag when starting a new run
function Mod:OnNewGameEve(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        eveEssencetriggered = false
        eveEssencetriggered2 = false
    end
end

-- Function to reset the flag at the start of a new floor
function Mod:OnNewFloorEve()
    eveEssencetriggered = false -- Allows effect to reactivate
    eveEssencetriggered2 = false
end

function Mod:OnCacheUpdateEveEssence(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(EVE_ESSENCE) then
            
            -- Calculate total hearts (Red, Soul, Bone converted to half-hearts)
            local totalHearts = player:GetHearts() + player:GetSoulHearts() + player:GetBlackHearts() + player:GetRottenHearts() + (player:GetBoneHearts() * 2)

            -- Add 30 damage when health is at 1 heart or less.
            if totalHearts <= 2 and eveEssencetriggered == false then
                eveEssencetriggered2 = true
                player.Damage = player.Damage + 30
            end
            
        end
    end
end

-- Reset the effect when entering a new room
function Mod:OnNewRoom()
    if eveEssencetriggered2 == true then
        eveEssencetriggered = true
    end
    for i = 1, Game():GetNumPlayers() do
        local player = Isaac.GetPlayer(i - 1)
        if player:HasCollectible(EVE_ESSENCE) then
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameEve) -- Reset flag between runs
Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloorEve) -- Reactivate effect at the start of 
Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateEveEssence)
Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoom) -- Reset damage boost when the player leaves the room.

local DASH_SPEED_2 = 10 -- Adjust dash speed
local DASH_DURATION_2 = 10 -- Frames per dash
local DASH_DAMAGE = 10 -- Damage dealt by dash
local DAMAGE_GAIN_ON_KILL = 0.4 -- Small permanent damage boost per kill


local lastMoveVec = {} -- Store last movement direction for each player
local dashingPlayers = {} -- Tracks players who are dashing
local killTracker = {} -- Track kills reliably
local samsonEssenceBonus = {} -- Store permanent damage boosts per player


function Mod:OnUseSamsonEssence(_, _, player)
    local samsonsfx = SFXManager()
    if not dashingPlayers[player.Index] then
        dashingPlayers[player.Index] = {dashTimer = DASH_DURATION_2, cooldown = DASH_COOLDOWN, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0, enemiesHit = {} }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        samsonsfx:Play(SoundEffect.SOUND_ISAAC_ROAR, 1.5, 0, false, 1.2)
        samsonsfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1.5, 0, false, 0.75)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateSamsonEssence()
    end
    --return true
end

function Mod:OnUpdateSamsonEssence()
    local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData = dashingPlayers[player.Index]

        if dashData then
            if dashData.dashTimer > 0 then

                -- Detect player's held direction
                local moveVec = Vector(0, 0)

                if Input.IsActionPressed(ButtonAction.ACTION_LEFT, player.ControllerIndex) then
                    moveVec.X = moveVec.X - 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_RIGHT, player.ControllerIndex) then
                    moveVec.X = moveVec.X + 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_UP, player.ControllerIndex) then
                    moveVec.Y = moveVec.Y - 1
                end
                if Input.IsActionPressed(ButtonAction.ACTION_DOWN, player.ControllerIndex) then
                    moveVec.Y = moveVec.Y + 1
                end

                -- If the player is actively moving, update lastMoveVec
                if moveVec:Length() > 0 then
                    lastMoveVec[player.Index] = moveVec:Normalized() * DASH_SPEED_2
                end

                -- Use last movement direction if no input is given
                local finalMoveVec = lastMoveVec[player.Index] or Vector(DASH_SPEED_2, 0)
                
                -- Apply movement
                player.Velocity = finalMoveVec

                -- Store enemies hit during the dash
                for _, entity in ipairs(Isaac.FindInRadius(player.Position, 50, EntityPartition.ENEMY)) do
                    if entity:IsVulnerableEnemy() and not dashData.enemiesHit[entity.InitSeed] then
                        entity:TakeDamage(DASH_DAMAGE, DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(player), 0)
                        dashData.enemiesHit[entity.InitSeed] = true -- Track enemy hit
                    end
                end


                dashData.dashTimer = dashData.dashTimer - 1
            else
                dashingPlayers[player.Index] = nil
                player:SetMinDamageCooldown(0)
            end
        end
    end
end

function Mod:OnEnemyKilled(entity)
    local player = Isaac.GetPlayer(0)

    if player:HasCollectible(SAMSON_ESSENCE) and dashingPlayers[player.Index] and dashingPlayers[player.Index].enemiesHit[entity.InitSeed] then
        print("Enemy killed during dash!")

        -- Ensure the bonus is stored correctly
        samsonEssenceBonus[player.Index] = (samsonEssenceBonus[player.Index] or 0) + DAMAGE_GAIN_ON_KILL

        Mod:ApplySamsonEssenceEffect(nil, player, CacheFlag.CACHE_DAMAGE)


        print("Cache flags triggered! Damage bonus stored:", samsonEssenceBonus[player.Index])
    end
end

-- Apply stored damage bonus through CACHE_DAMAGE
function Mod:ApplySamsonEssenceEffect(_, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        print("samson essence3")
        if player:HasCollectible(SAMSON_ESSENCE) then
            print("samson essence4")
            local playerID = player:GetCollectibleRNG(SAMSON_ESSENCE)
            --if samsonEssenceBonus[player.Index] then
            print("samson essence5") -- Now this should print
            player.Damage = player.Damage + samsonEssenceBonus[player.Index]
            --end            
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseSamsonEssence, SAMSON_ESSENCE)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateSamsonEssence)
Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.OnEnemyKilled)
Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplySamsonEssenceEffect, CacheFlag.CACHE_DAMAGE)

local HasLaserEffect = false
local LASER_RING_CHANCE = 100 -- 25% chance to trigger

--local HasHomingShot = false

function Mod:onUpdateAzazel(player)
	if game:GetFrameCount() == 1 then
		HasLaserEffect = false
	end
	if not HasLaserEffect and player:HasCollectible(AZAZEL_ESSENCE) then
		HasLaserEffect = true
	end
end

local function getRandomLaserEffect(player)
    local baseChance = 0.05 -- Default chance (10%)
    local luckScaling = 0.05 -- Each Luck point increases chance by 5%

    local luckBonus = math.max(0, player.Luck * luckScaling) -- Ensure non-negative
    local finalChance = math.min(0.90, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitAzazel(tear)
    if HasLaserEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(AZAZEL_ESSENCE) and getRandomLaserEffect(player) then
                tear:GetData().laserRingTrigger = true -- Mark tear for laser effect
                -- ✅ Change tear color (Example: Red Glow)
                tear.Color = Color(1, 0, 0, 0.5, 0, 0, 0) -- RGB: Red, Alpha: 1 (opaque)

            end
        end
    end
end


function Mod:onTearImpact(entity)
    if entity.Type == EntityType.ENTITY_TEAR and entity:GetData().laserRingTrigger then
        local position = entity.Position
        local player = Isaac.GetPlayer(0)
        local fireDirectionAzazel = player:GetFireDirection()
        local directionazazel

        if fireDirectionAzazel == Direction.LEFT then
            directionazazel = Vector(-1, 0)
        elseif fireDirectionAzazel == Direction.RIGHT then
            directionazazel = Vector(1, 0)
        elseif fireDirectionAzazel == Direction.DOWN then
            directionazazel = Vector(0, 1)
        elseif fireDirectionAzazel == Direction.UP then
            directionazazel = Vector(0, -1)
        elseif fireDirectionAzazel == Direction.NO_DIRECTION then
            directionazazel = Vector(0, 1)
        end

        -- Spawn a visible laser ring at the impact location
        local laserRing = Isaac.Spawn(
            EntityType.ENTITY_LASER,
                LaserVariant.THICKER_RED,
                0,
                player.Position,
                Vector.Zero,
                player
        ):ToLaser()

        if laserRing then -- Ensure the laser was spawned successfully
            laserRing.PositionOffset = Vector(0, -10) -- Adjust Y value as needed

            laserRing.AngleDegrees = directionazazel:GetAngleDegrees() -- Rotate laser to match direction
            laserRing.CollisionDamage = 3 + player.Damage -- Set laser damage
            laserRing.Timeout = 15 -- Laser duration
            laserRing:AddTearFlags(TearFlags.TEAR_HOMING) -- Apply homing effect
            laserRing.Parent = player -- Prevent self-damage
 
            
        else
            print("Laser failed to spawn!") -- Debug statement
        end


    end
end


Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateAzazel)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitAzazel)
Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_REMOVE, Mod.onTearImpact)

local STAT_BOOST = {
    SPEED = 1.00,
    FIREDELAY = -1, 
    DAMAGE = 1, 
    RANGE = 150, 
    SHOTSPEED = 1.00,
    LUCK = 2.00,
}

function Mod:lazEssencePickup(player, cacheFlag)
    if player:HasCollectible(LAZARUS_ESSENCE_UNLOCKED) then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + STAT_BOOST.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + STAT_BOOST.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + STAT_BOOST.DAMAGE) * 1.5
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + STAT_BOOST.RANGE
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed+ STAT_BOOST.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + STAT_BOOST.LUCK
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.lazEssencePickup)

local wasDead = {} -- Tracks death state per player

function Mod:OnPlayerUpdateLaz(player)
    local playerID = player.Index

    if player:HasCollectible(LAZARUS_ESSENCE) then
        if player:IsDead() then
            wasDead[playerID] = true -- Track death
        elseif wasDead[playerID] then
            wasDead[playerID] = false -- Reset death tracking
            print("Player revived - Granting stats item and removing revival item!")

            -- ✅ Give the player the all-stats-up item
            player:AddCollectible(LAZARUS_ESSENCE_UNLOCKED)

            -- ✅ Remove the revival item from inventory
            player:RemoveCollectible(LAZARUS_ESSENCE)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPlayerUpdateLaz)

local rerolledItems = {} -- Track rerolled items to prevent duplicates

-- Function to upgrade all passive items by +1 quality
function Mod:UpgradeItemsOnUse(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    player:AnimateCollectible(EDEN_ESSENCE, "UseItem", "PlayerPickupSparkle")
    if player:HasCollectible(EDEN_ESSENCE) then
        print("Activated - Upgrading all item qualities!")

        local collectiblesToReroll = {} -- Store all valid passive items for rerolling

        -- ✅ Collect all valid passive items FIRST
        for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
            if player:HasCollectible(i) then
                local itemConfig = Isaac.GetItemConfig():GetCollectible(i)
                
                -- Ensure item exists, is passive, and isn't a quest item
                if itemConfig and itemConfig.Quality < 4 and itemConfig.Type == ItemType.ITEM_PASSIVE then
                    if not (itemConfig.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then
                        table.insert(collectiblesToReroll, i) -- ✅ Store valid items for later processing
                    end
                end
            end
        end

        -- ✅ Process all stored collectibles AFTER gathering them
        for _, itemID in ipairs(collectiblesToReroll) do
            local itemConfig = Isaac.GetItemConfig():GetCollectible(itemID)
            if itemConfig then
                local newQuality = itemConfig.Quality + 1
                local rerolledItem = Mod:GetRandomValidItemOfQuality(newQuality)

                if rerolledItem then
                    player:RemoveCollectible(itemID) -- Remove current item
                    player:AddCollectible(rerolledItem) -- Add upgraded item
                    rerolledItems[rerolledItem] = true -- ✅ Track the rerolled item to prevent duplicates
                end
            end
        end

        -- ✅ Consume the active item after processing all upgrades
        player:RemoveCollectible(EDEN_ESSENCE)
    end
end


Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UpgradeItemsOnUse, EDEN_ESSENCE)

-- Function to find a valid passive item of the desired quality
function Mod:GetRandomValidItemOfQuality(targetQuality)
    local possibleItems = {}

    for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
        local itemConfig = Isaac.GetItemConfig():GetCollectible(i)

        -- Ensure item exists and meets quality requirement
        if itemConfig and itemConfig.Quality == targetQuality then
            -- ✅ Exclude active items (Type == ITEM_ACTIVE)
            if itemConfig.Type == ItemType.ITEM_PASSIVE then
                -- ✅ Prevent quest items from being selected
                if not (itemConfig.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then
                    -- ✅ Ensure we do not duplicate items
                    if not rerolledItems[i] then
                        table.insert(possibleItems, i)
                    end

                end
            end
        end
    end

    -- Return a random valid item or nil if none found
    if #possibleItems > 0 then
        return possibleItems[math.random(#possibleItems)]
    end
    return nil
end

local keeper_essence_active = false

-- Reset the flag when starting a new run
function Mod:OnNewGameKeeperEssence(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        keeper_essence_active = false
    end
end

 -- Function to grant resources upon pickup
function Mod:OnPickupKeeperEssence(_, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(KEEPER_ESSENCE) and keeper_essence_active == false then
        player:AddCoins(99)
    end
end

function Mod:OnNewFloorKeeperEssence()
    local player = Isaac.GetPlayer(0)

    if player:HasCollectible(KEEPER_ESSENCE) then
        keeper_essence_active = true
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameKeeperEssence) -- Reset flag between runs
Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupKeeperEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloorKeeperEssence) -- Spawn golden items at the start of each floor

local rampageActive = false
local rampageEndTime = 0
local killCount = 0

-- ✅ Activate invulnerability and contact damage on use
function Mod:ActivateRampage(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    player:AnimateCollectible(EDEN_ESSENCE, "UseItem", "PlayerPickupSparkle")
    player:AddCollectible(APOLLYON_ESSENCE_VFX)
    local apollyonsfx = SFXManager()
    apollyonsfx:Play(SoundEffect.SOUND_BEAST_SUCTION_LOOP) -- Play sound effect


    if player:HasCollectible(APOLLYON_ESSENCE) then

        rampageActive = true
        rampageEndTime = Isaac.GetFrameCount() + (8 * 60) -- 10 seconds in frames
        killCount = 0

        -- Make player invulnerable
        player:SetMinDamageCooldown(480)
        player:GetData().contactDamageBoost = true
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.ActivateRampage, APOLLYON_ESSENCE)

-- ✅ Apply contact damage effect
function Mod:OnPlayerUpdateApollyon(player)
    local player = Isaac.GetPlayer(0)
    if rampageActive then
        -- ✅ Damage enemies on contact
        for _, enemy in ipairs(Isaac.GetRoomEntities()) do
            if enemy:IsEnemy() and enemy.Position:Distance(player.Position) < enemy.Size + player.Size then
                enemy:TakeDamage(40, DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(player), 0)

                -- ✅ Count kills for damage scaling
                if enemy:IsDead() then
                    killCount = killCount + 1
                end
            end
        end

        -- ✅ End effect after 10 seconds
        if Isaac.GetFrameCount() >= rampageEndTime then
            player:SetMinDamageCooldown(30)
            player:RemoveCollectible(APOLLYON_ESSENCE_VFX)
            rampageActive = false
            player:GetData().contactDamageBoost = nil
            
            -- ✅ Apply damage boost based on kills
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:GetData().temporaryDamageBoost = killCount * 0.05
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdateApollyon)

function Mod:onCacheApollyonEssence(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().temporaryDamageBoost then
        player.Damage = player.Damage + player:GetData().temporaryDamageBoost
    end

    --[[ f cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage - 3.5 + Template.DAMAGE
    end ]]
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheApollyonEssence)

local visitedRoomsBethEssence = {}


function Mod:GetRandomWisppableItem()
    local possibleWisps = {}

    for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
        local itemConfig = Isaac.GetItemConfig():GetCollectible(i)

        -- ✅ Ensure item exists and can create wisps
        if itemConfig and not (itemConfig.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then
            table.insert(possibleWisps, i)
        end
    end

    -- ✅ Select a random item or return nil if none found
    if #possibleWisps > 0 then
        local selectedItem = possibleWisps[math.random(#possibleWisps)]
        return selectedItem
    end

    return nil
end


-- ✅ Spawn a wisp when entering a new room
function Mod:OnNewRoomBethEssence()
    local player = Isaac.GetPlayer(0)
    local room = Game():GetLevel():GetCurrentRoomIndex()

    if player:HasCollectible(BETHANY_ESSENCE) then

        -- ✅ Check if the room has already been visited
        if not visitedRoomsBethEssence[room] then

            local randomCollectible = Mod:GetRandomWisppableItem()
            if randomCollectible then
                player:AddWisp(randomCollectible, player.Position, true)
            end

            -- ✅ Mark the room as visited
            visitedRoomsBethEssence[room] = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomBethEssence)


-- ✅ Define a list of possible items to grant
local predefinedItemList = {
    AZAZEL_ESSENCE,
    STAR_OF_DAVID,
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
}

-- ✅ Grant items and a luck upgrade on pickup
function Mod:OnPickupRewardItem(_, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(MATT_ESSENCE) then

        -- Select two random items from the list
        local chosenItems = {}
        
        while #chosenItems < 2 do
            local selectedItem = predefinedItemList[math.random(#predefinedItemList)]
            if not chosenItems[selectedItem] then
                table.insert(chosenItems, selectedItem)
            end
        end

        -- ✅ Give the selected items to the player
        for _, itemID in ipairs(chosenItems) do
            player:AddCollectible(itemID)
        end

        -- ✅ Grant a luck upgrade
        player:AddCacheFlags(CacheFlag.CACHE_LUCK)
        player:GetData().luckBoost = 3 -- Adjust as needed
        player:EvaluateItems()

        -- ✅ Remove itself after activation (if desired)
        player:RemoveCollectible(MATT_ESSENCE)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupRewardItem)

-- ✅ Ensure luck boost applies properly
function Mod:onCacheMattEssence(player, cacheFlag)
    --local player = Isaac.GetPlayer(0)
    if cacheFlag == CacheFlag.CACHE_LUCK and player:GetData().luckBoost then
        player.Luck = player.Luck + player:GetData().luckBoost

    end

end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheMattEssence)

local spearCooldown = 0 -- Shared cooldown for all characters

function Mod:UseSpearAttack(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(PONTIUS_ESSENCE) then

        local data = player:GetData()
        local playerDamage = player.Damage
        local fireDirectionspear = player:GetFireDirection()
        local directionspear

        -- Set correct spear direction
        if fireDirectionspear == Direction.LEFT then
            directionspear = Vector(-1, 0)
        elseif fireDirectionspear == Direction.RIGHT then
            directionspear = Vector(1, 0)
        elseif fireDirectionspear == Direction.DOWN then
            directionspear = Vector(0, 1)
        elseif fireDirectionspear == Direction.UP then
            directionspear = Vector(0, -1)
        elseif fireDirectionspear == Direction.NO_DIRECTION then
            directionspear = Vector(0, 1)
        end

        if directionspear then
            local spear = Isaac.Spawn(
                EntityType.ENTITY_LASER,
                LaserVariant.ELECTRIC,
                0,
                player.Position,
                Vector.Zero,
                player
            ):ToLaser()

            -- Apply custom animation
            if spear then
                local sprite = spear:GetSprite()
                sprite:Load("gfx/pontius_spear_throw.anm2", true)
                sprite:Play("LargeRedLaser", true)
            end

            -- Stop default sound and play custom effect
            local sfx = SFXManager()
            sfx:Stop(SoundEffect.SOUND_ANGEL_BEAM)
            sfx:Play(SoundEffect.SOUND_SWORD_SPIN) -- Replace with your custom sound ID

            spear.PositionOffset = Vector(0, -10)
            spear.AngleDegrees = directionspear:GetAngleDegrees()
            spear.Parent = player
            spear.Timeout = 1
            spear.CollisionDamage = playerDamage * 10

            spearCooldown = 30 -- Set a cooldown (adjust as needed)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSpearAttack, PONTIUS_ESSENCE)

local SOUL_OF_THE_LOST = Card.CARD_SOUL_LOST -- Replace with actual Soul of the Lost ID


function Mod:UseSoulItem(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    player:AnimateCollectible(LOST_ESSENCE, "UseItem", "PlayerPickupSparkle")
    if player:HasCollectible(LOST_ESSENCE) then

        -- ✅ Force immediate use
        player:UseCard(SOUL_OF_THE_LOST)

         -- ✅ Apply temporary damage boost
         player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
         player:GetData().temporaryDamageBoost = 20 -- Adjust as needed
         player:EvaluateItems()

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulItem, LOST_ESSENCE)

-- ✅ Remove effect upon leaving the room
function Mod:OnNewRoomLostEssence()
    local player = Isaac.GetPlayer(0)

    -- Reset player state after leaving the room
    if player:GetData().temporaryDamageBoost then
        player:GetData().temporaryDamageBoost = nil
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomLostEssence)

-- ✅ Ensure damage boost applies correctly
function Mod:ApplySoulDamageBoost(_, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().temporaryDamageBoost then
        player.Damage = player.Damage + player:GetData().temporaryDamageBoost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplySoulDamageBoost)

local SOUL_OF_JE = Card.CARD_SOUL_JACOB -- Replace with actual Soul of the Lost ID


function Mod:UseSoulItemJE(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    player:AnimateCollectible(JACOB_AND_ESAU_ESSENCE, "UseItem", "PlayerPickupSparkle")
    if player:HasCollectible(JACOB_AND_ESAU_ESSENCE) then

        -- ✅ Force immediate use
        player:UseCard(SOUL_OF_JE)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulItemJE, JACOB_AND_ESAU_ESSENCE)


local SOUL_OF_FORGOTTEN = Card.CARD_SOUL_FORGOTTEN -- Replace with actual Soul of the Lost ID

function Mod:UseSoulItemForgotten(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    player:AnimateCollectible(FORGOTTEN_ESSENCE, "UseItem", "PlayerPickupSparkle")
    if player:HasCollectible(FORGOTTEN_ESSENCE) then

        -- ✅ Force immediate use
        player:UseCard(SOUL_OF_FORGOTTEN)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulItemForgotten, FORGOTTEN_ESSENCE)


local HasStarEffect = false

function Mod:onUpdateStarDavid(player)
	if game:GetFrameCount() == 1 then
		HasStarEffect = false
	end
	if not HasStarEffect and player:HasCollectible(STAR_OF_DAVID) then
		HasStarEffect = true
	end
end

local function getRandomStarEffect(player)
    local baseChance = 0.1 -- Default chance (10%)
    local luckScaling = 0.1 -- Each Luck point increases chance by 5%

    local luckBonus = math.max(0, player.Luck * luckScaling) -- Ensure non-negative
    local finalChance = math.min(0.90, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitStar(tear)
    if HasStarEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(STAR_OF_DAVID) and getRandomStarEffect(player) then
                tear:GetData().starTrigger = true

                local sprite = tear:GetSprite()
                sprite:Load("gfx/star_of_david_tear.anm2", true)
                sprite:Play("Stone4Move", true)

                -- ✅ Increase damage by 30%
                tear.CollisionDamage = tear.CollisionDamage * 1.3
                --tear.AddTearFlags(TearFlags.TEAR_HP_DROP)

                -- ✅ Apply bleed effect on hit
                tear:GetData().applyBleed = true -- We’ll handle this on enemy hit
                
                -- ✅ Track kill-triggered Golden Heart drop
                --tear:GetData().goldenHeartChance = 1 -- 10% chance (adjust as needed)
            end
        end
    end
end

local goldenHeartChance = 0.05 -- Set the drop chance (10%)

function Mod:onEnemyDeath(entity)
    local player = Isaac.GetPlayer(0)

    if player:HasCollectible(STAR_OF_DAVID) and entity:IsEnemy() then
        -- ✅ Base chance (5%) + Luck scaling (5% per Luck point)
        local luckFactor = math.max(0, player.Luck * 0.05) -- Prevent negative values
        local finalChance = math.min(0.5, 0.1 + luckFactor) -- Cap at 50% drop rate

        -- ✅ Random chance to spawn a Golden Heart upon enemy death
        if math.random() <= finalChance then
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_GOLDEN, entity.Position, Vector.Zero, nil)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.onEnemyDeath)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateStarDavid)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitStar)

function Mod:UseGun(_, item, rng, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(GUN_ITEM) then

        local data = player:GetData()
        local playerDamage = player.Damage
        local fireDirectiongun = player:GetFireDirection()
        local directiongun

        -- Set correct spear direction
        if fireDirectiongun == Direction.LEFT then
            directiongun = Vector(-1, 0)
        elseif fireDirectiongun == Direction.RIGHT then
            directiongun = Vector(1, 0)
        elseif fireDirectiongun == Direction.DOWN then
            directiongun = Vector(0, 1)
        elseif fireDirectiongun == Direction.UP then
            directiongun = Vector(0, -1)
        elseif fireDirectiongun == Direction.NO_DIRECTION then
            directiongun = Vector(0, 1)
        end

        -- ✅ Apply random angle variation within 75 degrees
        local angleVariation = (math.random() * 150) - 75 -- Random value between -75 and +75 degrees
        local randomDirection = directiongun:Rotated(angleVariation)

        -- ✅ Spawn the high-damage tear
        local tear = player:FireTear(player.Position, randomDirection * 12, false, false, false, player, 1)

        if tear then
            
            tear.CollisionDamage = (player.Damage * 10) + 10 -- ✅ Apply extreme damage boost

            -- ✅ Load custom tear sprite (if desired)
            local sprite = tear:GetSprite()
            sprite:Load("gfx/bullet_tear.anm2", true)
            sprite:Play("RegularTear3", true)
            

            -- ✅ Play sound effect
            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_BULLET_SHOT, 1, 2, false, 3, 0) -- Replace with desired sound effect
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseGun, GUN_ITEM)


local appetizerTaken = false

-- Reset the flag when starting a new run
function Mod:OnNewGameAppetizer(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        appetizerTaken = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameAppetizer) -- Reset flag between runs

function Mod:OnPickupAppetizer(_, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(APPETIZER_ITEM) and appetizerTaken == false then
        
        -- ✅ Grant a Red Heart container
        player:AddMaxHearts(2)
        player:AddHearts(2) -- Fill the new container

        -- ✅ Mark that the effect has been used
        appetizerTaken = true

    elseif not player:HasCollectible(APPETIZER_ITEM) then
        appetizerTaken = false

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupAppetizer)

local morningSnack = false

-- Reset the flag when starting a new run
function Mod:OnNewGameMorningSnack(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        morningSnack = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameMorningSnack) -- Reset flag between runs

function Mod:OnPickupMorningSnack(_, player)
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(MORNING_SNACK_ITEM) and morningSnack == false then
        
        -- ✅ Grant a Red Heart container
        player:AddMaxHearts(2)
        player:AddHearts(2) -- Fill the new container

        -- ✅ Mark that the effect has been used
        morningSnack = true

    elseif not player:HasCollectible(MORNING_SNACK_ITEM) then
        morningSnack = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupMorningSnack)

--[[ local BOSS_DAMAGE_MULTIPLIER = 1.5 -- Adjust as needed (e.g., 50% more damage)

function Mod:OnBossDamage(entity, damageAmount, damageFlags, source, countdown)
    local player = Isaac.GetPlayer(0)

    -- ✅ Check if target is a boss
    if player:HasCollectible(KINGSLAYER_ITEM) and entity:IsBoss() then
        local boostedDamage = damageAmount * BOSS_DAMAGE_MULTIPLIER
        entity:TakeDamage(boostedDamage, damageFlags, source, countdown)
        print("Boss hit with boosted damage: " .. boostedDamage)
        return false -- Prevent default damage application
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.OnBossDamage) ]]

local BOSS_ROOM_DAMAGE_BOOST = 1.5 -- 50% extra damage

function Mod:UpdateBossRoomDamage(player)
    local game = Game()
    local level = game:GetLevel()
    local room = game:GetRoom()

    -- ✅ Check if player is in an uncleared boss room
    if player:HasCollectible(KINGSLAYER_ITEM) and room:GetType() == RoomType.ROOM_BOSS and not room:IsClear() then
        print("Inside an active boss room - Applying damage boost!")

        -- ✅ Apply temporary damage boost
        player:GetData().bossDamageBoost = BOSS_ROOM_DAMAGE_BOOST
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    else
        -- ✅ Remove damage boost when room is cleared or exited
        if player:GetData().bossDamageBoost then
            print("Leaving boss room - Removing damage boost.")
            player:GetData().bossDamageBoost = nil
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateBossRoomDamage)

function Mod:ApplyBossRoomDamage(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().bossDamageBoost then
        player.Damage = player.Damage + player:GetData().bossDamageBoost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyBossRoomDamage)

----------------------------------------------------------------------------------------
--- Consumable Code Below
local SOUL_MATT = Isaac.GetCardIdByName("Soul of Matt")

--[[ 
local CustomRunes = (Card.SOUL_MATT)
local RuneChance = {0.5}

function Mod:mattSoul(rng, iCurrentCard, bPlaying, bRunes, bOnlyRunes)
    if bRunes then
        local roll = rng:RandomFloat()
        local index = 1
        while index <= #RuneChance and roll > RuneChance[index] do
            roll = roll - RuneChance[index]
            index = index + 1
        end
        if index <= #RuneChance then
            return CustomRunes[index]
        end
    elseif bPlaying then
        local player = game:GetPlayer(0)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, iCurrentCard, player.Position, Vector(0,0), player)

    end
end

Mod:AddCallback(ModCallbacks.MC_GET_CARD, Mod.mattSoul) ]]

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
    LILITH_ESSENCE,
    ISAAC_ESSENCE,
    MAGDALENE_ESSENCE,
    CAIN_ESSENCE,
    JUDAS_ESSENCE,
    BLUE_BABY_ESSENCE,
    EVE_ESSENCE,
    SAMSON_ESSENCE,
    AZAZEL_ESSENCE,
    LAZARUS_ESSENCE,
    EDEN_ESSENCE,
    KEEPER_ESSENCE,
    APOLLYON_ESSENCE,
    BETHANY_ESSENCE,
    MATT_ESSENCE,
    PONTIUS_ESSENCE,
    LOST_ESSENCE,
    JACOB_AND_ESAU_ESSENCE,
    FORGOTTEN_ESSENCE
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
    local level = Game():GetLevel():GetCurrentRoomIndex()
    local roomType = room:GetType()
    local roomSize = room:GetGridSize()
    --print(level)
    --print(roomSize)
    --local roomDesc = level:GetRoomByIdx(level:GetCurrentRoomIndex())
    --local roomID = roomDesc.GridIndex -- This gives you the unique room ID
    --local roomID2 = roomDesc.Data

    -- Define Room IDs that should use the custom pool
    local customVaultRooms = {6969} -- Replace with your actual Room IDs

    -- Check if the current room matches your custom rooms
    if roomType == RoomType.ROOM_LIBRARY and roomSize == 448 then
        --print(level)
        --print(roomSize)
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
