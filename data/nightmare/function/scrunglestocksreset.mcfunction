#function foo:bar {index:1}
data modify storage stocks item set value []
data modify storage stocks item[0]
tellraw @a [{"text":"Scrungles: "},{"score":{"name":"@s","objective":"scrungles"}}]
scoreboard players enable @a buy