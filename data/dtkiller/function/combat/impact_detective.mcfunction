scoreboard players set #penalize dtk.count 0
execute as @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0},sort=nearest,limit=1] run function dtkiller:combat/chalk_kill_hit
execute if score #penalize dtk.count matches 1 run function dtkiller:combat/penalty_owner
kill @s
