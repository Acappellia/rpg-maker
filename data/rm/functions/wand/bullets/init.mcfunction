tag @s add wand_bullet
data merge entity @s {teleport_duration:1,item:{id:"heart_of_the_sea",Count:1b},transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,3],billboard:"center"}

scoreboard players operation @s rm_pid = @p[distance=..5,tag=shooter] rm_pid

scoreboard players operation @s rm_bullet_dmg = #default_magic_damage rm
scoreboard players operation #player_hold_level rm = @p[distance=..5,tag=shooter] rm_wand_currenthold
scoreboard players remove #player_hold_level rm 1
scoreboard players operation #player_hold_level rm *= #30 rm
scoreboard players operation @s rm_bullet_dmg += #player_hold_level rm
scoreboard players operation #player_upgerade_level rm = @p[distance=..5,tag=shooter] rm_upgrade_4
scoreboard players operation #player_upgerade_level rm *= #5 rm
scoreboard players add #player_upgerade_level rm 100
scoreboard players operation @s rm_bullet_dmg *= #player_upgerade_level rm
scoreboard players operation @s rm_bullet_dmg /= #100 rm

scoreboard players set @s rm_bullet_life 50

tp @s ~ ~ ~ ~ ~