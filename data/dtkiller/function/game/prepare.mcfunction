scoreboard players set #state dtk.state 1
scoreboard players set #timer dtk.timer 120
tag @a remove role.killer
tag @a remove role.detective
tag @a remove role.student
tag @a remove unassigned
tag @a remove ingame
tag @a remove dead
function dtkiller:game/tag_ingame with storage dtkiller:config detect
clear @a[tag=ingame]
execute if data storage dtkiller:config arena run function dtkiller:config/scan_forceload with storage dtkiller:config arena
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}]

# 出生点数量校验（强加载后统计；不足则中止开局）
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

title @a title {"text":"准备开始","color":"yellow","bold":true}
