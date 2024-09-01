title @s times 0 3 0

execute store result score #upgrade_type rm run data get entity @s SelectedItem.tag.rm_upgrade_type

execute if score #upgrade_type rm matches 0 run function rm:upgrade/titles/0
execute if score #upgrade_type rm matches 1 run function rm:upgrade/titles/1
execute if score #upgrade_type rm matches 2 run function rm:upgrade/titles/2
execute if score #upgrade_type rm matches 3 run function rm:upgrade/titles/3
execute if score #upgrade_type rm matches 4 run function rm:upgrade/titles/4
execute if score #upgrade_type rm matches 5 run function rm:upgrade/titles/5
execute if score #upgrade_type rm matches 6 run function rm:upgrade/titles/6
execute if score #upgrade_type rm matches 7 run function rm:upgrade/titles/7
execute if score #upgrade_type rm matches 8 run function rm:upgrade/titles/8