execute store result score @s dtk.fx run data get entity @s Pos[0]
execute store result score @s dtk.fy run data get entity @s Pos[1]
execute store result score @s dtk.fz run data get entity @s Pos[2]
scoreboard players set @s dtk.freeze 100
tag @s remove role.detective
tag @s add role.student
clear @s
function dtkiller:combat/give_compass
title @s title {"text":"你冤枉了同学！","color":"red"}
title @s subtitle {"text":"已被冻结 5 秒，身份转为学生","color":"gray"}
