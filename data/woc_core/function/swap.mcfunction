# spawn chests on every entity and give the chest their loot
execute as @s align xyz run setblock ~ ~ ~ minecraft:chest
loot insert ~ ~ ~ kill @s

# dispose of the body
tp @s ~ -1000 ~
kill @s
