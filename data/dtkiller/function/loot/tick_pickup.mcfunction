scoreboard players operation #diff dtk.count = @s dtk.pickup
scoreboard players operation #diff dtk.count -= @s dtk.last_pickup
execute if score #diff dtk.count matches 1.. run function dtkiller:loot/on_pickup
