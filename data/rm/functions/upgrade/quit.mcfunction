tag @s remove upgrading

execute store result storage rm:tmp item_info.Count int 1 run clear @s nether_star{rm_upgrade:1}
clear @s warped_fungus_on_a_stick{rm_upgrade_ui:1}

function rm:players/restore_inv

function rm:upgrade/give_gem with storage rm:tmp item_info