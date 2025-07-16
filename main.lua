local Mod = RegisterMod("Mod", 1)
local game = Game()

--include("lua.constants.items")

local itemConfig = Isaac.GetItemConfig()

local templateType = Isaac.GetPlayerTypeByName("Template", false)
local pontiusType = Isaac.GetPlayerTypeByName("Longinus", false)
local TAINTED_PONTIUS_TYPE = Isaac.GetPlayerTypeByName("Longinus", true)
LUCKY_DICE_ID = Isaac.GetItemIdByName("Lucky Coin")
DULL_COIN_ID = Isaac.GetItemIdByName("Dull Coin")
HATRED_ITEM = Isaac.GetItemIdByName("Unholy Mantle") -- Change name as needed

URIEL_ITEM = Isaac.GetItemIdByName("Lil' Uriel")
CONFIG_URIEL = itemConfig:GetCollectible(URIEL_ITEM)
FAMILIAR_VARIANT_URIEL = Isaac.GetEntityVariantByName("Lil' Uriel")
SHOOTING_TICK_COOLDOWN_URIEL = 50
TEAR_DAMAGE_URIEL = 3
RNG_SHIFT_INDEX_URIEL = 35

GABRIEL_ITEM = Isaac.GetItemIdByName("Lil' Gabriel")
CONFIG_GABRIEL = itemConfig:GetCollectible(URIEL_ITEM)
FAMILIAR_VARIANT_GABRIEL = Isaac.GetEntityVariantByName("Lil' Gabriel")
SHOOTING_TICK_COOLDOWN_GABRIEL = 50
TEAR_DAMAGE_GABRIEL = 3
RNG_SHIFT_INDEX_GABRIEL = 35

CATALYST_SHEET_ITEM = Isaac.GetItemIdByName("Catalyst Character Sheet")

FAIL_ITEM = Isaac.GetItemIdByName("Failed Abortion")
CONFIG_FAIL = itemConfig:GetCollectible(FAIL_ITEM)
FAMILIAR_VARIANT_FAIL = Isaac.GetEntityVariantByName("Failed Abortion")
RNG_SHIFT_INDEX_FAIL = 35
SHOOTING_TICK_COOLDOWN_FAIL = 25
TEAR_SPEED_FAIL = 10
TEAR_SCALE_FAIL = 1.5
TEAR_DAMAGE_FAIL = 10

FINAL_JUDGMENT_ITEM = Isaac.GetItemIdByName("Final Judgement") -- Change name as needed
FINAL_JUDGMENT_ITEM_VFX = Isaac.GetItemIdByName("Final Judgement VFX") -- Change name as needed
LILITH_ESSENCE = Isaac.GetItemIdByName("Essence of Lilith")
RELIQUARY_TRINKET = Isaac.GetTrinketIdByName("Reliquary Access Card")

AMP_ITEM = Isaac.GetItemIdByName("Amplifier")
FAMILIAR_VARIANT_AMP = Isaac.GetEntityVariantByName("Amplifier")
--local AMP_BEAM = Isaac.GetEntityVariantByName("Amplifier Beam")
AMP_AREA = Isaac.GetEntityVariantByName("Amplifier Area")
AMP_DMG_ITEM = Isaac.GetItemIdByName("Amp Damage")

HUH_ITEM = Isaac.GetItemIdByName("Huh?")
COMP_ITEM = Isaac.GetItemIdByName("The Compensator")
CLOVER_TRINKET = Isaac.GetTrinketIdByName("Four Leaf Clover")
ORB_TRINKET = Isaac.GetTrinketIdByName("Orb Shard")
PHOTO_TRINKET = Isaac.GetTrinketIdByName("Stitched Photo")
CANDLE_TRINKET = Isaac.GetTrinketIdByName("Black Candle Wick")
BOND_ITEM = Isaac.GetItemIdByName("Eternal Bond 4")
BOND_ITEM2 = Isaac.GetItemIdByName("Eternal Bond 3")
BOND_ITEM3 = Isaac.GetItemIdByName("Eternal Bond 2")
BOND_ITEM4 = Isaac.GetItemIdByName("Eternal Bond 1")
BOND_ITEM_EMPTY = Isaac.GetItemIdByName("Empty Eternal Bond")

FAMILIAR_VARIANT_BOND = Isaac.GetEntityVariantByName("Bond Orb")

ANATOMY_ITEM = Isaac.GetItemIdByName("Anatomy Textbook")
BLANK_SLATE_ITEM = Isaac.GetItemIdByName("Blank Slate")

ISAAC_ESSENCE = Isaac.GetItemIdByName("Essence of Isaac")
MAGDALENE_ESSENCE = Isaac.GetItemIdByName("Essence of Magdalene")
CAIN_ESSENCE = Isaac.GetItemIdByName("Essence of Cain")
JUDAS_ESSENCE = Isaac.GetItemIdByName("Essence of Judas")
BLUE_BABY_ESSENCE = Isaac.GetItemIdByName("Essence of ???")
EVE_ESSENCE = Isaac.GetItemIdByName("Essence of Eve")
SAMSON_ESSENCE = Isaac.GetItemIdByName("Essence of Samson")
AZAZEL_ESSENCE = Isaac.GetItemIdByName("Essence of Azazel")
LAZARUS_ESSENCE = Isaac.GetItemIdByName("Essence of Lazarus")
LAZARUS_ESSENCE_UNLOCKED = Isaac.GetItemIdByName("Unlocked Essence of Lazarus")
EDEN_ESSENCE = Isaac.GetItemIdByName("Essence of Eden")
KEEPER_ESSENCE = Isaac.GetItemIdByName("Essence of Keeper")
APOLLYON_ESSENCE = Isaac.GetItemIdByName("Essence of Apollyon")
APOLLYON_ESSENCE_VFX = Isaac.GetItemIdByName("Essence of Apollyon VFX")
BETHANY_ESSENCE = Isaac.GetItemIdByName("Essence of Bethany")
DOMINO_ESSENCE = Isaac.GetItemIdByName("Essence of Domino")
PONTIUS_ESSENCE = Isaac.GetItemIdByName("Essence of Longinus")
LOST_ESSENCE = Isaac.GetItemIdByName("Essence of The Lost")

JACOB_AND_ESAU_ESSENCE = Isaac.GetItemIdByName("Essence of Jacob and Esau")
CONFIG_JACOB = itemConfig:GetCollectible(JACOB_AND_ESAU_ESSENCE)
FAMILIAR_VARIANT_JACOB = Isaac.GetEntityVariantByName("Lil' Jacob")
CONFIG_ESAU = itemConfig:GetCollectible(JACOB_AND_ESAU_ESSENCE)
FAMILIAR_VARIANT_ESAU = Isaac.GetEntityVariantByName("Lil' Esau")

FORGOTTEN_ESSENCE = Isaac.GetItemIdByName("Essence of The Forgotten")
SOUL_ESSENCE = Isaac.GetItemIdByName("Essence of The Soul")
CONFIG_SOUL = itemConfig:GetCollectible(SOUL_ESSENCE)
FAMILIAR_VARIANT_SOUL = Isaac.GetEntityVariantByName("The Soul")

STAR_OF_DAVID = Isaac.GetItemIdByName("Yamika")
GUN_ITEM = Isaac.GetItemIdByName("A Gun")
APPETIZER_ITEM = Isaac.GetItemIdByName("Appetizer")
MORNING_SNACK_ITEM = Isaac.GetItemIdByName("Early Morning Snack")
KINGSLAYER_ITEM = Isaac.GetItemIdByName("Kingslayer")
PHALANX_ITEM = Isaac.GetItemIdByName("Phalanx")
DEFENSE_TECH_ITEM = Isaac.GetItemIdByName("Defense Tech")
NECROMANCY_ITEM = Isaac.GetItemIdByName("Necromancy")
MONEY_ITEM = Isaac.GetItemIdByName("Become Back My Money")
PAINT_ITEM = Isaac.GetItemIdByName("Gold Spray Paint")
GLITCH_ITEM = Isaac.GetItemIdByName("'/<<L7")
PROTO_ITEM = Isaac.GetItemIdByName("Proto-Tech")
FRED_ITEM = Isaac.GetItemIdByName("Fred The Friendly Gaper")
SIN_PENNY_TRINKET = Isaac.GetTrinketIdByName("Sinful Penny")
BONE_PENNY_TRINKET = Isaac.GetTrinketIdByName("Skele-Penny")
YUCK_PENNY_TRINKET = Isaac.GetTrinketIdByName("Yuck Penny")
DEBUG_ITEM = Isaac.GetItemIdByName("Debug Console")
TOAST_ITEM = Isaac.GetItemIdByName("Toast Sandwich")
GLITCH_DICE_ITEM = Isaac.GetItemIdByName("D-=777'L")
GLITCH_DICE_ITEM_2 = Isaac.GetItemIdByName(" D-=777'L ")
GLITCH_ESSENCE = Isaac.GetItemIdByName("64 36")
LUCKY_PENNY_ITEM = Isaac.GetItemIdByName("Sack of Lucky Pennies")
TOOLBELT_ITEM = Isaac.GetItemIdByName("Toolbelt")
TOOLBELT_FIX_ITEM = Isaac.GetItemIdByName(" Toolbelt ")
MOON_ITEM = Isaac.GetItemIdByName("Deep Orbit")
FAMILIAR_MOON = Isaac.GetEntityVariantByName("Deep Orbit")
FLUX_ITEM = Isaac.GetItemIdByName("Broken Flux Capacitor")
FAMILIAR_FLUX = Isaac.GetEntityVariantByName("Broken Flux Capacitor")
DUAE_ITEM = Isaac.GetItemIdByName("Duae Viae")
LIGHT_ITEM = Isaac.GetItemIdByName("Path of Salvation")
DARK_ITEM = Isaac.GetItemIdByName("Path of Temptation")
DEVIL_ONE_ITEM = Isaac.GetItemIdByName("Devil's Path 1")
ANGEL_ONE_ITEM = Isaac.GetItemIdByName("Angel's Path 1")
DEVIL_TWO_ITEM = Isaac.GetItemIdByName("Devil's Path 2")
ANGEL_TWO_ITEM = Isaac.GetItemIdByName("Angel's Path 2")
DEVIL_THREE_ITEM = Isaac.GetItemIdByName("Devil's Path 3")
ANGEL_THREE_ITEM = Isaac.GetItemIdByName("Angel's Path 3")
DEVIL_FOUR_ITEM = Isaac.GetItemIdByName("Devil's Path 4")
ANGEL_FOUR_ITEM = Isaac.GetItemIdByName("Angel's Path 4")
DEVIL_FOUR_VFX = Isaac.GetItemIdByName("Devil's Path 4 VFX")
DEMON_DASH_ITEM = Isaac.GetItemIdByName("Rend")
NEUTRAL_ITEM = Isaac.GetItemIdByName("Neutrality")
ABRAHAM_ESSENCE_ITEM = Isaac.GetItemIdByName("Essence of Abraham")
OMEGA_ITEM = Isaac.GetItemIdByName("Technology Omega")
TECH_TRINKET = Isaac.GetTrinketIdByName("Bootleg Tech")
JUBILEES_ITEM = Isaac.GetItemIdByName("Book of Jubilees")
ANGEL_BLAST_ITEM = Isaac.GetItemIdByName("Angel Blast")
NOISEMAKER_TRINKET = Isaac.GetTrinketIdByName("The Devil's Noisemaker")
GLUTTONY_ITEM = Isaac.GetItemIdByName("Gluttony")
GREED_ITEM = Isaac.GetItemIdByName("Greed")
LUST_ITEM = Isaac.GetItemIdByName("Lust")
PRIDE_ITEM = Isaac.GetItemIdByName("Pride")
SLOTH_ITEM = Isaac.GetItemIdByName("Sloth")

ENVY_ITEM = Isaac.GetItemIdByName("Envy")
CONFIG_ENVY = itemConfig:GetCollectible(ENVY_ITEM)
FAMILIAR_VARIANT_ENVY = Isaac.GetEntityVariantByName("Envy")

WRATH_ITEM = Isaac.GetItemIdByName("Wrath")
CHARITY_ITEM = Isaac.GetItemIdByName("Charity")
HUMILITY_ITEM = Isaac.GetItemIdByName("Humility")
LOVE_ITEM = Isaac.GetItemIdByName("Love")
GENEROSITY_ITEM = Isaac.GetItemIdByName("Generosity")
TEMPERANCE_ITEM = Isaac.GetItemIdByName("Temperance")

ZEAL_ITEM = Isaac.GetItemIdByName("Zeal")
CONFIG_ZEAL = itemConfig:GetCollectible(ZEAL_ITEM)
FAMILIAR_VARIANT_ZEAL = Isaac.GetEntityVariantByName("Zeal")

KINDNESS_ITEM = Isaac.GetItemIdByName("Kindness")
HEART_ITEM = Isaac.GetItemIdByName("Glass Heart")
LEGION_ITEM = Isaac.GetItemIdByName("Legion Charge")
PUGIO_ITEM = Isaac.GetItemIdByName("Pugio")
KING_TRINKET = Isaac.GetTrinketIdByName("King Penny")
TROPHY_ITEM = Isaac.GetItemIdByName("Boss Trophy")
ENVIOUS_RAGE_ITEM = Isaac.GetItemIdByName("Envious Rage")
VOID_DAMAGE_ITEM = Isaac.GetItemIdByName("Void Energy")
CHARGE_DAMAGE_ITEM = Isaac.GetItemIdByName("Rampaging Rage")
CONCOCTION_ITEM = Isaac.GetItemIdByName("Mysterious Concoction")
PILL_ITEM = Isaac.GetItemIdByName("The Pill")
BIBBLE_ITEM = Isaac.GetItemIdByName("The Bibble")
COMMUNISM_ITEM = Isaac.GetItemIdByName("The Communist Manifesto")
JUBILEES_ITEM2 = Isaac.GetItemIdByName("Book of Jubilees 2/3")
JUBILEES_ITEM3 = Isaac.GetItemIdByName("Book of Jubilees 1/3")
PAGE_ITEM = Isaac.GetItemIdByName("Glowing Page")
NEURO_ITEM = Isaac.GetItemIdByName("Neurotoxin")
CRUSHED_DICE_ITEM = Isaac.GetItemIdByName("Crushed Dice")
DOGMA_ITEM = Isaac.GetItemIdByName("Dogmatism")
INFESTATION_ITEM = Isaac.GetItemIdByName("Infestation 3")
RAPTURE_ITEM = Isaac.GetItemIdByName("Rapture")
NIL_VALUE_ITEM = Isaac.GetTrinketIdByName("Nil Value")
SHATTERED_GLADIUS_ITEM = Isaac.GetItemIdByName("Shattered Gladius")
TRASH_ITEM = Isaac.GetItemIdByName("Trash Bag")
CAKE_ITEM = Isaac.GetItemIdByName("Birthday Cake")
RIFT_ITEM = Isaac.GetItemIdByName("Abyssal Rift")
HEALTH_SACK_ITEM = Isaac.GetItemIdByName("Sack of Hearts")
BATTERY_ITEM = Isaac.GetItemIdByName("Expired Battery")

POLTERGEIST_ITEM = Isaac.GetItemIdByName("Poltergeist")
FAMILIAR_POLTERGEIST = Isaac.GetEntityVariantByName("Poltergeist")
AXE_ITEM = Isaac.GetItemIdByName("Executioner's Axe")
MOTIVATOR_ITEM = Isaac.GetItemIdByName("Dark Motivator")
TEMPLE_ITEM = Isaac.GetItemIdByName("TempleOS")


SOUL_DOMINO = Isaac.GetCardIdByName("Soul of Domino")
SOUL_PONTIUS = Isaac.GetCardIdByName("Soul of Longinus")
SOUL_ABRAHAM = Isaac.GetCardIdByName("Soul of Abraham")
RELIQUARY_CARD = Isaac.GetCardIdByName("Essence Card")
FOOL_CARD = Isaac.GetCardIdByName("Misprinted Fool")
MAGICIAN_CARD = Isaac.GetCardIdByName("Misprinted Magician")
PRIESTESS_CARD = Isaac.GetCardIdByName("Misprinted High Priestess")
EMPRESS_CARD = Isaac.GetCardIdByName("Misprinted Empress")
EMPEROR_CARD = Isaac.GetCardIdByName("Misprinted Emperor")
HIEROPHANT_CARD = Isaac.GetCardIdByName("Misprinted Hierophant")
LOVERS_CARD = Isaac.GetCardIdByName("Misprinted Lovers")
CHARIOT_CARD = Isaac.GetCardIdByName("Misprinted Chariot")
JUSTICE_CARD = Isaac.GetCardIdByName("Misprinted Justice")
HERMIT_CARD = Isaac.GetCardIdByName("Misprinted Hermit")
WHEEL_CARD = Isaac.GetCardIdByName("Misprinted Wheel of Fortune")
STRENGTH_CARD = Isaac.GetCardIdByName("Misprinted Strength")
HANGED_CARD = Isaac.GetCardIdByName("Misprinted Hanged Man")
DEATH_CARD = Isaac.GetCardIdByName("Misprinted Death")
TEMPERANCE_CARD = Isaac.GetCardIdByName("Misprinted Temperance")
DEVIL_CARD = Isaac.GetCardIdByName("Misprinted Devil")
TOWER_CARD = Isaac.GetCardIdByName("Misprinted Tower")
STARS_CARD = Isaac.GetCardIdByName("Misprinted Stars")
MOON_CARD = Isaac.GetCardIdByName("Misprinted Moon")
SUN_CARD = Isaac.GetCardIdByName("Misprinted Sun")
JUDGEMENT_CARD = Isaac.GetCardIdByName("Misprinted Judgement")
WORLD_CARD = Isaac.GetCardIdByName("Misprinted World")

----------------------------------------------------------------------------------------
-- Character code for Domino below.

local Template = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.00,
    FIREDELAY = 7, -- your tears stat is "30/(FIREDELAY+1)"
    DAMAGE = 3.5, -- is only the damage stat, not damage multiplier
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
            player.Damage = player.Damage - 3.5 + (Template.DAMAGE * 0.9)
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
-- Code for the tainted version of Domino below

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

local QUALITY_ZERO_ITEMS = {
    HUH_ITEM,
    65,
    136,
    186,
    287,
    294,
    40,
    56,
    295,
    39,
    41,
    86,
    177,
    126,
    137,
    325,
    44,
    111,
    66,
    290,
    35,
    36,
    421,
    504,
    482,
    480,
    481,
    486,
    478,
    475,
    578,
    555,
    631,
    655,
    605,
    582,
    9,
    19,
    74,
    117,
    141,
    148,
    161,
    180,
    188,
    195,
    198,
    206,
    211,
    233,
    236,
    252,
    258,
    262,
    272,
    273,
    274,
    276,
    315,
    316,
    358,
    371,
    388,
    394,
    420,
    426,
    447,
    452,
    468,
    470,
    525,
    539,
    593,
    603,
    610,
    672,
    681,
    721,
    725
}


--[[ function Mod:onPlayerUpdate(player)
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

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.onPlayerUpdate) ]]

function Mod:onPlayerUpdate(player)
    if player:GetPlayerType() == TAINTED_TEMPLATE_TYPE then
        local currentItems = {}

        -- ✅ Store player's current items
        for i = 1, CollectibleType.NUM_COLLECTIBLES - 1 do
            if player:HasCollectible(i) then
                currentItems[i] = true
            end
        end

        -- ✅ Compare with previous items to detect **new** pickups
        for itemID, _ in pairs(currentItems) do
            if not previousItems[itemID] then
                local itemQuality = Isaac.GetItemConfig():GetCollectible(itemID).Quality

                -- ✅ Ensure this item hasn't been repeatedly picked up/dropped
                if itemQuality == 0 and not recentPickups[itemID] then
                    local rng = player:GetCollectibleRNG(itemID)
                    if rng:RandomFloat() < 0.5 then -- ✅ 50% chance

                        -- ✅ Spawn a pedestal with a random item from our predefined list
                        if #QUALITY_ZERO_ITEMS > 0 then
                            local newItem = QUALITY_ZERO_ITEMS[rng:RandomInt(#QUALITY_ZERO_ITEMS) + 1]
                            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, player.Position, Vector(0,0), nil)
                        end
                    end

                    -- ✅ Mark item as recently picked up to prevent repeat triggers
                    recentPickups[itemID] = true
                end
            end
        end

        -- ✅ Update previous items for next check
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
                if pedestal and pedestal.SubType == 0 then -- Empty pedestal check
                    pedestal:Remove()
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.RemoveEmptyPedestals)

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

--Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Pontius.onPlayerInitPontius)

function Pontius:onCachePontius(player, cacheFlag)
    if player:GetPlayerType() == pontiusType then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Pontius.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Pontius.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            local baseDamage = Pontius.DAMAGE
            local fireRateFactor = math.max(1, 10 / player.MaxFireDelay)
            player.Damage = player.Damage - 3.5 + baseDamage + fireRateFactor
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
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
            local sprite = spear:GetSprite()
            sprite:Load("gfx/pontius_spear_throw_tech.anm2", true) -- Load your custom animation
            sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays
        elseif spear then
            local sprite = spear:GetSprite()
            sprite:Load("gfx/pontius_spear_throw.anm2", true) -- Load your custom animation
            sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays

        end

        -- Stop the default Holy Light sound (ID: 153)
        local sfx = SFXManager()
        --sfx:Stop(SoundEffect.SOUND_LASERRING_WEAK) -- Prevent default sound from playing
        --sfx:Stop(SoundEffect.SOUND_LASERRING) -- Prevent default sound from playing
        --sfx:Stop(SoundEffect.SOUND_LASERRING_STRONG) -- Prevent default sound from playing
        -- Play custom sound effect
        local sfx = SFXManager()
        sfx:Play(SoundEffect.SOUND_SWORD_SPIN) -- Replace with your custom sound ID

        local spearDamage = 5
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_20_20) then
            spearDamage = spearDamage * 1.2
        end
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_INNER_EYE) then
            spearDamage = spearDamage * 1.3
        end
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_MUTANT_SPIDER) then
            spearDamage = spearDamage * 1.4
        end
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_BRIMSTONE) then
            spearDamage = spearDamage * 1.4
        end
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_EYE_SORE) then
            spearDamage = spearDamage * math.random(1, 1.3)
        end
        if spear and player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
            spearDamage = spearDamage * 1.2
        end


        spear.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        spear.TearFlags = player.TearFlags
        if player:HasCollectible(CollectibleType.COLLECTIBLE_DR_FETUS) or player:HasCollectible(CollectibleType.COLLECTIBLE_EPIC_FETUS) then
            spear.TearFlags = TearFlags.TEAR_EXPLOSIVE | player.TearFlags
        end
        spear.AngleDegrees = directionspear:GetAngleDegrees() -- Rotate laser to match direction
        spear.Parent = player -- Attach the laser to the player
        spear.Timeout = 1 -- Set duration (adjust as needed)
        spear.CollisionDamage = playerDamage * spearDamage
        if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
            spear.CollisionDamage = (playerDamage * spearDamage) + 1
        end
        spearCooldown = spearFireRate -- Reset cooldown
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdatePontius)


----------------------------------------------------------------------------------------
-- Code for the tainted version of Pontius below

local Pontiusb = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.3,
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

--[[ function Pontiusb:onPlayerInitPontiusb(player)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        player:SetPocketActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DULL_COIN_ID)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Pontiusb.onPlayerInitPontiusb) ]]


function Pontiusb:onCachePontiusb(player, cacheFlag)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Pontiusb.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Pontiusb.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Pontiusb.DAMAGE
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

--[[ Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, function(_, player)
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
end) ]]

PontiusMelee = {}

function PontiusMelee:onUpdatePontiusMelee(player)

    local PlayerData = player:GetData()
    if PlayerData.PontiusFrame == nil then PlayerData.PontiusFrame = 0 end
    if PlayerData.PontiusCool == nil then PlayerData.PontiusCool = 0 end
    if PlayerData.LastFireDirectionPontius == nil then PlayerData.LastFireDirectionPontius = Direction.NO_DIRECTION end -- ✅ Track last fire direction
    if PlayerData.ChargeSoundPlayed == nil then PlayerData.ChargeSoundPlayed = false end -- ✅ Track if sound has played

    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        player.FireDelay = player.MaxFireDelay
        
        if player:GetFireDirection() > -1 and PlayerData.PontiusCool == 0 then
            PlayerData.LastFireDirectionPontius = player:GetFireDirection()
            PlayerData.PontiusFrame = math.min(player.MaxFireDelay * 4, PlayerData.PontiusFrame + 1)
            if PlayerData.PontiusFrame == player.MaxFireDelay * 4 and not PlayerData.ChargeSoundPlayed then
                --player:SetColor(Color(1,0,0,0.8,0, 0, 0), 1, 0, false, false)
                SFXManager():Play(SoundEffect.SOUND_SOUL_PICKUP, 1, 2, false, 1, 0)
                PlayerData.ChargeSoundPlayed = true -- ✅ Mark sound as played

            end
        elseif game:GetRoom():GetFrameCount() > 1 then
            if PlayerData.PontiusFrame == player.MaxFireDelay * 4 then
                player:UseActiveItem(LEGION_ITEM, false, false)
                --PontiusMelee:MeleeWeaponSwing(player)
                
            else
                --Dud
            end
            PlayerData.PontiusFrame = 0
            PlayerData.ChargeSoundPlayed = false

        end
        PlayerData.PontiusCool = math.max(0,PlayerData.PontiusCool - 1)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, PontiusMelee.onUpdatePontiusMelee)

function Mod:RenderPontiusHUD()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
            local data = player:GetData()
            local timerValue = data.PontiusFrame or 0
            local maxCharge = player.MaxFireDelay * 4
            local chargePercentage = math.floor((timerValue / maxCharge) * 100)
            local scale = Vector(0.75, 0.75)

            local screenPos = Vector(55, 100) -- ✅ Adjust position to fit HUD layout
            local color = timerValue <= 300 and KColor(1, 0, 0, 1) or KColor(1, 1, 1, 1) -- ✅ Red near expiration

            Isaac.RenderScaledText("Legion Charge: " .. chargePercentage .. "%", screenPos.X, screenPos.Y, scale.X, scale.Y, 1, 1, 1, 1)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RenderPontiusHUD)

PontiusFullCharge = {}

function PontiusMelee:onUpdatePontiusFullCharge(player)
    local PlayerData = player:GetData()
    local crackID = CollectibleType.COLLECTIBLE_CRACK_THE_SKY
    if PlayerData.PontiusFrame2 == nil then PlayerData.PontiusFrame2 = 0 end
    if PlayerData.PontiusCool2 == nil then PlayerData.PontiusCool2 = 0 end
    if PlayerData.LastFireDirectionPontius2 == nil then PlayerData.LastFireDirectionPontius2 = Direction.NO_DIRECTION end -- ✅ Track last fire direction
    if PlayerData.ChargeSoundPlayedb == nil then PlayerData.ChargeSoundPlayedb = false end -- ✅ Track if sound has played

    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        player.FireDelay = player.MaxFireDelay
        
        if player:GetFireDirection() > -1 and PlayerData.PontiusCool2 == 0 then
            PlayerData.LastFireDirectionPontius2 = player:GetFireDirection()
            PlayerData.PontiusFrame2 = math.min(player.MaxFireDelay * 8, PlayerData.PontiusFrame2 + 1)
            if PlayerData.PontiusFrame2 == player.MaxFireDelay * 8 and not PlayerData.ChargeSoundPlayedb then
                --player:SetColor(Color(1,0,0,0.8,0, 0, 0), 1, 0, false, false)
                SFXManager():Play(SoundEffect.SOUND_SOUL_PICKUP, 1, 2, false, 1.5, 0)
                PlayerData.ChargeSoundPlayedb = true -- ✅ Mark sound as played

            end
        elseif game:GetRoom():GetFrameCount() > 1 then
            if PlayerData.PontiusFrame2 == player.MaxFireDelay * 8 then
                --player:UseActiveItem(crackID, false, false)
                --PontiusMelee:MeleeWeaponSwing(player)
                local enemies = Isaac.FindInRadius(player.Position, 1000, EntityPartition.ENEMY)

                for _, enemy in ipairs(enemies) do
                    if enemy:IsVulnerableEnemy() and not enemy:IsDead() then
                        local holyBeam = Isaac.Spawn(
                            EntityType.ENTITY_EFFECT,
                            EffectVariant.CRACK_THE_SKY,
                            0,
                            enemy.Position,
                            Vector.Zero,
                            player
                        )
                        holyBeam.Parent = player
                        holyBeam.CollisionDamage = player.Damage / 3
                    end
                end
                
            else
                --Dud
            end
            PlayerData.PontiusFrame2 = 0
            PlayerData.ChargeSoundPlayedb = false
        end
        PlayerData.PontiusCool2 = math.max(0,PlayerData.PontiusCool2 - 1)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, PontiusMelee.onUpdatePontiusFullCharge)

function Mod:RenderPontiusFullChargeHUD()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
            local data = player:GetData()
            local timerValue = data.PontiusFrame2 or 0
            local maxCharge = player.MaxFireDelay * 8
            local chargePercentage = math.floor((timerValue / maxCharge) * 100)
            local scale = Vector(0.75, 0.75)

            local screenPos = Vector(55, 120) -- ✅ Adjust position to fit HUD layout
            local color = timerValue <= 300 and KColor(1, 0, 0, 1) or KColor(1, 1, 1, 1) -- ✅ Red near expiration

            Isaac.RenderScaledText("Holy Light: " .. chargePercentage .. "%", screenPos.X, screenPos.Y, scale.X, scale.Y, 1, 1, 1, 1)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RenderPontiusFullChargeHUD)

PontiusFullCharge = {}

function PontiusMelee:onUpdatePontiusFullChargePlus(player)
    local PlayerData = player:GetData()
    if PlayerData.PontiusFrame3 == nil then PlayerData.PontiusFrame3 = 0 end
    if PlayerData.PontiusCool3 == nil then PlayerData.PontiusCool3 = 0 end
    if PlayerData.LastFireDirectionPontius3 == nil then PlayerData.LastFireDirectionPontius3 = Direction.NO_DIRECTION end -- ✅ Track last fire direction
    if PlayerData.ChargeSoundPlayedc == nil then PlayerData.ChargeSoundPlayedc = false end -- ✅ Track if sound has played

    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        player.FireDelay = player.MaxFireDelay
        
        if player:GetFireDirection() > -1 and PlayerData.PontiusCool2 == 0 then
            PlayerData.LastFireDirectionPontius3 = player:GetFireDirection()
            PlayerData.PontiusFrame3 = math.min(player.MaxFireDelay * 6, PlayerData.PontiusFrame3 + 1)
            if PlayerData.PontiusFrame3 == player.MaxFireDelay * 6 and not PlayerData.ChargeSoundPlayedc then
                --player:SetColor(Color(1,0,0,0.8,0, 0, 0), 1, 0, false, false)
                SFXManager():Play(SoundEffect.SOUND_SOUL_PICKUP, 1, 2, false, 2, 0)
                PlayerData.ChargeSoundPlayedc = true -- ✅ Mark sound as played

            end
        elseif game:GetRoom():GetFrameCount() > 1 then
            if PlayerData.PontiusFrame3 == player.MaxFireDelay * 6 then
                --player:UseActiveItem(crackID, false, false)
                --PontiusMelee:MeleeWeaponSwing(player)
                player:UseCard(SOUL_PONTIUS, UseFlag.USE_NOANIM)
                
            else
                --Dud
            end
            PlayerData.PontiusFrame3 = 0
            PlayerData.ChargeSoundPlayedc = false
        end
        PlayerData.PontiusCool3 = math.max(0,PlayerData.PontiusCool3 - 1)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, PontiusMelee.onUpdatePontiusFullChargePlus)

function Mod:RenderPontiusFullChargePlusHUD()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
            local data = player:GetData()
            local timerValue = data.PontiusFrame3 or 0
            local maxCharge = player.MaxFireDelay * 6
            local chargePercentage = math.floor((timerValue / maxCharge) * 100)
            local scale = Vector(0.75, 0.75)

            local screenPos = Vector(55, 110) -- ✅ Adjust position to fit HUD layout
            local color = timerValue <= 300 and KColor(1, 0, 0, 1) or KColor(1, 1, 1, 1) -- ✅ Red near expiration

            Isaac.RenderScaledText("Spear Throw: " .. chargePercentage .. "%", screenPos.X, screenPos.Y, scale.X, scale.Y, 1, 1, 1, 1)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RenderPontiusFullChargePlusHUD)

function PontiusMelee:MeleeWeaponSwing(player)
    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        local PlayerData = player:GetData()
        local chargeLevel = PlayerData.PontiusFrame or 0 -- ✅ Get charge level
        -- ✅ Ensure cooldown tracking exists
        if PlayerData.LastAttackFrame == nil then PlayerData.LastAttackFrame = 0 end
        local attackCooldown = 10 -- ✅ Adjust cooldown duration (frames)

        -- ✅ Prevent attacking too fast
        if Game():GetFrameCount() < PlayerData.LastAttackFrame + attackCooldown then
            return -- ✅ Exit function if still on cooldown
        end


        local direction = Vector(0, 0) -- ✅ Default: No movement
    
        -- ✅ Detect firing direction
        if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTLEFT, player.ControllerIndex) then
            direction = Vector(-1, 0)
        elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTRIGHT, player.ControllerIndex) then
            direction = Vector(1, 0)
        elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, player.ControllerIndex) then
            direction = Vector(0, -1)
        elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, player.ControllerIndex) then
            direction = Vector(0, 1)
        end

        -- ✅ Spawn melee hitbox in correct direction
        if direction.X ~= 0 or direction.Y ~= 0 then
            local meleeHitbox = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, player.Position + direction * 40, Vector(0,0), player)
            if meleeHitbox then
                local sprite = meleeHitbox:GetSprite()
                sprite:Load("gfx/gladius.anm2", true) -- Load your custom animation
                sprite:Play("Swing", true) -- Ensure correct animation plays
                -- ✅ Adjust sprite orientation based on attack direction
                if direction.X < 0 then
                    sprite.FlipX = true -- ✅ Flip horizontally for left attacks
                    sprite.Rotation = 0 -- ✅ Keep default rotation
                elseif direction.X > 0 then
                    sprite.FlipX = false -- ✅ Keep normal for right attacks
                    sprite.Rotation = 0 -- ✅ Keep default rotation
                elseif direction.Y < 0 then
                    sprite.Rotation = -90 -- ✅ Rotate for upward attacks
                elseif direction.Y > 0 then
                    sprite.Rotation = 90 -- ✅ Rotate for downward attacks
                end
                -- ✅ Persist rotation until animation ends
                meleeHitbox:GetData().PersistRotation = sprite.Rotation

            end
            meleeHitbox:GetData().IsMeleeHitbox = true
            meleeHitbox:GetData().ChargeLevel = chargeLevel
            meleeHitbox:GetData().DestroyNextFrame = true
            meleeHitbox:GetSprite():Play("Appear")
            SFXManager():Play(SoundEffect.SOUND_SWORD_SPIN) -- ✅ Sword swing sound
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, PontiusMelee.MeleeWeaponSwing)

function Mod:FixSpriteRotation()
    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.POOF01)) do
        if effect:GetData().PersistRotation then
            effect:GetSprite().Rotation = effect:GetData().PersistRotation
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.FixSpriteRotation)

function PontiusMelee:RemoveMeleeEffects()
    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.POOF01)) do
        if effect:GetData().DestroyNextFrame then
            effect:Remove() -- ✅ Instantly deletes the effect after one frame
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, PontiusMelee.RemoveMeleeEffects)

local recentHits = {} -- ✅ Tracks enemies hit this swing

function PontiusMelee:CheckMeleeHitbox(npc)
    local data = npc:GetData()
    
    if not data.LastMeleeHitFrame then
        data.LastMeleeHitFrame = -1 -- ✅ Initialize tracking
    end

    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.POOF01)) do
        if effect:GetData().IsMeleeHitbox then
            local distance = npc.Position:Distance(effect.Position)
            
            -- ✅ Only allow one hit per enemy per attack cycle
            if distance < 100 and Game():GetFrameCount() > data.LastMeleeHitFrame + 5 and not recentHits[npc.InitSeed] then
               local player = effect.SpawnerEntity and effect.SpawnerEntity:ToPlayer()
                if player then
                    local damageMultiplier = 2.5 -- ✅ Adjust as needed
                    local scaledDamage = player.Damage * damageMultiplier -- ✅ Scale with player’s damage
                    
                    if npc:IsEnemy() and npc:IsVulnerableEnemy() then
                        npc:TakeDamage(scaledDamage, DamageFlag.DAMAGE_CRUSH | DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(effect), 0)
                        local knockbackStrength = 6 -- 🛠️ Adjust as needed
                        local direction = (npc.Position - effect.Position):Normalized()
                        npc.Velocity = npc.Velocity + direction * knockbackStrength

                        Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BLOOD_EXPLOSION, 0, npc.Position, Vector(0,0), npc)
                        SFXManager():Play(SoundEffect.SOUND_MEATY_DEATHS)
                    end
                    data.LastMeleeHitFrame = Game():GetFrameCount()
                    print("Melee hit applied! Damage:", scaledDamage)
                end

            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, PontiusMelee.CheckMeleeHitbox)

function Mod:ClearHitTracking()
    recentHits = {} -- ✅ Reset tracking after each attack cycle
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.ClearHitTracking)

function Mod:UsePugio(item, rng, player)
    --local player = Isaac.GetPlayer(0)
    if item == PUGIO_ITEM then

        local data = player:GetData()
        local playerDamage = player.Damage
        local fireDirectionPugio = player:GetFireDirection()
        local directionPugio

        -- Set correct spear direction
        if fireDirectionPugio == Direction.LEFT then
            directionPugio = Vector(-1, 0)
        elseif fireDirectionPugio == Direction.RIGHT then
            directionPugio = Vector(1, 0)
        elseif fireDirectionPugio == Direction.DOWN then
            directionPugio = Vector(0, 1)
        elseif fireDirectionPugio == Direction.UP then
            directionPugio = Vector(0, -1)
        elseif fireDirectionPugio == Direction.NO_DIRECTION then
            directionPugio = Vector(0, 1)
        end

        -- ✅ Apply random angle variation within 75 degrees
        --local angleVariation = (math.random() * 150) - 75 -- Random value between -75 and +75 degrees
        --local randomDirection = directiongun:Rotated(angleVariation)

        -- ✅ Spawn the high-damage tear
        local tear = player:FireTear(player.Position, directionPugio * 50, false, false, false, player, 1)

        if tear then
            
            tear.CollisionDamage = player.Damage -- ✅ Apply extreme damage boost

            tear.TearFlags = TearFlags.TEAR_FREEZE | TearFlags.TEAR_BAIT
            -- ✅ Load custom tear sprite (if desired)
            local sprite = tear:GetSprite()
            sprite:Load("gfx/gladius.anm2", true)
            sprite:Play("Throw", true)

            -- ✅ Apply rotation to the tear itself
            tear:GetData().ProjectileRotation = tear.Velocity:GetAngleDegrees()

            -- ✅ Play sound effect
            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1, 2, false, 1, 0) -- Replace with desired sound effect
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UsePugio, PUGIO_ITEM)

function Mod:FixTearRotation(tear)
    if tear:GetData().ProjectileRotation then
        tear:GetSprite().Rotation = tear:GetData().ProjectileRotation -- ✅ Forces rotation to persist
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_TEAR_UPDATE, Mod.FixTearRotation)

local pontiusHasPugio = false

-- Reset the flag when starting a new run
function Mod:OnNewGamePontiusBirthrightb(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        pontiusHasPugio = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGamePontiusBirthrightb) -- Reset flag between runs

function Mod:ApplyBirthrightPontiusb(player)
    if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        -- **Check if player is the normal or tainted variant**
        if player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
            if not player:GetData().hasPocketItem and pontiusHasPugio == false then
                player:SetPocketActiveItem(PUGIO_ITEM, ActiveSlot.SLOT_POCKET, true)
                local pool = game:GetItemPool()
                pool:RemoveCollectible(PUGIO_ITEM)
                pontiusHasPugio = true
            end


        --elseif player:GetPlayerType() == TAINTED_PONTIUS_TYPE then

        end

    end

end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.ApplyBirthrightPontiusb)

--[[ Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, function(_, entity, amount, damageFlags, source, countdown)
    local player = entity:ToPlayer()
    if player and player:GetPlayerType() == TAINTED_PONTIUS_TYPE then
        -- Force player death instantly
        player:Die()
    end
end, EntityType.ENTITY_PLAYER) ]]

--[[ function Mod:GrantInvulnerabilityOnHitPontius(entity, amount, flags, source, countdown)
    local player = Isaac.GetPlayer(0)

    if player:GetPlayerType() == TAINTED_PONTIUS_TYPE and source and source.Entity and not player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        player:SetMinDamageCooldown(60) -- 1 second (60 frames)
    elseif player:GetPlayerType() == TAINTED_PONTIUS_TYPE and source and source.Entity and player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        player:SetMinDamageCooldown(120) -- 1 second (120 frames)
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.GrantInvulnerabilityOnHitPontius)

local bossRoomSoulSpawned = false -- Tracks if the card has already been spawned

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, function()
    --local game = Game()
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
end) ]]

----------------------------------------------------------------------------------------
-- Character code for Glitch below.

local glitchType = Isaac.GetPlayerTypeByName("Glitch", false)


local Glitch = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.00,
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

function Glitch:onPlayerInitGlitch(player)
    if player:GetPlayerType() == glitchType then
        player:SetPocketActiveItem(GLITCH_DICE_ITEM, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(GLITCH_DICE_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Glitch.onPlayerInitGlitch)

function Glitch:onCache(player, cacheFlag)
    if player:GetPlayerType() == glitchType then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Glitch.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Glitch.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Glitch.DAMAGE
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Glitch.RANGE
            player.TearHeight = player.TearHeight + Glitch.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Glitch.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Glitch.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Glitch.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Glitch.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Glitch.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Glitch.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Glitch.onCache)

local usedDice = false
local birthrightTriggered = false
-- Reset the flag when starting a new run
function Mod:OnNewGameGlitchDice(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        usedDice = false
        birthrightTriggered = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameGlitchDice) -- Reset flag between runs

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, function(_, player)
    if player:GetPlayerType() == glitchType then
        -- If the player has lost TMTRAINER, restore it
        if not player:HasCollectible(CollectibleType.COLLECTIBLE_TMTRAINER) and usedDice == false then
            player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)

            -- Find all passive collectibles (excluding TMTRAINER and active items)
            --[[ local inventory = {}
            for i = 1, CollectibleType.NUM_COLLECTIBLES do
                local itemConfig = Isaac.GetItemConfig():GetCollectible(i)
                if player:HasCollectible(i) and i ~= CollectibleType.COLLECTIBLE_TMTRAINER and itemConfig and itemConfig.Type ~= ItemType.ITEM_ACTIVE then
                    table.insert(inventory, i)
                end
            end

            -- Remove a random passive item
            if #inventory > 0 then
                local itemToRemove = inventory[math.random(#inventory)]
                player:RemoveCollectible(itemToRemove)
            end ]]
        end
    end
end)

function Mod:ResetUsedDice()
    local player = Isaac.GetPlayer(0)
    local data = player:GetData()

    if usedDice == true then
        usedDice = false -- ✅ Resets the flag when a new room loads
        --print("Resetting usedDice - TMTRAINER will now be restored normally.")
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetUsedDice)

function Mod:RemoveEmptyPedestalsGlitch(player)
    local player = Isaac.GetPlayer(0) -- Retrieves the first player

    if player:GetPlayerType() == glitchType then -- Replace with your character's ID
        local entities = Isaac.GetRoomEntities()

        for _, entity in ipairs(entities) do
            if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                local pedestal = entity:ToPickup()
                if pedestal and pedestal.SubType == 0 then -- Empty pedestal check
                    pedestal:Remove()
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.RemoveEmptyPedestalsGlitch)

--[[ function Mod:ApplyBirthrightEffectGlitch(player)
    local data = player:GetData()

    if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and birthrightTriggered == false then
        player:RemoveCollectible(GLITCH_DICE_ITEM)
        player:SetPocketActiveItem(GLITCH_DICE_ITEM_2, ActiveSlot.SLOT_POCKET, true)
        birthrightTriggered = true
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.ApplyBirthrightEffectGlitch) ]]

----------------------------------------------------------------------------------------
-- Character code for TaintedGlitch below.

local TAINTED_GLITCH_TYPE = Isaac.GetPlayerTypeByName("Glitch", true)


local Glitchb = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.00,
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

--[[ function Glitch:onPlayerInitGlitchn(player)
    if player:GetPlayerType() == glitchType then
        player:SetPocketActiveItem(DEBUG_ITEM, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DEBUG_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Glitchb.onPlayerInitGlitchb) ]]

function Glitchb:onCache(player, cacheFlag)
    if player:GetPlayerType() == TAINTED_GLITCH_TYPE then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Glitchb.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Glitchb.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Glitchb.DAMAGE
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Glitchb.RANGE
            player.TearHeight = player.TearHeight + Glitchb.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Glitchb.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Glitchb.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Glitchb.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Glitchb.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Glitchb.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Glitchb.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Glitchb.onCache)

----------------------------------------------------------------------------------------
-- Character code for Abraham below.

local abrahamType = Isaac.GetPlayerTypeByName("Abraham", false)


local Abraham = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 1.00,
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

function Abraham:onPlayerInitAbraham(player)
    if player:GetPlayerType() == abrahamType then
        player:SetPocketActiveItem(DUAE_ITEM, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DUAE_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Abraham.onPlayerInitAbraham)

function Abraham:onCache(player, cacheFlag)
    if player:GetPlayerType() == abrahamType then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Abraham.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Abraham.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage - 3.5 + Abraham.DAMAGE
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Abraham.RANGE
            player.TearHeight = player.TearHeight + Abraham.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Abraham.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Abraham.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Abraham.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Abraham.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Abraham.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Abraham.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Abraham.onCache)

----------------------------------------------------------------------------------------
-- Character code for Tainted Abraham below.

local TAINTED_ABRAHAM_TYPE = Isaac.GetPlayerTypeByName("Abraham", true)


local Abrahamb = { -- shown below are default values, as shown on Isaac, for you to change around
    SPEED = 2.00,
    FIREDELAY = 10, -- your tears stat is "30/(FIREDELAY+1)"
    DAMAGE = 3.5, -- is only the damage stat, not damage multiplier
    RANGE = 260, -- your range stat is "40*RANGE"
    SHOTSPEED = 1.00,
    LUCK = 0.00,
    TEARHEIGHT = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFALLINGSPEED = 0.00, -- these are non default values, instead being additive to the default value because I do not know what the default is
    TEARFLAG = 0, -- Determines some behaviors of your tears, https://wofsauge.github.io/IsaacDocs/rep/enums/TearFlags.html
    TEARCOLOR = Color(0, 0, 0, 1.0, 0, 0, 0), -- r1.0 g1.0 b1.0 a1.0 0r 0g 0b (the last three are offsets)
    FLYING = false
}

function Abrahamb:onPlayerInitAbrahamb(player)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        player:SetPocketActiveItem(DEMON_DASH_ITEM, ActiveSlot.SLOT_POCKET, true)
        local pool = game:GetItemPool()
        pool:RemoveCollectible(DEMON_DASH_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Abrahamb.onPlayerInitAbrahamb)

function Abrahamb:onCache(player, cacheFlag)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed - 1 + Abrahamb.SPEED
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - 10 + Abrahamb.FIREDELAY
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage - 3.5 + Abrahamb.DAMAGE) * 2
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange - 260 + Abrahamb.RANGE
            player.TearHeight = player.TearHeight + Abrahamb.TEARHEIGHT
            player.TearFallingSpeed = player.TearFallingSpeed + Abrahamb.TEARFALLINGSPEED
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed - 1 + Abrahamb.SHOTSPEED
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + Abrahamb.LUCK
        end
        if cacheFlag == CacheFlag.CACHE_TEARFLAG then
            player.TearFlags = player.TearFlags | Abrahamb.TEARFLAG -- The OR here makes sure that if you have an item that changes tear flags, the values you set takes priority
        end
        if cacheFlag == CacheFlag.CACHE_TEARCOLOR then
            player.TearColor = Abrahamb.TEARCOLOR
        end
        if cacheFlag == CacheFlag.CACHE_FLYING and Abrahamb.FLYING then
            player.CanFly = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Abrahamb.onCache)

function Mod:ResetDeathTimerOnGameStart(isContinued)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
            local data = player:GetData()

            -- ✅ If the run is fresh (not continued), set a new timer
            if not isContinued then
                data.DeathTimer = player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and 900 or 600
                Isaac.SaveModData(Mod, tostring(data.DeathTimer))
                print("New game detected—Death Timer reset to:", data.DeathTimer)
            else
                -- ✅ Load timer from save if continuing a previous run
                local savedTimer = Isaac.LoadModData(Mod)
                data.DeathTimer = (savedTimer ~= "" and tonumber(savedTimer)) or 600
                print("Continuing previous run—Death Timer restored:", data.DeathTimer)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.ResetDeathTimerOnGameStart)

function Mod:PreventDamage(entity, amount, flag, source, countdown)
    local player = entity:ToPlayer()
    
    if player and player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        return false -- ✅ Completely negates damage
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.PreventDamage)

function Mod:UpdateDeathTimer(player)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        local timersfx = SFXManager()
        local data = player:GetData()
       if not data.DeathTimer then 
            --data.DeathTimer = player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and 900 or 600 -- ✅ 60 sec with Birthright, 30 sec default
            local savedData = Isaac.LoadModData(Mod) -- Load persistent data
            --[[ if savedData ~= "" then
                data.DeathTimer = tonumber(savedData) or (player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and 900 or 600)
            else
                data.DeathTimer = player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and 900 or 600
            end ]]
            data.DeathTimer = (savedData ~= "" and tonumber(savedData)) or 600


        end
        print(data.DeathTimer)


        data.DeathTimer = math.max(0, data.DeathTimer - 1) -- ✅ Reduce timer every frame

        if data.DeathTimer == 300 then
            timersfx:Play(SoundEffect.SOUND_DOGMA_APPEAR_SCREAM, 1.5, 0, false, 1)
        end

        
        -- ✅ If timer reaches zero, kill player & reset stored timer
        if data.DeathTimer == 0 then
            player:Kill()
            Isaac.SaveModData(Mod, "600") -- ✅ Reset stored timer upon death
        else
            -- ✅ Save updated timer for continuity
            Isaac.SaveModData(Mod, tostring(data.DeathTimer))
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.UpdateDeathTimer)

function Mod:ResetTimerOnDamage(entity, amount, flag, source, countdown)
    local player = nil

    -- ✅ Check if source is directly the player
    if source and source.Entity and source.Entity:ToPlayer() then
        player = source.Entity:ToPlayer()
    end

    -- ✅ Check if damage was caused by a tear, bomb, laser, or familiar belonging to the player
    if not player and source and source.Entity then
        local entity = source.Entity
        if entity:ToTear() or entity:ToBomb() or entity:ToLaser() or entity:ToFamiliar() then
            player = entity.SpawnerEntity and entity.SpawnerEntity:ToPlayer()
        end
    end

    -- ✅ If a valid player caused the damage, reset their timer
    if player and player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        local data = player:GetData()
        data.DeathTimer = player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) and 900 or 600
        Isaac.SaveModData(Mod, tostring(data.DeathTimer))
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.ResetTimerOnDamage)

function Mod:DealContactDamage(player)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        local data = player:GetData()
        if not data.LastContactHitFrame then data.LastContactHitFrame = 0 end

        if Game():GetFrameCount() > data.LastContactHitFrame + 10 then -- ✅ Limits hits to once every 10 frames
            local enemies = Isaac.FindInRadius(player.Position, 30, EntityPartition.ENEMY)

            for _, enemy in ipairs(enemies) do
                if enemy:IsVulnerableEnemy() then
                    enemy:TakeDamage(20, DamageFlag.DAMAGE_IGNORE_ARMOR | DamageFlag.DAMAGE_NO_PENALTIES, EntityRef(player), 0)
                    --print("Enemy hit by contact damage!")
                end
            end
            data.LastContactHitFrame = Game():GetFrameCount() -- ✅ Updates cooldown time
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.DealContactDamage)


function Mod:RenderDeathTimerHUD()
    local player = Isaac.GetPlayer(0)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        local data = player:GetData()
        local timerValue = data.DeathTimer or 0
        local scale = Vector(0.75, 0.75)

        local screenPos = Vector(55, 50) -- ✅ Adjust position to fit HUD layout
        local color = timerValue <= 300 and KColor(1, 0, 0, 1) or KColor(1, 1, 1, 1) -- ✅ Red near expiration

        Isaac.RenderScaledText("Time Left: " .. timerValue, screenPos.X, screenPos.Y, scale.X, scale.Y, 1, 1, 1, 1)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RenderDeathTimerHUD)

function Mod:OnItemPickupKnife(player)
    if player:GetPlayerType() == TAINTED_ABRAHAM_TYPE then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_KNIFE_PIECE_1) and not player:HasCollectible(CollectibleType.COLLECTIBLE_KNIFE_PIECE_2) then
            player:AddCollectible(CollectibleType.COLLECTIBLE_KNIFE_PIECE_2)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnItemPickupKnife)


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
                    URIEL_ITEM,
                    GABRIEL_ITEM,
                    AZAZEL_ESSENCE,
                    CAIN_ESSENCE,
                    DOGMA_ITEM,
                    ZEAL_ITEM,
                    PROTO_ITEM,
                    NECROMANCY_ITEM,
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
                local luckScaling = math.max(player.Luck * 0.25, 0) -- Adjust multiplier as needed
                player.Damage = player.Damage + luckScaling
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateBirthrightCache)

local pontiusHasShield = false

-- Reset the flag when starting a new run
function Mod:OnNewGamePontiusBirthright(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        pontiusHasShield = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGamePontiusBirthright) -- Reset flag between runs

function Mod:ApplyBirthrightPontius(player)
    if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) then
        -- **Check if player is the normal or tainted variant**
        if player:GetPlayerType() == pontiusType then
            if not player:GetData().hasPocketItem and pontiusHasShield == false then
                player:SetPocketActiveItem(PHALANX_ITEM, ActiveSlot.SLOT_POCKET, true)
                local pool = game:GetItemPool()
                pool:RemoveCollectible(PHALANX_ITEM)
                pontiusHasShield = true
            end


        elseif player:GetPlayerType() == TAINTED_PONTIUS_TYPE then

        end

    end

end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.ApplyBirthrightPontius)


----------------------------------------------------------------------------------------
-- Item code below.

local EIDicons = Sprite()
EIDicons:Load("gfx/EIDIcons.anm2", true)

if EID then
    EID:addIcon("Player"..templateType, "Template", 0, 16, 16, 0, 0, EIDicons)
    EID:addIcon("Player"..TAINTED_TEMPLATE_TYPE, "Jinxed", 0, 16, 16, 0, 0, EIDicons)
    EID:addIcon("Player"..pontiusType, "Longinus", 0, 16, 16, 0, 0, EIDicons)
    EID:addIcon("Player"..TAINTED_PONTIUS_TYPE, "Awoken", 0, 16, 16, 0, 0, EIDicons)
    EID:addIcon("Player"..abrahamType, "Abraham", 0, 16, 16, 0, 0, EIDicons)
    EID:addIcon("Player"..TAINTED_ABRAHAM_TYPE, "Heretic", 0, 16, 16, 0, 0, EIDicons)

    EID:addCollectible(LUCKY_DICE_ID, "Reroll all item pedestals in the current room.#{{Warning}} Items rerolled will be chosen from a special item pool consisting of luck/chance based items.", "Lucky Coin")
    EID:addCollectible(DULL_COIN_ID, "Rerolls all item pedestals in the room.#Items are rerolled into ones of 1 lower quality.#If no item pedestals containing quality 1 items or above exist and Isaac holds at least 10 quality 0 items, 10 quality 0 items will be removed from his inventory and replaced with a quality 3 or 4 item.", "Dull Coin")
    EID:addCollectible(HATRED_ITEM, "{{ArrowUp}} 25% chance to become invulnerable briefly upon damaging an enemy.", "Unholy Mantle")
    EID:addCollectible(URIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires a holy light beam forward.#Scales with Isaac's damage.", "Lil' Uriel")
    EID:addCollectible(GABRIEL_ITEM, "Familiar that trails behind Isaac and preiodically fires 4 holy light beams in an 'X' pattern.#Scales with Isaac's damage.", "Lil' Gabriel")
    EID:addCollectible(CATALYST_SHEET_ITEM, "No no no NO NO NO nO no AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", "Catalyst Character Sheet")
    EID:addCollectible(FAIL_ITEM, "Familiar that fires Haemolaceria tears.#Tears deal 10 damage and split into multiple smaller tears upon contact with a surface or enemy.", "Failed Abortion")
    EID:addCollectible(FINAL_JUDGMENT_ITEM, "Spawns a circle of light beams around Isaac, gives Isaac +50 damage, 4x fire rate, +1.25 range, +2 speed, and +3 luck along with total invulnerability, a pocket active that allows firing of holy light beams, and random light beams from the sky targetting enemies for 30 seconds.#{{Warning}} Upon expiration, this effect causes a large explosion in the current room.", "Final Judgement")
    EID:addCollectible(FINAL_JUDGMENT_ITEM_VFX, "I exist to make the visuals work!", "Final Judgement VFX")
    EID:addCollectible(LILITH_ESSENCE, "Makes all enemies in the current room friendly upon use.", "Essence of Lilith")
    EID:addBirthright(templateType, "{{ArrowUp}} +10 luck#{{ArrowUp}} Gives a scaling damage up equal to 50% of Isaac's luck stat.")
    EID:addBirthright(TAINTED_TEMPLATE_TYPE, "Grants a random passive quality 4 item.")
    EID:addTrinket(RELIQUARY_TRINKET, "{{Warning}} Picking up this trinket will immediately teleport Isaac to a special Essence Reliquary room.#This room will contain an item from a unique item pool containing various items relating to character's gimmicks.", "Reliquary Access Card")
    EID:addCollectible(AMP_ITEM, "Spawn a stationary familiar which projects a damage amplification area onto the ground.#{{ArrowUp}} Standing within this area will multiply Isaac's damage by 5.#Entering a new room will place the familiar at the door.#{{Warning}} Familiar expires after 20 seconds.", "Amplifier")
    EID:addCollectible(HUH_ITEM, "Rerolls all item pedestals in the room into The Poop.", "Huh?")
    EID:addTrinket(CLOVER_TRINKET, "{{ArrowUp}} +2 luck.#{{Collectible202}} +4 luck if golden.", "Four Leaf Clover")
    EID:addTrinket(ORB_TRINKET, "Automatically rerolls quality 0 items.#{{Collectible202}} No effect if golden.", "Orb Shard")
    EID:addTrinket(PHOTO_TRINKET, "Picking up either The Polaroid or The Negative will grant the opposite item.#{{Collectible202}} No effect if golden.", "Stitched Photo")
    EID:addTrinket(CANDLE_TRINKET, "Grants 2 black hearts at the beginning of a floor if there is an active curse.#{{Collectible202}} Grants 4 black hearts if golden.", "Black Candle Wick")
    EID:addCollectible(BOND_ITEM, "Become invincible and dash forward leaving behind creep which deals damage to enemies and heals Isaac's red hearts.#This effect can be used up to 4 times before the item needs to be recharged.#Creep expires after 10 seconds.", "Eternal Bond 4")
    EID:addCollectible(BOND_ITEM2, "Become invincible and dash forward leaving behind creep which deals damage to enemies and heals Isaac's red hearts.#This effect can be used up to 4 times before the item needs to be recharged.#Creep expires after 10 seconds", "Eternal Bond 3")
    EID:addCollectible(BOND_ITEM3, "Become invincible and dash forward leaving behind creep which deals damage to enemies and heals Isaac's red hearts.#This effect can be used up to 4 times before the item needs to be recharged.#Creep expires after 10 seconds", "Eternal Bond 2")
    EID:addCollectible(BOND_ITEM4, "Become invincible and dash forward leaving behind creep which deals damage to enemies and heals Isaac's red hearts.#This effect can be used up to 4 times before the item needs to be recharged.#Creep expires after 10 seconds", "Eternal Bond 1")
    EID:addCollectible(BOND_ITEM_EMPTY, "Does nothing.#Activating the item will restore Eternal Bond back to 4 charges.", "Empty Eternal Bond")
    EID:addCollectible(COMP_ITEM, "{{ArrowUp}} Grants +1 damage for every quality 0 item Isaac holds.")
    EID:addCollectible(ANATOMY_ITEM, "Grants 1 bone heart on use.")
    EID:addCollectible(BLANK_SLATE_ITEM, "Counts as an item for every transformation in the game.#Doesn't have any effect on its own.", "Blank Slate")
    EID:addCollectible(ISAAC_ESSENCE, "Spawns 3 item pedestals containing quality 4 items.#{{Warning}} Taking one of the items will cause Isaac to lose this item and cause the other two item pedestals to dissapear.", "Essence of Isaac")
    EID:addCollectible(MAGDALENE_ESSENCE, "Heals all players to full health on use.", "Essence of Magdalene")
    EID:addCollectible(CAIN_ESSENCE, "Gives 20 coins, keys, and bombs upon pickup.#At the start of every new floor, spawns a golden penny, golden key, and golden bomb.", "Essence of Cain")
    EID:addCollectible(JUDAS_ESSENCE, "{{ArrowUp}} Gives +1 damage.#{{ArrowUp}} Grants a 2.5x damage multiplier when Isaac has 3 total hearts (of any type) or less.", "Essence of Judas")
    EID:addCollectible(BLUE_BABY_ESSENCE, "Entering a new room spawns 10 blue flies.", "Essence of ???")
    EID:addCollectible(EVE_ESSENCE, "While Isaac has no filled red heart containers:#{{ArrowUp}} +25% damage multiplier#{{ArrowUp}} -1 fire delay", "Essence of Eve")
    EID:addCollectible(SAMSON_ESSENCE, "Dash forward becoming invulnerable.#The dash deals Isaac's damage + 10 to enemies.#{{ArrowUp}} The dash damage increases depending on how many enemies are hit.", "Essence of Samson")
    EID:addCollectible(AZAZEL_ESSENCE, "5% chance to fire a tear that causes Isaac to fire a large brimstone beam on contact with something.#{{Luck}} 100% chance at 19 luck.", "Essence of Azazel")
    EID:addCollectible(LAZARUS_ESSENCE, "{{ArrowUp}} Grants +1 damage, a +50% damage multiplier, -1 tear delay, +0.5 speed, +3.75 range, +1 shot speed, and +2 luck upon dying and being revived.#{{Warning}} Essence of Lazarus can only trigger once.#{{Warning}} This item will NOT revive you, it is not an extra life.", "Essence of Lazarus")
    EID:addCollectible(LAZARUS_ESSENCE_UNLOCKED, "{{ArrowUp}} +1 damage.#{{ArrowUp}} +50% damage multiplier.#{{ArrowUp}} -1 tear delay.#{{ArrowUp}} +0.5 speed.#{{ArrowUp}} +3.75 range.#{{ArrowUp}} +1 shot speed.#{{ArrowUp}} +2 luck.", "Unlocked Essence of Lazarus")
    EID:addCollectible(EDEN_ESSENCE, "One time use active that rerolls all held passive items.#Rerolls have an extreme tendency to give high quality items.#Will still only activate once if absorbed by void.", "Essence of Eden")
    EID:addCollectible(KEEPER_ESSENCE, "Grants 99 cents on pickup.#Infinite money for the current floor.", "Essence of Keeper")
    EID:addCollectible(APOLLYON_ESSENCE, "For 8 seconds gain:#{{ArrowUp}} Invincibility#{{ArrowUp}} 40 contact damage to enemies.#For every enemy killed during Essence of Apollyon's effect, permanently gain +0.05 damage.", "Essence of Apollyon")
    EID:addCollectible(BETHANY_ESSENCE, "Grants a random Book of Virtues wisp when entering a new room.", "Essence of Bethany")
    EID:addCollectible(DOMINO_ESSENCE, "{{ArrowUp}} +3 luck.#Grants 2 items from the Lucky Coin item pool.", "Essence of Domino")
    EID:addCollectible(PONTIUS_ESSENCE, "Throw one of Longinus' spears in the current attack direction.#Spears deal 10x Isaac's damage.", "Essence of Longinus")
    EID:addCollectible(LOST_ESSENCE, "For the current room:#{{Warning}} Become the lost.", "Essence of The Lost")
    EID:addCollectible(JACOB_AND_ESAU_ESSENCE, "Gain two familiars, Lil' Jacob and Lil' Esau which scale with Isaac's damage and fire rate.#Jacob deals less damage but shoots faster, Esau deals more damage but shoots slower.", "Essence of Jacob and Esau")
    EID:addCollectible(FORGOTTEN_ESSENCE, "Gain a familiar which scales with your damage and fire rate.#Activating Essence of the Forgotten will teleport Isaac to the familiar's position and grant a brief period of invulnerability.", "Essence of The Forgotten")
    EID:addCollectible(SOUL_ESSENCE, "Gain a familiar which scales with your damage and fire rate.#Activating Essence of the Forgotten will teleport Isaac to the familiar's position and grant a brief period of invulnerability.", "Essence of The Soul")
    EID:addCollectible(STAR_OF_DAVID, "{{ArrowUp}} 10% chance to fire star of david tears which deal 30% more damage.#{{Luck}} 100% chance at 9 luck.#{{ArrowUp}} 1% chance for enemies to drop a golden heart on death.#{{Luck}} +1% chance per point of luck.", "Yamika")
    EID:addCollectible(GUN_ITEM, "Fire a tear that deals 10x Isaac's damage plus 10 flat damage.#{{Warning}} The tear fired is wildly inaccurate.", "A Gun")
    EID:addCollectible(APPETIZER_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.", "Appetizer")
    EID:addCollectible(MORNING_SNACK_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.", "Early Morning Snack")
    EID:addCollectible(KINGSLAYER_ITEM, "{{ArrowUp}} Gain +50% damage when in an uncleared boss room.", "Kingslayer")
    EID:addBirthright(pontiusType, "Grants Phalanx as a pocket active item.#Phalanx grants Isaac 1 second of invulnerability on use and has a 5 second cooldown.")
    EID:addCollectible(PHALANX_ITEM, "Grants Isaac 1 second of invulnerability on use and has a 5 second cooldown.", "Phalanx")
    EID:addBirthright(TAINTED_PONTIUS_TYPE, "Grants Pugio as a pocket active item.#Pugio allows Isaac to throw a projectile which petrifies enemies it hits.")
    EID:addCollectible(DEFENSE_TECH_ITEM, "Spawns a laser ring around Isaac that deals 25% of his damage every tick.", "Defense Tech")
    EID:addCollectible(NECROMANCY_ITEM, "Killed non-boss enemies have a 10% chance to be revived as friendlies which last for the current room.#{{Luck}} 75% chance at 18 luck.", "Necromancy")
    EID:addCollectible(MONEY_ITEM, "One time use active item that gives Isaac coins equal to the amount of money spent throughout the run.#Will still only activate once if absorbed by void.", "Become Back My Money")
    EID:addCollectible(PAINT_ITEM, "Turns Isaac's currently held trinket into its golden version.#{{Warning}} Using the item on a golden trinket will turn it into its non golden variant.#{{Warning}} Will only affect one trinket at a time, always turns the trinket held in the first slot to gold.", "Gold Spray Paint")
    EID:addCollectible(GLITCH_ITEM, "Grants a 1 in 100,000,000 chance to fire a tear that instantly kills any enemy it hits inclusing bosses.#{{Luck}} 100% chance at 99,999,999 luck.", "'/<<L7")
    EID:addCollectible(PROTO_ITEM, "Isaac's tears are replaced by a chargeable 1 tick laser which deals 10x Isaac's damage.", "Proto-Tech")
    EID:addCollectible(FRED_ITEM, "Spawns an immortal friendly Gaper on pickup.#The Gaper persists between floors.", "Fred The Friendly Gaper")
    EID:addTrinket(SIN_PENNY_TRINKET, "Chance for a black heart to drop when picking up a coin.#Higher coin values have a higher chance to drop hearts.#{{Collectible202}} Chances are doubled when golden.", "Sinful Penny")
    EID:addTrinket(BONE_PENNY_TRINKET, "Chance for a bone heart to drop when picking up a coin.#Higher coin values have a higher chance to drop hearts.#{{Collectible202}} Chances are doubled when golden.", "Skele-Penny")
    EID:addCollectible(DEBUG_ITEM, "Triggers a random debug command effect (excluding debug 3: Infinite HP).#{{Warning}} When using Debug Console, there is a chance that a previously applied effect will be removed instead.", "Debug Console")
    EID:addTrinket(YUCK_PENNY_TRINKET, "Chance for a rotten heart to drop when picking up a coin.#Higher coin values have a higher chance to drop hearts.#{{Collectible202}} Chances are doubled when golden.", "Yuck Penny")
    EID:addCollectible(TOAST_ITEM, "{{ArrowUp}} +0.1 speed#{{ArrowUp}} +0.03 tears#{{ArrowUp}} +0.2 damage#{{ArrowUp}} +11.25 range#{{ArrowUp}} +3 shot speed#{{ArrowUp}} +1 luck#{{ArrowUp}} +1/2 soul heart", "Toast Sandwich")
    EID:addCollectible(GLITCH_DICE_ITEM, "Removes TMTRAINER from Isaac's inventory for the current room and rerolls all item pedestals.#Items are rerolled into items from the corresponding item pool.#{{Warning}}If this item is used in a room with no valid pedestals, the last passive item Isaac collected will be removed from his inventory.#This effect can only store up to 1 item, picking up a new item will lock in all old items.", "D-=777'L")
    EID:addCollectible(GLITCH_DICE_ITEM_2, "Removes TMTRAINER from Isaac's inventory for the current room and rerolls all item pedestals.#Items are rerolled into items from the corresponding item pool.#{{Warning}}If this item is used in a room with no valid pedestals, the last passive item Isaac collected will be removed from his inventory.#This effect can only store up to 1 item, picking up a new item will lock in all old items.", "D-=777'L")
    EID:addBirthright(glitchType, "Reduces the charges required to use D-=777'L from 12 to 6.")
    EID:addCollectible(GLITCH_ESSENCE, "Reroll all item pedestals in the room into TMTRAINER items.", "64 36")
    EID:addCollectible(LUCKY_PENNY_ITEM, "Spawns 5 lucky pennies on the ground around Isaac.", "Sack of Lucky Pennies")
    EID:addCollectible(TOOLBELT_ITEM, "Isaac's active item is moved to the pocket slot.#If Isaac does not have an active item, it grants a random one and makes it a pocket active.#If Isaac already has a pocket active, it will spawn a random active item on a pedestal.#{{Warning}} If Isaac has 2 active items, the currently selected one will be moved to the pocket slot.", "Toolbelt")
    EID:addCollectible(TOOLBELT_FIX_ITEM, "Isaac's active item is moved to the pocket slot.#If Isaac does not have an active item, it grants a random one and makes it a pocket active.#If Isaac already has a pocket active, it will spawn a random active item on a pedestal.#{{Warning}} If Isaac has 2 active items, the currently selected one will be moved to the pocket slot.", " Toolbelt ")
    EID:addCollectible(MOON_ITEM, "Grants 3 fast moving orbitals which orbit Isaac as a far distance.#The orbitals block enemy projectiles and deal 5 damage per tick to enemies.", "Deep Orbit")
    EID:addCollectible(FLUX_ITEM, "Grants an absurdly fast moving orbital.#The orbital can block enemy projectiles and deals 20 damage per tick to enemies.#The orbital will randomly change orbiting distance at random intervals.", "Broken Flux Capacitor")
    EID:addCollectible(LIGHT_ITEM, "Grants 1 stack towards the angel path.", "Path of Salvation")
    EID:addCollectible(DARK_ITEM, "Grants 1 stack towards the devil path.", "Path of Temptation")
    EID:addCollectible(ANGEL_ONE_ITEM, "5% chance for enemies to drop a half soul heart on death.#{{Luck}} +2.5% chance per point of luck.", "Angel's Path 1")
    EID:addCollectible(ANGEL_TWO_ITEM, "Grants flight.", "Angel's Path 2")
    EID:addCollectible(ANGEL_THREE_ITEM, "5% chance to fire a tear that causes Isaac to fire a holy light beam on contact with something.#{{Luck}} 100% chance at 19 luck.", "Angel's Path 3")
    EID:addCollectible(ANGEL_FOUR_ITEM, "Spawns a circle of light beams around Isaac, gives Isaac +50 damage, 4x fire rate, +1.25 range, +2 speed, and +3 luck along with total invulnerability, rapid fire holy light beams, and random light beams from the sky targetting enemies for 30 seconds.#{{Warning}} Upon expiration, this effect causes a large explosion in the current room.", "Angel's Path 4")
    EID:addCollectible(DEVIL_ONE_ITEM, "Isaac's tears light enemies on fire.#0.5% chance for enemies to drop a golden heart on death.#{{Luck}} +0.5% chance per point of luck.", "Devil's Path 1")
    EID:addCollectible(DEVIL_TWO_ITEM, "Isaac constantly emits creep that lights enemies on fire.", "Devil's Path 2")
    EID:addCollectible(DEVIL_THREE_ITEM, "{{ArrowUp}} +1 damage.#{{ArrowUp}} +50% damage multiplier.#{{ArrowUp}} -1 tear delay.#{{ArrowUp}} +0.5 speed.#{{ArrowUp}} +3.75 range.#{{ArrowUp}} +1 shot speed.#{{ArrowUp}} +2 luck.", "Devil's Path 3")
    EID:addCollectible(DEVIL_FOUR_ITEM, "Spawns a circle of fire pillars around Isaac, gives Isaac +50 damage, 4x fire rate, +1.25 range, +2 speed, and +3 luck along with total invulnerability, a pocket active that allows for rapid dashes which deal high damage to enemies, and random fire pillars targetting enemies for 30 seconds.#{{Warning}} Upon expiration, this effect causes a large explosion in the current room.", "Devil's Path 4")
    EID:addCollectible(DEMON_DASH_ITEM, "Dash forward becoming invulnerable and deal 100 damage to enemies in your path.", "Rend")
    EID:addBirthright(TAINTED_ABRAHAM_TYPE, "Death timer is extended to 15 seconds.")
    EID:addBirthright(abrahamType, "Grants the Neutrality item when stacks for both the angel and devil paths are 0.")
    EID:addCollectible(NEUTRAL_ITEM, "{{ArrowUp}} +50% damage.", "Neutrality")
    EID:addCollectible(ABRAHAM_ESSENCE_ITEM, "Grants 3 soul hearts when entering an angel room.#Grants 3 black hearts when entering a devil room.#Essence of Abraham can be triggered once per floor.", "Essence of Abraham")
    EID:addCollectible(OMEGA_ITEM, "Rapidly fire a barrage of lasers for 4 seconds.#The lasers deal 0.5x Isaac's damage.", "Technology Omega")
    EID:addTrinket(TECH_TRINKET, "10% chance to fire a technology laser instead of a normal tear.#{{Luck}} +5% chance to trigger per point of luck.#{{Collectible202}} +10% chance to trigger per point of luck when golden.", "Bootleg Tech")
    EID:addCard(SOUL_DOMINO, "{{Luck}} +10 luck for the current room.", "Soul of Domino")
    EID:addCard(SOUL_PONTIUS, "Fire 8 spears in a circular pattern around yourself.#The spears deal 5x Isaac's damage and copy tear effects.", "Soul of Longinus")
    EID:addCard(SOUL_ABRAHAM, "Removes all devil room chances and converts the into angel room chances for the floor.#{{Warning}} Taking red heart damage after activation can still reduce your chances of seeing an angel room.", "Soul of Abraham")
    EID:addCollectible(JUBILEES_ITEM, "Sends Isaac to an angel room.# This angel room is separate from the one generated for the floor.# Starts uncharged.#{{Warning}} After being activates 3 timee, it will turn into Glowing Page.", "Book of Jubilees")
    EID:addCollectible(JUBILEES_ITEM2, "Sends Isaac to an angel room.# This angel room is separate from the one generated for the floor.# Starts uncharged.#{{Warning}} After being activates 3 timee, it will turn into Glowing Page.", "Book of Jubilees 2/3")
    EID:addCollectible(JUBILEES_ITEM3, "Sends Isaac to an angel room.# This angel room is separate from the one generated for the floor.# Starts uncharged.#{{Warning}} After being activates 3 timee, it will turn into Glowing Page.", "Book of Jubilees 1/3")
    EID:addCollectible(PAGE_ITEM, "50% chance to gain 1/2 of a soul heart on use.", "Glowing Page")
    EID:addCard(RELIQUARY_CARD, "Spawns an Essence Collector.", "Essence Card")
    EID:addCollectible(ANGEL_BLAST_ITEM, "Fire a holy light beam which deals Isaac's damage.", "Angel Blast")
    EID:addTrinket(NOISEMAKER_TRINKET, "{{ArrowUp}} +0.25 speed.#{{ArrowUp}} -1 fire delay.#{{ArrowUp}} +1 damage.#{{ArrowUp}} +25% damage multiplier.#{{ArrowUp}} +3.75 range.#{{ArrowUp}} +0.3 shot speed.#{{ArrowUp}} +1 luck.#{{Warning}} While The Devil's Noisemaker is held random sound effects will be repeatedly played at an extremely high volume.#{{Collectible202}} When golden, all stat ups except for the damage multiplier are doubled and the volume of the sound effects is doubled.", "The Devil's Noisemaker")
    EID:addEntity(6, 249376971, -1, "Essence Collector", "Removes 3 soul/black hearts and spawns a random item from the Essence Reliquary pool along with some random pickups in return.")
    EID:addCharacterInfo(templateType, "{{ArrowUp}} High luck stat.#Starts with Lucky Coin as a pocket active item.", "Domino")
    EID:addCharacterInfo(TAINTED_TEMPLATE_TYPE, "{{ArrowDown}} Items above quality 2 are automatically rerolled into lower quality items.#{{Warning}} These rerolls are chosen from random item pools.#{{ArrowUp}} Picking up quality 0 items has a chance to spawn another item pedestal containing a quality 0 item.#Starts with Dull Coin as a pocket active item.", "The Jinxed")
    EID:addCharacterInfo(pontiusType, "Throws spears instead of firing normal tears.#{{ArrowUp}} Spears pierce enemies and deal 5x normal damage.#{{ArrowDown}} Spears are unaffected by tears stat and do not interact with most special tear effects.#Tears up/down effects grant small increases/decreases to damage.", "Longinus")
    EID:addCharacterInfo(TAINTED_PONTIUS_TYPE, "Cannot fire normal tears.#Attacks using a melee weapon.#Melee weapon can be charged up by holding the attack button, this will trigger increasingly strong effects depending on how long the button is held.", "The Awoken")
    EID:addCharacterInfo(abrahamType, "Starts with Duae Viae as a pocket active item.", "Abraham")
    EID:addCharacterInfo(TAINTED_ABRAHAM_TYPE, "{{ArrowUp}} Extremely high stats.#{{ArrowUp}} The Heretic cannot take damage.#{{Warning}} The Heretic is on a 10 second timer, if it runs out he dies.#The timer can be reset by dealing damage to an enemy.#Collecting Knife Piece 1 will automatically grant Knife Piece 2.#Starts with Rend as a pocket active item.", "The Heretic")
    EID:addCollectible(DUAE_ITEM, "Spawns two item pedestals in the room, one containing Path of Salvation and the other containing Path of Temptation.#Picking up these items will grant 1 stack towards their respective path and remove 1 stack from the other path.#Stacks grant special effects depending on how many you have and culminate in an incredibly powerful effect at 4 stacks which resets the stack counter on activation.", "Duae Viae")
    EID:addCollectible(GLUTTONY_ITEM, "{{ArrowUp}} Gain a small all stats up which increases depending on how many items are held.", "Gluttony")
    EID:addCollectible(GREED_ITEM, "{{ArrowUp}} Gain 2x damage.#{{Warning}} This item will be removed from Isaac's inventory if any money is lost or spent.", "Greed")
    EID:addCollectible(LUST_ITEM, "Enemies that touch Isaac become charmed for 10 seconds.", "Lust")
    EID:addCollectible(PRIDE_ITEM, "50% chance to instantly kill all enemies in the room.#50% chance to instantly kill you instead.", "Pride")
    EID:addCollectible(ENVY_ITEM, "Gain a familiar which copies your damage and tear effects.#{{Warning}} Envy replaces all of your non quest items (and itself) with envious rage.#{{ArrowUp}} Envy gains +50% damage and +20% fire rate for every copy of envious rage you posess.#{{Warning}} Envy cannot be removed or rerolled.", "Envy")
    EID:addCollectible(WRATH_ITEM, "{{ArrowUp}} Killing bosses gives a trophy which grants +1 damage.", "Wrath")
    EID:addCollectible(SLOTH_ITEM, "All enemies take constant damage equal to Isaac's damage divided by 10 every tick.#{{Warning}} Isaac becomes unable to shoot.", "Sloth")
    EID:addCollectible(CHARITY_ITEM, "Gain 1/2 of a soul heart for every 5 coins spent.", "Charity")
    EID:addCollectible(HUMILITY_ITEM, "{{ArrowUp}} Gain 2x damage.#{{ArrowDown}} The bonus is lost if Isaac holds any quality 4 items.", "Humility")
    EID:addCollectible(LOVE_ITEM, "Issac's tears heal enemies which have been turned friendly.#{{Warning}} Does not work on enemies with the charmed status effect.", "Love")
    EID:addCollectible(GENEROSITY_ITEM, "Spawns a Tithe in angel rooms.#Tithes are a unique slot machine variant which has unique payouts.", "Generosity")
    EID:addCollectible(TEMPERANCE_ITEM, "{{ArrowUp}} Gain -20% fire delay while below full red health.#Does not work on characters without red health.", "Temperance")
    EID:addCollectible(ZEAL_ITEM, "Gain a familiar which fires godhead tears that scales with your damage and fire rate.", "Zeal")
    EID:addCollectible(KINDNESS_ITEM, "Creates an extermely brief aura around Isaac which turns enemies friendly.", "Kindness")
    EID:addCollectible(PUGIO_ITEM, "Throw a projectile that petrifies and baits any enemies it makes contact with.", "Pugio")
    EID:addTrinket(KING_TRINKET, "Extremely small chance for a pedestal item to drop when picking up a coin.#Higher value coins have a higher chance to trigger this effect.#This trinket is destroyed after triggering.#{{Collectible202}} Chances are doubled when golden.", "King Penny")
    EID:addCollectible(CONCOCTION_ITEM, "For the room your tears apply:# Poison# Bait# Fear# Slowness# Concussed# Charm# Burning# Shrinking# Magnetism", "Mysterious Concoction")
    EID:addCard(FOOL_CARD, "Activates the effect of Teleport 2.0.", "Misprinted Fool")
    EID:addCard(MAGICIAN_CARD, "For the room gain:#{{ArrowUp}} +10 damage.#{{ArrowDown}} 0.25x range.#Damage bonus and range down are doubled when holding tarot cloth.", "Misprinted Magician")
    EID:addCard(PRIESTESS_CARD, "Activates the effect of Doctor's Remote.#Also activates the effect of Crack the Sky when holding tarot cloth.", "Misprinted High Priestess")
    EID:addCard(EMPRESS_CARD, "Activates the effect of Gello.#Also activates the effect of Box of Friends twice when holding tarot cloth.", "Misprinted Empress")
    EID:addCard(EMPEROR_CARD, "Spawns a friendly Monstro to fight alongside you for the room.#Spawns Monstro 2 when holding tarot cloth.#{{Warning}} The summoned Monstros have a chance to be champion variants.", "Misprinted Emperor")
    EID:addCard(HIEROPHANT_CARD, "Spawns 2 black hearts.#Spawns 4 black hearts when holding tarot cloth.", "Misprinted Hierophant")
    EID:addCard(LOVERS_CARD, "Spawns 2 golden hearts.#Spawns 4 golden hearts when holding tarot cloth.", "Misprinted Lovers")
    EID:addCard(CHARIOT_CARD, "Charge in the current movement direction dealing 100 damage to all enemies you collide with.", "Misprinted Chariot")
    EID:addCard(JUSTICE_CARD, "Spawns 4 random pickups.#The pickups are doubled when holding tarot cloth.", "Misprinted Justice")
    EID:addCard(HERMIT_CARD, "Activates the effect of Keeper's Box.#Activates the effect twice and spawns a nickel when holding tarot cloth.", "Misprinted Hermit")
    EID:addCard(WHEEL_CARD, "Activates the effect of a random item for the room.#Activates the effects of two random items for the room when holding tarot cloth.", "Misprinted Wheel of Fortune")
    EID:addCard(STRENGTH_CARD, "Gain 1/2 of a soul heart.#For the room gain:#{{ArrowUp}} +0.1 speed#{{ArrowUp}} +0.03 tears#{{ArrowUp}} +0.2 damage#{{ArrowUp}} +11.25 range#{{ArrowUp}} +3 shot speed#{{ArrowUp}} +1 luck.#Gives a full soul heart and doubled stat bonuses when holding tarot cloth.", "Misprinted Strength")
    EID:addCard(HANGED_CARD, "Gain the effect of The Pinking Shears for the current room.#Activated twice when holding tarot cloth.", "Misprinted Hanged Man")
    EID:addCard(DEATH_CARD, "50% chance to instantly kill all enemies in the room.#50% chance to instantly kill you instead.#{{Warning}} Activated twice when holding tarot cloth, this is guaranteed to kill Isaac.", "Misprinted Death")
    EID:addCard(TEMPERANCE_CARD, "Spawns a confessional.#Spawns 2 confessionals while holding tarot cloth.", "Misprinted Temperance")
    EID:addCard(DEVIL_CARD, "Activates the effect of Satanic Bible.#Activates the effect twice while holding tarot cloth.", "Misprinted Devil")
    EID:addCard(TOWER_CARD, "Spawns a giga bomb pickup.#Spawns two giga bomb pickups while holding tarot cloth.", "Misprinted Tower")
    EID:addCard(STARS_CARD, "Rerolls all item pedestals in the room into TMTRAINER items.", "Misprinted Stars")
    EID:addCard(MOON_CARD, "Teleports Isaac to a black market.#This black market is separate from the one spawned on the floor, multiple uses of Misprinted Moon will send Isaac to multiple different black markets.#Grants The Fool to leave.#Spawns an extra fool card while holding tarot cloth.", "Misprinted Moon")
    EID:addCard(SUN_CARD, "Damages Isaac for 1/2 of his total HP and activates the effect of Book of Jubilees.#Tarot cloth reduces the damage taken by 1 heart.", "Misprinted Sun")
    EID:addCard(JUDGEMENT_CARD, "Spawns a donation machine.#Spawns 2 donation machines while holding tarot cloth.", "Misprinted Judgement")
    EID:addCard(WORLD_CARD, "Adds curse of the lost for the floor and removes any other active curses.#Removes all curses for the floor while holding tarot cloth.", "Misprinted World")
    EID:addEntity(6, 249376972, -1, "Tithe", "{{Warning}} Removes 1 coin when touched.#{{ArrowUp}} Has a chance to grant various payouts when destroyed including angel room item wisps, eternal hearts, Key Pieces, soul hearts, HP ups, and angel room items.#Tithe rewards are given to all players.#Spawns random pickups when destroyed.")
    EID:addCollectible(PILL_ITEM, "All pills spawn as horse pills.#Spawns a pill.", "The Pill")
    EID:addCollectible(BIBBLE_ITEM, "Activates the effect of a random book item.#Will not activate the effects of Duae Viae or Book of Jubilees.", "The Bibble")
    EID:addCollectible(COMMUNISM_ITEM, "Evenly distributes Isaac's coins, keys, and bombs.#As Tainted Blue Baby this effect only evenly distributes coins and keys.", "The Communist Manifesto")
    EID:addCollectible(NEURO_ITEM, "5% chance to fire a tear that applies weakness to enemies for 5 seconds.#{{Luck}} +5% chance per point of luck.", "Neurotoxin")
    EID:addCollectible(CRUSHED_DICE_ITEM, "Spawns 3 dice shards in the starting room upon entering a new floor.", "Crushed Dice")
    EID:addCollectible(DOGMA_ITEM, "Grants: #{{ArrowUp}} +1 damage#{{ArrowUp}} +50% damage multiplier#{{ArrowUp}} +7.5 Range#{{ArrowDown}} -1 Tear Delay#{{ArrowDown}} -0.5 Shot Speed#Tears gain spectral and piercing along with a static aura.#Enemies that stand within the aura for 0.25 seconds are struck with a beam of light dealing 5x Isaac's damage.", "Dogmatism")
    EID:addCollectible(INFESTATION_ITEM, "Enemies have a 10% chance to spawn a friendly swarm spider on death.#{{Luck}} +2% chance per point of luck.", "Infestation 3")
    EID:addCollectible(RAPTURE_ITEM, "Make all players briefly invulnerable and throw an orb of light which detonates into 7 beams of light fired in a circular pattern after a brief delay.", "Rapture")
    EID:addTrinket(NIL_VALUE_ITEM, "Activates the effects of Dataminer when Isaac takes damage.#{{Collectible202}} No effect when golden.", "Nil Value")
    EID:addCollectible(SHATTERED_GLADIUS_ITEM, "Teleports Isaac to a challenge room separate to the one on the floor.#This challenge room always contains a random item from the treasure room pool.#Can only be used once per floor.", "Shattered Gladius")
    EID:addCollectible(TRASH_ITEM, "On activation will do one of the following:#Spawn an item pedestal containing a quality 0 item.#Spawn a random garbage related trinket.#Spawn a rotten heart.#Spawn several blue flies.", "Trash Bag")
    EID:addCollectible(CAKE_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.#{{ArrowUp}} +0.3 Speed#{{ArrowUp}} -0.5 Tear Delay#{{ArrowUp}} +1 Damage#{{ArrowUp}} +3.75 Range#{{ArrowUp}} +0.16 Shot Speed#{{ArrowUp}} +1 Luck", "Birthday Cake")
    EID:addCollectible(RIFT_ITEM, "Grants a slowing locust, a poison locust, an explosive locust, and a high damage locust.", "Abyssal Rift")
    EID:addCollectible(HEALTH_SACK_ITEM, "{{ArrowUp}} +1 heart container.#{{ArrowUp}} Heals 1 red heart.#{{ArrowUp}} +1 soul heart#{{ArrowUp}} +1 black heart#{{ArrowUp}} +1 bone heart#{{ArrowUp}} +1 golden heart#{{ArrowUp}} +1 rotten heart", "Sack of Hearts")
    EID:addCollectible(BATTERY_ITEM, "Using active items causes Isaac to explode dealing 40 damage to enemies and leave behind green creep which damages enemies that pass over it.#Isaac does not take damage from these explosions.", "Expired Battery")
    EID:addCollectible(POLTERGEIST_ITEM, "Grants an orbital which applies a brief fear status effect to enemies which touch it.", "Poltergeist")
    EID:addCollectible(AXE_ITEM, "Swing a melee attack which deals 999999 damage to anything it hits.#{{Warning}} Hitting an enemy with this attack will consume the item.", "Executioner's Axe")
    EID:addCollectible(MOTIVATOR_ITEM, "{{ArrowUp}} Gain +10% damage for every enemy in the current room.", "Dark Motivator")
    EID:addCollectible(TEMPLE_ITEM, "Activates a random effect from a predefined list.#Has a 1% chance to grant Dogmatism on use.", "TempleOS")

    --[[ THE_PLAYER = Game():GetPlayer(0)

    function Mod:GetThePlayer()
        for i = 0, Game():GetNumPlayers() - 1 do
            THE_PLAYER = Game():GetPlayer(i)
        end
    end

    Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.GetThePlayer) ]]

    function LuckyDiceAbyss(descObj)
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LUCKY_DICE_ID and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LuckyDiceCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to reroll enemies.")
	    return descObj
    end

    EID:addDescriptionModifier("Lucky Dice Mod", LuckyDiceAbyss, LuckyDiceCallback)
    
    function DullCoinAbyss(descObj)
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == DULL_COIN_ID and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function DullCoinCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to reroll enemies.")
	    return descObj
    end

    EID:addDescriptionModifier("Dull Coin Mod", DullCoinAbyss, DullCoinCallback)

    function UnholyMantleAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == HATRED_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function UnholyMantleCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Unholy Mantle Mod", UnholyMantleAbyss, UnholyMantleCallback)

    function UrielAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == URIEL_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function UrielCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for holy light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Uriel Mod", UrielAbyss, UrielCallback)

    function GabrielAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GABRIEL_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GabrielCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for holy light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Gabriel Mod", GabrielAbyss, GabrielCallback)

    function CatalystAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CATALYST_SHEET_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CatalystCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply confusion on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply baited on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Catalyst Mod", CatalystAbyss, CatalystCallback)

    function FailAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == FAIL_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function FailCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slow.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "4 small locusts.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slow.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.4x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Fail Mod", FailAbyss, FailCallback)

    function LilithAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LILITH_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LilithCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "50% chance to apply charm on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Lilith Mod", LilithAbyss, LilithCallback)

    function AmpAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == AMP_AREA and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function AmpCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Moves extremely slow.")
	    return descObj
    end

    EID:addDescriptionModifier("Amp Mod", AmpAbyss, AmpCallback)

    function HuhAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == HUH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function HuhCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "10% chance to turn non-boss enemies into poop on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Huh Mod", HuhAbyss, HuhCallback)

    function CompAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == COMP_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CompCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.3x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Comp Mod", CompAbyss, CompCallback)

    function EternalAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EternalCallback(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Eternal Mod", EternalAbyss, EternalCallback)

    function EternalAbyss2(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM2 and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EternalCallback2(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Eternal2 Mod", EternalAbyss2, EternalCallback2)

    function EternalAbyss3(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM3 and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EternalCallback3(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Eternal3 Mod", EternalAbyss3, EternalCallback3)

    function EternalAbyss4(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM4 and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EternalCallback4(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Eternal4 Mod", EternalAbyss4, EternalCallback4)

    function EternalAbyssEmpty(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM_EMPTY and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EternalCallbackEmpty(descObj)
        local textColor = "{{ColorRed}}"
	    EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Eternal Mod Empty", EternalAbyssEmpty, EternalCallbackEmpty)

    function AnatomyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == ANATOMY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function AnatomyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Anatomy Mod", AnatomyAbyss, AnatomyCallback)

    function BlankAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BLANK_SLATE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function BlankCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance for random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Blank Mod", BlankAbyss, BlankCallback)

    function IsaacAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == ISAAC_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function IsaacCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for random effects on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to reroll enemies.")
	    return descObj
    end

    EID:addDescriptionModifier("Isaac Mod", IsaacAbyss, IsaacCallback)

    function MagAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == MAGDALENE_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function MagCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Mag Mod", MagAbyss, MagCallback)

    function CainAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CAIN_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CainCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Chance for enemies to drop coins on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Cain Mod", CainAbyss, CainCallback)

    function JudasAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUDAS_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function JudasCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Judas Mod", JudasAbyss, JudasCallback)

    function BabyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BLUE_BABY_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function BabyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "15% chance to turn non-boss enemies into poop on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Baby Mod", BabyAbyss, BabyCallback)

    function EveAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == EVE_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EveCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Eve Mod", EveAbyss, EveCallback)

    function SamsonAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == SAMSON_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function SamsonCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.2x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies explode into extra gore on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Samson Mod", SamsonAbyss, SamsonCallback)

    function AzazelAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == AZAZEL_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function AzazelCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Spawns anti-gravity brimstone lasers on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Azazel Mod", AzazelAbyss, AzazelCallback)

    function LazAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LAZARUS_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LazCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.1x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slightly larger.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slightly faster.")
	    return descObj
    end

    EID:addDescriptionModifier("Laz Mod", LazAbyss, LazCallback)

    function EdenAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == EDEN_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EdenCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Eden Mod", EdenAbyss, EdenCallback)

    function KeeperAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == KEEPER_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function KeeperCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Chance for enemies to drop coins on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Keeper Mod", KeeperAbyss, KeeperCallback)

    function ApollyonAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == APOLLYON_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ApollyonCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance for ocular rift effect on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Apollyon Mod", ApollyonAbyss, ApollyonCallback)

    function BethanyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BETHANY_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function BethanyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply burn effect on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Bethany Mod", BethanyAbyss, BethanyCallback)

    function DominoAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == DOMINO_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function DominoCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "4 locusts with an extra 0.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Each has a 50% chance to apply a status effect, fear, slow, confusion, and burn respectively.")
	    return descObj
    end

    EID:addDescriptionModifier("Domino Mod", DominoAbyss, DominoCallback)

    function PontiusAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == PONTIUS_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function PontiusCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Piercing.")
	    return descObj
    end

    EID:addDescriptionModifier("Pontius Mod", PontiusAbyss, PontiusCallback)

   function LostAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LOST_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LostCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Lost Mod", LostAbyss, LostCallback)

    function JEAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JACOB_AND_ESAU_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function JECallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.9x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slightly faster damage tick rate.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "1 locust (1.5x damage multiplier)")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.1x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slightly slower damage tick rate.")
	    return descObj
    end

    EID:addDescriptionModifier("JE Mod", JEAbyss, JECallback)

    function ForgottenAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == FORGOTTEN_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ForgottenCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Sends out bone projectiles on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "1 locust (1.5x damage multiplier)")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slightly faster.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Spectral.")
	    return descObj
    end

    EID:addDescriptionModifier("Forgotten Mod", ForgottenAbyss, ForgottenCallback)

    function YamikaAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == STAR_OF_DAVID and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function YamikaCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.3x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies have a 10% chance to drop coins on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Yamika Mod", YamikaAbyss, YamikaCallback)

    function GunAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GUN_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GunCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
	    return descObj
    end

    EID:addDescriptionModifier("Gun Mod", GunAbyss, GunCallback)

    function KingslayerAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == KINGSLAYER_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function KingslayerCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.3x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Kingslayer Mod", KingslayerAbyss, KingslayerCallback)

    function DefenseAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == DEFENSE_TECH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function DefenseCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to shock nearby enemies on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Defense Mod", DefenseAbyss, DefenseCallback)

    function NecromancyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == NECROMANCY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function NecromancyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply charmed on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Necromancy Mod", NecromancyAbyss, NecromancyCallback)

    function MoneyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == MONEY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function MoneyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies have a 10% chance to drop coins on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Money Mod", MoneyAbyss, MoneyCallback)

    function PaintAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == PAINT_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function PaintCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to apply the Midas Touch effect on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Paint Mod", PaintAbyss, PaintCallback)

    function GlitchAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GLITCH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GlitchCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply random effects on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "1% chance to apply the effect of Euthanasia on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Glitch Mod", GlitchAbyss, GlitchCallback)

    function ProtoAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == PROTO_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ProtoCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 10x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Larger.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slow.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to shock nearby enemies on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Proto Mod", ProtoAbyss, ProtoCallback)

    function FredAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == FRED_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function FredCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to apply charmed on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Fred Mod", FredAbyss, FredCallback)

    function DebugAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == DEBUG_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function DebugCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply random effects on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply the effect of Euthanasia on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Debug Mod", DebugAbyss, DebugCallback)

    function ToastAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == TOAST_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ToastCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.01x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
	    return descObj
    end

    EID:addDescriptionModifier("Toast Mod", ToastAbyss, ToastCallback)

    function GlitchDiceAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GLITCH_ESSENCE and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GlitchDiceCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Glitch Dice Mod", GlitchDiceAbyss, GlitchDiceCallback)

    function LuckyPenniesAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LUCKY_PENNY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LuckyPenniesCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "5 locusts with an extra 0.01x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to drop coins on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Lucky Pennies Mod", LuckyPenniesAbyss, LuckyPenniesCallback)

    function ToolbeltAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == TOOLBELT_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ToolbeltCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.3x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Faster.")
	    return descObj
    end

    EID:addDescriptionModifier("Toolbelt Mod", ToolbeltAbyss, ToolbeltCallback)

    function OrbitAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == MOON_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function OrbitCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "3 locusts.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Faster.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Orbit Mod", OrbitAbyss, OrbitCallback)

    function FluxAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == FLUX_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function FluxCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Absurdly fast.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Shielded.")
	    return descObj
    end

    EID:addDescriptionModifier("Flux Mod", FluxAbyss, FluxCallback)

    function AbrahamAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == ABRAHAM_ESSENCE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function AbrahamCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance for holy light beams on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "1 locust (1.5x damage multiplier)")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Piercing.")
	    return descObj
    end

    EID:addDescriptionModifier("Abraham Mod", AbrahamAbyss, AbrahamCallback)

    function OmegaAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == OMEGA_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function OmegaCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20 locusts.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extremely small.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.2x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Omega Mod", OmegaAbyss, OmegaCallback)

    function JubileesAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function JubileesCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for holy light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees Mod", JubileesAbyss, JubileesCallback)

    function Jubilees2Abyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM2 and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function Jubilees2Callback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for holy light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees2 Mod", Jubilees2Abyss, Jubilees2Callback)

    function Jubilees3Abyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM3 and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function Jubilees3Callback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "50% chance for holy light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees3 Mod", Jubilees3Abyss, Jubilees3Callback)

    function GluttonyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GLUTTONY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GluttonyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Gluttony Mod", GluttonyAbyss, GluttonyCallback)

    function GreedAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GREED_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GreedCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies have a chance to drop coins on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Greed Mod", GreedAbyss, GreedCallback)

    function LustAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LUST_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LustCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to apply charmed on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Lust Mod", LustAbyss, LustCallback)

    function PrideAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == PRIDE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function PrideCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance to apply the effect of Euthanasia on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Deals no direct damage.")
	    return descObj
    end

    EID:addDescriptionModifier("Pride Mod", PrideAbyss, PrideCallback)

    function SlothAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == SLOTH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function SlothCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 10x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Moves extremely slow.")
	    return descObj
    end

    EID:addDescriptionModifier("Sloth Mod", SlothAbyss, SlothCallback)

    function EnvyAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == ENVY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function EnvyCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.01x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Moves extremely slow.")
	    return descObj
    end

    EID:addDescriptionModifier("Envy Mod", EnvyAbyss, EnvyCallback)

    function WrathAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == WRATH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function WrathCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Wrath Mod", WrathAbyss, WrathCallback)

    function CharityAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CHARITY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CharityCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies have a chance to drop money on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Charity Mod", CharityAbyss, CharityCallback)

    function HumilityAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == HUMILITY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function HumilityCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Humility Mod", HumilityAbyss, HumilityCallback)

    function LoveAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == LOVE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function LoveCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to apply charmed on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Love Mod", LoveAbyss, LoveCallback)

    function GenerosityAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == GENEROSITY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GenerosityCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Enemies have a chance to drop money on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Generosity Mod", GenerosityAbyss, GenerosityCallback)

    function TemperanceAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == TEMPERANCE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function TemperanceCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Faster damage tick rate.")
	    return descObj
    end

    EID:addDescriptionModifier("Temperance Mod", TemperanceAbyss, TemperanceCallback)

    function ZealAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == ZEAL_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ZealCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Godhead effect.")
	    return descObj
    end

    EID:addDescriptionModifier("Zeal Mod", ZealAbyss, ZealCallback)

    function KindnessAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == KINDNESS_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function KindnessCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "35% chance to apply charmed on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Kindness Mod", KindnessAbyss, KindnessCallback)

    function ConcoctionAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CONCOCTION_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ConcoctionCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.1x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to apply a lot of different effects.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Homing.")
	    return descObj
    end

    EID:addDescriptionModifier("Concoction Mod", ConcoctionAbyss, ConcoctionCallback)

    function PillAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == PILL_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function PillCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Pill Mod", PillAbyss, PillCallback)

    function BibbleAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BIBBLE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function BibbleCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Bibble Mod", BibbleAbyss, BibbleCallback)

    function NeuroAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == NEURO_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function NeuroCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "10% chance to apply the effect of Euthanasia on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Neuro Mod", NeuroAbyss, NeuroCallback)

    function CrushedAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CRUSHED_DICE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CrushedCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20% chance to reroll enemies.")
	    return descObj
    end

    EID:addDescriptionModifier("Crushed Mod", CrushedAbyss, CrushedCallback)

    function DogmaAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == DOGMA_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function DogmaCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 2x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Slower.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Larger.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Piercing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Spectral.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for light beams on hit.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Godhead effect.")
	    return descObj
    end

    EID:addDescriptionModifier("Dogma Mod", DogmaAbyss, DogmaCallback)

    function InfestationAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == INFESTATION_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function InfestationCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance for the Parasitoid effect on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Infestation Mod", InfestationAbyss, InfestationCallback)

    function RaptureAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == RAPTURE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function RaptureCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance for light beams on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Rapture Mod", RaptureAbyss, RaptureCallback)

    function GladiusAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == SHATTERED_GLADIUS_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function GladiusCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Dashing.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Piercing.")
	    return descObj
    end

    EID:addDescriptionModifier("Gladius Mod", GladiusAbyss, GladiusCallback)

    function TrashAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == TRASH_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function TrashCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to apply random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Trash Mod", TrashAbyss, TrashCallback)

    function CakeAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CAKE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function CakeCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.3x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Larger.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Faster.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Faster damage tick speed.")
	    return descObj
    end

    EID:addDescriptionModifier("Cake Mod", CakeAbyss, CakeCallback)

    function AbyssAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == RIFT_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function AbyssCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "20 locusts.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extremely small.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.2x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Abyss Mod", AbyssAbyss, AbyssCallback)

    function HeartsAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == HEALTH_SACK_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function HeartsCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "6 locusts.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 0.16x damage multiplier.")
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "33% chance for enemies to drop red hearts on kill.")
	    return descObj
    end

    EID:addDescriptionModifier("Hearts Mod", HeartsAbyss, HeartsCallback)

    function ExpiredAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BATTERY_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ExpiredCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "30% chance to explode on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Expired Mod", ExpiredAbyss, ExpiredCallback)

    function ExexutionerAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == AXE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function ExecutionerCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "10% chance to apply the effect of Euthanasia on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Executioner Mod", ExexutionerAbyss, ExecutionerCallback)

    function MotivatorAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == MOTIVATOR_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function MotivatorCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "Extra 1.5x damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Motivator Mod", MotivatorAbyss, MotivatorCallback)

    function PoltergeistAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == POLTERGEIST_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function PoltergeistCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "50% chance to apply fear on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Poltergeist Mod", PoltergeistAbyss, PoltergeistCallback)

    function TempleAbyss(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == TEMPLE_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_ABYSS) then return true end
        end
    end
    function TempleCallback(descObj)
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible706}} " .. textColor .. "100% chance for random effects on hit.")
	    return descObj
    end

    EID:addDescriptionModifier("Temple Mod", TempleAbyss, TempleCallback)

    function BondVoid(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function BondVoidCallback(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Eternal Bond on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Bond Void Mod", BondVoid, BondVoidCallback)

    function BondVoid2(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM2 and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function BondVoidCallback2(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Eternal Bond on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Bond2 Void Mod", BondVoid2, BondVoidCallback2)

    function BondVoid3(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM3 and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function BondVoidCallback3(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Eternal Bond on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Bond3 Void Mod", BondVoid3, BondVoidCallback3)

    function BondVoid4(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM4 and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function BondVoidCallback4(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Eternal Bond on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Bond4 Void Mod", BondVoid4, BondVoidCallback4)

    function EmptyBondVoid(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == BOND_ITEM_EMPTY and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function EmptyBondVoidCallback(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Eternal Bond on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Empty Bond Void Mod", EmptyBondVoid, EmptyBondVoidCallback)

    function JubileesBondVoid(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function JubileesVoidCallback(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Book of Jubilees on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees Void Mod", JubileesBondVoid, JubileesVoidCallback)

    function JubileesBondVoid2(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM2 and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function JubileesVoidCallback2(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Book of Jubilees on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees2 Void Mod", JubileesBondVoid2, JubileesVoidCallback2)

    function JubileesBondVoid3(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == JUBILEES_ITEM3 and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID) then return true end
        end
    end
    function JubileesVoidCallback3(descObj)
        local textColor = "{{ColorPurple}}"
        EID:appendToDescription(descObj, "#{{Collectible477}} " .. textColor .. "{{Warning}} Absorbing this item with Void will cause Void to turn into Book of Jubilees on activation!")
	    return descObj
    end

    EID:addDescriptionModifier("Jubilees3 Void Mod", JubileesBondVoid3, JubileesVoidCallback3)

    function UnholyMantle(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == CollectibleType.COLLECTIBLE_HOLY_MANTLE and player:HasCollectible(HATRED_ITEM) then return true end
        end
    end
    function UnholyMantleCallback(descObj)
        local itemId = Isaac.GetItemIdByName("Unholy Mantle")
        local textColor = "{{ColorRed}}"
        EID:appendToDescription(descObj, "#{{Collectible"..itemId.."}} " .. textColor .. "{{ArrowUp}} Grants +1 damage and a +50% damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Unholy Mantle Mod", UnholyMantle, UnholyMantleCallback)

    function HolyMantle(descObj)
	    for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)
        
	        if descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType == HATRED_ITEM and player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE) then return true end
        end
    end
    function HolyMantleCallback(descObj)
        local textColor = "{{ColorCyan}}"
        EID:appendToDescription(descObj, "#{{Collectible313}} " .. textColor .. "{{ArrowUp}} Grants +1 damage and a +50% damage multiplier.")
	    return descObj
    end

    EID:addDescriptionModifier("Holy Mantle Mod", HolyMantle, HolyMantleCallback)

    
end

--Function to handle dice item rerolls.
--Works by setting an item pool using item IDs and then rerolling items within the pool into something from the set list of items.
--To add a new item just add its ID to the list.
function Mod:LuckyDiceUse(item, rng, player, flags)
    player:AnimateCollectible(LUCKY_DICE_ID, "UseItem", "PlayerPickupSparkle")
    local predefinedItems = {
        AZAZEL_ESSENCE,
        STAR_OF_DAVID,
        GLITCH_ITEM,
        NEURO_ITEM,
        INFESTATION_ITEM,
        576,
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

    --local room = Game():GetRoom()
    local entities = Isaac.GetRoomEntities()

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            -- Ensure the pedestal already holds an item before rerolling
            if pedestal and pedestal.SubType ~= 0 then
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

local quality4ItemsDullCoin = {
                    -- Mod items.
                    URIEL_ITEM,
                    GABRIEL_ITEM,
                    AZAZEL_ESSENCE,
                    CAIN_ESSENCE,
                    DOGMA_ITEM,
                    ZEAL_ITEM,
                    PROTO_ITEM,
                    NECROMANCY_ITEM,
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

local quality3ItemsDullCoin = {
                    -- Mod items.
                    COMP_ITEM,
                    JUDAS_ESSENCE,
                    BLUE_BABY_ESSENCE,
                    KEEPER_ESSENCE,
                    BETHANY_ESSENCE,
                    DOMINO_ESSENCE,
                    STAR_OF_DAVID,
                    MOON_ITEM,
                    GLUTTONY_ITEM,
                    WRATH_ITEM,
                    CHARITY_ITEM,
                    HUMILITY_ITEM,
                    GENEROSITY_ITEM,
                    TEMPERANCE_ITEM,
                    NEURO_ITEM,
                    INFESTATION_ITEM,
                    CAKE_ITEM,
                    HEALTH_SACK_ITEM,
                    -- Vanilla items.
                    1,
                    2,
                    3,
                    7,
                    18,
                    32,
                    50,
                    51,
                    68,
                    69,
                    70,
                    79,
                    80,
                    82,
                    90,
                    98,
                    101,
                    104,
                    109,
                    110,
                    132,
                    150,
                    151,
                    153,
                    159,
                    165,
                    170,
                    173,
                    178,
                    179,
                    183,
                    184,
                    185,
                    189,
                    190,
                    196,
                    199,
                    203,
                    208,
                    215,
                    216,
                    221,
                    224,
                    234,
                    237,
                    244,
                    249,
                    259,
                    260,
                    261,
                    265,
                    268,
                    278,
                    301,
                    305,
                    306,
                    307,
                    310,
                    311,
                    333,
                    334,
                    335,
                    341,
                    342,
                    345,
                    350,
                    356,
                    359,
                    370,
                    373,
                    374,
                    375,
                    381,
                    390,
                    397,
                    399,
                    401,
                    402,
                    407,
                    408,
                    411,
                    414,
                    417,
                    424,
                    438,
                    443,
                    444,
                    453,
                    459,
                    461,
                    462,
                    494,
                    495,
                    496,
                    497,
                    499,
                    503,
                    506,
                    514,
                    520,
                    524,
                    528,
                    532,
                    533,
                    534,
                    547,
                    553,
                    572,
                    573,
                    579,
                    586,
                    589,
                    592,
                    596,
                    597,
                    600,
                    601,
                    615,
                    616,
                    629,
                    651,
                    660,
                    669,
                    682,
                    690,
                    696,
                    700,
                    708,
                    716,
                    730,
                    732
                }

function Mod:DullCoinUse(item, rng, player, flags)
    player:AnimateCollectible(DULL_COIN_ID, "UseItem", "PlayerPickupSparkle")

    local entities = Isaac.GetRoomEntities()
    local validRerolls = {}
    local removedItems = {}

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            --local currentItem = pedestal.SubType
            local currentItem = 1
            if pedestal then -- ✅ Ensure pedestal isn't nil before using it
                currentItem = pedestal.SubType
            end

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
                        --pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
                        if pedestal and pedestal.SubType ~= 0 then -- ✅ Ensure pedestal isn't nil
                            pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItem, true, false, false)
                        else
                            print("Warning: Attempted to morph a nil pedestal!")
                        end

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
            table.insert(removedItems, itemID)
            end
        end
    end

        -- If player has no Quality 0 items, exit
        --[[ if #qualityZeroItems == 0 then
            return
        end ]]
        if #removedItems < 10 then
            print("Not enough quality 0 items to convert.")
            return false
        end

        -- Shuffle and remove 10 items
        for i = 1, 10 do
            local index = rng:RandomInt(#removedItems) + 1
            local toRemove = removedItems[index]
            table.remove(removedItems, index)
            player:RemoveCollectible(toRemove)
        end

        local roll = rng:RandomInt(4) + 1

        if roll < 4 then

            -- Pick a random quality 4 item
            local rewardIndex = rng:RandomInt(#quality3ItemsDullCoin) + 1
            local rewardID = quality3ItemsDullCoin[rewardIndex]
            player:AddCollectible(rewardID)

            SFXManager():Play(SoundEffect.SOUND_SUPERHOLY)
            player:AnimateCollectible(rewardID, "UseItem", "PlayerPickupSparkle")
        elseif roll == 4 then
            -- Pick a random quality 4 item
            local rewardIndex = rng:RandomInt(#quality4ItemsDullCoin) + 1
            local rewardID = quality4ItemsDullCoin[rewardIndex]
            player:AddCollectible(rewardID)

            SFXManager():Play(SoundEffect.SOUND_SUPERHOLY)
            player:AnimateCollectible(rewardID, "UseItem", "PlayerPickupSparkle")
        end



        -- Pick a random Quality 0 item to remove
        --local itemToRemove = qualityZeroItems[math.random(#qualityZeroItems)]

        --local prevActiveItem = player:GetActiveItem()
        --local berserkID = CollectibleType.COLLECTIBLE_BERSERK

        -- Remove previous active item before applying Berserk effect
        --if prevActiveItem ~= nil then
        --    player:RemoveCollectible(prevActiveItem)
        --end
        
        --player:AddCollectible(berserkID, 0, true)
        --player:UseActiveItem(berserkID, false, false)
        --player:UseActiveItem(berserkID, false, false)
        --player:UseActiveItem(berserkID, false, false)
        --player:RemoveCollectible(berserkID) -- Remove Berserk immediately

        -- Remove selected Quality 0 item
        --player:RemoveCollectible(itemToRemove)

        -- Restore previous active item if it existed
        --if prevActiveItem ~= nil then
            --player:AddCollectible(prevActiveItem, 0, true)
        --    player:SetActiveCharge(24) -- Fully charge restored item
        --end
    end

    return true
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.DullCoinUse, DULL_COIN_ID)

function Mod:GrantInvulnerabilityOnHit(entity, amount, flags, source, countdown)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i) -- ✅ Loop through all players

        if player:HasCollectible(HATRED_ITEM) and source and source.Entity then
            local rng = player:GetCollectibleRNG(HATRED_ITEM)

            if rng:RandomFloat() <= 0.25 then -- ✅ 25% chance to activate invulnerability
                player:SetMinDamageCooldown(60) -- ✅ Grants ~3 seconds of invulnerability
            end

        end
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.GrantInvulnerabilityOnHit)

-- Handle the actual damage scaling
function Mod:EvaluateCachec(player, cacheFlag)
    if player:HasCollectible(HATRED_ITEM) and player:HasCollectible(CollectibleType.COLLECTIBLE_HOLY_MANTLE) and cacheFlag == CacheFlag.CACHE_DAMAGE then
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

        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and laser then
            laser.TearFlags = TearFlags.TEAR_HOMING
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            laser.CollisionDamage = (TEAR_DAMAGE_URIEL + playerDamage) * 2
        else
            laser.CollisionDamage = TEAR_DAMAGE_URIEL + playerDamage
        end

        laser.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser.AngleDegrees = direction:GetAngleDegrees() -- Rotate laser to match direction
        laser.Parent = familiar -- Attach the laser to the familiar
        laser.Timeout = 15 -- Set duration (adjust as needed)
        --laser.CollisionDamage = TEAR_DAMAGE_URIEL + playerDamage
        if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_URIEL / 2
        else
            familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_URIEL
        end

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

        if playerb:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and laser2 then
            laser2.TearFlags = TearFlags.TEAR_HOMING
        end

        if playerb:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            laser2.CollisionDamage = (TEAR_DAMAGE_GABRIEL + playerDamage) * 2
        else
            laser2.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        end

        laser2.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser2.AngleDegrees = 45 -- Rotate laser to match direction
        laser2.Parent = familiarb -- Attach the laser to the familiar
        laser2.Timeout = 15 -- Set duration (adjust as needed)
        --laser2.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        if playerb:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL / 2
        else
            familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL
        end
        
        --familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser5 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        if playerb:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and laser5 then
            laser5.TearFlags = TearFlags.TEAR_HOMING
        end

        if playerb:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            laser5.CollisionDamage = (TEAR_DAMAGE_GABRIEL + playerDamage) * 2
        else
            laser5.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        end

        laser5.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser5.AngleDegrees = 135 -- Rotate laser to match direction
        laser5.Parent = familiarb -- Attach the laser to the familiar
        laser5.Timeout = 15 -- Set duration (adjust as needed)
        --laser5.CollisionDamage = TEAR_DAMAGE_GABRIEL
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser3 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        if playerb:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and laser3 then
            laser3.TearFlags = TearFlags.TEAR_HOMING
        end

        if playerb:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            laser3.CollisionDamage = (TEAR_DAMAGE_GABRIEL + playerDamage) * 2
        else
            laser3.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        end

        laser3.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser3.AngleDegrees = -135 -- Rotate laser to match direction
        laser3.Parent = familiarb -- Attach the laser to the familiar
        laser3.Timeout = 15 -- Set duration (adjust as needed)
        --laser3.CollisionDamage = TEAR_DAMAGE_GABRIEL
        familiarb.FireCooldown = SHOOTING_TICK_COOLDOWN_GABRIEL

        local laser4 = Isaac.Spawn(
            EntityType.ENTITY_LASER,
            LaserVariant.LIGHT_BEAM,
            0,
            familiarb.Position,
            Vector.Zero,
            familiarb
        ):ToLaser()

        if playerb:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and laser4 then
            laser4.TearFlags = TearFlags.TEAR_HOMING
        end

        if playerb:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            laser4.CollisionDamage = (TEAR_DAMAGE_GABRIEL + playerDamage) * 2
        else
            laser4.CollisionDamage = TEAR_DAMAGE_GABRIEL + playerDamage
        end

        laser4.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
        laser4.AngleDegrees = -45 -- Rotate laser to match direction
        laser4.Parent = familiarb -- Attach the laser to the familiar
        laser4.Timeout = 15 -- Set duration (adjust as needed)
        --laser4.CollisionDamage = TEAR_DAMAGE_GABRIEL
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
                enemy:AddEntityFlags(EntityFlag.FLAG_BAITED) -- Apply effects
                enemy:AddEntityFlags(EntityFlag.FLAG_CONFUSION)

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

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInite, FAMILIAR_VARIANT_FAIL)

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
        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and tear then
            tear.TearFlags = TearFlags.TEAR_HOMING | TearFlags.TEAR_BURSTSPLIT
        else
            tear.TearFlags = TearFlags.TEAR_BURSTSPLIT
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = TEAR_DAMAGE_FAIL * 2
        else
            tear.CollisionDamage = TEAR_DAMAGE_FAIL
        end

        
        tear.Scale = TEAR_SCALE_FAIL
        --tear.CollisionDamage = TEAR_DAMAGE_FAIL
        --tear.TearFlags = TearFlags.TEAR_BURSTSPLIT -- Makes tears explode into smaller projectiles.

         -- Simulate gravity
         tear.FallingAcceleration = 1.2 -- Adjust gravity effect
         tear.FallingSpeed = -20 -- Initial upward motion
         if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL / 2
        else
            familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL
        end
 

        --familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL

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

function Mod:UseAngelBlast(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == ANGEL_BLAST_ITEM then

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
                    LaserVariant.LIGHT_BEAM,
                    0,
                    player.Position,
                    Vector.Zero,
                    player
                ):ToLaser()

                spear.PositionOffset = Vector(0, -10)
                spear.TearFlags = player.TearFlags
                spear.AngleDegrees = directionspear:GetAngleDegrees()
                spear.Parent = player
                spear.Timeout = 15
                spear.CollisionDamage = playerDamage + 3

                spearCooldown = 30 -- Set a cooldown (adjust as needed)
            end
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseAngelBlast, ANGEL_BLAST_ITEM)


local STAT_BOOST_DURATION = 600 -- 30 seconds (30 * 30 frames)
local SFX = SFXManager()

---@param itemUsed CollectibleType
---@param rng RNG
---@param player EntityPlayer
function Mod:OnUseFinalJudgment(itemUsed, rng, player)

    local data = player:GetData()

    -- Prevent activation if item was already used
    --[[ if data.FinalJudgmentUsed then
        return false -- Stops reuse
    end ]]

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
        player:SetPocketActiveItem(ANGEL_BLAST_ITEM, ActiveSlot.SLOT_POCKET, true)

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
            holyBeam.Parent = player
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

    if data.FinalJudgmentActive then
        local playerDamage = player.Damage -- Get player's current damage value
        local fireDirectionjudge = player:GetFireDirection()
        local directionjudge
        local firedelay = player.FireDelay
        data.FinalJudgmentTimer = data.FinalJudgmentTimer - 1
        if data.FinalJudgmentTimer == 90 then -- 3 seconds remaining
            SFX:Play(SoundEffect.SOUND_DOGMA_APPEAR_SCREAM, 1.5, 0, false, 1)
        end


        --[[ if fireDirectionjudge == Direction.LEFT then
            directionjudge = Vector(-1, 0)
        elseif fireDirectionjudge == Direction.RIGHT then
            directionjudge = Vector(1, 0)
        elseif fireDirectionjudge == Direction.DOWN then
            directionjudge = Vector(0, 1)
        elseif fireDirectionjudge == Direction.UP then
            directionjudge = Vector(0, -1)
        elseif fireDirectionjudge == Direction.NO_DIRECTION then
            directionjudge = Vector(0, 1)
        end

        --if firedelay <= 0.1 then
            local laserjudge = Isaac.Spawn(
                EntityType.ENTITY_LASER,
                LaserVariant.LIGHT_BEAM,
                0,
                player.Position,
                Vector.Zero,
                player
            ):ToLaser()

            if laserjudge then
                laserjudge.PositionOffset = Vector(0, -10) -- Adjust Y value as needed
                laserjudge.AngleDegrees = directionjudge:GetAngleDegrees() -- Rotate laser to match direction
                laserjudge.Parent = player -- Attach the laser to the player
                laserjudge.Timeout = 15 -- Set duration (adjust as needed)
                laserjudge.CollisionDamage = playerDamage
            end ]]

        --end

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
                holyBeam.Parent = player
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
            --player:Kill()
            data.FinalJudgmentActive = false
            player:SetPocketActiveItem(DUAE_ITEM, ActiveSlot.SLOT_POCKET, true)

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

--[[ function Mod:NewRoomEnter()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        player:RemoveCollectible(AMP_DMG_ITEM)
    end
    return true
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.NewRoomEnter)

function Mod:NewFloorEnter()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        player:RemoveCollectible(AMP_DMG_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.NewFloorEnter) ]]

function Mod:RemoveAmpDamage()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        player:RemoveCollectible(AMP_DMG_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.RemoveAmpDamage)

local activeAmpFamiliars = {} -- ✅ Keeps track of spawned familiars

function Mod:OnAmpItemUse(item, rng, player, flags)
    player:AnimateCollectible(AMP_ITEM, "UseItem", "PlayerPickupSparkle")
    SFX:Play(SoundEffect.SOUND_BATTERYCHARGE, 1.5, 0, false, 0.75)


    if item == AMP_ITEM then
        local familiar = Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FAMILIAR_VARIANT_AMP, 0, player.Position, Vector(0,0), player)
        
        -- Make it stationary
        familiar:AddEntityFlags(EntityFlag.FLAG_NO_PHYSICS_KNOCKBACK)
        --familiar:GetSprite():Play("Appear")
        familiar:AddEntityFlags(EntityFlag.FLAG_NO_KNOCKBACK)

        -- Set data so it applies the aura effect
        familiar:GetData().IsAmpFamiliar = true
        -- ✅ Add familiar to tracking table
        table.insert(activeAmpFamiliars, familiar.InitSeed)

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
        --removethestupidfamiliar = false
        --[[ if Mod:NewRoomEnter() then
            print("why")
            data.SpawnTime = -600
        end ]]

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


        --local players = Isaac.GetPlayer()
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

--[[ function Mod:RemoveAmpFamiliarsOnNewRoom()
    for _, familiar in ipairs(activeAmpFamiliars) do
        if familiar and familiar:Exists() then
            -- ✅ Remove area indicator before familiar disappears
            local data = familiar:GetData()
            if data.AreaIndicator and data.AreaIndicator:Exists() then
                data.AreaIndicator:Remove()
                data.AreaIndicator = nil
            end
            data.SpawnTime = -600
            
            -- ✅ Remove familiar on room change
            familiar:Remove()
            
        end
    end

    -- ✅ Clear tracking table after removal
    activeAmpFamiliars = {}
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.RemoveAmpFamiliarsOnNewRoom) ]]

function Mod:RemoveAmpFamiliarsOnStart()
    local room = Game():GetRoom()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        player:RemoveCollectible(AMP_DMG_ITEM)
    end

    for _, familiar in ipairs(Isaac.FindByType(EntityType.ENTITY_FAMILIAR, FAMILIAR_VARIANT_AMP)) do
        if familiar and familiar:Exists() then
            familiar:Remove() -- ✅ Instantly removes existing familiars on start
            print("Removed misplaced familiar from previous session!")
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.RemoveAmpFamiliarsOnStart)

--[[ function Mod:RemoveAmpFamiliarsOnNewFloor()
    for _, familiar in ipairs(activeAmpFamiliars) do
        if familiar and familiar:Exists() then
            -- ✅ Remove area indicator before familiar disappears
            local data = familiar:GetData()
            if data.AreaIndicator and data.AreaIndicator:Exists() then
                data.AreaIndicator:Remove()
                data.AreaIndicator = nil
            end
            data.SpawnTime = -600
            
            -- ✅ Remove familiar on room change
            familiar:Remove()
            
        end
    end

    -- ✅ Clear tracking table after removal
    activeAmpFamiliars = {}
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.RemoveAmpFamiliarsOnNewFloor) ]]

function Mod:HuhUse(item, rng, player, flags)
    player:AnimateCollectible(HUH_ITEM, "UseItem", "PlayerPickupSparkle")
    local room = Game():GetRoom()
    local entities = Isaac.GetRoomEntities()

    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local pedestal = entity:ToPickup()
            -- Ensure the pedestal already holds an item before rerolling
            if pedestal and pedestal.SubType ~= 0 then
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
    for itemID = 1, 5000 do -- Loops through all items
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
            local numcomp = player:GetCollectibleNum(COMP_ITEM)
            local quality0Count = CountQuality0Items(player)
            player.Damage = player.Damage + (quality0Count * numcomp)
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
    --local game = Game()
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
                creep:GetData().IsHealingCreep = true -- ✅ Marks this creep as healing
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

                
                --player:SetActiveCharge(12)



                if MAX_CHAIN_DASHES > 0 and DASH_COOLDOWN >= 0 and MAX_CHAIN_DASHES > 0 then
                    --player:SetActiveCharge(12)
                    --player:RemoveCollectible(BOND_ITEM)
                    --player:AddCollectible(BOND_ITEM2)
                    --player:SetActiveCharge(12)
                    --MAX_CHAIN_DASHES = MAX_CHAIN_DASHES - 1
                --[[ elseif DASH_COOLDOWN == 0 or MAX_CHAIN_DASHES == 0 then
                    player:SetActiveCharge(0)
                    MAX_CHAIN_DASHES = 3 ]]
                end
                dashingPlayers[player.Index] = nil
                player:SetMinDamageCooldown(0)
                player:RemoveCollectible(BOND_ITEM)
                player:AddCollectible(BOND_ITEM2)
                --player:SetActiveCharge(12)
            end
        end
    end
end

-- Make the creep heal friendly players on contact
function Mod:OnCreepUpdate(creep)
    local player = Isaac.GetPlayer(0)
    local data = creep:GetData()

    if player:HasCollectible(BOND_ITEM) and data.IsHealingCreep then
        for _, entity in ipairs(Isaac.FindInRadius(creep.Position, 30, EntityPartition.PLAYER)) do
            local player = entity:ToPlayer()
            if player and not player:IsDead() and player:GetMaxHearts() > player:GetHearts() then
                player:AddHearts(1) -- Grants healing
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.OnCreepUpdate, EffectVariant.PLAYER_CREEP_RED)
Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBond, BOND_ITEM)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateBond)

local DASH_COOLDOWN2 = 60 -- Cooldown between dashes
local dashingPlayersBond2 = {} -- Tracks players who are dashing

function Mod:OnUseBond2(_, _, player)
    local bondsfx = SFXManager()
    if not dashingPlayersBond2[player.Index] then
        dashingPlayersBond2[player.Index] = { dashesLeft = NUM_DASHES, dashTimer2 = DASH_DURATION, cooldown = DASH_COOLDOWN2, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0 }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        bondsfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1.5, 0, false, 0.75)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateBond2()

    end
    --return true
end

--[[ local orbSprite = Sprite()
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
end ]]

function Mod:OnUpdateBond2()
    --local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData2 = dashingPlayersBond2[player.Index]

        if dashData2 then
            if dashData2.dashTimer2 > 0 then
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


                dashData2.dashTimer2 = dashData2.dashTimer2 - 1

                -- Spawn creep at player's position
                local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_RED, 0, player.Position, Vector(0, 0), player)
                creep:GetData().IsHealingCreep = true -- ✅ Marks this creep as healing
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
                
                --player:SetActiveCharge(12)



                if MAX_CHAIN_DASHES > 0 and DASH_COOLDOWN2 >= 0 and MAX_CHAIN_DASHES > 0 then
                    --player:SetActiveCharge(12)
                    --player:RemoveCollectible(BOND_ITEM2)
                    --player:AddCollectible(BOND_ITEM3)
                    --player:SetActiveCharge(12)
                    --MAX_CHAIN_DASHES = MAX_CHAIN_DASHES - 1
                --[[ elseif DASH_COOLDOWN == 0 or MAX_CHAIN_DASHES == 0 then
                    player:SetActiveCharge(0)
                    MAX_CHAIN_DASHES = 3 ]]
                end
                dashingPlayersBond2[player.Index] = nil
                player:SetMinDamageCooldown(0)
                player:RemoveCollectible(BOND_ITEM2)
                player:AddCollectible(BOND_ITEM3)
                --player:SetActiveCharge(12)
            end
        end
    end
end

-- Make the creep heal friendly players on contact
function Mod:OnCreepUpdate2(creep)
    local player = Isaac.GetPlayer(0)
    local data = creep:GetData()

    if player:HasCollectible(BOND_ITEM2) and data.IsHealingCreep then
        for _, entity in ipairs(Isaac.FindInRadius(creep.Position, 30, EntityPartition.PLAYER)) do
            local player = entity:ToPlayer()
            if player and not player:IsDead() and player:GetMaxHearts() > player:GetHearts() then
                player:AddHearts(1) -- Grants healing
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.OnCreepUpdate2, EffectVariant.PLAYER_CREEP_RED)
Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBond2, BOND_ITEM2)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateBond2)

local DASH_COOLDOWN3 = 60 -- Cooldown between dashes
local dashingPlayersBond3 = {} -- Tracks players who are dashing

function Mod:OnUseBond3(_, _, player)
    local bondsfx = SFXManager()
    if not dashingPlayersBond3[player.Index] then
        dashingPlayersBond3[player.Index] = { dashesLeft = NUM_DASHES, dashTimer3 = DASH_DURATION, cooldown = DASH_COOLDOWN3, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0 }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        bondsfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1.5, 0, false, 0.75)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateBond3()

    end
    --return true
end

--[[ local orbSprite = Sprite()
orbSprite:Load("gfx/bond_orb.anm2", true)
--orbSprite:Play("Idle", true)
local activeWisps = {} -- Track spawned wisps per player
local activeFamiliars = {} -- Track spawned familiars per player ]]

--[[ local function SpawnOrbEffect(player)
    local orb = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.WISP, 0, player.Position, Vector(0, 0), player)
    orb.Color = Color(0.7, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5) -- Dark purple
    orb.SpriteScale = Vector(2, 2) -- Adjust size for visibility
    orb:ToEffect():SetTimeout(7) -- Lasts for the duration of the dash
    activeWisps[player.Index] = orb -- Store reference
    
    
    return orb
end ]]

function Mod:OnUpdateBond3()
    --local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData3 = dashingPlayersBond3[player.Index]

        if dashData3 then
            if dashData3.dashTimer3 > 0 then
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


                dashData3.dashTimer3 = dashData3.dashTimer3 - 1

                -- Spawn creep at player's position
                local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_RED, 0, player.Position, Vector(0, 0), player)
                creep:GetData().IsHealingCreep = true -- ✅ Marks this creep as healing
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
                --player:SetActiveCharge(12)



                if MAX_CHAIN_DASHES > 0 and DASH_COOLDOWN3 >= 0 and MAX_CHAIN_DASHES > 0 then
                    --player:SetActiveCharge(12)
                    --player:RemoveCollectible(BOND_ITEM3)
                    --player:AddCollectible(BOND_ITEM4)
                    --player:SetActiveCharge(12)
                    --MAX_CHAIN_DASHES = MAX_CHAIN_DASHES - 1
                --[[ elseif DASH_COOLDOWN == 0 or MAX_CHAIN_DASHES == 0 then
                    player:SetActiveCharge(0)
                    MAX_CHAIN_DASHES = 3 ]]
                end
                dashingPlayersBond3[player.Index] = nil
                player:SetMinDamageCooldown(0)
                player:RemoveCollectible(BOND_ITEM3)
                player:AddCollectible(BOND_ITEM4)
                --player:SetActiveCharge(12)
            end
        end
    end
end

-- Make the creep heal friendly players on contact
function Mod:OnCreepUpdate3(creep)
    local player = Isaac.GetPlayer(0)
    local data = creep:GetData()

    if player:HasCollectible(BOND_ITEM3) and data.IsHealingCreep then
        for _, entity in ipairs(Isaac.FindInRadius(creep.Position, 30, EntityPartition.PLAYER)) do
            local player = entity:ToPlayer()
            if player and not player:IsDead() and player:GetMaxHearts() > player:GetHearts() then
                player:AddHearts(1) -- Grants healing
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.OnCreepUpdate3, EffectVariant.PLAYER_CREEP_RED)
Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBond3, BOND_ITEM3)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateBond3)

local DASH_COOLDOWN4 = 60 -- Cooldown between dashes
local dashingPlayersBond4 = {} -- Tracks players who are dashing

function Mod:OnUseBond4(_, _, player)
    local bondsfx = SFXManager()
    if not dashingPlayersBond4[player.Index] then
        dashingPlayersBond4[player.Index] = { dashesLeft = NUM_DASHES, dashTimer4 = DASH_DURATION, cooldown = DASH_COOLDOWN4, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0 }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        bondsfx:Play(SoundEffect.SOUND_SWORD_SPIN, 1.5, 0, false, 0.75)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateBond4()

    end
    --return true
end

--[[ local orbSprite = Sprite()
orbSprite:Load("gfx/bond_orb.anm2", true)
--orbSprite:Play("Idle", true)
local activeWisps = {} -- Track spawned wisps per player
local activeFamiliars = {} -- Track spawned familiars per player ]]

--[[ local function SpawnOrbEffect(player)
    local orb = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.WISP, 0, player.Position, Vector(0, 0), player)
    orb.Color = Color(0.7, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5) -- Dark purple
    orb.SpriteScale = Vector(2, 2) -- Adjust size for visibility
    orb:ToEffect():SetTimeout(7) -- Lasts for the duration of the dash
    activeWisps[player.Index] = orb -- Store reference
    
    
    return orb
end ]]

function Mod:OnUpdateBond4()
    --local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData4 = dashingPlayersBond4[player.Index]

        if dashData4 then
            if dashData4.dashTimer4 > 0 then
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


                dashData4.dashTimer4 = dashData4.dashTimer4 - 1

                -- Spawn creep at player's position
                local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_RED, 0, player.Position, Vector(0, 0), player)
                creep:GetData().IsHealingCreep = true -- ✅ Marks this creep as healing
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

                



                if MAX_CHAIN_DASHES > 0 and DASH_COOLDOWN4 >= 0 and MAX_CHAIN_DASHES > 0 then
                    --player:SetActiveCharge(12)
                    --player:RemoveCollectible(BOND_ITEM4)
                    --player:AddCollectible(BOND_ITEM_EMPTY)
                    --MAX_CHAIN_DASHES = MAX_CHAIN_DASHES - 1
                --[[ elseif DASH_COOLDOWN == 0 or MAX_CHAIN_DASHES == 0 then
                    player:SetActiveCharge(0)
                    MAX_CHAIN_DASHES = 3 ]]
                end
                dashingPlayersBond4[player.Index] = nil
                player:SetMinDamageCooldown(0)
                player:RemoveCollectible(BOND_ITEM4)
                player:AddCollectible(BOND_ITEM_EMPTY)
            end
        end
    end
end

-- Make the creep heal friendly players on contact
function Mod:OnCreepUpdate4(creep)
    local player = Isaac.GetPlayer(0)
    local data = creep:GetData()

    if player:HasCollectible(BOND_ITEM4) and data.IsHealingCreep then
        for _, entity in ipairs(Isaac.FindInRadius(creep.Position, 30, EntityPartition.PLAYER)) do
            local player = entity:ToPlayer()
            if player and not player:IsDead() and player:GetMaxHearts() > player:GetHearts() then
                player:AddHearts(1) -- Grants healing
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.OnCreepUpdate4, EffectVariant.PLAYER_CREEP_RED)
Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseBond4, BOND_ITEM4)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateBond4)

function Mod:EmptyBondUse(item, rng, player, flags)
    --player:AnimateCollectible(BOND_ITEM_EMPTY, "UseItem", "PlayerPickupSparkle")
    -- Grant the player a Bone Heart
    --player:SetActiveCharge(12)
    player:RemoveCollectible(BOND_ITEM_EMPTY)
    --player:SetActiveCharge(12)
    player:AddCollectible(BOND_ITEM)
    --player:SetActiveCharge(12)
        --player:SetActiveCharge(12)
    return true -- Prevents extra effects from triggering                  
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.EmptyBondUse, BOND_ITEM_EMPTY) 

function Mod:AnatomyBookUse(item, rng, player, flags)
    player:AnimateCollectible(ANATOMY_ITEM, "UseItem", "PlayerPickupSparkle")
    -- Grant the player a Bone Heart
    player:AddBoneHearts(1)
    return true -- Prevents extra effects from triggering                  
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.AnatomyBookUse, ANATOMY_ITEM) 

local function GetSafePedestalPosition(basePos)
    local room = Game():GetRoom()
    return room:FindFreeTilePosition(basePos, 20) -- ✅ Finds nearest valid position within 20-pixel radius
end

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
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i) -- Gets the player
    -- Spawn 3 item pedestals with Quality 4 items upon pickup
        if player:HasCollectible(ISAAC_ESSENCE) and not pedestalsSpawned then
            pedestalsSpawned = true -- Mark the effect as triggered
            for _, pos in ipairs(pedestalPositions) do
                local playerPos = player.Position
                local safePos = GetSafePedestalPosition(pos)
                local itemID = GetQuality4Item() -- Get a Quality 4 item
                --local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, pos, Vector.Zero, player)
                local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, safePos, Vector.Zero, player):ToPickup()
        

                if pedestal then
                    pedestal.OptionsPickupIndex = 1 -- ✅ Assigns OptionsPickupIndex correctly
                    pedestal:GetData().elitePedestal = true -- Mark as part of selection
                    pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                end

                --[[ pedestal:GetData().elitePedestal = true -- Mark as part of selection
                pedestal:GetData().spawnTime = Isaac.GetFrameCount() ]]
                table.insert(pedestals, pedestal)
            end
        end
    end
end


function Mod:OnItemTaken(pickup, collider)
    local player = collider:ToPlayer() -- Ensure collider is a player
    if player and pickup:GetData().elitePedestal then
        local spawnTime = pickup:GetData().spawnTime or 0
        local currentFrame = Isaac.GetFrameCount()
        if currentFrame - spawnTime > 30 then
            -- Remove all other pedestals once player picks one
            for _, otherPedestal in ipairs(pedestals) do
                if otherPedestal ~= pickup then
                    otherPedestal:Remove()
                end
            end
            pedestals = {} -- Clear stored pedestals
            for i = 0, Game():GetNumPlayers() - 1 do
                local player = Game():GetPlayer(i)
                player:RemoveCollectible(ISAAC_ESSENCE)
            end
            pedestalsSpawned = false
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupIsaacEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnItemTaken, PickupVariant.PICKUP_COLLECTIBLE) -- Detect item selection

function Mod:MagEssenceUse(item, rng, player, flags)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i) -- Gets the player
        player:AnimateCollectible(MAGDALENE_ESSENCE, "UseItem", "PlayerPickupSparkle")
        local healsfx = SFXManager()
        healsfx:Play(SoundEffect.SOUND_VAMP_DOUBLE) -- Play sound effect
        -- Grant the player Full HP.
        player:SetFullHearts()

    end
    return true
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.MagEssenceUse, MAGDALENE_ESSENCE) 

--[[ local cain_essence_triggered = false

-- Reset the flag when starting a new run
function Mod:OnNewGame(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        cain_essence_triggered = false
    end
end ]]


-- Function to grant resources upon pickup
--[[ function Mod:OnPickupCainEssence(_, player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        if player:HasCollectible(CAIN_ESSENCE) and cain_essence_triggered == false then
            cain_essence_triggered = true
            player:AddCoins(20)
            player:AddKeys(20)
            player:AddBombs(20)
        end
    end
end ]]

-- Function to spawn golden items at the start of each floor
function Mod:OnNewFloor()
    --local game = Game()
    local level = game:GetLevel()
    local room = game:GetRoom()
    for i = 0, Game():GetNumPlayers() - 1 do
    
        local player = Isaac.GetPlayer(i)

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
end

--Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGame) -- Reset flag between runs
--Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupCainEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloor) -- Spawn golden items at the start of each floor

function Mod:OnCacheUpdateJudasEssence(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(JUDAS_ESSENCE) then
            local judasnum = player:GetCollectibleNum(JUDAS_ESSENCE) * 2.5
            -- Base bonus: +1 damage
            local damageBonus = 1
            
            -- Calculate total hearts (Red, Soul, Bone converted to half-hearts)
            local totalHearts = player:GetHearts() + player:GetSoulHearts() + player:GetBlackHearts() + player:GetRottenHearts() + (player:GetBoneHearts() * 2)

            -- Apply 2.5x multiplier if total health is 3 hearts (6 half-hearts) or less
            if totalHearts <= 6 then
                player.Damage = player.Damage * judasnum
            end
            
            -- Apply the base damage bonus
            player.Damage = player.Damage + damageBonus
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateJudasEssence)

local currentRoomBB = Game():GetRoom()

function Mod:OnNewRoomBlueBabyEssence()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        -- Ensure the player has the item before triggering effect
        if player:HasCollectible(BLUE_BABY_ESSENCE) and currentRoomBB:IsFirstVisit() == true then
            local babynum = player:GetCollectibleNum(BLUE_BABY_ESSENCE) * 10
            -- Spawn Blue Flies around the player
            player:AddBlueFlies(babynum, player.Position, player)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomBlueBabyEssence) -- Trigger flies on room entry

--[[ local eveEssencetriggered = false
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
            local evenum = player:GetCollectibleNum(EVE_ESSENCE) * 30
            -- Calculate total hearts (Red, Soul, Bone converted to half-hearts)
            local totalHearts = player:GetHearts() + player:GetSoulHearts() + player:GetBlackHearts() + player:GetRottenHearts() + (player:GetBoneHearts() * 2)

            -- Add 30 damage when health is at 1 heart or less.
            if totalHearts <= 2 and eveEssencetriggered == false then
                eveEssencetriggered2 = true
                player.Damage = player.Damage + evenum
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
Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoom) -- Reset damage boost when the player leaves the room. ]]



function Mod:OnCacheUpdateEveEssence(player, cacheFlag)
    --if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(EVE_ESSENCE) then
            local evenum = player:GetCollectibleNum(EVE_ESSENCE)
            
            -- Calculate total hearts (Red, Soul, Bone converted to half-hearts)
            local totalHearts = player:GetHearts() + player:GetSoulHearts() + player:GetBlackHearts() + player:GetRottenHearts() + (player:GetBoneHearts() * 2)
            local redhearts = player:GetHearts()

            -- Apply 2.5x multiplier if total health is 3 hearts (6 half-hearts) or less
            if redhearts <= 1 then
                if cacheFlag == CacheFlag.CACHE_DAMAGE then
                    player.Damage = player.Damage * (evenum * 1.25)
                end
                if cacheFlag == CacheFlag.CACHE_FIREDELAY then
                    player.MaxFireDelay = player.MaxFireDelay + (-1 * evenum)
                end
            end
            
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateEveEssence)

function Mod:rampagePickup(player, cacheFlag)
    if player:HasCollectible(CHARGE_DAMAGE_ITEM) then
        local numtrophy = player:GetCollectibleNum(CHARGE_DAMAGE_ITEM)
        local numplayers = Game():GetNumPlayers()
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + ((0.05 / numplayers) * numtrophy)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.rampagePickup)

local DASH_SPEED_2 = 10 -- Adjust dash speed
local DASH_DURATION_2 = 10 -- Frames per dash
local DASH_DAMAGE = 10 -- Damage dealt by dash
local DAMAGE_GAIN_ON_KILL = 10 -- Small permanent damage boost per kill


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
    --local game = Game()
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
                        entity:TakeDamage(DASH_DAMAGE + player.Damage, DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(player), 0)
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

        -- Ensure the bonus is stored correctly
        samsonEssenceBonus[player.Index] = (samsonEssenceBonus[player.Index] or 0) + DAMAGE_GAIN_ON_KILL

        Mod:ApplySamsonEssenceEffect(nil, player, CacheFlag.CACHE_DAMAGE)


        print("Cache flags triggered! Damage bonus stored:", samsonEssenceBonus[player.Index])
    end
end

-- Apply stored damage bonus through CACHE_DAMAGE
function Mod:ApplySamsonEssenceEffect(_, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE then
        if player:HasCollectible(SAMSON_ESSENCE) then
            local playerID = player:GetCollectibleRNG(SAMSON_ESSENCE)
            --if samsonEssenceBonus[player.Index] then
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
local LASER_RING_CHANCE = 25 -- 25% chance to trigger

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
    local luckScaling = 0.05 * player:GetCollectibleNum(AZAZEL_ESSENCE) -- Each Luck point increases chance by 5%
    local teardropScaling = 0

    if player:HasTrinket(TrinketType.TRINKET_TEARDROP_CHARM) then
        teardropScaling = 0.15
    end

    local luckBonus = math.max(0, (player.Luck * luckScaling) + teardropScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

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
        local azazelnum = player:GetCollectibleNum(AZAZEL_ESSENCE) * 3

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
            laserRing.CollisionDamage = azazelnum + player.Damage -- Set laser damage
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
    SHOTSPEED = 0.3,
    LUCK = 2.00,
}

function Mod:lazEssencePickup(player, cacheFlag)
    if player:HasCollectible(LAZARUS_ESSENCE_UNLOCKED) then
        local numlaz = player:GetCollectibleNum(LAZARUS_ESSENCE_UNLOCKED)
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + (STAT_BOOST.SPEED * numlaz)
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (STAT_BOOST.FIREDELAY * numlaz)
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + STAT_BOOST.DAMAGE) * (1.5 * numlaz)
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (STAT_BOOST.RANGE * numlaz)
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed+ (STAT_BOOST.SHOTSPEED * numlaz)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + (STAT_BOOST.LUCK * numlaz)
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
function Mod:UpgradeItemsOnUse(item, rng, player)
    --for j = 0, Game():GetNumPlayers() - 1 do
        --local player = Isaac.GetPlayer(j)
        player:AnimateCollectible(EDEN_ESSENCE, "UseItem", "PlayerPickupSparkle")
        if item == EDEN_ESSENCE then

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
    --end
    
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
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(KEEPER_ESSENCE) and keeper_essence_active == false then
            player:AddCoins(99)
        end
    end
end

function Mod:OnNewFloorKeeperEssence()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:HasCollectible(KEEPER_ESSENCE) then
            keeper_essence_active = true
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameKeeperEssence) -- Reset flag between runs
Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupKeeperEssence) -- Detect item pickup
Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloorKeeperEssence) -- Spawn golden items at the start of each floor

function Mod:voidEnergyPickup(player, cacheFlag)
    if player:HasCollectible(VOID_DAMAGE_ITEM) then
        local numtrophy = player:GetCollectibleNum(VOID_DAMAGE_ITEM)
        local numplayers = Game():GetNumPlayers()
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + ((0.05 / numplayers) * numtrophy)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.voidEnergyPickup)

local rampageActive = false
local rampageEndTime = 0
local killCount = 0

-- ✅ Activate invulnerability and contact damage on use
function Mod:ActivateRampage(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == APOLLYON_ESSENCE then
            player:AnimateCollectible(APOLLYON_ESSENCE, "UseItem", "PlayerPickupSparkle")
            player:AddCollectible(APOLLYON_ESSENCE_VFX)
            local apollyonsfx = SFXManager()
            apollyonsfx:Play(SoundEffect.SOUND_BEAST_SUCTION_LOOP) -- Play sound effect


        --if player:HasCollectible(APOLLYON_ESSENCE) then

            rampageActive = true
            rampageEndTime = Isaac.GetFrameCount() + (8 * 60) -- 10 seconds in frames
            killCount = 0

            -- Make player invulnerable
            player:SetMinDamageCooldown(480)
            player:GetData().contactDamageBoost = true
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.ActivateRampage, APOLLYON_ESSENCE)

-- ✅ Apply contact damage effect
function Mod:OnPlayerUpdateApollyon(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
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
                for i = 0, Game():GetNumPlayers() - 1 do
                    local player = Game():GetPlayer(i)
                    local numplayers = Game():GetNumPlayers()
                    player:SetMinDamageCooldown(30)
                    player:RemoveCollectible(APOLLYON_ESSENCE_VFX)
                    rampageActive = false
                    player:GetData().contactDamageBoost = nil
            
                    -- ✅ Apply damage boost based on kills
                    player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
                    player:GetData().temporaryDamageBoost = killCount * 0.05
                    player:EvaluateItems()
                    for i = 1, killCount do
                        if player:HasCollectible(APOLLYON_ESSENCE) then
                            player:AddCollectible(VOID_DAMAGE_ITEM)
                        end
                    end
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdateApollyon)

--[[ function Mod:onCacheApollyonEssence(player, cacheFlag)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().temporaryDamageBoost and player:HasCollectible(APOLLYON_ESSENCE) then
            player.Damage = player.Damage + player:GetData().temporaryDamageBoost
        end
    end ]]

    --[[ f cacheFlag == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage - 3.5 + Template.DAMAGE
    end ]]
--[[ end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheApollyonEssence) ]]

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
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

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
end


Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomBethEssence)

local mattTrigger = false

function Mod:OnNewGameDomino(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        mattTrigger = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameDomino) -- Reset flag between runs

-- ✅ Define a list of possible items to grant
local predefinedItemList = {
    AZAZEL_ESSENCE,
    STAR_OF_DAVID,
    GLITCH_ITEM,
    NEURO_ITEM,
    INFESTATION_ITEM,
    576,
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
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(DOMINO_ESSENCE) and mattTrigger == false then
            local nummatt = player:GetCollectibleNum(DOMINO_ESSENCE) * 3

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
            player:GetData().luckBoost = nummatt -- Adjust as needed
            player:EvaluateItems()

            -- ✅ Remove itself after activation (if desired)
            --player:RemoveCollectible(MATT_ESSENCE)
            mattTrigger = true
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.OnPickupRewardItem)

-- ✅ Ensure luck boost applies properly
function Mod:onCacheDominoEssence(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_LUCK then
        local data = player:GetData()

        if player:HasCollectible(DOMINO_ESSENCE) then
            player.Luck = player.Luck + player:GetCollectibleNum(DOMINO_ESSENCE) * 3 -- ✅ Apply luck boost individually
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheDominoEssence)

local spearCooldown = 0 -- Shared cooldown for all characters

function Mod:UseSpearAttack(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == PONTIUS_ESSENCE then

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
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
                    local sprite = spear:GetSprite()
                    sprite:Load("gfx/pontius_spear_throw_tech.anm2", true) -- Load your custom animation
                    sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays
                elseif spear then
                    local sprite = spear:GetSprite()
                    sprite:Load("gfx/pontius_spear_throw.anm2", true) -- Load your custom animation
                    sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays

                end

                -- Stop default sound and play custom effect
                local sfx = SFXManager()
                sfx:Stop(SoundEffect.SOUND_ANGEL_BEAM)
                sfx:Play(SoundEffect.SOUND_SWORD_SPIN) -- Replace with your custom sound ID

                local spearDamage = 10
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_20_20) then
                    spearDamage = spearDamage * 1.2
                end
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_INNER_EYE) then
                    spearDamage = spearDamage * 1.3
                end
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_MUTANT_SPIDER) then
                    spearDamage = spearDamage * 1.4
                end
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_BRIMSTONE) then
                    spearDamage = spearDamage * 1.4
                end
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_EYE_SORE) then
                    spearDamage = spearDamage * math.random(1, 1.3)
                end
                if spear and player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
                    spearDamage = spearDamage * 1.2
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DR_FETUS) or player:HasCollectible(CollectibleType.COLLECTIBLE_EPIC_FETUS) then
                    spear.TearFlags = TearFlags.TEAR_EXPLOSIVE | player.TearFlags
                end
                spear.PositionOffset = Vector(0, -10)
                spear.TearFlags = player.TearFlags
                spear.AngleDegrees = directionspear:GetAngleDegrees()
                spear.Parent = player
                spear.Timeout = 1
                
                spear.CollisionDamage = playerDamage * spearDamage
                if spear and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
                    spear.CollisionDamage = (playerDamage * spearDamage) + 1
                end

                spearCooldown = 30 -- Set a cooldown (adjust as needed)
            end
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSpearAttack, PONTIUS_ESSENCE)

local SOUL_OF_THE_LOST = Card.CARD_SOUL_LOST -- Replace with actual Soul of the Lost ID


function Mod:UseSoulItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        player:AnimateCollectible(LOST_ESSENCE, "UseItem", "PlayerPickupSparkle")
        if item == LOST_ESSENCE then

            -- ✅ Force immediate use
            player:UseCard(SOUL_OF_THE_LOST)

            -- ✅ Apply temporary damage boost
            --[[ player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:GetData().temporaryDamageBoost = 20 -- Adjust as needed
            player:EvaluateItems() ]]

        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulItem, LOST_ESSENCE)

--[[ -- ✅ Remove effect upon leaving the room
function Mod:OnNewRoomLostEssence()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        -- Reset player state after leaving the room
        if player:GetData().temporaryDamageBoost then
            player:GetData().temporaryDamageBoost = nil
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnNewRoomLostEssence)

-- ✅ Ensure damage boost applies correctly
function Mod:ApplySoulDamageBoost(_, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:HasCollectible(LOST_ESSENCE) then
        player.Damage = player.Damage + player:GetData().temporaryDamageBoost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplySoulDamageBoost) ]]

---@param player EntityPlayer
function Mod:EvaluateCacheJacob(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(JACOB_AND_ESAU_ESSENCE) + player:GetCollectibleNum(JACOB_AND_ESAU_ESSENCE)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_FAIL)

    player:CheckFamiliar(FAMILIAR_VARIANT_JACOB, count, rng, CONFIG_FAIL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheJacob, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInitJacob(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitJacob, FAMILIAR_VARIANT_JACOB)

---@param familiar EntityFamiliar
function Mod:HandleUpdateJacob(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player

    local fireDirection = player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false
    local TEAR_DAMAGE_JACOB = player.Damage * 0.4
    local JACOB_FIRE_RATE = player.FireDelay / 2

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
            TearVariant.BLUE,
            0,
            familiar.Position,
            velocity,
            familiar
        ):ToTear()
        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and tear then
            tear.TearFlags = TearFlags.TEAR_HOMING
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = TEAR_DAMAGE_JACOB * 2
        else
            tear.CollisionDamage = TEAR_DAMAGE_JACOB
        end

         if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay, 1))
        else
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 2, 1))
        end
 

        --familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateJacob, FAMILIAR_VARIANT_JACOB)

---@param player EntityPlayer
function Mod:EvaluateCacheEsau(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(JACOB_AND_ESAU_ESSENCE) + player:GetCollectibleNum(JACOB_AND_ESAU_ESSENCE)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_FAIL)

    player:CheckFamiliar(FAMILIAR_VARIANT_ESAU, count, rng, CONFIG_ESAU)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheEsau, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInitEsau(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitEsau, FAMILIAR_VARIANT_ESAU)

---@param familiar EntityFamiliar
function Mod:HandleUpdateEsau(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player

    local fireDirection = player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false
    local TEAR_DAMAGE_ESAU = player.Damage * 0.6
    local ESAU_FIRE_RATE = player.FireDelay / 2.5

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
        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and tear then
            tear.TearFlags = TearFlags.TEAR_HOMING
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = TEAR_DAMAGE_ESAU * 2
        else
            tear.CollisionDamage = TEAR_DAMAGE_ESAU
        end
         if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 1.5, 1))
        else
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 3, 1))
        end
 

        --familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateEsau, FAMILIAR_VARIANT_ESAU)

---@param player EntityPlayer
function Mod:EvaluateCacheSoul(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(SOUL_ESSENCE) + player:GetCollectibleNum(SOUL_ESSENCE)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_FAIL)

    player:CheckFamiliar(FAMILIAR_VARIANT_SOUL, count, rng, CONFIG_SOUL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheSoul, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInitSoul(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitSoul, FAMILIAR_VARIANT_SOUL)

---@param familiar EntityFamiliar
function Mod:HandleUpdateSoul(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player

    local fireDirection = player:GetFireDirection()
    local direction
    local shootAnim
    local doFlip = false
    local TEAR_DAMAGE_SOUL = player.Damage * 0.6

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
            TearVariant.BLUE,
            0,
            familiar.Position,
            velocity,
            familiar
        ):ToTear()
        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and tear then
            tear.TearFlags = TearFlags.TEAR_HOMING
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = TEAR_DAMAGE_SOUL * 2
        else
            tear.CollisionDamage = TEAR_DAMAGE_SOUL
        end
         if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 1.5, 1))
        else
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 3, 1))
        end
 

        --familiar.FireCooldown = SHOOTING_TICK_COOLDOWN_FAIL

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateSoul, FAMILIAR_VARIANT_SOUL)

local SOUL_OF_FORGOTTEN = Card.CARD_SOUL_FORGOTTEN -- Replace with actual Soul of the Lost ID

function Mod:UseSoulItemForgotten(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        --player:AnimateCollectible(FORGOTTEN_ESSENCE, "UseItem", "PlayerPickupSparkle")
        if item == FORGOTTEN_ESSENCE then
            -- Find closest valid Soul familiar
            local closestFamiliar = nil
            local closestDistance = math.huge

            for _, familiar in ipairs(Isaac.FindByType(EntityType.ENTITY_FAMILIAR, FAMILIAR_VARIANT_SOUL)) do
                --if familiar.Player and familiar.Player.Index == player.Index then
                    local distance = player.Position:Distance(familiar.Position)
                    if distance < closestDistance then
                        closestDistance = distance
                        closestFamiliar = familiar
                    end
                --end
            end

            -- If found, teleport player
            if closestFamiliar then
                player:SetMinDamageCooldown(30)
                SFXManager():Play(SoundEffect.SOUND_HELL_PORTAL2)
                player.Position = closestFamiliar.Position
                --player:SetVelocity(Vector.Zero)
            else
                print("Forgotten Soul teleport failed: no familiar found")
            end
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulItemForgotten, FORGOTTEN_ESSENCE)

function Mod:GiveSoulEssence(item, rng, player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(FORGOTTEN_ESSENCE) and not player:HasCollectible(SOUL_ESSENCE) then
            player:AddCollectible(SOUL_ESSENCE)
        elseif not player:HasCollectible(FORGOTTEN_ESSENCE) then
            player:RemoveCollectible(SOUL_ESSENCE)

        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.GiveSoulEssence)


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
    local teardropScaling = 0

    if player:HasTrinket(TrinketType.TRINKET_TEARDROP_CHARM) then
        teardropScaling = 0.3
    end

    local luckBonus = math.max(0, (player.Luck * luckScaling) + teardropScaling) -- Ensure non-negative
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
                local starnum = player:GetCollectibleNum(STAR_OF_DAVID) * 1.3

                local sprite = tear:GetSprite()
                sprite:Load("gfx/star_of_david_tear.anm2", true)
                sprite:Play("Stone4Move", true)

                -- ✅ Increase damage by 30%
                tear.CollisionDamage = tear.CollisionDamage * starnum
                --tear.AddTearFlags(TearFlags.TEAR_HP_DROP)

                -- ✅ Apply bleed effect on hit
                tear:GetData().applyBleed = true -- We’ll handle this on enemy hit
                
                -- ✅ Track kill-triggered Golden Heart drop
                --tear:GetData().goldenHeartChance = 1 -- 10% chance (adjust as needed)
            end
        end
    end
end

local goldenHeartChance = 0.01 -- Set the drop chance (10%)

function Mod:onEnemyDeath(entity)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local starnumheart = player:GetCollectibleNum(STAR_OF_DAVID) * 0.01

        if player:HasCollectible(STAR_OF_DAVID) and entity:IsEnemy() then
            -- ✅ Base chance (5%) + Luck scaling (5% per Luck point)
            print("work")
            local luckFactor = math.max(0, player.Luck * starnumheart) -- Prevent negative values
            local finalChance = math.min(0.5, 0.01 + luckFactor) -- Cap at 50% drop rate

            -- ✅ Random chance to spawn a Golden Heart upon enemy death
            if math.random() <= finalChance then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_GOLDEN, entity.Position, Vector.Zero, nil)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.onEnemyDeath)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateStarDavid)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitStar)

function Mod:UseGun(item, rng, player)
    --local player = Isaac.GetPlayer(0)
    if item == GUN_ITEM then

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
        local tear = player:FireTear(player.Position, randomDirection * 50, false, false, false, player, 1)

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

--[[ function Mod:OnPickupAppetizer()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if not data.AppetizerCount then data.AppetizerCount = 0 end

        local currentCount = player:GetCollectibleNum(APPETIZER_ITEM)

        if currentCount > data.AppetizerCount then
            local healthGain = (currentCount - data.AppetizerCount) * 2

            player:AddMaxHearts(healthGain)
            player:AddHearts(healthGain * 2)

        end

        data.AppetizerCount = currentCount
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPickupAppetizer)


function Mod:OnPickupMorningSnack()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if not data.SnackCount then data.SnackCount = 0 end

        local currentCount = player:GetCollectibleNum(MORNING_SNACK_ITEM)

        if currentCount > data.SnackCount then
            local healthGain = (currentCount - data.SnackCount) * 2

            player:AddMaxHearts(healthGain)
            player:AddHearts(healthGain * 2)

        end

        data.SnackCount = currentCount
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPickupMorningSnack)
 ]]
local BOSS_ROOM_DAMAGE_BOOST = 1.5 -- 50% extra damage

function Mod:UpdateBossRoomDamage(player)
    --local game = Game()
    local level = game:GetLevel()
    local room = game:GetRoom()
    local kingnum = player:GetCollectibleNum(KINGSLAYER_ITEM) * 1.5

    -- ✅ Check if player is in an uncleared boss room
    if player:HasCollectible(KINGSLAYER_ITEM) and room:GetType() == RoomType.ROOM_BOSS and not room:IsClear() then

        -- ✅ Apply temporary damage boost
        player:GetData().bossDamageBoost = kingnum
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    else
        -- ✅ Remove damage boost when room is cleared or exited
        if player:GetData().bossDamageBoost then
            player:GetData().bossDamageBoost = nil
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateBossRoomDamage)

function Mod:ApplyBossRoomDamage(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().bossDamageBoost then
        player.Damage = player.Damage * player:GetData().bossDamageBoost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyBossRoomDamage)

local INVINCIBILITY_DURATION = 30 -- 1 second (since Isaac runs at 30 FPS)

function Mod:UseInvincibilityItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == PHALANX_ITEM then

            -- ✅ Apply invulnerability effect
            player:SetMinDamageCooldown(60)


            -- ✅ Play sound effect (optional)
            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_BALL_AND_CHAIN_HIT)
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseInvincibilityItem, PHALANX_ITEM)

local LASER_COUNT = 6 -- ✅ Number of lasers in the ring
local LASER_RADIUS = 40 -- ✅ Distance from player

function Mod:UpdateLaserRing(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(DEFENSE_TECH_ITEM) then

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
                    LaserVariant.THIN_RED,
                    3,
                    player.Position,
                    Vector.Zero,
                    player
                ):ToLaser()

                spear.PositionOffset = Vector(0, -10)
                spear.AngleDegrees = directionspear:GetAngleDegrees()
                spear.Parent = player
                spear.Timeout = 9999999
                spear.CollisionDamage = playerDamage * 0.25
                spear.TearFlags = TearFlags.TEAR_NO_GRID_DAMAGE
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.UpdateLaserRing)

local BASE_CHANCE = 0.1 -- ✅ Base 10% chance
local LUCK_SCALING = 0.05 -- ✅ +5% chance per Luck point

function Mod:OnEnemyDeath(entity)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local necronum = player:GetCollectibleNum(NECROMANCY_ITEM) * 0.05

        -- ✅ Check if player has the item and enemy is valid
        if player:HasCollectible(NECROMANCY_ITEM) and entity:IsEnemy() and not entity:IsBoss() then
            -- ✅ Scale chance with Luck
            local luckFactor = math.max(0, player.Luck * necronum)
            local finalChance = math.min(0.75, BASE_CHANCE + luckFactor) -- Cap at 75% chance

            if math.random() < finalChance then

                -- ✅ Spawn friendly version of the enemy
                local ally = Isaac.Spawn(entity.Type, entity.Variant, entity.SubType, entity.Position, Vector.Zero, player)
                ally:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
                -- **Apply permanent charmed effect (adds the hearts visual)**
                ally:AddEntityFlags(EntityFlag.FLAG_CHARM)
                ally:SetColor(Color(1.0, 0.2, 1.0, 1.0, 0, 0, 0), 99999, 1, false, false)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.OnEnemyDeath)


function Mod:TrackMoneySpent(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if not player:GetData().moneySpent then
            player:GetData().moneySpent = 0 -- ✅ Initialize tracking
        end

        -- ✅ Detect spending (subtracting money)
        local prevCoins = player:GetData().lastCoins or player:GetNumCoins()
        local currentCoins = player:GetNumCoins()

        if currentCoins < prevCoins then
            local spentAmount = prevCoins - currentCoins
            player:GetData().moneySpent = player:GetData().moneySpent + spentAmount
        
        end

        -- ✅ Store last known coin count for next check
        player:GetData().lastCoins = currentCoins
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.TrackMoneySpent)

local moneyTriggered = false

function Mod:SaveMoneyData()
    local savedData = ""

    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local playerID = tostring(player.ControllerIndex) -- Unique key per player
        local moneySpent = player:GetData().moneySpent or 0

        savedData = savedData .. playerID .. ":" .. tostring(moneySpent) .. ";" -- ✅ Format key-value pairs
    end

    Isaac.SaveModData(Mod, savedData) -- ✅ Store money spent persistently
end

Mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, Mod.SaveMoneyData)

function Mod:LoadMoneyData(isContinued)
    if not isContinued then
        Isaac.SaveModData(Mod, "") -- ✅ Clears stored data for fresh runs
        return
    end

    local loadedData = Isaac.LoadModData(Mod)

    if loadedData ~= "" then
        for keyValue in string.gmatch(loadedData, "([^;]+)") do
            local playerID, moneySpent = string.match(keyValue, "(%d+):(%d+)")
            if playerID and moneySpent then
                local player = Isaac.GetPlayer(tonumber(playerID))
                if player then
                    player:GetData().moneySpent = tonumber(moneySpent) -- ✅ Restore money tracking
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.LoadMoneyData)

function Mod:OnNewGameMoney(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        moneyTriggered = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameMoney) -- Reset flag between runs


function Mod:UseRefundItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == MONEY_ITEM then

            player:AnimateCollectible(MONEY_ITEM, "UseItem", "PlayerPickupSparkle")

            local refundAmount = player:GetData().moneySpent or 0
            print(refundAmount)
            if refundAmount > 0 then

                -- ✅ Give the stored money back to the player
                player:AddCoins(refundAmount)

                -- ✅ Reset spent money counter after refund
                --player:GetData().moneySpent = 0
                player:RemoveCollectible(MONEY_ITEM)

            end
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseRefundItem, MONEY_ITEM)


function Mod:UseGoldSprayPaint(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)

        if item == PAINT_ITEM then
            player:AnimateCollectible(PAINT_ITEM, "UseItem", "PlayerPickupSparkle")

            -- ✅ Get the player's first held trinket
            local heldTrinket = player:GetTrinket(0)
            local goldTrinket

            if heldTrinket ~= TrinketType.TRINKET_NULL then
                goldTrinket = heldTrinket + 32768

                -- ✅ Convert the trinket to its golden version
                player:TryRemoveTrinket(heldTrinket) -- Remove normal version
                player:AddTrinket(goldTrinket) -- Add golden version

                -- ✅ Reapply trinket effects
                player:AddCacheFlags(CacheFlag.CACHE_ALL)
                player:EvaluateItems()
            end
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseGoldSprayPaint, PAINT_ITEM)

local HasGlitchEffect = false


function Mod:onUpdateGlitch(player)
	if game:GetFrameCount() == 1 then
		HasGlitchEffect = false
	end
	if not HasGlitchEffect and player:HasCollectible(GLITCH_ITEM) then
		HasGlitchEffect = true
	end
end

local function getRandomGlitchEffect(player)
    local baseChance = 0.00000001
    local teardropScaling = 0
    local luckScaling = 0.00000001 * player:GetCollectibleNum(GLITCH_ITEM)

    if player:HasTrinket(TrinketType.TRINKET_TEARDROP_CHARM) then
        teardropScaling = 0.00000003
    end

    local luckBonus = math.max(0, (player.Luck * luckScaling) + teardropScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitGlitch(tear)
    if HasGlitchEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(GLITCH_ITEM) and getRandomGlitchEffect(player) then
                tear:GetData().starTrigger = true
                local sprite = tear:GetSprite()
                sprite:Load("gfx/glitch_tear.anm2", true)
                sprite:Play("Stone4Move", true)


                tear.CollisionDamage = tear.CollisionDamage * 999999999

            end
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateGlitch)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitGlitch)

ProtoTech = {}
LaserType = { THICK_RED = 1}
LASER_DURATION = 1

function ProtoTech:onUpdateTech(player)
    local PlayerData = player:GetData()
    if PlayerData.TechFrame == nil then PlayerData.TechFrame = 0 end
    if PlayerData.TechCool == nil then PlayerData.TechCool = 0 end
    if PlayerData.LastFireDirection == nil then PlayerData.LastFireDirection = Direction.NO_DIRECTION end -- ✅ Track last fire direction

    if player:HasCollectible(PROTO_ITEM) then
        player.FireDelay = player.MaxFireDelay
        
        if player:GetFireDirection() > -1 and PlayerData.TechCool == 0 then
            PlayerData.LastFireDirection = player:GetFireDirection()
            PlayerData.TechFrame = math.min(player.MaxFireDelay * 2, PlayerData.TechFrame + 1)
            if PlayerData.TechFrame == player.MaxFireDelay * 2 then
                player:SetColor(Color(1,0,0,0.8,0, 0, 0), 1, 0, false, false)
            end
        elseif game:GetRoom():GetFrameCount() > 1 then
            if PlayerData.TechFrame == player.MaxFireDelay * 2 then
                if player:HasCollectible(PROTO_ITEM) then
                    BaseAngle = 0
                end

                local fireDirectiontech = PlayerData.LastFireDirection
                local directiontech
                


                -- Set correct spear direction
                if fireDirectiontech == Direction.LEFT then
                    directiontech = Vector(-1, 0)
                elseif fireDirectiontech == Direction.RIGHT then
                    directiontech = Vector(1, 0)
                elseif fireDirectiontech == Direction.DOWN then
                    directiontech = Vector(0, 1)
                elseif fireDirectiontech == Direction.UP then
                    directiontech = Vector(0, -1)
                elseif fireDirectiontech == Direction.NO_DIRECTION then
                    directiontech = Vector(0, 1)
                end
                --for Angle = BaseAngle do
                --local ProtoTechLaser = EntityLaser.ShootAngle(LaserType.THICK_RED, player.Position, 0, LASER_DURATION, Vector(0,0), player)
                local ProtoTechLaser = Isaac.Spawn(
                    EntityType.ENTITY_LASER,
                    LaserVariant.ELECTRIC,
                    0,
                    player.Position,
                    Vector.Zero,
                    player
                ):ToLaser()
                if ProtoTechLaser then
                    local sprite = ProtoTechLaser:GetSprite()
                    sprite:Load("gfx/prototech.anm2", true)
                    sprite:Play("LargeRedLaser", true)
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DR_FETUS) or player:HasCollectible(CollectibleType.COLLECTIBLE_EPIC_FETUS) then
                    ProtoTechLaser.TearFlags = TearFlags.TEAR_EXPLOSIVE | player.TearFlags
                end
                local laserDamage = 10
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_20_20) then
                    laserDamage = laserDamage * 1.2
                end
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_INNER_EYE) or player:GetPlayerType() ~= PlayerType.PLAYER_KEEPER then
                    laserDamage = laserDamage * 1.3
                end
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_MUTANT_SPIDER) or player:GetPlayerType() ~= PlayerType.PLAYER_KEEPER_B then
                    laserDamage = laserDamage * 1.4
                end
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_BRIMSTONE) then
                    laserDamage = laserDamage * 1.4
                end
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_EYE_SORE) then
                    laserDamage = laserDamage * math.random(1, 1.3)
                end
                if ProtoTechLaser and player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
                    laserDamage = laserDamage * 1.2
                end

                local protosfx = SFXManager()
                protosfx:Play(SoundEffect.SOUND_LASERRING_STRONG)
                ProtoTechLaser.TearFlags = player.TearFlags
                ProtoTechLaser.AngleDegrees = directiontech:GetAngleDegrees()
                ProtoTechLaser.CollisionDamage = player.Damage * laserDamage
                if ProtoTechLaser and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
                    ProtoTechLaser.CollisionDamage = (player.Damage * laserDamage) + 1
                end
                ProtoTechLaser.PositionOffset = Vector(0, -25)
                ProtoTechLaser.Timeout = 1
                ProtoTechLaser.Parent = player
                ProtoTechLaser.Size = 100
                
                --end
                PlayerData.TechCool = LASER_DURATION * 2
            else
                --Dud
            end
            PlayerData.TechFrame = 0
        end
        PlayerData.TechCool = math.max(0,PlayerData.TechCool - 1)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, ProtoTech.onUpdateTech)

function Mod:RenderProtoTechHUD()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(PROTO_ITEM) then
            local data = player:GetData()
            local timerValue = data.TechFrame or 0
            local maxCharge = player.MaxFireDelay * 2
            local chargePercentage = math.floor((timerValue / maxCharge) * 100)
            local scale = Vector(0.75, 0.75)

            local screenPos = Vector(55, 90) -- ✅ Adjust position to fit HUD layout
            local color = timerValue <= 300 and KColor(1, 0, 0, 1) or KColor(1, 1, 1, 1) -- ✅ Red near expiration

            Isaac.RenderScaledText("Laser Charge: " .. chargePercentage .. "%", screenPos.X, screenPos.Y, scale.X, scale.Y, 1, 1, 1, 1)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_RENDER, Mod.RenderProtoTechHUD)

local gaperSpawned = false

-- Reset the flag when starting a new run
function Mod:OnNewGameGaper(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        gaperSpawned = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameGaper) -- Reset flag between runs


function Mod:SpawnFriendlyGaper(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(FRED_ITEM) and gaperSpawned == false then
            local gaper = Isaac.Spawn(EntityType.ENTITY_GAPER, 0, 0, player.Position, Vector(0,0), player)
            gaper:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- ✅ Makes it friendly
            gaper:AddEntityFlags(EntityFlag.FLAG_PERSISTENT) -- ✅ Makes it friendly

            -- **Apply permanent charmed effect (adds the hearts visual)**
            gaper:AddEntityFlags(EntityFlag.FLAG_CHARM)
            gaper:GetData().IsImmortalGaper = true

        
            gaperSpawned = true
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.SpawnFriendlyGaper)

function Mod:PreventGaperDamage(entity, amount, flags, source, countdown)
    if entity.Type == EntityType.ENTITY_GAPER and entity:GetData().IsImmortalGaper then
        return false -- ✅ Blocks all damage
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.PreventGaperDamage)


--[[ function Mod:UpdateFriendlyGaper()
    local entities = Isaac.GetRoomEntities()
    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_GAPER and entity:GetData().IsImmortalGaper then
            local player = Isaac.GetPlayer(0)
            entity.Velocity = (player.Position - entity.Position):Normalized() * 2 -- ✅ Follows player
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.UpdateFriendlyGaper) ]]

--[[ function Mod:PreventGaperDeath(entity)
    if entity.Type == EntityType.ENTITY_GAPER and entity:GetData().IsImmortalGaper then
        local player = Isaac.GetPlayer(0)
        Isaac.Spawn(EntityType.ENTITY_GAPER, 0, 0, player.Position, Vector(0,0), player):AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
        entity:Remove() -- ✅ Respawn a new Gaper instead of dying
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_REMOVE, Mod.PreventGaperDeath) ]]

local DEBUG_COMMANDS = {
    "debug 1", -- Entity positions
    "debug 2", -- Grid
    "debug 4", -- High damage
    "debug 5", -- Show room info
    "debug 6", -- Show hitspheres
    "debug 7", -- Show damage values
    "debug 8", -- Infinite item charges
    "debug 9", -- High luck
    "debug 10", -- Quick kill
    "debug 11", -- Grid info
    "debug 12", -- Player item info
    "debug 13", -- Show grid collision
    "debug 14", -- Lua memory usage
}

local lastDebugCommand = {} -- ✅ Stores the last command applied

--[[ -- Reset the flag when starting a new run
function Mod:OnNewGameDebug(isContinued)
    for _, command in ipairs(lastDebugCommand) do
        local reverseCommand = Mod:GetReverseCommand(command) -- ✅ Get reversal

        --if reverseCommand then
        Isaac.ExecuteCommand(reverseCommand) -- ✅ Execute reversal
        --end
    end

    lastDebugCommand = {} -- ✅ Clear the list after undoing
end ]]

--Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameDebug) -- Reset flag between runs

function Mod:OnChaosItemUse(item, rng, player, flags)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == DEBUG_ITEM then
            player:AnimateCollectible(DEBUG_ITEM, "UseItem", "PlayerPickupSparkle")
            local commandIndex = rng:RandomInt(#DEBUG_COMMANDS) + 1
            local chosenCommand = DEBUG_COMMANDS[commandIndex]

            Isaac.ExecuteCommand(chosenCommand) -- ✅ Executes the random debug effect
            table.insert(lastDebugCommand, chosenCommand) -- ✅ Store all triggered effects

            -- ✅ Visual & sound effect to indicate activation
            --player:AnimateCollectible(DEBUG_ITEM, "UseItem", "PlayerPickupSparkle")
            SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)

        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnChaosItemUse, DEBUG_ITEM)

--[[ function Mod:GetReverseCommand(command)
    local reversals = {
        ["debug 3"] = "debug 3", -- Infinite HP
        ["debug 4"] = "debug 4", -- High damage
        ["debug 6"] = "debug 6", -- Show hitspheres
        ["debug 7"] = "debug 7", -- Show damage values
        ["debug 8"] = "debug 8", -- Infinite item charges
        ["debug 9"] = "debug 9", -- High luck
        ["debug 10"] = "debug 10", -- Quick kill
        ["debug 11"] = "debug 13", -- Show grid collision
    }

    return reversals[command] -- ✅ Returns the matching reversal, or `nil` if no undo exists
end

function Mod:UndoDebugEffects()
    for _, command in ipairs(lastDebugCommand) do
        local reverseCommand = Mod:GetReverseCommand(command) -- ✅ Get reversal

        --if reverseCommand then
        Isaac.ExecuteCommand(reverseCommand) -- ✅ Execute reversal
        --end
    end

    lastDebugCommand = {} -- ✅ Clear the list after undoing
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.UndoDebugEffects) ]]

local STAT_BOOST = {
    SPEED = 0.1,
    FIREDELAY = -0.1, 
    DAMAGE = 0.2, 
    RANGE = 450, 
    SHOTSPEED = 3.00,
    LUCK = 1.00,
}

function Mod:ToastPickup(player, cacheFlag)
    if player:HasCollectible(TOAST_ITEM) then
        local data = player:GetData()
        local toastnum = player:GetCollectibleNum(TOAST_ITEM)
    
        if player:HasCollectible(TOAST_ITEM) and not data.ToastHeartGiven then
            player:AddSoulHearts(1) -- ✅ Grants half a soul heart
            data.ToastHeartGiven = true -- ✅ Prevents repeated activation
        end

        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + (STAT_BOOST.SPEED * toastnum)
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (STAT_BOOST.FIREDELAY * toastnum)
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (STAT_BOOST.DAMAGE * toastnum)
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (STAT_BOOST.RANGE * toastnum)
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed+ (STAT_BOOST.SHOTSPEED * toastnum)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + (STAT_BOOST.LUCK * toastnum)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ToastPickup)

function Mod:FindTMTrainerPedestals()
    local pedestals = {}
    local entities = Isaac.GetRoomEntities()
    
    for _, entity in ipairs(entities) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
            local itemConfig = Isaac.GetItemConfig():GetCollectible(entity.SubType)
            --if  entity.SubType >= 4294967296 then -- ✅ TMTRAINER items are marked "Hidden"
            print("Found TMTRAINER pedestal at:", entity.Position)
            table.insert(pedestals, entity)
            --end
        end
    end

    return pedestals
end

function Mod:GetRoomItemPool()
    local level = Game():GetLevel()
    local room = Game():GetRoom()
    local roomType = room:GetType()

    -- ✅ Assign item pools based on room type
    if roomType == RoomType.ROOM_SHOP then
        return ItemPoolType.POOL_SHOP -- Shop pool
    elseif roomType == RoomType.ROOM_TREASURE then
        return ItemPoolType.POOL_TREASURE -- Treasure room pool
    elseif roomType == RoomType.ROOM_BOSS then
        return ItemPoolType.POOL_BOSS -- Boss room pool
    elseif roomType == RoomType.ROOM_DEVIL then
        return ItemPoolType.POOL_DEVIL -- Devil deal pool
    elseif roomType == RoomType.ROOM_ANGEL then
        return ItemPoolType.POOL_ANGEL -- Angel room pool
    elseif roomType == RoomType.ROOM_SECRET then
        return ItemPoolType.POOL_SECRET -- Secret room pool
    elseif roomType == RoomType.ROOM_LIBRARY then
        return ItemPoolType.POOL_LIBRARY -- Library pool
    elseif roomType == RoomType.ROOM_PLANETARIUM then
        return ItemPoolType.POOL_PLANETARIUM -- Planetarium pool
    elseif roomType == RoomType.ROOM_ULTRASECRET then
        return ItemPoolType.POOL_ULTRA_SECRET -- Ultra secret pool
    else
        return ItemPoolType.POOL_TREASURE -- Default to treasure pool
    end
end

local collectedItems = {} -- ✅ Stores all collected passive items

-- Reset the flag when starting a new run
function Mod:OnNewGameCollecteditems(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        collectedItems = {}
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameCollecteditems) -- Reset flag between runs

function Mod:TrackCollectedItems(pickup, player)
    local itemID = pickup.SubType
    local itemConfig = Isaac.GetItemConfig():GetCollectible(itemID)

    if itemConfig and itemConfig.Type == ItemType.ITEM_PASSIVE then -- ✅ Ensure it's a passive item
        table.insert(collectedItems, itemID) -- ✅ Add item to the list
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.TrackCollectedItems, PickupVariant.PICKUP_COLLECTIBLE)

function Mod:UseTMTrainerFixItem(item, rng, player, flags)
    if player:HasCollectible(GLITCH_DICE_ITEM) then
        usedDice = true
        player:AnimateCollectible(GLITCH_DICE_ITEM, "UseItem", "PlayerPickupSparkle")
        player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)


        local pedestals = Mod:FindTMTrainerPedestals()
        local poolType = Mod:GetRoomItemPool() -- ✅ Get correct item pool



        for _, pedestal in ipairs(pedestals) do
            -- ✅ Remove the glitched item
            if pedestal.Type == EntityType.ENTITY_PICKUP and pedestal.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                local pedestal = pedestal:ToPickup()
                -- Ensure the pedestal already holds an item before rerolling
                if pedestal and pedestal.SubType ~= 0 then
                    local newItemID = Game():GetItemPool():GetCollectible(poolType, true, rng:Next()) -- Chooses a normal item
                    pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItemID, true, false, false)
                end
            end

        end

        if #pedestals == 0 then
            if #collectedItems > 0 then
                SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
                local lastItem = table.remove(collectedItems) -- ✅ Remove last collected item
                player:RemoveCollectible(lastItem) -- ✅ Take it from inventory
            else
                SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
                print("No pedestals and no items left to remove!") -- ✅ Debug check
            end
            return
        end

        -- ✅ Play an effect to show reroll happened
        SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTMTrainerFixItem, GLITCH_DICE_ITEM)

function Mod:UseTMTrainerFixItemBirthright(item, rng, player, flags)
    if player:HasCollectible(GLITCH_DICE_ITEM_2) then
        usedDice = true
        player:AnimateCollectible(GLITCH_DICE_ITEM_2, "UseItem", "PlayerPickupSparkle")
        player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)


        local pedestals = Mod:FindTMTrainerPedestals()
        local poolType = Mod:GetRoomItemPool() -- ✅ Get correct item pool



        for _, pedestal in ipairs(pedestals) do
            -- ✅ Remove the glitched item
            if pedestal.Type == EntityType.ENTITY_PICKUP and pedestal.Variant == PickupVariant.PICKUP_COLLECTIBLE then
                local pedestal = pedestal:ToPickup()
                -- Ensure the pedestal already holds an item before rerolling
                if pedestal and pedestal.SubType ~= 0 then
                    local newItemID = Game():GetItemPool():GetCollectible(poolType, true, rng:Next()) -- Chooses a normal item
                    pedestal:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newItemID, true, false, false)
                end
            end

        end

        if #pedestals == 0 then
            if #collectedItems > 0 then
                SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
                local lastItem = table.remove(collectedItems) -- ✅ Remove last collected item
                player:RemoveCollectible(lastItem) -- ✅ Take it from inventory
            else
                SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
                print("No pedestals and no items left to remove!") -- ✅ Debug check
            end
            return
        end

        -- ✅ Play an effect to show reroll happened
        SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTMTrainerFixItemBirthright, GLITCH_DICE_ITEM_2)


function Mod:FindItemPedestalsGlitchEssence()
    local pedestals = Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE)
    return pedestals
end

function Mod:UseTMTrainerReroll(item, rng, player, flags)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == GLITCH_ESSENCE then
            player:AnimateCollectible(GLITCH_ESSENCE, "UseItem", "PlayerPickupSparkle")

            local pedestals = Mod:FindItemPedestalsGlitchEssence()

            if #pedestals == 0 then
                print("No pedestals to reroll!")
                return
            end

            player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)

            for _, pedestal in ipairs(pedestals) do
                print("Rerolling pedestal at:", pedestal.Position)

                pedestal:Remove() -- ✅ Remove original pedestal

                -- ✅ Spawn a TMTRAINER glitched item in its place
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_TMTRAINER, pedestal.Position, Vector(0,0), player)
            end

            -- ✅ Play effects for clarity
            SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
            Game():SpawnParticles(player.Position, EffectVariant.TEAR_POOF_A, 10, 5, Color(1, 0, 0, 1, 0, 0, 0), 0)
            player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
            print("Successfully rerolled all pedestals into TMTRAINER items!")
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTMTrainerReroll, GLITCH_ESSENCE)

local luckyPennyItemTriggered = false

function Mod:OnNewGameLuckyPenny(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        luckyPennyItemTriggered = false
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameLuckyPenny) -- Reset flag between runs

function Mod:OnLuckyPennyItemPickup(player, item)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(LUCKY_PENNY_ITEM) and luckyPennyItemTriggered == false then
            -- ✅ Spawn 5 Lucky Pennies near the player
            for i = 1, 5 do
                local dropPosition = player.Position + Vector(math.random(-20, 20), math.random(-20, 20))
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, CoinSubType.COIN_LUCKYPENNY, dropPosition, Vector(0,0), player)
            end
            luckyPennyItemTriggered = true
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnLuckyPennyItemPickup)

local toolbeltTriggered = {}

function Mod:OnNewGameToolbelt(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        toolbeltTriggered = {}
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameToolbelt) -- Reset flag between runs

function Mod:ConvertActiveToPocket(player)
    local id = GetPtrHash(player)
    if player:HasCollectible(TOOLBELT_ITEM) and not toolbeltTriggered[id] then
        local activeItem = player:GetActiveItem(ActiveSlot.SLOT_PRIMARY)
        local pocketActive = player:GetActiveItem(ActiveSlot.SLOT_POCKET)
        if pocketActive and pocketActive ~= CollectibleType.COLLECTIBLE_NULL then
            print("Player already has a pocket active! Dropping pedestal item instead.")
            Mod:DropActiveItemOnPedestal(player)
            
        --end

        elseif activeItem and activeItem ~= CollectibleType.COLLECTIBLE_NULL then
            print("Converting active item to pocket active:", activeItem)
            player:RemoveCollectible(activeItem, false, ActiveSlot.SLOT_PRIMARY)
            player:SetPocketActiveItem(activeItem, ActiveSlot.SLOT_POCKET, true)
        else
            print("Player has no active item—assigning a new one!")
            Mod:GiveRandomActiveItem(player)
        end
        toolbeltTriggered[id] = true
        player:RemoveCollectible(TOOLBELT_ITEM)
        player:AddCollectible(TOOLBELT_FIX_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.ConvertActiveToPocket)

function Mod:GiveRandomActiveItem(player)
    -- ✅ Check if player already has a pocket active
    local pocketActive = player:GetActiveItem(ActiveSlot.SLOT_POCKET)

    --[[ if pocketActive and pocketActive ~= CollectibleType.COLLECTIBLE_NULL then
        print("Player already has a pocket active! Dropping pedestal item instead.")
        Mod:DropActiveItemOnPedestal(player)
        return
    end ]]

    local itemPool = Game():GetItemPool()
    local rng = player:GetCollectibleRNG(TOOLBELT_ITEM)
    local randomActive = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, rng:Next())

    -- ✅ Ensure item is an active item (not passive)
    while Isaac.GetItemConfig():GetCollectible(randomActive).Type ~= ItemType.ITEM_ACTIVE or 
        Isaac.GetItemConfig():GetCollectible(randomActive):HasTags(ItemConfig.TAG_QUEST) do
        randomActive = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, rng:Next())
    end


    print("Player received new active item:", randomActive)
    player:SetPocketActiveItem(randomActive, ActiveSlot.SLOT_POCKET, true)
end

function Mod:DropActiveItemOnPedestal(player)
    local pedPosition = Game():GetRoom():FindFreePickupSpawnPosition(player.Position, 20)
    local itemPool = Game():GetItemPool()
    local rng = player:GetCollectibleRNG(TOOLBELT_ITEM)
    local randomActive = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, rng:Next())

   while Isaac.GetItemConfig():GetCollectible(randomActive).Type ~= ItemType.ITEM_ACTIVE or 
        Isaac.GetItemConfig():GetCollectible(randomActive):HasTags(ItemConfig.TAG_QUEST) do
        randomActive = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, rng:Next())
    end

    print("Dropping pedestal active item:", randomActive)
    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, randomActive, pedPosition, Vector(0,0), player)
end

function Mod:MoonInit(Moon)
    --Moon.EntityCollisionClass = EntityCollisionClass.ENTCOLL_ENEMIES
    Moon:AddToOrbit(7007)
    
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.MoonInit, FAMILIAR_MOON)

function Mod:MoonUpdate(Moon)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
    
        Moon.OrbitDistance = Vector(150,150)
        Moon.OrbitSpeed = 0.15
        --Moon.OrbitLayer = 7007
        Moon.Velocity = Moon:GetOrbitPosition(player.Position + player.Velocity) - Moon.Position
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.MoonUpdate, FAMILIAR_MOON)

function Mod:onCacheMoon(player, cacheFlag)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local numFamiliars = player:GetCollectibleNum(MOON_ITEM) * 3
        --if cacheFlag == cacheFlag.CACHE_FAMILIARS then
        if player:HasCollectible(MOON_ITEM) then
            player:CheckFamiliar(FAMILIAR_MOON, numFamiliars, player:GetCollectibleRNG(MOON_ITEM))
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheMoon)

function Mod:MoonBlockShots(Moon)
    local tears = Isaac.FindByType(EntityType.ENTITY_PROJECTILE)

    for _, tear in ipairs(tears) do
        local tearData = tear:ToProjectile() -- ✅ Convert to projectile for owner detection
        if tearData and tear.SpawnerType ~= EntityType.ENTITY_PLAYER then
            if tear.Position:DistanceSquared(Moon.Position) <= (Moon.Size + tear.Size)^2 then
                tear:Remove() -- ✅ Delete the enemy tear
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.MoonBlockShots, FAMILIAR_MOON)

function Mod:FluxInit(Flux)
    --Moon.EntityCollisionClass = EntityCollisionClass.ENTCOLL_ENEMIES
    Flux:AddToOrbit(7007)
    
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.FluxInit, FAMILIAR_FLUX)

function Mod:FluxUpdate(Flux)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        -- ✅ Initialize data if needed
        local data = Flux:GetData()
        if not data.NextChangeFrame then data.NextChangeFrame = Game():GetFrameCount() + math.random(60, 180) end
        if not data.CurrentOrbitDistance then data.CurrentOrbitDistance = Vector(20, 20) end

        -- ✅ Every few seconds, randomize orbit distance
        if Game():GetFrameCount() >= data.NextChangeFrame then
            data.CurrentOrbitDistance = Vector(math.random(10, 500), math.random(10, 500)) -- ✅ Random distance range
            data.NextChangeFrame = Game():GetFrameCount() + math.random(60, 180) -- ✅ Schedule next change
        end

        -- ✅ Apply the current orbit properties
        Flux.OrbitDistance = data.CurrentOrbitDistance
        Flux.OrbitSpeed = 0.5
        Flux.OrbitLayer = 7007
        Flux.Velocity = Flux:GetOrbitPosition(player.Position + player.Velocity) - Flux.Position
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.FluxUpdate, FAMILIAR_FLUX)

function Mod:onCacheFlux(player, cacheFlag)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local numFamiliars = player:GetCollectibleNum(FLUX_ITEM)
        if player:HasCollectible(FLUX_ITEM) then
            player:CheckFamiliar(FAMILIAR_FLUX, numFamiliars, player:GetCollectibleRNG(FLUX_ITEM))
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCacheFlux)

function Mod:FluxBlockShots(Flux)
    local tears = Isaac.FindByType(EntityType.ENTITY_PROJECTILE)

    for _, tear in ipairs(tears) do
        local tearData = tear:ToProjectile() -- ✅ Convert to projectile for owner detection
        if tearData and tear.SpawnerType ~= EntityType.ENTITY_PLAYER then
            if tear.Position:DistanceSquared(Flux.Position) <= (Flux.Size + tear.Size)^2 then
                tear:Remove() -- ✅ Delete the enemy tear
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.FluxBlockShots, FAMILIAR_FLUX)

local HasGlitchEffect = false


function Mod:onUpdateDevilOne(player)
	if game:GetFrameCount() == 1 then
		HasGlitchEffect = false
	end
	if not HasGlitchEffect and player:HasCollectible(DEVIL_ONE_ITEM) then
		HasGlitchEffect = true
	end
end

local function getRandomFireEffect(player)
    local baseChance = 1
    local luckScaling = 0

    local luckBonus = math.max(0, player.Luck * luckScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitDevilOne(tear)
    if HasGlitchEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(DEVIL_ONE_ITEM) and getRandomFireEffect(player) then
                tear:GetData().starTrigger = true
                -- ✅ Make the tear glow orange
                tear:GetSprite().Color = Color(2.0, 0.6, 0.2, 1.2, 0.4, 0.2, 0) -- Orange tint

                -- ✅ Apply burn effect when tear hits an enemy
                tear:GetData().burnOnHit = true



            end
        end
    end
end

function Mod:onEnemyDamaged(entity, amount, flag, source, countdown)
    if source and source.Entity and source.Entity:ToTear() then
        local tear = source.Entity:ToTear()
        
        if tear:GetData().burnOnHit then
            entity:AddBurn(EntityRef(tear), 120, 2.0) -- ✅ Burns enemy for 120 frames at 2 dmg/sec
            print("Enemy hit by burning tear! Applied fire effect.")
        end
    end
end

function Mod:onTearUpdateDevilOne(tear)
    if tear:GetData().burnOnHit then
        -- ✅ Creates a small flickering light source around the tear
        local light = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.LIGHT, 0, tear.Position, Vector(0,0), tear)
        light.Color = Color(2.0, 0.6, 0.2, 0.5) -- Adjust light color to match the fiery glow
        light.SpriteScale = Vector(0.5, 0.5) -- Small light size
    end
end

function Mod:onEnemyDeathDevilOne(entity)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:HasCollectible(DEVIL_ONE_ITEM) and entity:IsEnemy() then
            local luckFactor = math.max(0, player.Luck * 0.005) -- Prevent negative values
            local finalChance = math.min(0.5, 0.005 + luckFactor) -- Cap at 50% drop rate

            -- ✅ Random chance to spawn a black heart upon enemy death
            if math.random() <= finalChance then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_BLACK, entity.Position, Vector.Zero, nil)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.onEnemyDeathDevilOne)
Mod:AddCallback(ModCallbacks.MC_POST_TEAR_UPDATE, Mod.onTearUpdateDevilOne)
Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.onEnemyDamaged)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateDevilOne)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitDevilOne)

function Mod:onEnemyDeathAngelOne(entity)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:HasCollectible(ANGEL_ONE_ITEM) and entity:IsEnemy() then
            -- ✅ Base chance (5%) + Luck scaling (5% per Luck point)
            local luckFactor = math.max(0, player.Luck * 0.025) -- Prevent negative values
            local finalChance = math.min(0.5, 0.05 + luckFactor) -- Cap at 50% drop rate

            -- ✅ Random chance to spawn a half soul heart upon enemy death
            if math.random() <= finalChance then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_HALF_SOUL, entity.Position, Vector.Zero, nil)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.onEnemyDeathAngelOne)

function Mod:DevilTwo()
    local player = Isaac.GetPlayer(0)
    if player:HasCollectible(DEVIL_TWO_ITEM) then
        -- Spawn creep at player's position
        local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_RED, 0, player.Position, Vector(0, 0), player)
        creep:GetData().IsBurningCreep = true -- ✅ Marks this creep as healing
        creep:ToEffect():SetTimeout(5)
        creep.Color = Color(1.2, 0.4, 0.1, 1, 0.2, 0, 0) -- RGB: (Red=1, Green=0, Blue=1), Al
        -- Adjust creep size
        creep.SpriteScale = Vector(2.5, 2.5) -- Increase size (1.0 is default)
        -- Change creep color to purple
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.DevilTwo)

function Mod:BurnEnemiesOnCreep(effect)
    local player = Isaac.GetPlayer(0)
    if effect.Variant == EffectVariant.PLAYER_CREEP_RED and effect:GetData().IsBurningCreep and player:HasCollectible(DEVIL_TWO_ITEM) then
        local enemies = Isaac.FindInRadius(effect.Position, 30, EntityPartition.ENEMY) -- ✅ Find nearby enemies

        for _, entity in ipairs(enemies) do
            if entity:IsVulnerableEnemy() then
                entity:AddBurn(EntityRef(effect), 120, 2.0) -- ✅ Burn for 120 frames at 2 dmg/sec
                print("Enemy burned by fire creep!")
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.BurnEnemiesOnCreep, EffectVariant.PLAYER_CREEP_RED)

function Mod:AngelTwo(player, cacheFlag)
    if player:HasCollectible(ANGEL_TWO_ITEM) then
        if cacheFlag == CacheFlag.CACHE_FLYING then
            player.CanFly = true -- ✅ Enables flight
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.AngelTwo)

function Mod:DevilThree(player, cacheFlag)
    if player:HasCollectible(DEVIL_THREE_ITEM) then
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + 0.5
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + -2
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + 1) * 1.5
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + 250
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + 0.2
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + 3
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.DevilThree)

local HasLightEffect = false

--local HasHomingShot = false

function Mod:onUpdateAngelThree(player)
	if game:GetFrameCount() == 1 then
		HasLightEffect = false
	end
	if not HasLightEffect and player:HasCollectible(ANGEL_THREE_ITEM) then
		HasLightEffect = true
	end
end

local function getRandomLightEffect(player)
    local baseChance = 0.05 -- Default chance (10%)
    local luckScaling = 0.05 -- Each Luck point increases chance by 5%

    local luckBonus = math.max(0, player.Luck * luckScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitAngelThree(tear)
    if HasLightEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(ANGEL_THREE_ITEM) and getRandomLightEffect(player) then
                tear:GetData().angelTrigger = true -- Mark tear for laser effect
                -- ✅ Change tear color (Example: Red Glow)
                tear.Color = Color(1, 1, 1, 0.5, 0, 0, 0) -- RGB: Red, Alpha: 1 (opaque)

            end
        end
    end
end


function Mod:onTearImpactAngelThree(entity)
    if entity.Type == EntityType.ENTITY_TEAR and entity:GetData().angelTrigger then
        local position = entity.Position
        local player = Isaac.GetPlayer(0)
        local fireDirectionAngelThree = player:GetFireDirection()
        local directionangelthree

        if fireDirectionAngelThree == Direction.LEFT then
            directionangelthree = Vector(-1, 0)
        elseif fireDirectionAngelThree == Direction.RIGHT then
            directionangelthree = Vector(1, 0)
        elseif fireDirectionAngelThree == Direction.DOWN then
            directionangelthree = Vector(0, 1)
        elseif fireDirectionAngelThree == Direction.UP then
            directionangelthree = Vector(0, -1)
        elseif fireDirectionAngelThree == Direction.NO_DIRECTION then
            directionangelthree = Vector(0, 1)
        end

        -- Spawn a visible laser ring at the impact location
        local AngelThreeLaser = Isaac.Spawn(
            EntityType.ENTITY_LASER,
                LaserVariant.LIGHT_BEAM,
                0,
                player.Position,
                Vector.Zero,
                player
        ):ToLaser()

        if AngelThreeLaser then -- Ensure the laser was spawned successfully
            AngelThreeLaser.PositionOffset = Vector(0, -10) -- Adjust Y value as needed

            AngelThreeLaser.AngleDegrees = directionangelthree:GetAngleDegrees() -- Rotate laser to match direction
            AngelThreeLaser.CollisionDamage = 3 + player.Damage -- Set laser damage
            AngelThreeLaser.Timeout = 15 -- Laser duration
            --laserRing:AddTearFlags(TearFlags.TEAR_HOMING) -- Apply homing effect
            AngelThreeLaser.Parent = player -- Prevent self-damage
 
            
        else
            print("Laser failed to spawn!") -- Debug statement
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateAngelThree)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitAngelThree)
Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_REMOVE, Mod.onTearImpactAngelThree)

local pedestalPositionsAbe1 = {
    Vector(480, 260)  -- Right pedestal
}
local pedestalPositionsAbe2 = {
    Vector(320, 260), -- Left pedestal
}
local pedestalsAbe = {} -- Store spawned pedestals

local function GetLight()
    local light = {LIGHT_ITEM}
    return light[math.random(#light)]
end

local function GetDark()
    local dark = {DARK_ITEM}
    return dark[math.random(#dark)]
end

function Mod:UseDuaeitem(item, rng, player, flags)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == DUAE_ITEM then
            player:AnimateCollectible(DUAE_ITEM, "UseItem", "PlayerPickupSparkle")
            for _, pos in ipairs(pedestalPositionsAbe1) do
                local safePos = GetSafePedestalPosition(pos)
                local itemID = GetLight()
                --local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, pos, Vector.Zero, player)
                local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, safePos, Vector.Zero, player):ToPickup()
                --pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                if pedestal then
                    pedestal.OptionsPickupIndex = 2 -- ✅ Assigns OptionsPickupIndex correctly
                    pedestal:GetData().elitePedestal2 = true -- Mark as part of selection
                    pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                end
                --pedestal:GetData().elitePedestal2 = true -- Mark as part of selection
                --pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                table.insert(pedestals, pedestal)
            end
            for _, pos in ipairs(pedestalPositionsAbe2) do
                local safePos = GetSafePedestalPosition(pos)
                local itemID = GetDark()
                --local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, pos, Vector.Zero, player)
                local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, safePos, Vector.Zero, player):ToPickup()
                --local pedestal = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemID, safePos, Vector.Zero, player):ToPickup()
        

                if pedestal then
                    pedestal.OptionsPickupIndex = 2 -- ✅ Assigns OptionsPickupIndex correctly
                    pedestal:GetData().elitePedestal2 = true -- Mark as part of selection
                    pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                end
                --pedestal:GetData().elitePedestal2 = true -- ✅ Mark as part of selection
                --pedestal:GetData().spawnTime = Isaac.GetFrameCount()
                table.insert(pedestals, pedestal)
            end

        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseDuaeitem, DUAE_ITEM)


function Mod:AbeItemSelection(pickup, collider)
    local player = collider:ToPlayer() -- Ensure collider is a player
    if player and pickup:GetData().elitePedestal2 then
        local spawnTime = pickup:GetData().spawnTime or 0
        local currentFrame = Isaac.GetFrameCount()

        if currentFrame - spawnTime > 30 then
            -- Remove all other pedestals once player picks one
            for _, otherPedestal in ipairs(pedestalsAbe) do
                if otherPedestal ~= pickup then
                    otherPedestal:Remove()
                end
            end
            pedestalsAbe = {} -- Clear stored pedestals
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.AbeItemSelection, PickupVariant.PICKUP_COLLECTIBLE) -- Detect item selection

function Mod:UpdateChoiceCounter(player)
    if player:GetPlayerType() ~= abrahamType then return end


    local data = player:GetData()

    -- ✅ Ensure the counter exists
    if not data.ChoiceCounter then
        data.ChoiceCounter = 0
    end

    -- ✅ Count items but cap them within the range -4 to 4
    local lightCount = player:GetCollectibleNum(LIGHT_ITEM)
    local darkCount = player:GetCollectibleNum(DARK_ITEM)

    -- ✅ Update the counter based on item amounts
    data.ChoiceCounter = math.min(4, math.max(-4, darkCount - lightCount)) -- ✅ Caps between -4 and 4

    --print("Counter updated! Light:", lightCount, "Dark:", darkCount, "Total:", data.ChoiceCounter)
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.UpdateChoiceCounter)

local STAT_BOOST_DURATION_DEVIL_4 = 900 -- 30 seconds (30 * 30 frames)
local SFXDemon = SFXManager()

---@param itemUsed2 CollectibleType
---@param rng2 RNG
---@param player2 EntityPlayer
function Mod:OnUseDevilFour(itemUsed2, rng2, player2)

    local data = player2:GetData()

    -- Prevent activation if item was already used
    --[[ if data.DevilFourUsed then
        return false -- Stops reuse
    end ]]

    if itemUsed2 == DEVIL_FOUR_ITEM then
        --local data = player:GetData()
        -- Mark item as used (prevents reuse)
        data.DevilFourUsed = true


        -- Apply temporary effects
        data.DevilFourActive = true
        data.DevilFourTimer = STAT_BOOST_DURATION

        -- **Give the passive item to apply the costume**
        player2:AddCollectible(DEVIL_FOUR_VFX, 0, false)
        --player2:AddCollectible(DEMON_DASH_ITEM)
        player2:SetPocketActiveItem(DEMON_DASH_ITEM, ActiveSlot.SLOT_POCKET, true)

        -- Play activation sound
        SFX:Play(SoundEffect.SOUND_DEVIL_CARD, 1.5, 0, false, 1.5)

        -- Buffs applied for 30 seconds
        player2:SetMinDamageCooldown(STAT_BOOST_DURATION * 2) -- Makes player invulnerable
        player2:AddCacheFlags(CacheFlag.CACHE_ALL) -- Boost all stats
        player2:EvaluateItems()

        -- **Summon a circle of Holy Light beams**
        local numBeams = 8 -- Adjust for more or fewer beams
        local radius = 80 -- Distance from the player
        for i = 1, numBeams do
            local angle = (i / numBeams) * (2 * math.pi) -- Evenly distribute in a circle
            local beamPosition = player2.Position + Vector(math.cos(angle), math.sin(angle)) * radius

            local holyBeam = Isaac.Spawn(
                EntityType.ENTITY_EFFECT,
                EffectVariant.FIRE_JET,
                0,
                beamPosition,
                Vector.Zero,
                nil
            )
            holyBeam.Parent = player2
        end

        
        return true -- Consume the item
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseDevilFour, DEVIL_FOUR_ITEM)

-- Apply the actual stat boost
function Mod:EvaluateDevilFourCache(player, cacheFlag)
    local data = player:GetData()

    if data.DevilFourActive then
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

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateDevilFourCache)


local LIGHT_BEAM_INTERVAL_2 = 10 -- Adjust interval for beam strikes

---@param player EntityPlayer
function Mod:UpdateDevilFourEffect(player)
    local data = player:GetData()
    local playerDamage = player.Damage -- Get player's current damage value
    local fireDirectionjudge = player:GetFireDirection()
    local directionjudge

    if data.DevilFourActive then
        data.DevilFourTimer = data.DevilFourTimer - 1

        if data.DevilFourTimer == 90 then -- 3 seconds remaining
            SFX:Play(SoundEffect.SOUND_SATAN_APPEAR, 1.5, 0, false, 1)
        end


        --[[ if fireDirectionjudge == Direction.LEFT then
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
                LaserVariant.THICK_RED,
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

        end ]]

        -- **Summon Holy Light beams on random enemies**
        if data.DevilFourTimer % LIGHT_BEAM_INTERVAL_2 == 0 then
            local enemies = Isaac.FindInRadius(player.Position, 1000, EntityPartition.ENEMY)

            if #enemies > 0 then
                local randomEnemy = enemies[math.random(#enemies)]
                local holyBeam = Isaac.Spawn(
                    EntityType.ENTITY_EFFECT,
                    EffectVariant.FIRE_JET,
                    0,
                    randomEnemy.Position,
                    Vector.Zero,
                    nil
                )
                holyBeam.Parent = player
            end
        end

        if data.DevilFourTimer <= 0 then
            -- **Spawn massive explosion**
            local explosion = Isaac.Spawn(
                EntityType.ENTITY_EFFECT,
                EffectVariant.MAMA_MEGA_EXPLOSION,
                0,
                player.Position,
                Vector.Zero,
                player
            )
            SFX:Play(SoundEffect.SOUND_SATAN_RISE_UP, 1.5, 0, false, 1)
            data.DevilFourActive = false
            --player:RemoveCollectible(DEMON_DASH_ITEM)
            player:SetPocketActiveItem(DUAE_ITEM, ActiveSlot.SLOT_POCKET, true)

            player:RemoveCollectible(DEVIL_FOUR_VFX)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateDevilFourEffect)

function Mod:Neutral(player, cacheFlag)
    if player:HasCollectible(NEUTRAL_ITEM) then
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + 1) * 1.5
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.Neutral)

function Mod:ApplyChoiceEffects(player)
    local data = player:GetData()
    if data.ChoiceCounter == 0 then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_BIRTHRIGHT) == true and player:HasCollectible(NEUTRAL_ITEM) == false and player:GetPlayerType() == abrahamType then
            player:AddCollectible(NEUTRAL_ITEM)
        end
        player:RemoveCollectible(ANGEL_ONE_ITEM)
        player:RemoveCollectible(DEVIL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == 1 then -- Devil 1
        if player:HasCollectible(DEVIL_ONE_ITEM) == false then
            player:AddCollectible(DEVIL_ONE_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(ANGEL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == 2 then -- Devil 2
        if player:HasCollectible(DEVIL_ONE_ITEM) == false then
            player:AddCollectible(DEVIL_ONE_ITEM)
        end
        if player:HasCollectible(DEVIL_TWO_ITEM) == false then
            player:AddCollectible(DEVIL_TWO_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(ANGEL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)

    elseif data.ChoiceCounter == 3 then -- Devil 3
        if player:HasCollectible(DEVIL_ONE_ITEM) == false then
            player:AddCollectible(DEVIL_ONE_ITEM)
        end
        if player:HasCollectible(DEVIL_TWO_ITEM) == false then
            player:AddCollectible(DEVIL_TWO_ITEM)
        end
        if player:HasCollectible(DEVIL_THREE_ITEM) == false then
            player:AddCollectible(DEVIL_THREE_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(ANGEL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == 4 then -- Devil 4
        player:UseActiveItem(DEVIL_FOUR_ITEM, false, false)
        if player:HasCollectible(DEVIL_ONE_ITEM) == false then
            player:AddCollectible(DEVIL_ONE_ITEM)
        end
        if player:HasCollectible(DEVIL_TWO_ITEM) == false then
            player:AddCollectible(DEVIL_TWO_ITEM)
        end
        if player:HasCollectible(DEVIL_THREE_ITEM) == false then
            player:AddCollectible(DEVIL_THREE_ITEM)
        end
        while player:HasCollectible(LIGHT_ITEM) or player:HasCollectible(DARK_ITEM) do
            player:RemoveCollectible(LIGHT_ITEM)
            player:RemoveCollectible(DARK_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(ANGEL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
    elseif data.ChoiceCounter == -1 then -- Angel 1
        if player:HasCollectible(ANGEL_ONE_ITEM) == false then
            player:AddCollectible(ANGEL_ONE_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(DEVIL_ONE_ITEM)
        player:RemoveCollectible(ANGEL_TWO_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == -2 then -- Angel 2
        if player:HasCollectible(ANGEL_ONE_ITEM) == false then
            player:AddCollectible(ANGEL_ONE_ITEM)
        end
        if player:HasCollectible(ANGEL_TWO_ITEM) == false then
            player:AddCollectible(ANGEL_TWO_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(DEVIL_ONE_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(ANGEL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == -3 then -- Angel 3
        if player:HasCollectible(ANGEL_ONE_ITEM) == false then
            player:AddCollectible(ANGEL_ONE_ITEM)
        end
        if player:HasCollectible(ANGEL_TWO_ITEM) == false then
            player:AddCollectible(ANGEL_TWO_ITEM)
        end
        if player:HasCollectible(ANGEL_THREE_ITEM) == false then
            player:AddCollectible(ANGEL_THREE_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(DEVIL_ONE_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(ANGEL_FOUR_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    elseif data.ChoiceCounter == -4 then -- Angel 4
        player:UseActiveItem(FINAL_JUDGMENT_ITEM, false, false)

        if player:HasCollectible(ANGEL_ONE_ITEM) == false then
            player:AddCollectible(ANGEL_ONE_ITEM)
        end
        if player:HasCollectible(ANGEL_TWO_ITEM) == false then
            player:AddCollectible(ANGEL_TWO_ITEM)
        end
        if player:HasCollectible(ANGEL_THREE_ITEM) == false then
            player:AddCollectible(ANGEL_THREE_ITEM)
        end
        while player:HasCollectible(LIGHT_ITEM) or player:HasCollectible(DARK_ITEM) do
            player:RemoveCollectible(LIGHT_ITEM)
            player:RemoveCollectible(DARK_ITEM)
        end
        player:RemoveCollectible(NEUTRAL_ITEM)
        player:RemoveCollectible(DEVIL_ONE_ITEM)
        player:RemoveCollectible(DEVIL_TWO_ITEM)
        player:RemoveCollectible(DEVIL_THREE_ITEM)
        player:RemoveCollectible(DEVIL_FOUR_ITEM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.ApplyChoiceEffects)

local DASH_SPEED_2 = 40 -- Adjust dash speed
local DASH_DURATION_2 = 5 -- Frames per dash


local lastMoveVec = {} -- Store last movement direction for each player
local dashingPlayers = {} -- Tracks players who are dashing


function Mod:OnUseAbrahamDash(_, _, player, tear)
    local abesfx = SFXManager()
    if not dashingPlayers[player.Index] then
        dashingPlayers[player.Index] = {dashTimer = DASH_DURATION_2, cooldown = DASH_COOLDOWN, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0, enemiesHit = {} }
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        abesfx:Play(SoundEffect.SOUND_KNIFE_PULL, 1, 0, false, 1.2)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateAbrahamDash()

    end
    --return true
end

function Mod:OnUpdateAbrahamDash()
    --local game = Game()
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
                        entity:TakeDamage(100, DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(player), 0)
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

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseAbrahamDash, DEMON_DASH_ITEM)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateAbrahamDash)

function Mod:OnEnterSpecialRoom()
    local room = Game():GetRoom()

    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if player:HasCollectible(ABRAHAM_ESSENCE_ITEM) then
            if not data.HasClaimedHeartBonus then data.HasClaimedHeartBonus = {} end -- ✅ Track claimed bonuses

            -- ✅ Check if room is Angel or Devil and ensure effect hasn't triggered before
            if room:GetType() == RoomType.ROOM_ANGEL and not data.HasClaimedHeartBonus[RoomType.ROOM_ANGEL] then
                player:AddSoulHearts(6) -- ✅ Grants 3 Soul Hearts (6 half-hearts)

                data.HasClaimedHeartBonus[RoomType.ROOM_ANGEL] = true -- ✅ Marks Angel room bonus as claimed
                print(player:GetName(), "entered Angel Room! Granted 3 Soul Hearts.")
            elseif room:GetType() == RoomType.ROOM_DEVIL and not data.HasClaimedHeartBonus[RoomType.ROOM_DEVIL] then
                player:AddBlackHearts(6) -- ✅ Grants 3 Black Hearts (6 half-hearts)
                data.HasClaimedHeartBonus[RoomType.ROOM_DEVIL] = true -- ✅ Marks Devil room bonus as claimed
                print(player:GetName(), "entered Devil Room! Granted 3 Black Hearts.")
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.OnEnterSpecialRoom)


function Mod:ResetHeartBonusOnNewFloor()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if data.HasClaimedHeartBonus then
            data.HasClaimedHeartBonus = {} -- ✅ Clears stored room bonuses for each player
            print(player:GetName(), "entered a new floor! Heart bonus reset.")
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.ResetHeartBonusOnNewFloor)

local barrageActive = false
local barrageEndTime = 0

-- ✅ Activate invulnerability and contact damage on use
function Mod:ActivateBarrage(item, rng, player)
    --local player = Isaac.GetPlayer(0)
    --player:AnimateCollectible(OMEGA_ITEM, "UseItem", "PlayerPickupSparkle")
    if item == OMEGA_ITEM then
        player:AnimateCollectible(OMEGA_ITEM, "UseItem", "PlayerPickupSparkle")


        barrageActive = true
        barrageEndTime = Isaac.GetFrameCount() + (4 * 60) -- 10 seconds in frames

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.ActivateBarrage, OMEGA_ITEM)

-- ✅ Apply contact damage effect
function Mod:OnPlayerUpdateBarrage(player)
    --local player = Isaac.GetPlayer(0)
    if (barrageActive and player:HasCollectible(OMEGA_ITEM)) or (barrageActive and player:HasCollectible(CollectibleType.COLLECTIBLE_VOID)) then
        -- ✅ Damage enemies on contact
        --local player = Isaac.GetPlayer(0)
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
                LaserVariant.THIN_RED,
                0,
                player.Position,
                Vector.Zero,
                player
        ):ToLaser()

        if laserRing then -- Ensure the laser was spawned successfully
            laserRing.PositionOffset = Vector(0, -20) -- Adjust Y value as needed

            laserRing.AngleDegrees = directionazazel:GetAngleDegrees() -- Rotate laser to match direction
            laserRing.CollisionDamage = player.Damage * 0.5 -- Set laser damage
            laserRing.Timeout = 1 -- Laser duration
            --laserRing:AddTearFlags(TearFlags.TEAR_HOMING) -- Apply homing effect
            laserRing.Parent = player -- Prevent self-damage
        end

        -- ✅ End effect after 10 seconds
        if Isaac.GetFrameCount() >= barrageEndTime then
            barrageActive = false
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdateBarrage)

function Mod:UseJubilees(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == JUBILEES_ITEM then
            player:AnimateCollectible(JUBILEES_ITEM, "UseItem", "PlayerPickupSparkle")
            local level = Game():GetLevel()
            --local currentChance = level:GetAngelRoomChance()
            --print(currentChance)

            -- ✅ Increase Angel room chance by 10%
            --level:AddAngelRoomChance(currentChance)

            -- ✅ Play activation sound
            --level:InitializeDevilAngelRoom(true, false)
            --[[ local redhealth = player:GetEffectiveMaxHearts()
            local soulhealth = player:GetSoulHearts()
            local blackhealth = player:GetBlackHearts()
            local bonehealth = player:GetBoneHearts()
            local rothealth = player:GetRottenHearts()
            local damage = (redhealth + soulhealth + blackhealth + bonehealth + rothealth) / 2

            player:TakeDamage(damage, DamageFlag.DAMAGE_RED_HEARTS, EntityRef(player), 0) ]]


            Isaac.ExecuteCommand("goto s.angel")

            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_HOLY) -- Use a fitting sound effect

            player:RemoveCollectible(JUBILEES_ITEM)
            player:AddCollectible(JUBILEES_ITEM2)

        --return true -- ✅ Consume the item properly
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseJubilees, JUBILEES_ITEM)

function Mod:UseJubilees2(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == JUBILEES_ITEM2 then
            player:AnimateCollectible(JUBILEES_ITEM2, "UseItem", "PlayerPickupSparkle")
            local level = Game():GetLevel()
            --local currentChance = level:GetAngelRoomChance()
            --print(currentChance)

            -- ✅ Increase Angel room chance by 10%
            --level:AddAngelRoomChance(currentChance)

            -- ✅ Play activation sound
            --level:InitializeDevilAngelRoom(true, false)
            --[[ local redhealth = player:GetEffectiveMaxHearts()
            local soulhealth = player:GetSoulHearts()
            local blackhealth = player:GetBlackHearts()
            local bonehealth = player:GetBoneHearts()
            local rothealth = player:GetRottenHearts()
            local damage = (redhealth + soulhealth + blackhealth + bonehealth + rothealth) / 2 ]]

            --player:TakeDamage(damage, DamageFlag.DAMAGE_RED_HEARTS, EntityRef(player), 0)


            Isaac.ExecuteCommand("goto s.angel")

            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_HOLY) -- Use a fitting sound effect

            player:RemoveCollectible(JUBILEES_ITEM2)
            player:AddCollectible(JUBILEES_ITEM3)

        --return true -- ✅ Consume the item properly
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseJubilees2, JUBILEES_ITEM2)

function Mod:UseJubilees3(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == JUBILEES_ITEM3 then
            player:AnimateCollectible(JUBILEES_ITEM3, "UseItem", "PlayerPickupSparkle")
            local level = Game():GetLevel()
            --local currentChance = level:GetAngelRoomChance()
            --print(currentChance)

            -- ✅ Increase Angel room chance by 10%
            --level:AddAngelRoomChance(currentChance)

            -- ✅ Play activation sound
            --level:InitializeDevilAngelRoom(true, false)
            --[[ local redhealth = player:GetEffectiveMaxHearts()
            local soulhealth = player:GetSoulHearts()
            local blackhealth = player:GetBlackHearts()
            local bonehealth = player:GetBoneHearts()
            local rothealth = player:GetRottenHearts()
            local damage = (redhealth + soulhealth + blackhealth + bonehealth + rothealth) / 2

            player:TakeDamage(damage, DamageFlag.DAMAGE_RED_HEARTS, EntityRef(player), 0) ]]


            Isaac.ExecuteCommand("goto s.angel")

            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_HOLY) -- Use a fitting sound effect

            player:RemoveCollectible(JUBILEES_ITEM3)
            player:AddCollectible(PAGE_ITEM)

        --return true -- ✅ Consume the item properly
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseJubilees3, JUBILEES_ITEM3)

function Mod:UseSoulChanceItem(_, _, player, _)
    local rng = RNG()
    rng:SetSeed(Random(), 35) -- Use a unique offset for consistency

    if rng:RandomFloat() < 0.5 then
        player:AddSoulHearts(1) -- 1 = half a soul heart
        SFXManager():Play(SoundEffect.SOUND_HOLY, 1, 0, false, 1)
    else
        SFXManager():Play(SoundEffect.SOUND_THUMBS_DOWN, 1, 0, false, 1)
    end

    return true
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseSoulChanceItem, PAGE_ITEM)

function Mod:UpdateGluttony(player)
    if player:HasCollectible(GLUTTONY_ITEM) then
        local totalItems = 0

        -- ✅ Loop **once** when an item is gained instead of every frame
        for i = 1, 5000 do
            if i ~= VOID_DAMAGE_ITEM and i ~= CHARGE_DAMAGE_ITEM and i ~= FINAL_JUDGMENT_ITEM_VFX and i~= APOLLYON_ESSENCE_VFX and i ~= DEVIL_FOUR_VFX and player:HasCollectible(i) then
                totalItems = totalItems + player:GetCollectibleNum(i) -- ✅ Count duplicates too
            end
        end

        -- ✅ Store item count in player data to avoid re-scanning each frame
        player:GetData().statBoostItemCount = totalItems

        -- ✅ Trigger stat refresh
        player:AddCacheFlags(CacheFlag.CACHE_ALL)
        player:EvaluateItems()
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateGluttony)


function Mod:UpdateStatsByCachedItemsGluttony(player, cacheFlag)
    if player:HasCollectible(GLUTTONY_ITEM) then
        local totalItems = player:GetData().statBoostItemCount or 0 -- ✅ Use cached item count

        -- ✅ Define stat scaling based on stored total item count
        local statBoost = totalItems * 0.1

        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + statBoost
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - (statBoost / 2)
        end
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + (statBoost/2)
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (statBoost * 10)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + statBoost
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + (statBoost / 10)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.UpdateStatsByCachedItemsGluttony)

function Mod:ApplyMoneyDamageBoost(player, cacheFlag)
    local data = player:GetData()
    data.moneySpentGreed = false

    if player:HasCollectible(GREED_ITEM) then
        -- ✅ Grant +10 damage only if they haven't spent money

        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage * 2
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyMoneyDamageBoost)

function Mod:CheckMoneySpent(player)
    local data = player:GetData()

    if player:HasCollectible(GREED_ITEM) then
        local currentCoins2 = player:GetNumCoins()


        -- ✅ If player spends money, remove the boost and refresh stats
        if data.lastCoinCount and currentCoins2 < data.lastCoinCount then
            data.moneySpentGreed = true
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
            player:RemoveCollectible(GREED_ITEM)
        end

        -- ✅ Store current coin count for next frame comparison
        data.lastCoinCount = currentCoins2
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.CheckMoneySpent)

function Mod:CharmOnContact(player, collider)
    if collider and collider:IsEnemy() and player:HasCollectible(LUST_ITEM) then
        collider:AddCharmed(EntityRef(player), 300) -- ✅ Charm enemy for 10 seconds
        -- ✅ Spawn floating heart effect
        Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.HEART, 0, collider.Position, Vector.Zero, player)
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, Mod.CharmOnContact)

function Mod:UsePrideItem(item, rng, player)
    if item == PRIDE_ITEM then
        local roll = rng:RandomFloat() -- Get a random number between 0 and 1

        if roll <= 0.5 then
            -- ✅ Instantly kill all enemies in the room
            local room = Game():GetRoom()
            for _, entity in ipairs(Isaac.GetRoomEntities()) do
                if entity:IsEnemy() and entity:CanShutDoors() then
                    local effectPos = entity.Position
                    entity:Remove()

                    -- ✅ Spawn a small explosion effect at the enemy’s position
                    local particle = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BLOOD_EXPLOSION, 0, effectPos, Vector.Zero, player)
                    particle:ToEffect():SetTimeout(10) -- ✅ Make effect fade quickly
                end
            end

            SFXManager():Play(SoundEffect.SOUND_SATAN_APPEAR)
        else
            -- ✅ Instantly kill the player
            player:Kill()
            SFXManager():Play(SoundEffect.SOUND_DEATH_CARD)
        end

        return true -- ✅ Ensure item is consumed properly
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UsePrideItem, PRIDE_ITEM)

function Mod:RemovePlayerItems(player)
    if player:HasCollectible(ENVY_ITEM) then
        local data = player:GetData()
        data.lostItemCount = data.lostItemCount or 0 -- ✅ Keep track of sacrificed items

        for i = 1, 5000 do
            local itemCount = player:GetCollectibleNum(i)

            if itemCount > 0 and i ~= ENVIOUS_RAGE_ITEM and i ~= ENVY_ITEM and i ~= 327 and i ~= 328 and i ~= 668 and i ~= 626 and i ~= 627 and i ~= 550 and i ~= 551 and i ~= 552 then
                player:RemoveCollectible(i) -- ✅ Remove item from player
                data.lostItemCount = data.lostItemCount + 1 -- ✅ Increase lost item count
                player:AddCollectible(ENVIOUS_RAGE_ITEM)
            end
        end

        -- ✅ Ensure future items are removed instantly
        player:GetData().autoRemoveItems = true
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.RemovePlayerItems)

---@param player EntityPlayer
function Mod:EvaluateCacheEnvy(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(ENVY_ITEM) + player:GetCollectibleNum(ENVY_ITEM)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, RNG_SHIFT_INDEX_FAIL)

    player:CheckFamiliar(FAMILIAR_VARIANT_ENVY, count, rng, CONFIG_ENVY)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheEnvy, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInitEnvy(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitEnvy, FAMILIAR_VARIANT_ENVY)

---@param familiar EntityFamiliar
function Mod:HandleUpdateEnvy(familiar)
    local sprite = familiar:GetSprite()
    local player = familiar.Player
    local data = player:GetData()

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
        local velocity = direction * 10 + player:GetTearMovementInheritance(direction)
        local tear = Isaac.Spawn(
            EntityType.ENTITY_TEAR,
            TearVariant.BLOOD,
            0,
            familiar.Position,
            velocity,
            familiar
        ):ToTear()

        

        
        tear.Scale = 1.5
        tear.CollisionDamage = 3.5
        familiar.FireCooldown = 20
        tear.TearFlags = player.TearFlags
        local envynum = player:GetCollectibleNum(ENVIOUS_RAGE_ITEM)
        --if data.lostItemCount then
        local newCooldown = 20 * (1 - (envynum * 0.2))
        local newcooldownlullaby = (20 * (1 - (envynum * 0.2))) / 2
        -- ✅ Increase the familiar’s damage based on sacrificed items
        --tear.CollisionDamage = 3.5 * (1 + (envynum * 0.5))
        if player:HasTrinket(TrinketType.TRINKET_BABY_BENDER) and tear then
            tear.TearFlags = TearFlags.TEAR_HOMING
        end

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = (3.5 * (1 + (envynum * 0.5))) * 2
        else
            tear.CollisionDamage = 3.5 * (1 + (envynum * 0.5))
        end

        if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = math.max(math.floor(newcooldownlullaby), 2)
        else
            familiar.FireCooldown = math.max(math.floor(newCooldown), 2)
        end
        --familiar.FireCooldown = math.max(math.floor(newCooldown), 2)

        --end

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateEnvy, FAMILIAR_VARIANT_ENVY)

local trophyGiven = false

function Mod:OnNewGameBossTrophy(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        trophyGiven = false

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameBossTrophy)

function Mod:bossTrophyPickup(player, cacheFlag)
    if player:HasCollectible(TROPHY_ITEM) then
        local numtrophy = player:GetCollectibleNum(TROPHY_ITEM)
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + STAT_BOOST.DAMAGE) + (1 * numtrophy)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.bossTrophyPickup)

function Mod:OnBossKillWrath(entity)
    if entity:IsBoss() then
        
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)

            -- ✅ Ensure player has the item
            if player:HasCollectible(WRATH_ITEM) and not trophyGiven then
                player:AddCollectible(TROPHY_ITEM)
                trophyGiven = true
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.OnBossKillWrath)

function Mod:ResetTrophyGiven()
    trophyGiven = false
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetTrophyGiven)


--[[ function Mod:ApplyBossKillBoost(player, cacheFlag)
    local data = player:GetData()

    if cacheFlag == CacheFlag.CACHE_DAMAGE and data.bossKillCount then
        -- ✅ Increase damage by 1 per boss killed
        player.Damage = player.Damage + (data.bossKillCount * 1)

        print(player:GetName(), "received a damage boost! Current damage:", player.Damage)
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyBossKillBoost) ]]

function Mod:DisablePlayerShootingSloth(player)
    if player:HasCollectible(SLOTH_ITEM) then
        player.FireDelay = math.huge -- ✅ Prevents the player from shooting
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.DisablePlayerShootingSloth)

function Mod:ApplyPassiveEnemyDamageSloth()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasCollectible(SLOTH_ITEM) then
    
            for _, entity in ipairs(Isaac.GetRoomEntities()) do
                if entity:IsEnemy() and entity:IsActiveEnemy() and not entity:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then
                    entity:TakeDamage(player.Damage * 0.1, DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(nil), 1) -- ✅ Deal passive damage
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.ApplyPassiveEnemyDamageSloth)

function Mod:ResetPlayerFireDelay(player)
    local data = player:GetData()

    if not player:HasCollectible(SLOTH_ITEM) and data.fireDelayBlocked then
        -- ✅ Restore normal fire delay
        player.FireDelay = player.MaxFireDelay
        data.fireDelayBlocked = false
    elseif player:HasCollectible(SLOTH_ITEM) then
        -- ✅ Ensure shooting is still blocked
        player.FireDelay = math.huge
        data.fireDelayBlocked = true
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.ResetPlayerFireDelay)

function IsInteger(value)
    return type(value) == "number" and value % 1 == 0
end

function Mod:TrackMoneySpentCharity(player)
    if player:HasCollectible(CHARITY_ITEM) then
        local data = player:GetData()
        data.prevCoins = data.prevCoins or player:GetNumCoins()
        data.soulHeartProgress = data.soulHeartProgress or 0 -- ✅ Store progress toward next heart

        local currentCoins3 = player:GetNumCoins()

        if currentCoins3 < data.prevCoins then
            local lostAmount = data.prevCoins - currentCoins3
            data.soulHeartProgress = data.soulHeartProgress + lostAmount / 5 -- ✅ Store partial progress

            -- ✅ Grant soul hearts ONLY when progress reaches 1 full heart
            local fullSoulHearts = math.floor(data.soulHeartProgress) -- ✅ Round down to whole number
            if fullSoulHearts > 0 then
                player:AddSoulHearts(fullSoulHearts) -- ✅ Apply only full hearts
                data.soulHeartProgress = data.soulHeartProgress - fullSoulHearts -- ✅ Remove applied amount
                SFXManager():Play(SoundEffect.SOUND_HOLY)
            end
        end

        data.prevCoins = currentCoins3 -- ✅ Update stored coin count
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Mod.TrackMoneySpentCharity)

function Mod:ApplyHumility(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:HasCollectible(HUMILITY_ITEM) then
        local config = Isaac.GetItemConfig()
        local hasQuality4Item = false

        -- ✅ Loop through the player's collectibles
        for i = 1, 5000 do
            if player:GetCollectibleNum(i) > 0 then
                local itemConfig = config:GetCollectible(i)

                -- ✅ Check if the item has quality 4
                if itemConfig and itemConfig.Quality == 4 then
                    hasQuality4Item = true
                    break -- ✅ Exit early if a quality 4 item is found
                end
            end
        end

        -- ✅ Apply damage boost ONLY if no quality 4 items are present
        if not hasQuality4Item then
            player.Damage = player.Damage * 2
            
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyHumility)

function Mod:HealOnTearHit(tear, collider)
    local player = tear.SpawnerEntity and tear.SpawnerEntity:ToPlayer()
    if player and player:HasCollectible(LOVE_ITEM) then
        if collider and collider:IsEnemy() and collider:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then
            local data = collider:GetData()

            -- ✅ Heal the friendly entity based on tear damage
            local healAmount = math.floor(tear.CollisionDamage)
            collider.HitPoints = math.min(collider.HitPoints + healAmount, collider.MaxHitPoints)

            game:SpawnParticles(collider.Position, EffectVariant.HEART, 3, 2, Color(0, 1, 0, 1, 0, 1, 0))



            return false -- ✅ Prevents tear from dealing damage
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_TEAR_COLLISION, Mod.HealOnTearHit)

function Mod:ApplyTemperanceBoost(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_FIREDELAY and player:HasCollectible(TEMPERANCE_ITEM) then
        local currentHealth = player:GetHearts() + player:GetSoulHearts()
        local maxHealth = player:GetMaxHearts() + player:GetSoulHearts()

        if currentHealth < maxHealth then
            -- ✅ Reduce fire delay to boost fire rate
            player.MaxFireDelay = math.max(player.MaxFireDelay * 0.8, 2) -- 🔥 20% faster fire rate
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyTemperanceBoost)

---@param player EntityPlayer
function Mod:EvaluateCacheZeal(player)
    local effects = player:GetEffects()
    local count = effects:GetCollectibleEffectNum(ZEAL_ITEM) + player:GetCollectibleNum(ZEAL_ITEM)
    local rng = RNG()
    local seed = math.max(Random(), 1)
    rng:SetSeed(seed, 35)

    player:CheckFamiliar(FAMILIAR_VARIANT_ZEAL, count, rng, CONFIG_ZEAL)
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.EvaluateCacheZeal, CacheFlag.CACHE_FAMILIARS)

---@param familiar EntityFamiliar
function Mod:HandleInitZeal(familiar)
    familiar:AddToFollowers()
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.HandleInitZeal, FAMILIAR_VARIANT_ZEAL)

---@param familiar EntityFamiliar
function Mod:HandleUpdateZeal(familiar)
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
        local velocity = direction * 10 + player:GetTearMovementInheritance(direction)
        local tear = Isaac.Spawn(
            EntityType.ENTITY_TEAR,
            TearVariant.BLUE,
            0,
            familiar.Position,
            velocity,
            familiar
        ):ToTear()

        if player:HasCollectible(CollectibleType.COLLECTIBLE_BFFS) then
            tear.CollisionDamage = player.Damage
        else
            tear.CollisionDamage = (player.Damage / 2)
        end

        
        tear.Scale = 1.3
        --tear.CollisionDamage = (player.Damage / 2)
        tear.TearFlags = TearFlags.TEAR_GLOW | TearFlags.TEAR_HOMING
        if player:HasTrinket(TrinketType.TRINKET_FORGOTTEN_LULLABY) then
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 1.5, 1))
        else
            familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 3, 1))
        end
        --familiar.FireCooldown = math.floor(math.max(player.MaxFireDelay * 3, 1))

        sprite.FlipX = doFlip
        sprite:Play(shootAnim, true)
    end

    if sprite:IsFinished() then
        sprite:Play("FloatDown")
    end

    familiar:FollowParent()
    familiar.FireCooldown = math.max(familiar.FireCooldown - 1, 0)
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.HandleUpdateZeal, FAMILIAR_VARIANT_ZEAL)

function Mod:ActivateFriendAura(_, _, player)
    local game = Game()

    -- ✅ Spawn a visible aura effect
    local aura = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.HALO, 0, player.Position, Vector(0,0), player):ToEffect()
    if aura then
        aura.SpriteScale = Vector(3,3) -- ✅ Set aura size
        
        aura:GetData().expiration = game:GetFrameCount() + 600 -- ✅ 5-second duration
        aura:GetData().sourcePlayer = player -- ✅ Store player reference
        aura.Position = player.Position + Vector(0,30)
        SFXManager():Play(SoundEffect.SOUND_HOLY)
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.ActivateFriendAura, KINDNESS_ITEM)

function Mod:ConvertEnemiesToFriendly(npc)
    local game = Game()
    local currentFrame = game:GetFrameCount()
    
    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.HALO)) do
        if effect:GetData().expiration and currentFrame <= effect:GetData().expiration then
            local distance = npc.Position:Distance(effect.Position)
            if distance < 125 and not npc:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) and not npc:IsBoss() then
                npc:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
                npc:AddEntityFlags(EntityFlag.FLAG_CHARM)
                npc:AddEntityFlags(EntityFlag.FLAG_PERSISTENT)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, Mod.ConvertEnemiesToFriendly)



--[[ local json = require("json") -- ✅ Import JSON functionality


function Mod:SaveTemporaryHealth()
    local jsonString = json.encode(Mod.SaveData) -- ✅ Convert table to JSON
    Isaac.SaveModData(Mod, jsonString) -- ✅ Store JSON string instead of a table
    print("Saved temporary health:", jsonString)
end

function Mod:LoadTemporaryHealth()
    local savedString = Isaac.LoadModData(Mod) -- ✅ Retrieve saved JSON data

    if savedString ~= "" then
        Mod.SaveData = json.decode(savedString) -- ✅ Convert JSON string back into a table
        print("Loaded temporary health:", savedString)
    else
        Mod.SaveData = {} -- ✅ Initialize fresh data if nothing was stored
    end
end

function Mod:OnGameStart(isContinued)
    if isContinued then
        Mod:LoadTemporaryHealth() -- ✅ Ensure saved data is correctly loaded
    else
        Mod.SaveData = {} -- ✅ Fresh table for new runs
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnGameStart)



function Mod:GrantTemporaryHealth(_, _, player)
    player:AnimateCollectible(HEART_ITEM, "UseItem", "PlayerPickupSparkle")

    if not Mod.SaveData.tempHealth then
        Mod.SaveData.tempHealth = 0 -- ✅ Initialize tracking
    end

    -- ✅ Grant a temporary red heart container
    player:AddMaxHearts(2) -- (1 heart container)
    player:AddHearts(2) -- ✅ Fills the heart instantly
    Mod.SaveData.tempHealth = Mod.SaveData.tempHealth + 2 -- ✅ Track temporary health given

    Mod:SaveTemporaryHealth()
    SFXManager():Play(SoundEffect.SOUND_VAMP_DOUBLE)
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.GrantTemporaryHealth, HEART_ITEM)

function Mod:RemoveTemporaryHealth()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if Mod.SaveData.tempHealth and Mod.SaveData.tempHealth > 0 then
            player:AddMaxHearts(-Mod.SaveData.tempHealth) -- ✅ Remove temporary heart containers
            Mod.SaveData.tempHealth = nil -- ✅ Reset tracking
            Mod:SaveTemporaryHealth()

        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.RemoveTemporaryHealth)
Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Mod.RemoveTemporaryHealth) ]]

local lastMoveVec2 = {} -- Store last movement direction for each player
local dashingPlayers2 = {} -- Tracks players who are dashing

function Mod:OnUseRomanDash(_, _, player, tear)
    local abesfx = SFXManager()
    if not dashingPlayers2[player.Index] then
        dashingPlayers2[player.Index] = {dashTimer = 5, cooldown = DASH_COOLDOWN, chargeRefreshCount = 0, chargeTimer = 0, chargeExpireTimer = 0, enemiesHit = {}, dashSource = LEGION_ITEM } -- ✅ Store which dash is active
        player:SetMinDamageCooldown(25) -- Proper invulnerability effect
        abesfx:Play(SoundEffect.SOUND_KNIFE_PULL, 1, 0, false, 1.2)
        -- Immediately trigger first dash update to bypass animation delay
        Mod:OnUpdateRomanDash()

    end
    --return true
end

function Mod:OnUpdateRomanDash()
    --local game = Game()
    for i = 0, game:GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        local dashData = dashingPlayers2[player.Index]

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
                    lastMoveVec2[player.Index] = moveVec:Normalized() * 20
                end

                -- Use last movement direction if no input is given
                local finalMoveVec = lastMoveVec2[player.Index] or Vector(20, 0)
                
                -- Apply movement
                player.Velocity = finalMoveVec
                -- ✅ Scale dash damage using player damage stat
                local damageMultiplier = 2.0 -- Adjust as needed
                local scaledDamage = (player.Damage * 2) + 20

                -- Store enemies hit during the dash
                for _, entity in ipairs(Isaac.FindInRadius(player.Position, 50, EntityPartition.ENEMY)) do
                    if entity:IsVulnerableEnemy() and not dashData.enemiesHit[entity.InitSeed] then
                        entity:TakeDamage(scaledDamage, DamageFlag.DAMAGE_NO_MODIFIERS, EntityRef(player), 0)
                    end
                end


                dashData.dashTimer = dashData.dashTimer - 1
            else
                dashingPlayers2[player.Index] = nil
                player:SetMinDamageCooldown(0)
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.OnUseRomanDash, LEGION_ITEM)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.OnUpdateRomanDash)

local statusEffects = {
    TearFlags.TEAR_POISON,        -- Poison shots
    TearFlags.TEAR_BAIT,          -- Burning tears
    TearFlags.TEAR_FEAR,          -- Fear effect
    TearFlags.TEAR_SLOW,          -- Slowing shots
    TearFlags.TEAR_CONFUSION,     -- Confusion effect
    TearFlags.TEAR_CHARM,         -- Charm enemies
    TearFlags.TEAR_BURN,
    TearFlags.TEAR_GODS_FLESH,
    TearFlags.TEAR_MAGNETIZE
}

function Mod:UseStatusItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == CONCOCTION_ITEM then
            player:AnimateCollectible(CONCOCTION_ITEM, "UseItem", "PlayerPickupSparkle")
            -- ✅ Apply multiple tear effects
            local effectFlag = 0
            for _, flag in ipairs(statusEffects) do
                effectFlag = effectFlag | flag
            end

            player:GetData().TemporaryStatusFlag = effectFlag -- ✅ Store effects temporarily
            player:AddCacheFlags(CacheFlag.CACHE_TEARFLAG)
            player:EvaluateItems()
        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseStatusItem, CONCOCTION_ITEM)

function Mod:ResetStatusEffects(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:GetData().TemporaryStatusFlag then
            player:GetData().TemporaryStatusFlag = nil -- ✅ Remove temporary effect after room change
            player:AddCacheFlags(CacheFlag.CACHE_TEARFLAG)
            player:EvaluateItems()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetStatusEffects)
Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, function(_, player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_TEARFLAG and player:GetData().TemporaryStatusFlag then
        player.TearFlags = player.TearFlags | player:GetData().TemporaryStatusFlag -- ✅ Apply temporary effects
    end
end)

function Mod:ConvertPillsToHorse(pickup)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)

        if player:HasCollectible(PILL_ITEM) then
            if pickup.Variant == PickupVariant.PICKUP_PILL then
                local subtype = pickup.SubType
                -- Only convert normal pills (subtype < 2048)
                if subtype > 0 and subtype < 2048 then
                    local horseSubtype = subtype + 2048
                    pickup:ToPickup():Morph(
                        pickup.Type,
                        pickup.Variant,
                        horseSubtype,
                        true,
                        true
                    )
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Mod.ConvertPillsToHorse)

local pillTriggered = {}

function Mod:OnNewGamePill(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        pillTriggered = {}
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGamePill)

function Mod:OnPlayerUpdate_PillSpawn(player)
    local id = GetPtrHash(player)
    if not pillTriggered[id] then
        if player:HasCollectible(PILL_ITEM) then
            local room = Game():GetRoom()
            local pos = room:FindFreeTilePosition(player.Position, 100)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_PILL, 0, pos, Vector.Zero, player)
            pillTriggered[id] = true
        end
    end
end
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdate_PillSpawn)

local BOOKS = {
    CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL,
    CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS,
    CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS,
    CollectibleType.COLLECTIBLE_BOOK_OF_SIN,
    CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD,
    CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES,
    CollectibleType.COLLECTIBLE_BOOK_OF_SECRETS,
    CollectibleType.COLLECTIBLE_SATANIC_BIBLE,
    CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK,
    CollectibleType.COLLECTIBLE_NECRONOMICON,
    CollectibleType.COLLECTIBLE_TELEPATHY_BOOK,
    CollectibleType.COLLECTIBLE_MONSTER_MANUAL,
    CollectibleType.COLLECTIBLE_BIBLE,
    CollectibleType.COLLECTIBLE_HOW_TO_JUMP,
    CollectibleType.COLLECTIBLE_LEMEGETON,
    CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES,
    ANATOMY_ITEM,
    COMMUNISM_ITEM
}

function Mod:UseBibbleItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == BIBBLE_ITEM then
            player:AnimateCollectible(BIBBLE_ITEM, "UseItem", "PlayerPickupSparkle")
            local rng = RNG()
            rng:SetSeed(Random(), 0xB00C)

            local bookID = BOOKS[rng:RandomInt(#BOOKS) + 1]
            player:UseActiveItem(bookID, UseFlag.USE_NOANIM | UseFlag.USE_NOHUD, -1)

        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseBibbleItem, BIBBLE_ITEM)

function Mod:UseCommunismItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == COMMUNISM_ITEM then
            player:AnimateCollectible(COMMUNISM_ITEM, "UseItem", "PlayerPickupSparkle")
            if player:GetPlayerType() == PlayerType.PLAYER_BLUEBABY_B then
                local coins = player:GetNumCoins()
                local keys = player:GetNumKeys()

                local total = coins + keys
                local average = math.floor(total / 2)

                -- Set each consumable to the average
                player:AddCoins(average - coins)
                player:AddKeys(average - keys)
            else 
                local coins = player:GetNumCoins()
                local bombs = player:GetNumBombs()
                local keys = player:GetNumKeys()

                local total = coins + bombs + keys
                local average = math.ceil(total / 3)

                -- Set each consumable to the average
                player:AddCoins(average - coins)
                player:AddBombs(average - bombs)
                player:AddKeys(average - keys)
            end


        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseCommunismItem, COMMUNISM_ITEM)

local HasWeaknessEffect = false


function Mod:onUpdateToxin(player)
	if game:GetFrameCount() == 1 then
		HasWeaknessEffect = false
	end
	if not HasWeaknessEffect and player:HasCollectible(NEURO_ITEM) then
		HasWeaknessEffect = true
	end
end

local function getRandomToxinEffect(player)
    local baseChance = 0.05
    local luckScaling = 0.05 * player:GetCollectibleNum(NEURO_ITEM)

    local teardropScaling = 0

    if player:HasTrinket(TrinketType.TRINKET_TEARDROP_CHARM) then
        teardropScaling = 0.15
    end


    local luckBonus = math.max(0, (player.Luck * luckScaling) + teardropScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitToxin(tear)
    if HasWeaknessEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(NEURO_ITEM) and getRandomToxinEffect(player) then
                tear:GetData().weakTrigger = true
                tear:SetColor(Color(0.4, 0.1, 0.5, 1.0, 0, 0, 0), 30, 1, false, false)
                


            end
        end
    end
end

function Mod:onToxinWeaknessHit(entity, damage, flags, source, countdown)
    if source.Type == EntityType.ENTITY_TEAR and source.Entity then
        local tear = source.Entity:ToTear()
        if tear and tear:GetData().weakTrigger then
            if entity:IsVulnerableEnemy() then
                entity:AddEntityFlags(EntityFlag.FLAG_WEAKNESS)
                entity:Update() -- Force update so the flag applies immediately
                -- Apply dark purple tint (R, G, B, Alpha, Duration)
                entity:SetColor(Color(0.4, 0.1, 0.5, 1.0, 0, 0, 0), 30, 1, false, false)
                local data = entity:GetData()
                data.WeaknessExpireFrame = Game():GetFrameCount() + 150

            end
        end
    end
end

function Mod:onEnemyUpdateWeakness(entity)
    if entity:IsVulnerableEnemy() then
        local data = entity:GetData()
        if data.WeaknessExpireFrame and Game():GetFrameCount() >= data.WeaknessExpireFrame then
            entity:ClearEntityFlags(EntityFlag.FLAG_WEAKNESS)
            data.WeaknessExpireFrame = nil
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, Mod.onEnemyUpdateWeakness)
Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.onToxinWeaknessHit)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateToxin)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitToxin)

function Mod:OnNewFloorDice()
    --local game = Game()
    local level = game:GetLevel()
    local room = game:GetRoom()
    for i = 0, Game():GetNumPlayers() - 1 do
    
        local player = Isaac.GetPlayer(i)

    -- Ensure player has the item before spawning golden rewards
        if player:HasCollectible(CRUSHED_DICE_ITEM) then
            local spawnPositions = {
                room:GetCenterPos() + Vector(0, 20),
                room:GetCenterPos() + Vector(-40, 20),
                room:GetCenterPos() + Vector(40, 20)
            }

            -- Spawn golden rewards
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_DICE_SHARD, spawnPositions[1], Vector.Zero, player)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_DICE_SHARD, spawnPositions[2], Vector.Zero, player)
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_DICE_SHARD, spawnPositions[3], Vector.Zero, player)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewFloorDice)

local STAT_BOOST_DOGMA = {
    FIREDELAY = 1, 
    DAMAGE = 1, 
    RANGE = 300, 
    SHOTSPEED = -0.5,
}

function Mod:DogmaStats(player, cacheFlag)
    if player:HasCollectible(DOGMA_ITEM) then
        local numdogma = player:GetCollectibleNum(DOGMA_ITEM)
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (STAT_BOOST_DOGMA.FIREDELAY * numdogma)
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + STAT_BOOST_DOGMA.DAMAGE) * (1.5 * numdogma)
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (STAT_BOOST_DOGMA.RANGE * numdogma)
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed+ (STAT_BOOST_DOGMA.SHOTSPEED * numdogma)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.DogmaStats)

local HasDogmaEffect = false
local DogmaTears = {}

function Mod:onUpdateDogma(player)
	if game:GetFrameCount() == 1 then
		HasDogmaEffect = false
	end
	if not HasDogmaEffect and player:HasCollectible(DOGMA_ITEM) then
		HasDogmaEffect = true
	end
end

local function getRandomDogmaEffect(player)
    local baseChance = 1
    local luckScaling = 1 * player:GetCollectibleNum(DOGMA_ITEM)

    local luckBonus = math.max(0, player.Luck * luckScaling) -- Ensure non-negative
    local finalChance = math.min(1, baseChance + luckBonus) -- Cap at 90% chance

    local rand = math.random()
    return rand <= finalChance -- Effect triggers if random number falls within chance
end

function Mod:onTearInitDogma(tear)
    if HasDogmaEffect then
        local parent = tear.SpawnerEntity
        if parent and parent:ToPlayer() then
            local player = parent:ToPlayer()
            if player:HasCollectible(DOGMA_ITEM) and getRandomDogmaEffect(player) then
                tear:GetData().dogmaTrigger = true

                local sprite = tear:GetSprite()
                sprite:Load("gfx/dogmaticism_aura.anm2", true)
                sprite:Play("Aura", true)

                --tear:SetColor(Color(0.4, 0.1, 0.5, 1.0, 0, 0, 0), 30, 1, false, false)
                local data = tear:GetData()
                data.dogmaTrigger = true
                data.nearbyEnemies = data.nearbyEnemies or {}
                table.insert(DogmaTears, tear)
                AuraDamage = player.Damage
                tear.TearFlags = TearFlags.TEAR_SPECTRAL | TearFlags.TEAR_PIERCING


                
            end
        end
    end
end

function Mod:UpdateDogmaTears()
    for i = #DogmaTears, 1, -1 do
        local tear = DogmaTears[i]
        if not tear:Exists() then
            table.remove(DogmaTears, i)
        else
            local data = tear:GetData()
            local enemies = Isaac.FindInRadius(tear.Position, 120, EntityPartition.ENEMY)
            for _, enemy in ipairs(enemies) do
                if enemy:IsVulnerableEnemy() and not enemy:IsDead() and not enemy:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then
                    local id = GetPtrHash(enemy)
                    data.nearbyEnemies[id] = (data.nearbyEnemies[id] or 0) + 1

                    -- Whitening effect
                    local t = math.min(data.nearbyEnemies[id] / 15, 1)
                    local color = Color(1, 1, 1, 1, t, t, t)
                    enemy:SetColor(color, 2, 1, false, false)

                    -- Trigger beam
                    if data.nearbyEnemies[id] == 15 then
                        local dogmabeam = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.CRACK_THE_SKY, 0, enemy.Position, Vector.Zero, tear.SpawnerEntity)
                        dogmabeam.Parent = tear.SpawnerEntity
                        dogmabeam.CollisionDamage = AuraDamage * 5
                        dogmabeam:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)

                        

                    end
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.UpdateDogmaTears)

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdateDogma)
Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.onTearInitDogma)

function Mod:InfestationThree(entity)
    if entity:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then return end

    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        if player:HasCollectible(INFESTATION_ITEM) then
            local luck = player.Luck
            local chance = math.min(0.10 + (luck * 0.02), 1.0) -- Max 100% cap
            if math.random() <= chance then

                local count = player:GetCollectibleNum(INFESTATION_ITEM)
                for j = 1, count do
                    local spider = Isaac.Spawn(
                        EntityType.ENTITY_SWARM_SPIDER,
                        0,
                        0,
                        entity.Position,
                        Vector.FromAngle(math.random(0, 359)) * 3,
                        player
                    )
                    spider:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
                    spider:AddEntityFlags(EntityFlag.FLAG_PERSISTENT) -- ✅ Makes it friendly
                    spider:AddEntityFlags(EntityFlag.FLAG_CHARM)
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_ENTITY_KILL, Mod.InfestationThree)

function Mod:UseRaptureItem(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        if item == RAPTURE_ITEM then
            player:AnimateCollectible(RAPTURE_ITEM, "UseItem", "PlayerPickupSparkle")
            local dir = player:GetFireDirection()
            local velocity = Vector(0, 0)

            if dir == Direction.LEFT then
                velocity = Vector(-10, 0)
            elseif dir == Direction.RIGHT then
                velocity = Vector(10, 0)
            elseif dir == Direction.UP then
                velocity = Vector(0, -10)
            elseif dir == Direction.DOWN then
                velocity = Vector(0, 10)
            elseif dir == Direction.NO_DIRECTION then
                velocity = Vector(0, 10)
            end

            
            local rapturebeam = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.DOGMA_ORB, 0, player.Position, velocity, player)
            for i = 0, Game():GetNumPlayers() - 1 do
                local player = Game():GetPlayer(i)
                player:SetMinDamageCooldown(80)
            end
            local sfx = SFXManager()
            sfx:Play(SoundEffect.SOUND_DOGMA_LIGHT_RAY_CHARGE, 1, 2, false, 2)
            sfx:Play(SoundEffect.SOUND_DOGMA_LIGHT_RAY_FIRE)
            rapturebeam.CollisionDamage = 20 + player.Damage
            rapturebeam:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
            local data = rapturebeam:GetData()
            rapturebeam:GetData().isRaptureOrb = true
            data.spawnFrameRapture = Game():GetFrameCount()




        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseRaptureItem, RAPTURE_ITEM)

function Mod:UpdateRaptureOrb(entity)
    local data = entity:GetData()
    if data.isRaptureOrb and data.spawnFrameRapture then
        local currentFrame = Game():GetFrameCount()
        

        if currentFrame - data.spawnFrameRapture >= 15 then
            entity:Remove()
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, Mod.UpdateRaptureOrb, EffectVariant.DOGMA_ORB)

function Mod:UseShatteredGladius(item, rng, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
        local sfx = SFXManager()
        if item == SHATTERED_GLADIUS_ITEM then
            player:AnimateCollectible(SHATTERED_GLADIUS_ITEM, "UseItem", "PlayerPickupSparkle")
            --local roll = rng:RandomFloat() -- Get a random number between 0 and 1
            Isaac.ExecuteCommand("goto s.challenge.8038")
            sfx:Play(SoundEffect.SOUND_HELL_PORTAL1)
            --[[ if roll <= 0.1 then
                Isaac.ExecuteCommand("goto s.challenge.24")
                sfx:Play(SoundEffect.SOUND_HELL_PORTAL1)
            else
                Isaac.ExecuteCommand("goto s.challenge.9")
                sfx:Play(SoundEffect.SOUND_HELL_PORTAL1)
            end ]]

        end
    --end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseShatteredGladius, SHATTERED_GLADIUS_ITEM)

function Mod:ChargeGladius(player)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Isaac.GetPlayer(i)
        for slot = 0, 1 do
            if player:GetActiveItem(slot) == SHATTERED_GLADIUS_ITEM then
                local maxCharge = Isaac.GetItemConfig():GetCollectible(SHATTERED_GLADIUS_ITEM).MaxCharges or 6
                player:SetActiveCharge(maxCharge, slot)
                local sfx = SFXManager()
                sfx:Play(SoundEffect.SOUND_BATTERYCHARGE)
            end
        end

    end


end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.ChargeGladius)


function Mod:UseTrashBag(item, rng, player)
    local sfx = SFXManager()
    if item == TRASH_ITEM then
        player:AnimateCollectible(TRASH_ITEM, "UseItem", "PlayerPickupSparkle")
        local room = Game():GetRoom()
            
        local roll = rng:RandomInt(4) + 1 -- 1 to 4
        local position =  room:FindFreeTilePosition(player.Position + Vector(20,20), 100)

        if roll == 1 then
            -- 🎲 Spawn a random quality 0 item
            local itemPool = Game():GetItemPool()
            local itemId = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, player.InitSeed)
            while Isaac.GetItemConfig():GetCollectible(itemId).Quality ~= 0 do
                itemId = itemPool:GetCollectible(ItemPoolType.POOL_TREASURE, true, player.InitSeed)
            end
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, itemId, position, Vector.Zero, nil)

        elseif roll == 2 then
            -- 🎲 Spawn a trinket from a defined list
            local trinketPool = {
                YUCK_PENNY_TRINKET,
                TrinketType.TRINKET_BUTT_PENNY,
                TrinketType.TRINKET_EVES_BIRD_FOOT,
                TrinketType.TRINKET_FISH_HEAD,
                TrinketType.TRINKET_FISH_TAIL,
                TrinketType.TRINKET_GOAT_HOOF,
                TrinketType.TRINKET_FISH_HEAD,
                TrinketType.TRINKET_LUCKY_TOE,
                TrinketType.TRINKET_FISH_HEAD,
                TrinketType.TRINKET_JUDAS_TONGUE,
                TrinketType.TRINKET_MOMS_TOENAIL,
                TrinketType.TRINKET_PAPER_CLIP,
                TrinketType.TRINKET_PETRIFIED_POOP,
                TrinketType.TRINKET_PULSE_WORM,
                TrinketType.TRINKET_RING_WORM,
                TrinketType.TRINKET_RUSTED_KEY,
                TrinketType.TRINKET_SAFETY_CAP,
                TrinketType.TRINKET_TICK,
                TrinketType.TRINKET_WHIP_WORM,
                TrinketType.TRINKET_WIGGLE_WORM,
                TrinketType.TRINKET_LIL_LARVA,
                TrinketType.TRINKET_LOUSE,
                TrinketType.TRINKET_RAINBOW_WORM,
                TrinketType.TRINKET_TAPE_WORM,
                TrinketType.TRINKET_LOST_CORK,
                TrinketType.TRINKET_MECONIUM,
                TrinketType.TRINKET_OUROBOROS_WORM,
                TrinketType.TRINKET_ROTTEN_PENNY,
                TrinketType.TRINKET_USED_DIAPER,
                TrinketType.TRINKET_BRAIN_WORM,
                TrinketType.TRINKET_BROKEN_GLASSES,
                TrinketType.TRINKET_CHEWED_PEN,
                TrinketType.TRINKET_CRICKET_LEG,
                TrinketType.TRINKET_BROKEN_REMOTE,
                TrinketType.TRINKET_BROKEN_SYRINGE

            }
            local index = rng:RandomInt(#trinketPool) + 1
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, trinketPool[index], position, Vector.Zero, nil)

        elseif roll == 3 then
            -- 🎲 Spawn a rotten heart
            local heart = Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_ROTTEN, position, Vector.Zero, nil)

        elseif roll == 4 then
            -- 🎲 Spawn blue flies
            local numFlies = rng:RandomInt(6) + 3 -- Between 3 and 8
            for i = 1, numFlies do
                player:AddBlueFlies(1, player.Position, player)
            end
        end
        sfx:Play(SoundEffect.SOUND_THUMBSUP)


    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTrashBag, TRASH_ITEM)

local STAT_BOOST_CAKE = {
    SPEED = 0.3,
    FIREDELAY = -0.5, 
    DAMAGE = 1, 
    RANGE = 150, 
    SHOTSPEED = 0.16,
    LUCK = 1.00,
}

function Mod:CakePickup(player, cacheFlag)
    if player:HasCollectible(CAKE_ITEM) then
        local numcake = player:GetCollectibleNum(CAKE_ITEM)
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + (STAT_BOOST_CAKE.SPEED * numcake)
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay + (STAT_BOOST_CAKE.FIREDELAY * numcake)
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + (STAT_BOOST_CAKE.DAMAGE * numcake)
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (STAT_BOOST_CAKE.RANGE * numcake)
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed+ (STAT_BOOST_CAKE.SHOTSPEED * numcake)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + (STAT_BOOST_CAKE.LUCK * numcake)
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.CakePickup)

local hasGivenLocusts = {}

function Mod:CheckPassiveItemPickup(player)
    if player:HasCollectible(RIFT_ITEM) and not hasGivenLocusts[player.InitSeed] then
        hasGivenLocusts[player.InitSeed] = true

        -- Spawn 3 random Abyss locusts
        --for i = 1, 3 do
            --local rng = RNG()
            --rng:SetSeed(Random(), 1)
            --local variant = rng:RandomInt(6) -- 0 to 5

        local locust = Isaac.Spawn(
            EntityType.ENTITY_FAMILIAR,
            FamiliarVariant.ABYSS_LOCUST,
            89,
            player.Position,
            Vector.Zero,
            player
        ):ToFamiliar()

        if locust then
            locust:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
            locust:Update()
        end

        local locust2 = Isaac.Spawn(
            EntityType.ENTITY_FAMILIAR,
            FamiliarVariant.ABYSS_LOCUST,
            393,
            player.Position,
            Vector.Zero,
            player
        ):ToFamiliar()

        if locust2 then
            locust2:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
            locust2:Update()
        end

        local locust3 = Isaac.Spawn(
            EntityType.ENTITY_FAMILIAR,
            FamiliarVariant.ABYSS_LOCUST,
            220,
            player.Position,
            Vector.Zero,
            player
        ):ToFamiliar()

        if locust3 then
            locust3:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
            locust3:Update()
        end

        local locust4 = Isaac.Spawn(
            EntityType.ENTITY_FAMILIAR,
            FamiliarVariant.ABYSS_LOCUST,
            7,
            player.Position,
            Vector.Zero,
            player
        ):ToFamiliar()

        if locust4 then
            locust4:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
            locust4:Update()
        end
        --end

        --SFXManager():Play(SoundEffect.SOUND_INSECT_SWARM)
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.CheckPassiveItemPickup)

local healthTriggered = {}

function Mod:OnNewGameHealth(isContinued)
    if not isContinued then -- Ensures it only resets for fresh runs, not continues
        healthTriggered = {}
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, Mod.OnNewGameHealth)

function Mod:OnPlayerUpdate_HealthGive(player)
    local id = GetPtrHash(player)
    if not healthTriggered[id] then
        if player:HasCollectible(HEALTH_SACK_ITEM) then
            player:AddBoneHearts(1)
            player:AddGoldenHearts(1)
            player:AddRottenHearts(1)
            healthTriggered[id] = true
        end
    end
end
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnPlayerUpdate_HealthGive)

function Mod:UseBattery(item, rng, player)
    local sfx = SFXManager()
    if player:HasCollectible(BATTERY_ITEM) then
        
        local explosion = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION, 0, player.Position, Vector(0, 0), player)
        explosion:AddEntityFlags(EntityFlag.FLAG_FRIENDLY)
        --explosion.CollisionDamage = 40
        explosion:GetData().IsExplosionHitbox = true

        local creep = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.PLAYER_CREEP_GREEN, 0, player.Position, Vector(0, 0), player)
        creep:ToEffect():SetTimeout(300)
        -- Adjust creep size
        creep.SpriteScale = Vector(5, 5)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseBattery)

function Mod:CheckExplosionHitbox(npc)
    local data = npc:GetData()
    
    if not data.ExplosionHit then
        data.ExplosionHit = -1 -- ✅ Initialize tracking
    end

    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION)) do
        if effect:GetData().IsExplosionHitbox then
            local distance = npc.Position:Distance(effect.Position)
            
            -- ✅ Only allow one hit per enemy per attack cycle
            if distance < 100 and Game():GetFrameCount() > data.ExplosionHit + 5 and not recentHits[npc.InitSeed] then
               local player = effect.SpawnerEntity and effect.SpawnerEntity:ToPlayer()
                if player then
                    local damageMultiplier = 1 -- ✅ Adjust as needed
                    local scaledDamage = 40 -- ✅ Scale with player’s damage
                    
                    if npc:IsEnemy() and npc:IsVulnerableEnemy() then
                        npc:TakeDamage(scaledDamage, DamageFlag.DAMAGE_EXPLOSION | DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(effect), 0)
                        local knockbackStrength = 6 -- 🛠️ Adjust as needed
                        local direction = (npc.Position - effect.Position):Normalized()
                        npc.Velocity = npc.Velocity + direction * knockbackStrength
                    end
                    data.ExplosionHit = Game():GetFrameCount()
                end

            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, Mod.CheckExplosionHitbox)

function Mod:PoltergeistInit(Poltergeist)
    --Moon.EntityCollisionClass = EntityCollisionClass.ENTCOLL_ENEMIES
    Poltergeist:AddToOrbit(7007)
    
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_INIT, Mod.PoltergeistInit, FAMILIAR_POLTERGEIST)

function Mod:PoltergeistUpdate(Poltergeist)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
    
        Poltergeist.OrbitDistance = Vector(50,50)
        Poltergeist.OrbitSpeed = 0.05
        --Moon.OrbitLayer = 7007
        Poltergeist.Velocity = Poltergeist:GetOrbitPosition(player.Position + player.Velocity) - Poltergeist.Position
    end
end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.PoltergeistUpdate, FAMILIAR_POLTERGEIST)

function Mod:onCachePoltergeist(player, cacheFlag)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local numFamiliars = player:GetCollectibleNum(POLTERGEIST_ITEM)
        --if cacheFlag == cacheFlag.CACHE_FAMILIARS then
        if player:HasCollectible(POLTERGEIST_ITEM) then
            player:CheckFamiliar(FAMILIAR_POLTERGEIST, numFamiliars, player:GetCollectibleRNG(POLTERGEIST_ITEM))
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.onCachePoltergeist)

function Mod:PoltergeistFear(Poltergeist)
    --if not Poltergeist:IsFrame(1) then return end -- Reduce checks to once per frame

    local radius = 20 -- 🔧 Adjust for contact sensitivity
    local entities = Isaac.FindInRadius(Poltergeist.Position, radius, EntityPartition.ENEMY)

    for _, npc in ipairs(entities) do
        if npc:IsVulnerableEnemy() and not npc:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then
            npc:AddFear(EntityRef(Poltergeist), 60) -- 👻 Apply fear for 60 frames (2 seconds)
        end
    end

end

Mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, Mod.PoltergeistFear, FAMILIAR_POLTERGEIST)

function Mod:FixSpriteRotationAxe()
    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.POOF01)) do
        if effect:GetData().PersistRotation then
            effect:GetSprite().Rotation = effect:GetData().PersistRotation
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Mod.FixSpriteRotationAxe)

function Mod:UseAxe(item, rng, player)
    local sfx = SFXManager()
    if item == AXE_ITEM then

        local direction = Vector(0, 0) -- ✅ Default: No movement
    
        local dir = player:GetFireDirection()
        print(dir)
        local velocity = Vector(0, 0)

        if dir == Direction.LEFT then
            velocity = Vector(-1, 0)
        elseif dir == Direction.RIGHT then
            velocity = Vector(1, 0)
        elseif dir == Direction.UP then
            velocity = Vector(0, -1)
        elseif dir == Direction.DOWN then
            velocity = Vector(0, 1)
        elseif dir == Direction.NO_DIRECTION then
            velocity = Vector(0, 1)
        end
        print(dir)

        -- ✅ Spawn melee hitbox in correct direction
        --if direction.X ~= 0 or direction.Y ~= 0 then
            --print("2")
            local meleeHitbox = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.CLEAVER_SLASH, 0, player.Position + velocity * 120, Vector(0,0), player)
            if meleeHitbox then
                --print("3")
                local sprite = meleeHitbox:GetSprite()
                -- ✅ Adjust sprite orientation based on attack direction
                if velocity.X < 0 then
                    sprite.FlipX = false -- ✅ Flip horizontally for left attacks
                    sprite.Rotation = 90 -- ✅ Keep default rotation
                elseif velocity.X > 0 then
                    sprite.FlipX = false -- ✅ Keep normal for right attacks
                    sprite.Rotation = -90 -- ✅ Keep default rotation
                elseif velocity.Y < 0 then
                    sprite.Rotation = 0
                    sprite.FlipY = true -- ✅ Rotate for upward attacks
                elseif velocity.Y > 0 then
                    sprite.Rotation = 0
                    sprite.FlipY = false -- ✅ Rotate for downward attacks
                end
                -- ✅ Persist rotation until animation ends
                meleeHitbox:GetData().PersistRotation = sprite.Rotation

            end
            meleeHitbox:GetData().IsAxeHitbox = true
            meleeHitbox:GetData().DestroyNextFrame = true
            meleeHitbox:GetSprite():Play("Appear")
            SFXManager():Play(SoundEffect.SOUND_SWORD_SPIN) -- ✅ Sword swing sound

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseAxe, AXE_ITEM)

function Mod:CheckAxeHitbox(npc)
    local data = npc:GetData()
    
    if not data.AxeHit then
        data.AxeHit = -1 -- ✅ Initialize tracking
    end

    for _, effect in ipairs(Isaac.FindByType(EntityType.ENTITY_EFFECT, EffectVariant.CLEAVER_SLASH)) do
        if effect:GetData().IsAxeHitbox then
            local distance = npc.Position:Distance(effect.Position)
            
            -- ✅ Only allow one hit per enemy per attack cycle
            if distance < 100 and Game():GetFrameCount() > data.AxeHit + 5 and not recentHits[npc.InitSeed] then
               local player = effect.SpawnerEntity and effect.SpawnerEntity:ToPlayer()
                if player then
                    local damageMultiplier = 1 -- ✅ Adjust as needed
                    local scaledDamage = 999999 -- ✅ Scale with player’s damage
                    
                    if npc:IsEnemy() and npc:IsVulnerableEnemy() then
                        npc:TakeDamage(scaledDamage, DamageFlag.DAMAGE_CRUSH | DamageFlag.DAMAGE_IGNORE_ARMOR, EntityRef(effect), 0)
                        local knockbackStrength = 6 -- 🛠️ Adjust as needed
                        local direction = (npc.Position - effect.Position):Normalized()
                        npc.Velocity = npc.Velocity + direction * knockbackStrength
                        SFXManager():Play(SoundEffect.SOUND_MEATY_DEATHS)
                        SFXManager():Play(SoundEffect.SOUND_KNIFE_PULL)
                        player:RemoveCollectible(AXE_ITEM)
                    end
                    data.AxeHit = Game():GetFrameCount()
                end

            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, Mod.CheckAxeHitbox)

function Mod:UpdateMotivatorDamage(player)
    if not player:HasCollectible(MOTIVATOR_ITEM) then return end

    local room = Game():GetRoom()
    local enemyCount = 0

    -- ✅ Count all vulnerable enemies
    for _, entity in ipairs(Isaac.GetRoomEntities()) do
        if entity:IsVulnerableEnemy() and not entity:IsDead() and not entity:HasEntityFlags(EntityFlag.FLAG_FRIENDLY) then
            enemyCount = enemyCount + 1
        end
    end

    if room:IsClear() or enemyCount == 0 then
        -- 🔻 Reset when there’s no one left to be motivated by
        if player:GetData().motivatorDamageBoost then
            player:GetData().motivatorDamageBoost = nil
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
    else
        -- 🔺 Apply boost based on enemy count
        local baseMultiplier = 1.0
        local perEnemyBonus = 0.1 * player:GetCollectibleNum(MOTIVATOR_ITEM) -- Each enemy adds 5% bonus
        local totalBoost = baseMultiplier + (enemyCount * perEnemyBonus)

        player:GetData().motivatorDamageBoost = totalBoost
        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:EvaluateItems()
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.UpdateMotivatorDamage)

function Mod:ApplyMotivatorDamage(player, cacheFlag)
    if cacheFlag == CacheFlag.CACHE_DAMAGE and player:GetData().motivatorDamageBoost then
        player.Damage = player.Damage * player:GetData().motivatorDamageBoost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyMotivatorDamage)

--[[ function Mod:UseTempleItem(_, _, player, _)
    local rng = RNG()
    rng:SetSeed(Random(), 35) -- Use a unique offset for consistency
    local random = rng:RandomFloat()

    if random < 0.1 then
        player:AddSoulHearts(2)
        SFXManager():Play(SoundEffect.SOUND_HOLY, 1, 0, false, 1)
    elseif random < 0.2 then
        player:UseActiveItem(PONTIUS_ESSENCE)
    elseif random < 0.3 then
        player:UseActiveItem(GUN_ITEM)
    elseif random < 0.4 then
        player:UseCard(RELIQUARY_CARD)
    elseif random < 0.5 then
        player:UseActiveItem(RAPTURE_ITEM)
    elseif random < 0.6 then
        player:UseActiveItem(CONCOCTION_ITEM)
    elseif random < 0.7 then
        player:UseCard(JUSTICE_CARD)
    elseif random < 0.8 then
        player:UseActiveItem(TRASH_ITEM)
    elseif random < 0.9 then
        player:UseActiveItem(CollectibleType.COLLECTIBLE_DEAD_SEA_SCROLLS)
    elseif random < 0.99 then
        player:UseActiveItem(TOWER_CARD)
    elseif random < 1 then
        player:AddCollectible(DOGMA_ITEM)
    else
        SFXManager():Play(SoundEffect.SOUND_THUMBS_DOWN, 1, 0, false, 1)
    end

    return true
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTempleItem, TEMPLE_ITEM) ]]

function Mod:UseTempleItem(item, rng, player)
    local sfx = SFXManager()
    if item == TEMPLE_ITEM then
        player:AnimateCollectible(TEMPLE_ITEM, "UseItem", "PlayerPickupSparkle")
        local room = Game():GetRoom()
            
        local roll = rng:RandomInt(100) + 1 -- 1 to 4
        local position =  room:FindFreeTilePosition(player.Position + Vector(20,20), 100)

        if roll <= 10 then
            player:AddSoulHearts(2)
            SFXManager():Play(SoundEffect.SOUND_HOLY, 1, 0, false, 1)
        elseif roll <= 20 then
            player:UseActiveItem(PONTIUS_ESSENCE)
        elseif roll <= 30 then
            player:UseActiveItem(GUN_ITEM)
        elseif roll <= 40 then
            player:UseCard(RELIQUARY_CARD)
        elseif roll <= 50 then
            player:UseActiveItem(RAPTURE_ITEM)
        elseif roll <= 60 then
            player:UseActiveItem(CONCOCTION_ITEM)
        elseif roll <= 70 then
            player:UseCard(JUSTICE_CARD)
        elseif roll <= 80 then
            player:UseActiveItem(TRASH_ITEM)
        elseif roll <= 90 then
            player:UseActiveItem(CollectibleType.COLLECTIBLE_DEAD_SEA_SCROLLS)
        elseif roll <= 99 then
            player:UseActiveItem(TOWER_CARD)
        elseif roll <= 100 then
            player:AddCollectible(DOGMA_ITEM)
        end


    end
end

Mod:AddCallback(ModCallbacks.MC_USE_ITEM, Mod.UseTempleItem, TEMPLE_ITEM)

----------------------------------------------------------------------------------------
--- Consumable Code Below

function Mod:UseSoulStone(card, player)
    if card == SOUL_DOMINO then
        local data = player:GetData()
        
        -- ✅ If no existing boost, initialize it
        if not data.TempLuckBoost then data.TempLuckBoost = 0 end
        
        -- ✅ Add 10 Luck instead of overwriting the boost
        data.TempLuckBoost = data.TempLuckBoost + 5

        player:AddCacheFlags(CacheFlag.CACHE_LUCK)
        player:EvaluateItems()

        --[[ if player:GetPlayerType() == PlayerType.PLAYER_JACOB or player:GetPlayerType() == PlayerType.PLAYER_ESAU then
            local sprite = card:GetSprite()
            sprite:Load("content/gfx/ui_cardfronts.anm2", true) -- Load your custom animation
            sprite:Play("Soul of Domino Small", true) -- Ensure correct animation plays
        end ]]



    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseSoulStone, SOUL_DOMINO)

function Mod:ResetLuckOnRoomExit()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if data.TempLuckBoost and data.TempLuckBoost > 0 then
            data.TempLuckBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_LUCK)
            player:EvaluateItems()
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetLuckOnRoomExit)

function Mod:ApplyLuckBoost(player, cacheFlag)
    local data = player:GetData()

    if cacheFlag == CacheFlag.CACHE_LUCK and data.TempLuckBoost then
        player.Luck = player.Luck + data.TempLuckBoost -- ✅ Properly apply temporary Luck boost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyLuckBoost)


function Mod:UseSoulStonePontius(card, player)
    if card == SOUL_PONTIUS then
        local data = player:GetData()
        local playerDamage = player.Damage

        -- Play activation sound
        local sfx = SFXManager()
        sfx:Stop(SoundEffect.SOUND_ANGEL_BEAM)
        sfx:Play(SoundEffect.SOUND_SWORD_SPIN) -- Replace with your custom sound ID

        -- **Spawn 8 lasers in a circular pattern**
        local numLasers = 8
        local radius = 40 -- Distance from player
        for i = 1, numLasers do
            local angle = (i / numLasers) * (2 * math.pi) -- Evenly distribute in a circle
            local laserDirection = Vector(math.cos(angle), math.sin(angle)) -- Convert angle to vector

            local laser = Isaac.Spawn(
                EntityType.ENTITY_LASER,
                LaserVariant.ELECTRIC,
                0,
                player.Position + laserDirection * radius, -- Position lasers around the player
                Vector.Zero,
                player
            ):ToLaser()
            if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
                local sprite = laser:GetSprite()
                sprite:Load("gfx/pontius_spear_throw_tech.anm2", true) -- Load your custom animation
                sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays
            elseif laser then
                local sprite = laser:GetSprite()
                sprite:Load("gfx/pontius_spear_throw.anm2", true) -- Load your custom animation
                sprite:Play("LargeRedLaser", true) -- Ensure correct animation plays

        end

            if laser then
                local spearDamage = 10
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_20_20) then
                    spearDamage = spearDamage * 1.2
                end
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_INNER_EYE) then
                    spearDamage = spearDamage * 1.3
                end
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_MUTANT_SPIDER) then
                    spearDamage = spearDamage * 1.4
                end
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_BRIMSTONE) then
                    spearDamage = spearDamage * 1.4
                end
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_EYE_SORE) then
                    spearDamage = spearDamage * math.random(1, 1.3)
                end
                if laser and player:HasPlayerForm(PlayerForm.PLAYERFORM_BABY) then
                    spearDamage = spearDamage * 1.2
                end
                laser.TearFlags = player.TearFlags
                if player:HasCollectible(CollectibleType.COLLECTIBLE_DR_FETUS) or player:HasCollectible(CollectibleType.COLLECTIBLE_EPIC_FETUS) then
                    laser.TearFlags = TearFlags.TEAR_EXPLOSIVE | player.TearFlags
                end
                laser.AngleDegrees = laserDirection:GetAngleDegrees() -- Set correct angle
                laser.PositionOffset = laserDirection * 5 -- Adjust for proper visuals
                laser.Parent = player
                laser.Timeout = 1 -- Set duration (adjust as needed)
                laser.CollisionDamage = playerDamage * spearDamage -- Apply high damage
                if laser and player:HasCollectible(CollectibleType.COLLECTIBLE_TECHNOLOGY) then
                    laser.CollisionDamage = (playerDamage * spearDamage) + 1
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseSoulStonePontius, SOUL_PONTIUS)

function Mod:UseSoulStoneRoomChance(card, player)
    if card == SOUL_ABRAHAM then
        local level = Game():GetLevel()

        -- ✅ Increase Angel room chance
        level:AddAngelRoomChance(100) -- 25% boost to Angel room odds
        
        -- ✅ Play activation effect
        local sfx = SFXManager()
        sfx:Play(SoundEffect.SOUND_SUPERHOLY) -- Play a fitting sound effect

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseSoulStoneRoomChance, SOUL_ABRAHAM)

function Mod:UseEssenceCard(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == RELIQUARY_CARD then
        --Isaac.ExecuteCommand("spawn essence collector")
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)
        local spawnPosition = position + Vector(40, 40) -- ✅ Adjusts offset (40 pixels to the right)

        -- ✅ Spawn the custom slot machine near the player
        Isaac.Spawn(EntityType.ENTITY_SLOT, 249376971, 0, spawnPosition, Vector.Zero, player)


        local sfx = SFXManager()
        sfx:Play(SoundEffect.SOUND_SUMMON_POOF)
        sfx:Play(SoundEffect.SOUND_CHEST_DROP)
        
        --end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseEssenceCard, RELIQUARY_CARD)

function Mod:UseFoolMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == FOOL_CARD then
        player:UseActiveItem(CollectibleType.COLLECTIBLE_TELEPORT_2)
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseFoolMisprint, FOOL_CARD)

function Mod:UseMagicianMisprint(card, player)
    if card == MAGICIAN_CARD then
        local data = player:GetData()
        
        -- ✅ If no existing boost, initialize it
        if not data.TempDamageBoost then data.TempDamageBoost = 0 end
        if not data.TempRangeDown then data.TempRangeDown = 0 end
        local dmgBoost  = 5
        local rngDown   = 4

        --[[ if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            dmgBoost = 10
            rngDown = 4
        end ]]


        
        data.TempDamageBoost = data.TempDamageBoost + dmgBoost

        data.TempRangeDown = data.TempRangeDown + rngDown

        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:AddCacheFlags(CacheFlag.CACHE_RANGE)
        player:EvaluateItems()


    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseMagicianMisprint, MAGICIAN_CARD)

function Mod:ResetMagicianOnRoomExit()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if data.TempDamageBoost and data.TempDamageBoost > 0 then
            data.TempDamageBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
        if data.TempRangeDown and data.TempRangeDown > 0 then
            data.TempRangeDown = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_RANGE)
            player:EvaluateItems()
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetMagicianOnRoomExit)

function Mod:ApplyMagicianBoost(player, cacheFlag)
    local data = player:GetData()

    if cacheFlag == CacheFlag.CACHE_DAMAGE and data.TempDamageBoost then
        player.Damage = player.Damage + data.TempDamageBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_RANGE and data.TempRangeDown then
        player.TearRange = player.TearRange / data.TempRangeDown -- ✅ Properly apply temporary Luck boost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyMagicianBoost)

function Mod:UsePriestessMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == PRIESTESS_CARD then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            player:UseActiveItem(CollectibleType.COLLECTIBLE_DOCTORS_REMOTE, UseFlag.USE_NOANIM)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, UseFlag.USE_NOANIM)
        else
            player:UseActiveItem(CollectibleType.COLLECTIBLE_DOCTORS_REMOTE, UseFlag.USE_NOANIM)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UsePriestessMisprint, PRIESTESS_CARD)

function Mod:UseEmpressMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == EMPRESS_CARD then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            player:UseActiveItem(CollectibleType.COLLECTIBLE_BOX_OF_FRIENDS, UseFlag.USE_NOANIM)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_GELLO, UseFlag.USE_NOANIM)
        else
            player:UseActiveItem(CollectibleType.COLLECTIBLE_GELLO, UseFlag.USE_NOANIM)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseEmpressMisprint, EMPRESS_CARD)

function Mod:UseEmperorMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == EMPEROR_CARD then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            local monstro2 = Isaac.Spawn(EntityType.ENTITY_MONSTRO2, 0, 0, player.Position, Vector(0,0), player)
            monstro2:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- ✅ Makes it friendly

            -- **Apply permanent charmed effect (adds the hearts visual)**
            monstro2:AddEntityFlags(EntityFlag.FLAG_CHARM)
        else
            local monstro = Isaac.Spawn(EntityType.ENTITY_MONSTRO, 0, 0, player.Position, Vector(0,0), player)
            monstro:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- ✅ Makes it friendly

            -- **Apply permanent charmed effect (adds the hearts visual)**
            monstro:AddEntityFlags(EntityFlag.FLAG_CHARM)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseEmperorMisprint, EMPEROR_CARD)

function Mod:UseHierophantMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == HIEROPHANT_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)
        for i = 1, 2 do
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_BLACK, position + Vector(10 * i,10 * i), Vector(0,0), nil)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseHierophantMisprint, HIEROPHANT_CARD)

function Mod:UseLoversMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == LOVERS_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)
        for i = 1, 2 do
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_GOLDEN, position + Vector(10 * i,10 * i), Vector(0,0), nil)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseLoversMisprint, LOVERS_CARD)

function Mod:UseChariotMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == CHARIOT_CARD then
        player:UseActiveItem(DEMON_DASH_ITEM, UseFlag.USE_NOANIM)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseChariotMisprint, CHARIOT_CARD)

function Mod:UseJusticeMisprint(card, player)
    local pickupVariants = {
        PickupVariant.PICKUP_HEART,
        PickupVariant.PICKUP_COIN,
        PickupVariant.PICKUP_BOMB,
        PickupVariant.PICKUP_KEY,
        PickupVariant.PICKUP_PILL,
        PickupVariant.PICKUP_TAROTCARD,
        PickupVariant.PICKUP_LIL_BATTERY,
        PickupVariant.PICKUP_TRINKET,
        PickupVariant.PICKUP_CHEST,
        PickupVariant.PICKUP_CHEST,
        PickupVariant.PICKUP_BOMBCHEST,
        PickupVariant.PICKUP_SPIKEDCHEST,
        PickupVariant.PICKUP_ETERNALCHEST,
        PickupVariant.PICKUP_MIMICCHEST,
        PickupVariant.PICKUP_OLDCHEST,
        PickupVariant.PICKUP_WOODENCHEST,
        PickupVariant.PICKUP_MEGACHEST,
        PickupVariant.PICKUP_HAUNTEDCHEST,
        PickupVariant.PICKUP_LOCKEDCHEST,
        PickupVariant.PICKUP_GRAB_BAG,
        PickupVariant.PICKUP_REDCHEST
    }

    local randomVariant = pickupVariants[math.random(#pickupVariants)]
    local randomVariant2 = pickupVariants[math.random(#pickupVariants)]
    local randomVariant3 = pickupVariants[math.random(#pickupVariants)]
    local randomVariant4 = pickupVariants[math.random(#pickupVariants)]
    local room = Game():GetRoom()
    local position =  room:FindFreeTilePosition(player.Position, 100)

    if card == JUSTICE_CARD then
        --for i = 1, 4 do
        Isaac.Spawn(EntityType.ENTITY_PICKUP, randomVariant, 0, position + Vector(10,10), Vector(0,0), nil)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, randomVariant2, 0, position + Vector(20,20), Vector(0,0), nil)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, randomVariant3, 0, position + Vector(30,30), Vector(0,0), nil)
        Isaac.Spawn(EntityType.ENTITY_PICKUP, randomVariant4, 0, position + Vector(40,40), Vector(0,0), nil)

        --end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseJusticeMisprint, JUSTICE_CARD)

function Mod:UseHermitMisprint(card,player)
    if card == HERMIT_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COIN, CoinSubType.COIN_NICKEL, position + Vector(30,30), Vector(0,0), nil)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_KEEPERS_BOX, UseFlag.USE_NOANIM)
        else
            player:UseActiveItem(CollectibleType.COLLECTIBLE_KEEPERS_BOX, UseFlag.USE_NOANIM)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseHermitMisprint, HERMIT_CARD)

function Mod:UseWheelMisprint(card,player)
    if card == WHEEL_CARD then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            player:UseActiveItem(CollectibleType.COLLECTIBLE_METRONOME, UseFlag.USE_NOANIM)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_METRONOME, UseFlag.USE_NOANIM)
        else
            player:UseActiveItem(CollectibleType.COLLECTIBLE_METRONOME, UseFlag.USE_NOANIM)
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseWheelMisprint, WHEEL_CARD)

function Mod:UseStrengthMisprint(card, player)
    if card == STRENGTH_CARD then
        player:AddSoulHearts(1)
        local data = player:GetData()
        
        -- ✅ If no existing boost, initialize it
        if not data.TempDamageBoost then data.TempDamageBoost = 0 end
        if not data.TempRangeBoost then data.TempRangeBoost = 0 end
        if not data.TempTearsBoost then data.TempTearsBoost = 0 end
        if not data.TempShotspeedBoost then data.TempShotspeedBoost = 0 end
        if not data.TempSpeedBoost then data.TempSpeedBoost = 0 end
        if not data.TempLuckBoost then data.TempLuckBoost = 0 end

        local dmgBoost  = 0.2
        local rngBoost   = 450
        local tearsBoost = -0.1
        local shotspeedBoost = 3
        local luckBoost = 1
        local speedBoost = 0.1

        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            local dmgBoost  = 0.2
            local rngBoost   = 450
            local tearsBoost = -0.1
            local shotspeedBoost = 3
            local luckBoost = 1
            local speedBoost = 0.1
        end


        
        data.TempDamageBoost = data.TempDamageBoost + dmgBoost
        data.TempRangeBoost = data.TempRangeBoost + rngBoost
        data.TempTearsBoost = data.TempTearsBoost + tearsBoost
        data.TempShotspeedBoost = data.TempShotspeedBoost + shotspeedBoost
        data.TempSpeedBoost = data.TempSpeedBoost + speedBoost
        data.TempLuckBoost = data.TempLuckBoost + luckBoost

        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:AddCacheFlags(CacheFlag.CACHE_RANGE)
        player:AddCacheFlags(CacheFlag.CACHE_FIREDELAY)
        player:AddCacheFlags(CacheFlag.CACHE_SHOTSPEED)
        player:AddCacheFlags(CacheFlag.CACHE_SPEED)
        player:AddCacheFlags(CacheFlag.CACHE_LUCK)
        player:EvaluateItems()


    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseStrengthMisprint, STRENGTH_CARD)

function Mod:ResetStrengthOnRoomExit()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        local data = player:GetData()

        if data.TempDamageBoost and data.TempDamageBoost > 0 then
            data.TempDamageBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
            player:EvaluateItems()
        end
        if data.TempRangeBoost and data.TempRangeBoost > 0 then
            data.TempRangeBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_RANGE)
            player:EvaluateItems()
        end
        if data.TempTearsBoost and data.TempTearsBoost > 0 then
            data.TempTearsBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_FIREDELAY)
            player:EvaluateItems()
        end
        if data.TempShotspeedBoost and data.TempShotspeedBoost > 0 then
            data.TempShotspeedBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_SHOTSPEED)
            player:EvaluateItems()
        end
        if data.TempSpeedBoost and data.TempSpeedBoost > 0 then
            data.TempSpeedBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_SPEED)
            player:EvaluateItems()
        end
        if data.TempLuckBoost and data.TempLuckBoost > 0 then
            data.TempLuckBoost = nil -- ✅ Reset all stacked boosts
            player:AddCacheFlags(CacheFlag.CACHE_LUCK)
            player:EvaluateItems()
        end

    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Mod.ResetStrengthOnRoomExit)

function Mod:ApplyStrengthBoost(player, cacheFlag)
    local data = player:GetData()

    if cacheFlag == CacheFlag.CACHE_DAMAGE and data.TempDamageBoost then
        player.Damage = player.Damage + data.TempDamageBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_RANGE and data.TempRangeBoost then
        player.TearRange = player.TearRange + data.TempRangeBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_FIREDELAY and data.TempTearsBoost then
        player.FireDelay = player.FireDelay + data.TempTearsBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_SHOTSPEED and data.TempShotspeedBoost then
        player.ShotSpeed = player.ShotSpeed + data.TempShotspeedBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_SPEED and data.TempSpeedBoost then
        player.MoveSpeed = player.MoveSpeed + data.TempSpeedBoost -- ✅ Properly apply temporary Luck boost
    end
    if cacheFlag == CacheFlag.CACHE_LUCK and data.TempLuckBoost then
        player.Luck = player.Luck + data.TempLuckBoost -- ✅ Properly apply temporary Luck boost
    end
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.ApplyStrengthBoost)

function Mod:UseHangedMisprint(card,player)
    if card == HANGED_CARD then

        player:UseActiveItem(CollectibleType.COLLECTIBLE_PINKING_SHEARS, UseFlag.USE_NOANIM)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseHangedMisprint, HANGED_CARD)

function Mod:UseDeathMisprint(card,player)
    if card == DEATH_CARD then

        player:UseActiveItem(PRIDE_ITEM, UseFlag.USE_NOANIM)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseDeathMisprint, DEATH_CARD)

function Mod:UseTemperanceMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == TEMPERANCE_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)

        Isaac.Spawn(EntityType.ENTITY_SLOT, 17, 0, position + Vector(30,30), Vector(0,0), nil)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseTemperanceMisprint, TEMPERANCE_CARD)

function Mod:UseDevilMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == DEVIL_CARD then
        player:UseActiveItem(CollectibleType.COLLECTIBLE_SATANIC_BIBLE, UseFlag.USE_NOANIM)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseDevilMisprint, DEVIL_CARD)

function Mod:UseTowerMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == TOWER_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)

        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_BOMB, 7, position + Vector(30,30), Vector(0,0), nil)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseTowerMisprint, TOWER_CARD)

function Mod:UseStarsMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == STARS_CARD then
        local pedestals = Mod:FindItemPedestalsGlitchEssence()

            if #pedestals == 0 then

                return
            end

            player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)

            for _, pedestal in ipairs(pedestals) do

                pedestal:Remove() -- ✅ Remove original pedestal

                -- ✅ Spawn a TMTRAINER glitched item in its place
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CollectibleType.COLLECTIBLE_TMTRAINER, pedestal.Position, Vector(0,0), player)
            end

            -- ✅ Play effects for clarity
            SFX:Play(SoundEffect.SOUND_EDEN_GLITCH, 1, 0, false, 1)
            player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseStarsMisprint, STARS_CARD)

function Mod:UseMoonMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == MOON_CARD then
        Isaac.ExecuteCommand("goto s.blackmarket.0")
        player:AddCard(1)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseMoonMisprint, MOON_CARD)

function Mod:UseSunMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == SUN_CARD then
        local redhealth = player:GetEffectiveMaxHearts()
        local soulhealth = player:GetSoulHearts()
        local blackhealth = player:GetBlackHearts()
        local bonehealth = player:GetBoneHearts()
        local rothealth = player:GetRottenHearts()
        local damage = (redhealth + soulhealth + blackhealth + bonehealth + rothealth) / 2

        
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            player:TakeDamage(damage - 2, DamageFlag.DAMAGE_RED_HEARTS, EntityRef(player), 0)
        else
            player:TakeDamage(damage, DamageFlag.DAMAGE_RED_HEARTS, EntityRef(player), 0)
        end


        Isaac.ExecuteCommand("goto s.angel")

        local sfx = SFXManager()
        sfx:Play(SoundEffect.SOUND_HOLY) -- Use a fitting sound effect


    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseSunMisprint, SUN_CARD)

function Mod:UseJudgementMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == JUDGEMENT_CARD then
        local room = Game():GetRoom()
        local position =  room:FindFreeTilePosition(player.Position, 100)

        Isaac.Spawn(EntityType.ENTITY_SLOT, 8, 0, position + Vector(30,30), Vector(0,0), nil)

    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseJudgementMisprint, JUDGEMENT_CARD)

function Mod:UseWorldMisprint(card, player)
    --for i = 0, Game():GetNumPlayers() - 1 do
        --local player = Game():GetPlayer(i)
    if card == WORLD_CARD then
        Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_DARKNESS)
        Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_BLIND)
        Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_THE_UNKNOWN)
        Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_MAZE)
        Game():GetLevel():AddCurse(LevelCurse.CURSE_OF_THE_LOST, true)
        if player:HasCollectible(CollectibleType.COLLECTIBLE_TAROT_CLOTH) then
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_DARKNESS)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_BLIND)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_THE_UNKNOWN)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_MAZE)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_THE_LOST)
        else
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_DARKNESS)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_BLIND)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_THE_UNKNOWN)
            Game():GetLevel():RemoveCurses(LevelCurse.CURSE_OF_MAZE)
            Game():GetLevel():AddCurse(LevelCurse.CURSE_OF_THE_LOST, true)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_USE_CARD, Mod.UseWorldMisprint, WORLD_CARD)

----------------------------------------------------------------------------------------
--- Machine code below.

-- Huge credit here to heehoo's card recycler mod for helping me figure out the code below
-- to get the essence collector working right.

local EssenceCollector = {}

EssenceCollector.SLOT_ESSENCE_COLLECTOR = 249376971

function EssenceCollector:onPlayerCollide(player,collider,_low)
    if collider.Type == 6 and collider.Variant == EssenceCollector.SLOT_ESSENCE_COLLECTOR then
        local slotData = collider:GetData()
			if slotData == nil then
				return false
			end
	   
			local slotSprite = collider:GetSprite()
			
			--If the machine isn't busy and the player can use it
			if slotSprite:IsPlaying("Idle") and player:GetSoulHearts() >= 6 then
                player:AddSoulHearts(-6)
                slotSprite:Play("Prize")
            elseif slotSprite:IsPlaying("Idle") and player:GetBlackHearts() >= 6 then
                player:AddBlackHearts(-6)
                slotSprite:Play("Prize")
            end
    end
end

function EssenceCollector:onUpdateCollector()
    local slotsTable = Isaac.FindByType(EntityType.ENTITY_SLOT,EssenceCollector.SLOT_ESSENCE_COLLECTOR,-1,false,false)
    local player = Isaac.GetPlayer(0)
    for k in pairs(slotsTable) do
        --print("working")
        local slot = slotsTable[k]

        local slotData = slot:GetData()
		if slotData == nil then
			return false
		end

        local slotSprite = slot:GetSprite()
        if slotSprite:IsEventTriggered("Prize") then
		    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
	    end

        local slotRNG = slot:GetDropRNG():RandomInt(100)
        local slotRNG2 = slot:GetDropRNG():RandomInt(105)

        if slotSprite:IsEventTriggered("Prize") then
            if slotRNG <= 100 then
                slotSprite:Play("Death")
            end

        end

        if slotSprite:IsEventTriggered("Explosion") then
            if slotRNG2 < 5 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, ISAAC_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 10 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, MAGDALENE_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 15 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, CAIN_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 20 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, JUDAS_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 25 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, BLUE_BABY_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 30 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, EVE_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 35 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, SAMSON_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 40 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, AZAZEL_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 45 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, LAZARUS_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 50 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, EDEN_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 55 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, LOST_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 60 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, LILITH_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 65 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, KEEPER_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 70 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, APOLLYON_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 75 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, FORGOTTEN_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 80 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, BETHANY_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 85 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, JACOB_AND_ESAU_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 90 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, DOMINO_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            elseif slotRNG2 < 95 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, PONTIUS_ESSENCE, player.Position + Vector(32,32), Vector(0,0), nil)
            else
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, ABRAHAM_ESSENCE_ITEM, player.Position + Vector(32,32), Vector(0,0), nil)
            end
			local explosion = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION, 0, slot.Position, Vector(0, 0), nil)
            explosion:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- Prevents explos
            slot:TakeDamage(1, DamageFlag.DAMAGE_EXPLOSION, EntityRef(player), 0)
		end

        if slotSprite:IsFinished("Initiate") then
			slotSprite:Play("Wiggle",true)
		end
			
		if slotSprite:IsFinished("Wiggle") then
			slotSprite:Play("Prize",true)				
		end
			
		if slotSprite:IsFinished("Prize") then
			slotSprite:Play("Idle",true)
		end
			
		if slotSprite:IsFinished("Death") then
			slotSprite:Play("Broken",true)
		end

        if slotSprite:IsPlaying("Broken") == false then
			EssenceCollector:StopExplosionHack(slot)
		end
    end
end




function EssenceCollector:StopExplosionHack(machine)
    local asploded = machine.GridCollisionClass == EntityGridCollisionClass.GRIDCOLL_GROUND
    if not asploded then return end
	
	local machineSprite = machine:GetSprite()
	
	if machineSprite:GetAnimation() ~= "Death" then
		machineSprite:Play("Broken",true)
	end

end

--local currentRoom = Game():GetRoom()

function EssenceCollector:onNewRoom()
    local currentRoom = Game():GetRoom()
    if currentRoom:IsFirstVisit() == true then
        local donTable = Isaac.FindByType(EntityType.ENTITY_SLOT,1,-1,false,false)
				
		for k in pairs(donTable) do
			local replaceChance = math.random(0,101)
					
			--Basic slot machines have a 5% chance to be replaced with essence collectors.
			if replaceChance <= 4 then
				Isaac.Spawn(EntityType.ENTITY_SLOT,EssenceCollector.SLOT_ESSENCE_COLLECTOR,0,donTable[k].Position,Vector(0,0),nil)
				donTable[k]:Remove()
			end
		end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,EssenceCollector.onNewRoom)
Mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, EssenceCollector.onPlayerCollide)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, EssenceCollector.onUpdateCollector)

local Tithe = {}

Tithe.SLOT_TITHE = 249376972

function Tithe:onPlayerCollideTithe(player,collider,_low)
    if collider.Type == 6 and collider.Variant == Tithe.SLOT_TITHE then
        local slotData = collider:GetData()
			if slotData == nil then
				return false
			end
	   
			local slotSprite = collider:GetSprite()
            slotData.LastPlayer = collider:ToPlayer()
			
			--If the machine isn't busy and the player can use it
			if slotSprite:IsPlaying("Idle") and player:GetNumCoins() >= 1 then
                player:AddCoins(-1)
                slotSprite:Play("Prize")
            end
    end
end

--[[ Mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, function(_, slot, collider)
    if slot.Variant == Tithe.SLOT_TITHE and collider:ToPlayer() then
        local data = slot:GetData()
        data.LastPlayer = collider:ToPlayer()
    end
end, EntityType.ENTITY_SLOT) ]]


function Tithe:onUpdateTithe()
    local slotsTable = Isaac.FindByType(EntityType.ENTITY_SLOT,Tithe.SLOT_TITHE,-1,false,false)
    local player = Isaac.GetPlayer(0)
    for k in pairs(slotsTable) do

        --print("working")
        local slot = slotsTable[k]

        local slotData = slot:GetData()

		if slotData == nil then
			return false
		end

        local slotSprite = slot:GetSprite()
        if slotSprite:IsEventTriggered("Prize") then
		    SFXManager():Play(SoundEffect.SOUND_COIN_SLOT,1,0,false,1)
	    end

        local slotRNG = slot:GetDropRNG():RandomInt(100)
        local slotRNG2 = slot:GetDropRNG():RandomInt(100)
        local slotRNG3 = slot:GetDropRNG():RandomInt(100)


        if slotSprite:IsEventTriggered("Prize") then
            print(slotRNG2)
            if slotRNG <= 34 then

                if slotRNG2 < 10 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddItemWisp(CollectibleType.COLLECTIBLE_HOLY_LIGHT, player.Position)
                    end
                elseif slotRNG2 < 20 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddSoulHearts(2)
                    end
                elseif slotRNG2 < 30 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddItemWisp(CollectibleType.COLLECTIBLE_CIRCLE_OF_PROTECTION, player.Position)
                    end
                elseif slotRNG2 < 32 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddItemWisp(CollectibleType.COLLECTIBLE_SACRED_HEART, player.Position)
                    end
                elseif slotRNG2 < 34 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddItemWisp(CollectibleType.COLLECTIBLE_REVELATION, player.Position)
                    end
                elseif slotRNG2 < 45 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddWisp(CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS, player.Position)
                    end
                elseif slotRNG2 < 55 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddWisp(CollectibleType.COLLECTIBLE_HOLY_LIGHT, player.Position)
                    end
                elseif slotRNG2 < 57 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddItemWisp(CollectibleType.COLLECTIBLE_HOLY_MANTLE, player.Position)
                    end
                elseif slotRNG2 < 67 and slotRNG2 >= 57 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        if not player:HasCollectible(CollectibleType.COLLECTIBLE_KEY_PIECE_1) then
                            SFXManager():Play(SoundEffect.SOUND_GOLDENKEY,1,0,false,1)
                            player:AddCollectible(CollectibleType.COLLECTIBLE_KEY_PIECE_1)
                        else
                            SFXManager():Play(SoundEffect.SOUND_HOLY,1,0,false,1)
                            player:AddSoulHearts(2)
                        end
                    end
                elseif slotRNG2 < 77 then
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        if not player:HasCollectible(CollectibleType.COLLECTIBLE_KEY_PIECE_2) then
                            SFXManager():Play(SoundEffect.SOUND_GOLDENKEY,1,0,false,1)
                            player:AddCollectible(CollectibleType.COLLECTIBLE_KEY_PIECE_2)
                        else
                            SFXManager():Play(SoundEffect.SOUND_HOLY,1,0,false,1)
                            player:AddSoulHearts(2)
                        end
                    end
                elseif slotRNG2 < 87 then
                    SFXManager():Play(SoundEffect.SOUND_SUPERHOLY,1,0,false,1)
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddEternalHearts(1)
                    end
                elseif slotRNG2 < 95 then
                    SFXManager():Play(SoundEffect.SOUND_1UP,1,0,false,1)
                    for i = 0, Game():GetNumPlayers() - 1 do
                        local player = Game():GetPlayer(i)
                        player:AddMaxHearts(2)
                    end
                else
                    slotSprite:Play("Death")
                end


            end

        end

        if slotSprite:IsEventTriggered("Explosion") then
            if slotRNG3 < 34 then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, 0, player.Position + Vector(32,32), Vector(0,0), nil)
            else
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_ETERNAL, player.Position + Vector(32,32), Vector(0,0), nil)
            end
			local explosion = Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.BOMB_EXPLOSION, 0, slot.Position, Vector(0, 0), nil)
            explosion:AddEntityFlags(EntityFlag.FLAG_FRIENDLY) -- Prevents explos
            slot:TakeDamage(1, DamageFlag.DAMAGE_EXPLOSION, EntityRef(player), 0)
		end

        if slotSprite:IsFinished("Initiate") then
			slotSprite:Play("Wiggle",true)
		end
			
		if slotSprite:IsFinished("Wiggle") then
			slotSprite:Play("Prize",true)				
		end
			
		if slotSprite:IsFinished("Prize") then
			slotSprite:Play("Idle",true)
		end
			
		if slotSprite:IsFinished("Death") then
			slotSprite:Play("Broken",true)
		end

        if slotSprite:IsPlaying("Broken") == false then
			Tithe:StopExplosionHackTithe(slot)
		end
    end
end

function Tithe:StopExplosionHackTithe(machine)
    local asploded = machine.GridCollisionClass == EntityGridCollisionClass.GRIDCOLL_GROUND
    if not asploded then return end
	
	local machineSprite = machine:GetSprite()
	
	if machineSprite:GetAnimation() ~= "Death" then
		machineSprite:Play("Broken",true)
	end

end

local currentRoomTithe = Game():GetRoom()

function Tithe:onNewRoomTithe()
    print("working")
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if currentRoomTithe:IsFirstVisit() == true and currentRoomTithe:GetType() == RoomType.ROOM_ANGEL and player:HasCollectible(GENEROSITY_ITEM) then
            print("working2")
            local pos = Game():GetRoom():FindFreeTilePosition(Vector(180,210), 100)
            local donTable = Isaac.FindByType(EntityType.ENTITY_EFFECT,5001,-1,false,false)
            Isaac.Spawn(EntityType.ENTITY_SLOT,Tithe.SLOT_TITHE,0,pos,Vector(0,0),nil)
				
		--[[ for k in pairs(donTable) do
			local replaceChance = math.random(0,101)
					
			--Basic slot machines have a 5% chance to be replaced with essence collectors.
			if replaceChance <= 100 then
                --donTable[k]:Remove()
				Isaac.Spawn(EntityType.ENTITY_SLOT,Tithe.SLOT_TITHE,0,Vector(0,0),Vector(0,0),nil)
				
			end
		end ]]
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM,Tithe.onNewRoomTithe)
Mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, Tithe.onPlayerCollideTithe)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Tithe.onUpdateTithe)



----------------------------------------------------------------------------------------
--- Trinket Code Below

function Mod:OnCacheUpdateClover(player, cacheFlag)

    if cacheFlag == CacheFlag.CACHE_LUCK then
        if player:HasTrinket(CLOVER_TRINKET) then
            local luckBonus = 2
            if player:GetTrinketMultiplier(CLOVER_TRINKET) > 1 then
                luckBonus = 4
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                print(luckBonus)
                luckBonus = 4
            end
            if player:GetTrinketMultiplier(CLOVER_TRINKET) > 1 and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                luckBonus = 6
            end
            player.Luck = player.Luck + luckBonus

        end
    end
end

function Mod:OnTrinketPickupClover(player)
    player:AddCacheFlags(CacheFlag.CACHE_LUCK)
    player:EvaluateItems()
end

Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.OnCacheUpdateClover)
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnTrinketPickupClover)

local REROLL_CHANCE = 1
local GOLDEN_MULT = 2
local rerolledPedestals = {} -- Table to track rerolled pedestals

function Mod:OnPickupInitOrb(pickup)
    local orbsfx = SFXManager()

    if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
        for i = 0, Game():GetNumPlayers() - 1 do
            local seed = pickup.InitSeed
            if not rerolledPedestals[seed] then -- Ensures each pedestal rerolls only once
                local player = Isaac.GetPlayer(i) -- Gets the player
                if player:HasTrinket(ORB_TRINKET) then
                    local itemConfig = Isaac.GetItemConfig():GetCollectible(pickup.SubType)
                    if itemConfig and itemConfig.Quality == 0 and itemConfig.ID ~= 238 and itemConfig.ID ~= 239 and itemConfig.ID ~= 668 and itemConfig.ID ~= 626 and itemConfig.ID ~= 627 and itemConfig.ID ~= 550 and itemConfig.ID ~= 552 and itemConfig.ID ~= 328 and itemConfig.ID ~= 327 and itemConfig.ID ~= 551 and itemConfig.ID ~= 633 then
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
end

Mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Mod.OnPickupInitOrb)

--local POLAROID_ID = CollectibleType.COLLECTIBLE_POLAROID
--local NEGATIVE_ID = CollectibleType.COLLECTIBLE_NEGATIVE

function Mod:OnItemPickupPhoto(player)
    if player:HasTrinket(PHOTO_TRINKET) then
        if player:HasCollectible(CollectibleType.COLLECTIBLE_POLAROID) and not player:HasCollectible(CollectibleType.COLLECTIBLE_NEGATIVE) then
            player:AddCollectible(CollectibleType.COLLECTIBLE_NEGATIVE)
        elseif player:HasCollectible(CollectibleType.COLLECTIBLE_NEGATIVE) and not player:HasCollectible(CollectibleType.COLLECTIBLE_POLAROID) then
            player:AddCollectible(CollectibleType.COLLECTIBLE_POLAROID)
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.OnItemPickupPhoto)

function Mod:OnNewLevel()
    local level = Game():GetLevel()

    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i) -- ✅ Loops through all players
        local numhearts = 4

        if player:HasTrinket(CANDLE_TRINKET) then
            local currentCurse = level:GetCurses()
            if player:GetTrinketMultiplier(CANDLE_TRINKET) > 1 then
                numhearts = 8
            end
            if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                numhearts = 8
            end
            if player:GetTrinketMultiplier(CANDLE_TRINKET) > 1 and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                numhearts = 12
            end

            if currentCurse ~= LevelCurse.CURSE_NONE then
                player:AddBlackHearts(numhearts) -- ✅ Grants hearts to Jacob & Esau separately
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Mod.OnNewLevel)

function Mod:OnCoinPickup(pickup, collider)
    if collider:ToPlayer() then -- ✅ Ensure the colliding entity is a player
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)

            if player:HasTrinket(SIN_PENNY_TRINKET) then
                local rng = player:GetCollectibleRNG(SIN_PENNY_TRINKET) -- ✅ Use individual RNG per player
                local chance = 0

                -- ✅ Set chance based on coin type
                if pickup.SubType == CoinSubType.COIN_PENNY or pickup.SubType == CoinSubType.COIN_LUCKYPENNY or pickup.SubType == CoinSubType.COIN_GOLDEN then
                    chance = 0.05
                elseif pickup.SubType == CoinSubType.COIN_DOUBLEPACK then
                    chance = 0.10
                elseif pickup.SubType == CoinSubType.COIN_STICKYNICKEL then
                    chance = 0
                elseif pickup.SubType == CoinSubType.COIN_NICKEL then
                    chance = 0.25
                elseif pickup.SubType == CoinSubType.COIN_DIME then
                    chance = 0.37
                end

                -- ✅ Apply golden trinket multiplier
                if player:HasTrinket(SIN_PENNY_TRINKET + 32768) then
                    chance = math.min(1, chance * 2) -- ✅ Doubles chance, caps at 100%
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 2)
                end
                if player:HasTrinket(SIN_PENNY_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 3)
                end

                -- ✅ Roll RNG for black heart drop
                if rng:RandomFloat() < chance then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_BLACK, pickup.Position, Vector(0,0), nil)
                    print(player:GetName(), "triggered a Black Heart drop!")
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnCoinPickup, PickupVariant.PICKUP_COIN)

function Mod:OnCoinPickupBone(pickup, collider)
    if collider:ToPlayer() then -- ✅ Ensure the colliding entity is a player
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)

            if player:HasTrinket(BONE_PENNY_TRINKET) then
                local rng = player:GetCollectibleRNG(BONE_PENNY_TRINKET) -- ✅ Use individual RNG per player
                local chance = 0

                -- ✅ Set chance based on coin type
                if pickup.SubType == CoinSubType.COIN_PENNY or pickup.SubType == CoinSubType.COIN_LUCKYPENNY or pickup.SubType == CoinSubType.COIN_GOLDEN then
                    chance = 0.025
                elseif pickup.SubType == CoinSubType.COIN_DOUBLEPACK then
                    chance = 0.05
                elseif pickup.SubType == CoinSubType.COIN_NICKEL then
                    chance = 0.125
                elseif pickup.SubType == CoinSubType.COIN_STICKYNICKEL then
                    chance = 0
                elseif pickup.SubType == CoinSubType.COIN_DIME then
                    chance = 0.185
                end

                -- ✅ Apply golden trinket multiplier
                if player:HasTrinket(BONE_PENNY_TRINKET + 32768) then
                    chance = math.min(1, chance * 2) -- ✅ Doubles chance, caps at 100%
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 2)
                end
                if player:HasTrinket(BONE_PENNY_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 3)
                end

                -- ✅ Roll RNG for bone heart drop
                if rng:RandomFloat() < chance then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_BONE, pickup.Position, Vector(0,0), nil)
                    print(player:GetName(), "triggered a Bone Heart drop!")
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnCoinPickupBone, PickupVariant.PICKUP_COIN)

function Mod:OnCoinPickupRot(pickup, collider)
    if collider:ToPlayer() then -- ✅ Ensure the colliding entity is a player
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)

            if player:HasTrinket(YUCK_PENNY_TRINKET) then
                local rng = player:GetCollectibleRNG(YUCK_PENNY_TRINKET) -- ✅ Use individual RNG per player
                local chance = 0

                -- ✅ Set chance based on coin type
                if pickup.SubType == CoinSubType.COIN_PENNY or pickup.SubType == CoinSubType.COIN_LUCKYPENNY or pickup.SubType == CoinSubType.COIN_GOLDEN then
                    chance = 0.05
                elseif pickup.SubType == CoinSubType.COIN_DOUBLEPACK then
                    chance = 0.10
                elseif pickup.SubType == CoinSubType.COIN_NICKEL then
                    chance = 0.25
                elseif pickup.SubType == CoinSubType.COIN_STICKYNICKEL then
                    chance = 0
                elseif pickup.SubType == CoinSubType.COIN_DIME then
                    chance = 0.37
                end

                -- ✅ Apply golden trinket multiplier
                if player:HasTrinket(YUCK_PENNY_TRINKET + 32768) then
                    chance = math.min(1, chance * 2) -- ✅ Doubles chance, caps at 100%
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 2)
                end
                if player:HasTrinket(YUCK_PENNY_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 3)

                end

                -- ✅ Roll RNG for Rotten Heart drop
                if rng:RandomFloat() < chance then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_ROTTEN, pickup.Position, Vector(0,0), nil)
                    print(player:GetName(), "triggered a Rotten Heart drop!")
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnCoinPickupRot, PickupVariant.PICKUP_COIN)

function Mod:ReplaceTearWithLaser(tear)
    local laserchance = 0.05
    local player = tear.SpawnerEntity and tear.SpawnerEntity:ToPlayer()

    if player and player:HasTrinket(TECH_TRINKET) then
        if player:GetTrinketMultiplier(TECH_TRINKET) > 1 then
            laserchance = 0.1
        end
        if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            laserchance = 0.1
        end
        if player:HasTrinket(TECH_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            laserchance = 0.15
        end
        local luck = player.Luck
        local chance = 0.1 + (luck * laserchance) -- ✅ Base 10% chance + 5% per luck point

        if math.random() < chance then
            Mod:FireLaserInstead(player, tear.Position, tear.Velocity) -- ✅ Replace tear with a laser
            tear:Remove() -- ✅ Remove original tear
            print("Laser fired instead of tear!")
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR, Mod.ReplaceTearWithLaser)

function Mod:FireLaserInstead(player, position, velocity)
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i)
        if player:HasTrinket(TECH_TRINKET) then
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
                LaserVariant.THIN_RED,
                0,
                player.Position,
                Vector.Zero,
                player
            ):ToLaser()

            if laserRing then -- Ensure the laser was spawned successfully
                laserRing.PositionOffset = Vector(0, -20) -- Adjust Y value as needed

                laserRing.AngleDegrees = directionazazel:GetAngleDegrees() -- Rotate laser to match direction
                laserRing.CollisionDamage = player.Damage -- Set laser damage
                laserRing.Timeout = 1 -- Laser duration
                --laserRing:AddTearFlags(TearFlags.TEAR_HOMING) -- Apply homing effect
                laserRing.Parent = player -- Prevent self-damage
            end
        end
    end
end

local loudSoundPool = {
    SoundEffect.SOUND_BLOOD_LASER, -- Example: Loud laser sound
    SoundEffect.SOUND_DOGMA_ANGEL_TRANSFORM, -- Example: Strong beep
    SoundEffect.SOUND_EXPLOSION_STRONG, -- Example: Massive explosion
    SoundEffect.SOUND_SATAN_BLAST -- Example: Creepy siren
}


function Mod:devilNoisemaker(player, cacheFlag)
    if player:HasTrinket(NOISEMAKER_TRINKET) then
        local mult = 1
        if player:GetTrinketMultiplier(NOISEMAKER_TRINKET) > 1 then
            mult = 2
        end
        if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            mult = 2
        end
        if player:HasTrinket(NOISEMAKER_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            mult = 3
        end
        if cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + (0.25 * mult)
        end
        if cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay - mult
        end
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = (player.Damage + mult) * 1.25
        end
        if cacheFlag == CacheFlag.CACHE_RANGE then
            player.TearRange = player.TearRange + (150 * mult)
        end
        if cacheFlag == CacheFlag.CACHE_SHOTSPEED then
            player.ShotSpeed = player.ShotSpeed + (0.3 * mult)
        end
        if cacheFlag == CacheFlag.CACHE_LUCK then
            player.Luck = player.Luck + mult
        end
    end
end


Mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, Mod.devilNoisemaker)

local soundTimer = 0

function Mod:RandomLoudSounds(player)
    if player:HasTrinket(NOISEMAKER_TRINKET) then
        soundTimer = soundTimer - 1
        local volume = 2.5
        if player:GetTrinketMultiplier(NOISEMAKER_TRINKET) > 1 then
            volume = 2
        end
        if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            volume = 2
        end
        if player:HasTrinket(NOISEMAKER_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
            volume = 3
        end

        if soundTimer <= 0 then
            -- ✅ Pick a random sound from the pool
            local randomSound = loudSoundPool[math.random(#loudSoundPool)]

            -- ✅ Play the sound at maximum volume
            local sfx = SFXManager()
            sfx:Play(randomSound, 2.0, 0, false, volume) -- LOUD with pitch boost

            --soundTimer = math.random(30, 120) -- ✅ Random delay between sounds (adjust as needed)
            soundTimer = 2
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.RandomLoudSounds)

function Mod:OnCoinPickupKing(pickup, collider)
    if collider:ToPlayer() then -- ✅ Ensure the colliding entity is a player
        for i = 0, Game():GetNumPlayers() - 1 do
            local player = Game():GetPlayer(i)

            if player:HasTrinket(KING_TRINKET) then
                local rng = player:GetCollectibleRNG(KING_TRINKET) -- ✅ Use individual RNG per player
                local chance = 0

                -- ✅ Set chance based on coin type
                if pickup.SubType == CoinSubType.COIN_PENNY or pickup.SubType == CoinSubType.COIN_LUCKYPENNY or pickup.SubType == CoinSubType.COIN_GOLDEN then
                    chance = 0.001
                elseif pickup.SubType == CoinSubType.COIN_DOUBLEPACK then
                    chance = 0.002
                elseif pickup.SubType == CoinSubType.COIN_NICKEL then
                    chance = 0.005
                elseif pickup.SubType == CoinSubType.COIN_STICKYNICKEL then
                    chance = 0
                elseif pickup.SubType == CoinSubType.COIN_DIME then
                    chance = 0.01
                end

                -- ✅ Apply golden trinket multiplier
                if player:HasTrinket(KING_TRINKET + 32768) then
                    chance = math.min(1, chance * 2) -- ✅ Doubles chance, caps at 100%
                end
                if player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 2)
                end
                if player:HasTrinket(KING_TRINKET + 32768) and player:HasCollectible(CollectibleType.COLLECTIBLE_MOMS_BOX) then
                    chance = math.min(1, chance * 3)
                end

                -- ✅ Roll RNG for bone heart drop
                if rng:RandomFloat() < chance then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, 0, pickup.Position, Vector(0,0), nil)
                    player:TryRemoveTrinket(KING_TRINKET)
                end
            end
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_COLLISION, Mod.OnCoinPickupKing, PickupVariant.PICKUP_COIN)

function Mod:OnPlayerDamagedNil(entity, amount, flags, source, countdown)
    if entity.Type == EntityType.ENTITY_PLAYER then
        local player = entity:ToPlayer()

        if player:HasTrinket(NIL_VALUE_ITEM) then
            -- Trigger Dataminer effect manually
            SFXManager():Play(SoundEffect.SOUND_EDEN_GLITCH)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_DATAMINER, false, false)
            
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, Mod.OnPlayerDamagedNil)

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
    DOMINO_ESSENCE,
    PONTIUS_ESSENCE,
    LOST_ESSENCE,
    JACOB_AND_ESAU_ESSENCE,
    FORGOTTEN_ESSENCE,
    ABRAHAM_ESSENCE_ITEM
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
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i) -- Try different indices if needed
        if player:HasTrinket(RELIQUARY_TRINKET) then
            --local game = Game()
            local level = game:GetLevel()
            local TELEPORT_ROOM_ID = -3 -- Replace with your special room ID
            Isaac.ExecuteCommand("goto s.library.6969")
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, OnTrinketPickup)

function OnNewRoom()
    for i = 0, Game():GetNumPlayers() - 1 do
        local player = Game():GetPlayer(i) -- ✅ Loop through all players

        if player:HasTrinket(RELIQUARY_TRINKET) then
            player:TryRemoveTrinket(RELIQUARY_TRINKET)
        end
    end
    --local player = Isaac.GetPlayer(0)
    --if player:HasTrinket(RELIQUARY_TRINKET) then
    --    player:TryRemoveTrinket(RELIQUARY_TRINKET)
    --end
end

Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, OnNewRoom)

----------------------------------------------------------------------------------------
--- Code For Chests Below

local Chest = {}

Chest.CHEST_ESSENCE = 249376973

function Chest:onPlayerCollideChest(player,collider,_low)
    if collider.Type == 5 and collider.Variant == Chest.CHEST_ESSENCE then
        local slotData = collider:GetData()
			if slotData == nil then
				return false
			end
	   
			local slotSprite = collider:GetSprite()
            slotData.LastPlayer = collider:ToPlayer()
			
			--If the machine isn't busy and the player can use it
			if slotSprite:IsPlaying("Idle") and player:HasTrinket(TrinketType.TRINKET_PAPER_CLIP) then
                slotSprite:Play("Open")
                --player:AddKeys(-1)
            elseif slotSprite:IsPlaying("Idle") and player:GetNumCoins() >= 1 and player:HasCollectible(CollectibleType.COLLECTIBLE_PAY_TO_PLAY) then
                slotSprite:Play("Open")
                player:AddCoins(-1)
            elseif slotSprite:IsPlaying("Idle") and player:GetNumKeys() >= 1 then
                slotSprite:Play("Open")
                player:AddKeys(-1)
            end
    end
end


function Chest:onUpdateChest()
    local slotsTable = Isaac.FindByType(EntityType.ENTITY_PICKUP,Chest.CHEST_ESSENCE,-1,false,false)
    local player = Isaac.GetPlayer(0)
    for k in pairs(slotsTable) do

        --print("working")
        local slot = slotsTable[k]

        local slotData = slot:GetData()

		if slotData == nil then
			return false
		end

        local slotSprite = slot:GetSprite()
        if slotSprite:IsEventTriggered("Opened") then
		    SFXManager():Play(SoundEffect.SOUND_CHEST_OPEN,1,0,false,1)
	    end

        local slotRNG = slot:GetDropRNG():RandomInt(100)
        local slotRNG2 = slot:GetDropRNG():RandomInt(100)
        local slotRNG3 = slot:GetDropRNG():RandomInt(100)


        if slotSprite:IsEventTriggered("Opened") then
            print(slotRNG2)
            if slotRNG <= 100 then

                if slotRNG2 < 10 then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, RELIQUARY_TRINKET, slot.Position, Vector(0,0), nil)
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, slot.Position, Vector(0,0), player)
                    slotSprite:Play("Opened")
                    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
                elseif slotRNG2 < 80 then
                    if slotRNG3 < 5 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 81, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 10 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 82, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 15 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 83, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 20 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 84, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 25 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 85, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 30 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 86, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 35 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 87, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 40 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 88, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 45 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 89, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 50 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 90, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 55 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 91, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 60 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 92, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 65 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 93, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 70 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 94, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 75 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 95, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 80 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 96, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 85 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, 97, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 90 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, SOUL_DOMINO, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 95 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, SOUL_PONTIUS, slot.Position, Vector(0,0), nil)
                    elseif slotRNG3 < 100 then
                        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, SOUL_ABRAHAM, slot.Position, Vector(0,0), nil)
                    end
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, slot.Position, Vector(0,0), player)
                    slotSprite:Play("Opened")
                    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
                elseif slotRNG2 < 90 then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_SOUL, slot.Position, Vector(0,0), nil)
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_SOUL, slot.Position, Vector(0,0), nil)
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, slot.Position, Vector(0,0), player)
                    slotSprite:Play("Opened")
                    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
                elseif slotRNG2 < 100 then
                    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_SOUL, slot.Position, Vector(0,0), nil)
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, slot.Position, Vector(0,0), player)
                    slotSprite:Play("Opened")
                    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
                else
                    Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.POOF01, 0, slot.Position, Vector(0,0), player)
                    slotSprite:Play("Opened")
                    SFXManager():Play(SoundEffect.SOUND_DIVINE_INTERVENTION,1,0,false,1)
                end


            end

        end

        if slotSprite:IsFinished("Idle") then
			slotSprite:Play("Open",true)
		end
			
		if slotSprite:IsFinished("Open") then
			slotSprite:Play("Opened",true)				
		end
        
        if slotSprite:IsFinished("Opened") then
			slot:Remove()			
		end
    end
end

--[[ function Chest:RemoveTheChest(machine)
    local asploded = machine.GridCollisionClass == EntityGridCollisionClass.GRIDCOLL_GROUND
    if not asploded then return end
	
	local machineSprite = machine:GetSprite()
	
	if machineSprite:GetAnimation() ~= "Opened" then
		machineSprite:Play("Opened",true)
	end

end ]]

function Chest:onNewRoomChest()
    local currentRoom = Game():GetRoom()
    if currentRoom:IsFirstVisit() == true then
        local donTable = Isaac.FindByType(EntityType.ENTITY_PICKUP,360,-1,false,false)
				
		for k in pairs(donTable) do
			local replaceChance = math.random(0,101)
					
			if replaceChance <= 30 then
				Isaac.Spawn(EntityType.ENTITY_PICKUP,Chest.CHEST_ESSENCE,0,donTable[k].Position,Vector(0,0),nil)
				donTable[k]:Remove()
			end
		end
    end
end


Mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, Chest.onNewRoomChest)
Mod:AddCallback(ModCallbacks.MC_PRE_PLAYER_COLLISION, Chest.onPlayerCollideChest)
Mod:AddCallback(ModCallbacks.MC_POST_UPDATE, Chest.onUpdateChest)
