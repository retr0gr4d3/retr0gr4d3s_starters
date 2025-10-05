dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
SetRandomSeed( x, y )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

-- Set wand stats
ComponentSetValue( ability_comp, "ui_name", "Zappy Dev Wand" )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", 1 )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", 20 )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", 0 )
ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", 0 )

ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", 1 )

ComponentSetValue( ability_comp, "mana_max", 20000 )
ComponentSetValue( ability_comp, "mana", 20000 )
ComponentSetValue( ability_comp, "mana_charge_speed", 20000 )

-- Add spells
AddGunAction( entity_id, "HOMING" )
AddGunAction( entity_id, "SCATTER_2" )
AddGunAction( entity_id, "CHAIN_BOLT" )
AddGunAction( entity_id, "CHAIN_BOLT" )
AddGunAction( entity_id, "CHAIN_BOLT" )
AddGunAction( entity_id, "CHAIN_BOLT" )
