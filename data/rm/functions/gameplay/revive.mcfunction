tag @s remove reviving
gamemode adventure @s
title @s actionbar [{"text": "已重生！","color": "green"}]

scoreboard players set @s rm_resistance -140
#effect give @s resistance 10 9 false

#tp @s 0 20 -14 180 0

execute at @s run spreadplayers ~ ~ 20 20 true @s

execute at @s run playsound block.beacon.power_select player @a ~ ~ ~ 1 0.8
execute at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 50