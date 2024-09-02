execute unless score #monster_res rm matches 1 run effect give @e[type=vindicator] weakness 3 0 true
execute if score #monster_res rm matches 1 run effect give @e[type=#rm:xp_mobs] resistance 3 0 true
execute if score #monster_res rm matches 1 run effect give @e[type=#rm:xp_mobs,type=!vindicator] strength 3 0 true 