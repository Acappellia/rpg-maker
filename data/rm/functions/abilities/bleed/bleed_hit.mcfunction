advancement revoke @s only rm:bleed_hit

execute positioned ^ ^ ^1.5 as @e[type=#rm:xp_mobs,distance=..1.5,nbt={HurtTime:10s}] at @s run function rm:abilities/bleed/hit_by_bleed