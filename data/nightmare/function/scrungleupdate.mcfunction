execute as @a store result bossbar minecraft:scrungles value run scoreboard players get @s scrunglepercent
execute as @a run bossbar set minecraft:scrungles name ["scrungles:",{"score":{"name":"@s","objective":"scrungles"}}]
scoreboard players set temp scrunglepercent 10
execute as @a if score @s scrunglepercent matches 10.. run scoreboard players add @s scrungles 1
execute as @a if score @s scrunglepercent matches 10.. run tellraw @s ["you have earned a scrungle. you now have ",{"score":{"name":"@s","objective":"scrungles"}}]
execute as @a if score @s scrunglepercent matches 10.. run scoreboard players operation @s scrunglepercent -= temp scrunglepercent
execute as @a if score @s scrunglepercent matches 10.. run function nightmare:scrungleupdate

