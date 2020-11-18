execute unless entity @s[scores={mob_clock=-2147483648..2147483647,Speed=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

#effect
effect give @s slow_falling 1 0 false

# mob_clock add
scoreboard players add @s[scores={mob_clock=..79}] mob_clock 1

# ability
execute as @s[scores={mob_clock=80}] at @s if entity @e[type=#append_mobs:friendly,distance=..16] run function append_mobs:mobs/arachne/magic
execute at @s if entity @e[type=#minecraft:arrows,distance=..6,nbt ={inGround :0b}] run function append_mobs:mobs/arachne/move

# sound


# bullet
execute as @e[tag=ArachneStrings] at @s run function append_mobs:effects/slow_2_2
execute as @e[tag=ArachneStrings] at @s run particle block minecraft:white_wool ~ ~ ~ 0 0 0 0 10

