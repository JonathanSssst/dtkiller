# 测试：检测区人数 + 你的坐标/游戏模式 + 检测区范围
execute if data storage dtkiller:config detect run function dtkiller:game/count with storage dtkiller:config detect
tellraw @s [{"text":"[测试] 检测区内人数: ","color":"gold"},{"score":{"name":"#count","objective":"dtk.count"},"color":"white"}]
execute store result storage dtkiller:tmp px double 1 run data get entity @s Pos[0]
execute store result storage dtkiller:tmp py double 1 run data get entity @s Pos[1]
execute store result storage dtkiller:tmp pz double 1 run data get entity @s Pos[2]
tellraw @s [{"text":"[测试] 你的坐标: ","color":"gray"},{"nbt":"px","storage":"dtkiller:tmp"},{"text":", ","color":"gray"},{"nbt":"py","storage":"dtkiller:tmp"},{"text":", ","color":"gray"},{"nbt":"pz","storage":"dtkiller:tmp"}]
execute if entity @s[gamemode=spectator] run tellraw @s {"text":"[测试] 你是旁观模式（不会被统计！）","color":"red"}
execute if entity @s[gamemode=survival] run tellraw @s {"text":"[测试] 你是生存模式","color":"green"}
execute if entity @s[gamemode=creative] run tellraw @s {"text":"[测试] 你是创造模式","color":"green"}
execute if entity @s[gamemode=adventure] run tellraw @s {"text":"[测试] 你是冒险模式","color":"green"}
execute if data storage dtkiller:config detect run tellraw @s [{"text":"[测试] 检测区: ","color":"gray"},{"nbt":"detect","storage":"dtkiller:config"}]
execute unless data storage dtkiller:config detect run tellraw @s {"text":"[测试] 未配置检测区","color":"red"}
return 0
