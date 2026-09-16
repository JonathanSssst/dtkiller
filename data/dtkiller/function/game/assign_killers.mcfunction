execute if score #nk dtk.count matches 1.. as @r[tag=unassigned] run function dtkiller:game/killer_one
execute if score #nk dtk.count matches 1.. if entity @a[tag=unassigned] run function dtkiller:game/assign_killers
