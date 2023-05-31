import crafttweaker.api.recipe.Brewing;

brewing.removeRecipeByReagent(<item:minecraft:nether_wart>);
brewing.removeRecipeByReagent(<item:minecraft:ghast_tear>);
brewing.removeRecipeByReagent(<item:minecraft:phantom_membrane>);

// Glow Berries as Awkward

brewing.addRecipe(
	<item:minecraft:potion>.withTag({Potion: "minecraft:awkward"}), 
	<item:minecraft:glow_berries>,
	<item:minecraft:potion>.withTag({Potion: "minecraft:water"})
);

brewing.addRecipe(
	<item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), 
	<item:minecraft:glow_berries>,
	<item:minecraft:splash_potion>.withTag({Potion: "minecraft:water"})
);

// Quark Glowshroom as Regen
var regen_reagent = <item:quark:diamond_heart>;

brewing.addRecipe(
	<item:minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}), 
	regen_reagent,
	<item:minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"})
);

brewing.addRecipe(
	<item:minecraft:potion>.withTag({Potion: "minecraft:regeneration"}), 
	regen_reagent,
	<item:minecraft:potion>.withTag({Potion: "minecraft:awkward"})
);