execute if score #nd dtk.count matches 1.. as @r[tag=unassigned] run function dtkiller:game/detective_one
execute if score #nd dtk.count matches 1.. if entity @a[tag=unassigned] run function dtkiller:game/assign_detectives
