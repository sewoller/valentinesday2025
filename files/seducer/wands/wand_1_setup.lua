dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

function get_random_from( target )
	local rnd = Random(1, #target)
	
	return tostring(target[rnd])
end

function get_random_between_range( target )
	local minval = target[1]
	local maxval = target[2]
	
	return Random(minval, maxval)
end

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
SetRandomSeed( x, y )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

local mana_max = get_random_between_range( {500,1200} )
local deck_capacity = 14

ComponentSetValue( ability_comp, "ui_name", "seducer_wand" )

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", 5 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", 5 )
ComponentSetValue( ability_comp, "mana_charge_speed", 180 )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", 1 )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", 14 )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", 0 )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", .75 )

ComponentSetValue( ability_comp, "mana_max", mana_max )
ComponentSetValue( ability_comp, "mana", mana_max )


AddGunAction( entity_id, "CHAIN_BOLT" )
