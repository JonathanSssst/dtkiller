function dtkiller:game/count with storage dtkiller:config detect
execute if score #count dtk.count matches 5..24 run function dtkiller:game/prepare
execute if score #count dtk.count matches ..4 run function dtkiller:game/broadcast_count
execute if score #count dtk.count matches 25.. run function dtkiller:game/broadcast_count
