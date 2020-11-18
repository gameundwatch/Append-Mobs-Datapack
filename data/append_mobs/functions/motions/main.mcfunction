
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

#ブロックに当たる tag=block 次Tickに除去
tag @s[tag=Block] remove Block
execute unless entity @s[scores={_x1=-10..10}] run tag @s add Block
execute unless entity @s[scores={_y1=-10..10}] run tag @s add Block
execute unless entity @s[scores={_z1=-10..10}] run tag @s add Block

# ブロックに当たると消える tag=unslide
tag @s[tag=Block,tag=Unslide] add Kill

# ブロックに当たるとくっつく tag=sticky
# data merge entity @s[tag=Block,tag=Sticky] {NoGravity:1b}
# tag @s[tag=Block,tag=Sticky] remove Bullet

# ブロックに当たると反射 tag=Reflect
# execute if entity @s[tag=Block,tag=Reflect] run function main:physics/move/reflect

#スピード *speed/100倍する
scoreboard players operation @s _x0 *= @s Speed
scoreboard players operation @s _y0 *= @s Speed
scoreboard players operation @s _z0 *= @s Speed
scoreboard players operation @s _x0 /= #100 number
scoreboard players operation @s _y0 /= #100 number
scoreboard players operation @s _z0 /= #100 number

#ベクトル計算

#AEC生成
execute rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:[getPos],Duration:0}

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

# 重力補正
# execute if entity @s[tag=Gravity] run function main:physics/move/gravity1

# 反射タグ除去
# tag @s[tag=ReflectX] remove ReflectX
# tag @s[tag=ReflectY] remove ReflectY
# tag @s[tag=ReflectZ] remove ReflectZ
