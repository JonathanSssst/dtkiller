tag @e[type=armor_stand,tag=birth] remove occupied
tag @e[type=armor_stand,tag=birth] remove chosen
execute as @a[tag=role.killer] run function dtkiller:game/tp_one
execute as @a[tag=role.detective] run function dtkiller:game/tp_one
execute as @a[tag=role.student] run function dtkiller:game/tp_one
