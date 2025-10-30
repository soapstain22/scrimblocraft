kill @n[type=minecraft:text_display]
summon text_display ~ ~ ~2.6 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:[{"score":{"name":"ploob","objective":"math1"}}," + ",{"score":{"name":"ploob","objective":"math2"}}," = ",{"score":{"name":"ploob","objective":"math3"}}]}
execute at @n[type=minecraft:text_display] run rotate @n[type=minecraft:text_display] facing ^1 ^ ^
