# 右键大厅NPC：传送至大厅（游戏中不生效）
execute if entity @s[tag=ingame] run tellraw @s {"text":"[DTkiller] 游戏中无法使用大厅传送","color":"red"}
execute if entity @s[tag=!ingame] if data storage dtkiller:config lobby run function dtkiller:npc/tp_here with storage dtkiller:config lobby
execute if entity @s[tag=!ingame] run tellraw @s {"text":"[DTkiller] 已传送至大厅","color":"green"}
advancement revoke @s only dtkiller:npc_lobby
return 0
