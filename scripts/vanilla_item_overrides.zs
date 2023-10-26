// Do the Monster Mash!
var blaze_rod = <item:minecraft:blaze_rod>;
blaze_rod.setBurnTime(0);
<tag:items:forge:rods>.remove(blaze_rod);

craftingTable.addShapeless("monster_mash", blaze_rod, [<item:minecraft:string>, <item:minecraft:gunpowder>, <item:minecraft:rotten_flesh>, <item:minecraft:bone>, <item:minecraft:slime_ball>, <item:minecraft:spider_eye>]);

// Magma Powder
var blaze_powder = <item:minecraft:blaze_powder>;

craftingTable.remove(blaze_powder);
craftingTable.addShapeless("magma_powder", blaze_powder * 16, [<item:minecraft:magma_block>]);

// Ancient Mix
craftingTable.addShapeless("ancient_mix", <item:minecraft:dragon_breath>, [<item:minecraft:glass_bottle>, <item:quark:ancient_fruit>, <item:quark:glow_shroom>]);