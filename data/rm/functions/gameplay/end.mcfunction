title @a times 0 40 20
title @a title [{"selector": "@p[tag=ingame,tag=!dead]","color": "yellow"},{"text": " 获得了胜利！","color": "white"}]

execute as @a[tag=dead] at @s run playsound item.goat_horn.sound.4 player @s ~ ~ ~ 1 1
execute as @a[tag=!dead] at @s run playsound item.goat_horn.sound.1 player @s ~ ~ ~ 1 0.8

scoreboard players set @a rm_resistance -540
#effect give @a resistance 30 9 true
execute at @a[tag=ingame] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16759552],FadeColors:[I;16771471]},{Type:2,Flicker:1b,Colors:[I;16716306],FadeColors:[I;16750230]}]}}}}

scoreboard players set #game_status rm 3

schedule function rm:gameplay/reset 10s replace