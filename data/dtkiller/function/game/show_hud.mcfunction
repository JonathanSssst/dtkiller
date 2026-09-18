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
# 刷新侧边栏显示名（分数被隐藏，数值以内嵌文本实时显示）
execute store result storage dtkiller:tmp alive int 1 run scoreboard players get #alive dtk.count
execute store result storage dtkiller:tmp sc int 1 run scoreboard players get #sc dtk.math
scoreboard players display name 剩余人数 dtk.info [{"text":"剩余人数: ","color":"yellow"},{"nbt":"alive","storage":"dtkiller:tmp"}]
scoreboard players display name 碎片刷新 dtk.info [{"text":"碎片刷新: ","color":"aqua"},{"nbt":"sc","storage":"dtkiller:tmp"},{"text":" 秒","color":"aqua"}]
# 节流重置
scoreboard players set #hud dtk.math 10
