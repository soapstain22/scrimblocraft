#function foo:bar {price:10,item:"minecraft:experience_bottle"}
$execute if score @p scrungles matches $(price).. run give @p $(item)
$execute if score @p scrungles matches $(price).. run scoreboard players remove @p scrungles $(price) 
$execute if score @p scrungles matches $(price).. run tellraw @p "you have bought an item for $(price) scrungles."
$execute if score @p scrungles matches ..$(price) unless score @p scrungles matches $(price) run tellraw @p "you are poor."
function nightmare:scrungleupdate