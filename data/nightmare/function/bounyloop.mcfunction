##blue killed
execute as @a if score @s teamkillblue matches 1.. run team join wanted @s
execute as @a if score @s teamkillblue matches 1.. run tellraw @s "you are now wanted for killing a cop."
#execute as @a if score @s teamkillblue matches 1.. if entity @s[team=wanted] run function nightmare:scrungleremove {count:1}
execute as @a if score @s teamkillblue matches 1.. if entity @s[team=cop] run function nightmare:scrungleremove {count:2}
execute as @a if score @s teamkillblue matches 1.. if entity @s[team=neutral] run function nightmare:scrungleremove {count:1}
execute as @a if score @s teamkillblue matches 1.. run scoreboard players remove @s teamkillblue 1
##red killed
#execute as @a if score @s teamkillred matches 1.. if entity @s[team=wanted] run function nightmare:scrungleremove {count:1}
#execute as @a if score @s teamkillred matches 1.. if entity @s[team=cop] run function nightmare:scrungleadd {count:1}
execute as @a if score @s teamkillred matches 1.. run scoreboard players remove @s teamkillred 1

##neutral killed
execute as @a if score @s teamkillneutral matches 1.. run team join wanted @s
execute as @a if score @s teamkillneutral matches 1.. if entity @s[team=cop] run function nightmare:scrungleremove {count:2}
execute as @a if score @s teamkillneutral matches 1.. run tellraw @s "you are now wanted for killing a civillian."
execute as @a if score @s teamkillneutral matches 1.. run scoreboard players remove @s teamkillneutral 1

##neutral killed
execute as @a[team=] run team join neutral @s
execute as @a[scores={isdied=1..,scrungles=..-1}] run team join jail @s
execute as @a[scores={isdied=1..,scrungles=0..},team=jail] run team join neutral @s
execute if entity @a run scoreboard players reset @s isdied