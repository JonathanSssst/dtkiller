# 检测区人数变化提示：有人加入时，只发给检测区内的玩家
execute unless data storage dtkiller:config detect run return 0
function dtkiller:game/count with storage dtkiller:config detect
execute if score #count dtk.count > #last_count dtk.count run function dtkiller:game/count_notify with storage dtkiller:config detect
scoreboard players operation #last_count dtk.count = #count dtk.count
return 0
