#function foo:bar {price:10,item:"minecraft:experience_bottle"}
$execute if score @p scrungles matches $(price).. run $(thing)
$execute if score @p scrungles matches $(price).. run scoreboard players remove @p scrungles $(price) 
$execute if score @p scrungles matches $(price).. run tellraw @p "$(price) scrungles used!"
$execute unless score @p scrungles matches $(price).. run tellraw @p "you are poor."
function nightmare:scrungleupdate