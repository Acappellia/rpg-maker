scoreboard players operation #upgrade_level rm = @s rm_upgrade_0
scoreboard players add #upgrade_level rm 1

execute if score @s rm_upgrade_0 matches ..8 run title @s subtitle [{"text": "提高移动速度","color": "yellow"}]
execute if score @s rm_upgrade_0 matches 9 run title @s subtitle [{"text": "提高移动速度, 在疾跑时获得隐身","color": "yellow"}]

execute if score @s rm_upgrade_0 matches ..9 run title @s title [{"score": {"name": "@s","objective": "rm_upgrade_0"},"color": "white"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "gray"}]

execute if score @s rm_upgrade_0 matches 10 run title @s subtitle [{"text": "已达到最高等级","color": "yellow"}]
execute if score @s rm_upgrade_0 matches 10 run title @s title [{"text": "10","color": "green"}]
