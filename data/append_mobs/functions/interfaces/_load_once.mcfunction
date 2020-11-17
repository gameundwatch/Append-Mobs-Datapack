#mob_data

scoreboard objectives add mob_dice dummy
scoreboard objectives add mob_clock dummy
scoreboard objectives add mob_ready dummy
scoreboard objectives add mob_state dummy

#bullet

# _x0,y0,z0 Motion値兼ArmorStandの座標
# _x1,y1,z1 AECの座標

scoreboard objectives add _x0 dummy
scoreboard objectives add _y0 dummy
scoreboard objectives add _z0 dummy

scoreboard objectives add _x1 dummy
scoreboard objectives add _y1 dummy
scoreboard objectives add _z1 dummy

scoreboard objectives add Speed dummy
scoreboard objectives add Duration dummy

# constants
scoreboard players set #rand number 1
scoreboard players set #-1 number -1
scoreboard players set #2 number 2
scoreboard players set #3 number 3
scoreboard players set #21 number 21
scoreboard players set #100 number 100
scoreboard players set #18000 number 18000
scoreboard players set #1000000 number 1000000