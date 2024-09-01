scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_1
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_1 1

title @s times 0 20 5
execute if score @s rm_upgrade_1 matches 1..9 run title @s subtitle [{"text": "生命上限提高","color": "green"}]
execute if score @s rm_upgrade_1 matches 10 run title @s subtitle [{"text": "生命上限提高，获得死亡赦免（冷却100s）","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_1"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

attribute @s generic.max_health modifier remove 0-0-0-0-1
execute if score @s rm_upgrade_1 matches 1 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 2 add
execute if score @s rm_upgrade_1 matches 2 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 4 add
execute if score @s rm_upgrade_1 matches 3 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 6 add
execute if score @s rm_upgrade_1 matches 4 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 8 add
execute if score @s rm_upgrade_1 matches 5 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 10 add
execute if score @s rm_upgrade_1 matches 6 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 12 add
execute if score @s rm_upgrade_1 matches 7 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 14 add
execute if score @s rm_upgrade_1 matches 8 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 16 add
execute if score @s rm_upgrade_1 matches 9 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 18 add
execute if score @s rm_upgrade_1 matches 10 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 20 add

execute if score @s rm_upgrade_1 matches 10 run tag @s add undead
execute if score @s rm_upgrade_1 matches 10 run scoreboard players reset @s rm_undead_cd