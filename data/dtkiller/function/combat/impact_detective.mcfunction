# 命中最近的其它玩家：秒杀（必定死亡），并为投掷者记击杀；误杀则惩罚
scoreboard players set #penalize dtk.count 0
execute as @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0},sort=nearest,limit=1] run tag @s add dtk.victim
execute if entity @e[tag=dtk.victim,limit=1,tag=!role.killer] run scoreboard players set #penalize dtk.count 1
# 击杀归属给投掷者，并确保受害者死亡
execute if entity @e[tag=dtk.victim] on origin run scoreboard players add @s dtk.kills 1
execute if entity @e[tag=dtk.victim] run kill @e[tag=dtk.victim,limit=1]
execute if score #penalize dtk.count matches 1 run function dtkiller:combat/penalty_owner
tag @e[tag=dtk.victim] remove dtk.victim
kill @s
