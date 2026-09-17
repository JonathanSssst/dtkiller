scoreboard players set #state dtk.state 3
title @a title {"text":"好人胜利！","color":"green","bold":true}
playsound minecraft:ui.toast.challenge_complete master @a
function dtkiller:game/stats
schedule function dtkiller:game/reset 5s
