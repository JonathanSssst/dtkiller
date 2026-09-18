scoreboard players set #state dtk.state 3
gamerule natural_health_regeneration false
function dtkiller:game/teleport
function dtkiller:combat/give_kit
gamemode adventure @a[tag=ingame]
scoreboard players set #timer dtk.timer 12000
bossbar set dtkiller:time players @a
bossbar set dtkiller:time visible true
scoreboard objectives setdisplay sidebar dtk.info
scoreboard players set #hud dtk.math 0
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}]
function dtkiller:loot/spawn_first
title @a title {"text":"游戏开始！","color":"green","bold":true}
playsound minecraft:entity.player.levelup master @a
