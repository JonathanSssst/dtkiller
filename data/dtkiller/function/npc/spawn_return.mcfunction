# 在当前位置生成“【返回】”的村民 NPC（右键传送到上次记录点）
summon minecraft:villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CustomName:{text:"【返回】",color:"aqua"},Tags:["dtk_npc_return"]}
tellraw @s {"text":"[DTkiller] 已生成“【返回】”NPC（右键使用）","color":"green"}
return 0
