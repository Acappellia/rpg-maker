execute unless entity @s[tag=hold_atk] run scoreboard players set @s rm_wand_holdcount -1
execute if entity @s[tag=hold_atk] run scoreboard players set @s rm_wand_holdcount -20
scoreboard players reset @s rm_wand_currenthold