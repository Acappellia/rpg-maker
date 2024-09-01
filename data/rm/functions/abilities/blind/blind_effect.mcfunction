execute if score @s rm_wand_launch matches ..-1 run function rm:wand/reset
effect give @s blindness 5 0 true
effect give @s slowness 5 1 true
effect give @s weakness 5 1 false
scoreboard players set @s rm_blind_time -80
playsound minecraft:entity.skeleton.hurt player @a ~ ~ ~ 1 0.5
#execute at @s positioned ~ ~2 ~ run tp @e[type=boat,distance=..0.5,sort=nearest,limit=1] 0 -100 0