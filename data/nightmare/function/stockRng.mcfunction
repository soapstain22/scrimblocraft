execute store result score rng stocks run random value -10..10
scoreboard players operation fum stocks += rng stocks
execute store result storage stocks rng float 0.1 run random value -10..10
data remove storage minecraft:stocks a[0]
data modify storage minecraft:stocks a append from storage minecraft:stocks rng
execute store result storage stocks fum float 0.01 run scoreboard players get fum stocks
execute store result score fum stocks run scoreboard players operation fum stocks += rng stocks