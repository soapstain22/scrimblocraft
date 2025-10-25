
execute if score fum factory matches 1.. run scoreboard players remove fum factory 1
$execute if score fum factory matches 100.. if score fum factory matches ..150 run particle minecraft:smoke $(pos) 0 0 0 0 1
$execute if score fum factory matches 150.. run summon dragon_fireball $(pos) {Motion:[0.0,-1.0,0.0]}
execute if score fum factory matches 150.. run scoreboard players reset fum factory
kill @n[type=text_display,limit=1,sort=nearest]
summon text_display ~ ~2 ~2 {alignment:"left",Rotation:[-90F,0F],text:["ION:",{"color":"yellow","score":{"name":"ions","objective":"factory"}},{"color":"green","text":"\nMIN: 100"},{"bold":false,"color":"red","text":"\nMAX: 150"}]}
