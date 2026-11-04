
team add nocol
team modify nocol collisionRule never
team join nocol @p

execute as @p \
at @s run \
execute as @e[ \
    type=!minecraft:player, \
    type=!minecraft:cat, \
    type=!minecraft:wolf, \
    type=!minecraft:marker, \
    type=!minecraft:armor_stand, \
    type=!minecraft:ender_dragon, \
    type=!minecraft:falling_block, \
    type=!minecart, \
    type=!#minecraft:impact_projectiles, \
    type=!#minecraft:redirectable_projectile, \
    type=!minecraft:experience_orb, \
    tag=!aaandyouareafish, \
    type=!item, \
    distance=..512 \
] at @s run function woc_core:swap
