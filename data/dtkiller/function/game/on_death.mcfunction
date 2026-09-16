tag @s add dead
gamemode spectator @s
execute store result storage dtkiller:tmp px int 1 run scoreboard players get @s dtk.px
execute store result storage dtkiller:tmp py int 1 run scoreboard players get @s dtk.py
execute store result storage dtkiller:tmp pz int 1 run scoreboard players get @s dtk.pz
function dtkiller:game/tp_death with storage dtkiller:tmp
scoreboard players enable @s dtk.trig
title @s title {"text":"你已阵亡","color":"red","bold":true}
tellraw @s [{"text":"正在旁观。输入 ","color":"gray"},{"text":"/trigger dtk.trig","color":"green","bold":true},{"text":" 可退出旁观并返回检测区","color":"gray"}]
