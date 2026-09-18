# 宏: function dtkiller:test_spawn_players_go with storage dtkiller:tmp
$player 1 spawn at $(x) $(y) $(z)
$player 2 spawn at $(x) $(y) $(z)
$player 3 spawn at $(x) $(y) $(z)
$player 4 spawn at $(x) $(y) $(z)
$player 5 spawn at $(x) $(y) $(z)
$tellraw @s {"text":"[测试] 已在当前位置生成 5 个假人（进入检测区即可触发人数提示）","color":"gold"}
return 0
