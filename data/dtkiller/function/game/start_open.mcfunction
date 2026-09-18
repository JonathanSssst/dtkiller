# 开始 10 秒“开放倒计时”（期间玩家可继续加入）
scoreboard players set #state dtk.state 1
scoreboard players set #timer dtk.timer 200
title @a title {"text":"10","color":"yellow"}
title @a subtitle {"text":"检测区内人数≥5，10 秒后开始（可继续加入）","color":"gray"}
tellraw @a {"text":"[DTkiller] 检测区内人数已达 5，10 秒后开始，期间可继续加入","color":"yellow"}
return 0
