import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;

var disabled_items = <tag:items:musketeer:hidden_items>;
var variant_items = <tag:items:musketeer:made_with_variant_selector>;

var disabled = Component.translatable("hidden_tooltip.musketeer") as MutableComponent;
disabled.setStyle(<constant:minecraft:formatting:red>.asStyle());

for type in game.recipeTypes {
	type.remove(disabled_items);
	type.remove(variant_items);
}

disabled_items.asIIngredient().addTooltip(disabled);