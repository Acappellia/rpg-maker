$execute if score #timer_s1_sec rm matches 10.. run bossbar set timer_s1 name [{"text": "成长阶段剩余时间：", "color": "yellow"},{"text": "$(min)","color": "white"},{"text": ":","color": "gray"},{"text": "$(sec)","color": "white"}]
$execute if score #timer_s1_sec rm matches ..9 run bossbar set timer_s1 name [{"text": "成长阶段剩余时间：", "color": "yellow"},{"text": "$(min)","color": "white"},{"text": ":","color": "gray"},{"text": "0","color": "white"},{"text": "$(sec)","color": "white"}]