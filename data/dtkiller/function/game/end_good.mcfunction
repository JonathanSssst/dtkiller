scoreboard players set #state dtk.state 3
title @a title {"text":"好人胜利！","color":"green","bold":true}
title @a subtitle {"text":"捣蛋鬼已被击败","color":"gray"}
playsound minecraft:ui.toast.challenge_complete master @a
schedule function dtkiller:game/reset 5s
