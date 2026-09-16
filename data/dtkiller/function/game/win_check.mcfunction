execute store result score #k dtk.count run execute if entity @a[tag=ingame,tag=role.killer,gamemode=!spectator]
execute store result score #g dtk.count run execute if entity @a[tag=ingame,tag=!role.killer,gamemode=!spectator]
execute if score #k dtk.count matches 0 if score #g dtk.count matches 1.. run function dtkiller:game/end_good
execute if score #g dtk.count matches 0 if score #k dtk.count matches 1.. run function dtkiller:game/end_killer
