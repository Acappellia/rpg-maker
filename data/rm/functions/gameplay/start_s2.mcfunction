execute as @a[tag=reviving] run function rm:gameplay/revive

effect give @a[gamemode=!spectator] instant_health 1 9 true
effect give @a[gamemode=!spectator] resistance 30 9 false

tellraw @a[gamemode=!spectator] [{"text": "> ","color": "gray"},{"text": "决胜时刻到来!", "color": "#ffc5a1"}]
execute as @a at @s run playsound item.goat_horn.sound.2 player @s ~ ~ ~ 1 1

scoreboard players set #game_status rm 2

bossbar set timer_s1 visible false
bossbar add timer_s2 [{"text": "决胜时刻","color": "yellow"}]
bossbar set timer_s2 color red
bossbar set timer_s2 max 100
bossbar set timer_s2 value 100
bossbar set timer_s2 style progress
bossbar set timer_s2 visible true

tp @a -284 -22 -207 0 0