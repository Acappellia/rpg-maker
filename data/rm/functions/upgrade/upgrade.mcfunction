scoreboard players reset @s rm_used_upgrade

execute if data entity @s SelectedItem.tag.rm_lotto at @s run function rm:lotto/use_lotto

execute unless data entity @s SelectedItem.tag.rm_upgrade_ui run return -1

execute store result storage rm:tmp upgrade_info.type int 1 store result score #upgrade_type rm run data get entity @s SelectedItem.tag.rm_upgrade_type

scoreboard players reset #upgrade_max rm
function rm:upgrade/check_level with storage rm:tmp upgrade_info
execute if score #upgrade_max rm matches 1 at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 0.5 0.8
execute if score #upgrade_max rm matches 1 run return -1

clear @s nether_star{rm_upgrade:1} 1

execute if score #upgrade_type rm matches 0 run function rm:upgrade/upgrades/0
execute if score #upgrade_type rm matches 1 run function rm:upgrade/upgrades/1
execute if score #upgrade_type rm matches 2 run function rm:upgrade/upgrades/2
execute if score #upgrade_type rm matches 3 run function rm:upgrade/upgrades/3
execute if score #upgrade_type rm matches 4 run function rm:upgrade/upgrades/4
execute if score #upgrade_type rm matches 5 run function rm:upgrade/upgrades/5
execute if score #upgrade_type rm matches 6 run function rm:upgrade/upgrades/6
execute if score #upgrade_type rm matches 7 run function rm:upgrade/upgrades/7
execute if score #upgrade_type rm matches 8 run function rm:upgrade/upgrades/8

execute at @s run playsound block.beacon.power_select player @s ~ ~ ~ 0.5 1.5