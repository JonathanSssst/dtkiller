# X 循环（坐标定位，不用实体探针）
execute if score #cx dtk.math > #ex dtk.math run return 0
execute store result storage dtkiller:config scanpos.x int 1 run scoreboard players get #cx dtk.math
execute store result storage dtkiller:config scanpos.y int 1 run scoreboard players get #cy dtk.math
scoreboard players operation #cz dtk.math = #sz dtk.math
function dtkiller:config/scan_z
scoreboard players add #cx dtk.math 1
function dtkiller:config/scan_x
