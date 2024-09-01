fill 0 -64 0 0 -63 0 shulker_box

execute store result storage rm:tmp p_info.rm_pid int 1 run scoreboard players get @s rm_pid

item replace block 0 -64 0 container.0 from entity @s inventory.0
item replace block 0 -64 0 container.1 from entity @s inventory.1
item replace block 0 -64 0 container.2 from entity @s inventory.2
item replace block 0 -64 0 container.3 from entity @s inventory.3
item replace block 0 -64 0 container.4 from entity @s inventory.4
item replace block 0 -64 0 container.5 from entity @s inventory.5
item replace block 0 -64 0 container.6 from entity @s inventory.6
item replace block 0 -64 0 container.7 from entity @s inventory.7
item replace block 0 -64 0 container.8 from entity @s inventory.8
item replace block 0 -64 0 container.9 from entity @s inventory.9
item replace block 0 -64 0 container.10 from entity @s inventory.10
item replace block 0 -64 0 container.11 from entity @s inventory.11
item replace block 0 -64 0 container.12 from entity @s inventory.12
item replace block 0 -64 0 container.13 from entity @s inventory.13
item replace block 0 -64 0 container.14 from entity @s inventory.14
item replace block 0 -64 0 container.15 from entity @s inventory.15
item replace block 0 -64 0 container.16 from entity @s inventory.16
item replace block 0 -64 0 container.17 from entity @s inventory.17
item replace block 0 -64 0 container.18 from entity @s inventory.18
item replace block 0 -64 0 container.19 from entity @s inventory.19
item replace block 0 -64 0 container.20 from entity @s inventory.20
item replace block 0 -64 0 container.21 from entity @s inventory.21
item replace block 0 -64 0 container.22 from entity @s inventory.22
item replace block 0 -64 0 container.23 from entity @s inventory.23
item replace block 0 -64 0 container.24 from entity @s inventory.24
item replace block 0 -64 0 container.25 from entity @s inventory.25
item replace block 0 -64 0 container.26 from entity @s inventory.26

item replace block 0 -63 0 container.0 from entity @s hotbar.0
item replace block 0 -63 0 container.1 from entity @s hotbar.1
item replace block 0 -63 0 container.2 from entity @s hotbar.2
item replace block 0 -63 0 container.3 from entity @s hotbar.3
item replace block 0 -63 0 container.4 from entity @s hotbar.4
item replace block 0 -63 0 container.5 from entity @s hotbar.5
item replace block 0 -63 0 container.6 from entity @s hotbar.6
item replace block 0 -63 0 container.7 from entity @s hotbar.7
item replace block 0 -63 0 container.8 from entity @s hotbar.8

function rm:players/store_to_data with storage rm:tmp p_info

item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

fill 0 -64 0 0 -63 0 air