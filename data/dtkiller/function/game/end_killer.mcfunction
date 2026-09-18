scoreboard players set #state dtk.state 4
title @a title {"text":"捣蛋鬼胜利！","color":"red","bold":true}
playsound minecraft:entity.ender_dragon.death master @a
function dtkiller:game/stats
schedule function dtkiller:game/reset 5s
