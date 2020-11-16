function append_mobs:aecs/summon_damage_1
playsound minecraft:entity.blaze.burn hostile @a ~ ~ ~ 1 2
execute as @s[nbt={inGround:1b}] run kill @s