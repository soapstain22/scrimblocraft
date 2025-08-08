## if a1:1 + a1:2 == a1:3
## run


## else

## a1:1 = -5..5
##reset
execute store result score @p math0 run scoreboard players operation @p math1 += @p math2
execute if score @p math3 = @p math0 run scoreboard players add @p gbp 1
execute unless score @p math3 = @p math0 run scoreboard players remove @p gbp 1
execute store result score @p math1 run random value -10..10
execute store result score @p math2 run random value -10..10

summon text_display ~-1 ~ ~2.6 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:[{"score":{"name":"@p","objective":"math1"}}," + ",{"score":{"name":"@p","objective":"math2"}}," = ",{"score":{"name":"@p","objective":"math3"}},{"entity":"2","interpret":true,"nbt":""}]}