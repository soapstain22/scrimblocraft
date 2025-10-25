
execute if score ions factory matches 1.. run scoreboard players remove ions factory 1
$execute if score ions factory matches 100.. if score ions factory matches ..150 run particle minecraft:witch $(pos) 0 0 0 0 1
$execute if score ions factory matches 150.. run summon dragon_fireball $(pos) {Motion:[0.0,-1.0,0.0]}
execute if score ions factory matches 150.. run scoreboard players reset ions factory
kill @n[type=text_display,limit=1,sort=nearest]
summon text_display ~ ~2 ~2 {alignment:"left",Rotation:[-90F,0F],text:["TEMP:",{"color":"yellow","score":{"name":"ions","objective":"factory"}},{"color":"green","text":"\nMIN: 100"},{"bold":false,"color":"red","text":"\nMAX: 150"}]}
