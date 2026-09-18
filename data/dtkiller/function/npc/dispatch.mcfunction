# 右键村民后，按附近带标签的 NPC 分派（NPC 之间请保持 8 格以上间距）
execute if entity @e[type=villager,tag=dtk_npc_start,distance=..4] run function dtkiller:npc/start
execute if entity @e[type=villager,tag=dtk_npc_lobby,distance=..4] run function dtkiller:npc/tp_lobby
execute if entity @e[type=villager,tag=dtk_npc_return,distance=..4] run function dtkiller:npc/return
advancement revoke @s only dtkiller:npc_interact
return 0
