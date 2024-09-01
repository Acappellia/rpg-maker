scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_2
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_2 1

title @s times 0 20 5
execute if score @s rm_upgrade_2 matches 1..9 run title @s subtitle [{"text": "物理攻击提高","color": "green"}]
execute if score @s rm_upgrade_2 matches 10 run title @s subtitle [{"text": "物理提高，攻击时概率触发流血","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_2"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

attribute @s generic.attack_damage modifier remove 0-0-0-0-2
execute if score @s rm_upgrade_2 matches 1 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.05 multiply
execute if score @s rm_upgrade_2 matches 2 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.1 multiply
execute if score @s rm_upgrade_2 matches 3 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.15 multiply
execute if score @s rm_upgrade_2 matches 4 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.2 multiply
execute if score @s rm_upgrade_2 matches 5 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.25 multiply
execute if score @s rm_upgrade_2 matches 6 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.3 multiply
execute if score @s rm_upgrade_2 matches 7 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.35 multiply
execute if score @s rm_upgrade_2 matches 8 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.4 multiply
execute if score @s rm_upgrade_2 matches 9 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.45 multiply
execute if score @s rm_upgrade_2 matches 10 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.5 multiply

execute if score @s rm_upgrade_2 matches 10 run tag @s add atk_bleed