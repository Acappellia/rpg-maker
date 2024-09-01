execute positioned ~ ~-0.8 ~ unless predicate rm:player_hitbox_check run return -1

scoreboard players operation #magic_resistance rm = @s rm_upgrade_5
scoreboard players operation #magic_resistance rm *= #-5 rm
scoreboard players add #magic_resistance rm 100
scoreboard players operation #bullet_dmg_int rm *= #magic_resistance rm
scoreboard players operation #bullet_dmg_int rm /= #100 rm

scoreboard players operation #bullet_dmg_float rm = #bullet_dmg_int rm
scoreboard players operation #bullet_dmg_int rm /= #100 rm
scoreboard players operation #bullet_dmg_float rm %= #100 rm

execute store result storage rm:tmp dmg_info.dmg_int int 1 run scoreboard players get #bullet_dmg_int rm
execute store result storage rm:tmp dmg_info.dmg_float int 1 run scoreboard players get #bullet_dmg_float rm

function rm:wand/ray/damage with storage rm:tmp dmg_info