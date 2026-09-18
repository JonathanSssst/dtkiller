# 锁定倒计时（5s）：名单已固定，期间加入的玩家不参战；结束→传送开局
scoreboard players remove #timer dtk.timer 1
execute if score #timer dtk.timer matches 80 run title @a title {"text":"4","color":"gold","bold":true}
execute if score #timer dtk.timer matches 60 run title @a title {"text":"3","color":"gold","bold":true}
execute if score #timer dtk.timer matches 40 run title @a title {"text":"2","color":"gold","bold":true}
execute if score #timer dtk.timer matches 20 run title @a title {"text":"1","color":"gold","bold":true}
execute if score #timer dtk.timer matches ..0 run function dtkiller:game/begin
