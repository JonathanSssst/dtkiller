gamemode adventure @s
tag @s remove dead
tag @s remove ingame
tag @s remove role.killer
tag @s remove role.detective
tag @s remove role.student
tag @s remove unassigned
scoreboard players set @s dtk.freeze 0
clear @s
effect clear @s
scoreboard players enable @s dtk.trig
execute if data storage dtkiller:config detect run function dtkiller:game/tp_detect_center
title @s title {"text":"已退出旁观","color":"green"}
