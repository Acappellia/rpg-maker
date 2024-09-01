particle minecraft:dust 0 1 1 1
particle minecraft:dust 0 0 1 0.8
scoreboard players reset #bullet_hit rm
execute as @e[type=player,distance=..2] unless score @s rm_pid = @p[tag=shooter] rm_pid run function rm:wand/ray/check_hit_player
execute as @e[type=#rm:xp_mobs,distance=..2] run function rm:wand/ray/check_hit
execute unless block ~ ~ ~ #rm:go_through run return -1
execute if entity @s[distance=..50] positioned ^ ^ ^0.3 run function rm:wand/ray/step