execute store result score ploob math0 run scoreboard players operation ploob math1 += ploob math2
execute if score ploob math3 = ploob math0 run loot spawn ~ ~ ~3 loot nightmare:treasure_room
execute unless score ploob math3 = ploob math0 run summon minecraft:small_fireball 0.5 52.00 -30.5
execute store result score ploob math2 run random value -10..10
execute store result score ploob math1 run random value -10..10
kill @n[type=minecraft:text_display]
function nightmare:mathmachine/mathtextdisplay