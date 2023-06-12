var air = <item:minecraft:air>;
var activator_rail = <item:minecraft:activator_rail>;
var amethyst_shard = <item:minecraft:amethyst_shard>;
var blackstone = <item:minecraft:blackstone>;
var brewing_stand = <item:minecraft:brewing_stand>;
var chiseled_stone_bricks = <item:minecraft:chiseled_stone_bricks>;
var copper_ingot = <item:minecraft:copper_ingot>;
var crimson_fungus = <item:minecraft:crimson_fungus>;
var crimson_nylium = <item:minecraft:crimson_nylium>;
var detector_rail = <item:minecraft:detector_rail>;
var end_rod = <item:minecraft:end_rod>;
var ender_eye = <item:minecraft:ender_eye>;
var ender_pearl = <item:minecraft:ender_pearl>;
var gilded_blackstone = <item:minecraft:gilded_blackstone>;
var glow_berries = <item:minecraft:glow_berries>;
var glowstone_dust = <item:minecraft:glowstone_dust>;
var gold_nugget = <item:minecraft:gold_nugget>;
var iron_nugget = <item:minecraft:iron_nugget>;
var lodestone = <item:minecraft:lodestone>;
var magma_cream = <item:minecraft:magma_cream>;
var monster_mash = <item:minecraft:blaze_rod>;
var myalite = <item:quark:myalite>;
var nether_brick = <item:minecraft:nether_brick>;
var nether_brick_fence = <item:minecraft:nether_brick_fence>;
var nether_brick_fence_gate = <item:quark:nether_brick_fence_gate>;
var nether_brick_slab = <item:minecraft:nether_brick_slab>;
var nether_bricks = <item:minecraft:nether_bricks>;
var netherrack = <item:minecraft:netherrack>;
var powered_rail = <item:minecraft:powered_rail>;
var purpur_block = <item:minecraft:purpur_block>;
var rail = <item:minecraft:rail>;
var redstone = <item:minecraft:redstone>;
var redstone_torch = <item:minecraft:redstone_torch>;
var sands = <tag:items:minecraft:sand>;
var soul_sand = <item:minecraft:soul_sand>;
var soul_soil = <item:minecraft:soul_soil>;
var stick = <item:minecraft:stick>;
var stone_pressure_plate = <item:minecraft:stone_pressure_plate>;
var stone_tool_material = <tag:items:minecraft:stone_tool_materials>;
var warped_fungus = <item:minecraft:warped_fungus>;
var warped_nylium = <item:minecraft:warped_nylium>;

// Lodestone but good
craftingTable.remove(lodestone);
craftingTable.addShaped("lodestone_but_good",
		lodestone,
		[[chiseled_stone_bricks, chiseled_stone_bricks, chiseled_stone_bricks],
		 [chiseled_stone_bricks, amethyst_shard, chiseled_stone_bricks],
		 [chiseled_stone_bricks, chiseled_stone_bricks, chiseled_stone_bricks]]);


// Gilded Blackstone
craftingTable.addShapeless("gilded_blackstone", gilded_blackstone, [blackstone, gold_nugget]);

// Rails make More
craftingTable.remove(rail);
craftingTable.addShaped("rail_more",
		rail * 8,
		[[iron_nugget, air, iron_nugget],
		 [iron_nugget, stick, iron_nugget],
		 [iron_nugget, air, iron_nugget]]);

// Powered Rail but good
craftingTable.remove(powered_rail);
craftingTable.addShaped("powered_rail_but_good",
		powered_rail * 6,
		[[rail, copper_ingot, rail],
		 [rail, redstone, rail],
		 [rail, copper_ingot, rail]]);

// Detector Rail but good
craftingTable.remove(detector_rail);
craftingTable.addShapeless("detector_rail_but_good", detector_rail, [rail, redstone, stone_pressure_plate]);

// Activator Rail but good
craftingTable.remove(activator_rail);
craftingTable.addShapeless("activator_rail_but_good", activator_rail, [rail, redstone_torch]);

// Nylium Recipes
craftingTable.addShapeless("crimson_nylium_craft", crimson_nylium, [crimson_fungus, netherrack]);
craftingTable.addShapeless("warped_nylium_craft", warped_nylium, [warped_fungus, netherrack]);

// Monster Mash for Eye of the Ancients
craftingTable.remove(ender_eye);
craftingTable.addShapeless("ender_eye_mash", ender_eye, [ender_pearl, monster_mash]);

// Soul Sand and Soul Soil
craftingTable.addShapeless("soul_sand_mash", soul_sand * 8, [sands, sands, sands, sands, sands, sands, sands, sands, monster_mash]);
furnace.addRecipe("soul_soil_smelt", soul_soil, soul_sand, 0.5, 200);

// Glow Berries to Glow Dust
craftingTable.addShapeless("glow_berry_dusting", glowstone_dust * 8, [glow_berries, glow_berries, glow_berries, glow_berries]);

// Copper Brewing Stand
craftingTable.remove(brewing_stand);
craftingTable.addShaped("copper_brewing_stand", 
		brewing_stand, 
		[[air, copper_ingot, air],
		[air, copper_ingot, air],
		[stone_tool_material, stone_tool_material, stone_tool_material]]);

// Proper Purpur Rod
craftingTable.remove(end_rod);
craftingTable.addShaped("end_rod_proper", 
		end_rod, 
		[[glowstone_dust],
		[glowstone_dust],
		[purpur_block]]);
craftingTable.addShaped("end_rod_horiz", // workaround an emi visual bug
		end_rod, 
		[[glowstone_dust, glowstone_dust, purpur_block]]);

// Myaliate purpur smelt
craftingTable.remove(purpur_block);
furnace.addRecipe("myalite_to_purpur", purpur_block, myalite, 0.1, 200);

// Changed Nether Brick recipes
for type in game.recipeTypes {
	type.remove(nether_brick);
	type.removeByInput(nether_brick);
}

furnace.addRecipe("smelt_nether_bricks", nether_bricks, netherrack, 0.1, 200);
craftingTable.addShaped("nether_brick_fence_brickless", 
		nether_brick_fence * 3, 
		[[nether_bricks, nether_brick_slab, nether_bricks],
		[nether_bricks, nether_brick_slab, nether_bricks]]);
craftingTable.addShaped("nether_brick_fence_gate_brickless", 
		nether_brick_fence_gate, 
		[[nether_brick_slab, nether_bricks, nether_brick_slab],
		[nether_brick_slab, nether_bricks, nether_brick_slab]]);

// Remove Magma Cream recipe to prevent looping with magma powder
craftingTable.remove(magma_cream);