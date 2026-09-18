execute as @a[tag=ingame] run scoreboard players set @s dtk.grace 0
execute as @a[tag=ingame] run scoreboard players set @s dtk.freeze 0
execute as @a[tag=ingame] run scoreboard players operation @s dtk.last_pickup = @s dtk.pickup
execute as @a[tag=ingame] run scoreboard players operation @s dtk.last_throw = @s dtk.throw
execute as @a[tag=role.killer] run function dtkiller:combat/give_killer
execute as @a[tag=role.detective] run function dtkiller:combat/give_detective
execute as @a[tag=role.student] run function dtkiller:combat/give_student
execute as @a[tag=ingame] run function dtkiller:combat/give_compass
execute as @a[tag=ingame] run attribute @s minecraft:attack_damage base set 0
