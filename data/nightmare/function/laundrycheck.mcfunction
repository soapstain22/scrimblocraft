function minecraft:laundryrandom
execute store success storage minecraft:patterns isgood int 1 run data modify entity @n[type=minecraft:glow_item_frame] Item.components.minecraft:banner_patterns set from block 17 55 8 patterns
execute if data storage minecraft:patterns isgood:1 run say "HAHA"
execute run data modify entity @n[type=minecraft:glow_item_frame] Item.components.minecraft:banner_patterns set value []
data modify block 17 55 8 patterns set from storage minecraft:patterns hold.patterns



function minecraft:laundryrandom
execute store success storage minecraft:patterns isgood int 1 run data modify entity @n[type=minecraft:glow_item_frame] Item.components.minecraft:banner_patterns set from block 17 55 8 patterns
#conditional
data modify storage minecraft:patterns rand set value 0
execute run data modify entity @n[type=minecraft:glow_item_frame] Item.components.minecraft:banner_patterns set value []
data modify block 17 55 8 patterns set from storage minecraft:patterns hold.patterns
execute unless data storage minecraft:patterns {rand:0} run say test