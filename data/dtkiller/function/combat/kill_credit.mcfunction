# 击杀归属（由 killed_player 成就触发）：记录击杀数
scoreboard players add @s dtk.kills 1
advancement revoke @s only dtkiller:killed_player
return 0
