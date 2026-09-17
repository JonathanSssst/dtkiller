$tag @a[x=$(x1),y=$(y1),z=$(z1),dx=$(dx),dy=$(dy),dz=$(dz),gamemode=!spectator] add ingame
tag @a[tag=ingame] add unassigned
scoreboard players set @a[tag=ingame] dtk.deaths 0
scoreboard players set @a[tag=ingame] dtk.kills 0
scoreboard players set @a[tag=ingame] dtk.survive 0
