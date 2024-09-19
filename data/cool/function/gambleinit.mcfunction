 
data modify storage cards:hands hands set value ["🂡","🂢","🂣","🂤","🂥","🂦","🂧","🂨","🂩","🂪","🂫","🂬","🂭","🂮","🂱","🂲","🂳","🂴","🂵","🂶","🂷","🂸","🂹","🂺","🂻","🂼","🂽","🃁","🃂","🃃","🃄","🃅","🃆","🃇","🃈","🃉","🃊","🃋","🃌","🃍","🃎","🃑","🃒","🃓","🃔","🃕","🃖","🃗","🃘","🃙","🃚","🃛","🃜","🃝","🃞","🂠"]
#execute store result storage cards:hands roll int 1 run random roll 1..14
#execute store result storage cards:hands roll int 1 run random roll 1..4
#execute store result block ~ ~ ~ components.minecraft:custom_data.gamblor int 1 run random value 0..5
#execute store result block ~ ~ ~ components.minecraft:custom_data.gamblor int 
#data modify block ~ ~ ~ front_text.messages[0] set string storage cards:hands hands[]
scoreboard objectives add math dummy "dummy"
setblock ~ ~ ~ oak_sign{front_text:{messages:['{"text":""}','["💻",{"nbt":"components.minecraft:custom_data.playerhand[0]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[1]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[2]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[4[","block":"~ ~ ~"}]','{"text":""}','{"text":""}']}} replace
data modify block ~ ~ ~ components.minecraft:custom_data.playerhand set value ["",""]
data modify block ~ ~ ~ components.minecraft:custom_data.dealerhand set value ["",""]
data modify block ~ ~ ~ components.minecraft:custom_data.playervalue set value 0
data modify block ~ ~ ~ components.minecraft:custom_data.dealervalue set value 0
data modify block ~ ~ ~ front_text.messages set value ['"blackjack"','["🧍",{"nbt":"components.minecraft:custom_data.playerhand[0]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[1]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[2]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[3]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[4]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[5]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[6]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.playerhand[7]","block":"~ ~ ~"}]','["💻",{"nbt":"components.minecraft:custom_data.dealerhand[0]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[1]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[2]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[3]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[4]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[5]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[6]","block":"~ ~ ~"},{"nbt":"components.minecraft:custom_data.dealerhand[7]","block":"~ ~ ~"}]','{"nbt":"components.minecraft:customdata.msg","entity":""}']
$data modify block ~ ~ ~ components.minecraft:custom_data.playerhand[-1] set from storage cards:hands hands[$(temp)]
$execute store result storage minecraft:hand temp int 1 run scoreboard players add gamblingmachine1 math $(temp)
$say $(temp)

