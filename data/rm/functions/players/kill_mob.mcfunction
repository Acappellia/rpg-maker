advancement revoke @s only rm:mob_kill

title @s actionbar [{"text": "--- ","color": "gray"},{"text": " 🗡 ","color": "aqua"},{"text": "🗡 ","color": "dark_gray"},{"text": " ---","color": "gray"}]

scoreboard players add @s rm_mobkill 1
execute unless score @s rm_mobkill matches 2.. run return -1

title @s actionbar [{"text": "--- ","color": "gray"},{"text": " 🗡 🗡 ","color": "aqua"},{"text": " ---","color": "gray"}]

xp add @s 1 levels
scoreboard players set @s rm_mobkill 0