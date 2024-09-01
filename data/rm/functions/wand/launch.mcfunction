execute if score @s rm_blind_time matches ..-1 run return -1

execute if score @s rm_wand_currenthold matches 1..19 at @s run function rm:wand/launch_normal
execute if score @s rm_wand_currenthold matches 20 at @s run function rm:wand/launch_max