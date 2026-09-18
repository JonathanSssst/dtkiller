# 开放倒计时（10s）：允许继续加入；每秒校验人数，结束则锁定名单
scoreboard players remove #timer dtk.timer 1
scoreboard players operation #s dtk.math = #timer dtk.timer
scoreboard players operation #s dtk.math %= #20 dtk.math
execute if score #s dtk.math matches 0 run function dtkiller:game/open_check
execute if score #timer dtk.timer matches 180 run title @a title {"text":"9","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 160 run title @a title {"text":"8","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 140 run title @a title {"text":"7","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 120 run title @a title {"text":"6","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score #timer dtk.timer matches ..0 run function dtkiller:game/lock
