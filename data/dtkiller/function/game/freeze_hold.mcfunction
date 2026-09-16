scoreboard players operation #fsec dtk.math = @s dtk.freeze
scoreboard players operation #fsec dtk.math += #19 dtk.math
scoreboard players operation #fsec dtk.math /= #20 dtk.math
execute store result storage dtkiller:tmp f int 1 run scoreboard players get #fsec dtk.math
title @s actionbar [{"text":"冻结中: ","color":"aqua","bold":true},{"nbt":"f","storage":"dtkiller:tmp"},{"text":" 秒","color":"aqua","bold":true}]
particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.01 6 force
execute store result storage dtkiller:tmp fx int 1 run scoreboard players get @s dtk.fx
execute store result storage dtkiller:tmp fy int 1 run scoreboard players get @s dtk.fy
execute store result storage dtkiller:tmp fz int 1 run scoreboard players get @s dtk.fz
function dtkiller:game/tp_freeze with storage dtkiller:tmp
