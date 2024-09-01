execute as @a[scores={rm_revivetime=1}] run function rm:gameplay/dead
execute as @a[tag=reviving] run function rm:gameplay/revive
bossbar set timer_s2 players @a

execute store result score #players_left rm if entity @a[tag=ingame]
execute if score #players_left rm matches 1 run function rm:gameplay/end