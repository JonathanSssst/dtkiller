execute store result score #x1 dtk.math run data get storage dtkiller:config detect.x1 1
execute store result score #x2 dtk.math run data get storage dtkiller:config detect.x2 1
execute store result score #y1 dtk.math run data get storage dtkiller:config detect.y1 1
execute store result score #y2 dtk.math run data get storage dtkiller:config detect.y2 1
execute store result score #z1 dtk.math run data get storage dtkiller:config detect.z1 1
execute store result score #z2 dtk.math run data get storage dtkiller:config detect.z2 1
# --- X: 取绝对差作为 dx，原点归到最小角 ---
scoreboard players operation #dx dtk.math = #x2 dtk.math
scoreboard players operation #dx dtk.math -= #x1 dtk.math
scoreboard players operation #minx dtk.math = #x1 dtk.math
execute if score #dx dtk.math matches ..-1 run scoreboard players operation #dx dtk.math = #x1 dtk.math
execute if score #dx dtk.math matches ..-1 run scoreboard players operation #dx dtk.math -= #x2 dtk.math
execute if score #dx dtk.math matches ..-1 run scoreboard players operation #minx dtk.math = #x2 dtk.math
execute store result storage dtkiller:config detect.x1 int 1 run scoreboard players get #minx dtk.math
execute store result storage dtkiller:config detect.dx int 1 run scoreboard players get #dx dtk.math
# --- Y ---
scoreboard players operation #dy dtk.math = #y2 dtk.math
scoreboard players operation #dy dtk.math -= #y1 dtk.math
scoreboard players operation #miny dtk.math = #y1 dtk.math
execute if score #dy dtk.math matches ..-1 run scoreboard players operation #dy dtk.math = #y1 dtk.math
execute if score #dy dtk.math matches ..-1 run scoreboard players operation #dy dtk.math -= #y2 dtk.math
execute if score #dy dtk.math matches ..-1 run scoreboard players operation #miny dtk.math = #y2 dtk.math
execute store result storage dtkiller:config detect.y1 int 1 run scoreboard players get #miny dtk.math
execute store result storage dtkiller:config detect.dy int 1 run scoreboard players get #dy dtk.math
# --- Z ---
scoreboard players operation #dz dtk.math = #z2 dtk.math
scoreboard players operation #dz dtk.math -= #z1 dtk.math
scoreboard players operation #minz dtk.math = #z1 dtk.math
execute if score #dz dtk.math matches ..-1 run scoreboard players operation #dz dtk.math = #z1 dtk.math
execute if score #dz dtk.math matches ..-1 run scoreboard players operation #dz dtk.math -= #z2 dtk.math
execute if score #dz dtk.math matches ..-1 run scoreboard players operation #minz dtk.math = #z2 dtk.math
execute store result storage dtkiller:config detect.z1 int 1 run scoreboard players get #minz dtk.math
execute store result storage dtkiller:config detect.dz int 1 run scoreboard players get #dz dtk.math
