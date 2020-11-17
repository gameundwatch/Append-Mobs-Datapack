scoreboard players set @s mob_dice 0
execute store result score @s mob_dice run loot spawn ~ ~ ~ loot append_mobs:dice
data modify entity @s Tags append value rolled