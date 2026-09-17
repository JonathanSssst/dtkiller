# 测试：发放全部 DTkiller 自定义物品，用于查看资源包贴图
give @s minecraft:wooden_sword[minecraft:custom_name={text:"圆规"},minecraft:custom_model_data={floats:[1001]},minecraft:attribute_modifiers=[{type:"minecraft:attack_damage",id:"dtkiller:compass_damage",amount:9,operation:"add_value",slot:"mainhand"},{type:"minecraft:attack_speed",id:"dtkiller:compass_speed",amount:100,operation:"add_value",slot:"mainhand"}]] 1
give @s minecraft:snowball[minecraft:custom_name={text:"粉笔头"},minecraft:custom_model_data={floats:[1002]},minecraft:use_cooldown={seconds:2.0,cooldown_group:"dtkiller:killer_chalk"}] 1
give @s minecraft:snowball[minecraft:custom_name={text:"粉笔头"},minecraft:custom_model_data={floats:[1006]},minecraft:use_cooldown={seconds:10.0,cooldown_group:"dtkiller:detective_chalk"}] 1
give @s minecraft:snowball[minecraft:custom_name={text:"粉笔头"},minecraft:custom_model_data={floats:[1007]}] 1
give @s minecraft:netherite_scrap[minecraft:custom_name={text:"合金碎片"},minecraft:custom_model_data={floats:[1004]}] 1
give @s minecraft:compass[minecraft:custom_name={text:"追踪器"},minecraft:item_model="dtkiller:tracker",minecraft:lodestone_tracker={target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:false}] 1
tellraw @s {"text":"[测试] 已发放全部 DTkiller 自定义物品","color":"gold"}
return 0
