# 同楼层优先：按层高 5 格划分楼层，先找本层的最近玩家，找不到再找全图最近
scoreboard players set #base dtk.math 0
execute if data storage dtkiller:config arena store result score #base dtk.math run data get storage dtkiller:config arena.y1
scoreboard players set #floorH dtk.math 5
scoreboard players operation #f dtk.math = @s dtk.py
scoreboard players operation #f dtk.math -= #base dtk.math
scoreboard players operation #f dtk.math /= #floorH dtk.math
scoreboard players operation #fb dtk.math = #floorH dtk.math
scoreboard players operation #fb dtk.math *= #f dtk.math
scoreboard players operation #fb dtk.math += #base dtk.math
execute store result storage dtkiller:compass ymin int 1 run scoreboard players get #fb dtk.math
execute store result storage dtkiller:compass dy int 1 run scoreboard players get #floorH dtk.math
function dtkiller:combat/compass_find_floor with storage dtkiller:compass
execute if score #found dtk.math matches 0 run function dtkiller:combat/compass_find_any
execute if score #found dtk.math matches 1.. run function dtkiller:combat/compass_apply with storage dtkiller:compass
return 0
