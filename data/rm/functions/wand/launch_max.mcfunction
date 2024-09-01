playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1.2
playsound block.conduit.deactivate player @a ~ ~ ~ 1 0.8

function rm:wand/ray/calc_dmg

tag @s add shooter
execute anchored eyes positioned ^-0.1 ^-0.1 ^0.5 run function rm:wand/ray/step
tag @s remove shooter

function rm:wand/reset

scoreboard players set @s rm_wand_cd -30