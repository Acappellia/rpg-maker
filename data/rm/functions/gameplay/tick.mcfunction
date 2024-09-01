gamemode adventure @a[gamemode=survival]
tag @a[tag=!ingame] add spec
gamemode spectator @a[tag=reviving]
gamemode spectator @a[tag=spec]
gamemode spectator @a[tag=dead]

execute if score #game_status rm matches 1 run function rm:gameplay/tick_s1
execute if score #game_status rm matches 2 run function rm:gameplay/tick_s2