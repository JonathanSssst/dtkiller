# 检测区内的玩家：切换冒险模式，并保持满饱食度与满血
execute unless entity @s[gamemode=adventure] run gamemode adventure @s
effect give @s minecraft:saturation 1 255 true
effect give @s minecraft:instant_health 1 10 true
return 0
