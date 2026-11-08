# just using this to have a convenient selector
tag @s add will_be_killed_by_player

# spawn chests on every entity and give the chest their loot
execute as @s align xyz run setblock ~ ~ ~ minecraft:chest

# here's where we essentially simulate the loot as if the entity was
# killed by the player
execute at @s as @p run loot insert ~ ~ ~ kill @e[tag=will_be_killed_by_player, limit=1]

# not sure if removing the tag here actually does anything
tag @s remove will_be_killed_by_player

data merge entity @s { \
    NoAI: 1b, \
    Silent: 1b, \
    NoGravity: 1b, \
    Invulnerable: 1b, \
    Tags: ["aaandyouareafish"], \
    attributes: [{ id: scale, base: 0.000001 }] \
}

effect give @s minecraft:invisibility infinite 2 true

# hide the body
# remember, this y coordinate needs to line up with
# the y coordinate of the block check in tick.mcfunction
execute as @s run tp @s ~.5 ~ ~.5
# I think putting them in the void doesn't work
# because they despawn due to being too far away (or something)
#execute as @s align xyz run tp @s ~.5 -75 ~.5

team join nocol @s
