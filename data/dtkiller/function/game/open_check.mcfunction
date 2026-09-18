# 开放倒计时中的每秒校验：人数不足 5 则取消；否则显示当前人数
execute if score #count dtk.count matches ..4 run function dtkiller:game/cancel_open
execute if score #state dtk.state matches 1 run title @a actionbar [{"text":"检测区内人数: ","color":"gray"},{"score":{"name":"#count","objective":"dtk.count"},"color":"white"}]
return 0
