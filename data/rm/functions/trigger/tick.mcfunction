scoreboard players enable @a start
scoreboard players enable @a reset

execute as @p[scores={start=1..}] run function rm:gameplay/start
execute as @p[scores={reset=1..}] run function rm:gameplay/reset

scoreboard players set @a start 0
scoreboard players set @a reset 0