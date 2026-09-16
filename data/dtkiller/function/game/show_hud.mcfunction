# 下一批碎片倒计时（右侧侧边栏 dtk.info 的“碎片刷新”条目）
scoreboard players operation #sc dtk.math = #scrap dtk.timer
scoreboard players operation #sc dtk.math /= #20 dtk.math
# 剩余时间 分:秒 (bossbar)
scoreboard players operation #mm dtk.math = #timer dtk.timer
scoreboard players operation #mm dtk.math /= #1200 dtk.math
scoreboard players operation #sub dtk.math = #mm dtk.math
scoreboard players operation #sub dtk.math *= #1200 dtk.math
scoreboard players operation #ss dtk.math = #timer dtk.timer
scoreboard players operation #ss dtk.math -= #sub dtk.math
scoreboard players operation #ss dtk.math /= #20 dtk.math
execute store result storage dtkiller:tmp mm int 1 run scoreboard players get #mm dtk.math
execute store result storage dtkiller:tmp ss int 1 run scoreboard players get #ss dtk.math
execute store result bossbar dtkiller:time value run scoreboard players get #timer dtk.timer
bossbar set dtkiller:time name [{"text":"剩余时间 "},{"nbt":"mm","storage":"dtkiller:tmp"},{"text":" 分 "},{"nbt":"ss","storage":"dtkiller:tmp"},{"text":" 秒"}]
# 剩余人数 (右侧侧边栏)
scoreboard players operation #alive dtk.count = #k dtk.count
scoreboard players operation #alive dtk.count += #g dtk.count
# 节流重置
scoreboard players set #hud dtk.math 10
