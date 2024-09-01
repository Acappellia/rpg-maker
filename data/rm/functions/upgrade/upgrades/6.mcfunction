scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_6
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_6 1

title @s times 0 20 5
execute if score @s rm_upgrade_6 matches 1..9 run title @s subtitle [{"text": "跳跃能力提高","color": "green"}]
execute if score @s rm_upgrade_6 matches 10 run title @s subtitle [{"text": "跳跃能力提高，获得鞘翅","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_6"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

execute if score @s rm_upgrade_6 matches 1 run tag @s add jump

execute if score @s rm_upgrade_6 matches 10 run item replace entity @s armor.chest with elytra{Unbreakable:1b}