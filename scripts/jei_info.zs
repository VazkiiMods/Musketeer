import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

function i(m as IItemStack, s as string) as void {
	Jei.addIngredientInformation(m, Component.literal(s));	
}

i(<item:chalk:white_chalk>, "Can be used to jot down arrows on blocks so you never lose your way. Try dyeing it too.");
i(<item:minecraft:ancient_debris>, "Replaces Stronghold End Portals and Ancient City 'Portals\' now.");
i(<item:minecraft:blackstone>, "Now spawns deep underground.");
i(<item:minecraft:blaze_powder>, "Formerly Blaze Powder. Same purpose, different recipe.");
i(<item:minecraft:brewing_stand>, "Nether Wart is removed, use Glow Berries to start the brewing process instead.");
i(<item:minecraft:crimson_fungus>, "One is guaranteed in every Ruined Nether Portal chest.");
i(<item:minecraft:emerald>, "Villagers will now require proper lodging to access reasonable prices, to prevent trading hall abduction. Healing a villager from Zombification multiple times will also not continuanlly lower prices.");
i(<item:minecraft:ender_eye>, "Formerly Eye of Ender - now finds Ancient Cities.");
i(<item:minecraft:glowstone_dust>, "Formerly Glowstone Dust - Same purpose, different recipe.");
i(<item:minecraft:iron_ingot>, "Iron Golems no longer drop Iron Ingots, try Toretoises instaed.");
i(<item:minecraft:leather_horse_armor>, "Horses now always pass on their traits positively to offspring, and will never have children with worse parameters, give breeding a try sometime!");
i(<item:minecraft:netherrack>, "Can be gotten by attempting to light up a portal.");
i(<item:minecraft:warped_fungus>, "One is guaranteed in every Ruined Nether Portal chest.");
i(<item:minecraft:wither_skeleton_skull>, "Formerly Wither Skeleton Skull - Same purpose, but can be gotten by interacting with deep underground features.");
i(<item:moreminecarts:lightspeed_powered_rail>, "Can boost Minecarts to incredible speeds, which only Reinforced Rails can maintain.");
i(<item:moreminecarts:lightspeed_rail>, "Can support much faster Minecart speeds, but can't turn. Use Turbo Rails to achieve these speeds.");
i(<item:quark:diamond_heart>, "Can be used to brew Potions of Regeneration.");
i(<item:quark:myalite>, "Now spawns deep underground.");
i(<item:minecraft:cactus>, "Smelting XP has been updated to 0.1 instead of vanilla's 1.0.");
i(<item:supplementaries:wrench>, "Will rotate any block it's used on.");