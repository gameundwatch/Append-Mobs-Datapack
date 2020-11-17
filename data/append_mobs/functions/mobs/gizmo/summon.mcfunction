playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1
summon skeleton ~ ~ ~ {Silent:1b,Health:16f,Tags:["rolled","Gizmo"],CustomName:'{"text":"Gizmo"}',ArmorItems:[{},{},{id:"minecraft:skeleton_skull",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,0.100F,0.085F],Attributes:[{Name:"generic.max_health",Base:16},{Name:"generic.follow_range",Base:40}]}
function append_mobs:interfaces/tp_to_void