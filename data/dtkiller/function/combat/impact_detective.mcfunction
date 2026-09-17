# 命中最近的其它玩家：由投掷者秒杀（带击杀归属），并处理误杀惩罚
scoreboard players set #penalize dtk.count 0
execute as @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0},sort=nearest,limit=1] run tag @s add dtk.victim
execute on origin run damage @e[tag=dtk.victim,limit=1] 1000 minecraft:player_attack by @s
execute if entity @e[tag=dtk.victim,limit=1,tag=!role.killer] run scoreboard players set #penalize dtk.count 1
execute if score #penalize dtk.count matches 1 run function dtkiller:combat/penalty_owner
tag @e[tag=dtk.victim] remove dtk.victim
kill @s
