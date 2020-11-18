# rolls and summons
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=!rolled] unless entity @s[scores={mob_dice=-2147483648..2147483647}] run function append_mobs:mobs/mobs_roll
execute at @a as @e[type=#append_mobs:hostiles,distance=..32,tag=rolled] run function append_mobs:mobs/replace_mobs

# bullet main loops
execute as @e[tag=Bullet] at @s run function append_mobs:motions/main
scoreboard players remove @e[scores={Duration=1..}] Duration 1
kill @e[scores={Duration=0}]
kill @e[tag=Kill]

# mob main loops
execute as @e[tag=ZombieWizard] run function append_mobs:mobs/zombie_wizard/main
execute as @e[tag=Gizmo] run function append_mobs:mobs/gizmo/main
execute as @e[tag=Skulduggery] run function append_mobs:mobs/skulduggery/main
execute as @e[tag=WitheredSoul] run function append_mobs:mobs/withered_soul/main
execute as @e[tag=SpiderSwarm] run function append_mobs:mobs/spider_swarm/main
execute as @e[tag=BombBug] run function append_mobs:mobs/bomb_bug/main
execute as @e[tag=Arachne] run function append_mobs:mobs/arachne/main