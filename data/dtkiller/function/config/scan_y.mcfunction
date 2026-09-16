# 处理当前 Y 层，调度下一层（每 tick 一层，避免一次性卡顿）
scoreboard players operation #cx dtk.math = #sx dtk.math
function dtkiller:config/scan_x
scoreboard players add #cy dtk.math 1
execute if score #cy dtk.math <= #ey dtk.math run schedule function dtkiller:config/scan_y 1t
execute if score #cy dtk.math > #ey dtk.math run function dtkiller:config/scan_finish
return 0
