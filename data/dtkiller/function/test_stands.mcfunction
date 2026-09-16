# ===== 测试: 查看盔甲架数量与状态 =====
execute store result score #as_all dtk.count run execute if entity @e[type=armor_stand]
execute store result score #as_total dtk.count run execute if entity @e[type=armor_stand,tag=birth]
execute store result score #as_free dtk.count run execute if entity @e[type=armor_stand,tag=birth,tag=!occupied]
execute store result score #as_occupied dtk.count run execute if entity @e[type=armor_stand,tag=birth,tag=occupied]
execute store result score #as_picked dtk.count run execute if entity @e[type=armor_stand,tag=birth,tag=picked]
execute store result score #as_chosen dtk.count run execute if entity @e[type=armor_stand,tag=birth,tag=chosen]

tag @s add dtk_asview
tellraw @s {"text":"===== 盔甲架状态 =====","color":"gold"}
tellraw @s [{"text":"全部盔甲架: ","color":"yellow"},{"score":{"name":"#as_all","objective":"dtk.count"},"color":"white"}]
tellraw @s [{"text":"出生点(birth): ","color":"yellow"},{"score":{"name":"#as_total","objective":"dtk.count"},"color":"white"}]
tellraw @s [{"text":"空闲(!occupied): ","color":"green"},{"score":{"name":"#as_free","objective":"dtk.count"},"color":"white"}]
tellraw @s [{"text":"已占用(occupied): ","color":"red"},{"score":{"name":"#as_occupied","objective":"dtk.count"},"color":"white"}]
tellraw @s [{"text":"本轮已生成(picked): ","color":"aqua"},{"score":{"name":"#as_picked","objective":"dtk.count"},"color":"white"}]
tellraw @s [{"text":"临时选中(chosen): ","color":"light_purple"},{"score":{"name":"#as_chosen","objective":"dtk.count"},"color":"white"}]
tellraw @s {"text":"--- 详情 ---","color":"gray"}
execute as @e[type=armor_stand,tag=birth] run function dtkiller:test_stands_list with entity @s
tag @s remove dtk_asview
