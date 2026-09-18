# 宏: function dtkiller:game/detect_adventure with storage dtkiller:config detect
# 进入检测区的玩家：交给 detect_lobby 处理（冒险模式 + 满饱食度 + 满血）
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz),gamemode=!spectator] run function dtkiller:game/detect_lobby
return 0
