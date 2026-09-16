tag @e[type=armor_stand,tag=birth] remove picked
execute as @e[type=armor_stand,tag=birth,tag=occupied] at @s run function dtkiller:loot/spawn_first_one
execute unless entity @e[type=armor_stand,tag=birth,tag=occupied] run function dtkiller:loot/spawn_round
scoreboard players set #scrap dtk.timer 400
