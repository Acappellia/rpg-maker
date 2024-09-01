attribute @s generic.movement_speed modifier remove 0-0-0-0-0
execute if score @s rm_upgrade_0 matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.04 multiply
execute if score @s rm_upgrade_0 matches 2 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.08 multiply
execute if score @s rm_upgrade_0 matches 3 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.12 multiply
execute if score @s rm_upgrade_0 matches 4 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.16 multiply
execute if score @s rm_upgrade_0 matches 5 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.20 multiply
execute if score @s rm_upgrade_0 matches 6 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.24 multiply
execute if score @s rm_upgrade_0 matches 7 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.28 multiply
execute if score @s rm_upgrade_0 matches 8 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.32 multiply
execute if score @s rm_upgrade_0 matches 9 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.36 multiply
execute if score @s rm_upgrade_0 matches 10 run attribute @s generic.movement_speed modifier add 0-0-0-0-0 "rm_speed" 0.4 multiply

attribute @s generic.max_health modifier remove 0-0-0-0-1
execute if score @s rm_upgrade_1 matches 1 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 2 add
execute if score @s rm_upgrade_1 matches 2 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 4 add
execute if score @s rm_upgrade_1 matches 3 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 6 add
execute if score @s rm_upgrade_1 matches 4 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 8 add
execute if score @s rm_upgrade_1 matches 5 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 10 add
execute if score @s rm_upgrade_1 matches 6 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 12 add
execute if score @s rm_upgrade_1 matches 7 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 14 add
execute if score @s rm_upgrade_1 matches 8 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 16 add
execute if score @s rm_upgrade_1 matches 9 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 18 add
execute if score @s rm_upgrade_1 matches 10 run attribute @s generic.max_health modifier add 0-0-0-0-1 "rm_speed" 20 add

attribute @s generic.attack_damage modifier remove 0-0-0-0-2
execute if score @s rm_upgrade_2 matches 1 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.05 multiply
execute if score @s rm_upgrade_2 matches 2 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.1 multiply
execute if score @s rm_upgrade_2 matches 3 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.15 multiply
execute if score @s rm_upgrade_2 matches 4 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.2 multiply
execute if score @s rm_upgrade_2 matches 5 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.25 multiply
execute if score @s rm_upgrade_2 matches 6 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.3 multiply
execute if score @s rm_upgrade_2 matches 7 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.35 multiply
execute if score @s rm_upgrade_2 matches 8 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.4 multiply
execute if score @s rm_upgrade_2 matches 9 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.45 multiply
execute if score @s rm_upgrade_2 matches 10 run attribute @s generic.attack_damage modifier add 0-0-0-0-2 "rm_damage" 0.5 multiply

attribute @s generic.armor modifier remove 0-0-0-0-3
execute if score @s rm_upgrade_3 matches 1 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 1 add
execute if score @s rm_upgrade_3 matches 2 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 2 add
execute if score @s rm_upgrade_3 matches 3 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 3 add
execute if score @s rm_upgrade_3 matches 4 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 4 add
execute if score @s rm_upgrade_3 matches 5 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 5 add
execute if score @s rm_upgrade_3 matches 6 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 6 add
execute if score @s rm_upgrade_3 matches 7 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 7 add
execute if score @s rm_upgrade_3 matches 8 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 8 add
execute if score @s rm_upgrade_3 matches 9 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 9 add
execute if score @s rm_upgrade_3 matches 10 run attribute @s generic.armor modifier add 0-0-0-0-3 "rm_armor" 10 add

execute if score @s rm_upgrade_3 matches 10 run effect give @s slow_falling infinite 0 true

execute unless score @s rm_update_attributes_logout matches 1.. run effect give @s instant_health 1 9 true
scoreboard players reset @s rm_update_attributes_logout