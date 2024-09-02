gamerule keepInventory true
gamerule naturalRegeneration false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule doEntityDrops false
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule mobGriefing false
gamerule announceAdvancements false
time set 6000
gamerule doDaylightCycle false
gamerule spawnRadius 0
#sdifficulty peaceful

setworldspawn 0 20 -14 0

scoreboard objectives add rm dummy

scoreboard players set #default_magic_damage rm 600
scoreboard players set #100 rm 100
scoreboard players set #10 rm 10
scoreboard players set #20 rm 20
scoreboard players set #30 rm 30
scoreboard players set #60 rm 60
scoreboard players set #5 rm 5
scoreboard players set #3 rm 3
scoreboard players set #-5 rm -5

scoreboard objectives add rm_pid dummy
execute unless score #rm_pid rm = #rm_pid rm run scoreboard players set #rm_pid rm -1
execute unless score #game_status rm = #game_status rm run scoreboard players set #game_status rm 0

scoreboard objectives add rm_upgrade_0 dummy
scoreboard objectives add rm_upgrade_1 dummy
scoreboard objectives add rm_upgrade_2 dummy
scoreboard objectives add rm_upgrade_3 dummy
scoreboard objectives add rm_upgrade_4 dummy
scoreboard objectives add rm_upgrade_5 dummy
scoreboard objectives add rm_upgrade_6 dummy
scoreboard objectives add rm_upgrade_7 dummy
scoreboard objectives add rm_upgrade_8 dummy

scoreboard objectives add rm_upgrade_cd custom:time_since_death

scoreboard objectives add rm_mobkill dummy

scoreboard objectives add rm_level_old dummy
scoreboard objectives add rm_level level
scoreboard objectives add rm_level_10 dummy

scoreboard objectives setdisplay list rm_level

scoreboard objectives add rm_revivetime custom:time_since_death
scoreboard objectives add rm_revive_timer dummy

scoreboard objectives add rm_used_upgrade used:warped_fungus_on_a_stick
scoreboard objectives add rm_update_attributes custom:time_since_death
scoreboard objectives add rm_update_attributes_logout custom:leave_game

scoreboard objectives add rm_undead_cd dummy
scoreboard objectives add rm_jump_cd custom:time_since_death
scoreboard objectives add rm_jump custom:jump
scoreboard objectives add rm_autoheal_cd custom:time_since_death
scoreboard objectives add rm_autoheal_removeregen custom:time_since_death
scoreboard objectives add rm_blind_time custom:time_since_death
scoreboard objectives add rm_blind_res_time custom:time_since_death

scoreboard objectives add rm_wand_use used:carrot_on_a_stick
scoreboard objectives add rm_wand_holdcount dummy
scoreboard objectives add rm_wand_currenthold dummy
scoreboard objectives add rm_wand_cd custom:time_since_death
scoreboard objectives add rm_wand_holdcd custom:time_since_death
scoreboard objectives add rm_wand_launch custom:time_since_death
scoreboard objectives add rm_bullet_dmg dummy
scoreboard objectives add rm_bullet_life dummy

scoreboard objectives add rm_resistance custom:time_since_death

forceload add 0 0 0 0

schedule function rm:slowtick 1s append

scoreboard objectives add start trigger
scoreboard objectives add reset trigger