scoreboard players operation #upgrade_level rm = @s rm_upgrade_6
scoreboard players add #upgrade_level rm 1

execute if score @s rm_upgrade_6 matches 0 run title @s subtitle [{"text": "解锁潜行跳跃技能","color": "yellow"}]
execute if score @s rm_upgrade_6 matches 1..3 run title @s subtitle [{"text": "降低潜行跳跃的冷却时间","color": "yellow"}]
execute if score @s rm_upgrade_6 matches 4 run title @s subtitle [{"text": "提高潜行跳跃的高度","color": "yellow"}]
execute if score @s rm_upgrade_6 matches 5..8 run title @s subtitle [{"text": "降低潜行跳跃的冷却时间","color": "yellow"}]
execute if score @s rm_upgrade_6 matches 9 run title @s subtitle [{"text": "提高潜行跳跃的高度, 获得鞘翅","color": "yellow"}]

execute if score @s rm_upgrade_6 matches ..9 run title @s title [{"score": {"name": "@s","objective": "rm_upgrade_6"},"color": "white"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "gray"}]

execute if score @s rm_upgrade_6 matches 10 run title @s subtitle [{"text": "已达到最高等级","color": "yellow"}]
execute if score @s rm_upgrade_6 matches 10 run title @s title [{"text": "10","color": "green"}]
