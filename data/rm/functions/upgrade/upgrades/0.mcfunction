scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_0
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_0 1

title @s times 0 20 5
execute if score @s rm_upgrade_0 matches 1..9 run title @s subtitle [{"text": "移动速度提高","color": "green"}]
execute if score @s rm_upgrade_0 matches 10 run title @s subtitle [{"text": "移动速度提高，疾跑时获得隐身","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_0"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

attribute @s generic.movement_speed modifier remove 0-0-0-0-0
execute if score @s rm_upgrade_0 matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.04 multiply
execute if score @s rm_upgrade_0 matches 2 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.08 multiply
execute if score @s rm_upgrade_0 matches 3 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.12 multiply
execute if score @s rm_upgrade_0 matches 4 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.16 multiply
execute if score @s rm_upgrade_0 matches 5 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.20 multiply
execute if score @s rm_upgrade_0 matches 6 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.24 multiply
execute if score @s rm_upgrade_0 matches 7 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.28 multiply
execute if score @s rm_upgrade_0 matches 8 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.32 multiply
execute if score @s rm_upgrade_0 matches 9 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.36 multiply
execute if score @s rm_upgrade_0 matches 10 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.4 multiply

execute if score @s rm_upgrade_0 matches 10 run tag @s add invisibility