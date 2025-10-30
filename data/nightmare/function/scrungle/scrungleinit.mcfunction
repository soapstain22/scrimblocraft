bossbar add minecraft:scrungles "Scrungles"
bossbar set minecraft:scrungles color green
bossbar set minecraft:scrungles style notched_10
bossbar set minecraft:scrungles max 10
scoreboard objectives add scrunglepercent dummy "to next"
scoreboard objectives add scrungles dummy "scrungles"
execute store result bossbar minecraft:scrungles value run scoreboard players get @s scrunglepercent
