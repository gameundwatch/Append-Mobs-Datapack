execute unless entity @s[scores={mob_clock=-2147483648..2147483647,mob_state=-2147483648..2147483647,mob_ready=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

execute if entity @s[nbt= {HandItems:[{id:"minecraft:bow",Count:1b},{}]}]
#weapon switching


execute at @s unless entity @s[nbt= {HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}] if entity @e[type=#append_mobs:friendly,distance=..4,limit=1,sort=nearest] run replaceitem entity @s weapon.mainhand minecraft:iron_sword
execute at @s unless entity @s[nbt= {HandItems:[{id:"minecraft:bow",Count:1b},{}]}] unless entity @e[type=#append_mobs:friendly,distance=..4,limit=1,sort=nearest] run replaceitem entity @s weapon.mainhand minecraft:bow
