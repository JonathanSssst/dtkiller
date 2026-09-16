# 宏: function dtkiller:config/scan_block with storage dtkiller:config scanpos
# 坐标定位读取方块，不使用实体探针
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:gold_block run scoreboard players add #gold_total dtk.math 1
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:gold_block positioned ~ ~1 ~ unless entity @e[type=minecraft:armor_stand,tag=birth,distance=..0.9] run function dtkiller:config/scan_create
return 0
