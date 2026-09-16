scoreboard players remove #timer dtk.timer 1
execute if score #timer dtk.timer matches ..0 run function dtkiller:game/end_good
execute if score #state dtk.state matches 2 run scoreboard players remove #scrap dtk.timer 1
execute if score #state dtk.state matches 2 if score #scrap dtk.timer matches ..0 run function dtkiller:loot/spawn_round
execute if score #state dtk.state matches 2 run function dtkiller:game/alive_tick
execute if score #state dtk.state matches 2 run function dtkiller:game/win_check
scoreboard players remove #hud dtk.math 1
execute if score #state dtk.state matches 2 if score #hud dtk.math matches ..0 run function dtkiller:game/show_hud
function dtkiller:combat/compass_tick
