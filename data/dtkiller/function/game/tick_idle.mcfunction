# 空闲：每 10 tick 检查一次（人数由 count_watch 每 tick 更新）
scoreboard players remove #idle dtk.timer 1
execute if score #idle dtk.timer matches 1.. run return 0
scoreboard players set #idle dtk.timer 10
execute if data storage dtkiller:config detect if score #count dtk.count matches 5.. run function dtkiller:game/start_open
return 0
