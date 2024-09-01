effect give @a saturation infinite 0 true

execute as @a unless score @s rm_pid matches 0.. run function rm:players/init

execute as @a[tag=!upgrading] if predicate rm:offhand_upgrade run function rm:upgrade/enter
execute as @a[tag=upgrading] unless predicate rm:offhand_upgrade run function rm:upgrade/quit

execute as @a[tag=upgrading,scores={rm_upgrade_cd=0..}] run function rm:upgrade/show_title

kill @e[type=item,nbt={Item:{tag:{rm_upgrade_ui:1}}}]
execute as @a[tag=!upgrading] run clear @s warped_fungus_on_a_stick{rm_upgrade_ui:1}

execute as @a[scores={rm_used_upgrade=1..}] run function rm:upgrade/upgrade
execute as @a[scores={rm_update_attributes=1}] run function rm:upgrade/update_attributes
execute as @a[scores={rm_update_attributes_logout=1}] run function rm:upgrade/update_attributes

execute as @a[scores={rm_level=76..}] run xp set @s 75 levels
execute as @a run function rm:upgrade/check_levelup

kill @e[type=experience_orb]
xp set @a 0 points

execute as @a[tag=invisibility] if predicate rm:sprinting run effect give @s invisibility 1 0 true
execute as @a[tag=invisibility] unless predicate rm:sprinting run effect clear @s invisibility

execute as @a[tag=evading] run function rm:abilities/evade/evading

execute as @a[tag=jump,scores={rm_jump_cd=1}] at @s run playsound ui.toast.out player @s ~ ~ ~ 1 2
execute as @a[tag=jump] if score @s rm_jump_cd matches 0.. if predicate rm:sneaking run function rm:abilities/jump/give_effect
execute as @a[tag=jump,scores={rm_jump_cd=0..}] unless predicate rm:sneaking run effect clear @s jump_boost
execute as @a[scores={rm_jump=1..}] run function rm:abilities/jump/jump

execute as @a[tag=jumped] if data entity @s {OnGround:1b} run function rm:abilities/jump/remove_effect

execute as @a[scores={rm_autoheal_cd=0..}] run function rm:abilities/healing/tick
execute as @a[scores={rm_autoheal_removeregen=-1}] run effect clear @s regeneration

execute as @a[scores={rm_wand_use=1..}] at @s run function rm:wand/use
execute as @a[scores={rm_wand_launch=-1}] run function rm:wand/launch

execute as @e[type=item_display,tag=wand_bullet] run function rm:wand/bullets/fly

execute if score #game_status rm matches 1.. run function rm:gameplay/tick

effect give @a[scores={rm_resistance=..-1}] resistance 3 9 false