# 右键【开始游戏】NPC：检测检测区人数并开始（仅空闲时可触发；0.5 秒防连点）
execute if score #state dtk.state matches 0 if score @s dtk.npccd matches ..0 run function dtkiller:game/start
execute if score #state dtk.state matches 0 if score @s dtk.npccd matches ..0 run scoreboard players set @s dtk.npccd 10
advancement revoke @s only dtkiller:npc_start
return 0
