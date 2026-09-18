# 记录当前位置为返回点，随后传送至大厅（游戏中不生效）
execute if entity @s[tag=!ingame] store result score @s dtk.rx run data get entity @s Pos[0]
execute if entity @s[tag=!ingame] store result score @s dtk.ry run data get entity @s Pos[1]
execute if entity @s[tag=!ingame] store result score @s dtk.rz run data get entity @s Pos[2]
execute if entity @s[tag=!ingame] run scoreboard players set @s dtk.rset 1
execute if entity @s[tag=!ingame] if data storage dtkiller:config lobby run function dtkiller:npc/tp_here with storage dtkiller:config lobby
execute if entity @s[tag=!ingame] run tellraw @s {"text":"[DTkiller] 已记录返回点并传送至大厅","color":"green"}
execute if entity @s[tag=ingame] run tellraw @s {"text":"[DTkiller] 游戏中无法使用大厅传送","color":"red"}
return 0
