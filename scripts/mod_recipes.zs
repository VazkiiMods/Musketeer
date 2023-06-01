var leather = <item:minecraft:leather>;
var iron = <item:minecraft:iron_ingot>;
var chest = <tag:items:forge:chests/wooden>;
var diamond = <item:minecraft:diamond>;
var backpack = <item:quark:backpack>;

// Backpack but more expensive
craftingTable.remove(backpack);
craftingTable.addShaped("backpack_but_expensive",
		backpack,
		[[leather, iron, leather],
		 [leather, chest, leather],
		 [leather, diamond, leather]]);