# 依据玩家背包中实际的合金碎片数量转换（防止丢弃/移出后仍能兑换）
execute store result score #cnt dtk.count run clear @s minecraft:netherite_scrap 0
execute if score #cnt dtk.count matches 10.. run function dtkiller:loot/convert_one
