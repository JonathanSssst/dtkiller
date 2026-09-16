execute unless score #state dtk.state matches 2 run return 0
execute if entity @s[tag=chalk_detective] if entity @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0}] run function dtkiller:combat/impact_detective
execute if entity @s[tag=chalk_killer] if entity @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0}] run function dtkiller:combat/impact_half
execute if entity @s[tag=chalk_student] if entity @a[tag=ingame,gamemode=!spectator,distance=..2.5,scores={dtk.grace=..0}] run function dtkiller:combat/impact_half
