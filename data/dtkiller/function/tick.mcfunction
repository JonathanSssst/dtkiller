execute if score #state dtk.state matches 1 run function dtkiller:game/tick_countdown
execute if score #state dtk.state matches 2 run function dtkiller:game/tick_playing
execute as @a[scores={dtk.trig=1..}] run function dtkiller:game/trigger_leave
# 资源包软提示（定时；装了包则不显示）
scoreboard players remove @a dtk.welcome 1
execute as @a[scores={dtk.welcome=..0}] run function dtkiller:game/pack_prompt
