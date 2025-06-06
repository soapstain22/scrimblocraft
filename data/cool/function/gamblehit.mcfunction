playsound minecraft:item.book.page_turn master @a ~ ~ ~ 1 2 0
#execute store result storage cards:hands temp1 int 1 run scoreboard players get gamblingmachine1 math
execute store result storage cards:hands temp int 1 run random roll 0..14
execute store result storage cards:hands temp1 int 1 run data get block ~ ~ ~ components.minecraft:custom_data.playervalue
$data modify block ~ ~ ~ components.minecraft:custom_data.playerhand append from storage cards:hands hands[$(temp)]

$scoreboard players set gamblingmachine1 math $(temp1)
$scoreboard players add gamblingmachine1 math $(temp)

execute store result storage cards:hands temp1 int 1 run scoreboard players get gamblingmachine1 math
$data modify block ~ ~ ~ components.minecraft:custom_data.playerhand set $(temp1)
execute if score gamblingmachine1 math matches 21.. run function cool:gamblegameover with storage cards:hands
#$data modify block ~ ~ ~ components.minecraft:custom_data.playerhand[0] set from storage cards:hands hands[$(temp)]
