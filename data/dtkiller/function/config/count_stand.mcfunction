# 宏: function dtkiller:config/count_stand with storage dtkiller:config cargs
# cargs = arena 坐标 + {extra: 标签过滤(如 ",tag=birth"), out: 写入的计分板假名}
$execute store result score $(out) dtk.math run execute if entity @e[type=minecraft:armor_stand,x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz)$(extra)]
return 0
