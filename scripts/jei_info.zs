import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.literal(s));	
}

i(<item:chalk:white_chalk>, game.localize("jei_info.musketeer.white_chalk"));
i(<item:map_atlases:atlas>, game.localize("jei_info.musketeer.atlas"));
i(<item:minecraft:ancient_debris>, game.localize("jei_info.musketeer.ancient_debris"));
i(<item:minecraft:blackstone>, game.localize("jei_info.musketeer.blackstone"));
i(<item:minecraft:blaze_powder>, game.localize("jei_info.musketeer.blaze_powder"));
i(<item:minecraft:brewing_stand>, game.localize("jei_info.musketeer.brewing_stand"));
i(<item:minecraft:cactus>, game.localize("jei_info.musketeer.cactus"));
i(<item:minecraft:crimson_fungus>, game.localize("jei_info.musketeer.crimson_fungus"));
i(<item:minecraft:dirt_path>, game.localize("jei_info.musketeer.path"));
i(<item:minecraft:emerald>, ("jei_info.musketeer.emerald"));
i(<item:minecraft:ender_eye>, game.localize("jei_info.musketeer.ender_eye"));
i(<item:minecraft:glowstone_dust>, game.localize("jei_info.musketeer.glowstone_dust"));
i(<item:minecraft:gravel>, game.localize("jei_info.musketeer.gravel"));
i(<item:minecraft:iron_ingot>, game.localize("jei_info.musketeer.iron_ingot"));
i(<item:minecraft:leather_horse_armor>, game.localize("jei_info.musketeer.leather_horse_armor"));
i(<item:minecraft:netherrack>, game.localize("jei_info.musketeer.netherrack"));
i(<item:minecraft:oak_slab>, game.localize("jei_info.musketeer.variants"));
i(<item:minecraft:red_sand>, game.localize("jei_info.musketeer.red_sand"));
i(<item:minecraft:sand>, game.localize("jei_info.musketeer.sand"));
i(<item:minecraft:tnt>, game.localize("jei_info.musketeer.tnt"));
i(<item:minecraft:warped_fungus>, game.localize("jei_info.musketeer.warped_fungus"));
i(<item:minecraft:wither_skeleton_skull>, game.localize("jei_info.musketeer.wither_skeleton_skull"));
i(<item:moreminecarts:lightspeed_powered_rail>, game.localize("jei_info.musketeer.lightspeed_powered_rail"));
i(<item:moreminecarts:lightspeed_rail>, game.localize("jei_info.musketeer.lightspeed_rail"));
i(<item:quark:diamond_heart>, game.localize("jei_info.musketeer.diamond_heart"));
i(<item:quark:hammer>, game.localize("jei_info.musketeer.hammer"));
i(<item:quark:myalite>, game.localize("jei_info.musketeer.myalite"));
i(<item:supplementaries:wrench>, game.localize("jei_info.musketeer.wrench"));
i(<item:storagedrawers:oak_full_drawers_1>, game.localize("jei_info.musketeer.drawers"));