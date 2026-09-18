# 测试：在“执行者当前位置”生成 5 个假人（需要 Carpet 的 /player）
execute store result storage dtkiller:tmp x double 1 run data get entity @s Pos[0]
execute store result storage dtkiller:tmp y double 1 run data get entity @s Pos[1]
execute store result storage dtkiller:tmp z double 1 run data get entity @s Pos[2]
function dtkiller:test_spawn_players_go with storage dtkiller:tmp
return 0
