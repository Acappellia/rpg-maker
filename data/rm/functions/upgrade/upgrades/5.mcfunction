scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_5
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_5 1

title @s times 0 20 5
execute if score @s rm_upgrade_5 matches 1..9 run title @s subtitle [{"text": "魔法防御提高","color": "green"}]
execute if score @s rm_upgrade_5 matches 10 run title @s subtitle [{"text": "魔法防御提高，受到攻击时概率闪避","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_5"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

execute if score @s rm_upgrade_5 matches 10 run tag @s add evading