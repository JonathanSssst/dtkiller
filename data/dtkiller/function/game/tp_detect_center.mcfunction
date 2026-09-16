execute store result score #cx dtk.math run data get storage dtkiller:config detect.x1 1
execute store result score #cdx dtk.math run data get storage dtkiller:config detect.dx 1
scoreboard players operation #cdx dtk.math /= #2 dtk.count
scoreboard players operation #cx dtk.math += #cdx dtk.math
execute store result score #cy dtk.math run data get storage dtkiller:config detect.y1 1
execute store result score #cz dtk.math run data get storage dtkiller:config detect.z1 1
execute store result score #cdz dtk.math run data get storage dtkiller:config detect.dz 1
scoreboard players operation #cdz dtk.math /= #2 dtk.count
scoreboard players operation #cz dtk.math += #cdz dtk.math
execute store result storage dtkiller:tmp cx int 1 run scoreboard players get #cx dtk.math
execute store result storage dtkiller:tmp cy int 1 run scoreboard players get #cy dtk.math
execute store result storage dtkiller:tmp cz int 1 run scoreboard players get #cz dtk.math
function dtkiller:game/tp_detect with storage dtkiller:tmp
