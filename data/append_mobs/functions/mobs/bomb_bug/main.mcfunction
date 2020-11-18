execute unless entity @s[scores={mob_clock=-2147483648..2147483647,mob_state=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

# mob_clock add
scoreboard players add @s[scores={mob_state=1, mob_clock=..99}] mob_clock 1

# ability
execute as @s[scores={mob_state=1, mob_clock=100..}] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["rolled"],CustomName:'{"text":"バクダンムシ"}'}

execute unless entity @s[nbt={Health:16.0f}] run scoreboard players set @s mob_state 1

# sound
execute as @s[scores={mob_clock=40}] at @s run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 1 2
execute as @s[scores={mob_clock=60}] at @s run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 1 2
execute as @s[scores={mob_clock=80}] at @s run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 1 2

#visual
execute at @s[scores={mob_state =1}] run particle flame ~ ~ ~ 0 0 0 0.1 10