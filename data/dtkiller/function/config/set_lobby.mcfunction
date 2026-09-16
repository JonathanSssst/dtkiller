# 用法: /function dtkiller:config/set_lobby {x:..,y:..,z:..}
$data modify storage dtkiller:config lobby set value {x:$(x),y:$(y),z:$(z)}
tellraw @s {"text":"[DTkiller] 大厅坐标已设置","color":"green"}
