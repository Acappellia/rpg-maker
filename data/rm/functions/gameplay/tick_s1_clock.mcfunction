execute store result bossbar timer_s1 value run scoreboard players remove #timer_s1 rm 1

scoreboard players operation #timer_s1_min rm = #timer_s1 rm
scoreboard players operation #timer_s1_sec rm = #timer_s1 rm

scoreboard players operation #timer_s1_min rm /= #60 rm
scoreboard players operation #timer_s1_sec rm %= #60 rm

execute store result storage rm:tmp timer_info.min int 1 run scoreboard players get #timer_s1_min rm
execute store result storage rm:tmp timer_info.sec int 1 run scoreboard players get #timer_s1_sec rm

function rm:gameplay/tick_s1_clock_settitle with storage rm:tmp timer_info
bossbar set minecraft:timer_s1 players @a


execute if score #timer_s1 rm matches 1500 run difficulty normal
execute if score #timer_s1 rm matches 1500 run tellraw @a [{"text": "> ","color": "white"},{"text": "怪物变得更加强大了……","color": "red"}]

execute if score #timer_s1 rm matches 1200 run difficulty hard
execute if score #timer_s1 rm matches 1500 run tellraw @a [{"text": "> ","color": "white"},{"text": "怪物变得更加强大了……","color": "red"}]

execute if score #timer_s1 rm matches 900 run scoreboard players set #monster_res rm 1
execute if score #timer_s1 rm matches 900 run tellraw @a [{"text": "> ","color": "white"},{"text": "怪物变得更加强大了……","color": "red"}]

execute if score #timer_s1 rm matches ..0 run function rm:gameplay/start_s2