execute if score #state dtk.state matches 1 run function dtkiller:game/tick_countdown
execute if score #state dtk.state matches 2 run function dtkiller:game/tick_playing
execute as @a[scores={dtk.trig=1..}] run function dtkiller:game/trigger_leave
