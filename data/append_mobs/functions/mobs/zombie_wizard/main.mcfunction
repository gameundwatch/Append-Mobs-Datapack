execute at @s as @e[type=minecraft:arrow,distance=..2] run tag @s add z_wizard_magic
execute as @e[type=minecraft:arrow,tag=z_wizard_magic] at @s run function append_mobs:mobs/zombie_wizard/magic