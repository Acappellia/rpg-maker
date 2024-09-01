execute unless score @s rm_level > @s rm_level_old run return -1

#tellraw @a [{"score": {"name": "@s","objective": "rm_level"}}," ",{"score": {"name": "@s","objective": "rm_level_old"}}]

scoreboard players operation #player_level rm = @s rm_level
execute if score #player_level rm matches 66.. run scoreboard players set #player_level rm 65

scoreboard players operation #player_level_10 rm = #player_level rm
scoreboard players operation #player_level_10 rm /= #10 rm

scoreboard players operation #player_level rm -= @s rm_level_old
execute store result storage rm:tmp item_info.Count int 1 run scoreboard players get #player_level rm
function rm:upgrade/give_gem with storage rm:tmp item_info
execute at @s run playsound block.amethyst_block.resonate player @s ~ ~ ~ 1 1.2
scoreboard players operation @s rm_level_old += #player_level rm

scoreboard players operation #player_level_10 rm -= @s rm_level_10
execute store result storage rm:tmp item_info.Count int 1 run scoreboard players get #player_level_10 rm
function rm:upgrade/give_lotto with storage rm:tmp item_info
scoreboard players operation @s rm_level_10 += #player_level_10 rm