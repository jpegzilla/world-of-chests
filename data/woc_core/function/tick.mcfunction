
team add nocol
team modify nocol collisionRule never
# without this, the entities on this team will render as slightly
# transparent instead of invisible
team modify nocol seeFriendlyInvisibles false
team join nocol @p

execute as @p \
at @s run \
execute as @e[ \
    tag=!aaandyouareafish, \
    type=!#woc_core:no_swap, \
    distance=..512 \
] at @s run function woc_core:swap

# dispose of it once the chest is gone
# remember, this y coordinate needs to line up with the position that
# the entity teleports itself to in swap.mcfunction
execute as @e[tag=aaandyouareafish] at @s align xyz positioned ~ ~ ~ unless block ~ ~ ~ minecraft:chest run function woc_core:cleanup
