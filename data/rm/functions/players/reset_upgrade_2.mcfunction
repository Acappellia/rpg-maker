scoreboard players set @s rm_upgrade_0 0
scoreboard players set @s rm_upgrade_1 0
scoreboard players set @s rm_upgrade_2 0
scoreboard players set @s rm_upgrade_3 0
scoreboard players set @s rm_upgrade_4 0
scoreboard players set @s rm_upgrade_5 0
scoreboard players set @s rm_upgrade_6 0
scoreboard players set @s rm_upgrade_7 0
scoreboard players set @s rm_upgrade_8 0

scoreboard players set @s rm_level 0
scoreboard players set @s rm_level_old 0
scoreboard players set @s rm_level_10 0

clear @s nether_star{rm_upgrade:1}

attribute @s generic.movement_speed modifier remove 0-0-0-0-0
attribute @s generic.max_health modifier remove 0-0-0-0-1
attribute @s generic.attack_damage modifier remove 0-0-0-0-2
attribute @s generic.armor modifier remove 0-0-0-0-3
attribute @s generic.armor_toughness modifier remove 0-0-0-1-3

tag @s remove invisibility
tag @s remove undead
tag @s remove atk_bleed
tag @s remove hold_atk
tag @s remove evading
tag @s remove jump
tag @s remove thorns
tag @s remove atk_blind_1
tag @s remove atk_blind_2
tag @s remove atk_blind_3
tag @s remove atk_blind_4
tag @s remove atk_blind_5
tag @s remove atk_blind_6
tag @s remove atk_blind_7
tag @s remove atk_blind_8
tag @s remove atk_blind_9
tag @s remove atk_blind_10

tag @s remove reset_upgrade