# rolls and summons
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=!rolled] run function append_mobs:mobs/mobs_roll
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=rolled] run function append_mobs:mobs/replace_mobs

# mobs
execute as @e[tag=ZombieWizard] run function append_mobs:mobs/zombie_wizard/main