execute store result score #snow dtk.count run clear @s minecraft:snowball 0
execute if score #snow dtk.count matches 0 run give @s minecraft:snowball[minecraft:custom_name={text:"粉笔头"},minecraft:custom_model_data={floats:[1002]},minecraft:use_cooldown={seconds:2.0,cooldown_group:"dtkiller:killer_chalk"}] 1
