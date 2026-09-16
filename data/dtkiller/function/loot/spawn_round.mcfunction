execute store result score #total dtk.count run execute if entity @e[type=armor_stand,tag=birth]
scoreboard players operation #need dtk.count = #total dtk.count
scoreboard players operation #need dtk.count /= #2 dtk.count
tag @e[type=armor_stand,tag=birth] remove picked
execute if score #need dtk.count matches 1.. run function dtkiller:loot/spawn_loop
scoreboard players set #scrap dtk.timer 400
