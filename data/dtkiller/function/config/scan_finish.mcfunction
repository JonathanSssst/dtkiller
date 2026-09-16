# 扫描完成: 统计 + 重新转换 + 清理 + 输出结果
kill @e[type=minecraft:marker,tag=dtk_probe]
function dtkiller:config/convert_birth with storage dtkiller:config arena

# 统计最终 birth 出生点数量
data modify storage dtkiller:config cargs set from storage dtkiller:config arena
data modify storage dtkiller:config cargs.extra set value ",tag=birth"
data modify storage dtkiller:config cargs.out set value "#as_total"
function dtkiller:config/count_stand with storage dtkiller:config cargs
data remove storage dtkiller:config cargs
data remove storage dtkiller:config scanpos

# 取消强加载、恢复规则
function dtkiller:config/scan_unforceload with storage dtkiller:config arena
gamerule max_command_sequence_length 65536

tellraw @a {"text":"===== 出生点初始化结果 =====","color":"gold"}
tellraw @a [{"text":"扫描范围 X: ","color":"gray"},{"score":{"name":"#sx","objective":"dtk.math"},"color":"white"},{"text":" ~ ","color":"dark_gray"},{"score":{"name":"#ex","objective":"dtk.math"},"color":"white"},{"text":"  Y: ","color":"gray"},{"score":{"name":"#sy","objective":"dtk.math"},"color":"white"},{"text":" ~ ","color":"dark_gray"},{"score":{"name":"#ey","objective":"dtk.math"},"color":"white"},{"text":"  Z: ","color":"gray"},{"score":{"name":"#sz","objective":"dtk.math"},"color":"white"},{"text":" ~ ","color":"dark_gray"},{"score":{"name":"#ez","objective":"dtk.math"},"color":"white"}]
tellraw @a [{"text":"竞技区转换前盔甲架: ","color":"yellow"},{"score":{"name":"#as_before","objective":"dtk.math"},"color":"white"},{"text":" 个","color":"gray"}]
tellraw @a [{"text":"本次转换为 birth: ","color":"yellow"},{"score":{"name":"#as_conv","objective":"dtk.math"},"color":"white"},{"text":" 个","color":"gray"}]
tellraw @a [{"text":"扫描到金块: ","color":"yellow"},{"score":{"name":"#gold_total","objective":"dtk.math"},"color":"white"},{"text":" 个","color":"gray"}]
tellraw @a [{"text":"金块上方新建盔甲架: ","color":"yellow"},{"score":{"name":"#as_created","objective":"dtk.math"},"color":"white"},{"text":" 个","color":"gray"}]
tellraw @a [{"text":"最终出生点(birth)合计: ","color":"green"},{"score":{"name":"#as_total","objective":"dtk.math"},"color":"white"},{"text":" 个","color":"gray"}]
return 0
