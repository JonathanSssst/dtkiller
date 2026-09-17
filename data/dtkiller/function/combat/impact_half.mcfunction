# 命中最近的其它玩家：由投掷者造成伤害（带击杀归属）
execute as @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0},sort=nearest,limit=1] run tag @s add dtk.victim
execute on origin run damage @e[tag=dtk.victim,limit=1] 10 minecraft:thrown by @s
tag @e[tag=dtk.victim] remove dtk.victim
kill @s
