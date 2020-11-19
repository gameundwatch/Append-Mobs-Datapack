execute unless entity @s[scores={mob_clock=-2147483648..2147483647,Speed=-2147483648..2147483647}] run function append_mobs:interfaces/init_mobs

#effect

# mob_clock add
scoreboard players add @s[scores={mob_clock=..79}] mob_clock 1

# ability
execute as @s[scores={mob_clock=80}] at @s if entity @e[type=#append_mobs:friendly,distance=..16] run function append_mobs:mobs/arachne/magic
execute at @s if entity @e[type=#minecraft:arrows,distance=..6,nbt ={inGround :0b}] run function append_mobs:mobs/arachne/move
execute at @s if entity @e[type=#append_mobs:friendly,distance=..4] run function append_mobs:mobs/arachne/move

# sound

# bullet

execute as @e[tag=ArachneStringsZone] at @s run setblock ~ ~ ~ cobweb
execute as @e[tag=ArachneStringsZone, nbt={Age:19}] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=ArachneStrings] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"item string",Radius:0.1f,Duration:20,Tags:["ArachneStringsZone"]}
execute as @e[tag=ArachneStringsZone] at @s run function append_mobs:effects/slow_2_2
execute as @e[tag=ArachneStrings] at @s run tp @e[tag=Arachne,limit=1,sort=nearest] ~ ~ ~ 
# execute as @e[tag=ArachneStringsZone] at @s unless entity @e[tag=!Arachne] run tp @e[tag=Arachne,limit=1,sort=nearest] ~ ~ ~

