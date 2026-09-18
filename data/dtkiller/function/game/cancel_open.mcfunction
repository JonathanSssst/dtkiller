# 开放倒计时取消（人数不足）
scoreboard players set #state dtk.state 0
scoreboard players set #timer dtk.timer 0
title @a title {"text":"人数不足，已取消","color":"red"}
tellraw @a {"text":"[DTkiller] 检测区人数不足 5，已取消开局","color":"red"}
return 0
