advancement revoke @s only rm:hit_by_bleed

execute unless predicate rm:chance_5 run return -1

effect give @s wither 10 1 false
particle block red_wool ~ ~1 ~ 0 0 0 0 15