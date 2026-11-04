
execute as @p \
at @s run \
execute as @e[ \
    type=!minecraft:player, \
    type=!minecraft:cat, \
    type=!minecraft:wolf, \
    type=!minecraft:iron_golem, \
    type=!minecraft:armadillo, \
    type=!minecraft:horse, \
    type=!minecraft:donkey, \
    type=!minecraft:happy_ghast, \
    type=!minecraft:marker, \
    type=!minecraft:copper_golem, \
    type=!minecraft:bat, \
    type=!minecraft:armor_stand, \
    type=!minecraft:villager, \
    type=!minecraft:panda, \
    type=!minecraft:polar_bear, \
    type=!minecraft:ender_dragon, \
    type=!minecraft:falling_block, \
    type=!minecart, \
    type=!#minecraft:impact_projectiles, \
    type=!#minecraft:redirectable_projectile, \
    type=!item, \
    distance=..64 \
] at @s run function woc_core:swap
