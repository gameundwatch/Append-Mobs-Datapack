playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 1
summon cave_spider ~ ~ ~ {Health:8f,Tags:["rolled","SpiderSwarm"],CustomName:'{"text":"Spider Swarm"}',Attributes:[{Name:"generic.max_health",Base:8}]}
summon cave_spider ~ ~1 ~ {Health:8f,Tags:["rolled","SpiderSwarm"],CustomName:'{"text":"Spider Swarm"}',Attributes:[{Name:"generic.max_health",Base:8}]}
function append_mobs:interfaces/tp_to_void