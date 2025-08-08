execute if data storage game:arcade {a:0} run summon falling_block ~ ~6 ~ {BlockState:{Name:"minecraft:red_concrete_powder"},Time:1}
execute if data storage game:arcade {a:1} run summon falling_block ~ ~6 ~1 {BlockState:{Name:"minecraft:blue_concrete_powder"},Time:1}
execute store success storage game:arcade a int 1 run data merge storage game:arcade {a:1}

execute if data storage game:arcade {b:0} run fill ~ ~ ~-2 ~ ~ ~-2 minecraft:crimson_button strict
execute if data storage game:arcade {b:1} run fill ~ ~ ~-3 ~ ~ ~-3 minecraft:warped_button strict
execute if data storage game:arcade {b:0} run fill falling_block ~ ~6 ~ {BlockState:{Name:"minecraft:red_concrete_powder"},Time:1}
execute if data storage game:arcade {b:1} run summon falling_block ~ ~6 ~1 {BlockState:{Name:"minecraft:blue_concrete_powder"},Time:1}
execute store success storage game:arcade a int 1 run data merge storage game:arcade {a:1}

execute if data storage game:arcade {b:0} run fill ~ ~ ~-2 ~ ~ ~-2 minecraft:crimson_button strict
execute if data storage game:arcade {b:1} run fill ~ ~ ~-3 ~ ~ ~-3 minecraft:warped_button strict
/execute store success storage game:arcade b int 1 run data merge storage game:arcade {b:1}
