execute store result storage dtkiller:tmp count int 1 run scoreboard players get #count dtk.count
tellraw @a [{"text":"[DTkiller] 检测区内玩家数: ","color":"gray"},{"nbt":"count","storage":"dtkiller:tmp"},{"text":" (需要 5-24 人)","color":"gray"}]
