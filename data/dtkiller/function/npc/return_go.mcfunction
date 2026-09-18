# 读取记录的返回点坐标并传送（Y 轴 +0.5 格）
execute store result storage dtkiller:return x int 1 run scoreboard players get @s dtk.rx
execute store result storage dtkiller:return y int 1 run scoreboard players get @s dtk.ry
execute store result storage dtkiller:return z int 1 run scoreboard players get @s dtk.rz
function dtkiller:npc/return_here with storage dtkiller:return
tellraw @s {"text":"[DTkiller] 已返回记录的位置","color":"green"}
return 0
