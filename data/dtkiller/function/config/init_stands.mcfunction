# ===== 初始化出生点 v10 =====
# 1) 竞技区内所有盔甲架 -> birth 隐形标记
# 2) 扫描竞技区内所有金块，上方没有 birth 盔甲架则补一个普通盔甲架
# 3) 再次转换，使新盔甲架也变成 birth 隐形标记
# 4) 输出统计结果
tellraw @s {"text":"[DTkiller] 开始初始化出生点 v1.28","color":"gold"}
execute unless data storage dtkiller:config arena run tellraw @s {"text":"[DTkiller] 未配置竞技区，请先执行 /function dtkiller:config/set_arena","color":"red"}
execute unless data storage dtkiller:config arena run return 0

# 强加载竞技区，提高指令链上限
function dtkiller:config/scan_forceload with storage dtkiller:config arena
gamerule max_command_sequence_length 2000000

scoreboard players set #as_before dtk.math 0
scoreboard players set #as_conv dtk.math 0
scoreboard players set #gold_total dtk.math 0
scoreboard players set #as_created dtk.math 0
scoreboard players set #as_total dtk.math 0
kill @e[type=minecraft:marker,tag=dtk_probe]

# 0) 转换前统计竞技区盔甲架
data modify storage dtkiller:config cargs set from storage dtkiller:config arena
data modify storage dtkiller:config cargs.extra set value ""
data modify storage dtkiller:config cargs.out set value "#as_before"
function dtkiller:config/count_stand with storage dtkiller:config cargs
data modify storage dtkiller:config cargs.extra set value ",tag=!birth"
data modify storage dtkiller:config cargs.out set value "#as_conv"
function dtkiller:config/count_stand with storage dtkiller:config cargs
data remove storage dtkiller:config cargs

# 1) 竞技区内盔甲架 -> birth 隐形标记
function dtkiller:config/convert_birth with storage dtkiller:config arena

# 2) 记录扫描范围（竞技区最小角 + 各轴长度）
execute store result score #sx dtk.math run data get storage dtkiller:config arena.x1
execute store result score #sy dtk.math run data get storage dtkiller:config arena.y1
execute store result score #sz dtk.math run data get storage dtkiller:config arena.z1
execute store result score #ex dtk.math run data get storage dtkiller:config arena.dx
execute store result score #ey dtk.math run data get storage dtkiller:config arena.dy
execute store result score #ez dtk.math run data get storage dtkiller:config arena.dz
scoreboard players operation #ex dtk.math += #sx dtk.math
scoreboard players operation #ey dtk.math += #sy dtk.math
scoreboard players operation #ez dtk.math += #sz dtk.math

# 3) 逐层扫描（每 tick 一层，坐标定位）
scoreboard players operation #cy dtk.math = #sy dtk.math
function dtkiller:config/scan_y

tellraw @s {"text":"[DTkiller] 开始扫描金块（每 tick 一层），完成后输出统计...","color":"yellow"}
return 0
