tag @s remove reviving
gamemode adventure @s
title @s actionbar [{"text": "已重生！","color": "green"}]

scoreboard players set @s rm_resistance -140
#effect give @s resistance 10 9 false

#tp @s 0 20 0 180 0

execute at @s run spreadplayers ~ ~ 20 20 true @s