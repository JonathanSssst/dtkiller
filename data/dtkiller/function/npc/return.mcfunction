# 右键返回NPC：传送回上次记录的位置（须先点【DTkiller】记录）
execute if entity @s[tag=ingame] run tellraw @s {"text":"[DTkiller] 游戏中无法使用返回","color":"red"}
execute if entity @s[tag=!ingame] unless score @s dtk.rset matches 1.. run tellraw @s {"text":"[DTkiller] 没有返回点，请先点击【DTkiller】","color":"red"}
execute if entity @s[tag=!ingame] if score @s dtk.rset matches 1.. run function dtkiller:npc/return_go
advancement revoke @s only dtkiller:npc_return
return 0
