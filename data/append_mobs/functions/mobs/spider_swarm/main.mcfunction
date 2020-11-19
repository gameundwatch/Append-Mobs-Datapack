execute unless entity @s[scores={mob_clock=-2147483648..2147483647,Speed=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

# mob_clock add
execute at @s if entity @e[type=minecraft:player,distance=..8] run scoreboard players add @s[scores={mob_clock=..199}] mob_clock 1

# ability
execute as @s[scores={mob_clock=120..}] at @s if entity @e[type=minecraft:player,distance=..8] run function append_mobs:mobs/spider_swarm/summon
execute as @s[scores={mob_clock=160..}] run kill @s

# sound
execute as @s[scores={mob_clock=80}] at @s run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 1 2
