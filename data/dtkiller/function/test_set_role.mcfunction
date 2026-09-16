$tag @a[name="$(player)"] remove role.killer
$tag @a[name="$(player)"] remove role.detective
$tag @a[name="$(player)"] remove role.student
$tag @a[name="$(player)"] add ingame
$tag @a[name="$(player)"] add role.$(role)
$execute as @a[name="$(player)"] run function dtkiller:combat/give_$(role)
$tellraw @a {"text":"[测试] 已将 $(player) 设为 $(role)","color":"gold"}
