execute unless entity @s[scores={mob_clock=-2147483648..2147483647,Speed=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

# effect
effect give @s invisibility 1 0 true
effect give @s slow_falling 1 0 true

effect clear @s wither

#visual
execute at @s run particle soul ~ ~1 ~ 0.5 0.5 0.5 0 5

# mob_clock add
scoreboard players add @s[scores={mob_clock=..79}] mob_clock 1

# ability
execute as @s[scores={mob_clock=80..}] at @s if entity @e[type=#append_mobs:friendly,distance=..16] run function append_mobs:mobs/withered_soul/magic

# execute as @s[scores={mob_clock=100..}] at @s if entity @e[type=#append_mobs:friendly,distance=..6] run function append_mobs:mobs/withered_soul/move


# sound
execute as @s[scores={mob_clock=80}] at @s run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.5

# bullet
execute as @e[tag=WitheredSoulMagic] at @s run function append_mobs:effects/wither_100_0
execute as @e[tag=WitheredSoulMagic] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 10
