import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;

var disabled_items = <tag:items:c:modpack_hidden_items>;

var disabled = Component.literal("Disabled by Musketeer. Please do not use.") as MutableComponent;
disabled.setStyle(<constant:minecraft:formatting:red>.asStyle());

recipes.remove(disabled_items);
disabled_items.asIIngredient().addTooltip(disabled);