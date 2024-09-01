execute if score @s rm_bullet_life matches ..0 run kill @s
scoreboard players remove @s rm_bullet_life 1

tag @s add flying_bullet
execute at @s run function rm:wand/bullets/fly_step
execute at @s run function rm:wand/bullets/fly_step
execute at @s run function rm:wand/bullets/fly_step
tag @s remove flying_bullet