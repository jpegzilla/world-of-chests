# spawn chests on every entity and give the chest their loot
execute as @s align xyz run setblock ~ ~ ~ minecraft:chest
loot insert ~ ~ ~ kill @s

data merge entity @s { \
    NoAI: 1b, \
    Silent: 1b, \
    NoGravity: 1b, \
    Invulnerable: 1b, \
    Tags: ["aaandyouareafish"], \
    attributes: [{ id:scale, base: 0.00001 }] \
}

effect give @s minecraft:invisibility infinite 0 true

# hide the body
execute as @s align xyz run tp @s ~.5 ~ ~.5
# I think putting them in the void doesn't work
# because they despawn due to being too far away (or something)
#execute as @s align xyz run tp @s ~.5 -75 ~.5

team join nocol @s
