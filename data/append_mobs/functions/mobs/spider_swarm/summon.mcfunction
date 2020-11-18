playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1
summon cave_spider ~ ~ ~ {Health:12f,Tags:["rolled","SpiderSwarm"],CustomName:'{"text":"Spider Swarm"}',Attributes:[{Name:"generic.max_health",Base:12}]}
summon cave_spider ~ ~1 ~ {Health:12f,Tags:["rolled","SpiderSwarm"],CustomName:'{"text":"Spider Swarm"}',Attributes:[{Name:"generic.max_health",Base:12}]}
function append_mobs:interfaces/tp_to_void