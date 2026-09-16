execute if score #state dtk.state matches 0 unless data storage dtkiller:config detect run tellraw @a {"text":"[DTkiller] 未配置检测区，请先执行 /function dtkiller:config/set_detect","color":"red"}
execute if score #state dtk.state matches 0 if data storage dtkiller:config detect run function dtkiller:game/try_start
execute if score #state dtk.state matches 1.. run tellraw @a {"text":"[DTkiller] 游戏已在进行中","color":"red"}
return 0
