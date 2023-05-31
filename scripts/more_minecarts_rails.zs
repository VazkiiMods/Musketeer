var air = <item:minecraft:air>;
var amethyst_shard = <item:minecraft:amethyst_shard>;
var rail = <item:minecraft:rail>;
var lightspeed_rail = <item:moreminecarts:lightspeed_rail>;
var lightspeed_powered_rail = <item:moreminecarts:lightspeed_powered_rail>;
var gold_ingot = <item:minecraft:gold_ingot>;
var powered_locking_rail = <item:moreminecarts:powered_locking_rail>;
var powered_rail = <item:minecraft:powered_rail>;
var redstone = <item:minecraft:redstone>;
var lever = <item:minecraft:lever>;

// Lightspeed Rail but good
craftingTable.remove(lightspeed_rail);
craftingTable.addShapeless("lightspeed_rail_but_good", lightspeed_rail * 8, [rail, rail, rail, rail, rail, rail, rail, rail, amethyst_shard]);

// Powered Lightspeed Rail but good
craftingTable.remove(lightspeed_powered_rail);
craftingTable.addShaped("powered_lightspeed_rail_but_good",
		lightspeed_powered_rail * 6,
		[[lightspeed_rail, gold_ingot, lightspeed_rail],
		 [lightspeed_rail, redstone, lightspeed_rail],
		 [lightspeed_rail, gold_ingot, lightspeed_rail]]);

// Powered Locking Rail but good
craftingTable.remove(powered_locking_rail);
craftingTable.addShapeless("powered_locking_rail_but_good", powered_locking_rail, [powered_rail, lever, gold_ingot]);