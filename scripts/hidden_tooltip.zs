import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;

var disabled_items = <tag:items:musketeer:hidden_items>;

var disabled = Component.translatable("hidden_tooltip.musketeer") as MutableComponent;
disabled.setStyle(<constant:minecraft:formatting:red>.asStyle());

recipes.remove(disabled_items);
disabled_items.asIIngredient().addTooltip(disabled);