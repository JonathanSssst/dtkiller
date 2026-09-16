# 每 tick 更新每个玩家的追踪指南针指向最近的其它玩家
execute as @a[tag=ingame,gamemode=!spectator] at @s run function dtkiller:combat/compass_update
return 0
