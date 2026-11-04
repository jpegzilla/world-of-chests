
team add nocol
team modify nocol collisionRule never
team join nocol @p

execute as @p \
at @s run \
execute as @e[ \
    tag=!aaandyouareafish, \
    type=!#woc_core:no_swap, \
    distance=..512 \
] at @s run function woc_core:swap

# dispose of it once the chest is gone
execute as @e[tag=aaandyouareafish] at @s align xyz positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:chest run function woc_core:cleanup
