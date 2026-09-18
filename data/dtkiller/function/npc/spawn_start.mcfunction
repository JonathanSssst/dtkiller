# 在当前位置生成“【开始游戏】”的村民 NPC（右键开始）
summon minecraft:villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[180f,0f],CustomName:{text:"【开始游戏】",color:"green"},Tags:["dtk_npc_start"]}
tellraw @s {"text":"[DTkiller] 已生成“【开始游戏】”NPC（右键开始）","color":"green"}
return 0
