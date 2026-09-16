# 金块上方生成一个 birth 盔甲架，并计数
scoreboard players add #as_created dtk.math 1
summon minecraft:armor_stand ~ ~ ~ {Tags:["birth"]}
return 0
