execute if score #bullet_hit rm matches 1 run return 1

execute if entity @s[type=#rm:player_hitbox] positioned ~ ~-0.8 ~ unless predicate rm:player_hitbox_check run return -1
execute if entity @s[type=#rm:spider_hitbox] positioned ~ ~-0.5 ~ unless predicate rm:spider_hitbox_check run return -1
execute if entity @s[type=mutantmonsters:mutant_zombie] positioned ~ ~-1.6 ~ unless predicate rm:mzombie_hitbox_check run return -1
execute if entity @s[type=mutantmonsters:mutant_skeleton] positioned ~ ~-1.8 ~ unless predicate rm:mskeleton_hitbox_check run return -1
execute if entity @s[type=mutantmonsters:mutant_enderman] positioned ~ ~-2.2 ~ unless predicate rm:menderman_hitbox_check run return -1

scoreboard players set #bullet_hit rm 1

scoreboard players operation #bullet_dmg_int rm = @e[type=item_display,distance=..2,limit=1,tag=flying_bullet] rm_bullet_dmg
scoreboard players operation #bullet_dmg_float rm = #bullet_dmg_int rm
scoreboard players operation #bullet_dmg_int rm /= #100 rm
scoreboard players operation #bullet_dmg_float rm %= #100 rm

execute store result storage rm:tmp dmg_info.dmg_int int 1 run scoreboard players get #bullet_dmg_int rm
execute store result storage rm:tmp dmg_info.dmg_float int 1 run scoreboard players get #bullet_dmg_float rm

execute as @a if score @s rm_pid = @e[type=item_display,distance=..2,limit=1,tag=flying_bullet] rm_pid run tag @s add bullet_shooter
function rm:wand/bullets/damage with storage rm:tmp dmg_info
tag @a[tag=bullet_shooter] remove bullet_shooter