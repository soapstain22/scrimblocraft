execute store result bossbar minecraft:scrungles value run scoreboard players get @p scrunglepercent
scoreboard players set temp scrunglepercent 10
execute if score @p scrunglepercent matches 10.. run scoreboard players add @p scrungles 1
execute if score @p scrunglepercent matches 10.. run scoreboard players operation @p scrunglepercent -= temp scrunglepercent
execute if score @p scrunglepercent matches 10.. run tell @p tellraw @p ["you have earned a scrungle. you now have ",{"score":{"name":"@p","objective":"scrungles"}}]
execute if score @p scrunglepercent matches 10.. run function nightmare:scrungleupdate
