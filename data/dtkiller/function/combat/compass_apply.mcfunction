# 宏: function dtkiller:combat/compass_apply with storage dtkiller:compass
$item replace entity @s hotbar.8 with minecraft:compass[minecraft:custom_name={text:"追踪器"},minecraft:item_model="dtkiller:tracker",minecraft:lodestone_tracker={target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]},tracked:false}]
return 0
