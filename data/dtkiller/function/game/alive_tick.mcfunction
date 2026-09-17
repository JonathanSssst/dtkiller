execute as @a[tag=ingame,tag=!dead,scores={dtk.deaths=1..}] run function dtkiller:game/on_death
# 存活时间统计（ticks）
execute as @a[tag=ingame,gamemode=!spectator] run scoreboard players add @s dtk.survive 1
execute as @a[tag=ingame,gamemode=!spectator] store result score @s dtk.px run data get entity @s Pos[0]
execute as @a[tag=ingame,gamemode=!spectator] store result score @s dtk.py run data get entity @s Pos[1]
execute as @a[tag=ingame,gamemode=!spectator] store result score @s dtk.pz run data get entity @s Pos[2]
function dtkiller:combat/tick_players
# 保持饱食度满格（奔跑/跳跃不消耗）
effect give @a[tag=ingame,gamemode=!spectator] minecraft:saturation 1 255 true
