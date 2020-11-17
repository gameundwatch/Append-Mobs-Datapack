# mob_clock add
scoreboard players add @s[scores={mob_clock=..119}] mob_clock 1
# scoreboard players add @s mob_clock 1

# ability
execute as @s[scores={mob_clock=120}] at @s if entity @e[type=#append_mobs:friendly,distance=..8] run function append_mobs:mobs/zombie_wizard/magic

# bullet
execute as @e[tag=ZombieWizardMagic] at @s run function append_mobs:aecs/summon_damage_1

# execute at @s as @e[type=minecraft:arrow,distance=..2] run tag @s add z_wizard_magic
# execute as @e[type=minecraft:arrow,tag=z_wizard_magic] at @s run function append_mobs:mobs/zombie_wizard/magic