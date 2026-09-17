# 出生点不足：中止开局并回到空闲状态
tellraw @a {"text":"[DTkiller] 开局失败：竞技区出生点数量少于玩家人数，请先执行 /function dtkiller:config/init_stands","color":"red"}
function dtkiller:game/reset
return 0
