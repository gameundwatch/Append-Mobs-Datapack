scoreboard players set @s Speed 100

# movement 移動制御用Function

execute store result score @s _x0 run data get entity @s Pos[0] 100
execute store result score @s _y0 run data get entity @s Pos[1] 100
execute store result score @s _z0 run data get entity @s Pos[2] 100

#1Tick目以降 前TickのAECの座標と現Tickの弾の座標との差を算出 ブロックに当たるとずれる
scoreboard players operation @s[scores={_x1=-2147483647..}] _x1 -= @s _x0
scoreboard players operation @s[scores={_y1=-2147483647..}] _y1 -= @s _y0
scoreboard players operation @s[scores={_z1=-2147483647..}] _z1 -= @s _z0

#1Tick目 スコアをセット
execute unless entity @s[scores={_x1=-2147483647..}] run scoreboard players set @s _x1 0
execute unless entity @s[scores={_y1=-2147483647..}] run scoreboard players set @s _y1 0
execute unless entity @s[scores={_z1=-2147483647..}] run scoreboard players set @s _z1 0

#スピード *speed/100倍する
scoreboard players operation @s _x0 *= @s Speed
scoreboard players operation @s _y0 *= @s Speed
scoreboard players operation @s _z0 *= @s Speed
scoreboard players operation @s _x0 /= #100 number
scoreboard players operation @s _y0 /= #100 number
scoreboard players operation @s _z0 /= #100 number

#ベクトル計算

#AEC生成 移動の方向を相対軸で決定
execute rotated as @s run summon minecraft:area_effect_cloud ^ ^0.5 ^1 {Tags:[getPos],Duration:0}

#AECの座標取得
execute store result score @s _x1 run data get entity @e[tag=getPos,limit=1] Pos[0] 100
execute store result score @s _y1 run data get entity @e[tag=getPos,limit=1] Pos[1] 100
execute store result score @s _z1 run data get entity @e[tag=getPos,limit=1] Pos[2] 100

#AEC消去
kill @e[tag=getPos,limit=1]

#AECの座標のスピード補正
scoreboard players operation @s _x1 *= @s Speed
scoreboard players operation @s _y1 *= @s Speed
scoreboard players operation @s _z1 *= @s Speed
scoreboard players operation @s _x1 /= #100 number
scoreboard players operation @s _y1 /= #100 number
scoreboard players operation @s _z1 /= #100 number
#単位ベクトル*-1 算出
scoreboard players operation @s _x0 -= @s _x1
scoreboard players operation @s _y0 -= @s _y1
scoreboard players operation @s _z0 -= @s _z1

# 重力時 
# execute if entity @s[tag=Gravity] run function main:physics/move/gravity0

# Motion代入
execute store result entity @s Motion[0] double -0.01 run scoreboard players get @s _x0
execute store result entity @s Motion[1] double -0.01 run scoreboard players get @s _y0
execute store result entity @s Motion[2] double -0.01 run scoreboard players get @s _z0

# スピード補正
scoreboard players operation @s _x1 += @s _x0
scoreboard players operation @s _y1 += @s _y0
scoreboard players operation @s _z1 += @s _z0
scoreboard players operation @s _x1 *= #100 number
scoreboard players operation @s _y1 *= #100 number
scoreboard players operation @s _z1 *= #100 number
scoreboard players operation @s _x1 /= @s Speed
scoreboard players operation @s _y1 /= @s Speed
scoreboard players operation @s _z1 /= @s Speed
scoreboard players operation @s _x1 -= @s _x0
scoreboard players operation @s _y1 -= @s _y0
scoreboard players operation @s _z1 -= @s _z0
