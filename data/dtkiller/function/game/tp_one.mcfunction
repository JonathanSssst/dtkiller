execute as @e[type=armor_stand,tag=birth,tag=!occupied,sort=random,limit=1] run tag @s add chosen
execute at @e[type=armor_stand,tag=birth,tag=chosen,limit=1] run tp @s ~ ~ ~
execute as @e[type=armor_stand,tag=birth,tag=chosen,limit=1] run tag @s add occupied
tag @e[type=armor_stand,tag=birth,tag=chosen] remove chosen
