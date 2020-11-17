execute unless entity @s[scores={mob_clock=-2147483648..2147483647,Speed=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

# mob_clock add
scoreboard players add @s[scores={mob_clock=..119}] mob_clock 1

# ability
execute as @s[scores={mob_clock=120}] at @s if entity @e[type=#append_mobs:friendly,distance=..16] run function append_mobs:mobs/zombie_wizard/magic
execute at @s if entity @e[type=#append_mobs:friendly,distance=..3] run function append_mobs:mobs/zombie_wizard/move


# sound
execute as @s[scores={mob_clock=80}] at @s run playsound minecraft:entity.witch.ambient hostile @a ~ ~ ~ 1 0.5


# bullet
execute as @e[tag=ZombieWizardMagic] at @s run function append_mobs:aecs/summon_damage_1
execute as @e[tag=ZombieWizardMagic] at @s run particle witch ~ ~ ~ 0.1 0.1 0.1 0 10

