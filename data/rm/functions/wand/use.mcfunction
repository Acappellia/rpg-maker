scoreboard players reset @s rm_wand_use

execute unless data entity @s {OnGround:1b} run return -1

execute if score @s rm_blind_time matches ..-1 run return -1
execute if score @s rm_wand_holdcd matches ..-1 run return -1
execute if score @s rm_wand_cd matches ..-1 run return -1

execute if score @s rm_wand_launch matches 0.. run function rm:wand/reset_hold

execute if score @s rm_wand_holdcount matches ..-1 run scoreboard players set @s rm_wand_launch -10
execute unless score @s rm_wand_holdcount matches ..-1 run return -1

scoreboard players add @s rm_wand_holdcount 1
scoreboard players add @s rm_wand_currenthold 1
scoreboard players set @s rm_wand_holdcd -4

effect give @s slowness 1 4 true
#effect give @s jump_boost 1 240 true
#effect give @s levitation 1 128 true
playsound block.stone.step player @s ~ ~ ~ 1 2
execute unless score @s rm_wand_currenthold matches 2.. run return -1
#execute if score @s rm_wand_currenthold matches 2 run summon boat ~ ~2 ~ {Tags:["hitbox"],NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Passengers:[{id:area_effect_cloud,Duration:40}]}
particle witch ~ ~ ~ 0 0 0 0.1 10
effect give @s slowness 1 9 true
effect give @s resistance 1 2 false