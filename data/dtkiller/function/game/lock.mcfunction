# 锁定参与玩家（此刻在检测区内的人）并分配职业，随后进入 5 秒锁定倒计时
tag @a remove role.killer
tag @a remove role.detective
tag @a remove role.student
tag @a remove unassigned
tag @a remove ingame
tag @a remove dead
function dtkiller:game/tag_ingame with storage dtkiller:config detect
execute store result score #count dtk.count run execute if entity @a[tag=ingame]
execute if score #count dtk.count matches ..4 run function dtkiller:game/cancel_lock
execute if score #count dtk.count matches ..4 run return 0

# 清理与准备
clear @a[tag=ingame]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}]
execute if data storage dtkiller:config arena run function dtkiller:config/scan_forceload with storage dtkiller:config arena

# 出生点数量校验
execute store result score #stands dtk.count run execute if entity @e[type=armor_stand,tag=birth]
execute if score #stands dtk.count < #count dtk.count run function dtkiller:game/abort_nospawn
execute if score #stands dtk.count < #count dtk.count run return 0

# 职业数量
scoreboard players set #nk dtk.count 1
scoreboard players set #nd dtk.count 1
execute if score #count dtk.count matches 7..11 run scoreboard players set #nk dtk.count 2
execute if score #count dtk.count matches 12..14 run scoreboard players set #nk dtk.count 3
execute if score #count dtk.count matches 15..17 run scoreboard players set #nk dtk.count 3
execute if score #count dtk.count matches 15..17 run scoreboard players set #nd dtk.count 2
execute if score #count dtk.count matches 18..24 run scoreboard players set #nk dtk.count 4
execute if score #count dtk.count matches 18..24 run scoreboard players set #nd dtk.count 2

# 随机分配
function dtkiller:game/assign_killers
function dtkiller:game/assign_detectives
function dtkiller:game/assign_students

scoreboard players set #state dtk.state 2
scoreboard players set #timer dtk.timer 100
title @a title {"text":"5","color":"gold"}
tellraw @a {"text":"[DTkiller] 参与名单已锁定，5 秒后传送（期间加入的玩家不参战）","color":"gold"}
return 0
