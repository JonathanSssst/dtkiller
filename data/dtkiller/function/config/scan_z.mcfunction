# Z 循环（坐标定位，不用实体探针）
execute if score #cz dtk.math > #ez dtk.math run return 0
execute store result storage dtkiller:config scanpos.z int 1 run scoreboard players get #cz dtk.math
function dtkiller:config/scan_block with storage dtkiller:config scanpos
scoreboard players add #cz dtk.math 1
function dtkiller:config/scan_z
