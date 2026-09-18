# 宏: function dtkiller:game/count_notify with storage dtkiller:config detect
$title @a[x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz),gamemode=!spectator] title [{"text":"当前人数 ","color":"yellow","bold":true},{"score":{"name":"#count","objective":"dtk.count"},"color":"white"},{"text":"/5","color":"white","bold":true}]
return 0
