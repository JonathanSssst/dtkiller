# 宏: function dtkiller:combat/compass_find_floor with storage dtkiller:compass
# 在 ymin ~ ymin+dy 的 Y 范围内找最近的其他玩家
$execute store result score #found dtk.math run execute if entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,x=~-4000,dx=8000,y=$(ymin),dy=$(dy),z=~-4000,dz=8000]
$execute if score #found dtk.math matches 1.. store result storage dtkiller:compass x int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,x=~-4000,dx=8000,y=$(ymin),dy=$(dy),z=~-4000,dz=8000,sort=nearest,limit=1] Pos[0]
$execute if score #found dtk.math matches 1.. store result storage dtkiller:compass y int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,x=~-4000,dx=8000,y=$(ymin),dy=$(dy),z=~-4000,dz=8000,sort=nearest,limit=1] Pos[1]
$execute if score #found dtk.math matches 1.. store result storage dtkiller:compass z int 1 run data get entity @a[tag=ingame,gamemode=!spectator,distance=0.1..,x=~-4000,dx=8000,y=$(ymin),dy=$(dy),z=~-4000,dz=8000,sort=nearest,limit=1] Pos[2]
return 0
