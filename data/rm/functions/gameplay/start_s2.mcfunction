execute as @a[tag=reviving] run function rm:gameplay/revive

effect give @a[gamemode=!spectator] instant_health 1 9 true
scoreboard players set @a[gamemode=!spectator] rm_resistance -240

tellraw @a[gamemode=!spectator] [{"text": "> ","color": "gray"},{"text": "决胜时刻到来!", "color": "#ffc5a1"}]
execute as @a at @s run playsound item.goat_horn.sound.2 player @s ~ ~ ~ 1 1

scoreboard players set #game_status rm 2
difficulty peaceful

bossbar set timer_s1 visible false
bossbar add timer_s2 [{"text": "决胜时刻","color": "yellow"}]
bossbar set timer_s2 color red
bossbar set timer_s2 max 100
bossbar set timer_s2 value 100
bossbar set timer_s2 style progress
bossbar set timer_s2 visible true

worldborder center -284 -207
worldborder set 88
worldborder set 11 300
worldborder warning distance 4

setworldspawn -284 -22 -207 0
tp @a -284 -22 -207 0 0