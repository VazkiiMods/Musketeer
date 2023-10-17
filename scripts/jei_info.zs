import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.translatable("jei_info.musketeer." + s));	
}

i(<item:chalk:white_chalk>, "white_chalk");
i(<item:map_atlases:atlas>, "atlas");
i(<item:minecraft:ancient_debris>, "ancient_debris");
i(<item:minecraft:blackstone>, "blackstone");
i(<item:minecraft:blaze_powder>, "blaze_powder");
i(<item:minecraft:brewing_stand>, "brewing_stand");
i(<item:minecraft:cactus>, "cactus");
i(<item:minecraft:crimson_fungus>, "fungus");
i(<item:minecraft:dirt_path>, "path");
i(<item:minecraft:emerald>, "emerald");
i(<item:minecraft:ender_eye>, "ender_eye");
i(<item:minecraft:glowstone_dust>, "glowstone_dust");
i(<item:minecraft:gravel>, "dripping");
i(<item:minecraft:iron_ingot>, "iron_ingot");
i(<item:minecraft:leather_horse_armor>, "leather_horse_armor");
i(<item:minecraft:netherrack>, "netherrack");
i(<item:minecraft:red_sand>, "dripping");
i(<item:minecraft:sand>, "dripping");
i(<item:minecraft:tnt>, "tnt");
i(<item:minecraft:warped_fungus>, "fungus");
i(<item:minecraft:wither_skeleton_skull>, "wither_skeleton_skull");
i(<item:moreminecarts:lightspeed_powered_rail>, "lightspeed_powered_rail");
i(<item:moreminecarts:lightspeed_rail>, "lightspeed_rail");
i(<item:quark:diamond_heart>, "diamond_heart");
i(<item:quark:hammer>, "hammer");
i(<item:quark:myalite>, "myalite");
i(<item:supplementaries:wrench>, "wrench");
i(<item:storagedrawers:oak_full_drawers_1>, "drawers");