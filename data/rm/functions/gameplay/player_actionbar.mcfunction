execute as @a[tag=ingame,tag=!reviving,tag=!dead,scores={rm_level=..64}] if score @s rm_mobkill matches 1 run title @s actionbar [{"text": "--- ","color": "gray"},{"text": " 🗡 ","color": "aqua"},{"text": "🗡 ","color": "blue"},{"text": " ---","color": "gray"}]
execute as @a[tag=ingame,tag=!reviving,tag=!dead,scores={rm_level=..64}] unless score @s rm_mobkill matches 1 run title @s actionbar [{"text": "--- ","color": "gray"},{"text": " 🗡 🗡 ","color": "blue"},{"text": " ---","color": "gray"}]
execute as @a[tag=ingame,tag=!reviving,tag=!dead,scores={rm_level=65..}] run title @s actionbar [{"text": "--- ","color": "gray"},{"text": "ＭＡＸ　ＬＥＶＥＬ","color": "blue"},{"text": " ---","color": "gray"}]