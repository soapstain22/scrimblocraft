
execute if score temp factory matches 1.. run scoreboard players remove temperature factory 1
execute if score temp factory matches 100.. if score temperature factory matches ..150 run tell @p operating
execute if score temp factory matches 100.. if score temperature factory matches ..150 run item replace block ~1 ~ ~ container.0 with raw_iron
execute if score temp factory matches 100.. if score temperature factory matches ..150 run item replace block ~-1 ~ ~ container.0 with coal
execute if score temp factory matches 150.. run tell @p exploding!
execute if score temp factory matches 150.. run summon dragon_fireball ~ ~ ~ {Motion:[0.0,1.0,0.0]}
execute if score temp factory matches 150.. run scoreboard players reset temp factory
kill @n[type=text_display,limit=1,sort=nearest]
summon text_display ~ ~ ~-2.1 {alignment:"left",Rotation:[90F,0F],text:["TEMP:",{"color":"yellow","score":{"name":"temperature","objective":"factory"}},{"color":"green","text":"\nMIN: 100"},{"bold":false,"color":"red","text":"\nMAX: 150"}]}
