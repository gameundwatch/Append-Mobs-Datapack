
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 0.5

# magic bullet settings
summon armor_stand ~ ~ ~ {Tags:[New,Bullet,Unslide,WitheredSoulMagic],NoGravity: 0b,Marker: 0b,Invisible: 1b, Small: 1b,Silent: 1b}
execute anchored eyes as @e[tag=New,limit=1,sort=nearest] run tp @s ^ ^1 ^ ~ ~
scoreboard players set @e[tag=New,limit=1,sort=nearest] Speed 40
scoreboard players set @e[tag=New,limit=1,sort=nearest] Duration 20
tag @e[tag=New,limit=1,sort=nearest] remove New

#reset clock
scoreboard players set @s mob_clock 0