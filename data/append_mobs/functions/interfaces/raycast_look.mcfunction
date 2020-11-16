# This is template. Each mobs has it and raycast_start.

# execution 実行
particle crit ~ ~ ~ 0 0 0 0 1

# next ray 次のRay生成
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function append_mobs:interfaces/raycast_look