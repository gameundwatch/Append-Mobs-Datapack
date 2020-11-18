
playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 2

# magic bullet settings
summon armor_stand ~ ~ ~ {Tags:[New,Bullet,Unslide,ArachneStrings],NoGravity: 0b,Marker: 0b,Invisible: 1b, Small: 1b,Silent: 1b}
execute anchored eyes as @e[tag=New,limit=1,sort=nearest] run tp @s ^ ^ ^ ~ ~
scoreboard players set @e[tag=New,limit=1,sort=nearest] Speed 60
scoreboard players set @e[tag=New,limit=1,sort=nearest] Duration 60
tag @e[tag=New,limit=1,sort=nearest] remove New

#reset clock
scoreboard players set @s mob_clock 0