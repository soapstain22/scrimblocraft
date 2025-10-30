#function nightmare:scrungleadd {count:1}
$scoreboard players remove @s scrungles $(count)
$tellraw @s "I JUST LOST $(count) SCRUNGLES!!!!"
