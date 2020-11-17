
#replace zombie
execute at @a as @e[type=minecraft:zombie,tag=rolled,scores={mob_dice=1}] at @s run function append_mobs:mobs/zombie_soldier/summon
execute at @a as @e[type=minecraft:zombie,tag=rolled,scores={mob_dice=2}] at @s run function append_mobs:mobs/zombie_sniper/summon
execute at @a as @e[type=minecraft:zombie,tag=rolled,scores={mob_dice=3}] at @s run function append_mobs:mobs/zombie_wizard/summon

#replace skeleton
execute at @a as @e[type=minecraft:skeleton,tag=rolled,scores={mob_dice=1}] at @s run function append_mobs:mobs/gizmo/summon
execute at @a as @e[type=minecraft:skeleton,tag=rolled,scores={mob_dice=2}] at @s run function append_mobs:mobs/skulduggery/summon
execute at @a as @e[type=minecraft:skeleton,tag=rolled,scores={mob_dice=3}] at @s run function append_mobs:mobs/withered_soul/summon

#replace creeper