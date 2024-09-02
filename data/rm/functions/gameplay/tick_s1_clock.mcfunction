execute store result bossbar timer_s1 value run scoreboard players remove #timer_s1 rm 1

scoreboard players operation #timer_s1_min rm = #timer_s1 rm
scoreboard players operation #timer_s1_sec rm = #timer_s1 rm

scoreboard players operation #timer_s1_min rm /= #60 rm
scoreboard players operation #timer_s1_sec rm %= #60 rm

execute store result storage rm:tmp timer_info.min int 1 run scoreboard players get #timer_s1_min rm
execute store result storage rm:tmp timer_info.sec int 1 run scoreboard players get #timer_s1_sec rm

function rm:gameplay/tick_s1_clock_settitle with storage rm:tmp timer_info
bossbar set minecraft:timer_s1 players @a


execute if score #timer_s1 rm matches 1400 run difficulty normal
execute if score #timer_s1 rm matches 1400 run tellraw @a [{"text": "> ","color": "gray"},{"text": "怪物变得更加强大了…… ","color": "white"},{"text": "游戏难度：","color": "gray"},{"text": "简单","color": "green"},{"text": " >> ","color": "gray"},{"text": "普通","color": "gold"}]
execute if score #timer_s1 rm matches 1400 run tellraw @a [{"text": "> ","color": "gray"},{"text": "突变僵尸 ","color": "red"},{"text": "已出现在","color": "gray"},{"text": " 港口区-“远洋号”商船","color": "white"}]
execute if score #timer_s1 rm matches 1400 as @a at @s run playsound minecraft:item.goat_horn.sound.6 player @s ~ ~ ~ 1 1

execute if score #timer_s1 rm matches 1000 run difficulty hard
execute if score #timer_s1 rm matches 1000 run tellraw @a [{"text": "> ","color": "gray"},{"text": "怪物变得更加强大了…… ","color": "white"},{"text": "游戏难度：","color": "gray"},{"text": "普通","color": "gold"},{"text": " >> ","color": "gray"},{"text": "困难","color": "red"}]
execute if score #timer_s1 rm matches 1000 run tellraw @a [{"text": "> ","color": "gray"},{"text": "突变骷髅 ","color": "red"},{"text": "已出现在","color": "gray"},{"text": " 大教堂祭坛","color": "white"}]
execute if score #timer_s1 rm matches 1000 as @a at @s run playsound minecraft:item.goat_horn.sound.6 player @s ~ ~ ~ 1 1

execute if score #timer_s1 rm matches 600 run scoreboard players set #monster_res rm 1
execute if score #timer_s1 rm matches 600 run tellraw @a [{"text": "> ","color": "gray"},{"text": "怪物变得更加强大了…… ","color": "white"},{"text": "所有怪物获得：","color": "gray"},{"text": "抗性 I","color": "dark_red"},{"text": " & ","color": "gray"},{"text": "力量 I","color": "dark_red"}]
execute if score #timer_s1 rm matches 600 run tellraw @a [{"text": "> ","color": "gray"},{"text": "突变末影人 ","color": "red"},{"text": "已出现在","color": "gray"},{"text": " 市政厅","color": "white"}]
execute if score #timer_s1 rm matches 600 as @a at @s run playsound minecraft:item.goat_horn.sound.6 player @s ~ ~ ~ 1 1

execute if score #timer_s1 rm matches ..0 run function rm:gameplay/start_s2