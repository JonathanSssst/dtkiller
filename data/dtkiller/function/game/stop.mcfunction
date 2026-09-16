execute if score #state dtk.state matches 1.. run function dtkiller:game/reset
execute if score #state dtk.state matches 0 run tellraw @a {"text":"[DTkiller] 当前没有进行中的游戏","color":"gray"}
return 0
