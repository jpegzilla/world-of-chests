# spawn chests on every entity and give the chest their loot
execute as @s align xyz run setblock ~ ~ ~ minecraft:chest
loot insert ~ ~ ~ kill @s

data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
#data modify entity @s PersistenceRequired set value 1b
data modify entity @s NoGravity set value 1b
data modify entity @s Marker set value 1b
data modify entity @s Invulnerable set value 1b
data modify entity @s Tags set value ["aaandyouareafish"]
data modify entity @s attributes set value [{id:scale, base: 0.001}, { id:movement_speed, base: 0}]


#summon ~ -1000 ~ { NoAI: 1b, Silent: 1b, Tags: ["aaandyouareafish"] }

# dispose of the body
execute as @s align xyz run tp @s ~.5 ~-1.25 ~.5
#kill @s
