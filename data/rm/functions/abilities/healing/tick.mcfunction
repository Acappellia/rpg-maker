effect give @s regeneration 1 9 true

execute unless score @s rm_upgrade_7 matches 1.. run scoreboard players set @s rm_autoheal_cd -40
execute if score @s rm_upgrade_7 matches 1 run scoreboard players set @s rm_autoheal_cd -33
execute if score @s rm_upgrade_7 matches 2 run scoreboard players set @s rm_autoheal_cd -29
execute if score @s rm_upgrade_7 matches 3 run scoreboard players set @s rm_autoheal_cd -25
execute if score @s rm_upgrade_7 matches 4 run scoreboard players set @s rm_autoheal_cd -22
execute if score @s rm_upgrade_7 matches 5 run scoreboard players set @s rm_autoheal_cd -20
execute if score @s rm_upgrade_7 matches 6 run scoreboard players set @s rm_autoheal_cd -18
execute if score @s rm_upgrade_7 matches 7 run scoreboard players set @s rm_autoheal_cd -16
execute if score @s rm_upgrade_7 matches 8 run scoreboard players set @s rm_autoheal_cd -15
execute if score @s rm_upgrade_7 matches 9 run scoreboard players set @s rm_autoheal_cd -14
execute if score @s rm_upgrade_7 matches 10 run scoreboard players set @s rm_autoheal_cd -13

scoreboard players set @s rm_autoheal_removeregen -2