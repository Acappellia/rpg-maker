scoreboard players set @s rm_upgrade_cd -12

scoreboard players operation #upgrade_level rm = @s rm_upgrade_3
scoreboard players add #upgrade_level rm 1

scoreboard players add @s rm_upgrade_3 1

title @s times 0 20 5
execute if score @s rm_upgrade_3 matches 1..9 run title @s subtitle [{"text": "物理防御提高","color": "green"}]
execute if score @s rm_upgrade_3 matches 10 run title @s subtitle [{"text": "物理防御提高，获得摔落伤害减免","color": "green"}]
title @s title [{"score": {"name": "@s","objective": "rm_upgrade_3"},"color": "gray"},{"text": " >> ","color": "dark_gray"},{"score": {"name": "#upgrade_level","objective": "rm"},"color": "green"}]

attribute @s generic.armor modifier remove 0-0-0-0-3
execute if score @s rm_upgrade_3 matches 1 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 2 add
execute if score @s rm_upgrade_3 matches 2 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 4 add
execute if score @s rm_upgrade_3 matches 3 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 6 add
execute if score @s rm_upgrade_3 matches 4 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 8 add
execute if score @s rm_upgrade_3 matches 5 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 10 add
execute if score @s rm_upgrade_3 matches 6 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 12 add
execute if score @s rm_upgrade_3 matches 7 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 14 add
execute if score @s rm_upgrade_3 matches 8 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 16 add
execute if score @s rm_upgrade_3 matches 9 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 18 add
execute if score @s rm_upgrade_3 matches 10 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 20 add

attribute @s generic.armor_toughness modifier remove 0-0-0-1-3
execute if score @s rm_upgrade_3 matches 1 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 1 add
execute if score @s rm_upgrade_3 matches 2 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 2 add
execute if score @s rm_upgrade_3 matches 3 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 3 add
execute if score @s rm_upgrade_3 matches 4 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 4 add
execute if score @s rm_upgrade_3 matches 5 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 5 add
#execute if score @s rm_upgrade_3 matches 6 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 6 add
#execute if score @s rm_upgrade_3 matches 7 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 7 add
#execute if score @s rm_upgrade_3 matches 8 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 8 add
#execute if score @s rm_upgrade_3 matches 9 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 9 add
#execute if score @s rm_upgrade_3 matches 10 run attribute @s generic.armor_toughness modifier add 0-0-0-1-3 "rm_armor_tough" 10 add

execute if score @s rm_upgrade_3 matches 10 run item replace entity @s armor.feet with chainmail_boots{AttributeModifiers:[{Amount:0,AttributeName:"generic.armor",Name:"armor",Operation:0,Slot:"feet",UUID:[I;0,0,0,9]}],Unbreakable:1b,Enchantments:[{id:"feather_falling",lvl:10}]}