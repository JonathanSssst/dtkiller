# 宏: function dtkiller:game/detect_adventure with storage dtkiller:config detect
# 进入检测区的玩家设为冒险模式（旁观者除外）
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz),gamemode=!spectator] unless entity @s[gamemode=adventure] run gamemode adventure @s
return 0
