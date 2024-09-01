advancement revoke @s only rm:blind_hit

execute unless score @s rm_upgrade_8 matches 1.. run return -1

execute if score @s rm_upgrade_8 matches 1 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_1
execute if score @s rm_upgrade_8 matches 2 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_2
execute if score @s rm_upgrade_8 matches 3 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_3
execute if score @s rm_upgrade_8 matches 4 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_4
execute if score @s rm_upgrade_8 matches 5 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_5
execute if score @s rm_upgrade_8 matches 6 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_6
execute if score @s rm_upgrade_8 matches 7 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_7
execute if score @s rm_upgrade_8 matches 8 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_8
execute if score @s rm_upgrade_8 matches 9 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_9
execute if score @s rm_upgrade_8 matches 10 positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/blind/hit_by_blind_10