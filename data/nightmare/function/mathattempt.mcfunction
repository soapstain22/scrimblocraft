execute store result score ploob math0 run scoreboard players operation ploob math1 += ploob math2
execute if score ploob math3 = ploob math0 run loot spawn ~ ~ ~3 loot nightmare:treasure_room
execute unless score ploob math3 = ploob math0 run summon minecraft:small_fireball 0.5 52.00 -30.5
execute store result score ploob math2 run random value -10..10
execute store result score ploob math1 run random value -10..10
kill @n[type=minecraft:text_display]
summon text_display ~-1 ~ ~2.6 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:[{"score":{"name":"ploob","objective":"math1"}}," + ",{"score":{"name":"ploob","objective":"math2"}}," = ",{"score":{"name":"ploob","objective":"math3"}}]}