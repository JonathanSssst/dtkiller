execute as @a[tag=ingame,scores={dtk.grace=1..}] run scoreboard players remove @s dtk.grace 1
execute as @a[tag=ingame,scores={dtk.freeze=1..}] run scoreboard players remove @s dtk.freeze 1
execute as @a[tag=ingame,scores={dtk.freeze=1..}] at @s run function dtkiller:game/freeze_hold
execute as @a[tag=ingame] at @s run function dtkiller:combat/tick_throw
execute as @a[tag=role.killer,gamemode=!spectator] run function dtkiller:combat/tick_killer
execute as @a[tag=role.detective,gamemode=!spectator] run function dtkiller:combat/tick_detective
execute as @a[tag=role.student] run function dtkiller:loot/tick_pickup
execute as @e[type=snowball] at @s run function dtkiller:combat/snowball_tick
