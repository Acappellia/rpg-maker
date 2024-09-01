scoreboard players remove @s rm_revive_timer 1

scoreboard players operation #revive_timer rm = @s rm_revive_timer
scoreboard players operation #revive_timer rm /= #20 rm

title @s actionbar [{"text": "等待重生中…… ","color": "gray"},{"score": {"name": "#revive_timer","objective": "rm"},"color": "white"},{"text": "s","color": "gray"}]

execute if score @s rm_revive_timer matches ..0 run function rm:gameplay/revive