--[[ local LUCKY_DICE_ID = Isaac.GetItemIdByName("Lucky Coin")
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
--local COSTUME_FINAL_JUDGMENT = Isaac.GetCostumeIdByPath("gfx/characters/judgement.anm2")

local AMP_ITEM = Isaac.GetItemIdByName("Amplifier")
local FAMILIAR_VARIANT_AMP = Isaac.GetEntityVariantByName("Amplifier")
--local AMP_BEAM = Isaac.GetEntityVariantByName("Amplifier Beam")
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
local PHALANX_ITEM = Isaac.GetItemIdByName("Phalanx")
local DEFENSE_TECH_ITEM = Isaac.GetItemIdByName("Defense Tech")
local NECROMANCY_ITEM = Isaac.GetItemIdByName("Necromancy")
local MONEY_ITEM = Isaac.GetItemIdByName("Become Back My Money")
local PAINT_ITEM = Isaac.GetItemIdByName("Gold Spray Paint")
local GLITCH_ITEM = Isaac.GetItemIdByName("'/<<L7")
local PROTO_ITEM = Isaac.GetItemIdByName("Proto-Tech")
local FRED_ITEM = Isaac.GetItemIdByName("Fred The Friendly Gaper")
local SIN_PENNY_TRINKET = Isaac.GetTrinketIdByName("Sinful Penny")
local BONE_PENNY_TRINKET = Isaac.GetTrinketIdByName("Skele-Penny")
local YUCK_PENNY_TRINKET = Isaac.GetTrinketIdByName("Yuck Penny")
local DEBUG_ITEM = Isaac.GetItemIdByName("Debug Console")
local TOAST_ITEM = Isaac.GetItemIdByName("Toast Sandwich")
local GLITCH_DICE_ITEM = Isaac.GetItemIdByName("D-=777'L")
local GLITCH_DICE_ITEM_2 = Isaac.GetItemIdByName(" D-=777'L ")
local GLITCH_ESSENCE = Isaac.GetItemIdByName("64 36")
local LUCKY_PENNY_ITEM = Isaac.GetItemIdByName("Sack of Lucky Pennies")
local TOOLBELT_ITEM = Isaac.GetItemIdByName("Toolbelt")
local MOON_ITEM = Isaac.GetItemIdByName("Deep Orbit")
local FAMILIAR_MOON = Isaac.GetEntityVariantByName("Deep Orbit")
local FLUX_ITEM = Isaac.GetItemIdByName("Broken Flux Capacitor")
local FAMILIAR_FLUX = Isaac.GetEntityVariantByName("Broken Flux Capacitor") ]]