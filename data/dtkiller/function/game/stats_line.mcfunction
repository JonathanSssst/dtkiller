# 单个玩家的结算信息：击杀数与存活秒数（仅显示在该玩家自己屏幕）
scoreboard players operation @s dtk.survive /= #20 dtk.math
title @s subtitle [{"text":"本局统计  ","color":"gold"},{"text":"击杀 ","color":"gray"},{"score":{"name":"@s","objective":"dtk.kills"},"color":"red"},{"text":"   存活 ","color":"gray"},{"score":{"name":"@s","objective":"dtk.survive"},"color":"aqua"},{"text":" 秒","color":"gray"}]
return 0
