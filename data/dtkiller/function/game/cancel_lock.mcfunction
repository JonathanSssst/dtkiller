# 锁定时人数不足：取消并清理标记
tag @a remove ingame
tag @a remove role.killer
tag @a remove role.detective
tag @a remove role.student
tag @a remove unassigned
scoreboard players set #state dtk.state 0
tellraw @a {"text":"[DTkiller] 锁定时人数不足 5，开局取消","color":"red"}
return 0
