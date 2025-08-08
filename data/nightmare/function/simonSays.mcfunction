## CHECK
execute run data modify storage simon a.player set from storage simon a.says
execute store result storage simon a.playercount int 1 run data get storage simon a.player[] 1
execute if data storage simon {a.playercount:3} store success storage simon a.result int 1 run data modify storage simon player set from storage simon says
## RESET
execute if data storage simon a.result:1 run say true
execute if data storage simon a.result:1 run say true
data remove storage simon a
## fill
execute store result storage simon a.random int 1 run random value 1..4
execute unless data storage minecraft:simon {a.count:4} store result storage minecraft:simon a.count int 1 run data modify storage minecraft:simon a.says append from storage minecraft:simon a.random
execute store result storage simon a.count int 1 run data get storage simon a.says[] 1


## THE WHOLE THING
execute unless data storage simon {a.count:4} store result storage simon a.count int 1 run data modify storage minecraft:simon a.says append from storage minecraft:simon a.random
execute store result storage simon a.count int 1 run data get storage simon a.says[] 1
execute store result storage simon a.playercount int 1 run data get storage simon a.player[] 1
execute store result storage simon a.random int 1 run random value 1..4
execute if data storage simon {a.playercount:4} store success storage simon a.match int 1 run data modify storage simon a.player set from storage simon a.says
execute if data storage simon a.match run loot spawn ~ ~ ~3 loot nightmare:treasure_room
execute if data storage simon {a.playercount:4} run data remove storage simon a
