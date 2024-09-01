scoreboard players operation #upgrade_level rm = @s rm_upgrade_8
scoreboard players add #upgrade_level rm 1

execute if score @s rm_upgrade_8 matches 0 run title @s subtitle [{"text": "攻击时概率使对手缴械","color": "yellow"}]
execute if score @s rm_upgrade_8 matches 1..8 run title @s subtitle [{"text": "提高缴械触发的概率","color": "yellow"}]
execute if score @s rm_upgrade_8 matches 9 run title @s subtitle [{"text": "较大幅提高缴械触发的概率","color": "yellow"}]

execute if score @s rm_upgrade_8 matches ..9 run title @s title [{"score": {"name": "@s","objective": "rm_upgrade_8"},"color": "white"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "gray"}]

execute if score @s rm_upgrade_8 matches 10 run title @s subtitle [{"text": "已达到最高等级","color": "yellow"}]
execute if score @s rm_upgrade_8 matches 10 run title @s title [{"text": "10","color": "green"}]
