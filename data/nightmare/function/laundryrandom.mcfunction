#execute store result storage patterns rand int 1 run random value 1..16
#execute if data storage patterns {rand:1} run setblock 0 0 0 white_banner
#execute if data storage patterns {rand:2} run setblock 0 0 0 light_gray_banner
#execute if data storage patterns {rand:3} run setblock 0 0 0 gray_banner
#execute if data storage patterns {rand:4} run setblock 0 0 0 black_banner
#execute if data storage patterns {rand:5} run setblock 0 0 0 brown_banner
#execute if data storage patterns {rand:6} run setblock 0 0 0 red_banner
#execute if data storage patterns {rand:7} run setblock 0 0 0 orange_banner
#execute if data storage patterns {rand:8} run setblock 0 0 0 yellow_banner
#execute if data storage patterns {rand:9} run setblock 0 0 0 lime_banner
#execute if data storage patterns {rand:10} run setblock 0 0 0 green_banner
#execute if data storage patterns {rand:11} run setblock 0 0 0 cyan_banner
#execute if data storage patterns {rand:12} run setblock 0 0 0 light_blue_banner
#execute if data storage patterns {rand:13} run setblock 0 0 0 blue_banner
#execute if data storage patterns {rand:14} run setblock 0 0 0 purple_banner
#execute if data storage patterns {rand:15} run setblock 0 0 0 magenta_banner
#execute if data storage patterns {rand:16} run setblock 0 0 0 pink_banner

execute store result storage patterns rand int 1 run random value 1..16
execute if data storage patterns {rand:1} run data modify storage patterns hold.patterns[] merge value {color:"white"}
execute if data storage patterns {rand:2} run data modify storage patterns hold.patterns[] merge value {color:"light_gray"}
execute if data storage patterns {rand:3} run data modify storage patterns hold.patterns[] merge value {color:"gray"}
execute if data storage patterns {rand:4} run data modify storage patterns hold.patterns[] merge value {color:"black"}
execute if data storage patterns {rand:5} run data modify storage patterns hold.patterns[] merge value {color:"brown"}
execute if data storage patterns {rand:6} run data modify storage patterns hold.patterns[] merge value {color:"red"}
execute if data storage patterns {rand:7} run data modify storage patterns hold.patterns[] merge value {color:"orange"}
execute if data storage patterns {rand:8} run data modify storage patterns hold.patterns[] merge value {color:"yellow"}
execute if data storage patterns {rand:9} run data modify storage patterns hold.patterns[] merge value {color:"lime"}
execute if data storage patterns {rand:10} run data modify storage patterns hold.patterns[] merge value {color:"green"}
execute if data storage patterns {rand:11} run data modify storage patterns hold.patterns[] merge value {color:"cyan"}
execute if data storage patterns {rand:12} run data modify storage patterns hold.patterns[] merge value {color:"light_blue"}
execute if data storage patterns {rand:13} run data modify storage patterns hold.patterns[] merge value {color:"blue"}
execute if data storage patterns {rand:14} run data modify storage patterns hold.patterns[] merge value {color:"purple"}
execute if data storage patterns {rand:15} run data modify storage patterns hold.patterns[] merge value {color:"magenta"}
execute if data storage patterns {rand:16} run data modify storage patterns hold.patterns[] merge value {color:"pink"}
execute store result storage patterns rand int 1 run random value 1..16
execute if data storage patterns {rand:1} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:small_stripes"}
execute if data storage patterns {rand:2} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:circle"}
execute if data storage patterns {rand:3} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:square_bottom_left"}
execute if data storage patterns {rand:4} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:square_bottom_right"}
execute if data storage patterns {rand:5} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:square_top_left"}
execute if data storage patterns {rand:6} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:square_top_right"}
execute if data storage patterns {rand:7} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:triangle_top"}
execute if data storage patterns {rand:8} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:triangle_bottom"}
execute if data storage patterns {rand:9} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:gradient"}
execute if data storage patterns {rand:10} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:gradient_up"}
execute if data storage patterns {rand:11} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:curly_border"}
execute if data storage patterns {rand:12} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:border"}
execute if data storage patterns {rand:13} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:stripe_center"}
execute if data storage patterns {rand:14} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:stripe_middle"}
execute if data storage patterns {rand:15} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:rhombus"}
execute if data storage patterns {rand:16} run data modify storage patterns hold.patterns[] merge value {pattern:"minecraft:cross"}
#data modify block 0 0 0 patterns set from storage minecraft:patterns hold.patterns