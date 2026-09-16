scoreboard players operation @s dtk.last_throw = @s dtk.throw
scoreboard players set @s dtk.grace 3
execute if entity @s[tag=role.killer] run tag @e[type=snowball,tag=!chalk_killer,tag=!chalk_detective,tag=!chalk_student,distance=..3,sort=nearest,limit=1] add chalk_killer
execute if entity @s[tag=role.detective] run tag @e[type=snowball,tag=!chalk_killer,tag=!chalk_detective,tag=!chalk_student,distance=..3,sort=nearest,limit=1] add chalk_detective
execute if entity @s[tag=role.student] run tag @e[type=snowball,tag=!chalk_killer,tag=!chalk_detective,tag=!chalk_student,distance=..3,sort=nearest,limit=1] add chalk_student
