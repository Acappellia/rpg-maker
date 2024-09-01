playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.2

tag @s add shooter
execute anchored eyes positioned ^-0.2 ^-0.1 ^0.5 summon item_display run function rm:wand/bullets/init
tag @s remove shooter

function rm:wand/reset

scoreboard players set @s rm_wand_cd -15