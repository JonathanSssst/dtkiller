scoreboard players set @s dtk.trig 0
execute if entity @s[gamemode=spectator] run function dtkiller:game/go_lobby
