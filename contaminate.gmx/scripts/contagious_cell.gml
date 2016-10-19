
// When colliding with another Cell

if (other.contagious) {
    self.infected = true;
    script_execute(create_virus_map_from_map, other.virus, self);
}
