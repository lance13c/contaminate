
// When colliding with another Cell

if (other.contagious) {
    script_execute(infect_cell, self, undefined, other.virus);
    //script_execute(create_virus_map_from_map, other.virus, self);
}
