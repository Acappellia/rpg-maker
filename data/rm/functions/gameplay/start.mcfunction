tag @a remove spec
tag @a remove dead
tag @a remove ingame
tag @a remove reviving

tag @a[gamemode=spectator] add spec
tag @a[gamemode=!spectator] add ingame

effect clear @a[gamemode=!spectator]
effect give @a[gamemode=!spectator] instant_health 1 9 true
scoreboard players set @a[gamemode=!spectator] rm_resistance -240

clear @a[gamemode=!spectator]
gamemode adventure @a[gamemode=!spectator]

execute as @a[gamemode=!spectator] run function rm:players/reset_upgrade
execute as @a[gamemode=!spectator] run function rm:players/give_init_items

tellraw @a[gamemode=!spectator] [{"text": "> ","color": "gray"},{"text": "游戏已开始!", "color": "#c2ffae"}]
execute as @a at @s run playsound item.goat_horn.sound.0 player @s ~ ~ ~ 1 1

scoreboard players set #game_status rm 1
scoreboard players set #timer_s1 rm 1801

bossbar add timer_s1 "timer_s1"
bossbar set timer_s1 max 1800
bossbar set timer_s1 value 1800
bossbar set timer_s1 style notched_6
bossbar set timer_s1 visible true

difficulty easy
scoreboard players set #monster_res rm 0

scoreboard players set @a rm_mobkill 0

setworldspawn 0 21 -14 0
tp @a 0 21 -14 180 0