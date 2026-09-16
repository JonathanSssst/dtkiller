scoreboard players set #state dtk.state 3
title @a title {"text":"捣蛋鬼胜利！","color":"red","bold":true}
title @a subtitle {"text":"所有好人已被淘汰","color":"gray"}
playsound minecraft:entity.ender_dragon.death master @a
schedule function dtkiller:game/reset 5s
