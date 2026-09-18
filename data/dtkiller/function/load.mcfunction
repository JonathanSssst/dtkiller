# ===== DTkiller 初始化 =====
# 计分板
scoreboard objectives add dtk.state dummy
scoreboard objectives add dtk.timer dummy
scoreboard objectives add dtk.count dummy
scoreboard objectives add dtk.math dummy
scoreboard objectives add dtk.throw minecraft.used:minecraft.snowball
scoreboard objectives add dtk.last_throw dummy
scoreboard objectives add dtk.pickup minecraft.picked_up:minecraft.netherite_scrap
scoreboard objectives add dtk.last_pickup dummy
scoreboard objectives add dtk.deaths deathCount
scoreboard objectives add dtk.kills dummy
scoreboard objectives add dtk.survive dummy
scoreboard objectives add dtk.grace dummy
scoreboard objectives add dtk.freeze dummy
scoreboard objectives add dtk.welcome dummy
scoreboard objectives add dtk.trig trigger
scoreboard objectives add dtk.px dummy
scoreboard objectives add dtk.py dummy
scoreboard objectives add dtk.pz dummy
scoreboard objectives add dtk.fx dummy
scoreboard objectives add dtk.fy dummy
scoreboard objectives add dtk.fz dummy
kill @e[type=item,tag=dtk_scrap]

# 常量
scoreboard players set #2 dtk.count 2
scoreboard players set #20 dtk.math 20
scoreboard players set #19 dtk.math 19
scoreboard players set #1200 dtk.math 1200

# 状态机：#state 0=空闲 1=倒计时 2=游戏中 3=结算
scoreboard players set #state dtk.state 0
scoreboard players set #timer dtk.timer 0
scoreboard players set #scrap dtk.timer 0

# 游戏规则 (1.21.11 snake_case)
gamerule keep_inventory true
gamerule immediate_respawn true
gamerule natural_health_regeneration false
gamerule advance_time false
gamerule advance_weather false
gamerule spawn_mobs false
gamerule mob_griefing false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule random_tick_speed 0
gamerule fire_spread_radius_around_player 0

# 剩余时间 bossbar
bossbar remove dtkiller:time
bossbar add dtkiller:time {"text":"剩余时间"}
bossbar set dtkiller:time color blue
bossbar set dtkiller:time max 12000
bossbar set dtkiller:time visible false

# 右侧信息栏 (计分板侧边栏)：剩余人数 / 碎片刷新
scoreboard objectives add dtk.info dummy
scoreboard objectives modify dtk.info displayname {"text":"DT Killer"}
scoreboard objectives modify dtk.info numberformat blank
scoreboard players set 剩余人数 dtk.info 2
scoreboard players display name 剩余人数 dtk.info [{"text":"剩余人数: ","color":"yellow"},{"score":{"name":"#alive","objective":"dtk.count"},"color":"white"}]
scoreboard players set 碎片刷新 dtk.info 1
scoreboard players display name 碎片刷新 dtk.info [{"text":"碎片刷新: ","color":"aqua"},{"score":{"name":"#sc","objective":"dtk.math"},"color":"white"},{"text":" 秒","color":"aqua"}]
# 未在游戏时隐藏右侧信息栏（开局时由 begin 打开）
scoreboard objectives setdisplay sidebar

tellraw @a {"text":"[DTkiller] v1.30 - powered by LSssT","color":"gold"}
tellraw @a {"text":"[DTkiller] 输入 /function dtkiller:help 查看帮助","color":"gray"}

# 配置状态
execute if data storage dtkiller:config detect run tellraw @a [{"text":"[DTkiller] 检测区: ","color":"gray"},{"text":"已配置","color":"green"}]
execute unless data storage dtkiller:config detect run tellraw @a [{"text":"[DTkiller] 检测区: ","color":"gray"},{"text":"未配置","color":"red"}]
execute if data storage dtkiller:config arena run tellraw @a [{"text":"[DTkiller] 竞技区: ","color":"gray"},{"text":"已配置","color":"green"}]
execute unless data storage dtkiller:config arena run tellraw @a [{"text":"[DTkiller] 竞技区: ","color":"gray"},{"text":"未配置","color":"red"}]
execute if data storage dtkiller:config lobby run tellraw @a [{"text":"[DTkiller] 大厅: ","color":"gray"},{"text":"已配置","color":"green"}]
execute unless data storage dtkiller:config lobby run tellraw @a [{"text":"[DTkiller] 大厅: ","color":"gray"},{"text":"未配置","color":"red"}]

# 出生点状态（临时强加载竞技区，保证统计准确）
execute if data storage dtkiller:config arena run function dtkiller:config/scan_forceload with storage dtkiller:config arena
execute store result score #birth dtk.count run execute if entity @e[type=armor_stand,tag=birth]
execute if data storage dtkiller:config arena run function dtkiller:config/scan_unforceload with storage dtkiller:config arena
execute if score #birth dtk.count matches 1.. run tellraw @a [{"text":"[DTkiller] 出生点: ","color":"gray"},{"text":"已配置 ","color":"green"},{"score":{"name":"#birth","objective":"dtk.count"},"color":"white"},{"text":" 个","color":"gray"}]
execute if score #birth dtk.count matches ..0 run tellraw @a [{"text":"[DTkiller] 出生点: ","color":"gray"},{"text":"未配置","color":"red"}]
