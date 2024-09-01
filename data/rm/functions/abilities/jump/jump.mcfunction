scoreboard players reset @s rm_jump

execute if score @s rm_wand_launch matches ..-1 run function rm:wand/reset

execute unless predicate rm:sneaking run return -1
execute if score @s rm_jump_cd matches ..-1 run return -1

execute if score @s rm_upgrade_6 matches 1 run scoreboard players set @s rm_jump_cd -220
execute if score @s rm_upgrade_6 matches 2 run scoreboard players set @s rm_jump_cd -200
execute if score @s rm_upgrade_6 matches 3 run scoreboard players set @s rm_jump_cd -180
execute if score @s rm_upgrade_6 matches 4..5 run scoreboard players set @s rm_jump_cd -160
execute if score @s rm_upgrade_6 matches 6 run scoreboard players set @s rm_jump_cd -140
execute if score @s rm_upgrade_6 matches 7 run scoreboard players set @s rm_jump_cd -120
execute if score @s rm_upgrade_6 matches 8 run scoreboard players set @s rm_jump_cd -100
execute if score @s rm_upgrade_6 matches 9..10 run scoreboard players set @s rm_jump_cd -80

tag @s add jumped