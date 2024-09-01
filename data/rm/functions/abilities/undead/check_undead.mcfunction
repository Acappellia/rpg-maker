execute store result score #totem_count rm run clear @s totem_of_undying 0

execute unless score #totem_count rm matches 1.. run scoreboard players add @s rm_undead_cd 1

execute unless score @s rm_undead_cd matches ..-1 run give @s totem_of_undying 1
execute unless score @s rm_undead_cd matches ..-1 run playsound block.amethyst_block.resonate player @s ~ ~ ~ 1 0.5
execute unless score @s rm_undead_cd matches ..-1 run scoreboard players set @s rm_undead_cd -100