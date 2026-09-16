scoreboard players remove #timer dtk.timer 1
execute if score #timer dtk.timer matches 100 run title @a title {"text":"5","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 80 run title @a title {"text":"4","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score #timer dtk.timer matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score #timer dtk.timer matches ..0 run function dtkiller:game/begin
