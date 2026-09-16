# 回退：全图找最近的其他玩家
execute store result score #found dtk.math run execute if entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,limit=1,sort=nearest]
execute if score #found dtk.math matches 1.. store result storage dtkiller:compass x int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,limit=1,sort=nearest] Pos[0]
execute if score #found dtk.math matches 1.. store result storage dtkiller:compass y int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,limit=1,sort=nearest] Pos[1]
execute if score #found dtk.math matches 1.. store result storage dtkiller:compass z int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,limit=1,sort=nearest] Pos[2]
return 0
