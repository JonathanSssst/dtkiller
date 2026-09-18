# 在当前位置生成“前往大厅”的村民 NPC（右键传送）
summon minecraft:villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CustomName:{text:"【DTkiller】",color:"gold",bold:true},Tags:["dtk_npc_lobby"]}
tellraw @s {"text":"[DTkiller] 已生成“前往大厅”NPC（右键使用）","color":"green"}
return 0
