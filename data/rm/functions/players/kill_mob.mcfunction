advancement revoke @s only rm:mob_kill

scoreboard players add @s rm_mobkill 1
execute unless score @s rm_mobkill matches 2.. run return -1

xp add @s 1 levels
scoreboard players set @s rm_mobkill 0