execute as @a[tag=undead] run function rm:abilities/undead/check_undead

execute as @e[type=boat,tag=hitbox] unless data entity @s Passengers[0] run tp @s 0 -100 0

execute if score #game_status rm matches 1 run function rm:gameplay/tick_s1_clock

schedule function rm:slowtick 1s replace