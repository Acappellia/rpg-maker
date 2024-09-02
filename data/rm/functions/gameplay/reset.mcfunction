gamemode adventure @a

tag @a remove spec
tag @a remove dead
tag @a remove ingame
tag @a remove reviving
scoreboard players set @a rm_mobkill 0

clear @a
execute as @a run function rm:players/reset_upgrade

scoreboard players set #game_status rm 0

scoreboard players set @a rm_resistance -140
#effect give @a resistance 10 9 true
effect give @a instant_health 1 9 true

bossbar set timer_s1 visible false
bossbar set timer_s2 visible false

difficulty peaceful

worldborder center 0 0
worldborder set 1000

kill @e[type=mutantmonsters:body_part]
kill @e[type=arrow]

setworldspawn 0 21 -14 0
tp @a 0 21 -14 180 0