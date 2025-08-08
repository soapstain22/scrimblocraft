
## random set
execute store result storage game:arcade temp int 1 run random value 1..4
data modify storage game:arcade a2 append string storage game:arcade temp 0 1
execute store result storage game:arcade temp int 1 run random value 1..4
data modify storage game:arcade a2 append string storage game:arcade temp 0 1
execute store result storage game:arcade temp int 1 run random value 1..4
data modify storage game:arcade a2 append string storage game:arcade temp 0 1
execute store result storage game:arcade temp int 1 run random value 1..4
data modify storage game:arcade a2 append string storage game:arcade temp 0 1

## check if equal
execute store success storage game:arcade a byte 1 run data modify storage game:arcade a1[0] set from storage game:arcade a2[0]
execute store success storage game:arcade b byte 1 run data modify storage game:arcade a1[1] set from storage game:arcade a2[1]
execute store success storage game:arcade c byte 1 run data modify storage game:arcade a1[2] set from storage game:arcade a2[2]
execute store success storage game:arcade d byte 1 run data modify storage game:arcade a1[3] set from storage game:arcade a2[3]
execute if data storage game:arcade {a:true} if data storage game:arcade {b:true} if data storage game:arcade {c:true} if data storage game:arcade {d:true} run say epic!.
## check if over 4 characters
execute store result storage game:arcade Output.StringLength int 1 run data get storage game:arcade Input.String
execute store result score poop temp run data get storage game:arcade Output.StringLength
execute if score poop temp matches 4.. run data modify storage game:arcade a2 set value []
execute if data storage game:arcade {Output:{StringLength:4}} run say epic.
execute store result storage game:arcade size int 1 run data get storage game:arcade List 1 
## append
data modify storage game:arcade a1[] append value "1"
data modify storage game:arcade a1[] append value "2"
data modify storage game:arcade a1[] append value "3"
data modify storage game:arcade a1[] append value "4"

### simon says thing? idk

## text_display
kill @n[type=minecraft:text_display]
summon text_display ~ ~2.2 ~0.1 {text:[{"interpret":true,"nbt":"a1[]","storage":"game:arcade"},{"text":"\n"},{"interpret":true,"nbt":"a2[]","storage":"game:arcade"}]}

#init
scoreboard objectives add alength dummy alength
scoreboard objectives add blength dummy blength
scoreboard objectives add random dummy random
data modify storage game:arcade slots set value ["a","b","c","d"]
data modify storage game:arcade a1 set value []
data modify storage game:arcade a2 set value []

# get length of a1 and a2 put in storage, called every update
execute store result storage game:arcade alength int 1 run data get storage game:arcade a1[]
execute store result storage game:arcade blength int 1 run data get storage game:arcade a2
# move length of array in storage to scoreboard
execute store result score alength alength run data get storage game:arcade alength
execute store result score blength blength run data get storage game:arcade blength
# if blength is greater than 3, reset array 
execute if score blength blength matches 4.. run data modify storage game:arcade a2 set value [] 
execute if score alength alength matches 4.. run data modify storage game:arcade a1 set value []
execute if score alength alength matches 4.. run data modify storage game:arcade a2 set value [] 
execute if score blength blength matches 4.. run data modify storage game:arcade a1 set value [] 

# if blength is less than 3, add a random symbol from array storage game:arcade slots
# loop until blength is 3 by adding a random symbol from storage game:arcade slots
# set random to a random value between 0 and 3 
execute store result score random random run random value 1..4
execute unless score blength blength matches 4.. if score random random matches 0 run data modify storage game:arcade a2 append from storage game:arcade slots[0]
execute unless score blength blength matches 4.. if score random random matches 1 run data modify storage game:arcade a2 append from storage game:arcade slots[1]
execute unless score blength blength matches 4.. if score random random matches 2 run data modify storage game:arcade a2 append from storage game:arcade slots[2]
execute unless score blength blength matches 4.. if score random random matches 3 run data modify storage game:arcade a2 append from storage game:arcade slots[3]
execute store result storage game:arcade blength int 1 run data get storage game:arcade a2
execute store result score blength blength run data get storage game:arcade blength

execute if score blength blength matches ..4 store result storage game:arcade random int 1 run data get storage game:arcade random 1 
execute if score blength blength matches ..4 run data modify storage game:arcade a2 append from storage game:arcade rng





execute store result score alength alength run data get storage game:arcade a1
execute if score alength alength matches 4.. run data modify storage game:arcade a1 set value []
execute if score alength alength matches 4.. run data modify storage game:arcade a2 set value []
execute store result score alength alength run data get storage game:arcade a1
execute store result score blength blength run data get storage game:arcade a2
execute if score blength blength matches ..4 run data modify storage game:arcade a2 append string storage game:arcade rng
execute store result storage game:arcade rng int 1 run random value 1..4




summon text_display ~ ~3 ~0.1 {text:[{"interpret":true,"nbt":"a1[]","storage":"game:arcade"},{"text":"\n"},{"interpret":true,"nbt":"a2[]","storage":"game:arcade"}]}
execute store result score alength alength run data get storage game:arcade a1
execute if score alength alength matches 5.. run data modify storage game:arcade a1 set value []
execute if score alength alength matches 4.. run data modify storage game:arcade a2 set value []
execute store result score alength alength run data get storage game:arcade a1
execute store result score blength blength run data get storage game:arcade a2

execute if score blength blength matches ..4 run data modify storage game:arcade a2 append string storage game:arcade rng
execute store result storage game:arcade rng int 1 run random value 1..4

execute unless data storage game:arcade a run summon minecraft:falling_block ~ ~6 ~ {BlockState:{Name:"minecraft:red_concrete_powder"},Time:1}
execute if data storage game:arcade a run summon falling_block ~ ~6 ~1 {BlockState:{Name:"minecraft:blue_concrete_powder"},Time:1}
execute store success storage game:arcade a int 1 run data merge storage game:arcade {a:1}