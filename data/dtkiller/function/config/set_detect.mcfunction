# 用法: /function dtkiller:config/set_detect {x1:..,y1:..,z1:..,x2:..,y2:..,z2:..}
# 请按 最小角 -> 最大角 填写
$data modify storage dtkiller:config detect set value {x1:$(x1),y1:$(y1),z1:$(z1),x2:$(x2),y2:$(y2),z2:$(z2)}
function dtkiller:config/build
tellraw @s {"text":"[DTkiller] 检测区已设置","color":"green"}
