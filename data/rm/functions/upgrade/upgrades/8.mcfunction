scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_8
scoreboard players add #upgrade_level rm 1

title @s times 0 20 5
title @s subtitle [{"text": "缴械概率提高","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_8"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

scoreboard players add @s rm_upgrade_8 1

tag @s remove atk_blind_1
tag @s remove atk_blind_2
tag @s remove atk_blind_3
tag @s remove atk_blind_4
tag @s remove atk_blind_5
tag @s remove atk_blind_6
tag @s remove atk_blind_7
tag @s remove atk_blind_8
tag @s remove atk_blind_9
tag @s remove atk_blind_10

execute if score @s rm_upgrade_8 matches 1 run tag @s add atk_blind_1
execute if score @s rm_upgrade_8 matches 2 run tag @s add atk_blind_2
execute if score @s rm_upgrade_8 matches 3 run tag @s add atk_blind_3
execute if score @s rm_upgrade_8 matches 4 run tag @s add atk_blind_4
execute if score @s rm_upgrade_8 matches 5 run tag @s add atk_blind_5
execute if score @s rm_upgrade_8 matches 6 run tag @s add atk_blind_6
execute if score @s rm_upgrade_8 matches 7 run tag @s add atk_blind_7
execute if score @s rm_upgrade_8 matches 8 run tag @s add atk_blind_8
execute if score @s rm_upgrade_8 matches 9 run tag @s add atk_blind_9
execute if score @s rm_upgrade_8 matches 10 run tag @s add atk_blind_10