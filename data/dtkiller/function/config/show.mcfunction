tellraw @s {"text":"===== DTkiller 配置 =====","color":"gold"}
execute if data storage dtkiller:config detect run tellraw @s [{"text":"检测区: ","color":"yellow"},{"nbt":"detect","storage":"dtkiller:config"}]
execute if data storage dtkiller:config arena run tellraw @s [{"text":"竞技区: ","color":"yellow"},{"nbt":"arena","storage":"dtkiller:config"}]
execute if data storage dtkiller:config lobby run tellraw @s [{"text":"大厅: ","color":"yellow"},{"nbt":"lobby","storage":"dtkiller:config"}]
return 0
