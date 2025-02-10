loadout_list =
{
	{
		name = "a Seducer",
		folder = "seducer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff60a1a2,
		cape_color_edge = 0xff3c696a,
		items = 
		{
			"mods/starting_loadouts/files/summoner/wands/wand_1.xml",
			"mods/starting_loadouts/files/summoner/wands/wand_2.xml",
			"data/entities/items/pickup/potion_water.xml",
			{ 
			options = { "data/entities/items/pickup/egg_fire.xml", "data/entities/items/pickup/egg_red.xml", "data/entities/items/pickup/egg_monster.xml", "data/entities/items/pickup/egg_slime.xml" },
			amount = 3,
			},
		},
		perks =
		{
			"PLAGUE_RATS",
			"HOMUNCULUS",
		},
	}
}