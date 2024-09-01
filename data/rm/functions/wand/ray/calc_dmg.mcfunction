scoreboard players operation #bullet_dmg_int rm = #default_magic_damage rm
scoreboard players operation #bullet_dmg_int rm *= #3 rm
scoreboard players operation #player_upgerade_level rm = @s rm_upgrade_4
scoreboard players operation #player_upgerade_level rm *= #5 rm
scoreboard players add #player_upgerade_level rm 100
scoreboard players operation #bullet_dmg_int rm *= #player_upgerade_level rm
scoreboard players operation #bullet_dmg_int rm /= #100 rm