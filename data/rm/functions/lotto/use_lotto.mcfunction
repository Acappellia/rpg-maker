item modify entity @s weapon.mainhand rm:remove_1

playsound block.ender_chest.open player @s ~ ~ ~ 1 1.3
particle end_rod ~ ~1 ~ 0 0 0 0.1 20

execute store result score #lotto_random rm run random value 1..8

execute if score #lotto_random rm matches 1 run give @s iron_axe{Unbreakable:1b}
execute if score #lotto_random rm matches 2 run give @s diamond_axe{Unbreakable:1b}
execute if score #lotto_random rm matches 3 run give @s netherite_axe{Unbreakable:1b}
execute if score #lotto_random rm matches 4 run give @s iron_sword{Unbreakable:1b}
execute if score #lotto_random rm matches 5 run give @s diamond_sword{Unbreakable:1b}
execute if score #lotto_random rm matches 6 run give @s netherite_sword{Unbreakable:1b}
execute if score #lotto_random rm matches 7 run give @s crossbow{Unbreakable:1b}
execute if score #lotto_random rm matches 8 run give @s bow{Unbreakable:1b}
execute if score #lotto_random rm matches 7..8 run give @s arrow 64