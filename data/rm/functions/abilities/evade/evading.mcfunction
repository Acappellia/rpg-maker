execute store result score #evade rm run random value 0..9

execute if score #evade rm matches 0 run effect give @s resistance 1 9 true
execute if score #evade rm matches 1..9 run effect clear @s resistance