particle minecraft:dust 0 1 1 0.8
scoreboard players reset #bullet_hit rm
execute as @e[type=player,distance=..2] run function rm:wand/bullets/check_hit_player
execute unless score #bullet_hit rm matches 1 as @e[type=#rm:xp_mobs,distance=..2] run function rm:wand/bullets/check_hit
execute if score #bullet_hit rm matches 1 run kill @s
execute unless block ~ ~ ~ #rm:go_through run kill @s
tp @s ^ ^ ^0.3