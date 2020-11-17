# rolls and summons
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=!rolled] run function append_mobs:mobs/mobs_roll
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=rolled] run function append_mobs:mobs/replace_mobs

# bullet main loops
execute as @e[tag=Bullet] at @s run function append_mobs:interfaces/bullet_loop
scoreboard players remove @e[scores={Duration=1..}] Duration 1
kill @e[scores={Duration=0}]
kill @e[tag=Kill]

# mob main loops
execute as @e[tag=ZombieWizard] run function append_mobs:mobs/zombie_wizard/main