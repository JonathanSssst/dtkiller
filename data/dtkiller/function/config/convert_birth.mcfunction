# 宏: function dtkiller:config/convert_birth with storage dtkiller:config arena
# 将竞技区内所有盔甲架转换为 birth 隐形标记
$execute as @e[type=minecraft:armor_stand,x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz)] run data merge entity @s {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["birth"]}
return 0
