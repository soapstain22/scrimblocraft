execute store result storage simon a.random int 1 run random value 1..4
execute unless data storage minecraft:simon {a.count:4} store result storage minecraft:simon a.count int 1 run data modify storage minecraft:simon a.says append from storage minecraft:simon a.random
execute store result storage simon a.count int 1 run data get storage simon a.says[] 1
