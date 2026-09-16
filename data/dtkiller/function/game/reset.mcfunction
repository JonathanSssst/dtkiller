title @a reset
bossbar set dtkiller:time visible false
scoreboard objectives setdisplay sidebar
execute if data storage dtkiller:config lobby run function dtkiller:game/tp_lobby with storage dtkiller:config lobby
gamemode survival @a[tag=ingame]
clear @a[tag=ingame]
effect clear @a[tag=ingame]
tag @a remove ingame
tag @a remove role.killer
tag @a remove role.detective
tag @a remove role.student
tag @a remove unassigned
tag @a remove dead
tag @e[type=armor_stand,tag=birth] remove occupied
tag @e[type=armor_stand,tag=birth] remove picked
tag @e[type=armor_stand,tag=birth] remove chosen
execute if data storage dtkiller:config arena run function dtkiller:config/scan_forceload with storage dtkiller:config arena
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}]
execute if data storage dtkiller:config arena run function dtkiller:config/scan_unforceload with storage dtkiller:config arena
scoreboard players reset #timer dtk.timer
scoreboard players reset #scrap dtk.timer
scoreboard players set #state dtk.state 0
tellraw @a {"text":"[DTkiller] 游戏已重置","color":"gold"}
