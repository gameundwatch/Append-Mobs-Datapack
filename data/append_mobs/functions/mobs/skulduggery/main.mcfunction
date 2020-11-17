
#weapon switching
execute at @s if entity @e[type=#append_mobs:friendly,distance=..6,limit=1,sort=nearest] run replaceitem entity @s weapon.mainhand minecraft:iron_sword
execute at @s unless entity @e[type=#append_mobs:friendly,distance=..6,limit=1,sort=nearest] run replaceitem entity @s weapon.mainhand minecraft:bow